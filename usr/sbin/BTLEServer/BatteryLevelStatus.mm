@interface BatteryLevelStatus
- (BatteryLevelStatus)initWithData:(id)data;
- (id)description;
@end

@implementation BatteryLevelStatus

- (BatteryLevelStatus)initWithData:(id)data
{
  dataCopy = data;
  if (!self)
  {
    v17.receiver = 0;
    v17.super_class = BatteryLevelStatus;
    self = [(BatteryLevelStatus *)&v17 init];
  }

  bytes = [dataCopy bytes];
  if (!bytes)
  {
    sub_1000711C4(dataCopy, &v18);
LABEL_18:
    selfCopy = v18;
    goto LABEL_15;
  }

  v6 = bytes;
  v7 = [dataCopy length];
  if (v7 <= 2)
  {
    sub_100071100(dataCopy, v6, &v18);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = (v6 + 3);
  self->_statusFlags = *v6;
  v10 = [[BatteryLevelStatusPowerState alloc] initWithPtr:v6 + 1];
  powerState = self->_powerState;
  self->_powerState = v10;

  statusFlags = self->_statusFlags;
  if (statusFlags)
  {
    if (v8 <= 4)
    {
      goto LABEL_14;
    }

    self->_identifier = *(v6 + 3);
    v9 = (v6 + 5);
  }

  v13 = v6 + v8;
  if ((statusFlags & 2) == 0)
  {
LABEL_11:
    if ((statusFlags & 4) != 0 && (v13 - v9) > 0)
    {
      self->_additionalFlags = self->_additionalFlags & 0xFC | (2 * ((*v9 & 3) != 0)) | ((*v9 & 4) != 0);
    }

    goto LABEL_14;
  }

  if ((v13 - v9) > 0)
  {
    v14 = *v9++;
    self->_batteryLevel = v14;
    goto LABEL_11;
  }

LABEL_14:
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)description
{
  v16 = 0;
  NSAppendPrintF_safe(&v16, "BatteryLevelStatus %@", self->_powerState);
  v3 = v16;
  v15 = v3;
  v4 = CUPrintFlags32();
  NSAppendPrintF_safe(&v15, ", SF %@", v4);
  v5 = v15;

  v14 = v5;
  NSAppendPrintF_safe(&v14, ", ID 0x%04X", self->_identifier);
  v6 = v14;

  v13 = v6;
  NSAppendPrintF_safe(&v13, ", Level %u%%", self->_batteryLevel);
  v7 = v13;

  v12 = v7;
  v8 = CUPrintFlags32();
  NSAppendPrintF_safe(&v12, ", AdSt %@", v8);
  v9 = v12;
  v10 = v12;

  return v9;
}

@end