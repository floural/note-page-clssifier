#ifndef FEATURES_HPP
#define FEATURES_HPP

#include <opencv2/core.hpp>
#include <opencv2/features2d.hpp>
#include <vector>
#include <string>
#include <iostream>
#include <omp.h>

class FeatureHandler {
    private:
        std::vector< std::vector<cv::KeyPoint> > keypoints;
        std::vector<cv::Mat> kp_descriptors;

        std::vector< cv::Ptr<cv::FeatureDetector> > detectors;
        std::vector< cv::Ptr<cv::DescriptorExtractor> > descriptors;

        int num_kp_thresh, detect_thresh;
        double match_thresh;

    protected:
        void getFeatures(const cv::Mat &image);
        size_t getMatches(const std::vector<cv::Mat> &descrs);

    public:
        FeatureHandler();
        std::vector< std::vector<cv::KeyPoint> > getKeyPoints();
        std::vector<cv::Mat> getDescriptors();
};

#endif