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
    string printCode;
    string typeName;
public:
    BasicObject(string typeName);
    virtual ~BasicObject();
    bool trigger(const BasicObject& source, int direction);
    friend class Level;
};



#endif //BASICOBJECT_H
