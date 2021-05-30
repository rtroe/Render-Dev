/*

#include <SDL2/SDL.h>
#include <SDL2/SDL_opengl.h>

#include "../include/test.h"
#include <Engine/include/Scene.h>
#include <Engine/include/EngineCore.h>
#include <Engine/include/Graphics.h>
#include <iostream>
#include <stdio.h>

int main(int argc, char *argv[])
{
    std::cout << "init" << std::endl;
#ifdef PSP
    std::cout << "RUNNING ON PSP" << std::endl;
#endif

    EngineCore *EngineCore = new EngineCoreSDL("Render Test", 0, 0, 800, 480);

    std::cout << Graphics::Init() << std::endl;
    while (EngineCore->IsActive())
    {
        EngineCore->Update();
        EngineCore->Draw();
    }
    EngineCore->Quit();
    

    test *t = new test();
    Scene *scene = new Scene(8);

    return 0;
}*/