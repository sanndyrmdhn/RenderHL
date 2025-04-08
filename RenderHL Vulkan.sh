#/system/bin/sh

echo "-------------------------------------------------------------"
echo "         RenderHL Vulkan         "
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
echo "Tweak Rendering"
setprop debug.hwui.renderer skiavk
setprop debug.renderengine.backend skiavkthreaded
setprop debug.hwui.shadow.renderer skiavk
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
echo "Succesfuly Install Module on your device"
echo "To uninstall a module simply reboot your device."