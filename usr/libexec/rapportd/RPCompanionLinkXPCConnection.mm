@interface RPCompanionLinkXPCConnection
- (BOOL)_checkRSSIThresholdForDevice:(id)device;
- (BOOL)_connectionHasActiveSessions:(id)sessions;
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)reportFoundDevice:(id)device outReason:(id *)reason;
- (RPCompanionLinkXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (id)_findMatchingDevice:(id)device inDeviceDictionary:(id)dictionary;
- (id)_updateOptionsWithProcessInfo:(id)info;
- (id)descriptionWithLevel:(int)level;
- (id)devicesForClient:(id)client;
- (void)_invalidateConnectionInList:(id)list listDescription:(id)description;
- (void)authCompletion:(id)completion;
- (void)companionLinkActivateAssertion:(id)assertion completion:(id)completion;
- (void)companionLinkActivateClient:(id)client completion:(id)completion;
- (void)companionLinkCreateDeviceToEndpointMappingForDeviceID:(id)d completion:(id)completion;
- (void)companionLinkDeregisterEventID:(id)d completion:(id)completion;
- (void)companionLinkDeregisterProfileID:(id)d completion:(id)completion;
- (void)companionLinkDeregisterRequestID:(id)d completion:(id)completion;
- (void)companionLinkRegisterEventID:(id)d options:(id)options completion:(id)completion;
- (void)companionLinkRegisterProfileID:(id)d completion:(id)completion;
- (void)companionLinkRegisterRequestID:(id)d options:(id)options completion:(id)completion;
- (void)companionLinkRemoveLocalDeviceAsContextCollector:(id)collector;
- (void)companionLinkSendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options nwActivityToken:(id)token completion:(id)completion;
- (void)companionLinkSendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options nwActivityToken:(id)token responseHandler:(id)handler;
- (void)companionLinkSetLocalDeviceAsContextCollector:(id)collector;
- (void)companionLinkTriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case completion:(id)completion;
- (void)companionLinkTryPassword:(id)password;
- (void)companionLinkUpdateClient:(id)client;
- (void)connectionInvalidated;
- (void)connectionInvalidatedCore;
- (void)handleDisconnect;
- (void)promptForPasswordType:(int)type flags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)receivedEventID:(id)d event:(id)event options:(id)options;
- (void)receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)reportChangedDevice:(id)device changes:(unsigned int)changes;
- (void)reportLostDevice:(id)device;
- (void)updateErrorFlags:(unint64_t)flags;
- (void)xpcDiscoveryActivate:(id)activate completion:(id)completion;
- (void)xpcDiscoveryUpdate:(id)update;
- (void)xpcServerActivate:(id)activate completion:(id)completion;
- (void)xpcServerUpdate:(id)update;
- (void)xpcSessionActivate:(id)activate completion:(id)completion;
@end

@implementation RPCompanionLinkXPCConnection

- (void)connectionInvalidated
{
  v3 = self->_session;
  if (v3)
  {
    v4 = v3;
    daemon = self->_daemon;
    v6 = [(RPSession *)v3 cnx];
    xpcID = self->_xpcID;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100040114;
    v8[3] = &unk_1001AAA40;
    v8[4] = v4;
    v8[5] = self;
    [(RPCompanionLinkDaemon *)daemon sessionStopSend:v6 session:v4 xpcID:xpcID completion:v8];
  }

  else
  {

    [(RPCompanionLinkXPCConnection *)self connectionInvalidatedCore];
  }
}

- (void)connectionInvalidatedCore
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D018(self);
  }

  if (self->_client)
  {
    [(RPCompanionLinkXPCConnection *)self _invalidateConnectionInList:self->_daemon->_tcpClientConnections listDescription:@"tcp client connections"];
    [(RPCompanionLinkXPCConnection *)self _invalidateConnectionInList:self->_daemon->_tcpOnDemandClientConnections listDescription:@"tcp on-demand client connections"];
    [(RPCompanionLinkXPCConnection *)self _invalidateConnectionInList:self->_daemon->_bleClientConnections listDescription:@"ble client connections"];
    netCnx = self->_netCnx;
    self->_netCnx = 0;

    [(RPCompanionLinkClient *)self->_client invalidate];
    client = self->_client;
    self->_client = 0;
  }

  discoveryClient = self->_discoveryClient;
  if (discoveryClient)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), discoveryClient = self->_discoveryClient, v6))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection connectionInvalidatedCore]", 30, "Invalidate: %@, from %#{pid}\n", discoveryClient, [(NSXPCConnection *)self->_xpcCnx processIdentifier]);
        discoveryClient = self->_discoveryClient;
      }
    }

    [(RPDiscovery *)discoveryClient invalidate];
    v7 = self->_discoveryClient;
    self->_discoveryClient = 0;
  }

  server = self->_server;
  if (server)
  {
    v9 = server;
    [(RPServer *)v9 invalidate];
    activeServers = [(RPCompanionLinkDaemon *)self->_daemon activeServers];
    [activeServers removeObject:v9];

    localDeviceInfo = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
    [localDeviceInfo setServersChangedState:6];

    v12 = self->_server;
    self->_server = 0;

    [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
  }

  session = self->_session;
  if (session)
  {
    v14 = session;
    [(RPSession *)v14 invalidate];
    v15 = self->_session;
    self->_session = 0;
  }

  discoveryTimer = self->_discoveryTimer;
  if (discoveryTimer)
  {
    v17 = discoveryTimer;
    dispatch_source_cancel(v17);
    v18 = self->_discoveryTimer;
    self->_discoveryTimer = 0;
  }

  *&self->_needsCLink = 0;
  if ([(RPConnection *)self->_netCnx clientMode])
  {
    [(RPConnection *)self->_netCnx invalidate];
  }

  v19 = self->_netCnx;
  self->_netCnx = 0;

  registeredEvents = self->_registeredEvents;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100040528;
  v33[3] = &unk_1001ABE70;
  v33[4] = self;
  [(NSMutableDictionary *)registeredEvents enumerateKeysAndObjectsUsingBlock:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self->_registeredProfileIDs;
  v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      v25 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v29 + 1) + 8 * v25);
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100115088(v26);
        }

        [(NSMutableSet *)self->_daemon->_registeredProfileIDs removeObject:v26];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v27 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v23 = v27;
    }

    while (v27);
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  [(NSMutableSet *)self->_registeredProfileIDs removeAllObjects];
  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;

  if (self->_isContextCollector)
  {
    [(RPCompanionLinkXPCConnection *)self companionLinkRemoveLocalDeviceAsContextCollector:&stru_1001ABE90];
  }
}

