@interface _TSF_TSDgPTPFDPtPPort
- (BOOL)_measuringPDelay;
- (BOOL)_multipleRemotes;
- (_TSF_TSDgPTPFDPtPPort)initWithService:(id)service pid:(int)pid;
- (char)_localPDelayLogMeanInterval;
- (char)_remotePDelayLogMeanInterval;
- (id)_statistics;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPFDPtPPort

- (_TSF_TSDgPTPFDPtPPort)initWithService:(id)service pid:(int)pid
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPFDPtPPort;
  v4 = [(_TSF_TSDgPTPNetworkPort *)&v9 initWithService:service pid:*&pid];
  v5 = v4;
  if (v4)
  {
    _statistics = [(_TSF_TSDgPTPFDPtPPort *)v4 _statistics];
    statistics = v5->_statistics;
    v5->_statistics = _statistics;

    v5->_localPDelayLogMeanInterval = [(_TSF_TSDgPTPFDPtPPort *)v5 _localPDelayLogMeanInterval];
    v5->_remotePDelayLogMeanInterval = [(_TSF_TSDgPTPFDPtPPort *)v5 _remotePDelayLogMeanInterval];
    v5->_multipleRemotes = [(_TSF_TSDgPTPFDPtPPort *)v5 _multipleRemotes];
    v5->_measuringPDelay = [(_TSF_TSDgPTPFDPtPPort *)v5 _measuringPDelay];
  }

  return v5;
}

- (void)updateProperties
{
  v16.receiver = self;
  v16.super_class = _TSF_TSDgPTPFDPtPPort;
  [(_TSF_TSDgPTPNetworkPort *)&v16 updateProperties];
  _statistics = [(_TSF_TSDgPTPFDPtPPort *)self _statistics];
  _localPDelayLogMeanInterval = [(_TSF_TSDgPTPFDPtPPort *)self _localPDelayLogMeanInterval];
  _remotePDelayLogMeanInterval = [(_TSF_TSDgPTPFDPtPPort *)self _remotePDelayLogMeanInterval];
  _multipleRemotes = [(_TSF_TSDgPTPFDPtPPort *)self _multipleRemotes];
  _measuringPDelay = [(_TSF_TSDgPTPFDPtPPort *)self _measuringPDelay];
  propertyUpdateQueue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___TSF_TSDgPTPFDPtPPort_updateProperties__block_invoke;
  block[3] = &unk_279DBD8E8;
  v12 = _localPDelayLogMeanInterval;
  v13 = _remotePDelayLogMeanInterval;
  v14 = _multipleRemotes;
  v15 = _measuringPDelay;
  block[4] = self;
  v11 = _statistics;
  v9 = _statistics;
  dispatch_async(propertyUpdateQueue, block);
}

- (id)_statistics
{
  v2 = [[_TSF_TSDgPTPPortStatistics alloc] initWithPort:?];

  return v2;
}

- (char)_localPDelayLogMeanInterval
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (char)_remotePDelayLogMeanInterval
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (BOOL)_multipleRemotes
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

- (BOOL)_measuringPDelay
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

@end