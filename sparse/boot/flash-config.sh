VALID_PRODUCTS=(@VALID_PRODUCTS@)

FLASH_OPS=(
"getvar_fail_if secure yes"
"flash boot_a hybris-boot.img"
"flash boot_b hybris-boot.img"
"flash userdata sailfish.img001"
"flash system_b fimage.img001"
"flash vendor_a vendor.img001"
"flash vendor_b vendor.img001"
"flash_blob oem_a *_v1[67]_nile.img"
)

GETVAR_ERROR_secure="
This device has not been unlocked, but you need that for flashing.
Please go to https://developer.sony.com/develop/open-devices/get-started/unlock-bootloader/ and see instructions how to unlock your device.
"

BLOB_ERROR_TOO_MANY_oem_a="
More than one supported Sony Vendor image was found in this directory.
Please remove any additional files.
"

BLOB_ERROR_NOT_FOUND_oem_a="
The supported Sony Vendor partition image wasn't found in the current directory.
Please download it from
https://developer.sony.com/develop/open-devices/downloads/software-binaries/
Ensure you download the supported version of the image found under:
\"Software binaries for AOSP Oreo (Android 8.1) - Kernel 4.4 - Nile\"
and unzip it into this directory.
Note: information on which versions are supported is written in our Sailfish X
installation instructions online https://jolla.com/sailfishxinstall
"

FLASH_COMPLETED_MESSAGE="
Remove the USB cable and bootup the device by pressing powerkey.
"
