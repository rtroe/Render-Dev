#include <SDL2/SDL.h>
#include "material.h"

static const char *vertex_shader =
    "#version 130\n"
    "in vec3 i_position;\n"
    "in vec4 i_color;\n"
    "out vec4 v_color;\n"
    "uniform mat4 u_projection_matrix;\n"
    "void main() {\n"
    "    v_color = i_color;\n"
    "    gl_Position = u_projection_matrix * vec4( i_position, 1.0 );\n"
    "}\n";

static const char *fragment_shader =
    "#version 130\n"
    "in vec4 v_color;\n"
    "out vec4 o_color;\n"
    "void main() {\n"
    "    o_color = v_color;\n"
    "}\n";

vxMaterial::vxMaterial()
{
    vs = glCreateShader(GL_VERTEX_SHADER);
    fs = glCreateShader(GL_FRAGMENT_SHADER);

    int length = strlen(vertex_shader);
    glShaderSource(vs, 1, (const GLchar **)&vertex_shader, &length);
    glCompileShader(vs);

    GLint status;
    glGetShaderiv(vs, GL_COMPILE_STATUS, &status);
    if (status == GL_FALSE)
    {
        fprintf(stderr, "vertex shader compilation failed\n");
        //m_isActive = false;
    }

    length = strlen(fragment_shader);
    glShaderSource(fs, 1, (const GLchar **)&fragment_shader, &length);
    glCompileShader(fs);

    glGetShaderiv(fs, GL_COMPILE_STATUS, &status);
    if (status == GL_FALSE)
    {
        fprintf(stderr, "fragment shader compilation failed\n");
        //m_isActive = false;
    }

    program = glCreateProgram();
    glAttachShader(program, vs);
    glAttachShader(program, fs);

    glLinkProgram(program);
    glUseProgram(program);
}


void vxMaterial::SetShaderParam(const char *parm, const vx::tfloat fl)
{
    glUniform1fv(glGetUniformLocation(program, parm), 1, &fl);
}

void vxMaterial::SetShaderParam(const char *parm, vx::mat4x4 mat)
{
    glUniformMatrix4fv(glGetUniformLocation(program, parm), 1, GL_FALSE, &mat[0][0]);
}