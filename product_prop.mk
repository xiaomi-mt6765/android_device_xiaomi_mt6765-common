# system.prop for mt6765-common

# Audio
PRODUCT_PRODUCT_PROPERTIES  += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.alarm_vol_steps=15 \
   ro.config.system_vol_steps=15 \
   ro.config.ring_notification_vol_steps=15

# Graphics
PRODUCT_PRODUCT_PROPERTIES  += \
    debug.sf.enable_gl_backpressure=1

# Media
PRODUCT_PRODUCT_PROPERTIES  += \
   media.stagefright.thumbnail.prefer_hw_codecs=true

# Memory optimization
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000 \
    ro.am.reschedule_service=true \
    ro.sys.fw.bg_apps_limit=24 

# OMX
PRODUCT_PRODUCT_PROPERTIES  += \
   debug.stagefright.omx_default_rank.sw-audio=1 \
   debug.stagefright.omx_default_rank=0

# Performance
PRODUCT_PRODUCT_PROPERTIES  += \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# Surfaceflinger
PRODUCT_PRODUCT_PROPERTIES  += \
   ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
   ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
   ro.surface_flinger.vsync_event_phase_offset_ns=8300000 \
   ro.surface_flinger.vsync_sf_event_phase_offset_ns=830000 \
   ro.surface_flinger.present_time_offset_from_vsync_ns=0

