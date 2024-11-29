cmake_minimum_required(VERSION 3.29)
project(final_project)

set(CMAKE_CXX_STANDARD 14)
# Copy the levels directory to the build directory
file(COPY ${CMAKE_SOURCE_DIR}/levels DESTINATION ${CMAKE_BINARY_DIR})
# Fetch nlohmann/json
include(FetchContent)
FetchContent_Declare(
        json
        GIT_REPOSITORY https://github.com/nlohmann/json.git
        GIT_TAG v3.11.2 # Use the latest version
)
FetchContent_MakeAvailable(json)

add_executable(final_project
    src/core/main.cpp)
add_library(game_library src/core/Rules.cpp
        src/core/Rules.h
        src/entities/BasicObject.cpp
        src/entities/BasicObject.h
        src/entities/Level.cpp
        src/entities/Level.h
        src/entities/Player.cpp
        src/entities/Player.h
        src/UI/simpleRender.cpp
        src/UI/simpleRender.h
        src/utils/readLevel.cpp
        src/utils/readLevel.h
        src/entities/SpecialObject.cpp
        src/entities/SpecialObject.h)
target_link_libraries(final_project PRIVATE  nlohmann_json::nlohmann_json)
target_link_libraries(final_project PRIVATE game_library)
target_link_libraries(game_library PRIVATE  nlohmann_json::nlohmann_json)
include_directories(src/utils src/UI src/entities src/core)
add_custom_command(
        TARGET final_project PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/levels ${CMAKE_BINARY_DIR}/levels
)