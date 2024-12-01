#include <iostream>
#include <SFML/Graphics.hpp>
#include <vector>
#include "../entities/Level.h"
#include "scene.h"
using namespace std;

RenderLevel::RenderLevel(const Level& level): level(level){
    // 創建視窗
    window.create(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), "SFML_OPEN");

    // 初始化sprites
    sprites.resize(GRID_HEIGHT, vector<sf::Sprite>(GRID_WIDTH));

    // 初始化紋理
    wallTexture.loadFromFile("output/wall.png");
    floorTexture.loadFromFile("output/floor.png");
    playerTexture.loadFromFile("output/player.png");   

    // //初始化level
    // this->level(level);

    // 渲染所有物件
    for(int i = 0; i < GRID_HEIGHT; i++){
        for(int j = 0; j < GRID_WIDTH; j++){
            renderObject(*level.objects[i][j], i, j);
        }
    }
}

void RenderLevel::renderObject(const BasicObject& object, int i, int j){
    if(object.getPrintCode() == "AAA"){
        sprites[i][j].setTexture(playerTexture);
    }
    else if(object.getPrintCode() == "---"){
        sprites[i][j].setTexture(floorTexture);
    }
    else{
        sprites[i][j].setTexture(wallTexture);
    }

    sprites[i][j].setPosition(j * TILE_SIZE, i * TILE_SIZE);
    sprites[i][j].setScale(TILE_SIZE / sprites[i][j].getTexture()->getSize().x, TILE_SIZE / sprites[i][j].getTexture()->getSize().y);
}
void RenderLevel::render(){
    while(window.isOpen()){
        //關閉視窗
        sf::Event event;
        while(window.pollEvent(event)){
            if(event.type == sf::Event::Closed){
                window.close();
            }
        }
        
        // 清除視窗
        window.clear();

        // 渲染所有物件
        for(int i = 0; i < GRID_HEIGHT; i++){   
            for(int j = 0; j < GRID_WIDTH; j++){
                window.draw(sprites[i][j]);
            }
        }

        // 顯示視窗
        window.display();
    }
} 