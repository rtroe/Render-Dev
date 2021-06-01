#pragma once
/*
*/

class vxTime
{
private:
    static double time;
    static double deltaTime;

public:
    static void Init();
    static void Update();
    static double GetDeltaTime();
    static double GetTime();
};