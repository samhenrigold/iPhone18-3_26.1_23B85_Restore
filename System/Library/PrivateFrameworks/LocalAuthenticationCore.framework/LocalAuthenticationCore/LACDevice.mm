@interface LACDevice
+ (LACDevice)sharedInstance;
- (BOOL)isDynamicIslandAvailable;
@end

@implementation LACDevice

+ (LACDevice)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[LACDevice sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_6;

  return v3;
}

uint64_t __27__LACDevice_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_6;
  sharedInstance_sharedInstance_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)isDynamicIslandAvailable
{
  v3 = SBSIsSystemApertureAvailable();
  if (v3)
  {
    LOBYTE(v3) = ![(LACDevice *)self isClarityBoardRunning];
  }

  return v3;
}

@end