- (RPCompanionLinkXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v13.receiver = self;
  v13.super_class = RPCompanionLinkXPCConnection;
  v9 = [(RPCompanionLinkXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    v10->_startTicks = mach_absolute_time();
    objc_storeStrong(&v10->_xpcCnx, cnx);
    v11 = v10;
  }

  return v10;
}

- (id)descriptionWithLevel:(int)level
{
  v56 = 0;
  NSAppendPrintF(&v56, "    %#{pid}", [(NSXPCConnection *)self->_xpcCnx processIdentifier]);
  v5 = v56;
  v6 = self->_client;
  clientID = [(RPCompanionLinkClient *)v6 clientID];
  if (clientID)
  {
    v55 = v5;
    NSAppendPrintF(&v55, ", CID 0x%X", clientID);
    v8 = v55;

    v5 = v8;
  }

  server = self->_server;
  if (server)
  {
    v54 = v5;
    v10 = server;
    NSAppendPrintF(&v54, ", %@", v10);
    v11 = v54;

    v5 = v11;
  }

  v12 = [(NSMutableDictionary *)self->_registeredEvents count];
  if (v12)
  {
    v53 = v5;
    NSAppendPrintF(&v53, ", %d event(s)", v12);
    v13 = v53;

    v5 = v13;
  }

  v14 = [(NSMutableDictionary *)self->_registeredRequests count];
  if (v14)
  {
    v52 = v5;
    NSAppendPrintF(&v52, ", %d request(s)", v14);
    v15 = v52;

    v5 = v15;
  }

  v16 = [(NSMutableSet *)self->_registeredProfileIDs count];
  if (v16)
  {
    v51 = v5;
    NSAppendPrintF(&v51, ", %d profile(s)", v16);
    v17 = v51;

    v5 = v17;
  }

  controlFlags = [(RPCompanionLinkClient *)v6 controlFlags];
  if (controlFlags)
  {
    v50 = v5;
    NSAppendPrintF(&v50, ", CF %ll{flags}", controlFlags, &unk_100147BEC);
    v19 = v50;

    v5 = v19;
  }

  if (([(RPCompanionLinkClient *)v6 flags]& 1) != 0)
  {
    v49 = v5;
    NSAppendPrintF(&v49, ", Unauth");
    v20 = v49;

    v5 = v20;
  }

  if (self->_needsCLink)
  {
    v48 = v5;
    NSAppendPrintF(&v48, ", nCL");
    v21 = v48;

    v5 = v21;
  }

  if (self->_needsNearbyActionV2)
  {
    v47 = v5;
    NSAppendPrintF(&v47, ", nAV2");
    v22 = v47;

    v5 = v22;
  }

  label = [(RPConnection *)self->_netCnx label];
  v24 = label;
  if (label)
  {
    v46 = v5;
    NSAppendPrintF(&v46, ", %@", label);
    v25 = v46;

    v5 = v25;
  }

  if (([(RPCompanionLinkClient *)v6 flags]& 0x2000) != 0)
  {
    v45 = v5;
    NSAppendPrintF(&v45, ", HHDevice");
    v26 = v45;

    v5 = v26;
  }

  if (([(RPCompanionLinkClient *)v6 flags]& 0x4000) != 0)
  {
    v44 = v5;
    NSAppendPrintF(&v44, ", NoAPChecks");
    v27 = v44;

    v5 = v27;
  }

  destinationDevice = [(RPCompanionLinkClient *)v6 destinationDevice];
  v29 = destinationDevice;
  if (destinationDevice)
  {
    v43 = v5;
    idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];
    v31 = idsDeviceIdentifier;
    if (idsDeviceIdentifier)
    {
      v32 = 0;
      publicIdentifier = idsDeviceIdentifier;
    }

    else
    {
      identifier = [v29 identifier];
      v3 = identifier;
      if (identifier)
      {
        v32 = 0;
        publicIdentifier = identifier;
      }

      else
      {
        publicIdentifier = [v29 publicIdentifier];
        v32 = 1;
      }
    }

    NSAppendPrintF(&v43, ", device %@", publicIdentifier);
    v35 = v43;

    if (v32)
    {
    }

    if (!v31)
    {
    }

    v5 = v35;
  }

  mach_absolute_time();
  v42 = v5;
  v36 = UpTicksToSeconds();
  NSAppendPrintF(&v42, ", %ll{dur}", v36);
  v37 = v42;

  v41 = v37;
  NSAppendPrintF(&v41, "\n");
  v38 = v41;
  v39 = v41;

  return v38;
}

- (BOOL)_connectionHasActiveSessions:(id)sessions
{
  sessionsCopy = sessions;
  v5 = [(RPCompanionLinkDaemon *)self->_daemon _sessionsActiveOnConnection:sessionsCopy xpcConnection:self];
  if (v5 >= 1)
  {
    client = [(RPConnection *)sessionsCopy client];
    client = self->_client;

    if (client == client)
    {
      if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011501C(sessionsCopy, v5);
      }

      [(RPConnection *)sessionsCopy setClient:0];
      netCnx = self->_netCnx;
      if (netCnx == sessionsCopy)
      {
        self->_netCnx = 0;
      }
    }
  }

  return v5 > 0;
}

- (void)_invalidateConnectionInList:(id)list listDescription:(id)description
{
  listCopy = list;
  descriptionCopy = description;
  dispatchQueue = [(RPCompanionLinkDaemon *)self->_daemon dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000029CC;
  v14 = sub_10000317C;
  v15 = +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040450;
  v9[3] = &unk_1001ABE48;
  v9[4] = self;
  v9[5] = &v10;
  [listCopy enumerateKeysAndObjectsUsingBlock:v9];
  if ([v11[5] count])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection _invalidateConnectionInList:listDescription:]", 30, "Removing connection from %@ with unique ID: %@", descriptionCopy, v11[5]);
    }

    [listCopy removeObjectsForKeys:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.CompanionLink"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115108(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v15 = RPErrorF(4294896128, "Missing entitlement '%@'", v9, v10, v11, v12, v13, v14, @"com.apple.CompanionLink");
    v16 = v15;
    result = 0;
    *error = v15;
    return result;
  }

  return 0;
}

- (id)_updateOptionsWithProcessInfo:(id)info
{
  v4 = [info mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
  [v4 setObject:v5 forKeyedSubscript:@"_rP"];

  v6 = self->_netCnx;
  v7 = v6;
  if (v6 && ([(RPConnection *)v6 controlFlags]& 0x200) != 0 && ([(RPConnection *)v7 containsInUseProcess:[(NSXPCConnection *)self->_xpcCnx processIdentifier]]& 1) == 0)
  {
    [(RPConnection *)v7 addInUseProcess:[(NSXPCConnection *)self->_xpcCnx processIdentifier]];
    v8 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
    [v4 setObject:v8 forKeyedSubscript:@"inUseProcess"];
  }

  v9 = v4;
  return v4;
}

- (void)authCompletion:(id)completion
{
  completionCopy = completion;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115158(completionCopy);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkAuthCompleted:completionCopy];
}

- (void)handleDisconnect
{
  selfCopy = self;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100115198(self, a2, v2);
    }
  }

  remoteObjectProxy = [(NSXPCConnection *)selfCopy->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkHandleDisconnect];
}

