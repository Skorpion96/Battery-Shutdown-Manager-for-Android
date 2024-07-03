# Battery-Shutdown-Manager-for-Android
An alternative to Battery Shutdown Manager Xposed Module
I had published it here:https://xdaforums.com/t/xposed-battery-shutdown-manager.3105014/post-86652591 but i can't apport modifications so i will put updates here

In brief, this module is to replace the old Xposed Battery Shutdown Manager: when battery reaches 5% it will set battery on charging even if no cable is connected freezing the battery state, then when you will connect the charger you can press the battery reset shortcut to bring battery state to normal.

To set it up, import "Battery_Shutdown_Manager.macro" and "Battery_reset.macro" into Macrodroid and enable the root execution for the script, then create a shortcut to the home screen for the Battery_reset.macro. in case like me your rom refuss to run the Battery_Shutdown_Manager.macro command from inside the macro you can instead import the "Battery_Shutdown_Manager_DerpFest.macro" which executes a script in /data/local/tmp with the command, to setup this script:
adb push batteryshutdown.sh /data/local/tmp
adb shell
su
cd /data/local/tmp
chown root:root batteryshutdown.sh
chmod 777 batteryshutdown.sh
chmod +s batteryshutdown.sh
this will give the script the maximum power possible, while it may not be necessary i would do it, technically just "chown root:root batteryshutdown.sh && chmod +x batteryshutdown.sh" should do the trick but if you want to unlock the script max power i gave you a way.
