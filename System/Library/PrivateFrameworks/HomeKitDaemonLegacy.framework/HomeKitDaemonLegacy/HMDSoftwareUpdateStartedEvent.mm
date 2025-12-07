@interface HMDSoftwareUpdateStartedEvent
+ (id)eventUpdateStartedWithAutomaticUpdateEnabled:(BOOL)enabled;
@end

@implementation HMDSoftwareUpdateStartedEvent

+ (id)eventUpdateStartedWithAutomaticUpdateEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_alloc_init(HMDSoftwareUpdateStartedEvent);
  [(HMDSoftwareUpdateStartedEvent *)v4 setAutomaticUpdateEnabled:enabledCopy];

  return v4;
}

@end