- (id)devicesForClient:(id)client
{
  clientCopy = client;
  v5 = objc_alloc_init(NSMutableArray);
  destinationDevice = [clientCopy destinationDevice];

  if (destinationDevice)
  {
    v7 = v5;
  }

  else
  {
    activeDevices = self->_daemon->_activeDevices;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100040CA0;
    v38[3] = &unk_1001ABEB8;
    v9 = clientCopy;
    v39 = v9;
    selfCopy = self;
    v41 = v5;
    [(NSMutableDictionary *)activeDevices enumerateKeysAndObjectsUsingBlock:v38];
    if ([v9 flags])
    {
      unauthDevices = self->_daemon->_unauthDevices;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100040D28;
      v34[3] = &unk_1001ABEB8;
      v35 = v9;
      selfCopy2 = self;
      v37 = v5;
      [(NSMutableDictionary *)unauthDevices enumerateKeysAndObjectsUsingBlock:v34];
    }

    if (([v9 controlFlags] & 0x2104000002) != 0)
    {
      bleDevices = self->_daemon->_bleDevices;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100040DB0;
      v30[3] = &unk_1001ABEB8;
      v12 = v9;
      v31 = v12;
      selfCopy3 = self;
      v33 = v5;
      [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v30];
      nearbyInfoV2Devices = self->_daemon->_nearbyInfoV2Devices;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100040E38;
      v26[3] = &unk_1001ABEB8;
      v27 = v12;
      selfCopy4 = self;
      v29 = v5;
      [(NSMutableDictionary *)nearbyInfoV2Devices enumerateKeysAndObjectsUsingBlock:v26];
    }

    if (([v9 controlFlags] & 0x400000000) != 0 && (objc_msgSend(v9, "flags") & 0x2000) != 0)
    {
      homeHubDevices = self->_daemon->_homeHubDevices;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100040EC0;
      v22[3] = &unk_1001ABEB8;
      v23 = v9;
      selfCopy5 = self;
      v25 = v5;
      [(NSMutableDictionary *)homeHubDevices enumerateKeysAndObjectsUsingBlock:v22];
    }

    if (([v9 controlFlags] & 0x1000000000000) != 0)
    {
      authenticatedAWDLPairingModeDevices = self->_daemon->_authenticatedAWDLPairingModeDevices;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100040F48;
      v18[3] = &unk_1001ABEB8;
      v19 = v9;
      selfCopy6 = self;
      v21 = v5;
      [(NSMutableDictionary *)authenticatedAWDLPairingModeDevices enumerateKeysAndObjectsUsingBlock:v18];
    }

    v16 = v5;
  }

  return v5;
}

- (void)promptForPasswordType:(int)type flags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v5 = *&seconds;
  v6 = *&flags;
  v7 = *&type;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    if (v7 > 0xB)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1001AC248[v7];
    }

    LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection promptForPasswordType:flags:throttleSeconds:]", 30, "Client prompt for password with type %s, flags %#{flags}, throttle seconds %d\n", v9, v6, &unk_100147E71, v5);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkPromptForPasswordType:v7 flags:v6 throttleSeconds:v5];
}

- (void)receivedEventID:(id)d event:(id)event options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  eventCopy = event;
  v10 = +[RPMetrics sharedMetrics];
  [v10 logReceivedMessageType:1 identifier:dCopy options:optionsCopy appID:self->_appID ctx:&self->_metricsCtx];

  v11 = NSDictionaryGetNSNumber();
  v12 = v11;
  if (v11)
  {
    unsignedLongLongValue = [v11 unsignedLongLongValue];
    if (unsignedLongLongValue >> 23)
    {
      v14 = unsignedLongLongValue;
      v15 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      0x7FFFFFLL = [NSString stringWithFormat:@"len:%zu, check:%d", v14, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection receivedEventID:event:options:]", 90, "Received Large Event: %zu bytes for '%@' being handled by '%@'\n", v14, dCopy, v15);
      }

      v17 = +[RPAutoBugCapture sharedReporter];
      [v17 reportIssueOfType:4 issueContext:@"receivedEventID" processName:v15 triggerThresholdValues:0x7FFFFFLL];
    }
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkReceivedEventID:dCopy event:eventCopy options:optionsCopy];
}

- (void)receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  requestCopy = request;
  v14 = +[RPMetrics sharedMetrics];
  [v14 logReceivedMessageType:2 identifier:dCopy options:optionsCopy appID:self->_appID ctx:&self->_metricsCtx];

  v15 = NSDictionaryGetNSNumber();
  v16 = v15;
  if (v15)
  {
    unsignedLongLongValue = [v15 unsignedLongLongValue];
    if (unsignedLongLongValue >> 23)
    {
      v18 = unsignedLongLongValue;
      v19 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      0x7FFFFFLL = [NSString stringWithFormat:@"len:%zu, check:%d", v18, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection receivedRequestID:request:options:responseHandler:]", 90, "Received Large Request: %zu bytes for '%@' being handled by '%@'\n", v18, dCopy, v19);
      }

      v21 = +[RPAutoBugCapture sharedReporter];
      [v21 reportIssueOfType:4 issueContext:@"receivedRequestID" processName:v19 triggerThresholdValues:0x7FFFFFLL];
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000414E8;
  v25[3] = &unk_1001ABEE0;
  v25[4] = self;
  v26 = handlerCopy;
  v22 = handlerCopy;
  v23 = objc_retainBlock(v25);
  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkReceivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:v23];
}

- (BOOL)_checkRSSIThresholdForDevice:(id)device
{
  deviceCopy = device;
  if ([(RPCompanionLinkClient *)self->_client rssiThreshold])
  {
    rssiThreshold = [(RPCompanionLinkClient *)self->_client rssiThreshold];
  }

  else
  {
    rssiThreshold = -60;
  }

  bleDevice = [deviceCopy bleDevice];
  v6BleDevice = [bleDevice bleDevice];
  rssi = [v6BleDevice rssi];

  if (rssi)
  {
    v9 = rssi < rssiThreshold;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;

  return v10;
}

- (BOOL)reportFoundDevice:(id)device outReason:(id *)reason
{
  deviceCopy = device;
  client = self->_client;
  launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
  LOBYTE(client) = [(RPCompanionLinkClient *)client shouldReportDevice:deviceCopy toXPCConnectionWithLaunchInstanceID:launchInstanceID outReason:reason];

  if ((client & 1) == 0)
  {
    v18 = 0;
    if (!reason || self->_client)
    {
      goto LABEL_22;
    }

    v18 = 0;
    v19 = @"nilClientCnx";
    goto LABEL_16;
  }

  if (![(RPCompanionLinkXPCConnection *)self _checkRSSIThresholdForDevice:deviceCopy])
  {
    if (!reason)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v19 = @"RSSI.tooLow";
LABEL_16:
    *reason = v19;
    goto LABEL_22;
  }

  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    identifier = [deviceCopy publicIdentifier];
    if (!identifier)
    {
      if (reason)
      {
        v18 = 0;
        v19 = @"missingDeviceIdentifier";
        goto LABEL_16;
      }

LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }
  }

  v10 = identifier;
  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

  devices = self->_devices;
  if (!devices)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = self->_devices;
    self->_devices = v13;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:v10];
  processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
  if (processIdentifier == getpid())
  {
    [deviceCopy setEncodeSensitiveProperties:{-[RPCompanionLinkClient encodeSensitiveProperties](self->_client, "encodeSensitiveProperties")}];
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  v17 = remoteObjectProxy;
  if (v11)
  {
    [remoteObjectProxy companionLinkChangedDevice:deviceCopy changes:2];
  }

  else
  {
    [remoteObjectProxy companionLinkFoundDevice:deviceCopy];
  }

  v18 = 1;
LABEL_22:

  return v18;
}

