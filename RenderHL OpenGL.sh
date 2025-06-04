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
echo "Tweak Rendering"
setprop debug.hwui.renderer skiagl
setprop debug.renderengine.backend skiaglthreaded
setprop debug.hwui.shadow.renderer skiagl
setprop debug.composition.type c2d
echo "Tweak GPU"
setprop debug.egl.profiler 0
setprop debug.egl.hw 1
setprop debug.sf.hw 1
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
echo "Tweak Memory"
setprop debug.kill_allocating_task 1
cmd activity memory-factor set 0
echo "Turning off Logcat"
logcat -c
logcat -P "$(pgrep *|sed 's/^/~/g')"
pkill -f logcat
echo "Tweak Thermal"
cmd thermalservice override-status 0
settings put system rt_enable_templimit false
settings put system rt_templimit_bottom 60
settings put system rt_templimit_celling 60
echo "Succesfuly Install Module on your device"
echo "To uninstall a module simply reboot your device."