#pragma once
/*
The material class defines visual info and provides the translation layer between the CPU and shaders data
*/

#include <vector>
#include <glad/glad.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "../core/vertices_types.h"

class vxMaterial
{
protected:
// -- Open GL --
    GLuint vs, fs, program;
public:
    vxMaterial();

    void SetShaderParam(const char* string, const vx::tfloat fl);
    void SetShaderParam(const char* string, vx::mat4x4 mat);
};