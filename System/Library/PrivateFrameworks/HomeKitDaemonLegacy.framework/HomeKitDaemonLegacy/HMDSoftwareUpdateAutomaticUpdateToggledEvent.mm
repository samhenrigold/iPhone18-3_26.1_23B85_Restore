@interface HMDSoftwareUpdateAutomaticUpdateToggledEvent
+ (id)eventWithAutomaticUpdateEnabled:(BOOL)enabled;
@end

@implementation HMDSoftwareUpdateAutomaticUpdateToggledEvent

+ (id)eventWithAutomaticUpdateEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_alloc_init(HMDSoftwareUpdateAutomaticUpdateToggledEvent);
  [(HMDSoftwareUpdateAutomaticUpdateToggledEvent *)v4 setEnabled:enabledCopy];

  return v4;
}

@end