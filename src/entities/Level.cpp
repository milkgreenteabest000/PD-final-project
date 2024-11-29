//
// Created by breaddy-on-code on 11/22/24.
//

#include "Level.h"

#include <utility>

Level::Level(int width, int height) {
    this->width = width;
    this->height = height;
    this->objects = std::vector<std::vector<BasicObject*>>(height, std::vector<BasicObject*>(width, nullptr));
}

bool Level::addObject(vector<int> position, string type) {
    if (objects[position[0]][position[1]] != nullptr) {
        return false; //TODO: throw exception here
    }
    objects[position[0]][position[1]] = new BasicObject(std::move(type));
    return true;
}
Level::Level(const Level& other)
    : width(other.width),
      height(other.height),
      name(other.name),
      uniqueTypes(other.uniqueTypes),
      rules(other.rules) {
    // Deep copy the 2D vector of BasicObject pointers
    objects.resize(height, vector<BasicObject*>(width, nullptr));
    for (int i = 0; i < height; ++i) {
        for (int j = 0; j < width; ++j) {
            if (other.objects[i][j]) {
                objects[i][j] = other.objects[i][j];
            } else {
                objects[i][j] = nullptr;
            }
        }
    }
}

Level::~Level() {
    // Iterate over each row in the 2D vector
    for (auto& row : objects) {
        // Iterate over each BasicObject* in the row
        for (auto& obj : row) {
            delete obj;  // Delete the dynamically allocated BasicObject
            obj = nullptr; // Set pointer to nullptr to avoid dangling
        }
    }
    // The vector itself (objects) will automatically clean up its memory
    // because it is managed by std::vector.
}