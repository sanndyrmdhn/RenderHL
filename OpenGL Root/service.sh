while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 3
done
#Tweak with cmd
cmd settings put system rt_enable_templimit false
cmd settings put system rt_templimit_bottom 60
cmd settings put system rt_templimit_ceiling 60
cmd settings put system cloud_schedboost_enable true
cmd settings put system power_mode_level 0
cmd settings put system speed_mode 1
cmd power set-adaptive-power-saver-enabled false
cmd power set-fixed-performance-mode-enabled true
cmd power set-mode 0
cmd activity clear-debug-app
cmd activity clear-exit-info
cmd activity clear-watch-heap all
cmd blob_store clear-all-blobs
cmd blob_store clear-all-sessions
cmd wifi remove-all-suggestions
dumpsys media.metrics --clear
dumpsys procstats --clear
cmd thermalservice override-status 0
cmd activity memory-factor set 0
cmd device_config put activity_manager low_swap_threshold_percent 1.0
cmd accessibility stop-trace
cmd activity logging disable-text
cmd autofill set log_level off
cmd display ab-logging-disable
cmd display dmd-logging-disable
cmd display dwb-logging-disable
cmd input_method tracing stop
cmd migard dump-trace false
cmd migard start-trace false
cmd migard stop-trace true
cmd migard trace-buffer-size 0
cmd miui_step_counter_service logging-disable
cmd settings put global activity_starts_logging_enabled 0 default
cmd statusbar tracing stop
cmd voiceinteraction set-debug-hotword-logging false
cmd wifi set-verbose-logging disabled -l 0
cmd window logging disable
cmd window logging disable-text
cmd window logging stop
cmd window tracing size 0
chmod 731 /data/system/theme
chmod 731 /data/system/fonts

#Tweak Kernel Level
echo 1 > /dev/stune/top-app/schedtune.prefer_idle
echo 100 > /dev/stune/top-app/schedtune.boost
echo 1 > /dev/stune/foreground/schedtune.prefer_idle
echo 50 > /dev/stune/foreground/schedtune.boost
