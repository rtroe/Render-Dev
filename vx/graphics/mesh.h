#pragma once
/*
The Mesh class defines visual mesh data
*/

#include <vector>
#include <glad/glad.h>

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
    void Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View);
};