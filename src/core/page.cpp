#include "../include/page.hpp"

PageCreator::PageCreator(const std::string &pathToPage, const std::string &pathToImage) 
: obj(cv::imread(pathToImage)) {
    cv::FileStorage fs("../settings/data.json", cv::FileStorage::READ);
    fs["save_path"] >> pages_path;
    fs["file_ext"] >> file_ext;
    fs.release();
    page_path = pathToPage;

    getFeatures(cv::imread(pathToPage));
}

void PageCreator::save(){
    char page_num = getLastPage(pages_path);
    std::string page = "page";
    std::string page_name = getFileName(page_path) + file_ext;
    std::string complete_path = pages_path + page_name;
    std::cout << page_name << std::endl;

    std::vector<cv::Mat> kp_descriptors = getDescriptors();

    cv::FileStorage fs(complete_path, cv::FileStorage::WRITE);
    for (size_t i = 0; i < kp_descriptors.size(); i++){
        cv::write(fs, "descriptor" + std::to_string(i), kp_descriptors[i]);
    }
    fs.release();
}

PageMatcher::PageMatcher(){
    cv::FileStorage fs("../settings/data.json", cv::FileStorage::READ);
    fs["save_path"] >> pages_path;
    fs["file_ext"] >> file_ext;
    fs.release();
    load();
    matcher = cv::DescriptorMatcher::create("BruteForce-Hamming");
}

void PageMatcher::load(){
    std::vector<std::string> files = getPageFiles(pages_path);
    for (const auto& file_path : files) {
        std::cout << file_path << std::endl;
        std::vector<cv::Mat> descrs;
        size_t desc_size = getDescriptors().size();
        cv::FileStorage fs(file_path, cv::FileStorage::READ);
        for (size_t i = 0; i < 2; i++){
            cv::Mat descr;
            fs["descriptor" + std::to_string(i)] >> descr;
            descrs.push_back(descr);
        }
        fs.release();
        page_descriptors.push_back(descrs);
        file_.push_back(file_path);
    }
}

std::string PageMatcher::findPage(const cv::Mat& frame){
    getFeatures(frame);

    std::vector<size_t> matches;
    #pragma omp parallel for
    for (const auto& descriptor : page_descriptors) {
        size_t m = getMatches(descriptor);
        if (m > 0){
        std::cout << m << '\n';
        matches.push_back(m);
        }
    }
    if (matches.size() == 0){
        return "No matches";
    }else return file_[std::max_element(matches.begin(),matches.end()) - matches.begin()];
}