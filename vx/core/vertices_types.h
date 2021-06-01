#pragma once

/* - OPEN GL - */
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

// -- Global Type Definitions --

namespace vx
{
    /* - OPEN GL - */

    //#if PLATFORM_SDL_GL
    typedef GLfloat tfloat;
    typedef GLuint uint;
    typedef glm::vec2 vec2;
    typedef glm::vec3 vec3;
    typedef glm::mat4 mat4x4;

    namespace matrix
    {
        static mat4x4 rotate(mat4x4 m, tfloat f, vec3 v)
        {
            return glm::rotate(m, f, v);
        }

        static mat4x4 perspective(tfloat fov, tfloat aspectRatio, tfloat near, tfloat far)
        {
            return glm::perspective(glm::radians(fov), aspectRatio, near, far);
        }

        static mat4x4 lookAt(vec3 eye, vec3 center, vec3 up)
        {
            return glm::lookAt(eye, center, up);
        }
        
    }
    //#endif

}