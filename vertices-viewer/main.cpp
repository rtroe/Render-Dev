

#include <iostream> // std::cout

#include <vx/core/vertices.h>
#include <vx/core/vertices_debug.h>
#include <vx/core/game.h>
#include <vx/util/debug.h>
#include <vx/components/component.h>

#include "ModelViewerApp.h"
#include "ViewerScene.h"

// Vertices Engine SDL Entry Point
int main(int, char **)
{
    vxDebug::Log("Starting Vertices Engine...");

    // create the engine context
    VerticesEngineContext *engine = VerticesEngine::CreateContext();
    //return 0;
    vxDebug::Log("VerticesEngineContext Vertices Engine...");

    // now that we have the window and graphics context configured, lets initialise the game
    auto game = new ModelViewerApp();
    
    engine->Init(game);
    
    game->AddScene(new ViewerScene());

    // now begin the game loop
    while (engine->IsActive())
    {
        engine->Tick();
    }

    vxDebug::Log("Shutting Down Vertices");

    // when we're done, let's finish up any clean up
    engine->OnQuit();

    vxDebug::Log("Done");

    return 0;
}
