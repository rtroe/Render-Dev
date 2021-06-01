
#include "RenderContextControl.h"
#include "wx/wx.h"
#include "wx/sizer.h"
#include "wx/glcanvas.h"

#include <iostream>
 
// include OpenGL
#ifdef __WXMAC__
#include "OpenGL/glu.h"
#include "OpenGL/gl.h"
#else
#include <GL/glu.h>
#include <GL/gl.h>
#endif


 
BEGIN_EVENT_TABLE(RenderViewControl, wxGLCanvas)
EVT_MOTION(RenderViewControl::mouseMoved)
EVT_LEFT_DOWN(RenderViewControl::mouseDown)
EVT_LEFT_UP(RenderViewControl::mouseReleased)
EVT_RIGHT_DOWN(RenderViewControl::rightClick)
EVT_LEAVE_WINDOW(RenderViewControl::mouseLeftWindow)
EVT_SIZE(RenderViewControl::resized)
EVT_KEY_DOWN(RenderViewControl::keyPressed)
EVT_KEY_UP(RenderViewControl::keyReleased)
EVT_MOUSEWHEEL(RenderViewControl::mouseWheelMoved)
EVT_PAINT(RenderViewControl::render)
END_EVENT_TABLE()
 
 
// some useful events to use
void RenderViewControl::mouseMoved(wxMouseEvent& event) {}
void RenderViewControl::mouseDown(wxMouseEvent& event) {}
void RenderViewControl::mouseWheelMoved(wxMouseEvent& event) {}
void RenderViewControl::mouseReleased(wxMouseEvent& event) {}
void RenderViewControl::rightClick(wxMouseEvent& event) {}
void RenderViewControl::mouseLeftWindow(wxMouseEvent& event) {}
void RenderViewControl::keyPressed(wxKeyEvent& event) {}
void RenderViewControl::keyReleased(wxKeyEvent& event) {}
 
// Vertices and faces of a simple cube to demonstrate 3D render
// source: http://www.opengl.org/resources/code/samples/glut_examples/examples/cube.c
GLfloat v[8][3];
GLint faces[6][4] = {  /* Vertex indices for the 6 faces of a cube. */
    {0, 1, 2, 3}, {3, 2, 6, 7}, {7, 6, 5, 4},
    {4, 5, 1, 0}, {5, 6, 2, 1}, {7, 4, 0, 3} };
 


    // now that we have the window and graphics context configured, lets initialise the game
    vxGame* game;

RenderViewControl::RenderViewControl(wxPanel* parent, int* args) :
    wxGLCanvas(parent, wxID_ANY, args, wxDefaultPosition, wxDefaultSize, wxFULL_REPAINT_ON_RESIZE)
{
	m_context = new wxGLContext(this);
    // prepare a simple cube to demonstrate 3D render
    // source: http://www.opengl.org/resources/code/samples/glut_examples/examples/cube.c
    v[0][0] = v[1][0] = v[2][0] = v[3][0] = -1;
    v[4][0] = v[5][0] = v[6][0] = v[7][0] = 1;
    v[0][1] = v[1][1] = v[4][1] = v[5][1] = -1;
    v[2][1] = v[3][1] = v[6][1] = v[7][1] = 1;
    v[0][2] = v[3][2] = v[4][2] = v[7][2] = 1;
    v[1][2] = v[2][2] = v[5][2] = v[6][2] = -1;    

    // To avoid flashing on MSW
    SetBackgroundStyle(wxBG_STYLE_CUSTOM);
    
}
 
RenderViewControl::~RenderViewControl()
{
	delete m_context;
}

void RenderViewControl::resized(wxSizeEvent& evt)
{
//	wxGLCanvas::OnSize(evt);
	//vxGraphics::Set
    Refresh();
}
 
/** Inits the OpenGL viewport for drawing in 3D. */
void RenderViewControl::prepare3DViewport(int topleft_x, int topleft_y, int bottomrigth_x, int bottomrigth_y)
{
	
//    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black Background
//    glClearDepth(1.0f);	// Depth Buffer Setup
//    glEnable(GL_DEPTH_TEST); // Enables Depth Testing
//    glDepthFunc(GL_LEQUAL); // The Type Of Depth Testing To Do
//    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
//	
//    glEnable(GL_COLOR_MATERIAL);
//	
//    glViewport(topleft_x, topleft_y, bottomrigth_x-topleft_x, bottomrigth_y-topleft_y);
//    glMatrixMode(GL_PROJECTION);
//    glLoadIdentity();
//	
//    float ratio_w_h = (float)(bottomrigth_x-topleft_x)/(float)(bottomrigth_y-topleft_y);
//    gluPerspective(45 /*view angle*/, ratio_w_h, 0.1 /*clip close*/, 200 /*clip far*/);
//    glMatrixMode(GL_MODELVIEW);
//    glLoadIdentity();
	
}
 
/** Inits the OpenGL viewport for drawing in 2D. */
void RenderViewControl::prepare2DViewport(int topleft_x, int topleft_y, int bottomrigth_x, int bottomrigth_y)
{
//    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black Background
//    glEnable(GL_TEXTURE_2D);   // textures
//    glEnable(GL_COLOR_MATERIAL);
//    glEnable(GL_BLEND);
//    glDisable(GL_DEPTH_TEST);
//    glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
//	
//    glViewport(topleft_x, topleft_y, bottomrigth_x-topleft_x, bottomrigth_y-topleft_y);
//    glMatrixMode(GL_PROJECTION);
//    glLoadIdentity();
//    
//    gluOrtho2D(topleft_x, bottomrigth_x, bottomrigth_y, topleft_y);
//    glMatrixMode(GL_MODELVIEW);
//    glLoadIdentity();
}
 
int RenderViewControl::getWidth()
{
    return GetSize().x;
}
 
int RenderViewControl::getHeight()
{
    return GetSize().y;
}
 
 int drawCount = 0;
 
 int init = false;
 
void RenderViewControl::render( wxPaintEvent& evt )
{
    if(!IsShown()) return;
    
    std::cout << drawCount++ << std::endl;
    
    wxGLCanvas::SetCurrent(*m_context);
    wxPaintDC(this); // only to be used in paint events. use wxClientDC to paint outside the paint event
	
    if(init == false)
    {
        
     game = new vxGame("Editor");
    game->AddScene(new vxScene());
    init = true;
    }
    
    game->Update();
    game->Draw();
//    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
//	
//    
//    
//    // ------------- draw some 3D ----------------
//    prepare3DViewport(0,0,getWidth(), getHeight());
//    glLoadIdentity();
//	
//    glColor4f(0,0,1,1);
//    glTranslatef(0,0,-5);
//    glRotatef(drawCount, 0.0f, 1.0f, 0.0f);
//    
//    glColor4f(0, 1, 0, 1);
//    for (int i = 0; i < 6; i++)
//    {
//        glBegin(GL_LINE_STRIP);
//        glVertex3fv(&v[faces[i][0]][0]);
//        glVertex3fv(&v[faces[i][1]][0]);
//        glVertex3fv(&v[faces[i][2]][0]);
//        glVertex3fv(&v[faces[i][3]][0]);
//        glVertex3fv(&v[faces[i][0]][0]);
//        glEnd();
//    }
//    
//    glFlush();
    SwapBuffers();
}