# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\myown\PD-final-project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\myown\PD-final-project\build

# Include any dependencies generated for this target.
include CMakeFiles/game_library.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/game_library.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/game_library.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/game_library.dir/flags.make

CMakeFiles/game_library.dir/codegen:
.PHONY : CMakeFiles/game_library.dir/codegen

CMakeFiles/game_library.dir/src/core/Rules.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/core/Rules.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/core/Rules.cpp.obj: C:/Users/myown/PD-final-project/src/core/Rules.cpp
CMakeFiles/game_library.dir/src/core/Rules.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/game_library.dir/src/core/Rules.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/core/Rules.cpp.obj -MF CMakeFiles\game_library.dir\src\core\Rules.cpp.obj.d -o CMakeFiles\game_library.dir\src\core\Rules.cpp.obj -c C:\Users\myown\PD-final-project\src\core\Rules.cpp

CMakeFiles/game_library.dir/src/core/Rules.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/core/Rules.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\core\Rules.cpp > CMakeFiles\game_library.dir\src\core\Rules.cpp.i

CMakeFiles/game_library.dir/src/core/Rules.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/core/Rules.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\core\Rules.cpp -o CMakeFiles\game_library.dir\src\core\Rules.cpp.s

CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj: C:/Users/myown/PD-final-project/src/entities/BasicObject.cpp
CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\BasicObject.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\BasicObject.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\BasicObject.cpp

CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\BasicObject.cpp > CMakeFiles\game_library.dir\src\entities\BasicObject.cpp.i

CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\BasicObject.cpp -o CMakeFiles\game_library.dir\src\entities\BasicObject.cpp.s

CMakeFiles/game_library.dir/src/entities/Level.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/Level.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/Level.cpp.obj: C:/Users/myown/PD-final-project/src/entities/Level.cpp
CMakeFiles/game_library.dir/src/entities/Level.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/game_library.dir/src/entities/Level.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/Level.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\Level.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\Level.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\Level.cpp

CMakeFiles/game_library.dir/src/entities/Level.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/Level.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\Level.cpp > CMakeFiles\game_library.dir\src\entities\Level.cpp.i

CMakeFiles/game_library.dir/src/entities/Level.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/Level.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\Level.cpp -o CMakeFiles\game_library.dir\src\entities\Level.cpp.s

CMakeFiles/game_library.dir/src/entities/Player.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/Player.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/Player.cpp.obj: C:/Users/myown/PD-final-project/src/entities/Player.cpp
CMakeFiles/game_library.dir/src/entities/Player.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/game_library.dir/src/entities/Player.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/Player.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\Player.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\Player.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\Player.cpp

CMakeFiles/game_library.dir/src/entities/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/Player.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\Player.cpp > CMakeFiles\game_library.dir\src\entities\Player.cpp.i

CMakeFiles/game_library.dir/src/entities/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/Player.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\Player.cpp -o CMakeFiles\game_library.dir\src\entities\Player.cpp.s

CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj: C:/Users/myown/PD-final-project/src/UI/simpleRender.cpp
CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj -MF CMakeFiles\game_library.dir\src\UI\simpleRender.cpp.obj.d -o CMakeFiles\game_library.dir\src\UI\simpleRender.cpp.obj -c C:\Users\myown\PD-final-project\src\UI\simpleRender.cpp

CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\UI\simpleRender.cpp > CMakeFiles\game_library.dir\src\UI\simpleRender.cpp.i

CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\UI\simpleRender.cpp -o CMakeFiles\game_library.dir\src\UI\simpleRender.cpp.s

CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj: C:/Users/myown/PD-final-project/src/utils/readLevel.cpp
CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj -MF CMakeFiles\game_library.dir\src\utils\readLevel.cpp.obj.d -o CMakeFiles\game_library.dir\src\utils\readLevel.cpp.obj -c C:\Users\myown\PD-final-project\src\utils\readLevel.cpp

CMakeFiles/game_library.dir/src/utils/readLevel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/utils/readLevel.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\utils\readLevel.cpp > CMakeFiles\game_library.dir\src\utils\readLevel.cpp.i

CMakeFiles/game_library.dir/src/utils/readLevel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/utils/readLevel.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\utils\readLevel.cpp -o CMakeFiles\game_library.dir\src\utils\readLevel.cpp.s

CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj: C:/Users/myown/PD-final-project/src/entities/VariableObject.cpp
CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\VariableObject.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\VariableObject.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\VariableObject.cpp

CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\VariableObject.cpp > CMakeFiles\game_library.dir\src\entities\VariableObject.cpp.i

CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\VariableObject.cpp -o CMakeFiles\game_library.dir\src\entities\VariableObject.cpp.s

CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj: C:/Users/myown/PD-final-project/src/entities/PointerObject.cpp
CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\PointerObject.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\PointerObject.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\PointerObject.cpp

CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\PointerObject.cpp > CMakeFiles\game_library.dir\src\entities\PointerObject.cpp.i

CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\PointerObject.cpp -o CMakeFiles\game_library.dir\src\entities\PointerObject.cpp.s

CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj: C:/Users/myown/PD-final-project/src/entities/PropertyObject.cpp
CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\PropertyObject.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\PropertyObject.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\PropertyObject.cpp

CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\PropertyObject.cpp > CMakeFiles\game_library.dir\src\entities\PropertyObject.cpp.i

CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\PropertyObject.cpp -o CMakeFiles\game_library.dir\src\entities\PropertyObject.cpp.s

CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj: C:/Users/myown/PD-final-project/src/entities/OperatorObject.cpp
CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\OperatorObject.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\OperatorObject.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\OperatorObject.cpp

CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\OperatorObject.cpp > CMakeFiles\game_library.dir\src\entities\OperatorObject.cpp.i

CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\OperatorObject.cpp -o CMakeFiles\game_library.dir\src\entities\OperatorObject.cpp.s

CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj: C:/Users/myown/PD-final-project/src/entities/KeyWordObject.cpp
CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj -MF CMakeFiles\game_library.dir\src\entities\KeyWordObject.cpp.obj.d -o CMakeFiles\game_library.dir\src\entities\KeyWordObject.cpp.obj -c C:\Users\myown\PD-final-project\src\entities\KeyWordObject.cpp

CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\entities\KeyWordObject.cpp > CMakeFiles\game_library.dir\src\entities\KeyWordObject.cpp.i

CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\entities\KeyWordObject.cpp -o CMakeFiles\game_library.dir\src\entities\KeyWordObject.cpp.s

CMakeFiles/game_library.dir/src/UI/scene.cpp.obj: CMakeFiles/game_library.dir/flags.make
CMakeFiles/game_library.dir/src/UI/scene.cpp.obj: CMakeFiles/game_library.dir/includes_CXX.rsp
CMakeFiles/game_library.dir/src/UI/scene.cpp.obj: C:/Users/myown/PD-final-project/src/UI/scene.cpp
CMakeFiles/game_library.dir/src/UI/scene.cpp.obj: CMakeFiles/game_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/game_library.dir/src/UI/scene.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_library.dir/src/UI/scene.cpp.obj -MF CMakeFiles\game_library.dir\src\UI\scene.cpp.obj.d -o CMakeFiles\game_library.dir\src\UI\scene.cpp.obj -c C:\Users\myown\PD-final-project\src\UI\scene.cpp

CMakeFiles/game_library.dir/src/UI/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_library.dir/src/UI/scene.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\myown\PD-final-project\src\UI\scene.cpp > CMakeFiles\game_library.dir\src\UI\scene.cpp.i

CMakeFiles/game_library.dir/src/UI/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_library.dir/src/UI/scene.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\myown\PD-final-project\src\UI\scene.cpp -o CMakeFiles\game_library.dir\src\UI\scene.cpp.s

# Object files for target game_library
game_library_OBJECTS = \
"CMakeFiles/game_library.dir/src/core/Rules.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/Level.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/Player.cpp.obj" \
"CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj" \
"CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj" \
"CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj" \
"CMakeFiles/game_library.dir/src/UI/scene.cpp.obj"

# External object files for target game_library
game_library_EXTERNAL_OBJECTS =

libgame_library.a: CMakeFiles/game_library.dir/src/core/Rules.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/BasicObject.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/Level.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/Player.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/UI/simpleRender.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/utils/readLevel.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/VariableObject.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/PointerObject.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/PropertyObject.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/OperatorObject.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/entities/KeyWordObject.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/src/UI/scene.cpp.obj
libgame_library.a: CMakeFiles/game_library.dir/build.make
libgame_library.a: CMakeFiles/game_library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\myown\PD-final-project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library libgame_library.a"
	$(CMAKE_COMMAND) -P CMakeFiles\game_library.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\game_library.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/game_library.dir/build: libgame_library.a
.PHONY : CMakeFiles/game_library.dir/build

CMakeFiles/game_library.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\game_library.dir\cmake_clean.cmake
.PHONY : CMakeFiles/game_library.dir/clean

CMakeFiles/game_library.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\myown\PD-final-project C:\Users\myown\PD-final-project C:\Users\myown\PD-final-project\build C:\Users\myown\PD-final-project\build C:\Users\myown\PD-final-project\build\CMakeFiles\game_library.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/game_library.dir/depend

