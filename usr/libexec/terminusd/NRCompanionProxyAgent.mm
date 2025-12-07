@interface NRCompanionProxyAgent
+ (id)agentDomain;
+ (id)agentType;
- (id)copyAgentData;
- (void)dealloc;
@end

@implementation NRCompanionProxyAgent

- (id)copyAgentData
{
  if (self)
  {
    generation = self->_generation;
  }

  else
  {
    generation = 0;
  }

  v4 = generation;
  return [[NSData alloc] initWithBytes:&v4 length:8];
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v6 = nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    agentDescription = [(NRCompanionProxyAgent *)self agentDescription];

    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Dealloc: %@", ", "[NRCompanionProxyAgent dealloc]"", 82, agentDescription);
  }

  if (self)
  {
    if (self->_isRegistered)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 17, "agent dealloc'd while being registered");
      }
    }
  }

  sub_100070270(self);
  v12.receiver = self;
  v12.super_class = NRCompanionProxyAgent;
  [(NRCompanionProxyAgent *)&v12 dealloc];
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CompanionProxy"];

  return v2;
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

@end