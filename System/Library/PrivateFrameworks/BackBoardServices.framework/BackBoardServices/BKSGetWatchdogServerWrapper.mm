@interface BKSGetWatchdogServerWrapper
@end

@implementation BKSGetWatchdogServerWrapper

void ___BKSGetWatchdogServerWrapper_block_invoke()
{
  if (!__service)
  {
    v0 = objc_alloc_init(BKSWatchdogServerWrapper);
    v1 = __service;
    __service = v0;

    MEMORY[0x1EEE66BB8](v0, v1);
  }
}

@end