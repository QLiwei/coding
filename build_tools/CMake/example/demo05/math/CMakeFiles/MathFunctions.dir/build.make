# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\cmake-3.26.3-windows-x86_64\bin\cmake.exe

# The command to remove a file.
RM = D:\cmake-3.26.3-windows-x86_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\github\coding\build_tools\CMake\example\demo05

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\github\coding\build_tools\CMake\example\demo05

# Include any dependencies generated for this target.
include math/CMakeFiles/MathFunctions.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include math/CMakeFiles/MathFunctions.dir/compiler_depend.make

# Include the progress variables for this target.
include math/CMakeFiles/MathFunctions.dir/progress.make

# Include the compile flags for this target's objects.
include math/CMakeFiles/MathFunctions.dir/flags.make

math/CMakeFiles/MathFunctions.dir/math_functions.c.obj: math/CMakeFiles/MathFunctions.dir/flags.make
math/CMakeFiles/MathFunctions.dir/math_functions.c.obj: math/CMakeFiles/MathFunctions.dir/includes_C.rsp
math/CMakeFiles/MathFunctions.dir/math_functions.c.obj: math/math_functions.c
math/CMakeFiles/MathFunctions.dir/math_functions.c.obj: math/CMakeFiles/MathFunctions.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\github\coding\build_tools\CMake\example\demo05\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object math/CMakeFiles/MathFunctions.dir/math_functions.c.obj"
	cd /d E:\github\coding\build_tools\CMake\example\demo05\math && D:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT math/CMakeFiles/MathFunctions.dir/math_functions.c.obj -MF CMakeFiles\MathFunctions.dir\math_functions.c.obj.d -o CMakeFiles\MathFunctions.dir\math_functions.c.obj -c E:\github\coding\build_tools\CMake\example\demo05\math\math_functions.c

math/CMakeFiles/MathFunctions.dir/math_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MathFunctions.dir/math_functions.c.i"
	cd /d E:\github\coding\build_tools\CMake\example\demo05\math && D:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\github\coding\build_tools\CMake\example\demo05\math\math_functions.c > CMakeFiles\MathFunctions.dir\math_functions.c.i

math/CMakeFiles/MathFunctions.dir/math_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MathFunctions.dir/math_functions.c.s"
	cd /d E:\github\coding\build_tools\CMake\example\demo05\math && D:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\github\coding\build_tools\CMake\example\demo05\math\math_functions.c -o CMakeFiles\MathFunctions.dir\math_functions.c.s

# Object files for target MathFunctions
MathFunctions_OBJECTS = \
"CMakeFiles/MathFunctions.dir/math_functions.c.obj"

# External object files for target MathFunctions
MathFunctions_EXTERNAL_OBJECTS =

math/libMathFunctions.a: math/CMakeFiles/MathFunctions.dir/math_functions.c.obj
math/libMathFunctions.a: math/CMakeFiles/MathFunctions.dir/build.make
math/libMathFunctions.a: math/CMakeFiles/MathFunctions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\github\coding\build_tools\CMake\example\demo05\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libMathFunctions.a"
	cd /d E:\github\coding\build_tools\CMake\example\demo05\math && $(CMAKE_COMMAND) -P CMakeFiles\MathFunctions.dir\cmake_clean_target.cmake
	cd /d E:\github\coding\build_tools\CMake\example\demo05\math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MathFunctions.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
math/CMakeFiles/MathFunctions.dir/build: math/libMathFunctions.a
.PHONY : math/CMakeFiles/MathFunctions.dir/build

math/CMakeFiles/MathFunctions.dir/clean:
	cd /d E:\github\coding\build_tools\CMake\example\demo05\math && $(CMAKE_COMMAND) -P CMakeFiles\MathFunctions.dir\cmake_clean.cmake
.PHONY : math/CMakeFiles/MathFunctions.dir/clean

math/CMakeFiles/MathFunctions.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\github\coding\build_tools\CMake\example\demo05 E:\github\coding\build_tools\CMake\example\demo05\math E:\github\coding\build_tools\CMake\example\demo05 E:\github\coding\build_tools\CMake\example\demo05\math E:\github\coding\build_tools\CMake\example\demo05\math\CMakeFiles\MathFunctions.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : math/CMakeFiles/MathFunctions.dir/depend
