#include <iostream>
#include "include/page.hpp"

using namespace std;
using namespace cv;

int save(const string &pathToPage, const string &pathToImage) {
    Mat page = imread(pathToPage);
    // Mat image = imread(pathToImage);
    PageCreator pc1(pathToPage, pathToImage);
    pc1.save();
    return 0;
}

int live(const string &mode, const string &ip="") {
    PageMatcher pm;
    string title = "Press any key to terminate";
    Mat frame;
    VideoCapture cap;

    if (mode == "-i"){
        cap.open("https://"+ip+"/video");
    } else cap.open(0, CAP_ANY);

    if (!cap.isOpened()) {
        std::cerr << "ERROR! Unable to open camera\n";
        return -1;
    }
    std::cout << "Start grabbing" << std::endl;

    int i = 0;
    cv::namedWindow(title, WINDOW_NORMAL);
    cv::resizeWindow(title, 800, 450);
    #pragma omp parallel for
    for (;;)
    {
        cap.read(frame);
        if (i > 10){
            try
            {
                cout << pm.findPage(frame) << endl;
            }
            catch(const std::exception& e)
            {
                std::cerr << e.what() << "Ssdd" << '\n';
            }
            i = 0;
        }
        imshow(title, frame);
        if (cv::waitKey(20) >= 0)
            break;
        i++;
    }

    return 0;

}

int main(int argc, char* argv[]) {
    string func_mode, camera_mode;
    try{
        func_mode = argv[1];
        camera_mode = argv[2];
    }catch(const exception &e){
        cerr << "Failed to read arguments" << endl;
    }
    cout << argc << endl;
    if (func_mode == "--save") {
        save(string(argv[2]), "None");
    } else if (func_mode == "--live") {
        if (argc > 3) {
            live(string(argv[2]), string(argv[3]));
        }else live(string(argv[2]));
    }
    
    return 0;
}
