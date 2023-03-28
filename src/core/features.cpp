#include "../include/features.hpp"

FeatureHandler::FeatureHandler() {
    cv::FileStorage fs("../settings/keypoints.json", cv::FileStorage::READ);
    
    int thresh, octaves;
    float patternScale;
    auto brisk = fs["detectors"]["BRISK"];
    brisk["thresh"] >> thresh;
    brisk["octaves"] >> octaves;
    brisk["patternScale"] >> patternScale;
    auto brisk_det = cv::BRISK::create(thresh, octaves, patternScale);
    detectors.push_back(brisk_det);
    descriptors.push_back(brisk_det);


    int nfeatures, nlevels, edgeThreshold, firstLevel, WTA_K, patchSize, fastThreshold;
    float scaleFactor;
    std::string scoreType_str;
    auto orb = fs["detectors"]["ORB"];
    orb["nfeatures"] >> nfeatures;
    orb["scaleFactor"] >> scaleFactor;
    orb["nlevels"] >> nlevels;
    orb["edgeThreshold"] >> edgeThreshold;
    orb["firstLevel"] >> firstLevel;
    orb["WTA_K"] >> WTA_K;
    orb["scoreType"] >> scoreType_str;
    orb["patchSize"] >> patchSize;
    orb["fastThreshold"] >> fastThreshold;
    cv::ORB::ScoreType scoreType;
    if (scoreType_str == "ORB::HARRIS_SCORE") {
        scoreType = cv::ORB::HARRIS_SCORE;
    } else if (scoreType_str == "ORB::FAST_SCORE") {
        scoreType = cv::ORB::FAST_SCORE;
    } else throw std::runtime_error("Invalid ORB score type in config.json");

    auto orb_det = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold,
        firstLevel, WTA_K, scoreType, patchSize, fastThreshold);
    detectors.push_back(orb_det);
    descriptors.push_back(orb_det);


    fs["num_kp_thresh"] >> num_kp_thresh;
    fs["detect_thresh"] >> detect_thresh;
    fs["match_thresh"] >> match_thresh;

    
    fs.release();
}

void FeatureHandler::getFeatures(const cv::Mat &image) {
    std::vector< std::vector<cv::KeyPoint> > img_kp;
    std::vector<cv::Mat> kp_descrs;

    #pragma omp parallel for
    for (const auto& det : detectors) {
        std::vector<cv::KeyPoint> kps;
        det->detect(image, kps);

        cv::KeyPointsFilter::removeDuplicated(kps);
        cv::KeyPointsFilter::retainBest(kps, num_kp_thresh);

        // for (const auto& desc : descriptors) {
        //     cv::Mat descriptor;
        //     desc->compute(image, kps, descriptor);
        //     kp_descriptors.push_back(descriptor);
        // }

        cv::Mat descriptor;
        det->compute(image, kps, descriptor);

        kp_descrs.push_back(descriptor);
        img_kp.push_back(kps);
    }
    keypoints = img_kp;
    kp_descriptors = kp_descrs;
}

size_t FeatureHandler::getMatches(const std::vector<cv::Mat> &descrs) {
    if (kp_descriptors.size() != descrs.size()) {
        std::cerr << descrs.size() << std::endl;
        std::cerr << kp_descriptors.size() << std::endl;
        throw std::runtime_error("FeatureHandlers with different detectors are not matchable.");
    }

    size_t total = 0;
    cv::BFMatcher matcher(cv::NORM_HAMMING);
    std::vector<cv::KeyPoint> matched1, matched2;
    std::vector<cv::DMatch> good_matches;
    double ratio_thresh = 0.7;

    #pragma omp parallel for reduction(+:total)
    for (size_t i = 0; i < descrs.size(); i++) {
        std::vector< std::vector<cv::DMatch> > nn_matches;
        matcher.knnMatch(descrs[i], kp_descriptors[i], nn_matches, 2);
        good_matches.clear();
        for(size_t j = 0; j < nn_matches.size(); j++) {
            cv::DMatch first = nn_matches[j][0];
            float dist1 = nn_matches[j][0].distance;
            float dist2 = nn_matches[j][1].distance;
            if(dist1 < ratio_thresh * dist2) {
                good_matches.push_back(first);
            }
        }
        total += good_matches.size();
    }
    if (total > detect_thresh) {
        return total;
    }else return 0;
}


std::vector< std::vector<cv::KeyPoint> > FeatureHandler::getKeyPoints() {
    return keypoints;
}

std::vector<cv::Mat> FeatureHandler::getDescriptors() {
    return kp_descriptors;
}