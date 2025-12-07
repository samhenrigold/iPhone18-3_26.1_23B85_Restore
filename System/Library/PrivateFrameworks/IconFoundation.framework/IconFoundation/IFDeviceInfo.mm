@interface IFDeviceInfo
+ (id)sharedInstance;
- (IFDeviceInfo)init;
@end

@implementation IFDeviceInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[IFDeviceInfo sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__IFDeviceInfo_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(IFDeviceInfo);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (IFDeviceInfo)init
{
  v5.receiver = self;
  v5.super_class = IFDeviceInfo;
  v2 = [(IFDeviceInfo *)&v5 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v2->_deviceClass = [v3 intValue];
  }

  return v2;
}

@end