@interface _TSF_TSDgPTPLocalClockPort
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- (BOOL)_hasLocalClockSourceFromNTP;
- (BOOL)_hasLocalFrequencyStabilityLower;
- (BOOL)_hasLocalFrequencyStabilityUpper;
- (BOOL)_hasLocalFrequencyToleranceLower;
- (BOOL)_hasLocalFrequencyToleranceUpper;
- (BOOL)_hasNtpAnchorOffsetNsec;
- (BOOL)_localClockSourceFromNTP;
- (_TSF_TSDgPTPLocalClockPort)initWithService:(id)service pid:(int)pid;
- (int)_localFrequencyStabilityLower;
- (int)_localFrequencyStabilityUpper;
- (int)_localFrequencyToleranceLower;
- (int)_localFrequencyToleranceUpper;
- (int64_t)_ntpAnchorOffsetNsec;
- (unsigned)_localOscillatorType;
@end

@implementation _TSF_TSDgPTPLocalClockPort

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v3;
}

- (_TSF_TSDgPTPLocalClockPort)initWithService:(id)service pid:(int)pid
{
  v7.receiver = self;
  v7.super_class = _TSF_TSDgPTPLocalClockPort;
  v4 = [(_TSF_TSDgPTPPort *)&v7 initWithService:service pid:*&pid];
  v5 = v4;
  if (v4)
  {
    v4->_localOscillatorType = [(_TSF_TSDgPTPLocalClockPort *)v4 _localOscillatorType];
    v5->_hasLocalFrequencyToleranceLower = [(_TSF_TSDgPTPLocalClockPort *)v5 _hasLocalFrequencyToleranceLower];
    v5->_localFrequencyToleranceLower = [(_TSF_TSDgPTPLocalClockPort *)v5 _localFrequencyToleranceLower];
    v5->_hasLocalFrequencyToleranceUpper = [(_TSF_TSDgPTPLocalClockPort *)v5 _hasLocalFrequencyToleranceUpper];
    v5->_localFrequencyToleranceUpper = [(_TSF_TSDgPTPLocalClockPort *)v5 _localFrequencyToleranceUpper];
    v5->_hasLocalFrequencyStabilityLower = [(_TSF_TSDgPTPLocalClockPort *)v5 _hasLocalFrequencyStabilityLower];
    v5->_localFrequencyStabilityLower = [(_TSF_TSDgPTPLocalClockPort *)v5 _localFrequencyStabilityLower];
    v5->_hasLocalFrequencyStabilityUpper = [(_TSF_TSDgPTPLocalClockPort *)v5 _hasLocalFrequencyStabilityUpper];
    v5->_localFrequencyStabilityUpper = [(_TSF_TSDgPTPLocalClockPort *)v5 _localFrequencyStabilityUpper];
    v5->_hasNtpAnchorOffsetNsec = [(_TSF_TSDgPTPLocalClockPort *)v5 _hasNtpAnchorOffsetNsec];
    v5->_ntpAnchorOffsetNsec = [(_TSF_TSDgPTPLocalClockPort *)v5 _ntpAnchorOffsetNsec];
    v5->_hasLocalClockSourceFromNTP = [(_TSF_TSDgPTPLocalClockPort *)v5 _hasLocalClockSourceFromNTP];
    v5->_localClockSourceFromNTP = [(_TSF_TSDgPTPLocalClockPort *)v5 _localClockSourceFromNTP];
  }

  return v5;
}

- (unsigned)_localOscillatorType
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (BOOL)_hasLocalFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasNtpAnchorOffsetNsec
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3 != 0;
}

- (int64_t)_ntpAnchorOffsetNsec
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    longLongValue = [v3 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (BOOL)_hasLocalClockSourceFromNTP
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3 != 0;
}

- (BOOL)_localClockSourceFromNTP
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)diagnosticInfoForService:(id)service
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____TSF_TSDgPTPLocalClockPort;
  v3 = objc_msgSendSuper2(&v6, sel_diagnosticInfoForService_, service);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [v3 setObject:? forKeyedSubscript:?];

  return v3;
}

@end