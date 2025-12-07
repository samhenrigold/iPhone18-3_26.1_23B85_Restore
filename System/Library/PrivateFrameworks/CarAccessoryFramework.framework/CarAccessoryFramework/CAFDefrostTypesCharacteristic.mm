@interface CAFDefrostTypesCharacteristic
+ (void)load;
- (BOOL)hasBlownAir;
- (BOOL)hasFilament;
- (id)formattedValue;
- (void)setHasBlownAir:(BOOL)air;
- (void)setHasFilament:(BOOL)filament;
@end

@implementation CAFDefrostTypesCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDefrostTypesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasBlownAir
{
  defrostTypesValue = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return [CAFBitMaskUtilities bitmask:defrostTypesValue hasOption:1];
}

- (void)setHasBlownAir:(BOOL)air
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFDefrostTypesCharacteristic *)self defrostTypesValue] setOption:1 on:air];

  [(CAFDefrostTypesCharacteristic *)self setDefrostTypesValue:v4];
}

- (BOOL)hasFilament
{
  defrostTypesValue = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return [CAFBitMaskUtilities bitmask:defrostTypesValue hasOption:2];
}

- (void)setHasFilament:(BOOL)filament
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFDefrostTypesCharacteristic *)self defrostTypesValue] setOption:2 on:filament];

  [(CAFDefrostTypesCharacteristic *)self setDefrostTypesValue:v4];
}

- (id)formattedValue
{
  defrostTypesValue = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return NSStringFromDefrostTypes(defrostTypesValue);
}

@end