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

##Checks architecture and installs 32 or 64bit blender

## Author Mark C
## Contact : blendedmarks@gmail.com

##I'll try to keep this up to date but it only works for 2.78a atm

echo ""
echo "Checking CPU ARCH"
echo ""

if (uname -m | grep '64'); then
  echo ""
  echo "Downloading 64-bit Blender"
  echo ""
  wget http://download.blender.org/release/Blender2.78/blender-2.78c-linux-glibc219-x86_64.tar.bz2
#######################################################################

##Create Directory For Blender To Be Installed To
echo ""
echo "Creating Directory For Blender"
echo ""
mkdir /home/$USER/blender

#######################################################################

##Move blender .bz2 file to /home/<username>/blender
echo ""
echo "Moving downloaded blender .bz2 file to /home/$USER/blender
echo ""
mv *.bz2 /home/$USER/blender

#######################################################################

##Change working directory to /home/<username>/blender

echo "Changing directory to /home/$USER/blender"

cd /home/$USER/blender

#######################################################################

##Extract the blender tarball

echo ""
echo "Extracting tarball...please wait"
echo ""
tar xvjf blender-2.78c-linux-glibc219-x86_64.tar.bz2

#######################################################################

####################### End 64-Bit Instructions #######################


else
  echo "ARCH: 32-bit"
  echo "Downloading 32-bit Blender"
  wget http://download.blender.org/release/Blender2.78/blender-2.78c-linux-glibc219-i686.tar.bz2

  ##Create Directory For Blender To Be Installed To
echo ""
echo "Creating Directory For Blender"
echo ""
mkdir /home/$USER/blender

#######################################################################

##Move blender .bz2 file to /home/<username>/blender



mv *.bz2 /home/$USER/blender

#######################################################################

##Change working directory to /home/<username>/blender

cd /home/$USER/blender

#######################################################################

##Extract the blender tarball

echo "Extracting tarball...please wait"

tar xvjf blender-2.78c-linux-glibc219-i686.tar.bz2

fi

####################### End 32-Bit Instruction Set ####################
