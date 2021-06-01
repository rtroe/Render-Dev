///////////////////////////////////////////////////////////////////////////////
// Name:        auidemo.cpp
// Purpose:     wxaui: wx advanced user interface - sample/test program
// Author:      Benjamin I. Williams
// Modified by:
// Created:     2005-10-03
// Copyright:   (C) Copyright 2005, Kirix Corporation, All Rights Reserved.
// Licence:     wxWindows Library Licence, Version 3.1
///////////////////////////////////////////////////////////////////////////////


#include <vx/core/vertices.h>
#include <vx/core/vertices_debug.h>
#include <vx/core/game.h>

// For compilers that support precompilation, includes "wx/wx.h".
#include <wx/wxprec.h>

#ifdef __BORLANDC__
    #pragma hdrstop
#endif

#include <wx/app.h>
#include <wx/grid.h>
#include <wx/treectrl.h>
#include <wx/spinctrl.h>
#include <wx/artprov.h>
#include <wx/clipbrd.h>
#include <wx/image.h>
#include <wx/colordlg.h>
#include <wx/wxhtml.h>
#include <wx/imaglist.h>
#include <wx/dataobj.h>
#include <wx/dcclient.h>
#include <wx/bmpbuttn.h>
#include <wx/menu.h>
#include <wx/toolbar.h>
#include <wx/statusbr.h>
#include <wx/msgdlg.h>
#include <wx/textdlg.h>

#include <wx/aui/aui.h>
//#include "../sample.xpm"

#include "MainFrame.h"

class MyApp : public wxApp
{
public:
    bool OnInit();
};

DECLARE_APP(MyApp)
IMPLEMENT_APP(MyApp)


bool MyApp::OnInit()
{
    if ( !wxApp::OnInit() )
        return false;

    vxDebug::Log("Hello There!!!!");

    wxFrame* frame = new MyFrame(NULL,
                                 wxID_ANY,
                                 wxT("wxAUI Sample Application"),
                                 wxDefaultPosition,
                                 wxSize(1376, 766));
    frame->Show();


    return true;
}

