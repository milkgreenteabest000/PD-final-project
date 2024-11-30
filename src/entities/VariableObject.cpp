//
// Created by breaddy-on-code on 11/29/24.
//

#include "VariableObject.h"

#include "BasicObject.h"

VariableObject::VariableObject(std::string name, std::string type) : BasicObject(type, name) {

}

int VariableObject::trigger(const BasicObject &source, int direction) {
    return direction;
}

void VariableObject::applyRule(std::string ruleName) {
    if (ruleName == "push") {
        isPushable = true;
    }
    if (ruleName == "win") {
        isWin = true;
    }
    if (ruleName == "player") {
        isPlayer = true;
    }
    if (ruleName == "block") {
        isBlock = true;
    }
}


