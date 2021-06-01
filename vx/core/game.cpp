

#include <iostream>

#include "game.h"
#include "time.h"

vxGame::vxGame(const char *gameName)
{
    m_gameName = gameName;
    vxTime::Init();
}

const char *vxGame::GetGameName()
{
    return m_gameName;
}


void vxGame::AddScene(vxScene* scene)
{
    m_scenes.push_back(scene);
}

void vxGame::Update()
{
    vxTime::Update();
    for (auto scene : m_scenes)
    {
        scene->Update();
    }
}
void vxGame::Draw()
{
    for (auto scene : m_scenes)
    {
        scene->Draw();
    }
}
