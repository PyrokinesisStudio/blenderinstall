#include <sys/cdefs.h>
#include <stdio.h>
#include <stdlib.h>

void init()

{
        system("clear");

        system("echo """);
        system("echo """);

        system("mkdir /home/$USER/Blender");
        system("sudo apt-get install lynx");
        system("lynx http://download.blender.org/release/");

        system("echo """);
        system("echo """);
        system("sleep 2");

        system("mv *.bz2 /home/$USER/Blender");
        system("tar xvjf /home/$USER/Blender/*.bz2 -C /home/$USER/Blender");
        system("cd /home/$USER/Blender/*64 && mv * .. && rm -rf /home/$USER/Blender/*64");
        printf("Blender has been installed to /home/<username>/Blender \n");
        printf("Thank you for using this custom Blender installer \n");
}

int main()
{
        init();
        return 0;
}





