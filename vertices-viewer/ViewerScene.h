#pragma once

#include <vx/core/scene.h>

class ViewerScene : public vxScene
{
private: 
    
    // -- ui --
    bool m_uiIsCameraControlEnabled = false;
    bool m_uiShowDemoScene = false;
    
public:
    ViewerScene();
    ~ViewerScene();
    
    void Update();

    // -- io calls --
    void OpenFile(const char* fileName);
    
    // -- ui calls --
    
    // - Menu Bar -
    void UIMenuBar();
    void UIMenuBarFile();
    void UIMenuBarEdit();
    void UIMenuBarView();
    void UIMenuBarAbout();
    
};
