//
// Created by breaddy-on-code on 11/22/24.
//

#include "Level.h"
#include "readLevel.h"
#include <string>

int main() {
    std::string filePath = "levels/example.json";
    Level level = readLevel(filePath);
    renderLevel(level);
    return 0;
}
