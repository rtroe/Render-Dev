##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=vx
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/roer/Code/vertices-viewer-cpp
ProjectPath            :=/home/roer/Code/vertices-viewer-cpp/vx
IntermediateDirectory  :=../build-$(ConfigurationName)/vx
OutDir                 :=../build-$(ConfigurationName)/vx
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=roer
Date                   :=30/05/21
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
OutputFile             :=../build-$(ConfigurationName)/lib/lib$(ProjectName).so
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -lSDL2 -lGL -ldl
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib/glad/include $(IncludeSwitch)/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/backends 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -fPIC $(Preprocessors)
CFLAGS   :=  -g -fPIC $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/core_scene.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/core_camera.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/components_component.cpp$(ObjectSuffix) \
	../build-$(ConfigurationName)/vx/core_vertices.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/core_game.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/core_time.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/core_entity.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/graphics_material.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(ObjectSuffix) \
	../build-$(ConfigurationName)/vx/util_debug.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/vx/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/vx"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)
	@echo rebuilt > $(IntermediateDirectory)/vx.relink

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/vx"
	@mkdir -p ""../build-$(ConfigurationName)/lib""

../build-$(ConfigurationName)/vx/.d:
	@mkdir -p "../build-$(ConfigurationName)/vx"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(ObjectSuffix): entities/vxEditorGrid.cpp ../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/entities/vxEditorGrid.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/entities_vxEditorGrid.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(DependSuffix): entities/vxEditorGrid.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(DependSuffix) -MM entities/vxEditorGrid.cpp

../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(PreprocessSuffix): entities/vxEditorGrid.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/entities_vxEditorGrid.cpp$(PreprocessSuffix) entities/vxEditorGrid.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(ObjectSuffix): lib/imgui/imgui_demo.cpp ../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/imgui_demo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_imgui_demo.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(DependSuffix): lib/imgui/imgui_demo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(DependSuffix) -MM lib/imgui/imgui_demo.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(PreprocessSuffix): lib/imgui/imgui_demo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_demo.cpp$(PreprocessSuffix) lib/imgui/imgui_demo.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(ObjectSuffix): lib/imgui/imgui_tables.cpp ../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/imgui_tables.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_imgui_tables.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(DependSuffix): lib/imgui/imgui_tables.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(DependSuffix) -MM lib/imgui/imgui_tables.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(PreprocessSuffix): lib/imgui/imgui_tables.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_tables.cpp$(PreprocessSuffix) lib/imgui/imgui_tables.cpp

../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(ObjectSuffix): lib/glad/src/glad.c ../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/glad/src/glad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_glad_src_glad.c$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(DependSuffix): lib/glad/src/glad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(DependSuffix) -MM lib/glad/src/glad.c

../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(PreprocessSuffix): lib/glad/src/glad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_glad_src_glad.c$(PreprocessSuffix) lib/glad/src/glad.c

../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(ObjectSuffix): lib/imgui/imgui_widgets.cpp ../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/imgui_widgets.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_imgui_widgets.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(DependSuffix): lib/imgui/imgui_widgets.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(DependSuffix) -MM lib/imgui/imgui_widgets.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(PreprocessSuffix): lib/imgui/imgui_widgets.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_widgets.cpp$(PreprocessSuffix) lib/imgui/imgui_widgets.cpp

../build-$(ConfigurationName)/vx/core_scene.cpp$(ObjectSuffix): core/scene.cpp ../build-$(ConfigurationName)/vx/core_scene.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/core/scene.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_scene.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/core_scene.cpp$(DependSuffix): core/scene.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/core_scene.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/core_scene.cpp$(DependSuffix) -MM core/scene.cpp

../build-$(ConfigurationName)/vx/core_scene.cpp$(PreprocessSuffix): core/scene.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/core_scene.cpp$(PreprocessSuffix) core/scene.cpp

../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(ObjectSuffix): platforms/VerticesEngineSDLWrapper.cpp ../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/platforms/VerticesEngineSDLWrapper.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/platforms_VerticesEngineSDLWrapper.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(DependSuffix): platforms/VerticesEngineSDLWrapper.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(DependSuffix) -MM platforms/VerticesEngineSDLWrapper.cpp

../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(PreprocessSuffix): platforms/VerticesEngineSDLWrapper.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/platforms_VerticesEngineSDLWrapper.cpp$(PreprocessSuffix) platforms/VerticesEngineSDLWrapper.cpp

../build-$(ConfigurationName)/vx/core_camera.cpp$(ObjectSuffix): core/camera.cpp ../build-$(ConfigurationName)/vx/core_camera.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/core/camera.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_camera.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/core_camera.cpp$(DependSuffix): core/camera.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/core_camera.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/core_camera.cpp$(DependSuffix) -MM core/camera.cpp

../build-$(ConfigurationName)/vx/core_camera.cpp$(PreprocessSuffix): core/camera.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/core_camera.cpp$(PreprocessSuffix) core/camera.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(ObjectSuffix): lib/imgui/imgui_draw.cpp ../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/imgui_draw.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_imgui_draw.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(DependSuffix): lib/imgui/imgui_draw.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(DependSuffix) -MM lib/imgui/imgui_draw.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(PreprocessSuffix): lib/imgui/imgui_draw.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_imgui_draw.cpp$(PreprocessSuffix) lib/imgui/imgui_draw.cpp

../build-$(ConfigurationName)/vx/components_component.cpp$(ObjectSuffix): components/component.cpp ../build-$(ConfigurationName)/vx/components_component.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/components/component.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/components_component.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/components_component.cpp$(DependSuffix): components/component.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/components_component.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/components_component.cpp$(DependSuffix) -MM components/component.cpp