- (void)reportLostDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier || ([deviceCopy publicIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    if (v5)
    {
      client = self->_client;
      launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
      LODWORD(client) = [(RPCompanionLinkClient *)client shouldReportDevice:deviceCopy toXPCConnectionWithLaunchInstanceID:launchInstanceID outReason:0];

      devices = self->_devices;
      if (client)
      {
        [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:identifier];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy companionLinkChangedDevice:deviceCopy changes:2];
      }

      else
      {
        [(NSMutableDictionary *)devices setObject:0 forKeyedSubscript:identifier];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy companionLinkLostDevice:deviceCopy];
      }
    }
  }
}

- (void)reportChangedDevice:(id)device changes:(unsigned int)changes
{
  v4 = *&changes;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier || ([deviceCopy publicIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = identifier;
    v8 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    client = self->_client;
    launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
    LODWORD(client) = [(RPCompanionLinkClient *)client shouldReportDevice:deviceCopy toXPCConnectionWithLaunchInstanceID:launchInstanceID outReason:0];

    if (client)
    {
      processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      if (processIdentifier == getpid())
      {
        [deviceCopy setEncodeSensitiveProperties:{-[RPCompanionLinkClient encodeSensitiveProperties](self->_client, "encodeSensitiveProperties")}];
      }

      if (v8)
      {
        if (v4 != 32)
        {
          [(NSMutableDictionary *)self->_devices setObject:deviceCopy forKeyedSubscript:v7];
          remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          [remoteObjectProxy companionLinkChangedDevice:deviceCopy changes:v4];
LABEL_15:
        }
      }

      else if ([(RPCompanionLinkXPCConnection *)self _checkRSSIThresholdForDevice:deviceCopy])
      {
        devices = self->_devices;
        if (!devices)
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          v15 = self->_devices;
          self->_devices = v14;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:v7];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy companionLinkFoundDevice:deviceCopy];
        goto LABEL_15;
      }
    }

    else if (v8)
    {
      [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:v7];
      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy companionLinkLostDevice:deviceCopy];
      goto LABEL_15;
    }
  }
}

- (void)updateErrorFlags:(unint64_t)flags
{
  v5 = self->_client;
  if (v5)
  {
    v11 = v5;
    v6 = +[RPDaemon sharedDaemon];
    v7 = [v6 errorFlags] | flags;

    errorFlags = [(RPCompanionLinkClient *)v11 errorFlags];
    v5 = v11;
    if (errorFlags != v7)
    {
      if (dword_1001D3228 <= 20)
      {
        if (dword_1001D3228 != -1 || (v9 = _LogCategory_Initialize(), v5 = v11, v9))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection updateErrorFlags:]", 20, "Updating error flags to %#ll{flags} and notifying %@\n", v7, &unk_100147FE5, self->_appID);
          v5 = v11;
        }
      }

      [(RPCompanionLinkClient *)v5 setErrorFlags:v7];
      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy companionLinkUpdateErrorFlags:flags];

      v5 = v11;
    }
  }
}

- (void)companionLinkActivateAssertion:(id)assertion completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)companionLinkActivateClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v151 = 0;
  v152 = &v151;
  v153 = 0x3032000000;
  v154 = sub_1000029CC;
  v155 = sub_10000317C;
  v156 = 0;
  v146[0] = _NSConcreteStackBlock;
  v146[1] = 3221225472;
  v146[2] = sub_100042BCC;
  v146[3] = &unk_1001ABF08;
  v150 = &v151;
  v120 = clientCopy;
  v147 = v120;
  selfCopy = self;
  v117 = completionCopy;
  v149 = v117;
  v116 = objc_retainBlock(v146);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = (v152 + 5);
  obj = v152[5];
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (!v152[5])
  {
    if (self->_client)
    {
      v109 = RPErrorF(4294960575, "Client already activated", v10, v11, v12, v13, v14, v15, clientID);
      v110 = v152[5];
      v152[5] = v109;

      goto LABEL_102;
    }

    if (!self->_appID)
    {
      v16 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"application-identifier"];
      appID = self->_appID;
      self->_appID = v16;
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      clientID = v120;
      [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 30, "Activate: %@, from %#{pid}\n");
    }

    [v120 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_client, client);
    controlFlags = [v120 controlFlags];
    if (sub_10000329C())
    {
      controlFlags = controlFlags & 0xFFFFFDFFFF9DFEFFLL | 0x20000400000;
      if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        clientID = [v120 clientID];
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 30, "Updated CID 0x%X control flags due to current supported virtualized transports: CF %#ll{flags}\n");
      }
    }

    location = 0;
    destinationDevice = [v120 destinationDevice];
    v119 = destinationDevice;
    if (!destinationDevice)
    {
      goto LABEL_48;
    }

    identifier = [destinationDevice identifier];
    if (identifier)
    {
      publicIdentifier = identifier;
    }

    else
    {
      publicIdentifier = [v119 publicIdentifier];

      if (!publicIdentifier)
      {
        v112 = RPErrorF(4294960569, "No destination device identifier", v20, v21, v22, v23, v24, v25, clientID);
        v122 = v152[5];
        v152[5] = v112;

        goto LABEL_101;
      }
    }

    if (([v119 statusFlags] & 0x10000000) != 0)
    {
      [v120 setControlFlags:{objc_msgSend(v120, "controlFlags") | 0x400000000}];
      [v120 setFlags:{objc_msgSend(v120, "flags") | 0x2000}];
      controlFlags = [v120 controlFlags];
    }

    v26 = [(RPCompanionLinkDaemon *)self->_daemon findConnectedDeviceForIdentifier:publicIdentifier controlFlags:controlFlags cnx:&location];
    if (!v26)
    {
      idsDeviceIdentifier = [v119 idsDeviceIdentifier];
      v28 = idsDeviceIdentifier == 0;

      if (v28)
      {
        v26 = 0;
      }

      else
      {
        daemon = self->_daemon;
        idsDeviceIdentifier2 = [v119 idsDeviceIdentifier];
        v26 = [(RPCompanionLinkDaemon *)daemon findConnectedDeviceForIdentifier:idsDeviceIdentifier2 controlFlags:controlFlags cnx:&location];
      }

      if ((controlFlags & 0x400000000) != 0 && !v26)
      {
        v107 = "HomeHub device is not found %@";
        goto LABEL_124;
      }

      if (!v26)
      {
        ipAddress = [v119 ipAddress];
        v38 = ipAddress == 0;

        if (!v38)
        {
          v26 = v119;
          v39 = self->_daemon;
          v40 = (v152 + 5);
          v143 = v152[5];
          [(RPCompanionLinkDaemon *)v39 _clientConnectionStartOnDemand:v26 xpcCnx:self error:&v143];
          objc_storeStrong(v40, v143);
          goto LABEL_29;
        }

        v63 = controlFlags;
        if ((controlFlags & 0x10000000) == 0)
        {
          v26 = [(RPCompanionLinkXPCConnection *)self _findMatchingDevice:v119 inDeviceDictionary:self->_daemon->_bleDevices];
          if (v26 || ([(RPCompanionLinkXPCConnection *)self _findMatchingDevice:v119 inDeviceDictionary:self->_daemon->_nearbyInfoV2Devices], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            if (![v120 reactivateCalled] || (objc_msgSend(v120, "controlFlags") & 0x20100) != 0)
            {
              objc_storeStrong(&self->_daemonDevice, v26);
              v70 = self->_daemon;
              v71 = (v152 + 5);
              v142 = v152[5];
              [(RPCompanionLinkDaemon *)v70 _clientConnectionStartOnDemand:v26 xpcCnx:self error:&v142];
              objc_storeStrong(v71, v142);
              goto LABEL_29;
            }

            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 30, "Avoid bringing up on-demand connection when the client is reactivated\n");
            }

            v108 = RPErrorF(4294960573, "Re-activation of on-demand connection failed", v64, v65, v66, v67, v68, v69, clientID);
LABEL_130:
            v111 = v152[5];
            v152[5] = v108;

            goto LABEL_131;
          }

          v26 = [(RPCompanionLinkDaemon *)self->_daemon findUnauthDeviceForIdentifier:publicIdentifier];
          v63 = controlFlags;
          if (v26)
          {
            objc_storeStrong(&self->_daemonDevice, v26);
            v93 = self->_daemon;
            v94 = (v152 + 5);
            v141 = v152[5];
            [(RPCompanionLinkDaemon *)v93 _clientConnectionStartUnauth:v26 client:v120 publicID:publicIdentifier xpcCnx:self error:&v141];
            objc_storeStrong(v94, v141);
            goto LABEL_29;
          }
        }

        if ((v63 & 0x1000010000000) == 0x1000000000000)
        {
          v95 = [(RPCompanionLinkDaemon *)self->_daemon findAuthAWDLPairingModeDeviceForIdentifier:publicIdentifier];
          v26 = v95;
          if (v95)
          {
            [v95 setIdentifier:publicIdentifier];
            objc_storeStrong(&self->_daemonDevice, v26);
            v96 = self->_daemon;
            v97 = (v152 + 5);
            v140 = v152[5];
            [(RPCompanionLinkDaemon *)v96 _clientConnectionStartOnDemand:v26 xpcCnx:self error:&v140];
            objc_storeStrong(v97, v140);
            goto LABEL_29;
          }
        }

        if ((controlFlags & 0x10800000) != 0)
        {
          cloudServiceID = [v120 cloudServiceID];
          if (cloudServiceID)
          {
            goto LABEL_116;
          }

          if (([(NSString *)self->_appID isEqual:@"com.apple.coreduetd"]& 1) != 0 || [(NSString *)self->_appID isEqual:@"com.apple.knowledge-agent"])
          {
            cloudServiceID = @"com.apple.private.alloy.coreduet.sync";
            [v120 setCloudServiceID:cloudServiceID];
LABEL_116:
            v26 = v119;
            [v26 setStatusFlags:{objc_msgSend(v26, "statusFlags") | 0x100000}];
            objc_storeStrong(&self->_daemonDevice, v119);
            [v120 setControlFlags:{objc_msgSend(v120, "controlFlags") | 0x10000000}];
            v105 = self->_daemon;
            v106 = (v152 + 5);
            v139 = v152[5];
            [(RPCompanionLinkDaemon *)v105 _clientConnectionStartOnDemand:v26 xpcCnx:self error:&v139];
            objc_storeStrong(v106, v139);
            LOBYTE(v106) = v152[5] == 0;

            if (v106)
            {
              goto LABEL_30;
            }

            goto LABEL_131;
          }

          v108 = RPErrorF(4294960591, "No cloudServiceID", v99, v100, v101, v102, v103, v104, clientID);
LABEL_125:
          v26 = 0;
          goto LABEL_130;
        }

        if ((~controlFlags & 0x220000) == 0)
        {
          v26 = [(RPCompanionLinkDaemon *)self->_daemon findConnectedDeviceForIdentifier:publicIdentifier controlFlags:controlFlags & 0xFFFFFFFFEF5FFFFFLL cnx:0];
          if (v26)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 30, "Found WiFi device destination for ForceAWDL client: %@\n", v119);
            }

            objc_storeStrong(&self->_daemonDevice, v119);
            v113 = self->_daemon;
            v114 = (v152 + 5);
            v138 = v152[5];
            [(RPCompanionLinkDaemon *)v113 _clientConnectionStartOnDemand:v119 xpcCnx:self error:&v138];
            objc_storeStrong(v114, v138);
