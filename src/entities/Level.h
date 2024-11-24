//
// Created by breaddy-on-code on 11/22/24.
//

#ifndef LEVEL_H
#define LEVEL_H
#include <string>
#include <vector>

#include "BasicObject.h"
using std::string, std::vector;


class Level {
public:
    Level(int width, int height);
    ~Level();
    bool addObject(vector<int> position, string type);
    bool removeObject(vector<int> position);
    bool moveObject(int oldX, int oldY, int newX, int newY);
    void basicPrint();

private:
    int width;
    int height;
    string name;
    vector<vector<BasicObject>> objects;

};



#endif //LEVEL_H
