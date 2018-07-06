= SAILFISH X FOR SONY XPERIA™ XA2 FLASHING GUIDE =

= FOR LINUX, WINDOWS AND OS X =

= STEP 1: GETTING AN XPERIA™ XA2 =

Get an Xperia™ XA2, model number H4113. To be able to replace the Sony Android
system with Sailfish X, you will need to be able to unlock the bootloader of 
your device so that it can be flashed with a new operating system. This process
is supported by Sony as part of their Open Devices programme:

https://developer.sonymobile.com/open-devices/
 
The best way to get an unlockable device is to buy is a brand new Xperia™ XA2 in 
a sales box. If you are tempted to buy second-hand please be aware that there 
are some variants for which the bootloader cannot be unlocked: for example 
devices that have at some point been SIM locked, even if they have subsequently
been SIM unlocked. It will not be possible to flash Sailfish X onto these 
devices. Instructions for checking the unlockability of Xperia™ models can be
found on the Sony Developer World website here: 

https://developer.sonymobile.com/unlockbootloader/

If in doubt, ask the vendor to check this before you buy.

Once you receive your device you will need to boot it into Android at least
once to update it to the latest Android version.
If you have a new device that's still under warranty, it's a good idea to
verify that all components of the device are working at this point, such as the
cameras and radio devices, as exchanging your device under warranty may become
more difficult once the bootloader has been unlocked.

= STEP 2: UNLOCKING THE BOOTLOADER =

Make sure that the system language of your Xperia™ device is set to English 
before you continue.

Go to https://developer.sonymobile.com/unlockbootloader/ website and select the
model of your device Xperia™ XA2. You should see additional instructions to
prepare your device for unlocking:

* Enter your e-mail address, accept the terms and conditions, then submit 
  the form. You will receive an email from Sony giving you a link to click in 
  order to access the next stage. NOTE: If you have not received an e-mail 
  within a few minutes, remember to check your spam folder. Gmail, for instance,
  may automatically flag the Sony e-mail as spam.

* Open the link in the received e-mail and enter the IMEI code of your device 
  (18 digits). You can find your IMEI code printed on the retail box, or by 
  typing *#06# into the Android Phone Dialer. If you have trouble with this, 
  further instructions can be found on the Sony website.

* Accept the terms & conditions to proceed. Please note the details of how this
  process affects your Sony warranty.

Now read and follow Sony's instructions on how to connect your device to your PC
in fastbook mode and unlock the bootloader. Don't miss the step to enable 
'OEM unlock' from within Android beforehand.

Neither Linux nor OS X should require any additional drivers to connect to the 
device in fastboot mode, but you will need to have installed the fastboot
command itself: 

* Debian/Ubuntu/.deb distros: apt-get install android-tools-fastboot
* Fedora: yum install android-tools
* OS X: brew install android-sdk

= STEP 3: GETTING THE SONY VENDOR BINARY IMAGE =

Some drivers and other binaries needed to operate the device cannot be 
distributed as part of Sailfish X due to licensing restrictions. You must 
download these yourself from Sony's website, after accepting their separate
license agreement.

For convenience, these components have already been packaged into their own
partition image, ready to flash to your device. 

The Sony binary image for the Xperia™ XA2 can be found here:

https://developer.sony.com/file/download/software-binaries-for-aosp-oreo-android-8-1-kernel-4-4-nile/

The image will be compressed as a zip file. Once downloaded, extract the image 
file from the zip and place it with the other Sailfish X files. It will be 
detected and flashed to your device during flashing.

= STEP 4 : FLASHING SAILFISH X TO YOUR XPERIA™ =

Connect your device to your PC in Fastboot mode as follows:

* Disconnect your Xperia™ device from your PC
* Turn off the device. Leave it off for at least fifteen seconds.
* Connect one end of a USB cable to your PC
* While holding the 'Volume Up' button, connect the other end of the USB cable 
  to your Xperia™ device. The LED next to the speaker on the device should
  light up blue.
* On Windows, fastboot drivers are needed to properly detect the device, as was
  needed for the unlocking process. If you need to install them, see the
  instructions in Step 3 above.
* Launch the correct flashing script for your platform:
  * On Linux and OS X, use flash.sh
  * On Windows 7, 8 & 10, double-click 'flash-on-windows.bat'. If Windows warns
    you that it 'Protected your PC' by stopping the script from launching, click
    'More Info' then 'Run anyway'.
* Follow the instructions in the console window.
* When flashing has finished, reboot your device into Sailfish X!

Happy flashing :)
  
= TROUBLESHOOTING =

Q: My Xperia™ shows only Sony logo when it is booting up, what to do?
A: You should reflash the device with the instructions above. Verify that you 
   have the correct Vendor binary image from Sony.
   
