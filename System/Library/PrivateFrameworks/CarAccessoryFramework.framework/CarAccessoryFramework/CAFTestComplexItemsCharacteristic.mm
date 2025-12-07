@interface CAFTestComplexItemsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexItems)testComplexItemsValue;
- (id)formattedValue;
- (void)setTestComplexItemsValue:(id)value;
@end

@implementation CAFTestComplexItemsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexItems)testComplexItemsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexItems testComplexItemsWithArray:arrayValue];

  return v3;
}

- (void)setTestComplexItemsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  testComplexItemsValue = [(CAFTestComplexItemsCharacteristic *)self testComplexItemsValue];
  formattedValue = [testComplexItemsValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"0x00000000FF000022";
  v4[1] = @"0x00000000FF000020";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end