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

