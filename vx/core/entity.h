#pragma once
/*
The entity class is a singular object that is in the game
*/
#include "../graphics/mesh.h"
#include "../core/vertices_types.h"

class vxEntity
{

protected:
    vxMesh *mesh;

public:
    vxEntity();
    virtual void Init();
    void Update();
    void Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View);
};