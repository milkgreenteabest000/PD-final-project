//
// Created by breaddy-on-code on 11/22/24.
//

#include <iostream>
#include <string>
#include "../entities/Level.h"
#include "../utils/readLevel.h"
#include "../UI/scene.h"

int main() {
    std::string filePath = "levels/example.json";
    Level level = readLevel(filePath);
    
    RenderLevel renderer(level);

    while (true) {
        renderer.render();
    }
    return 0;
}