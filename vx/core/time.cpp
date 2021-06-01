/*
The time Class which handles the rate at which the game is rendered
*/

#include <iostream>
#include <chrono>
#include "time.h"

using namespace std::chrono;


double vxTime::time;
double vxTime::deltaTime;

auto prev = high_resolution_clock::now();

void vxTime::Init()
{
    prev = high_resolution_clock::now();
}
void vxTime::Update()
{
        auto duration = duration_cast<nanoseconds>(high_resolution_clock::now() - prev);
        
        deltaTime=(duration.count() / 1000000000.0f);
        
        prev = high_resolution_clock::now();
        
        time+= deltaTime;
}

double vxTime::GetTime(){
    return time;
}

double vxTime::GetDeltaTime(){
    return deltaTime;
}