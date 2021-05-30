/*
The Camera class handles visual instrinsics of rendering a scene
*/

#include <glad/glad.h>

#include "camera.h"
#include "vertices_types.h"
#include "../graphics/graphics.h"

vxCamera::vxCamera(){

    glEnable(GL_DEPTH_TEST); // Enable depth test
    glDepthFunc(GL_LESS); // Accept fragment if it closer to the camera than the former one

    Projection = vx::matrix::perspective(45.0f, 8 / 4.8f, 0.1f, 100.0f);
    
    // Camera matrix
    View = vx::matrix::lookAt(
        vx::vec3(4, 3, -3), // Camera is at (4,3,-3), in World Space
        vx::vec3(0, 0, 0),  // and looks at the origin
        vx::vec3(0, 1, 0)   // Head is up (set to 0,-1,0 to look upside-down)
    );
}

void vxCamera::Update(){

    Projection = vx::matrix::perspective(45.0f, (float)vxGraphics::GetWidth() /  (float)vxGraphics::GetHeight(), 0.1f, 100.0f);
}

void vxCamera::Render(){

    // Clear the screen
    glClearColor(clear_color.x * clear_color.w, clear_color.y * clear_color.w, clear_color.z * clear_color.w, clear_color.w);
    glViewport(0, 0, vxGraphics::GetWidth(), vxGraphics::GetHeight());

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

}