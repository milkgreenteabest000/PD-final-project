//
// Created by breaddy-on-code on 11/26/24.
//

#include "Rules.h"
Rules::Rules() {
    rules = std::vector< Rule >(0);
}
Rules::~Rules() = default;
void Rules::addRule(string type, string property) {
    Rule newRule = {type, property};
    rules.push_back(newRule);
}

std::string Rules::findPlayer() {
    for (auto& rule : rules) {
        if (rule.property == "player") {
            return rule.fromTypeName;
        }
    }
    return "";
}

std::vector<Rule> Rules::getRules(std::string name) {
    std::vector<Rule> rules(0);
    for (auto& rule : this->rules) {
        if (rule.fromTypeName == name) {
            rules.push_back(rule);
        }
    }
    return rules;
}
