//
// Created by breaddy-on-code on 11/22/24.
//

#include "BasicObject.h"
BasicObject::BasicObject(string typeName) {
    this->typeName = typeName;
    this->printCode = typeName;
}
BasicObject::~BasicObject() = default;
