//
// Created by breaddy-on-code on 11/26/24.
//

#ifndef RULES_H
#define RULES_H
#include <string>
#include <vector>

using std::string;
struct Rule {
    std::string fromTypeName;
    std::string property;
};

class Rules {
    protected:
    std::vector<Rule> rules;
    public:
    Rules();
    virtual ~Rules();
    std::vector<Rule> getRules(std::string name);
    void addRule(string type, string property);
    std::string findPlayer();
};

#endif //RULES_H
