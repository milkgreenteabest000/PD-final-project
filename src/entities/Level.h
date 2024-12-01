//
// Created by breaddy-on-code on 11/22/24.
//

#ifndef LEVEL_H
#define LEVEL_H
#include <string>
#include <vector>

#include "BasicObject.h"
#include "../core/Rules.h"
using std::string, std::vector;

class Rules;

class Level {
public:
    Level(int width, int height);
    ~Level();
    bool addObject(vector<int> position, string type, string name, const string &target = "");
    // bool removeObject(vector<int> position);
    bool moveObject(int oldX, int oldY, int direction);
    // bool isWin();
    // bool isLoose();
    void updateRules();
    void movePlayer(int direction);
    Level(const Level& other);
    void addRule(string type, string property);
    void operator=(const Level& other);
    friend void renderLevel(const Level& level);
    friend class RenderLevel;
private:
    int width;
    int height;
    string name;
    vector<vector<BasicObject*>> objects;
    vector<string> uniqueNames;
    Rules rules;
};



#endif //LEVEL_H
