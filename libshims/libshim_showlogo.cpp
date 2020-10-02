#include <gui/SurfaceComposerClient.h>

namespace android {

    extern "C" void _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlENS_13LayerMetadataEPj(const String8& name, uint32_t w, uint32_t h, PixelFormat format, uint32_t flags, SurfaceControl* parent, android::LayerMetadata metadata, uint32_t* outTransformHint);

    extern "C" void _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlEii(const String8& name, uint32_t w, uint32_t h, PixelFormat format, uint32_t flags, SurfaceControl* parent, int32_t windowType, int32_t ownerUid) {
        android::LayerMetadata metadata;
        _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlENS_13LayerMetadataEPj(name, w, h, format, flags, nullptr, metadata, nullptr);
    }

    extern "C" void _ZN7android21SurfaceComposerClient23getInternalDisplayTokenEv(void);

    extern "C" void _ZN7android21SurfaceComposerClient17getBuiltInDisplayEi(int32_t id){
        _ZN7android21SurfaceComposerClient23getInternalDisplayTokenEv();
    }

    extern "C" void _ZN7android14SurfaceControl7destroyEv(void);

    extern "C" void _ZN7android14SurfaceControl5clearEv(void){
        _ZN7android14SurfaceControl7destroyEv();
    }

    extern "C" void SurfaceControl::destroy()
    {
        if (isValid()) {
        SurfaceComposerClient::Transaction().reparent(this, nullptr).apply();
        }
        release();
    }

    extern "C" void _ZN7android4base10StartsWithERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPKc() { }

}