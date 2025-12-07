@interface NRCompanionProxyConfigAgent
+ (id)agentDomain;
+ (id)agentType;
- (id)copyAgentData;
- (void)dealloc;
@end

@implementation NRCompanionProxyConfigAgent

- (id)copyAgentData
{
  if (self)
  {
    self = *(self + 7);
    if (self)
    {
      nw_parameters_create_data();
      return 0;
    }
  }

  return self;
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
    agentDescription = [(NRCompanionProxyConfigAgent *)self agentDescription];

    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Dealloc: %@", ", "[NRCompanionProxyConfigAgent dealloc]"", 361, agentDescription);
  }

  sub_1000707D0(self);
  v9.receiver = self;
  v9.super_class = NRCompanionProxyConfigAgent;
  [(NRCompanionProxyConfigAgent *)&v9 dealloc];
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CompanionProxyConfig"];

  return v2;
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

@end