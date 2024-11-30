//
// Created by breaddy-on-code on 11/29/24.
//

#ifndef POINTEROBJECT_H
#define POINTEROBJECT_H
#include "BasicObject.h"
#include <string>

#include "VariableObject.h"
using std::string;

class PointerObject: public BasicObject{
    protected:
    string targetName;
    VariableObject * target;
    public:
    PointerObject(const string& name, string targetName, VariableObject * target);
    friend class Level;
};



#endif //POINTEROBJECT_H
