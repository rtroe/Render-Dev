/*#include "BasicGLPane.h"
#include "wx/wx.h"
#include "wx/sizer.h"
#include "wx/glcanvas.h"

#include "BasicGLPane.h"
#include <iostream>
 
// include OpenGL
#ifdef __WXMAC__
#include "OpenGL/glu.h"
#include "OpenGL/gl.h"
#else
#include <GL/glu.h>
#include <GL/gl.h>
#endif
 


 
BEGIN_EVENT_TABLE(BasicGLPane, wxGLCanvas)
EVT_MOTION(BasicGLPane::mouseMoved)
EVT_LEFT_DOWN(BasicGLPane::mouseDown)
EVT_LEFT_UP(BasicGLPane::mouseReleased)
EVT_RIGHT_DOWN(BasicGLPane::rightClick)
EVT_LEAVE_WINDOW(BasicGLPane::mouseLeftWindow)
EVT_SIZE(BasicGLPane::resized)
EVT_KEY_DOWN(BasicGLPane::keyPressed)
EVT_KEY_UP(BasicGLPane::keyReleased)
EVT_MOUSEWHEEL(BasicGLPane::mouseWheelMoved)
EVT_PAINT(BasicGLPane::render)
END_EVENT_TABLE()
 
 
// some useful events to use
void BasicGLPane::mouseMoved(wxMouseEvent& event) {}
void BasicGLPane::mouseDown(wxMouseEvent& event) {}
void BasicGLPane::mouseWheelMoved(wxMouseEvent& event) {}
void BasicGLPane::mouseReleased(wxMouseEvent& event) {}
void BasicGLPane::rightClick(wxMouseEvent& event) {}
void BasicGLPane::mouseLeftWindow(wxMouseEvent& event) {}
void BasicGLPane::keyPressed(wxKeyEvent& event) {}
void BasicGLPane::keyReleased(wxKeyEvent& event) {}
 
// Vertices and faces of a simple cube to demonstrate 3D render
// source: http://www.opengl.org/resources/code/samples/glut_examples/examples/cube.c
GLfloat cubeverts[8][3];
GLint cubefaces[6][4] = {  // Vertex indices for the 6 faces of a cube. 
    {0, 1, 2, 3}, {3, 2, 6, 7}, {7, 6, 5, 4},
    {4, 5, 1, 0}, {5, 6, 2, 1}, {7, 4, 0, 3} };
 


BasicGLPane::BasicGLPane(wxPanel* parent, int* args) :
    wxGLCanvas(parent, wxID_ANY, args, wxDefaultPosition, wxDefaultSize, wxFULL_REPAINT_ON_RESIZE)
{
	m_context = new wxGLContext(this);
    // prepare a simple cube to demonstrate 3D render
    // source: http://www.opengl.org/resources/code/samples/glut_examples/examples/cube.c
    cubeverts[0][0] = cubeverts[1][0] = cubeverts[2][0] = cubeverts[3][0] = -1;
    cubeverts[4][0] = cubeverts[5][0] = cubeverts[6][0] = cubeverts[7][0] = 1;
    cubeverts[0][1] = cubeverts[1][1] = cubeverts[4][1] = cubeverts[5][1] = -1;
    cubeverts[2][1] = cubeverts[3][1] = cubeverts[6][1] = cubeverts[7][1] = 1;
    cubeverts[0][2] = cubeverts[3][2] = cubeverts[4][2] = cubeverts[7][2] = 1;
    cubeverts[1][2] = cubeverts[2][2] = cubeverts[5][2] = cubeverts[6][2] = -1;    

    // To avoid flashing on MSW
    SetBackgroundStyle(wxBG_STYLE_CUSTOM);
}
 
BasicGLPane::~BasicGLPane()
{
	delete m_context;
}

void BasicGLPane::resized(wxSizeEvent& evt)
{
//	wxGLCanvas::OnSize(evt);
	
    Refresh();
}
 
// Inits the OpenGL viewport for drawing in 3D.
void BasicGLPane::prepare3DViewport(int topleft_x, int topleft_y, int bottomrigth_x, int bottomrigth_y)
{
	
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black Background
    glClearDepth(1.0f);	// Depth Buffer Setup
    glEnable(GL_DEPTH_TEST); // Enables Depth Testing
    glDepthFunc(GL_LEQUAL); // The Type Of Depth Testing To Do
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
	
    glEnable(GL_COLOR_MATERIAL);
	
    glViewport(topleft_x, topleft_y, bottomrigth_x-topleft_x, bottomrigth_y-topleft_y);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
	
    float ratio_w_h = (float)(bottomrigth_x-topleft_x)/(float)(bottomrigth_y-topleft_y);
    gluPerspective(45, ratio_w_h, 0.1, 200);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
	
}
 
// Inits the OpenGL viewport for drawing in 2D. 
void BasicGLPane::prepare2DViewport(int topleft_x, int topleft_y, int bottomrigth_x, int bottomrigth_y)
{
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black Background
    glEnable(GL_TEXTURE_2D);   // textures
    glEnable(GL_COLOR_MATERIAL);
    glEnable(GL_BLEND);
    glDisable(GL_DEPTH_TEST);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
	
    glViewport(topleft_x, topleft_y, bottomrigth_x-topleft_x, bottomrigth_y-topleft_y);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    
    gluOrtho2D(topleft_x, bottomrigth_x, bottomrigth_y, topleft_y);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}
 
int BasicGLPane::getWidth()
{
    return GetSize().x;
}
 
int BasicGLPane::getHeight()
{
    return GetSize().y;
}
 
 int cubeDrawCount = 0;
 
void BasicGLPane::render( wxPaintEvent& evt )
{
    if(!IsShown()) return;
    
    std::cout << cubeDrawCount++ << std::endl;
    
    wxGLCanvas::SetCurrent(*m_context);
    wxPaintDC(this); // only to be used in paint events. use wxClientDC to paint outside the paint event
	
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
    
    
    // ------------- draw some 3D ----------------
    prepare3DViewport(0,0,getWidth(), getHeight());
    glLoadIdentity();
	
    glColor4f(0,0,1,1);
    glTranslatef(0,0,-5);
    glRotatef(cubeDrawCount, 0.0f, 1.0f, 0.0f);
    
    glColor4f(0, 1, 0, 1);
    for (int i = 0; i < 6; i++)
    {
        glBegin(GL_LINE_STRIP);
        glVertex3fv(&cubeverts[cubefaces[i][0]][0]);
        glVertex3fv(&cubeverts[cubefaces[i][1]][0]);
        glVertex3fv(&cubeverts[cubefaces[i][2]][0]);
        glVertex3fv(&cubeverts[cubefaces[i][3]][0]);
        glVertex3fv(&cubeverts[cubefaces[i][0]][0]);
        glEnd();
    }
    
    glFlush();
    SwapBuffers();
}*/