LABEL_29:
            if (!v152[5])
            {
              goto LABEL_30;
            }

LABEL_131:

LABEL_100:
LABEL_101:

            goto LABEL_102;
          }
        }

        v107 = "Destination device not found: %@";
LABEL_124:
        v108 = RPErrorF(4294960569, v107, v29, v30, v31, v32, v33, v34, v119);
        goto LABEL_125;
      }
    }

LABEL_30:
    idsDeviceIdentifier3 = [v26 idsDeviceIdentifier];
    v42 = idsDeviceIdentifier3 == 0;

    if (v42)
    {
      v43 = +[RPCloudDaemon sharedCloudDaemon];
      idsDeviceArray = [v43 idsDeviceArray];

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v45 = idsDeviceArray;
      v46 = [v45 countByEnumeratingWithState:&v134 objects:v158 count:16];
      if (v46)
      {
        v47 = *v135;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v135 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v134 + 1) + 8 * i);
            nsuuid = [v49 nsuuid];
            uUIDString = [nsuuid UUIDString];
            v52 = [uUIDString isEqualToString:publicIdentifier];

            if (v52)
            {
              uniqueIDOverride = [v49 uniqueIDOverride];
              [v26 setIdsDeviceIdentifier:uniqueIDOverride];

              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                idsDeviceIdentifier4 = [v26 idsDeviceIdentifier];
                LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 30, "Found IDS identifier %@ for device %@", idsDeviceIdentifier4, publicIdentifier);
              }
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v134 objects:v158 count:16];
        }

        while (v46);
      }
    }

    objc_storeStrong(&self->_daemonDevice, v26);
    if (!self->_netCnx && ([location controlFlags] & 0x200) != 0)
    {
      objc_storeStrong(&self->_netCnx, location);
    }

