cmake_minimum_required(VERSION 3.0.0)
project(NoteAR VERSION 0.1.0)

include(CTest)
enable_testing()

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(NoteAR src/main.cpp src/core/page.cpp src/core/features.cpp src/utils/helpers.cpp)

target_link_libraries( NoteAR ${OpenCV_LIBS} )

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
