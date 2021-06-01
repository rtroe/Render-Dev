##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=vertices-viewer
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/roer/Code/vertices-viewer-cpp
ProjectPath            :=/home/roer/Code/vertices-viewer-cpp/vertices-viewer
IntermediateDirectory  :=../build-$(ConfigurationName)/vertices-viewer
OutDir                 :=../build-$(ConfigurationName)/vertices-viewer
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
LinkOptions            :=  -lvx -Wl,-rpath=/home/roer/Code/vertices-viewer-cpp/build-Debug/lib
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib/glad/include $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/backends 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)/home/roer/Code/vertices-viewer-cpp/build-Debug/lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall -fPIC $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall -fPIC $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-viewer/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/vertices-viewer/.d "$(IntermediateDirectory)/vx.relink" $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/vertices-viewer"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

"$(IntermediateDirectory)/vx.relink":
	@mkdir -p $(IntermediateDirectory)
	@echo stam > "$(IntermediateDirectory)/vx.relink"




MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/vertices-viewer"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/vertices-viewer/.d:
	@mkdir -p "../build-$(ConfigurationName)/vertices-viewer"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(ObjectSuffix): ModelViewerApp.cpp ../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vertices-viewer/ModelViewerApp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ModelViewerApp.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(DependSuffix): ModelViewerApp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(DependSuffix) -MM ModelViewerApp.cpp

../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(PreprocessSuffix): ModelViewerApp.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-viewer/ModelViewerApp.cpp$(PreprocessSuffix) ModelViewerApp.cpp

../build-$(ConfigurationName)/vertices-viewer/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/vertices-viewer/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vertices-viewer/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-viewer/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-viewer/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-viewer/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/vertices-viewer/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-viewer/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(ObjectSuffix): ViewerScene.cpp ../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vertices-viewer/ViewerScene.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ViewerScene.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(DependSuffix): ViewerScene.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(DependSuffix) -MM ViewerScene.cpp

../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(PreprocessSuffix): ViewerScene.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-viewer/ViewerScene.cpp$(PreprocessSuffix) ViewerScene.cpp

../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(ObjectSuffix): ViewerScene_UI.cpp ../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vertices-viewer/ViewerScene_UI.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ViewerScene_UI.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(DependSuffix): ViewerScene_UI.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(DependSuffix) -MM ViewerScene_UI.cpp

../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(PreprocessSuffix): ViewerScene_UI.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vertices-viewer/ViewerScene_UI.cpp$(PreprocessSuffix) ViewerScene_UI.cpp


-include ../build-$(ConfigurationName)/vertices-viewer//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