LABEL_48:
    if ((controlFlags & 0x800000000) != 0)
    {
      [(RPCompanionLinkDaemon *)self->_daemon _clientOnDemandAWDLDiscoveryStartForXPC:self];
    }

    if (!self->_osTransaction)
    {
      v133 = 0;
      identifier2 = [v119 identifier];
      v56 = identifier2;
      if (identifier2)
      {
        v57 = identifier2;
      }

      else
      {
        publicIdentifier2 = [v119 publicIdentifier];
        v59 = publicIdentifier2;
        v60 = @"Discovery";
        if (publicIdentifier2)
        {
          v60 = publicIdentifier2;
        }

        v57 = v60;
      }

      ASPrintF(&v133, "com.apple.rapport.client-%#{pid}-%@", [(NSXPCConnection *)self->_xpcCnx processIdentifier], v57);
      v61 = os_transaction_create();
      osTransaction = self->_osTransaction;
      self->_osTransaction = v61;

      if (!self->_osTransaction && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 90, "### Create OS transaction failed: %s\n", v133);
      }

      if (v133)
      {
        free(v133);
      }
    }

    if (!location)
    {
      objc_storeStrong(&location, self->_netCnx);
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      label = [(RPConnection *)self->_netCnx label];
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkActivateClient:completion:]", 30, "Activating using connection %@\n", label);
    }

    publicIdentifier = [v120 serviceType];
    if (publicIdentifier && location)
    {
      v73 = objc_alloc_init(RPSession);
      [v73 setCnx:location];
      [v73 setServiceType:publicIdentifier];
      [v73 setStartTicks:mach_absolute_time()];
      objc_storeStrong(&self->_session, v73);
      identifier3 = [v119 identifier];
      v75 = identifier3;
      if (identifier3)
      {
        v76 = identifier3;
      }

      else
      {
        publicIdentifier3 = [v119 publicIdentifier];
        v83 = publicIdentifier3;
        if (publicIdentifier3)
        {
          idsDeviceIdentifier5 = publicIdentifier3;
        }

        else
        {
          idsDeviceIdentifier5 = [v119 idsDeviceIdentifier];
        }

        v76 = idsDeviceIdentifier5;
      }

      v85 = self->_daemon;
      v86 = location;
      xpcID = self->_xpcID;
      v129[0] = _NSConcreteStackBlock;
      v129[1] = 3221225472;
      v129[2] = sub_100042C78;
      v129[3] = &unk_1001ABF30;
      v129[4] = self;
      v130 = v120;
      v131 = publicIdentifier;
      v132 = v117;
      [(RPCompanionLinkDaemon *)v85 sessionStartSend:v86 session:v73 xpcID:xpcID destinationID:v76 completion:v129];
    }

    else
    {
      [(RPCompanionLinkDaemon *)self->_daemon _pruneStaleBLEDevices];
      v77 = [(RPCompanionLinkXPCConnection *)self devicesForClient:v120];
      if (v117)
      {
        (*(v117 + 2))(v117, v77, v152[5]);
      }

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v73 = v77;
      v78 = [v73 countByEnumeratingWithState:&v125 objects:v157 count:16];
      if (v78)
      {
        v79 = *v126;
        do
        {
          for (j = 0; j != v78; j = j + 1)
          {
            if (*v126 != v79)
            {
              objc_enumerationMutation(v73);
            }

            v81 = *(*(&v125 + 1) + 8 * j);
            v124 = @"success";
            [(RPCompanionLinkXPCConnection *)self reportFoundDevice:v81 outReason:&v124];
          }

          v78 = [v73 countByEnumeratingWithState:&v125 objects:v157 count:16];
        }

        while (v78);
      }

      v76 = +[RPDaemon sharedDaemon];
      -[RPCompanionLinkXPCConnection updateErrorFlags:](self, "updateErrorFlags:", [v76 errorFlags]);
    }

    xpcCnx = [(RPCompanionLinkXPCConnection *)self xpcCnx];
    processIdentifier = [xpcCnx processIdentifier];

    v90 = [RBSProcessIdentifier identifierWithPid:processIdentifier];
    v123 = 0;
    v91 = [RBSProcessHandle handleForIdentifier:v90 error:&v123];
    v92 = v123;
    if (!v92 && v90 && [v91 isApplication])
    {
      objc_storeStrong(&self->_rbsPID, v90);
      [(RPCompanionLinkDaemon *)self->_daemon _addApplicationPID:self->_rbsPID];
    }

    [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCClientChange];

    goto LABEL_100;
  }

LABEL_102:
  (v116[2])(v116);

  _Block_object_dispose(&v151, 8);
}

- (void)companionLinkUpdateClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011521C(self);
    }

    controlFlags = [(RPCompanionLinkClient *)self->_client controlFlags];
    controlFlags2 = [clientCopy controlFlags];
    if (controlFlags2 != controlFlags)
    {
      [(RPCompanionLinkClient *)self->_client setControlFlags:controlFlags2];
    }

    serviceType = [(RPCompanionLinkClient *)self->_client serviceType];
    serviceType2 = [clientCopy serviceType];
    v8 = serviceType;
    v9 = serviceType2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) != (v9 == 0))
      {
        v11 = [v8 isEqual:v9];

        if (v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(RPCompanionLinkClient *)self->_client setServiceType:v10];
    }

LABEL_14:
    localDeviceInfo = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
    launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];

    if (launchInstanceID)
    {
      daemon = self->_daemon;
      launchInstanceID2 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
      v16 = [(RPCompanionLinkDaemon *)daemon homeHubDeviceForLaunchInstanceID:launchInstanceID2];

      localDeviceInfo = v16;
      if (!v16)
      {
        if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        localDeviceInfo = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkUpdateClient:]", 90, "### Unable to find local HomeHub device for launch instance %@, failed to update the client\n", localDeviceInfo);
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }
    }

    v27 = controlFlags2;
    v28 = controlFlags;
    siriInfo = [localDeviceInfo siriInfo];
    siriInfo2 = [clientCopy siriInfo];
    v19 = siriInfo2;
    if (siriInfo2)
    {
      v20 = siriInfo2;
      v21 = siriInfo;
      v22 = v21;
      if (v20 == v21)
      {

        v24 = v20;
      }

      else
      {
        if (v21)
        {
          v23 = [v20 isEqual:v21];

          if (v23)
          {
            goto LABEL_34;
          }
        }

        else
        {
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100115264(v22, v20);
        }

        [localDeviceInfo setSiriInfo:v20];
        v24 = +[NSMutableDictionary dictionary];
        [v24 setObject:v20 forKeyedSubscript:@"_siriInfo"];
        if (launchInstanceID)
        {
          identifier = [localDeviceInfo identifier];
          [v24 setObject:identifier forKeyedSubscript:@"_i"];

          v26 = @"_proxyUpdate";
        }

        else
        {
          v26 = @"_systemInfoUpdate";
        }

        [(RPCompanionLinkDaemon *)self->_daemon sendEventID:v26 event:v24 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];
      }
    }

LABEL_34:
    if (v27 != v28)
    {
      [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCClientChange];
    }

    goto LABEL_37;
  }

LABEL_39:
}

- (void)companionLinkTriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case completion:(id)completion
{
  v6 = *&case;
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v15 = 0;
  v10 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v15];
  v11 = v15;
  if (v10)
  {
    daemon = self->_daemon;
    v14 = v11;
    [(RPCompanionLinkDaemon *)daemon triggerEnhancedDiscoveryForReason:discoveryCopy useCase:v6 error:&v14];
    v13 = v14;

    v11 = v13;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)companionLinkCreateDeviceToEndpointMappingForDeviceID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v15 = 0;
  v8 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v15];
  v9 = v15;
  if (v8)
  {
    daemon = self->_daemon;
    v13 = v9;
    v14 = 0;
    [(RPCompanionLinkDaemon *)daemon createDeviceToEndpointMappingForDeviceID:dCopy endpointUUID:&v14 error:&v13];
    v11 = v14;
    v12 = v13;

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v11, v12);
    }
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v9);
    }

    v12 = v9;
  }
}

