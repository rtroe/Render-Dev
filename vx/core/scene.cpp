/*
The Scene File essentially holds all information to render a scene
*/

#include <iostream>
#include <imgui.h>

// Engine Includes
#include "scene.h"
#include "time.h"
#include "../graphics/mesh.h"
#include "../entities/editor/EditorEntity.h"



vxScene::vxScene()
{
    m_camera = new vxCamera();
    
    auto grid = new EditorGrid();
    
    grid->Init();
    AddEntity(grid);
}

vxCamera* vxScene::GetCamera()
{
    return m_camera;
}

void vxScene::AddEntity(vxEntity *entity)
{
    m_entities.push_back(entity);
}

void vxScene::Update()
{
    m_camera->Update();
}

void vxScene::Draw()
{
    m_camera->Render();
    for (auto entity : m_entities)
        entity->Draw(m_camera->Projection, m_camera->View);
        
    //std::cout << m_entities.size() << std::endl;
}