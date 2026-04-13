#/system/bin/sh

echo "-------------------------------------------------------------"
echo "         RenderHL OpenGL         "
echo "-------------------------------------------------------------"
echo "                   "
echo "Created By : sanndyrmdhn"
echo "                   "
echo "⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⣀⡀⢀⢀⢀⢀⢀⢀⢀⢀"
echo "⢀⢀⢀⢀⢀⢀⢀⡤⠒⠋⠉⠁⢀⠉⠉⠑⠲⢄⡀⢀⢀⢀"
echo "⢀⢀⢀⢀⢀⠔⢁⡠⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⠉⢢⡀⢀"
echo "⢀⢀⢀⢠⠃⣴⡇⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⠱⡄"
echo "⢀⢀⢠⠃⢀⣿⣧⣀⢀⢀⣀⢀⢀⢀⢀⢀⢀⢀⢀⠈⣆⠹⡀"
echo "⢀⢀⡸⢀⢀⠹⣶⣿⣿⣿⣿⣿⣶⣶⣶⣤⡀⢀⢀⣴⡿⢀⡇"
echo ". ⢀⡇⢀⢀⢀⠤⣾⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⢀⡇"
echo "⢀.⢱⢀⣠⣤⣶⣿⣿⣧⣉⣿⣿⡟⣃⣿⢿⡿⢀⢀⢀⢀⡇"
echo "⢀⢀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢀⢀⢀⢀⢀⡰⠁"
echo "⢀⢀⢀⠘⣿⣿⣿⣿⣿⣏⡀⢀⣸⣿⣿⢀⢀⢀⢀⢀⡰⠃"
echo "⢀⢀⢀⢀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⡏⢀⢀⢀⣠⠞⠁⢀"
echo "⢀⢀⢀⢀⢀⢀⠈⠙⠿⢿⣿⣿⣿⣿⣇⡠⠔⠊⠁⢀⢀⢀"
echo "⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀"
echo "                   "
sleep 3
echo "Installing Module"
sleep 3
echo "Change the default Power mode to Performance mode"
cmd settings put system cloud_schedboost_enable true
cmd settings put system power_mode_level 0
cmd settings put system speed_mode 1
cmd power set-adaptive-power-saver-enabled false
cmd power set-fixed-performance-mode-enabled true
cmd power set-mode 0
sleep 3
echo "Tweak with cmd"
cmd activity clear-debug-app
cmd activity clear-exit-info
cmd activity clear-watch-heap all
cmd blob_store clear-all-blob
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
echo "Tweak Rendering"
setprop debug.hwui.renderer skiagl
setprop debug.renderengine.backend skiaglthreaded
setprop debug.hwui.shadow.renderer skiagl
setprop debug.composition.type c2d
echo "Tweak GPU"
setprop debug.egl.profiler 0
setprop debug.egl.hw 1
setprop debug.sf.hw 1
setprop debug.egl.swapinterval 0
setprop debug.gr.swapinterval 0
setprop debug.egl.force_msaa false
setprop debug.egl.force_fxaa false
setprop debug.egl.force_taa false
setprop debug.egl.buffcount 0
setprop debug.performance.tuning 1
setprop debug.perf.tuning 1
setprop debug.graphics.game_default_frame_rate.disabled true
setprop debug.skia.threaded_mode true
setprop debug.cpurend.vsync false
setprop debug.gpurend.vsync false
echo "Tweak HWUI"
setprop debug.hwui.level 0
setprop debug.hwui.skia_tracing_enabled false
setprop debug.hwui.trace_gpu_resources false
setprop debug.hwui.use_gpu_pixel_buffers false
setprop debug.hwui.use_buffer_age false
setprop debug.hwui.level 0
setprop debug.hwui.skia_tracing_enabled false
setprop debug.hwui.trace_gpu_resources false
setprop debug.hwui.use_gpu_pixel_buffers false
setprop debug.hwui.use_buffer_age false
echo "Turning off Logcat"
logcat -c
logcat -P "$(pgrep *|sed 's/^/~/g')"
pkill -f logcat
cmd window logging disable
cmd window logging disable-text
cmd window logging stop
echo "Tweak Memory"
setprop debug.kill_allocating_task 1
cmd activity memory-factor set 0
cmd device_config put activity_manager low_swap_threshold_percent 1.0
echo "Tweak Thermal"
cmd thermalservice override-status 0
cmd settings put system rt_enable_templimit false
cmd settings put system rt_templimit_bottom 60
cmd settings put system rt_templimit_celling 60
echo "Succesfuly Install Module on your device"
echo "To uninstall a module simply reboot your device."
