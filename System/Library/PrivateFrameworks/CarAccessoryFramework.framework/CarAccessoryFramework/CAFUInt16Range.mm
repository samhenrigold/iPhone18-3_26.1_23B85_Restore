@interface CAFUInt16Range
- (BOOL)valueIsInRange:(unsigned __int16)range;
- (unsigned)limitedValueForValue:(unsigned __int16)value;
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned __int16)value;
@end

@implementation CAFUInt16Range

- (unsigned)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedShortValue = [minimum unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedShortValue = [maximum unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)stepValue
{
  step = [(CAFRange *)self step];
  unsignedShortValue = [step unsignedShortValue];

  return unsignedShortValue;
}

- (BOOL)valueIsInRange:(unsigned __int16)range
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:range];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned __int16)value
{
  valueCopy = value;
  if ([(CAFUInt16Range *)self stepValue])
  {
    valueCopy -= [(CAFUInt16Range *)self minimumValue];
    v5 = valueCopy / [(CAFUInt16Range *)self stepValue];
    LOWORD(valueCopy) = [(CAFUInt16Range *)self minimumValue];
    LOWORD(valueCopy) = valueCopy + [(CAFUInt16Range *)self stepValue]* v5;
  }

  return valueCopy;
}

- (unsigned)limitedValueForValue:(unsigned __int16)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:value];
  v5 = [(CAFRange *)self limitedToRange:v4];
  unsignedShortValue = [v5 unsignedShortValue];

  return unsignedShortValue;
}

@end