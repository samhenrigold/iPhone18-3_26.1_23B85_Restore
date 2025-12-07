@interface CAFLockStateCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFLockStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFLockStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  lockStateValue = [(CAFLockStateCharacteristic *)self lockStateValue];

  return NSStringFromLockState(lockStateValue);
}

+ (id)secondaryCharacteristicFormats
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"0x0000000060000002";
  v4[1] = @"0x0000000042000009";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end