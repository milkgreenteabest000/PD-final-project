//
// Created by breaddy-on-code on 11/29/24.
//

#ifndef VARIABLEOBJECT_H
#define VARIABLEOBJECT_H
#include <string>

#include "BasicObject.h"


class VariableObject : public BasicObject{
public:
    void applyRule(std::string ruleName);
    VariableObject(std::string name, std::string type);
    int trigger(const BasicObject &source, int direction) override;
};



#endif //VARIABLEOBJECT_H
