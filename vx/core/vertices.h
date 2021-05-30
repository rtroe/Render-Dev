#pragma once


#include "../core/vertices_init.h"
#include "../platforms/VerticesEnginePlatforms.h"
#include "../graphics/graphics.h"


// -- Vertices Engine Static Function --

class VerticesEngine
{
private:
    static VerticesEngineContext *m_context;

public:
    static VerticesEngineContext *GetContext()
    {
        return m_context;
    }

    static VerticesEngineContext *CreateContext()
    {
        // init the graphics system
        vxGraphics::Init();


//#if PLATFORM_SDL_GL
        // first initialise the platform wrapper
        m_context = new VerticesSDLContextWrapper();
//#endif
        return m_context;
    }
};
