@interface APDeviceCapabilityEngine
- (APDeviceCapabilityEngine)initWithBuilder:(id)builder;
- (unsigned)build;
@end

@implementation APDeviceCapabilityEngine

- (APDeviceCapabilityEngine)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = APDeviceCapabilityEngine;
  v6 = [(APDeviceCapabilityEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capabilityEngine, builder);
  }

  return v7;
}

- (unsigned)build
{
  v3 = objc_msgSend_capabilityEngine(self, a2, v2);
  v6 = objc_msgSend_build(v3, v4, v5);

  return v6;
}

@end