#ifndef MAINFRAME_H
#define MAINFRAME_H

#include <vx/core/vertices.h>
#include <vx/core/vertices_debug.h>
#include <vx/core/game.h>

#include "wxcrafter.h"

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
#include <wx/glcanvas.h>

#include <wx/aui/aui.h>


// -- application --

/* XPM */
static const char *const sample_xpm[] = {
/* columns rows colors chars-per-pixel */
"32 32 6 1",
"  c black",
". c navy",
"X c red",
"o c yellow",
"O c gray100",
"+ c None",
/* pixels */
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++              ++++++++++",
"++++++++ ............ ++++++++++",
"++++++++ ............ ++++++++++",
"++++++++ .OO......... ++++++++++",
"++++++++ .OO......... ++++++++++",
"++++++++ .OO......... ++++++++++",
"++++++++ .OO......              ",
"++++++++ .OO...... oooooooooooo ",
"         .OO...... oooooooooooo ",
" XXXXXXX .OO...... oOOooooooooo ",
" XXXXXXX .OO...... oOOooooooooo ",
" XOOXXXX ......... oOOooooooooo ",
" XOOXXXX ......... oOOooooooooo ",
" XOOXXXX           oOOooooooooo ",
" XOOXXXXXXXXX ++++ oOOooooooooo ",
" XOOXXXXXXXXX ++++ oOOooooooooo ",
" XOOXXXXXXXXX ++++ oOOooooooooo ",
" XOOXXXXXXXXX ++++ oooooooooooo ",
" XOOXXXXXXXXX ++++ oooooooooooo ",
" XXXXXXXXXXXX ++++              ",
" XXXXXXXXXXXX ++++++++++++++++++",
"              ++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++",
"++++++++++++++++++++++++++++++++"
};

class MyFrame : public wxFrame
{
    enum
    {
        ID_CreateTree = wxID_HIGHEST+1,
        ID_CreateGrid,
        ID_CreateText,
        ID_CreateHTML,
        ID_CreateGL,
        ID_CreateNotebook,
        ID_CreateSizeReport,
        ID_GridContent,
        ID_TextContent,
        ID_TreeContent,
        ID_HTMLContent,
        ID_NotebookContent,
        ID_SizeReportContent,
        ID_CreatePerspective,
        ID_CopyPerspectiveCode,
        ID_AllowFloating,
        ID_AllowActivePane,
        ID_TransparentHint,
        ID_VenetianBlindsHint,
        ID_RectangleHint,
        ID_NoHint,
        ID_HintFade,
        ID_NoVenetianFade,
        ID_TransparentDrag,
        ID_NoGradient,
        ID_VerticalGradient,
        ID_HorizontalGradient,
        ID_LiveUpdate,
        ID_AllowToolbarResizing,
        ID_Settings,
        ID_CustomizeToolbar,
        ID_DropDownToolbarItem,
        ID_NotebookNoCloseButton,
        ID_NotebookCloseButton,
        ID_NotebookCloseButtonAll,
        ID_NotebookCloseButtonActive,
        ID_NotebookAllowTabMove,
        ID_NotebookAllowTabExternalMove,
        ID_NotebookAllowTabSplit,
        ID_NotebookWindowList,
        ID_NotebookScrollButtons,
        ID_NotebookTabFixedWidth,
        ID_NotebookArtGloss,
        ID_NotebookArtSimple,
        ID_NotebookAlignTop,
        ID_NotebookAlignBottom,

        ID_SampleItem,

        ID_FirstPerspective = ID_CreatePerspective+1000
    };

public:
    MyFrame(wxWindow* parent,
            wxWindowID id,
            const wxString& title,
            const wxPoint& pos = wxDefaultPosition,
            const wxSize& size = wxDefaultSize,
            long style = wxDEFAULT_FRAME_STYLE | wxSUNKEN_BORDER);

    ~MyFrame();

    wxAuiDockArt* GetDockArt();
    void DoUpdate();

private:
    wxTextCtrl* CreateTextCtrl(const wxString& text = wxEmptyString);
    wxGrid* CreateGrid();
    wxTreeCtrl* CreateTreeCtrl();
    wxPoint GetStartPosition();
    wxHtmlWindow* CreateHTMLCtrl(wxWindow* parent = NULL);
    wxGLCanvas* CreateRenderCtrl(wxWindow* parent = NULL);
    wxAuiNotebook* CreateNotebook();

    wxString GetIntroText();

private:

    void OnEraseBackground(wxEraseEvent& evt);
    void OnSize(wxSizeEvent& evt);

    void OnCreateTree(wxCommandEvent& evt);
    void OnCreateGrid(wxCommandEvent& evt);
    void OnCreateHTML(wxCommandEvent& evt);
    void OnCreateNotebook(wxCommandEvent& evt);
    void OnCreateText(wxCommandEvent& evt);
    void OnCreateRenderer(wxCommandEvent& evt);
    void OnCreateSizeReport(wxCommandEvent& evt);
    void OnChangeContentPane(wxCommandEvent& evt);
    void OnDropDownToolbarItem(wxAuiToolBarEvent& evt);
    void OnCreatePerspective(wxCommandEvent& evt);
    void OnCopyPerspectiveCode(wxCommandEvent& evt);
    void OnRestorePerspective(wxCommandEvent& evt);
    void OnSettings(wxCommandEvent& evt);
    void OnCustomizeToolbar(wxCommandEvent& evt);
    void OnAllowNotebookDnD(wxAuiNotebookEvent& evt);
    void OnNotebookPageClose(wxAuiNotebookEvent& evt);
    void OnNotebookPageClosed(wxAuiNotebookEvent& evt);
    void OnExit(wxCommandEvent& evt);
    void OnAbout(wxCommandEvent& evt);
    void OnTabAlignment(wxCommandEvent &evt);

    void OnGradient(wxCommandEvent& evt);
    void OnToolbarResizing(wxCommandEvent& evt);
    void OnManagerFlag(wxCommandEvent& evt);
    void OnNotebookFlag(wxCommandEvent& evt);
    void OnUpdateUI(wxUpdateUIEvent& evt);

    void OnPaneClose(wxAuiManagerEvent& evt);

private:

    wxAuiManager m_mgr;
    wxArrayString m_perspectives;
    wxMenu* m_perspectives_menu;
    long m_notebook_style;
    long m_notebook_theme;

    wxDECLARE_EVENT_TABLE();
};


#endif // MAINFRAME_H
