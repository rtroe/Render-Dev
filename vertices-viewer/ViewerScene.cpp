#include "ViewerScene.h"


int frameCount = 0;
int counter = 0;

ViewerScene::ViewerScene()
{
    auto cube = new vxEntity();
    
    cube->Init();
    
    AddEntity(cube);
}

ViewerScene::~ViewerScene()
{
}



    //bool show_demo_window = true;
void ViewerScene::Update()
{
    vxScene::Update();
    if(m_uiShowDemoScene)
    {
        ImGui::ShowDemoWindow(&m_uiShowDemoScene);
    }
    //ShowExampleAppMainMenuBar();

    UIMenuBar();


if(m_uiIsCameraControlEnabled)
{
    ImGui::Begin("Camera Controls"); 
     
    //ImGui::SameLine();
    ImGui::Text("This window allows you to control the camera extrinsics.");
    
        ImGui::Separator();
    ImGui::Text("Frame = %d", GetCamera()->frameCount);
    ImGui::Text("Frame Time Avg: %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);

        ImGui::Separator();
        
    //ImGui::SliderFloat("Rotation Speed", &mesh->rotateSpeed, 0.0f, 1.0f); // Edit 1 float using a slider from 0.0f to 1.0f
    ImGui::ColorEdit3("Back Buffer Colour", (float *)&(GetCamera()->clear_color));  // Edit 3 floats representing a color
    ImGui::SliderFloat("Near Plane", (float *)&(GetCamera()->nearPlane), 0.01f, 10.0f);
    ImGui::SliderFloat("Far Plane", (float *)&(GetCamera()->farPlane), 1.0f, 1000.0f);
    ImGui::SliderFloat("FOV", (float *)&(GetCamera()->fov), 0.0f, 180.0f);
    

    ImGui::End();
}
}
