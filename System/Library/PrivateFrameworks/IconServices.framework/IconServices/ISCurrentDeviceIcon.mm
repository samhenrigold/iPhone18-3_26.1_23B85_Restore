@interface ISCurrentDeviceIcon
+ (id)sharedInstance;
- (ISCurrentDeviceIcon)init;
@end

@implementation ISCurrentDeviceIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_65 != -1)
  {
    +[ISCurrentDeviceIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_64;

  return v3;
}

uint64_t __37__ISCurrentDeviceIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_64 = objc_alloc_init(ISCurrentDeviceIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISCurrentDeviceIcon)init
{
  v3 = _LSCreateDeviceTypeIdentifierWithModelCode();
  v6.receiver = self;
  v6.super_class = ISCurrentDeviceIcon;
  v4 = [(ISTypeIcon *)&v6 initWithType:v3];

  return v4;
}

@end