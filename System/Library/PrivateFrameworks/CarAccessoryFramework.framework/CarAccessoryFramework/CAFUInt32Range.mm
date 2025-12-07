@interface CAFUInt32Range
- (BOOL)valueIsInRange:(unsigned int)range;
- (unsigned)limitedValueForValue:(unsigned int)value;
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned int)value;
@end

@implementation CAFUInt32Range

- (unsigned)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedIntValue = [minimum unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedIntValue = [maximum unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)stepValue
{
  step = [(CAFRange *)self step];
  unsignedIntValue = [step unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)valueIsInRange:(unsigned int)range
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&range];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned int)value
{
  if ([(CAFUInt32Range *)self stepValue])
  {
    v5 = value - [(CAFUInt32Range *)self minimumValue];
    v6 = v5 / [(CAFUInt32Range *)self stepValue];
    minimumValue = [(CAFUInt32Range *)self minimumValue];
    return minimumValue + [(CAFUInt32Range *)self stepValue]* v6;
  }

  return value;
}

- (unsigned)limitedValueForValue:(unsigned int)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&value];
  v5 = [(CAFRange *)self limitedToRange:v4];
  unsignedIntValue = [v5 unsignedIntValue];

  return unsignedIntValue;
}

@end