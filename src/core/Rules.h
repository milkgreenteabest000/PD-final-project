//
// Created by breaddy-on-code on 11/26/24.
//

#ifndef RULES_H
#define RULES_H
#include <string>
#include <vector>


struct Rule {
    std::string fromTypeName;
    std::string property;
    std::string operation;
};

class Rules {
    protected:
    std::vector<Rule> rules;
    public:
    Rules();
    virtual ~Rules();
    std::vector<Rule> getRules(std::string typeName);
};

#endif //RULES_H
