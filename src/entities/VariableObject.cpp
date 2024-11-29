//
// Created by breaddy-on-code on 11/29/24.
//

#include "VariableObject.h"

#include "BasicObject.h"

VariableObject::VariableObject(std::string name, std::string type) : BasicObject(type, name) {
    isPushable = true;
}

