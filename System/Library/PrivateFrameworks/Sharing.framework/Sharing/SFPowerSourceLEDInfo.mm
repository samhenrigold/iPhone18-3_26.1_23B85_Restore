@interface SFPowerSourceLEDInfo
- (BOOL)isEqual:(id)equal;
- (SFPowerSourceLEDInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPowerSourceLEDInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  LEDState = self->_LEDState;
  v7 = coderCopy;
  if (LEDState)
  {
    [coderCopy encodeInteger:LEDState forKey:@"state"];
    coderCopy = v7;
  }

  LEDColor = self->_LEDColor;
  if (LEDColor)
  {
    [v7 encodeInteger:LEDColor forKey:@"color"];
    coderCopy = v7;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    LEDState = self->_LEDState;
    if (LEDState == [v5 LEDState])
    {
      LEDColor = self->_LEDColor;
      v8 = LEDColor == [v5 LEDColor];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v14 = 0;
  NSAppendPrintF(&v14, "SFPowerSourceLEDInfo %{ptr}", self);
  v3 = v14;
  v13 = v3;
  LEDState = self->_LEDState;
  if (LEDState > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788D9E0[LEDState];
  }

  NSAppendPrintF(&v13, ", St %d (%s)", self->_LEDState, v5);
  v6 = v13;

  v12 = v6;
  LEDColor = self->_LEDColor;
  if (LEDColor > 4)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1E788D9F8[LEDColor];
  }

  NSAppendPrintF(&v12, ", Cl %d (%s)", self->_LEDColor, v8);
  v9 = v12;
  v10 = v12;

  return v9;
}

- (SFPowerSourceLEDInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SFPowerSourceLEDInfo;
  v5 = [(SFPowerSourceLEDInfo *)&v16 init];
  v9 = v5;
  if (v5)
  {
    v17 = 0;
    v10 = OUTLINED_FUNCTION_0_10(v5, @"state", v6, v7, v8);
    if (v10)
    {
      v9->_LEDState = v17;
    }

    v17 = 0;
    if (OUTLINED_FUNCTION_0_10(v10, @"color", v11, v12, v13))
    {
      v9->_LEDColor = v17;
    }

    v14 = v9;
  }

  return v9;
}

@end