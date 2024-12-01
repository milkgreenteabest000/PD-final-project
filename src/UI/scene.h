#ifndef SCENE_H
#define SCENE_H

#include <iostream>
#include <SFML/Graphics.hpp>
#include <vector>
#include "../entities/Level.h"
using namespace std;

//定義地圖格子大小
const float WINDOW_WIDTH = 1600;
const float WINDOW_HEIGHT = 900;
const float TILE_SIZE = 100;
const int GRID_WIDTH = WINDOW_WIDTH/TILE_SIZE;
const int GRID_HEIGHT = WINDOW_HEIGHT/TILE_SIZE;

class RenderLevel{
    public:
        RenderLevel(Level& level);        //建構子
        void renderObject(const BasicObject& object, int i, int j);       //渲染物件
        void render();      //渲染遊戲畫面
        void handleInput(Level& level);      //處理輸入
        void updateSprites();  // 新增更新精靈的方法 
    private:
        Level& level;
        vector<vector<sf::Sprite>> sprites;
        sf::RenderWindow window;   
        sf::Texture wallTexture;
        sf::Texture floorTexture;
        sf::Texture playerTexture;
};

#endif  //SCENE_H