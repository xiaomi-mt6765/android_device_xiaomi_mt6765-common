#include <gui/SurfaceComposerClient.h>

namespace android {
    extern "C" void _ZN7android21SurfaceComposerClient23getInternalDisplayTokenEv(void);

    extern "C" void _ZN7android21SurfaceComposerClient17getBuiltInDisplayEi(int32_t id){
        _ZN7android21SurfaceComposerClient23getInternalDisplayTokenEv();
    }

    extern "C" void _ZN7android21SurfaceComposerClient11Transaction20setDisplayProjectionERKNS_2spINS_7IBinderEEEjRKNS_4RectES9_(const sp<IBinder>& token,uint32_t orientation,const android::Rect& layerStackRect,const android::Rect& displayRect) {
  android::SurfaceComposerClient::Transaction *t = nullptr;
  t->setDisplayProjection(token, static_cast<android::ui::Rotation>(orientation), layerStackRect, displayRect);
    }

    extern "C" void _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlENS_13LayerMetadataE(const String8& name, uint32_t w, uint32_t h, PixelFormat format, uint32_t flags, SurfaceControl* parent, android::LayerMetadata metadata, uint32_t* outTransformHint){}

    extern "C" void _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlEii(const String8& name, uint32_t w, uint32_t h, PixelFormat format, uint32_t flags, SurfaceControl* parent, int32_t windowType, int32_t ownerUid, uint32_t* outTransformHint) {
        android::LayerMetadata metadata;
        _ZN7android21SurfaceComposerClient13createSurfaceERKNS_7String8EjjijPNS_14SurfaceControlENS_13LayerMetadataE(name, w, h, format, flags, parent, metadata, outTransformHint);
    }

    extern "C" void _ZN7android14SurfaceControl7destroyEv(void){}

    extern "C" void _ZN7android14SurfaceControl5clearEv(void){
        _ZN7android14SurfaceControl7destroyEv();
    }

    extern "C" void _ZN7android4base10StartsWithERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPKc() { }

}
