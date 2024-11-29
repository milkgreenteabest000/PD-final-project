//
// Created by breaddy-on-code on 11/22/24.
//

#include "BasicObject.h"
BasicObject::BasicObject(const string& typeName, const string& printName) {
    this->typeName = typeName;
    this->printCode = printName;
}
BasicObject::~BasicObject() = default;
