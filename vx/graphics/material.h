#pragma once
/*
The material class defines visual info and provides the translation layer between the CPU and shaders data
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

    virtual void OnLoadShader();
    void LoadShader(const char* vs, const char* fs);
    void SetPass();
    void SetShaderParam(const char* string, const vx::tfloat fl);
    void SetShaderParam(const char* string, vx::mat4x4 mat);
};