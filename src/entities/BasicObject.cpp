//
// Created by breaddy-on-code on 11/22/24.
//

#include "BasicObject.h"
BasicObject::BasicObject(const string& typeName, const string& printName) {
    this->typeName = typeName;
    this->printCode = printName;
}
BasicObject::~BasicObject() = default;

int BasicObject::trigger(const BasicObject &source, int direction) {
    if (source.isPlayer && isWin) {
        return 5;
    }
    if (!isPushable) {
        return 0;
    } else {
        return direction;
    }
}

