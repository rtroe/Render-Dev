
#include "ViewerScene.h"
#include "stdio.h"
#include <string.h>
#include <iostream>
#include <fstream>
#include <vx/core/vertices.h>
#include <vx/core/vertices_debug.h>
#include <vx/core/content.h>

void ViewerScene::OpenFile(const char *fileName)
{
    vx::content::LoadModel(fileName);
}