- (void)companionLinkRegisterEventID:(id)d options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v27 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v27];
  v11 = v27;
  if (!v11)
  {
    if (CFDictionaryGetInt64())
    {
      identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
      if (identifier)
      {
        identifier2 = identifier;
      }

      else
      {
        destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
        identifier2 = [destinationDevice identifier];

        if (!identifier2)
        {
          v12 = RPErrorF(4294960588, "Interest with no peer identifier", v16, v17, v18, v19, v20, v21, v26);
          if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkRegisterEventID:options:completion:]", 90, "### Register interest event failed: '%@', %{error}\n", dCopy, v12);
          }

          if (completionCopy)
          {
            goto LABEL_3;
          }

          goto LABEL_17;
        }
      }

      [(RPCompanionLinkDaemon *)self->_daemon interestRegisterEventID:dCopy peerIdentifier:identifier2 owner:self];
    }

    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v23 = objc_alloc_init(NSMutableDictionary);
      v24 = self->_registeredEvents;
      self->_registeredEvents = v23;

      registeredEvents = self->_registeredEvents;
    }

    if (optionsCopy)
    {
      v25 = optionsCopy;
    }

    else
    {
      v25 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v25 forKeyedSubscript:dCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    v12 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  if (completionCopy)
  {
LABEL_3:
    (completionCopy)[2](completionCopy, v12);
  }

LABEL_17:
}

- (void)companionLinkDeregisterEventID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v8 = v12;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }

    goto LABEL_10;
  }

  identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
  if (identifier)
  {
    identifier2 = identifier;
  }

  else
  {
    destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
    identifier2 = [destinationDevice identifier];

    if (!identifier2)
    {
      goto LABEL_8;
    }
  }

  [(RPCompanionLinkDaemon *)self->_daemon interestDeregisterEventID:dCopy peerIdentifier:identifier2 owner:self];

LABEL_8:
  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:dCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_10:
}

- (void)companionLinkSendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options nwActivityToken:(id)token completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  iDCopy = iD;
  optionsCopy = options;
  tokenCopy = token;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v36 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v36];
  v20 = v36;
  if (v20)
  {
    v34 = v20;
    v21 = 0;
    if (!completionCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = [(RPNWActivityMetrics *)RPNWActivityEventMetrics metricsUsingToken:tokenCopy];
    [v21 setDestination:iDCopy];
    v22 = [RPNWActivityUtils updateOptions:optionsCopy withNWActivityMetrics:v21];

    if (![iDCopy isEqual:@"rapport:rdid:DirectPeer"])
    {
LABEL_9:
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v22];

      [(RPCompanionLinkDaemon *)self->_daemon sendEventID:dCopy event:eventCopy destinationID:iDCopy options:optionsCopy completion:completionCopy];
      goto LABEL_10;
    }

    v23 = self->_netCnx;
    if (v23)
    {
      v24 = v23;
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v22];

      [(RPConnection *)v24 sendEncryptedEventID:dCopy event:eventCopy options:optionsCopy completion:completionCopy];
LABEL_10:
      v34 = 0;
      goto LABEL_11;
    }

    identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
    if (identifier)
    {
      identifier2 = identifier;
LABEL_8:

      iDCopy = identifier2;
      goto LABEL_9;
    }

    destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
    identifier2 = [destinationDevice identifier];

    if (identifier2)
    {
      goto LABEL_8;
    }

    RPErrorF(4294960591, "DirectPeer with no destination device", v28, v29, v30, v31, v32, v33, v35);
    v34 = optionsCopy = v22;
    if (!completionCopy)
    {
      goto LABEL_11;
    }
  }

  if (v34)
  {
    completionCopy[2](completionCopy, v34);
  }

LABEL_11:
}

- (void)companionLinkRegisterProfileID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v24 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v24];
  v8 = v24;
  if (v8)
  {
    v9 = v8;
LABEL_3:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9);
    }

    goto LABEL_5;
  }

  if (([(NSMutableSet *)self->_registeredProfileIDs containsObject:dCopy]& 1) != 0 || [(NSMutableSet *)self->_daemon->_registeredProfileIDs containsObject:dCopy])
  {
    v9 = RPErrorF(4294960566, "Profile already registered", v10, v11, v12, v13, v14, v15, v23);
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkRegisterProfileID:completion:]", 90, "### Register profileID failed: '%@', %{error}\n", dCopy, v9);
    }

    goto LABEL_3;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001152C0(dCopy);
  }

  registeredProfileIDs = self->_registeredProfileIDs;
  if (!registeredProfileIDs)
  {
    v17 = objc_alloc_init(NSMutableSet);
    v18 = self->_registeredProfileIDs;
    self->_registeredProfileIDs = v17;

    registeredProfileIDs = self->_registeredProfileIDs;
  }

  [(NSMutableSet *)registeredProfileIDs addObject:dCopy];
  v19 = self->_daemon->_registeredProfileIDs;
  if (!v19)
  {
    v20 = objc_alloc_init(NSMutableSet);
    daemon = self->_daemon;
    v22 = daemon->_registeredProfileIDs;
    daemon->_registeredProfileIDs = v20;

    v19 = self->_daemon->_registeredProfileIDs;
  }

  [(NSMutableSet *)v19 addObject:dCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  [(RPCompanionLinkDaemon *)self->_daemon _update];
  v9 = 0;
LABEL_5:
}

- (void)companionLinkDeregisterProfileID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v9];
  v8 = v9;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115300(dCopy);
    }

    [(NSMutableSet *)self->_registeredProfileIDs removeObject:dCopy];
    [(NSMutableSet *)self->_daemon->_registeredProfileIDs removeObject:dCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    [(RPCompanionLinkDaemon *)self->_daemon _update];
  }
}

- (void)companionLinkSendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options nwActivityToken:(id)token responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  tokenCopy = token;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100043E38;
  v42[3] = &unk_1001ABF58;
  v42[4] = self;
  v20 = dCopy;
  v43 = v20;
  v21 = handlerCopy;
  v44 = v21;
  v22 = objc_retainBlock(v42);
  v41 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v41];
  v23 = v41;
  v40 = tokenCopy;
  if (v23)
  {
    v38 = v23;
    v25 = 0;
  }

  else
  {
    v24 = requestCopy;
    v25 = [(RPNWActivityMetrics *)RPNWActivityRequestMetrics metricsUsingToken:tokenCopy];
    [v25 setDestination:iDCopy];
    v26 = [RPNWActivityUtils updateOptions:optionsCopy withNWActivityMetrics:v25];

    if (![iDCopy isEqual:@"rapport:rdid:DirectPeer"])
    {
LABEL_9:
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v26];

      requestCopy = v24;
      [(RPCompanionLinkDaemon *)self->_daemon sendRequestID:v20 request:v24 destinationID:iDCopy xpcID:self->_xpcID options:optionsCopy responseHandler:v22];
      goto LABEL_10;
    }

    v27 = self->_netCnx;
    if (v27)
    {
      v28 = v27;
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v26];

      requestCopy = v24;
      [(RPConnection *)v28 sendEncryptedRequestID:v20 request:v24 xpcID:self->_xpcID options:optionsCopy responseHandler:v22];

LABEL_10:
      v38 = 0;
      goto LABEL_11;
    }

    identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
    if (identifier)
    {
      identifier2 = identifier;
LABEL_8:

      iDCopy = identifier2;
      goto LABEL_9;
    }

    destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
    identifier2 = [destinationDevice identifier];

    if (identifier2)
    {
      goto LABEL_8;
    }

    v38 = RPErrorF(4294960591, "DirectPeer with no destination device", v32, v33, v34, v35, v36, v37, v39);
    optionsCopy = v26;
    requestCopy = v24;
    if (!v38)
    {
      goto LABEL_11;
    }
  }

  if (v22)
  {
    (v22[2])(v22, 0, 0, v38);
  }

