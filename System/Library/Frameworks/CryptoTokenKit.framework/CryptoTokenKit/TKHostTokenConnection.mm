@interface TKHostTokenConnection
- (NSString)slotName;
- (NSXPCListenerEndpoint)endpoint;
- (TKHostTokenConnection)initWithDriver:(id)driver slot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage registry:(id)registry error:(id *)error;
- (TKHostTokenConnection)initWithToken:(id)token;
- (void)dealloc;
@end

@implementation TKHostTokenConnection

- (TKHostTokenConnection)initWithToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = TKHostTokenConnection;
  v6 = [(TKHostTokenConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
    [tokenCopy setConnectionCount:{objc_msgSend(tokenCopy, "connectionCount") + 1}];
  }

  return v7;
}

- (TKHostTokenConnection)initWithDriver:(id)driver slot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage registry:(id)registry error:(id *)error
{
  usageCopy = usage;
  driverCopy = driver;
  slotCopy = slot;
  dCopy = d;
  registryCopy = registry;
  v36 = 0;
  v18 = [driverCopy acquireTokenWithSlot:slotCopy AID:dCopy proprietaryCardUsage:usageCopy tokenID:&v36 error:error];
  v19 = v36;
  v33 = registryCopy;
  if (v18)
  {
    v20 = [registryCopy createTokenWithTokenID:v19 persistent:0];
    objc_sync_enter(v20);
    v32 = [(TKHostTokenConnection *)self initWithToken:v20];
    if (v32)
    {
      [v20 setEndpoint:{v18, v32, registryCopy}];
      v21 = [[TKSmartCardSlot alloc] initWithEndpoint:slotCopy error:error];
      name = [v21 name];
      [v20 setSlotName:name];

      [v20 setDriver:driverCopy];
      registry = [v20 registry];
      delegate = [registry delegate];

      if (delegate)
      {
        registry2 = [v20 registry];
        delegate2 = [registry2 delegate];
        registry3 = [v20 registry];
        tokenID = [v20 tokenID];
        [delegate2 hostTokenRegistry:registry3 addedToken:tokenID persistent:{objc_msgSend(v20, "persistent")}];
      }

      else
      {
        queue = [v20 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001678;
        block[3] = &unk_100038710;
        v35 = v20;
        dispatch_async(queue, block);

        registry2 = v35;
      }
    }

    objc_sync_exit(v20);

    self = v32;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSXPCListenerEndpoint)endpoint
{
  token = [(TKHostTokenConnection *)self token];
  endpoint = [token endpoint];

  return endpoint;
}

- (NSString)slotName
{
  token = [(TKHostTokenConnection *)self token];
  slotName = [token slotName];

  return slotName;
}

- (void)dealloc
{
  token = [(TKHostTokenConnection *)self token];
  objc_sync_enter(token);
  v4 = [token connectionCount] - 1;
  [token setConnectionCount:v4];
  if (!v4)
  {
    [token setEndpoint:0];
    registry = [token registry];

    if (registry)
    {
      driver = [token driver];
      tokenID = [token tokenID];
      [driver releaseTokenWithTokenID:tokenID];
    }

    [token setDriver:0];
  }

  objc_sync_exit(token);

  v8.receiver = self;
  v8.super_class = TKHostTokenConnection;
  [(TKHostTokenConnection *)&v8 dealloc];
}

@end