//
// Created by breaddy-on-code on 11/22/24.
//

#include "Level.h"

#include <iostream>
#include <stdexcept>
#include <utility>

#include "PointerObject.h"
#include "VariableObject.h"

Level::Level(int width, int height) {
    this->width = width;
    this->height = height;
    this->objects = std::vector<std::vector<BasicObject*>>(height, std::vector<BasicObject*>(width, nullptr));
}


Level::Level(const Level& other)
    : width(other.width),
      height(other.height),
      name(other.name),
      uniqueNames(other.uniqueNames),
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

bool Level::addObject(vector<int> position, string type, string name, const string& target) {
    if (objects[position[0]][position[1]] != nullptr) {
        throw std::runtime_error("Level::addObject: Object already exists");
    }
    if (type == "variable") {
        objects[position[0]][position[1]] = new VariableObject(std::move(name), std::move(type));
    }
    if (type == "pointer") {
        for (int y = 0; y < height; ++y) {
            for (int x = 0; x < width; ++x) {
                if (objects[x][y] != nullptr) {
                    if (objects[x][y]->printCode == target) {
                        VariableObject* obj = dynamic_cast<VariableObject*>(objects[x][y]);
                        objects[position[0]][position[1]] = new PointerObject(name, std::move(type), obj);
                    }
                }
            }
        }
    }

    return true;
}

void Level::addRule(string type, string property) {
    rules.addRule(std::move(type), std::move(property));
}


bool Level::moveObject(int oldX, int oldY, int direction) {
    int newX = 0;
    int newY = 0;
    if (direction == 3) {
        newX = oldX;
        newY = oldY+1;
        if (height <= newY) {
            return false;
        }
    } else if (direction == 2) {
        newX = oldX+1;
        newY = oldY;
        if (width <= newX) {
            return false;
        }
    } else if (direction == 1) {
        newX = oldX;
        newY = oldY-1;
        if (newY < 0) {
            return false;
        }
    } else if (direction == 4) {
        newX = oldX-1;
        newY = oldY;
        if (newX < 0) {
            return false;
        }
    } else {
        throw std::invalid_argument("Invalid direction");
    }
    if (objects[newX][newY] != nullptr) {
        int result = objects[newX][newY]->trigger(*objects[newX][newY], direction);
        if (result > 0 && result <=4) {
            if(!moveObject(newX, newY, direction)) {
                return false;
            }
        } else {
            return false;
        }
    }
    objects[newX][newY] = objects[oldX][oldY];
    objects[oldX][oldY] = nullptr;
    return true;

}

void Level::movePlayer(int direction) {
    string playerName = rules.findPlayer();
    vector<int> playerPosition(2);
    bool found = false;
    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            if (objects[x][y] != nullptr && objects[x][y]->typeName == "pointer") {
                PointerObject* obj = dynamic_cast<PointerObject*>(objects[x][y]);
                if (obj->target->isPlayer) {
                    playerPosition[0] = x;
                    playerPosition[1] = y;
                    found = true;
                }
            }
        }
    }
    if (!found) {
        throw std::logic_error("No player");
    }
    this->moveObject(playerPosition[0], playerPosition[1], direction);
}

void Level::updateRules() {
    for (int x = 0; x < width; ++x) {
        for (int y=0;y<height; y++) {
            if (objects[x][y] != nullptr) {
                if (objects[x][y]->typeName == "variable") {
                    VariableObject* obj = dynamic_cast<VariableObject*>(objects[x][y]);
                    vector<Rule> targetRules = rules.getRules(obj->printCode);
                    for (auto& rule : targetRules) {
                        obj->applyRule(rule.property);
                    }
                }
            }
        }
    }
}
