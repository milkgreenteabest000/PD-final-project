cmake_minimum_required(VERSION 3.29)
project(final_project)

set(CMAKE_CXX_STANDARD 14)

# 添加 SFML 配置
set(SFML_ROOT C:/SFML)
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "${SFML_ROOT}")
find_package(SFML 2.5 COMPONENTS graphics window system REQUIRED)

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
    src/core/main.cpp
    src/utils/readLevel.cpp
    src/UI/scene.cpp
    src/entities/Level.cpp
    # ... 其他需要的源文件
)
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
        src/entities/VariableObject.cpp
        src/entities/VariableObject.h
        src/entities/PointerObject.cpp
        src/entities/PointerObject.h
        src/entities/PropertyObject.cpp
        src/entities/PropertyObject.h
        src/entities/OperatorObject.cpp
        src/entities/OperatorObject.h
        src/entities/KeyWordObject.cpp
        src/entities/KeyWordObject.h
        src/UI/scene.cpp
        src/UI/scene.h)
target_link_libraries(final_project PRIVATE  nlohmann_json::nlohmann_json)
target_link_libraries(final_project PRIVATE game_library)
target_link_libraries(game_library PRIVATE  nlohmann_json::nlohmann_json)
include_directories(src/utils src/UI src/entities src/core)

# 連接 SFML 庫到主程序
target_link_libraries(final_project PRIVATE 
    sfml-graphics 
    sfml-window 
    sfml-system
    nlohmann_json::nlohmann_json
    game_library
)

# 連接 SFML 庫到遊戲庫
target_link_libraries(game_library PRIVATE  
    sfml-graphics 
    sfml-window 
    sfml-system
    nlohmann_json::nlohmann_json
)

add_custom_command(
    TARGET final_project PRE_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_SOURCE_DIR}/levels ${CMAKE_BINARY_DIR}/levels
)

add_custom_command(
    TARGET final_project POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_SOURCE_DIR}/src/UI/output/picture
    ${CMAKE_BINARY_DIR}
)

# 複製 SFML DLL 文件
add_custom_command(
    TARGET final_project POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
    ${SFML_ROOT}/bin/sfml-graphics-2.dll
    ${SFML_ROOT}/bin/sfml-window-2.dll
    ${SFML_ROOT}/bin/sfml-system-2.dll
    ${CMAKE_BINARY_DIR}
)