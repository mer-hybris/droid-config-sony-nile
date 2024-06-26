%define rpm_vendor qualcomm
%define vendor_pretty Sony

%define provides_own_board_mapping 1
%define out_of_image_files 1

Conflicts: appsupport-system < 11.0.0
Conflicts: appsupport-system > 11.0.0

# Device-specific usb-moded configuration
Provides: usb-moded-configs

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer

Obsoletes: qt5-qpa-surfaceflinger-plugin
Obsoletes: jolla-devicelock-daemon-encsfa
Obsoletes: jolla-devicelock-plugin-encsfa

Conflicts: apkd < 8.1.0.31

Obsoletes: audioflingerglue
Obsoletes: pulseaudio-modules-droid-glue

Requires: droid-system-%{device}-%{rpm_device}
Requires: droid-system-vendor-%{device}-%{rpm_device}

%define ofono_enable_plugins bluez5,hfp_ag_bluez5
%define ofono_disable_plugins bluez4,dun_gw_bluez4,hfp_ag_bluez4,hfp_bluez4,dun_gw_bluez5,hfp_bluez5
