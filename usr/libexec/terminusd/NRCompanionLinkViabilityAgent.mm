@interface NRCompanionLinkViabilityAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)options;
- (id)description;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NRCompanionLinkViabilityAgent

- (void)unassertAgentWithOptions:(id)options
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A438;
  block[3] = &unk_1001FD3C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)assertAgentWithOptions:(id)options
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A570;
  block[3] = &unk_1001FD3C8;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  agentUUID = [(NRCompanionLinkViabilityAgent *)self agentUUID];
  uUIDString = [agentUUID UUIDString];
  [v3 appendFormat:@"agent-uuid: %@", uUIDString];

  v6 = "";
  if (self && self->_isRegistered)
  {
    v6 = ", R";
  }

  [v3 appendFormat:@"%s", v6];
  v7 = [[NSString alloc] initWithFormat:@"[%@]", v3];

  return v7;
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
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Dealloc: %@", ", "[NRCompanionLinkViabilityAgent dealloc]"", 65, self);
  }

  if (self)
  {
    if (self->_isRegistered)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = self->_nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 17, "Agent dealloc'd while registered: %@", self);
      }
    }
  }

  v12.receiver = self;
  v12.super_class = NRCompanionLinkViabilityAgent;
  [(NRCompanionLinkViabilityAgent *)&v12 dealloc];
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "CmpLnkViability"];

  return v2;
}

@end