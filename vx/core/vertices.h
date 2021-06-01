#pragma once

#include <iostream>

#include "../core/vertices_init.h"
#include "../core/vertices_debug.h"
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


//#ifdef VX_SDL
        // first initialise the platform wrapper
        m_context = new VerticesSDLContextWrapper();
  //      #else
    //    vxDebug::Log("No Render Context Available");
//#endif
        return m_context;
    }
};
