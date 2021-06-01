#pragma once
/*
The Camera class handles visual instrinsics of rendering a scene
*/

#include <imgui.h>
#include "vertices_types.h"

class vxCamera
{
public:
    vx::mat4x4 Projection;
    vx::mat4x4 View;

    vxCamera();
    void Update();
    void Render();

    float fov = 60;
    float nearPlane = 0.1f;
    float farPlane = 100;
    long frameCount = 0;
    ImVec4 clear_color = ImVec4(0.45f, 0.55f, 0.60f, 1.00f);
};