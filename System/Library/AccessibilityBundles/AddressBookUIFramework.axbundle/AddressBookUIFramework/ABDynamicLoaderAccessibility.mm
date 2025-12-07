@interface ABDynamicLoaderAccessibility
+ (BOOL)loadFrameworkAtPath:(id)path andStoreHandle:(void *)handle bundle:(id *)bundle logging:(BOOL)logging;
@end

@implementation ABDynamicLoaderAccessibility

+ (BOOL)loadFrameworkAtPath:(id)path andStoreHandle:(void *)handle bundle:(id *)bundle logging:(BOOL)logging
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___ABDynamicLoaderAccessibility;
  v7 = objc_msgSendSuper2(&v12, sel_loadFrameworkAtPath_andStoreHandle_bundle_logging_, path, handle, bundle, logging);
  v8 = v7;
  if (bundle && v7 && *bundle)
  {
    v11 = *bundle;
    v9 = v11;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return v8;
}

uint64_t __82__ABDynamicLoaderAccessibility_loadFrameworkAtPath_andStoreHandle_bundle_logging___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isLoaded] & 1) == 0)
  {
    [*(a1 + 32) load];
  }

  v2 = MEMORY[0x29EDC7358];
  v3 = *(a1 + 32);

  return [v2 loadAccessibilityBundleForBundle:v3 didLoadCallback:0 force:1 loadAllAccessibilityInfo:0];
}

@end