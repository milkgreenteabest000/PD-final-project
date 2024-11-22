cmake_minimum_required(VERSION 3.29)
project(final_project)

set(CMAKE_CXX_STANDARD 14)

add_executable(final_project
    src/core/main.cpp)
add_library(entities src/entities/BasicObject.cpp src/entities/BasicObject.h src/entities/Level.cpp src/entities/Level.h src/entities/Player.cpp src/entities/Player.h)
add_library(utils src/utils/readLevel.cpp src/utils/readLevel.h)