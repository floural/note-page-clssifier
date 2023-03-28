#ifndef PAGE_HPP
#define PAGE_HPP

#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <iostream>
#include <algorithm>

#include "features.hpp"
#include "helpers.hpp"
 
class PageCreator : public FeatureHandler {
    private:
        std::string page_path;
        cv::Mat obj;

    public:
        std::string pages_path;
        std::string file_ext;
    
    public:
        PageCreator(const std::string &pathToPage, const std::string &image2paste);
        void pasteObj();
        void save();
};

class PageMatcher : public FeatureHandler{
    private:
        cv::Mat frame_desc;
        std::vector< std::vector<cv::Mat> > page_descriptors;
        std::vector<cv::Mat> page_images;
        std::vector<std::string> file_;

        cv::Ptr<cv::DescriptorMatcher> matcher;

    public:
        std::string pages_path;
        std::string file_ext;

    private:
        void load();
    public:
        PageMatcher();
        std::string findPage(const cv::Mat& frame);
        bool matchFrame(const std::vector<cv::Mat>& descriptors);
};

#endif