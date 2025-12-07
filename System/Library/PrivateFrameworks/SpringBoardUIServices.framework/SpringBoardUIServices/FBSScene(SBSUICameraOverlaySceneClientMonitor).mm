@interface FBSScene(SBSUICameraOverlaySceneClientMonitor)
- (uint64_t)cameraOverlaySceneClientMonitor;
@end

@implementation FBSScene(SBSUICameraOverlaySceneClientMonitor)

- (uint64_t)cameraOverlaySceneClientMonitor
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [self componentForExtension:v3 ofClass:v4];
}

@end