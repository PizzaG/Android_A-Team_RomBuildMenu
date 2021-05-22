## PizzaG Custom Magisk Powered Script

## Install Magisk
sleep 45
pm install -r "/cache/Magisk.apk"
sleep 10
#su -c settings put system screen_off_timeout 1800000
#su -c settings put system screen_off_timeout 1800000
settings put system screen_off_timeout 1800000
#sleep 5
#su -c settings put system screen_off_timeout 1800000
sleep 5

## Set Device Settings
su -c settings put global mobile_data_always_on 1
su -c settings put global tether_offload_disabled 1
su -c settings put global transition_animation_scale 0
su -c settings put global window_animation_scale 0
su -c settings put global animator_duration_scale 0
su -c settings put global force_gpu_rendering 1
su -c settings put secure camera_double_tap_power_gesture_disabled 1
su -c settings put secure wifi_on 0
su -c settings put secure dialer_default_application com.google.android.dialer
su -c settings put system sound_effects_enabled 0
su -c settings put system rotation 0
su -c settings put system vibrate_when_ringing 1
# Cleanup
su -c rm -r cache/recovery/openrecoveryscript
su -c rm -r cache/Busybox.zip
su -c rm -r cache/Magisk.apk
su -c rm -r cache/Magisk.zip
su -c rm -r data/adb/post-fs-data.d/PostBootSetup.sh
su -lp 2000 -c "cmd notification post -S bigtext -t 'A-Team Notification' 'Tag' 'Post Boot Install Script Complete, Enjoy!!'"
exit
