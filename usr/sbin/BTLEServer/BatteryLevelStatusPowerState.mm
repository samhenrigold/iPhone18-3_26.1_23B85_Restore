@interface BatteryLevelStatusPowerState
- (BatteryLevelStatusPowerState)initWithPtr:(const char *)ptr;
- (id)description;
@end

@implementation BatteryLevelStatusPowerState

- (BatteryLevelStatusPowerState)initWithPtr:(const char *)ptr
{
  if (!self)
  {
    v6.receiver = 0;
    v6.super_class = BatteryLevelStatusPowerState;
    self = [(BatteryLevelStatusPowerState *)&v6 init];
  }

  v4 = *ptr;
  v5 = *(ptr + 1);
  self->_batteryPresent = v4 & 1;
  self->_externalPowerSourceWired = (v4 >> 1) & 3;
  self->_externalPowerSourceWireless = (v4 >> 3) & 3;
  self->_batteryChargeState = (v4 >> 5) & 3;
  self->_batteryChargeLevel = ((v4 | (v5 << 8)) >> 7) & 3;
  self->_batteryChargeType = (v5 >> 1) & 7;
  self->_chargingFaultReason = self->_chargingFaultReason & 0xF8 | (v5 >> 4) & 7;
  return self;
}

- (id)description
{
  v30 = 0;
  if (self->_batteryPresent)
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  NSAppendPrintF_safe(&v30, "Present %s", v3);
  v4 = v30;
  v29 = v4;
  externalPowerSourceWired = self->_externalPowerSourceWired;
  if (externalPowerSourceWired > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1000BD2E8[externalPowerSourceWired];
  }

  NSAppendPrintF_safe(&v29, ", Wired %s", v6);
  v7 = v29;

  v28 = v7;
  externalPowerSourceWireless = self->_externalPowerSourceWireless;
  if (externalPowerSourceWireless > 2)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1000BD2E8[externalPowerSourceWireless];
  }

  NSAppendPrintF_safe(&v28, ", Wireless %s", v9);
  v10 = v28;

  v27 = v10;
  batteryChargeState = self->_batteryChargeState;
  if (batteryChargeState > 3)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_1000BD300[batteryChargeState];
  }

  NSAppendPrintF_safe(&v27, ", State %s", v12);
  v13 = v27;

  v26 = v13;
  batteryChargeLevel = self->_batteryChargeLevel;
  if (batteryChargeLevel > 3)
  {
    v15 = "?";
  }

  else
  {
    v15 = off_1000BD320[batteryChargeLevel];
  }

  NSAppendPrintF_safe(&v26, ", Level %s", v15);
  v16 = v26;

  v25 = v16;
  batteryChargeType = self->_batteryChargeType;
  if (batteryChargeType > 4)
  {
    v18 = "?";
  }

  else
  {
    v18 = off_1000BD340[batteryChargeType];
  }

  NSAppendPrintF_safe(&v25, ", Type %s", v18);
  v19 = v25;

  v24 = v19;
  v20 = CUPrintFlags32();
  NSAppendPrintF_safe(&v24, ", CFR %@", v20);
  v21 = v24;
  v22 = v24;

  return v21;
}

@end