@interface MLCANEIOSurface
@end

@implementation MLCANEIOSurface

void __30___MLCANEIOSurface_initialize__block_invoke(uint64_t a1)
{
  if (AppleNeuralEngineLibrary_onceToken != -1)
  {
    __30___MLCANEIOSurface_initialize__block_invoke_cold_1();
  }

  v1 = AppleNeuralEngineLibrary_frameworkLibrary;
  if (AppleNeuralEngineLibrary_frameworkLibrary)
  {
    v1 = softLinkClass_ANEIOSurfaceObject(a1) != 0;
  }

  gIsAppleNeuralEngineAvailable = v1;
}

@end