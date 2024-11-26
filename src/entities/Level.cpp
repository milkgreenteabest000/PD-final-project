//
// Created by breaddy-on-code on 11/22/24.
//

#include "Level.h"

#include <utility>

Level::Level(int width, int height) {
    for (int x = 0; x < width; x++) {
        for (int y = 0; y < height; y++) {
            objects[x][y] = nullptr;
        }
    }
}

bool Level::addObject(vector<int> position, string type) {
    if (objects[position[0]][position[1]] != nullptr) {
        return false; //TODO: throw exception here
    }
    objects[position[0]][position[1]] = new BasicObject(std::move(type));
    return true;
}
