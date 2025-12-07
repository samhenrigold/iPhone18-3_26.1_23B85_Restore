@interface CAFUInt8Range
- (BOOL)valueIsInRange:(unsigned __int8)range;
- (unsigned)limitedValueForValue:(unsigned __int8)value;
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned __int8)value;
@end

@implementation CAFUInt8Range

- (unsigned)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedCharValue = [minimum unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedCharValue = [maximum unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)stepValue
{
  step = [(CAFRange *)self step];
  unsignedCharValue = [step unsignedCharValue];

  return unsignedCharValue;
}

- (BOOL)valueIsInRange:(unsigned __int8)range
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:range];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned __int8)value
{
  valueCopy = value;
  if ([(CAFUInt8Range *)self stepValue])
  {
    valueCopy -= [(CAFUInt8Range *)self minimumValue];
    v5 = valueCopy / [(CAFUInt8Range *)self stepValue];
    LOBYTE(valueCopy) = [(CAFUInt8Range *)self minimumValue];
    LOBYTE(valueCopy) = valueCopy + [(CAFUInt8Range *)self stepValue]* v5;
  }

  return valueCopy;
}

- (unsigned)limitedValueForValue:(unsigned __int8)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:value];
  v5 = [(CAFRange *)self limitedToRange:v4];
  unsignedCharValue = [v5 unsignedCharValue];

  return unsignedCharValue;
}

@end