@interface CAFArrayCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (NSArray)arrayValue;
- (id)formattedValue;
- (void)setArrayValue:(id)value;
@end

@implementation CAFArrayCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFArrayCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSArray)arrayValue
{
  objc_opt_class();
  value = [(CAFCharacteristic *)self value];
  if (value && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setArrayValue:(id)value
{
  v4 = [value copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
  {
    v4 = MEMORY[0x277CCACA8];
    arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
    v6 = [arrayValue componentsJoinedByString:{@", "}];
    v7 = [v4 stringWithFormat:@"[%@]", v6];
  }

  else
  {
    v7 = @"(null)";
  }

  return v7;
}

+ (id)secondaryCharacteristicFormats
{
  v4[24] = *MEMORY[0x277D85DE8];
  v4[0] = @"0x0000000037000012";
  v4[1] = @"0x0000000050000001";
  v4[2] = @"0x0000000036000012";
  v4[3] = @"0x0000000047000011";
  v4[4] = @"0x0000000030000037";
  v4[5] = @"0x0000000030000018";
  v4[6] = @"0x0000000036000009";
  v4[7] = @"0x0000000036000007";
  v4[8] = @"0x0000000036000062";
  v4[9] = @"0x00000000FF000011";
  v4[10] = @"0x00000000FF00001C";
  v4[11] = @"0x00000000FF00001A";
  v4[12] = @"0x00000000FF000017";
  v4[13] = @"0x00000000FF000018";
  v4[14] = @"0x00000000FF000019";
  v4[15] = @"0x00000000FF000016";
  v4[16] = @"0x00000000FF00001D";
  v4[17] = @"0x00000000FF00001B";
  v4[18] = @"0x00000000FF000013";
  v4[19] = @"0x00000000FF000014";
  v4[20] = @"0x00000000FF000015";
  v4[21] = @"0x00000000FF000012";
  v4[22] = @"0x0000000047000004";
  v4[23] = @"0x0000000031000025";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:24];

  return v2;
}

@end