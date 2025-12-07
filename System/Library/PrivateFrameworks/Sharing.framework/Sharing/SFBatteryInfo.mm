@interface SFBatteryInfo
- (SFBatteryInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFBatteryInfo

- (void)encodeWithCoder:(id)coder
{
  batteryLevel = self->_batteryLevel;
  coderCopy = coder;
  [coderCopy encodeDouble:@"batteryLevel" forKey:batteryLevel];
  [coderCopy encodeInteger:self->_batteryState forKey:@"batteryState"];
  [coderCopy encodeInteger:self->_batteryType forKey:@"batteryType"];
}

- (id)description
{
  v2 = self->_batteryType - 1;
  v3 = "?";
  v4 = "?";
  if (v2 <= 3)
  {
    v4 = off_1E788EBB0[v2];
  }

  batteryState = self->_batteryState;
  if (batteryState == 2)
  {
    v3 = "Charging";
  }

  if (batteryState == 1)
  {
    v3 = "Discharging";
  }

  return NSPrintF("< Type %s, State %s, Level %.0f%% >", v4, v3, self->_batteryLevel * 100.0);
}

- (SFBatteryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFBatteryInfo;
  v5 = [(SFBatteryInfo *)&v9 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"batteryLevel"])
    {
      [coderCopy decodeDoubleForKey:@"batteryLevel"];
      v5->_batteryLevel = v6;
    }

    if ([coderCopy containsValueForKey:@"batteryState"])
    {
      v5->_batteryState = [coderCopy decodeIntegerForKey:@"batteryState"];
    }

    if ([coderCopy containsValueForKey:@"batteryType"])
    {
      v5->_batteryType = [coderCopy decodeIntegerForKey:@"batteryType"];
    }

    v7 = v5;
  }

  return v5;
}

@end