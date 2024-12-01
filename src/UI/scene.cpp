#include <iostream>
#include <SFML/Graphics.hpp>
#include <vector>
#include "../entities/Level.h"
#include "scene.h"
using namespace std;

RenderLevel::RenderLevel(Level& level): level(level) {
    // cout << "Starting RenderLevel constructor" << endl;
    // 創建視窗
    window.create(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), "SFML_OPEN");

    // 初始化sprites
    // cout << "Initializing sprites with size: " << level.objects.size() << "x" << level.objects[0].size() << endl;
    sprites.resize(level.objects.size(), vector<sf::Sprite>(level.objects[0].size()));

    // 初始化紋理
    if (!wallTexture.loadFromFile("picture/wall.jpg")) {
        // cout << "Error loading wall texture" << endl;
    }
    else {
        // cout << "Wall texture loaded successfully" << endl;
    }
    if (!floorTexture.loadFromFile("picture/floor.jpg")) {
        // cout << "Error loading floor texture" << endl;
    }
    else {
        // cout << "Floor texture loaded successfully" << endl;
    }
    if (!playerTexture.loadFromFile("picture/player.jpg")) {
        // cout << "Error loading player texture" << endl;
    }
    else {
        // cout << "Player texture loaded successfully" << endl;
    }

    // 渲染所有物件
    // cout << "Starting to render objects" << endl;
    for(int i = 0; i < sprites.size(); i++){
        for(int j = 0; j < sprites[i].size(); j++){
            if (level.objects[i][j] == nullptr) {
                // cout << "Null object at " << i << "," << j << endl;
                continue;
            }
            // cout << "Rendering object at " << i << "," << j << ": " << level.objects[i][j]->getPrintCode() << endl;
            renderObject(*level.objects[i][j], i, j);
        }
    }

    // cout << "Level size: " << level.objects.size() << "x" << level.objects[0].size() << endl;
}

void RenderLevel::renderObject(const BasicObject& object, int i, int j){
    //cout << "renderObject called with i=" << i << ", j=" << j << ", code=" << object.getPrintCode() << endl;
    if(object.getPrintCode() == "AAA"){
        sprites[i][j].setTexture(playerTexture);
    }
    else if(object.getPrintCode() == "---"){
        sprites[i][j].setTexture(floorTexture);
    }
    else{
        sprites[i][j].setTexture(wallTexture);
    }

    try {
        sprites[i][j].setPosition(j * TILE_SIZE, i * TILE_SIZE);
        sprites[i][j].setScale(TILE_SIZE / sprites[i][j].getTexture()->getSize().x, TILE_SIZE / sprites[i][j].getTexture()->getSize().y);
    } catch (const std::exception& e) {
        cout << "Error in renderObject: " << e.what() << endl;
    }
}
void RenderLevel::render(){
    // cout << "Starting render loop" << endl;
    while(window.isOpen()){
        // 清除視窗
        window.clear();

        // 渲染所有物件
        for(int i = 0; i < sprites.size(); i++){   
            for(int j = 0; j < sprites[i].size(); j++){
                window.draw(sprites[i][j]);
            }
        }

        // 處理輸入
        handleInput(level);

        // 更新精靈
        updateSprites();

        // 顯示視窗
        window.display();
    }
} 
void RenderLevel::handleInput(Level& level) {
    sf::Event event;
    while(window.pollEvent(event)) {
        if(event.type == sf::Event::Closed) {
            window.close();
        }
        else if(event.type == sf::Event::KeyPressed) {
            if(event.key.code == sf::Keyboard::W){
                level.movePlayer(1);
            }
            else if(event.key.code == sf::Keyboard::S){
                level.movePlayer(3);
            }
            else if(event.key.code == sf::Keyboard::A){
                level.movePlayer(4);
            }
            else if(event.key.code == sf::Keyboard::D){
                level.movePlayer(2);
            }
        }
    }
}
void RenderLevel::updateSprites(){
    for(int i = 0; i < sprites.size(); i++){
        for(int j = 0; j < sprites[i].size(); j++){
            renderObject(*level.objects[i][j], i, j);
        }
    }
}   