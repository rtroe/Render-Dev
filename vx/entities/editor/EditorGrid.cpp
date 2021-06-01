#include "EditorEntity.h"

#include <vector>
#include <iostream>
#include <algorithm>

const int GRID_SIZE = 500;
#if WX_UI

#ifdef __WXMAC__
#include "OpenGL/glu.h"
#include "OpenGL/gl.h"
#else
#include <GL/glu.h>
#include <GL/gl.h>
#endif

#else
#include <glad/glad.h>
#endif

EditorGridMesh::EditorGridMesh()
{
}

EditorGridMesh::~EditorGridMesh()
{
}

void EditorGridMesh::Init()
{
    std::cout << "Init()" << std::endl;
    material = new vxMaterial();

    glGenVertexArrays(1, &VertexArrayID);
    glBindVertexArray(VertexArrayID);

    // Model matrix : an identity matrix (model will be at the origin)
    Model = vx::mat4x4(1.0f);
    
    // generatethe grid values
    std::vector<vx::tfloat> gridpnts;
    std::vector<vx::tfloat> gridcols;
    
    int size = GRID_SIZE;
    
    for(int i = -size/2; i <= size/2; i++)
    {
        // pnt 1 along x direction
        gridpnts.push_back(-size/2);
        gridpnts.push_back(0);
        gridpnts.push_back(i);
        
        // pnt 2 along x direction
        gridpnts.push_back(size/2);
        gridpnts.push_back(0);
        gridpnts.push_back(i);
        
        float col = (i % 5 == 0) ? 0.3f : 0.2f;
        
        gridcols.push_back(col);
        gridcols.push_back(col);
        gridcols.push_back(col);
        
        gridcols.push_back(col);
        gridcols.push_back(col);
        gridcols.push_back(col);
        
        // pnt 1 along x direction
        gridpnts.push_back(i);
        gridpnts.push_back(0);
        gridpnts.push_back(-size/2);
        
        // pnt 2 along x direction
        gridpnts.push_back(i);
        gridpnts.push_back(0);
        gridpnts.push_back(size/2);
        
        
        gridcols.push_back(col);
        gridcols.push_back(col);
        gridcols.push_back(col);
        
        gridcols.push_back(col);
        gridcols.push_back(col);
        gridcols.push_back(col);
    } 
    
    // Create an array of size equivalent to vector
    vx::tfloat grid_arr[gridpnts.size()];
    // Copy all elements of vector to array
    std::copy(  gridpnts.begin(),
                gridpnts.end(),
                grid_arr);
     
                
                
    // Create an array of size equivalent to vector
    vx::tfloat col_arr[gridcols.size()];
    // Copy all elements of vector to array
    std::copy(  gridcols.begin(),
                gridcols.end(),
                col_arr);
     

    glEnable(GL_DEPTH_TEST);

    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(grid_arr), grid_arr, GL_STATIC_DRAW);

    glGenBuffers(1, &colorbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(col_arr), col_arr, GL_STATIC_DRAW);
}

void EditorGridMesh::Draw(const vx::mat4x4 &Projection, const vx::mat4x4 &View)
{ 
    material->SetPass();
    
    Model = vx::mat4x4(1.0f);
 
    vx::mat4x4 MVP = Projection * View * Model; // Remember, matrix multiplication is the other way around

    //glUniformMatrix4fv(glGetUniformLocation(program, "u_projection_matrix"), 1, GL_FALSE, &MVP[0][0]);
    material->SetShaderParam("u_projection_matrix", MVP);
    

    // 1rst attribute buffer : vertices
    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glVertexAttribPointer(
        0,        // attribute. No particular reason for 0, but must match the layout in the shader.
        3,        // size
        GL_FLOAT, // type
        GL_FALSE, // normalized?
        0,        // stride
        (void *)0 // array buffer offset
    );

    // 2nd attribute buffer : colors
    glEnableVertexAttribArray(1);
    glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
    glVertexAttribPointer(
        1,        // attribute. No particular reason for 1, but must match the layout in the shader.
        3,        // size
        GL_FLOAT, // type
        GL_FALSE, // normalized?
        0,        // stride
        (void *)0 // array buffer offset
    );

    // Draw the triangle !
    glDrawArrays(GL_LINES, 0, GRID_SIZE * 4); // 12*3 indices starting at 0 -> 12 triangles

    glDisableVertexAttribArray(0);
    glDisableVertexAttribArray(1);
}




EditorGrid::EditorGrid()
{
}

EditorGrid::~EditorGrid()
{
}


void EditorGrid::Init()
{
    mesh = new EditorGridMesh();
    mesh->Init();
}
