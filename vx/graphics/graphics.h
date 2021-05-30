#pragma once

class vxGraphics
{

private:
      static int width;
      static int height;
public:

      static void Init()
      {
            width = 1200;
            height = 720;
      };

      static int GetWidth()
      {
            return width;
      }

      static int GetHeight()
      {
            return height;
      }

      static void SetResolution(int w, int h)
      {
            width = w;
            height = h;
      }
};