LABEL_11:
}

- (void)companionLinkTryPassword:(id)password
{
  passwordCopy = password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0])
  {
    v4 = self->_netCnx;
    v5 = v4;
    if (v4)
    {
      [(RPConnection *)v4 tryPassword:passwordCopy];
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115340(self);
    }
  }
}

- (void)companionLinkSetLocalDeviceAsContextCollector:(id)collector
{
  collectorCopy = collector;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v5 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    daemon = self->_daemon;
    p_daemon = &self->_daemon;
    localDeviceInfo = [(RPCompanionLinkDaemon *)daemon localDeviceInfo];
    [localDeviceInfo setStatusFlags:{objc_msgSend(localDeviceInfo, "statusFlags") | 0x400000000}];

    *(p_daemon - 62) = 1;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115388(p_daemon);
    }

    [(RPCompanionLinkDaemon *)*p_daemon _update];
    if (collectorCopy)
    {
      v11 = 0;
LABEL_8:
      (collectorCopy)[2](collectorCopy, v11);
    }
  }

  else
  {
    v11 = v6;
    if (collectorCopy)
    {
      goto LABEL_8;
    }
  }
}

- (void)companionLinkRemoveLocalDeviceAsContextCollector:(id)collector
{
  collectorCopy = collector;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v5 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    daemon = self->_daemon;
    p_daemon = &self->_daemon;
    localDeviceInfo = [(RPCompanionLinkDaemon *)daemon localDeviceInfo];
    [localDeviceInfo setStatusFlags:{objc_msgSend(localDeviceInfo, "statusFlags") & 0xFFFFFFFBFFFFFFFFLL}];

    *(p_daemon - 62) = 0;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001153E0(p_daemon);
    }

    [(RPCompanionLinkDaemon *)*p_daemon _update];
    if (collectorCopy)
    {
      v11 = 0;
LABEL_8:
      (collectorCopy)[2](collectorCopy, v11);
    }
  }

  else
  {
    v11 = v6;
    if (collectorCopy)
    {
      goto LABEL_8;
    }
  }
}

- (void)xpcDiscoveryActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v10];
  v9 = v10;
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115438(self, activateCopy);
    }

    [activateCopy setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_discoveryClient, activate);
  }
}

- (void)xpcDiscoveryUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0]&& dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011548C(self, updateCopy);
  }
}

- (void)xpcServerActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  activateCopy2 = activate;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1000029CC;
  v50 = sub_10000317C;
  v51 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000448C8;
  v43[3] = &unk_1001ABD58;
  v45 = &v46;
  completionCopy = completion;
  v44 = completionCopy;
  v35 = objc_retainBlock(v43);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = (v47 + 5);
  obj = v47[5];
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v8, obj);
  if (!v47[5])
  {
    serviceType = [activateCopy2 serviceType];
    if ([serviceType length])
    {
      [(RPCompanionLinkDaemon *)self->_daemon activeServers];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v16 = v39 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v17)
      {
        v18 = *v39;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(v16);
            }

            serviceType2 = [*(*(&v38 + 1) + 8 * i) serviceType];
            v21 = [serviceType2 isEqual:serviceType];

            if (v21)
            {
              v29 = RPErrorF(4294960575, "Service type already in use: '%@'", v22, v23, v24, v25, v26, v27, serviceType);
              v30 = v47[5];
              v47[5] = v29;

              goto LABEL_23;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v38 objects:v52 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      internalAuthFlags = [activateCopy2 internalAuthFlags];
      if (internalAuthFlags)
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100044990;
        v37[3] = &unk_1001AB7E8;
        v37[4] = self;
        [activateCopy2 setShowPasswordHandler:v37];
      }

      if ((internalAuthFlags & 2) != 0)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100044A04;
        v36[3] = &unk_1001AB810;
        v36[4] = self;
        [activateCopy2 setHidePasswordHandler:v36];
      }

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection xpcServerActivate:completion:]", 30, "Activate: %@, from %#{pid}\n", activateCopy2, [(NSXPCConnection *)self->_xpcCnx processIdentifier], activateCopy);
      }

      [activateCopy2 setDispatchQueue:self->_dispatchQueue];
      objc_storeStrong(&self->_server, activateCopy);
      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableSet);
        [(RPCompanionLinkDaemon *)self->_daemon setActiveServers:v16];
      }

      [v16 addObject:activateCopy2];
      localDeviceInfo = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
      [localDeviceInfo setServersChangedState:6];

      [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
      (*(completionCopy + 2))(completionCopy, 0);
    }

    else
    {
      v32 = RPErrorF(4294960591, "No service type", v10, v11, v12, v13, v14, v15, v33);
      v16 = v47[5];
      v47[5] = v32;
    }

LABEL_23:
  }

  (v35[2])(v35);

  _Block_object_dispose(&v46, 8);
}

- (void)xpcServerUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0];
  v5 = updateCopy;
  if (v4)
  {
    server = self->_server;
    if (!server)
    {
      sub_100115554();
      goto LABEL_20;
    }

    controlFlags = [(RPServer *)server controlFlags];
    controlFlags2 = [updateCopy controlFlags];
    v9 = controlFlags2 != controlFlags;
    if (controlFlags2 != controlFlags)
    {
      [(RPServer *)self->_server setControlFlags:controlFlags2];
    }

    password = [updateCopy password];
    password2 = [(RPServer *)self->_server password];
    v12 = password;
    v13 = password2;
    v14 = v13;
    if (v12 == v13)
    {

      goto LABEL_12;
    }

    if ((v12 != 0) != (v13 == 0))
    {
      v15 = [v12 isEqual:v13];

      if (v15)
      {
LABEL_12:
        passwordType = [updateCopy passwordType];
        if (passwordType != [(RPServer *)self->_server passwordType])
        {
          [(RPServer *)self->_server setPasswordType:passwordType];
          v9 = 1;
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001154E0(self, v9, updateCopy);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else if (!v9)
        {
LABEL_19:

LABEL_20:
          v5 = updateCopy;
          goto LABEL_21;
        }

        [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
        goto LABEL_19;
      }
    }

    else
    {
    }

    [(RPServer *)self->_server setPassword:v12];
    v9 = 1;
    goto LABEL_12;
  }

LABEL_21:
}

- (void)xpcSessionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v10];
  v9 = v10;
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001155D8(self, activateCopy);
    }

    [activateCopy setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_session, activate);
  }
}

- (id)_findMatchingDevice:(id)device inDeviceDictionary:(id)dictionary
{
  deviceCopy = device;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [dictionary allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqualToDevice:deviceCopy])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)companionLinkRegisterRequestID:(id)d options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v16];
  v11 = v16;
  if (!v11)
  {
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredRequests;
      self->_registeredRequests = v13;

      registeredRequests = self->_registeredRequests;
    }

    if (optionsCopy)
    {
      v15 = optionsCopy;
    }

    else
    {
      v15 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v15 forKeyedSubscript:dCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)companionLinkDeregisterRequestID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v9];
  v8 = v9;
  if (!v8)
  {
    [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:dCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

@end