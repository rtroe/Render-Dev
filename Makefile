.PHONY: clean All

All:
	@echo "----------Building project:[ vx - Debug ]----------"
	@cd "vx" && "$(MAKE)" -f  "vx.mk"
	@echo "----------Building project:[ vertices-viewer - Debug ]----------"
	@cd "vertices-viewer" && "$(MAKE)" -f  "vertices-viewer.mk"
clean:
	@echo "----------Cleaning project:[ vx - Debug ]----------"
	@cd "vx" && "$(MAKE)" -f  "vx.mk"  clean
	@echo "----------Cleaning project:[ vertices-viewer - Debug ]----------"
	@cd "vertices-viewer" && "$(MAKE)" -f  "vertices-viewer.mk" clean
