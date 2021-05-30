/*
The Scene File essentially holds all information to render a scene
*/

#include <iostream>
#include <imgui.h>

// Engine Includes
#include "scene.h"
#include "time.h"
#include "../graphics/mesh.h"

int frameCount = 0;
int counter = 0;

    std::vector<vxEntity*> m_entities;

vxScene::vxScene()
{
    m_camera = new vxCamera();
    AddEntity(new vxEntity());
}

void vxScene::AddEntity(vxEntity *entity)
{
    m_entities.push_back(entity);
}

void vxScene::Update()
{
    m_camera->Update();

    ImGui::Begin("Scene Window"); // Create a window called "Hello, world!" and append into it.

    ImGui::Text("This is some useful text.");

    //ImGui::SliderFloat("Rotation Speed", &mesh->rotateSpeed, 0.0f, 1.0f); // Edit 1 float using a slider from 0.0f to 1.0f
    ImGui::ColorEdit3("clear color", (float *)&(m_camera->clear_color));  // Edit 3 floats representing a color

    if (ImGui::Button("Button")) // Buttons return true when clicked (most widgets return true when edited/activated)
        counter++;
    //ImGui::SameLine();
    ImGui::Text("counter = %d", counter);

    ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
    ImGui::End();
}

void vxScene::Draw()
{
    m_camera->Render();
    for (auto entity : m_entities)
        entity->Draw(m_camera->Projection, m_camera->View);
}