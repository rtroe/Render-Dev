/*
The Camera class handles visual instrinsics of rendering a scene
*/

#if WX_UI

#ifdef __WXMAC__
#include "OpenGL/glu.h"
#include "OpenGL/gl.h"
#else
#include <GL/glu.h>
#include <GL/gl.h>
#endif

#else
#include <glad/glad.h>
#endif

#include <cmath>
#include "camera.h"
#include "vertices_types.h"
#include "../graphics/graphics.h"
#include "time.h"

vxCamera::vxCamera(){

    glEnable(GL_DEPTH_TEST); // Enable depth test
    glDepthFunc(GL_LESS); // Accept fragment if it closer to the camera than the former one

    Projection = vx::matrix::perspective(fov, 8 / 4.8f, 0.1f, 100.0f);
    
    // Camera matrix
    View = vx::matrix::lookAt(
        vx::vec3(14, 3, -3), // Camera is at (4,3,-3), in World Space
        vx::vec3(0, 0, 0),  // and looks at the origin
        vx::vec3(0, 1, 0)   // Head is up (set to 0,-1,0 to look upside-down)
    );
}

void vxCamera::Update(){

    Projection = vx::matrix::perspective(fov, (float)vxGraphics::GetWidth() /  (float)vxGraphics::GetHeight(), nearPlane, farPlane);
    
    float rad = 5;
    float speed = 0.125f;
    
    View = vx::matrix::lookAt(
        vx::vec3(rad * cos(vxTime::GetTime() * speed), 3, -rad * sin(vxTime::GetTime() * speed)), // Camera is at (4,3,-3), in World Space
        vx::vec3(0, 0, 0),  // and looks at the origin
        vx::vec3(0, 1, 0)   // Head is up (set to 0,-1,0 to look upside-down)
);
}

void vxCamera::Render(){

    frameCount++;
    // Clear the screen
    glClearColor(clear_color.x * clear_color.w, clear_color.y * clear_color.w, clear_color.z * clear_color.w, clear_color.w);
    glViewport(0, 0, vxGraphics::GetWidth(), vxGraphics::GetHeight());

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

}