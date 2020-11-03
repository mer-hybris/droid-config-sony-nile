%define device voyager
%define rpm_device h4413
%define device_pretty Xperia XA2 Plus - Dual SIM

%define pixel_ratio 1.75

%include droid-config-common.inc
%include droid-configs-device/droid-configs.inc
%include patterns/patterns-sailfish-device-adaptation-voyager.inc
%include patterns/patterns-sailfish-device-configuration-h4413.inc

%pretrans -p <lua>
path = "/lib/firmware"
st = posix.stat(path)
if st and st.type == "link" then
  os.remove(path)
end
