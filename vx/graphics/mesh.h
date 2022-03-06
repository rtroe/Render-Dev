#pragma once
/*
The Mesh class defines visual mesh data
*/

#include <vector>
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

#include "../core/vertices_types.h"
#include "material.h"

class vxMesh
{
protected:
    vx::mat4x4 Model;
    vxMaterial* material;

    // -- Open GL --
    GLuint VertexArrayID;
    GLuint vertexbuffer;
    GLuint colorbuffer;
    GLuint vao, vbo;
    

public:
float rotateSpeed = 0.25;
    vxMesh();
    virtual void Init();
    virtual void Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View);
};