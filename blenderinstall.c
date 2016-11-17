/*
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Author Mark C
##Contact : blendedmarks@gmail.com 
*/

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





