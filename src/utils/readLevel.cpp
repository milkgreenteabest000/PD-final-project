//
// Created by breaddy-on-code on 11/23/24.
//

#include "readLevel.h"
#include <nlohmann/json.hpp>
#include <fstream>
#include <iostream>

#include "Level.h"

using json = nlohmann::json;

Level readLevel(const std::string& fileName) {
    json levelJson;
    std::ifstream file(fileName);
    file >> levelJson;
    file.close();
    json size = levelJson["size"];
    int height = size["height"];
    int width = size["width"];
    Level level = Level(width, height);
    json objs = levelJson["objects"];
    for (int i = 0; i < objs.size(); i++) {
        // std::cout << objs[i];
        string type = objs[i]["type"];
        string name = objs[i]["name"];
        // int x = objs[i]["position"]["x"];
        // int y = objs[i]["position"]["y"];
        for (int j = 0; j < objs[i]["position"].size(); j++) {
            vector<int> position = objs[i]["position"].get<std::vector<int>>();
            level.addObject(position, type, name);
        }
    }
    json rules = levelJson["rules"];
    for (int i = 0; i < rules.size(); i++) {
        string type = rules[i]["subject"];
        string property = rules[i]["property"];
        level.addRule(type, property);
    }
    return level;
}