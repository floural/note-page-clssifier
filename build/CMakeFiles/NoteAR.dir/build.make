# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/floral/projects/NoteAR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/floral/projects/NoteAR/build

# Include any dependencies generated for this target.
include CMakeFiles/NoteAR.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/NoteAR.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NoteAR.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NoteAR.dir/flags.make

CMakeFiles/NoteAR.dir/src/main.cpp.o: CMakeFiles/NoteAR.dir/flags.make
CMakeFiles/NoteAR.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/NoteAR.dir/src/main.cpp.o: CMakeFiles/NoteAR.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/floral/projects/NoteAR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NoteAR.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NoteAR.dir/src/main.cpp.o -MF CMakeFiles/NoteAR.dir/src/main.cpp.o.d -o CMakeFiles/NoteAR.dir/src/main.cpp.o -c /home/floral/projects/NoteAR/src/main.cpp

CMakeFiles/NoteAR.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NoteAR.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/floral/projects/NoteAR/src/main.cpp > CMakeFiles/NoteAR.dir/src/main.cpp.i

CMakeFiles/NoteAR.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NoteAR.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/floral/projects/NoteAR/src/main.cpp -o CMakeFiles/NoteAR.dir/src/main.cpp.s

CMakeFiles/NoteAR.dir/src/core/page.cpp.o: CMakeFiles/NoteAR.dir/flags.make
CMakeFiles/NoteAR.dir/src/core/page.cpp.o: ../src/core/page.cpp
CMakeFiles/NoteAR.dir/src/core/page.cpp.o: CMakeFiles/NoteAR.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/floral/projects/NoteAR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/NoteAR.dir/src/core/page.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NoteAR.dir/src/core/page.cpp.o -MF CMakeFiles/NoteAR.dir/src/core/page.cpp.o.d -o CMakeFiles/NoteAR.dir/src/core/page.cpp.o -c /home/floral/projects/NoteAR/src/core/page.cpp

CMakeFiles/NoteAR.dir/src/core/page.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NoteAR.dir/src/core/page.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/floral/projects/NoteAR/src/core/page.cpp > CMakeFiles/NoteAR.dir/src/core/page.cpp.i

CMakeFiles/NoteAR.dir/src/core/page.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NoteAR.dir/src/core/page.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/floral/projects/NoteAR/src/core/page.cpp -o CMakeFiles/NoteAR.dir/src/core/page.cpp.s

CMakeFiles/NoteAR.dir/src/core/features.cpp.o: CMakeFiles/NoteAR.dir/flags.make
CMakeFiles/NoteAR.dir/src/core/features.cpp.o: ../src/core/features.cpp
CMakeFiles/NoteAR.dir/src/core/features.cpp.o: CMakeFiles/NoteAR.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/floral/projects/NoteAR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/NoteAR.dir/src/core/features.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NoteAR.dir/src/core/features.cpp.o -MF CMakeFiles/NoteAR.dir/src/core/features.cpp.o.d -o CMakeFiles/NoteAR.dir/src/core/features.cpp.o -c /home/floral/projects/NoteAR/src/core/features.cpp

CMakeFiles/NoteAR.dir/src/core/features.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NoteAR.dir/src/core/features.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/floral/projects/NoteAR/src/core/features.cpp > CMakeFiles/NoteAR.dir/src/core/features.cpp.i

CMakeFiles/NoteAR.dir/src/core/features.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NoteAR.dir/src/core/features.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/floral/projects/NoteAR/src/core/features.cpp -o CMakeFiles/NoteAR.dir/src/core/features.cpp.s

CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o: CMakeFiles/NoteAR.dir/flags.make
CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o: ../src/utils/helpers.cpp
CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o: CMakeFiles/NoteAR.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/floral/projects/NoteAR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o -MF CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o.d -o CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o -c /home/floral/projects/NoteAR/src/utils/helpers.cpp

CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/floral/projects/NoteAR/src/utils/helpers.cpp > CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.i

CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/floral/projects/NoteAR/src/utils/helpers.cpp -o CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.s

# Object files for target NoteAR
NoteAR_OBJECTS = \
"CMakeFiles/NoteAR.dir/src/main.cpp.o" \
"CMakeFiles/NoteAR.dir/src/core/page.cpp.o" \
"CMakeFiles/NoteAR.dir/src/core/features.cpp.o" \
"CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o"

# External object files for target NoteAR
NoteAR_EXTERNAL_OBJECTS =

NoteAR: CMakeFiles/NoteAR.dir/src/main.cpp.o
NoteAR: CMakeFiles/NoteAR.dir/src/core/page.cpp.o
NoteAR: CMakeFiles/NoteAR.dir/src/core/features.cpp.o
NoteAR: CMakeFiles/NoteAR.dir/src/utils/helpers.cpp.o
NoteAR: CMakeFiles/NoteAR.dir/build.make
NoteAR: /usr/local/lib/libopencv_gapi.so.4.7.0
NoteAR: /usr/local/lib/libopencv_highgui.so.4.7.0
NoteAR: /usr/local/lib/libopencv_ml.so.4.7.0
NoteAR: /usr/local/lib/libopencv_objdetect.so.4.7.0
NoteAR: /usr/local/lib/libopencv_photo.so.4.7.0
NoteAR: /usr/local/lib/libopencv_stitching.so.4.7.0
NoteAR: /usr/local/lib/libopencv_video.so.4.7.0
NoteAR: /usr/local/lib/libopencv_videoio.so.4.7.0
NoteAR: /usr/local/lib/libopencv_imgcodecs.so.4.7.0
NoteAR: /usr/local/lib/libopencv_dnn.so.4.7.0
NoteAR: /usr/local/lib/libopencv_calib3d.so.4.7.0
NoteAR: /usr/local/lib/libopencv_features2d.so.4.7.0
NoteAR: /usr/local/lib/libopencv_flann.so.4.7.0
NoteAR: /usr/local/lib/libopencv_imgproc.so.4.7.0
NoteAR: /usr/local/lib/libopencv_core.so.4.7.0
NoteAR: CMakeFiles/NoteAR.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/floral/projects/NoteAR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable NoteAR"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NoteAR.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NoteAR.dir/build: NoteAR
.PHONY : CMakeFiles/NoteAR.dir/build

CMakeFiles/NoteAR.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NoteAR.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NoteAR.dir/clean

CMakeFiles/NoteAR.dir/depend:
	cd /home/floral/projects/NoteAR/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/floral/projects/NoteAR /home/floral/projects/NoteAR /home/floral/projects/NoteAR/build /home/floral/projects/NoteAR/build /home/floral/projects/NoteAR/build/CMakeFiles/NoteAR.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NoteAR.dir/depend
