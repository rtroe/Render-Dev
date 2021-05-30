#pragma once
/*
The Scene class which holds all information about rendering any visuals
*/

#include <vector>

#include "camera.h"
#include "entity.h"

class vxScene
{
protected:
    vxCamera *m_camera;
    std::vector<vxEntity*> m_entities;
public:
    vxScene();
    void Update();
    void Draw();
    void AddEntity(vxEntity* entity);

};