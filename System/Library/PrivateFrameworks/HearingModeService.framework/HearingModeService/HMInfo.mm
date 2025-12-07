@interface HMInfo
- (HMInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setConstantsWith:(unsigned int)with;
@end

@implementation HMInfo

- (HMInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMInfo *)self init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transparencyModeLowerBound = self->_transparencyModeLowerBound;
  v18 = coderCopy;
  if (transparencyModeLowerBound)
  {
    [coderCopy encodeObject:transparencyModeLowerBound forKey:@"tLwr"];
    coderCopy = v18;
  }

  transparencyModeUpperBound = self->_transparencyModeUpperBound;
  if (transparencyModeUpperBound)
  {
    [v18 encodeObject:transparencyModeUpperBound forKey:@"tUpr"];
    coderCopy = v18;
  }

  transparencyModeHours = self->_transparencyModeHours;
  if (transparencyModeHours)
  {
    [v18 encodeObject:transparencyModeHours forKey:@"tHrs"];
    coderCopy = v18;
  }

  transparencyModeDays = self->_transparencyModeDays;
  if (transparencyModeDays)
  {
    [v18 encodeObject:transparencyModeDays forKey:@"tDay"];
    coderCopy = v18;
  }

  adaptiveModeLowerBound = self->_adaptiveModeLowerBound;
  if (adaptiveModeLowerBound)
  {
    [v18 encodeObject:adaptiveModeLowerBound forKey:@"aLwr"];
    coderCopy = v18;
  }

  adaptiveModeUpperBound = self->_adaptiveModeUpperBound;
  if (adaptiveModeUpperBound)
  {
    [v18 encodeObject:adaptiveModeUpperBound forKey:@"aUpr"];
    coderCopy = v18;
  }

  adaptiveModeHours = self->_adaptiveModeHours;
  if (adaptiveModeHours)
  {
    [v18 encodeObject:adaptiveModeHours forKey:@"aHrs"];
    coderCopy = v18;
  }

  adaptiveModeDays = self->_adaptiveModeDays;
  if (adaptiveModeDays)
  {
    [v18 encodeObject:adaptiveModeDays forKey:@"aDay"];
    coderCopy = v18;
  }

  noiseCancellationModeLowerBound = self->_noiseCancellationModeLowerBound;
  if (noiseCancellationModeLowerBound)
  {
    [v18 encodeObject:noiseCancellationModeLowerBound forKey:@"nLwr"];
    coderCopy = v18;
  }

  noiseCancellationModeUpperBound = self->_noiseCancellationModeUpperBound;
  if (noiseCancellationModeUpperBound)
  {
    [v18 encodeObject:noiseCancellationModeUpperBound forKey:@"nUpr"];
    coderCopy = v18;
  }

  noiseCancellationModeHours = self->_noiseCancellationModeHours;
  if (noiseCancellationModeHours)
  {
    [v18 encodeObject:noiseCancellationModeHours forKey:@"nHrs"];
    coderCopy = v18;
  }

  noiseCancellationModeDays = self->_noiseCancellationModeDays;
  if (noiseCancellationModeDays)
  {
    [v18 encodeObject:noiseCancellationModeDays forKey:@"nDay"];
    coderCopy = v18;
  }

  noiseReductionRating = self->_noiseReductionRating;
  if (noiseReductionRating)
  {
    [v18 encodeObject:noiseReductionRating forKey:@"nRR"];
    coderCopy = v18;
  }
}

- (void)setConstantsWith:(unsigned int)with
{
  selfCopy = self;
  if (gLogCategory_HMDeviceRecord <= 50)
  {
    if (gLogCategory_HMDeviceRecord != -1 || (self = _LogCategory_Initialize(), self))
    {
      self = [HMInfo setConstantsWith:with];
    }
  }

  if (with - 8231 < 2)
  {
    if (gLogCategory_HMDeviceRecord <= 50)
    {
      if (gLogCategory_HMDeviceRecord != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(HMInfo *)self setConstantsWith:a2, *&with];
      }
    }

    v28 = &unk_286437C08;
    v13 = &unk_286437BF0;
    v5 = &unk_286437BD8;
    v12 = &unk_286437BC0;
    v6 = &unk_286437BA8;
    v7 = &unk_286437B90;
    v8 = &unk_286437B78;
    v9 = &unk_286437B60;
    v10 = &unk_286437B48;
    v11 = &unk_286437B30;
    v14 = &unk_286437B18;
  }

  else if (with == 8212 || with == 8228)
  {
    if (gLogCategory_HMDeviceRecord <= 50)
    {
      if (gLogCategory_HMDeviceRecord != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(HMInfo *)self setConstantsWith:a2, *&with];
      }
    }

    v28 = &unk_286437C80;
    v5 = &unk_286437B90;
    v6 = &unk_286437BA8;
    v7 = &unk_286437C68;
    v8 = &unk_286437B78;
    v9 = &unk_286437B60;
    v10 = &unk_286437C50;
    v11 = &unk_286437C38;
    v12 = &unk_286437B78;
    v13 = &unk_286437BA8;
    v14 = &unk_286437C20;
  }

  else
  {
    if (gLogCategory_HMDeviceRecord <= 90 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
    {
      [HMInfo setConstantsWith:];
    }

    v14 = &unk_286437C98;
    v11 = &unk_286437C98;
    v10 = &unk_286437C98;
    v9 = &unk_286437C98;
    v8 = &unk_286437C98;
    v7 = &unk_286437C98;
    v6 = &unk_286437C98;
    v12 = &unk_286437C98;
    v5 = &unk_286437C98;
    v13 = &unk_286437C98;
    v28 = &unk_286437CB0;
  }

  transparencyModeLowerBound = selfCopy->_transparencyModeLowerBound;
  selfCopy->_transparencyModeLowerBound = v14;

  transparencyModeUpperBound = selfCopy->_transparencyModeUpperBound;
  selfCopy->_transparencyModeUpperBound = v11;

  transparencyModeHours = selfCopy->_transparencyModeHours;
  selfCopy->_transparencyModeHours = v10;

  transparencyModeDays = selfCopy->_transparencyModeDays;
  selfCopy->_transparencyModeDays = v9;

  adaptiveModeLowerBound = selfCopy->_adaptiveModeLowerBound;
  selfCopy->_adaptiveModeLowerBound = v8;

  adaptiveModeUpperBound = selfCopy->_adaptiveModeUpperBound;
  selfCopy->_adaptiveModeUpperBound = v7;

  adaptiveModeHours = selfCopy->_adaptiveModeHours;
  selfCopy->_adaptiveModeHours = v6;

  adaptiveModeDays = selfCopy->_adaptiveModeDays;
  selfCopy->_adaptiveModeDays = v9;

  noiseCancellationModeLowerBound = selfCopy->_noiseCancellationModeLowerBound;
  selfCopy->_noiseCancellationModeLowerBound = v12;

  noiseCancellationModeUpperBound = selfCopy->_noiseCancellationModeUpperBound;
  selfCopy->_noiseCancellationModeUpperBound = v5;

  noiseCancellationModeHours = selfCopy->_noiseCancellationModeHours;
  selfCopy->_noiseCancellationModeHours = v13;

  noiseCancellationModeDays = selfCopy->_noiseCancellationModeDays;
  selfCopy->_noiseCancellationModeDays = v9;

  noiseReductionRating = selfCopy->_noiseReductionRating;
  selfCopy->_noiseReductionRating = v28;
}

@end