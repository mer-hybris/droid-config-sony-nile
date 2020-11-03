%define device discovery
%define rpm_device h3213
%define device_pretty Xperia XA2 Ultra

%define pixel_ratio 1.5

%include droid-config-common.inc
%include droid-configs-device/droid-configs.inc
%include patterns/patterns-sailfish-device-adaptation-discovery.inc
%include patterns/patterns-sailfish-device-configuration-h3213.inc

%pretrans -p <lua>
path = "/lib/firmware"
st = posix.stat(path)
if st and st.type == "link" then
  os.remove(path)
end
