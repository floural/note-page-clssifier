#include "../include/helpers.hpp"

namespace fs = std::filesystem;

char getLastPage(std::string directory_path){
    fs::path path(directory_path);
    char page_num = '0';

    if (fs::exists(path)) {
        for (const auto& file : fs::directory_iterator(path)) {
            if (file.is_regular_file()) {
                std::string name = file.path().stem().string();
                if (name.find("page") != std::string::npos && name.back() > page_num){
                    page_num = name.back();
                    //std::cout << page_num << std::endl;
                }
            }
        }
    } else {
        throw std::runtime_error("Directory doesn't exist.");
    }
    if (page_num > '9'){
        page_num = '0';
    }
    return ++page_num;

}

std::string getFileName(const std::string &file_path){
    fs::path path(file_path);
    return path.stem();
}

std::vector<std::string> getPageFiles(std::string directory_path){
    std::vector<std::string> files;
    fs::path path(directory_path);

    if (fs::exists(path)) {
        for (const auto& file : fs::directory_iterator(path)) {
            if (file.is_regular_file()) {
                files.push_back(file.path().string());
            }
        }
    } else {
        throw std::runtime_error("Directory doesn't exist.");
    }

    return files;
}