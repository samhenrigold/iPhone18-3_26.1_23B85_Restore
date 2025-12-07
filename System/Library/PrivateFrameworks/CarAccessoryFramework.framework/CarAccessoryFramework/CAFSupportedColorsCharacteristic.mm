@interface CAFSupportedColorsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSupportedColors)supportedColorsValue;
- (id)formattedValue;
- (void)setSupportedColorsValue:(id)value;
@end

@implementation CAFSupportedColorsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSupportedColorsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSupportedColors)supportedColorsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSupportedColors supportedColorsWithArray:arrayValue];

  return v3;
}

- (void)setSupportedColorsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  supportedColorsValue = [(CAFSupportedColorsCharacteristic *)self supportedColorsValue];
  formattedValue = [supportedColorsValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"0x0000000052000003";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end