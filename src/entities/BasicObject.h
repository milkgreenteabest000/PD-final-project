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
    bool isPushable = true;
    bool isBlock = false;
    bool isPlayer = false;
    bool isWin = false;
public:
    BasicObject(const string& typeName, const string& printName);
    virtual ~BasicObject();
    virtual int trigger(const BasicObject& source, int direction);
    // the return value is the direction it shall move toward or any other special condition
    // 0 for not moving, look at the docs for detailed description
    friend class Level;
    string getPrintCode() const {
        return printCode;
    };
};



#endif //BASICOBJECT_H
