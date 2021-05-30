#pragma once
/*
The Game class which holds all information about rendering any visuals
*/

#include <vector>
#include "scene.h"

class vxGame
{
protected:
    const char *m_gameName;
    std::vector<vxScene *> m_scenes;

public:
    vxGame(const char *gameName);
    const char *GetGameName();
    void Update();
    void Draw();
};