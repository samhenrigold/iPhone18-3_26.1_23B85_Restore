@interface CAFVentTypesCharacteristic
+ (void)load;
- (BOOL)hasLower;
- (BOOL)hasMiddle;
- (BOOL)hasNeck;
- (BOOL)hasUpper;
- (BOOL)hasWindow;
- (id)formattedValue;
- (void)setHasLower:(BOOL)lower;
- (void)setHasMiddle:(BOOL)middle;
- (void)setHasNeck:(BOOL)neck;
- (void)setHasUpper:(BOOL)upper;
- (void)setHasWindow:(BOOL)window;
@end

@implementation CAFVentTypesCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFVentTypesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasWindow
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:1];
}

- (void)setHasWindow:(BOOL)window
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFVentTypesCharacteristic *)self ventTypesValue] setOption:1 on:window];

  [(CAFVentTypesCharacteristic *)self setVentTypesValue:v4];
}

- (BOOL)hasUpper
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:2];
}

- (void)setHasUpper:(BOOL)upper
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFVentTypesCharacteristic *)self ventTypesValue] setOption:2 on:upper];

  [(CAFVentTypesCharacteristic *)self setVentTypesValue:v4];
}

- (BOOL)hasLower
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:4];
}

- (void)setHasLower:(BOOL)lower
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFVentTypesCharacteristic *)self ventTypesValue] setOption:4 on:lower];

  [(CAFVentTypesCharacteristic *)self setVentTypesValue:v4];
}

- (BOOL)hasNeck
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:8];
}

- (void)setHasNeck:(BOOL)neck
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFVentTypesCharacteristic *)self ventTypesValue] setOption:8 on:neck];

  [(CAFVentTypesCharacteristic *)self setVentTypesValue:v4];
}

- (BOOL)hasMiddle
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:16];
}

- (void)setHasMiddle:(BOOL)middle
{
  v4 = [CAFBitMaskUtilities bitmask:[(CAFVentTypesCharacteristic *)self ventTypesValue] setOption:16 on:middle];

  [(CAFVentTypesCharacteristic *)self setVentTypesValue:v4];
}

- (id)formattedValue
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return NSStringFromVentTypes(ventTypesValue);
}

@end