%define device discovery
%define rpm_device h4213
%define device_pretty Xperia XA2 Ultra - Dual SIM

%define pixel_ratio 1.5

%include droid-config-common.inc
%include droid-configs-device/droid-configs.inc
%include patterns/patterns-sailfish-device-adaptation-discovery.inc
%include patterns/patterns-sailfish-device-configuration-h4213.inc

%pretrans -p <lua>
path = "/lib/firmware"
st = posix.stat(path)
if st and st.type == "link" then
  os.remove(path)
end
