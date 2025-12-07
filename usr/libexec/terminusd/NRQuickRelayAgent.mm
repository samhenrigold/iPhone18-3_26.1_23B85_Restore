@interface NRQuickRelayAgent
+ (id)agentDomain;
+ (id)agentType;
- (BOOL)assertAgentWithOptions:(id)options;
- (id)copyAgentData;
- (id)description;
- (void)dealloc;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NRQuickRelayAgent

- (void)unassertAgentWithOptions:(id)options
{
  optionsCopy = options;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E818;
  v7[3] = &unk_1001FD060;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(queue, v7);
}

- (BOOL)assertAgentWithOptions:(id)options
{
  optionsCopy = options;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003ED0C;
  v8[3] = &unk_1001FD060;
  v8[4] = self;
  v9 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(queue, v8);

  return 1;
}

- (id)copyAgentData
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v5, 1, "%s%.30s:%-4d Updating agent data - state: %u", ", "[NRQuickRelayAgent copyAgentData]"", 106, self->_state.state);
  }

  v6 = [NSData alloc];

  return [v6 initWithBytes:&self->_state length:1];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  agentUUID = [(NRQuickRelayAgent *)self agentUUID];
  uUIDString = [agentUUID UUIDString];
  [v3 appendFormat:@"agent-uuid: %@", uUIDString];

  if (self)
  {
    [v3 appendFormat:@", %u", self->_assertCount];
    if (self->_isRegistered)
    {
      v6 = ", R";
    }

    else
    {
      v6 = "";
    }
  }

  else
  {
    [v3 appendFormat:@", %u", 0];
    v6 = "";
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
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Dealloc: %@", ", "[NRQuickRelayAgent dealloc]"", 74, self);
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
  v12.super_class = NRQuickRelayAgent;
  [(NRQuickRelayAgent *)&v12 dealloc];
}

+ (id)agentDomain
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "com.apple.networkrelay"];

  return v2;
}

+ (id)agentType
{
  v2 = [[NSString alloc] initWithFormat:@"%s", "QuickRelayAgent"];

  return v2;
}

@end