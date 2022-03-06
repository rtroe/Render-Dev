#include "stdio.h"
#include <string.h>
#include <iostream>
#include <fstream>
#include "vertices.h"
#include "vertices_debug.h"
#include "content.h"

#include <iostream>

namespace vx
{
    namespace content
    {
        const char *get_filename_ext(const char *filename)
        {
            const char *dot = strrchr(filename, '.');
            if (!dot || dot == filename)
                return "";
            return dot + 1;
        }

        void LoadModel(const char *fileName)
        {
            const char *FILEEXT_OBJ = "obj";
            std::cout << "Loading Model " << fileName << std::endl;

            auto ext = get_filename_ext(fileName);

            vxDebug::Log("Extension: ");

            printf("Value: %d\n", strcmp(ext, FILEEXT_OBJ));
            // printf("Checking...");
            if (strcmp(ext, FILEEXT_OBJ) == 0)
            {
                // open file
                std::string txt;
                // Read from the text file
                std::ifstream MyReadFile(fileName);

                // Use a while loop together with the getline() function to read the file line by line
                while (getline(MyReadFile, txt))
                {
                    // Output the text from the file
                    // std::cout << txt << std::endl;
                }

                // Close the file
                MyReadFile.close();
            }
            vxDebug::Log("LoadModel Finished");
        }
    }
}