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
    string printCode; // -->3 char long ex. AAA -A-
    string typeName;
public:
    BasicObject(string typeName);
    virtual ~BasicObject();
    int trigger(const BasicObject& source, int direction) const;
    friend class Level;
    string getPrintCode() const {
        return printCode;
    };
};



#endif //BASICOBJECT_H
