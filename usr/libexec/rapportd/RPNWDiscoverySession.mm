@interface RPNWDiscoverySession
- (RPNWDiscoverySession)init;
- (id)description;
- (void)addMappingForDevice:(id)device endpointID:(id)d;
- (void)dealloc;
- (void)removeAllDevices;
- (void)removeDevice:(id)device;
- (void)startDiscovery:(unsigned int)discovery controlFlags:(unint64_t)flags deviceFilter:(id)filter;
- (void)stopDiscovery;
- (void)updateClientBrowseResult;
- (void)updateMappingForDevice:(id)device;
@end

@implementation RPNWDiscoverySession

- (void)updateClientBrowseResult
{
  browseResponse = self->_browseResponse;
  browseClient = self->_browseClient;
  browseToken = [(RPNWAgentClient *)self->_browseAgentClient browseToken];
  [RPNWEndpoint updateClientBrowseResult:browseClient browseResponse:browseResponse token:browseToken agentUUID:self->_agentUUID agentClientID:self->_agentClientID agentClientPID:self->_pid applicationService:self->_applicationService discoverySessionID:self->_discoverySessionID predicate:self->_predicate];
}

- (RPNWDiscoverySession)init
{
  v7.receiver = self;
  v7.super_class = RPNWDiscoverySession;
  v2 = [(RPNWDiscoverySession *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    discoverySessionID = v2->_discoverySessionID;
    v2->_discoverySessionID = v3;

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWDiscoverySession;
  [(RPNWDiscoverySession *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"  RPNWDiscoverySession[%p] id=%@\n", self, self->_discoverySessionID];
  v4 = [RPNWEndpoint listEndpointsForDiscoverySession:self->_discoverySessionID];
  [v3 appendString:v4];

  return v3;
}

- (void)addMappingForDevice:(id)device endpointID:(id)d
{
  if ([RPNWEndpoint addEndpointMapping:device endpointID:d applicationService:self->_applicationService discoverySessionID:self->_discoverySessionID shouldAutomapListener:1])
  {

    [(RPNWDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)updateMappingForDevice:(id)device
{
  if ([RPNWEndpoint updateEndpointMapping:device discoverySessionID:self->_discoverySessionID])
  {

    [(RPNWDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)removeDevice:(id)device
{
  if ([RPNWEndpoint removeEndpointMapping:device discoverySessionID:self->_discoverySessionID immediate:1])
  {

    [(RPNWDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)removeAllDevices
{
  if (self->_discoverySessionID)
  {
    if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FB0C(&self->super.isa);
    }

    [RPNWEndpoint removeDiscoverySession:self->_discoverySessionID];
    discoverySessionID = self->_discoverySessionID;
    self->_discoverySessionID = 0;
  }
}

- (void)startDiscovery:(unsigned int)discovery controlFlags:(unint64_t)flags deviceFilter:(id)filter
{
  v6 = *&discovery;
  filterCopy = filter;
  v9 = objc_alloc_init(RPNWPeer);
  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = v9;

  [(RPNWPeer *)self->_discoveryClient setRssiThreshold:[(RPNWDiscoverySession *)self rssiThreshold]];
  if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FBB4(&self->super.isa, &self->_discoveryClient, flags);
  }

  v11 = self->_discoveryClient;
  applicationService = self->_applicationService;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100080084;
  v20[3] = &unk_1001AD8E0;
  v20[4] = self;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100080278;
  v19[3] = &unk_1001ACB48;
  v19[4] = self;
  v17[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008043C;
  v18[3] = &unk_1001ACB48;
  v18[4] = self;
  v16[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000805F8;
  v17[3] = &unk_1001ACB48;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000807B4;
  v16[3] = &unk_1001AA970;
  [(RPNWPeer *)v11 startDiscovery:v6 applicationService:applicationService controlFlags:flags deviceFilter:filterCopy startHandler:v20 connectedHandler:v19 updateHandler:v18 lostHandler:v17 invalidationHandler:v16];
  v13 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
  uUIDString = [(NSUUID *)self->_discoverySessionID UUIDString];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000807BC;
  v15[3] = &unk_1001AA970;
  v15[4] = self;
  [v13 registerForNotificationsWithIdentifier:uUIDString changeHandler:v15];
}

- (void)stopDiscovery
{
  if (self->_discoveryClient)
  {
    if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FCB8(&self->super.isa);
    }

    [(RPNWPeer *)self->_discoveryClient stopDiscovery];
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = 0;
  }

  v4 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
  uUIDString = [(NSUUID *)self->_discoverySessionID UUIDString];
  [v4 deregisterForNotificationsWithIdentifier:uUIDString];

  [(RPNWDiscoverySession *)self removeAllDevices];
}

@end