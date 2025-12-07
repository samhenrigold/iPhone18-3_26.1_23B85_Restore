@interface APLegacyFeatureFlags
- (APDeviceCapabilityEngine)capabilityEngine;
@end

@implementation APLegacyFeatureFlags

- (APDeviceCapabilityEngine)capabilityEngine
{
  v2 = [APDeviceCapabilityEngine alloc];
  v5 = objc_msgSend_deviceCapabilityEngine(APLegacyFeatureFlagsInternal, v3, v4);
  v7 = objc_msgSend_initWithBuilder_(v2, v6, v5);

  return v7;
}

@end