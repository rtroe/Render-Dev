#pragma once
/*
The entity class is a singular object that is in the game
*/
#include "../graphics/mesh.h"
#include "../core/vertices_types.h"

class vxEntity
{

vxMesh *mesh;
public:
    vxEntity();
    void Update();
    void Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View);
};