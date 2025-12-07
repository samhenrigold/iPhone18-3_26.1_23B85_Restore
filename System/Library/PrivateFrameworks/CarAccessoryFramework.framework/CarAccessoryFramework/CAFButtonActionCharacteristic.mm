@interface CAFButtonActionCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFButtonActionCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFButtonActionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  buttonActionValue = [(CAFButtonActionCharacteristic *)self buttonActionValue];

  return NSStringFromButtonAction(buttonActionValue);
}

+ (id)secondaryCharacteristicFormats
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"0x0000000036000010";
  v4[1] = @"0x00000000FF00000E";
  v4[2] = @"0x000000003700000D";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end