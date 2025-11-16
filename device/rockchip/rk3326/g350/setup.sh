#!/system/bin/sh

echo "Starting configuration of the GammaOS system..."

	settings put secure doze_pulse_on_pick_up 0
	settings put secure camera_double_tap_power_gesture_disabled 1
	settings put secure wake_gesture_enabled 0
	settings put secure immersive_mode_confirmations confirmed
	settings put secure ui_night_mode 2
	settings put global window_animation_scale 0
	settings put global transition_animation_scale 0
	settings put global animator_duration_scale 0
	settings put system sound_effects_enabled 0
	cmd bluetooth_manager disable
	settings put global airplane_mode_on 1
	am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true

setprop ctl.stop "tee-supplicant"

echo "Enabling developer settings and configuring system behaviors."
settings put global development_settings_enabled 1
settings put global stay_on_while_plugged_in 0
settings put global mobile_data_always_on 0
settings put global private_dns_mode "hostname"
settings put global private_dns_specifier "dns.adguard-dns.com"

echo "Granting permissions to applications."
cmd package set-home-activity com.magneticchen.daijishou/.app.HomeActivity
pm set-home-activity com.magneticchen.daijishou/.app.HomeActivity -user --user 0

echo "Granting read/write permissions to RetroArch."
pm grant com.retroarch.aarch64 android.permission.WRITE_EXTERNAL_STORAGE
pm grant com.retroarch.aarch64 android.permission.READ_EXTERNAL_STORAGE

mkdir -p /data/setupcompleted
sleep 4
settings put system screen_off_timeout 240000

echo "All settings have been applied successfully."
