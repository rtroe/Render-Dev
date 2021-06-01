#pragma once
#include "../core/entity.h"
#include "../graphics/mesh.h"
#include "../graphics/material.h"

class EditorGrid : public vxEntity
{
public:
    EditorGrid();
    ~EditorGrid();

    void Init();
};


class EditorGridMesh : public vxMesh
{
public:
    EditorGridMesh();
    ~EditorGridMesh();

    void Init();
    void Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View);
};

