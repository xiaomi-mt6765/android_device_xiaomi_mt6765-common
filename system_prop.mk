# system.prop for mt6765-common

# Audio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.media_vol_steps=25

# Performance
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# RIL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.rild.libpath=mtk-ril.so \
    vendor.rild.libargs=-d/dev/ttyC0
