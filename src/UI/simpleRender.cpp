//
// Created by breaddy-on-code on 11/24/24.
//

#include "simpleRender.h"
#include<cstdlib>
#include "Level.h"
#include <iostream>
#include <string>
#include <thread>

/*
 * AAA BBB CCC --- --- --- ---
 * AAA BBB CCC --- --- --- ---
 * UUU ---
 */

void clearTerminal() {
#if defined(_WIN32) || defined(_WIN64)
    std::system("cls"); // Windows
#elif defined(__APPLE__) || defined(__MACH__) || defined(__linux__) || defined(__unix__) || defined(__FreeBSD__)
    std::system("clear"); // Unix-like systems (macOS, Linux, etc.)
#else
    std::cout << "\033[2J\033[1;1H"; // ANSI escape codes as a fallback
#endif
}

void renderLevel(const Level& level) {
    clearTerminal();
    for (int y=0;y<level.height; y++) {
        for (int x=0;x<level.width; x++) {
            if (level.objects[x][y]==nullptr) {
                std::cout << "--- ";
                continue;
            }
            std::cout << level.objects[x][y]->getPrintCode() << " ";
        }
        std::cout << std::endl;
    }
    std::system("clear");
    std::cout << "\033[2J\033[1;1H";
    std::cout << "next step" << std::endl;
}