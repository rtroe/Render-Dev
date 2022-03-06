##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## DebugUI
ProjectName            :=vertices-editor
ConfigurationName      :=DebugUI
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/roer/Code/Render-Dev
ProjectPath            :=/home/roer/Code/Render-Dev/vertices-editor
IntermediateDirectory  :=../build-$(ConfigurationName)/vertices-editor
OutDir                 :=../build-$(ConfigurationName)/vertices-editor
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=roer
Date                   :=31/05/21
CodeLitePath           :=/home/roer/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  $(shell wx-config --libs --debug) `wx-config --libs --gl-libs` -lGL -lGLU -lglut -lstdc++ `wx-config --libs propgrid,core,base` `wx-config --cxxflags` `wx-config --libs` `wx-config --libs aui` `wx-config --libs std stc` -lvx -Wl,-rpath=/home/roer/Code/Render-Dev/build-DebugUI/lib
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/home/roer/Code/Render-Dev $(IncludeSwitch)/home/roer/Code/Render-Dev/vx $(IncludeSwitch)/home/roer/Code/Render-Dev/vx/lib $(IncludeSwitch)/home/roer/Code/Render-Dev/vx/lib/imgui $(IncludeSwitch)/home/roer/Code/Render-Dev/vx/lib/glad/include $(IncludeSwitch)/home/roer/Code/Render-Dev/vx/lib/imgui/backends 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)/home/roer/Code/Render-Dev/build-DebugUI/lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall -fPIC $(shell wx-config --cflags) $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall -fPIC $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-editor/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/vertices-editor/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/vertices-editor"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/vertices-editor"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/vertices-editor/.d:
	@mkdir -p "../build-$(ConfigurationName)/vertices-editor"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(ObjectSuffix): wxcrafter_bitmaps.cpp ../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/Render-Dev/vertices-editor/wxcrafter_bitmaps.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/wxcrafter_bitmaps.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(DependSuffix): wxcrafter_bitmaps.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(DependSuffix) -MM wxcrafter_bitmaps.cpp

../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(PreprocessSuffix): wxcrafter_bitmaps.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-editor/wxcrafter_bitmaps.cpp$(PreprocessSuffix) wxcrafter_bitmaps.cpp

../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(ObjectSuffix): wxcrafter.cpp ../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/Render-Dev/vertices-editor/wxcrafter.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/wxcrafter.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(DependSuffix): wxcrafter.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(DependSuffix) -MM wxcrafter.cpp

../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(PreprocessSuffix): wxcrafter.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-editor/wxcrafter.cpp$(PreprocessSuffix) wxcrafter.cpp

../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(ObjectSuffix): MainFrame.cpp ../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/Render-Dev/vertices-editor/MainFrame.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MainFrame.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(DependSuffix): MainFrame.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(DependSuffix) -MM MainFrame.cpp

../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(PreprocessSuffix): MainFrame.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-editor/MainFrame.cpp$(PreprocessSuffix) MainFrame.cpp

../build-$(ConfigurationName)/vertices-editor/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/vertices-editor/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/Render-Dev/vertices-editor/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-editor/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-editor/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-editor/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/vertices-editor/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-editor/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(ObjectSuffix): RenderContextControl.cpp ../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/Render-Dev/vertices-editor/RenderContextControl.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RenderContextControl.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(DependSuffix): RenderContextControl.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(DependSuffix) -MM RenderContextControl.cpp

../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(PreprocessSuffix): RenderContextControl.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-editor/RenderContextControl.cpp$(PreprocessSuffix) RenderContextControl.cpp

../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(ObjectSuffix): BasicGLPane.cpp ../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/Render-Dev/vertices-editor/BasicGLPane.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/BasicGLPane.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(DependSuffix): BasicGLPane.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(DependSuffix) -MM BasicGLPane.cpp

../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(PreprocessSuffix): BasicGLPane.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-editor/BasicGLPane.cpp$(PreprocessSuffix) BasicGLPane.cpp


-include ../build-$(ConfigurationName)/vertices-editor//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


