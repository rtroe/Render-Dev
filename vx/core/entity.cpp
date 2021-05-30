
/*
The entity class handles objects in the scene
*/

#include "entity.h"

vxEntity::vxEntity()
{
    mesh = new vxMesh();
}

void vxEntity::Update(){

}

void vxEntity::Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View){

    mesh->Draw(Projection, View);
}