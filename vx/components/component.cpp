
/*
The component class handles logic for a single use
*/

#include <iostream>       // std::cout

#include "component.h"


vxComponent::vxComponent() {}
void vxComponent::Initialise() {

        std::cout << "BaseComponent Initialise" << std::endl;
}
void vxComponent::Update() {}