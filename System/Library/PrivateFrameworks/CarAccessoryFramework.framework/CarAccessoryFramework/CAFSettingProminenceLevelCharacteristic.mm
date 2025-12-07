@interface CAFSettingProminenceLevelCharacteristic
+ (void)load;
- (BOOL)hasAppHomeTile;
- (BOOL)hasHomescreen;
- (id)formattedValue;
- (void)setHasAppHomeTile:(BOOL)tile;
- (void)setHasHomescreen:(BOOL)homescreen;
@end

@implementation CAFSettingProminenceLevelCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSettingProminenceLevelCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasAppHomeTile
{
  settingProminenceLevelValue = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return [CAFBitMaskUtilities bitmask:settingProminenceLevelValue hasOption:1];
}

- (void)setHasAppHomeTile:(BOOL)tile
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue] setOption:1 on:tile];

  [(CAFSettingProminenceLevelCharacteristic *)self setSettingProminenceLevelValue:v4];
}

- (BOOL)hasHomescreen
{
  settingProminenceLevelValue = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return [CAFBitMaskUtilities bitmask:settingProminenceLevelValue hasOption:8];
}

- (void)setHasHomescreen:(BOOL)homescreen
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue] setOption:8 on:homescreen];

  [(CAFSettingProminenceLevelCharacteristic *)self setSettingProminenceLevelValue:v4];
}

- (id)formattedValue
{
  settingProminenceLevelValue = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return NSStringFromSettingProminenceLevel(settingProminenceLevelValue);
}

@end