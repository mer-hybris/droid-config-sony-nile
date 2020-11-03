%define device pioneer
%define rpm_device h3113
%define device_pretty Xperia XA2

%define pixel_ratio 1.75

%include droid-config-common.inc
%include droid-configs-device/droid-configs.inc
%include patterns/patterns-sailfish-device-adaptation-pioneer.inc
%include patterns/patterns-sailfish-device-configuration-h3113.inc

%pretrans -p <lua>
path = "/lib/firmware"
st = posix.stat(path)
if st and st.type == "link" then
  os.remove(path)
end