../build-$(ConfigurationName)/vx/components_component.cpp$(PreprocessSuffix): components/component.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/components_component.cpp$(PreprocessSuffix) components/component.cpp

../build-$(ConfigurationName)/vx/core_vertices.cpp$(ObjectSuffix): core/vertices.cpp ../build-$(ConfigurationName)/vx/core_vertices.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/core/vertices.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_vertices.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/core_vertices.cpp$(DependSuffix): core/vertices.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/core_vertices.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/core_vertices.cpp$(DependSuffix) -MM core/vertices.cpp

../build-$(ConfigurationName)/vx/core_vertices.cpp$(PreprocessSuffix): core/vertices.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/core_vertices.cpp$(PreprocessSuffix) core/vertices.cpp

../build-$(ConfigurationName)/vx/core_game.cpp$(ObjectSuffix): core/game.cpp ../build-$(ConfigurationName)/vx/core_game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/core/game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_game.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/core_game.cpp$(DependSuffix): core/game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/core_game.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/core_game.cpp$(DependSuffix) -MM core/game.cpp

../build-$(ConfigurationName)/vx/core_game.cpp$(PreprocessSuffix): core/game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/core_game.cpp$(PreprocessSuffix) core/game.cpp

../build-$(ConfigurationName)/vx/core_time.cpp$(ObjectSuffix): core/time.cpp ../build-$(ConfigurationName)/vx/core_time.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/core/time.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_time.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/core_time.cpp$(DependSuffix): core/time.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/core_time.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/core_time.cpp$(DependSuffix) -MM core/time.cpp

../build-$(ConfigurationName)/vx/core_time.cpp$(PreprocessSuffix): core/time.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/core_time.cpp$(PreprocessSuffix) core/time.cpp

../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(ObjectSuffix): graphics/mesh.cpp ../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/graphics/mesh.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphics_mesh.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(DependSuffix): graphics/mesh.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(DependSuffix) -MM graphics/mesh.cpp

../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(PreprocessSuffix): graphics/mesh.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/graphics_mesh.cpp$(PreprocessSuffix) graphics/mesh.cpp

../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(ObjectSuffix): lib/imgui/backends/imgui_impl_opengl3.cpp ../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/backends/imgui_impl_opengl3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_backends_imgui_impl_opengl3.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(DependSuffix): lib/imgui/backends/imgui_impl_opengl3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(DependSuffix) -MM lib/imgui/backends/imgui_impl_opengl3.cpp

../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(PreprocessSuffix): lib/imgui/backends/imgui_impl_opengl3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_opengl3.cpp$(PreprocessSuffix) lib/imgui/backends/imgui_impl_opengl3.cpp

../build-$(ConfigurationName)/vx/core_entity.cpp$(ObjectSuffix): core/entity.cpp ../build-$(ConfigurationName)/vx/core_entity.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/core/entity.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_entity.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/core_entity.cpp$(DependSuffix): core/entity.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/core_entity.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/core_entity.cpp$(DependSuffix) -MM core/entity.cpp

../build-$(ConfigurationName)/vx/core_entity.cpp$(PreprocessSuffix): core/entity.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/core_entity.cpp$(PreprocessSuffix) core/entity.cpp

../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(ObjectSuffix): lib/imgui/backends/imgui_impl_sdl.cpp ../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/backends/imgui_impl_sdl.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_backends_imgui_impl_sdl.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(DependSuffix): lib/imgui/backends/imgui_impl_sdl.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(DependSuffix) -MM lib/imgui/backends/imgui_impl_sdl.cpp

../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(PreprocessSuffix): lib/imgui/backends/imgui_impl_sdl.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_backends_imgui_impl_sdl.cpp$(PreprocessSuffix) lib/imgui/backends/imgui_impl_sdl.cpp

../build-$(ConfigurationName)/vx/graphics_material.cpp$(ObjectSuffix): graphics/material.cpp ../build-$(ConfigurationName)/vx/graphics_material.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/graphics/material.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphics_material.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/graphics_material.cpp$(DependSuffix): graphics/material.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/graphics_material.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/graphics_material.cpp$(DependSuffix) -MM graphics/material.cpp

../build-$(ConfigurationName)/vx/graphics_material.cpp$(PreprocessSuffix): graphics/material.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/graphics_material.cpp$(PreprocessSuffix) graphics/material.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(ObjectSuffix): lib/imgui/imgui.cpp ../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/lib/imgui/imgui.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/lib_imgui_imgui.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(DependSuffix): lib/imgui/imgui.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(DependSuffix) -MM lib/imgui/imgui.cpp

../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(PreprocessSuffix): lib/imgui/imgui.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/lib_imgui_imgui.cpp$(PreprocessSuffix) lib/imgui/imgui.cpp

../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(ObjectSuffix): graphics/graphics.cpp ../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/graphics/graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphics_graphics.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(DependSuffix): graphics/graphics.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(DependSuffix) -MM graphics/graphics.cpp

../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(PreprocessSuffix): graphics/graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/graphics_graphics.cpp$(PreprocessSuffix) graphics/graphics.cpp

../build-$(ConfigurationName)/vx/util_debug.cpp$(ObjectSuffix): util/debug.cpp ../build-$(ConfigurationName)/vx/util_debug.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/roer/Code/vertices-viewer-cpp/vx/util/debug.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/util_debug.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/vx/util_debug.cpp$(DependSuffix): util/debug.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/vx/util_debug.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/vx/util_debug.cpp$(DependSuffix) -MM util/debug.cpp

../build-$(ConfigurationName)/vx/util_debug.cpp$(PreprocessSuffix): util/debug.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/vx/util_debug.cpp$(PreprocessSuffix) util/debug.cpp


-include ../build-$(ConfigurationName)/vx//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


