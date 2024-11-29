cmake_minimum_required(VERSION 3.29)
project(final_project)

set(CMAKE_CXX_STANDARD 14)

add_executable(final_project
    src/core/main.cpp)
add_library(game_library src/core/Rules.cpp src/core/Rules.h src/entities/BasicObject.cpp src/entities/BasicObject.h src/entities/Level.cpp src/entities/Level.h src/entities/Player.cpp src/entities/Player.h src/UI/simpleRender.cpp src/UI/simpleRender.h src/utils/readLevel.cpp src/utils/readLevel.h)
target_link_libraries(final_project src)
include_directories(src/utils src/UI src/entities src/core)