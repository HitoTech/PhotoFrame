# PhotoFrame

Simple bash script to make a digital photo frame with QIV.

## How to use

Clone the repository on the Raspberry Pi (or any system Linux based) :

```bash
git clone git@github.com:HitoTech/photoframe.git
cd photoframe
```

Execute the system setup script. 

:warning: This script will remove and clean Linux packages unused for this project.

```bash
sudo ./system_init.sh
```

When the script is done, you should have QIV installed, an autoloading slideshow at system boot, and a new folder `~/pics`. Add photos in this folder, and they will be added to slideshow.

## Slideshow script

The slideshow will automatically launch at system boot, but you can start it manually :

```bash
./qiv_slideshow.sh
```

## Bonus

In order to add more photos to the system, maybe you want to access a shared drive (computer, server, NAS, etc.).

Add this line in `/etc/fstab` to automatically mount a shared folder at system boot :

```
server_name:remote_folder /home/pi/shared_folder nfs defaults 0 0
```
