//
// Created by breaddy-on-code on 11/29/24.
//

#include "PointerObject.h"

#include <utility>
PointerObject::PointerObject(const string& name, string targetName, VariableObject * variable) : BasicObject("pointer", name) {
    this->targetName = std::move(targetName);
    this->target = variable;
}
