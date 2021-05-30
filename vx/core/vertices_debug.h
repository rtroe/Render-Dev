#pragma once

#include <iostream>

// -- Util Functions --

class vxDebug
{
public:
    static void Log(const char *txt)
    {
        std::cout << txt << std::endl;
    }

    static void Log(const char *txt, const char* txt2)
    {
        std::cout << txt << txt2 << std::endl;
    }

    static void Warning(const char *txt)
    {
        std::cout << "[WARNING]" << txt << std::endl;
    }
    static void Error(const char *txt)
    {
        std::cout << "[ERROR]" << txt << std::endl;
    }
};
