//
// Created by breaddy-on-code on 11/22/24.
//

#ifndef BASICOBJECT_H
#define BASICOBJECT_H

#include <string>
#include <vector>
using std::string;

class BasicObject {
protected:
    char printCode;
    string typeName;
public:
    BasicObject();
    virtual ~BasicObject();
    friend class Level;
};



#endif //BASICOBJECT_H
