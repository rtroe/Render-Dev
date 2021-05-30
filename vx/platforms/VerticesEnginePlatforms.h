#pragma once

#include "../core/game.h"


class VerticesEngineContext
{
public:
    virtual bool IsActive() = 0;
    virtual void Init(vxGame *game) = 0;
    virtual void Tick() = 0;
    virtual void OnQuit() = 0;

protected:
    bool m_isActive = true;
    bool m_isInitialised = false;
    vxGame *m_game;
};

class VerticesSDLContextWrapper : public VerticesEngineContext
{
public:
    VerticesSDLContextWrapper();
    void Init(vxGame *game);
    bool IsActive();
    void Tick();
    void OnQuit();
};