//
// Created by breaddy-on-code on 11/22/24.
//

#include <iostream>

#include "Level.h"
#include "readLevel.h"
#include <string>
#include<ncurses.h>

char getKey() {
    initscr();          // Initialize ncurses
    cbreak();           // Disable line buffering
    noecho();           // Disable echoing
    char c = getch();   // Get a single character
    endwin();           // End ncurses mode
    return c;
}

int main() {
    std::string filePath = "levels/example.json";
    Level level = readLevel(filePath);
    renderLevel(level);
    char input;
    while (true) {
        input = getKey();
        switch (input) {
            case 'a':
                level.movePlayer(4);
            break;
            case 'd':
                level.movePlayer(2);
            break;
            case 'w':
                level.movePlayer(1);
            break;
            case 's':
                level.movePlayer(3);
            break;
        }
        renderLevel(level);

    }
    return 0;
}
