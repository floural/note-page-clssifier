#ifndef HELPERS_HPP
#define HELPERS_HPP

#include <filesystem>
#include <string>
#include <vector>
#include <iostream>
#include <exception>

char getLastPage(std::string directory_path);
std::string getFileName(const std::string &file_path);
std::vector<std::string> getPageFiles(std::string directory_path);

#endif