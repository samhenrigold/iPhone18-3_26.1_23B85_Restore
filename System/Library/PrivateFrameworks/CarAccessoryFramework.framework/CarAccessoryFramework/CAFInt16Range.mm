@interface CAFInt16Range
- (BOOL)valueIsInRange:(signed __int16)range;
- (signed)limitedValueForValue:(signed __int16)value;
- (signed)maximumValue;
- (signed)minimumValue;
- (signed)stepValue;
- (signed)valueRoundedToNearestStepValue:(signed __int16)value;
@end

@implementation CAFInt16Range

- (signed)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  shortValue = [minimum shortValue];

  return shortValue;
}

- (signed)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  shortValue = [maximum shortValue];

  return shortValue;
}

- (signed)stepValue
{
  step = [(CAFRange *)self step];
  shortValue = [step shortValue];

  return shortValue;
}

- (BOOL)valueIsInRange:(signed __int16)range
{
  v4 = [MEMORY[0x277CCABB0] numberWithShort:range];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (signed)valueRoundedToNearestStepValue:(signed __int16)value
{
  valueCopy = value;
  if ([(CAFInt16Range *)self stepValue])
  {
    valueCopy -= [(CAFInt16Range *)self minimumValue];
    v5 = valueCopy / [(CAFInt16Range *)self stepValue];
    LOWORD(valueCopy) = [(CAFInt16Range *)self minimumValue];
    LOWORD(valueCopy) = valueCopy + [(CAFInt16Range *)self stepValue]* v5;
  }

  return valueCopy;
}

- (signed)limitedValueForValue:(signed __int16)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithShort:value];
  v5 = [(CAFRange *)self limitedToRange:v4];
  shortValue = [v5 shortValue];

  return shortValue;
}

@end