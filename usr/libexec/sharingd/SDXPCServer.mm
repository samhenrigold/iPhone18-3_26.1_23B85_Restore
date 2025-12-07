@interface SDXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SDXPCServer)initWithAirDropService:(id)service;
- (id)_stateDumpString;
- (os_state_data_s)_stateDump;
- (void)_activate;
- (void)_connectionInvalidated:(id)invalidated;
- (void)_invalidate;
- (void)activate;
- (void)invalidate;
- (void)stateAppendXPCConnections:(id *)connections;
@end

@implementation SDXPCServer

- (os_state_data_s)_stateDump
{
  if (dword_100971A10 <= 50 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCServer _stateDump]", 50, "State dump: SharingServices\n");
  }

  _stateDumpString = [(SDXPCServer *)self _stateDumpString];
  if (_stateDumpString)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:_stateDumpString format:200 options:0 error:0];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 length];
      v7 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
      v8 = v7;
      if (v7)
      {
        v7->var0 = 1;
        v7->var1.var1 = v6;
        __strlcpy_chk();
        memcpy(v8->var4, [v5 bytes], v6);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v5 = 0;
  }

  return v8;
}

- (id)_stateDumpString
{
  v38 = 0;
  NSAppendPrintF(&v38, "\n");
  v3 = v38;
  v4 = [(SDNearbyAgent *)self->_nearbyAgent description];
  v5 = v4;
  if (v4)
  {
    v37 = v3;
    NSAppendPrintF(&v37, "%@\n", v4);
    v6 = v37;

    v3 = v6;
  }

  v7 = [(SDRemoteInteractionAgent *)self->_riAgent description];

  if (v7)
  {
    v36 = v3;
    NSAppendPrintF(&v36, "%@\n", v7);
    v8 = v36;

    v3 = v8;
  }

  v9 = [(SDProximityPairingAgent *)self->_ppAgent description];

  if (v9)
  {
    v35 = v3;
    NSAppendPrintF(&v35, "%@\n", v9);
    v10 = v35;

    v3 = v10;
  }

  v11 = CUDescriptionWithLevel();

  if (v11)
  {
    v34 = v3;
    NSAppendPrintF(&v34, "%@\n", v11);
    v12 = v34;

    v3 = v12;
  }

  v13 = [(SDAutoFillAgent *)self->_autoFillAgent description];

  if (v13)
  {
    v33 = v3;
    NSAppendPrintF(&v33, "%@\n", v13);
    v14 = v33;

    v3 = v14;
  }

  v15 = [(SDProxHandoffAgent *)self->_proxHandoffAgent description];

  if (v15)
  {
    v32 = v3;
    NSAppendPrintF(&v32, "%@\n", v15);
    v16 = v32;

    v3 = v16;
  }

  v31 = v3;
  [(SDXPCServer *)self stateAppendXPCConnections:&v31];
  v17 = v31;

  v30 = v17;
  NSAppendPrintF(&v30, "\n");
  v18 = v30;

  detailedDescription = [(SDAppleIDAgent *)self->_appleIDAgent detailedDescription];

  if (detailedDescription)
  {
    v29 = v18;
    NSAppendPrintF(&v29, "%@\n", detailedDescription);
    v20 = v29;

    v18 = v20;
  }

  v21 = +[SDStatusMonitor sharedMonitor];
  v22 = [v21 description];

  if (v22)
  {
    v28 = v18;
    NSAppendPrintF(&v28, "%@\n", v22);
    v23 = v28;

    v18 = v23;
  }

  v27 = v18;
  NSAppendPrintF(&v27, "SharingServices State End\n");
  v24 = v27;
  v25 = v27;

  return v24;
}

- (SDXPCServer)initWithAirDropService:(id)service
{
  serviceCopy = service;
  v10.receiver = self;
  v10.super_class = SDXPCServer;
  v6 = [(SDXPCServer *)&v10 init];
  if (v6)
  {
    v7 = SFMainQueue();
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v6->_prefNotifyToken = -1;
    objc_storeStrong(&v6->_airDropService, service);
  }

  return v6;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018522C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  LogSetAppID();
  v3 = LogControl();
  if (dword_100971A10 <= 30)
  {
    if (dword_100971A10 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001929B4(v3, v4, v5);
    }
  }

  if (!self->_xpcListener)
  {
    v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.SharingServices"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v6;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  SFAWDEnsureInitialized();
  if (!self->_appleIDAgent)
  {
    v8 = +[SDAppleIDAgent sharedAgent];
    appleIDAgent = self->_appleIDAgent;
    self->_appleIDAgent = v8;
  }

  if (!self->_subCredentialAgent)
  {
    v10 = +[SDSubCredentialAgent sharedAgent];
    subCredentialAgent = self->_subCredentialAgent;
    self->_subCredentialAgent = v10;
  }

  if (!self->_hotspotAgent)
  {
    v12 = +[SDHotspotAgent sharedAgent];
    hotspotAgent = self->_hotspotAgent;
    self->_hotspotAgent = v12;
  }

  if (!self->_nearbyAgent)
  {
    v14 = +[SDNearbyAgent sharedNearbyAgent];
    nearbyAgent = self->_nearbyAgent;
    self->_nearbyAgent = v14;

    [(SDNearbyAgent *)self->_nearbyAgent setDispatchQueue:self->_dispatchQueue];
    [(SDNearbyAgent *)self->_nearbyAgent activate];
  }

  if (!self->_riAgent)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v16 = qword_10098A018;
    v41 = qword_10098A018;
    if (!qword_10098A018)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10018FCC8;
      v37[3] = &unk_1008CDA20;
      v37[4] = &v38;
      sub_10018FCC8(v37);
      v16 = v39[3];
    }

    v17 = v16;
    _Block_object_dispose(&v38, 8);
    if ([v16 supportsContentExtensions])
    {
      v18 = +[SDRemoteInteractionAgent sharedAgent];
      riAgent = self->_riAgent;
      self->_riAgent = v18;

      [(SDRemoteInteractionAgent *)self->_riAgent setDispatchQueue:self->_dispatchQueue];
      [(SDRemoteInteractionAgent *)self->_riAgent activate];
    }
  }

  if (!self->_rtiClient)
  {
    v20 = +[SDSharedRemoteTextInputClient sharedClient];
    rtiClient = self->_rtiClient;
    self->_rtiClient = v20;

    [(SDSharedRemoteTextInputClient *)self->_rtiClient setDispatchQueue:self->_dispatchQueue];
    [(SDSharedRemoteTextInputClient *)self->_rtiClient activate];
  }

  if (!self->_ppAgent && (SFIsDeviceAudioAccessory() & 1) == 0)
  {
    v22 = +[SDProximityPairingAgent sharedProximityPairingAgent];
    ppAgent = self->_ppAgent;
    self->_ppAgent = v22;

    [(SDProximityPairingAgent *)self->_ppAgent setDispatchQueue:self->_dispatchQueue];
    [(SDProximityPairingAgent *)self->_ppAgent activate];
  }

  if (!self->_setupAgent)
  {
    v24 = +[SDSetupAgent sharedSetupAgent];
    setupAgent = self->_setupAgent;
    self->_setupAgent = v24;

    [(SDSetupAgent *)self->_setupAgent setDispatchQueue:self->_dispatchQueue];
    [(SDSetupAgent *)self->_setupAgent activate];
  }

  if (!self->_autoFillAgent)
  {
    v26 = objc_alloc_init(SDAutoFillAgent);
    autoFillAgent = self->_autoFillAgent;
    self->_autoFillAgent = v26;

    [(SDAutoFillAgent *)self->_autoFillAgent setDispatchQueue:self->_dispatchQueue];
    [(SDAutoFillAgent *)self->_autoFillAgent activate];
  }

  if (!self->_proxHandoffAgent)
  {
    v28 = +[SDProxHandoffAgent sharedAgent];
    proxHandoffAgent = self->_proxHandoffAgent;
    self->_proxHandoffAgent = v28;

    [(SDProxHandoffAgent *)self->_proxHandoffAgent setDispatchQueue:self->_dispatchQueue];
    [(SDProxHandoffAgent *)self->_proxHandoffAgent activate];
  }

  if (!self->_shareAudioService)
  {
    if ((LODWORD(v37[0]) = 0, Int64 = CFPrefs_GetInt64(), LODWORD(v37[0])) && GestaltGetDeviceClass() - 1 < 3 || Int64)
    {
      v31 = objc_alloc_init(SFShareAudioService);
      shareAudioService = self->_shareAudioService;
      self->_shareAudioService = v31;

      v33 = dispatch_queue_create("ShareAudioService", 0);
      [(SFShareAudioService *)self->_shareAudioService setDispatchQueue:v33];

      v34 = +[SDStatusMonitor sharedMonitor];
      [(SFShareAudioService *)self->_shareAudioService setStatusMonitor:v34];

      [(SFShareAudioService *)self->_shareAudioService activate];
    }
  }

  if (self->_prefNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10018572C;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.Sharing.prefsChanged", &self->_prefNotifyToken, dispatchQueue, handler);
  }

  if (!self->_stateHandle)
  {
    if (IsAppleInternalBuild())
    {
      self->_stateHandle = os_state_add_handler();
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185878;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  prefNotifyToken = self->_prefNotifyToken;
  if (prefNotifyToken != -1)
  {
    notify_cancel(prefNotifyToken);
    self->_prefNotifyToken = -1;
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(*(&v20 + 1) + 8 * i) + 136) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  appleIDAgent = self->_appleIDAgent;
  self->_appleIDAgent = 0;

  [(SDNearbyAgent *)self->_nearbyAgent invalidate];
  nearbyAgent = self->_nearbyAgent;
  self->_nearbyAgent = 0;

  [(SDRemoteInteractionAgent *)self->_riAgent invalidate];
  riAgent = self->_riAgent;
  self->_riAgent = 0;

  [(SDSharedRemoteTextInputClient *)self->_rtiClient invalidate];
  rtiClient = self->_rtiClient;
  self->_rtiClient = 0;

  [(SDProximityPairingAgent *)self->_ppAgent invalidate];
  ppAgent = self->_ppAgent;
  self->_ppAgent = 0;

  [(SDSetupAgent *)self->_setupAgent invalidate];
  setupAgent = self->_setupAgent;
  self->_setupAgent = 0;

  [(SDAutoFillAgent *)self->_autoFillAgent invalidate];
  autoFillAgent = self->_autoFillAgent;
  self->_autoFillAgent = 0;

  [(SDProxHandoffAgent *)self->_proxHandoffAgent invalidate];
  proxHandoffAgent = self->_proxHandoffAgent;
  self->_proxHandoffAgent = 0;

  [(SFShareAudioService *)self->_shareAudioService invalidate];
  shareAudioService = self->_shareAudioService;
  self->_shareAudioService = 0;

  if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001929EC();
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatchQueue = self->_dispatchQueue;
  listenerCopy = listener;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [[SDXPCConnection alloc] initWithServer:self xpcConnection:connectionCopy];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_xpcConnections;
    self->_xpcConnections = v11;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v9];
  xpcListener = self->_xpcListener;

  if (xpcListener == listenerCopy)
  {
    v14 = self->_xpcInterfaceClient;
    if (!v14)
    {
      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFXPCInterface];
      v29 = [NSSet alloc];
      v28 = objc_opt_class();
      v27 = objc_opt_class();
      v26 = objc_opt_class();
      v25 = objc_opt_class();
      v24 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v29 initWithObjects:{v28, v27, v26, v25, v24, v15, v16, v17, objc_opt_class(), 0}];
      [(NSXPCInterface *)v14 setClasses:v18 forSelector:"shareAudioProgressEvent:info:" argumentIndex:1 ofReply:0];
      objc_storeStrong(&self->_xpcInterfaceClient, v14);
    }

    v19 = self->_xpcInterfaceServer;
    if (!v19)
    {
      v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SDXPCInterface];
      v20 = [NSSet alloc];
      v21 = objc_opt_class();
      v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
      [(NSXPCInterface *)v19 setClasses:v22 forSelector:"getPeopleSuggestions:completion:" argumentIndex:0 ofReply:1];

      objc_storeStrong(&self->_xpcInterfaceServer, v19);
    }

    [connectionCopy _setQueue:self->_dispatchQueue];
    [connectionCopy setExportedInterface:v19];
    [connectionCopy setExportedObject:v9];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100185E5C;
    v30[3] = &unk_1008CE028;
    v30[4] = self;
    v31 = v9;
    [connectionCopy setInvalidationHandler:v30];
    [connectionCopy setRemoteObjectInterface:v14];
    [connectionCopy resume];
    if (dword_100971A10 <= 20 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100192A40(connectionCopy);
    }
  }

  else
  {
    if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100192A20();
    }

    [(NSMutableSet *)self->_xpcConnections removeObject:v9];
  }

  return xpcListener == listenerCopy;
}

- (void)_connectionInvalidated:(id)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
}

- (void)stateAppendXPCConnections:(id *)connections
{
  NSAppendPrintF(connections, "-- XPC connections --\n");
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_xpcConnections;
  v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        NSAppendPrintF(connections, "%#{pid}", [*(v6 + 136) processIdentifier]);
        if ([*(v6 + 16) count])
        {
          v18 = i;
          NSAppendPrintF(connections, ", Assertions: ");
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v17 = v6;
          v7 = *(v6 + 16);
          v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = 0;
            v11 = *v20;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v20 != v11)
                {
                  objc_enumerationMutation(v7);
                }

                if (v10)
                {
                  v13 = ", ";
                }

                else
                {
                  v13 = "";
                }

                NSAppendPrintF(connections, "%s%@ (%ld total)", v13, *(*(&v19 + 1) + 8 * j), [(NSCountedSet *)self->_assertions countForObject:*(*(&v19 + 1) + 8 * j)]);
                ++v10;
              }

              v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v9);
          }

          v6 = v17;
          i = v18;
        }

        if (*(v6 + 25) == 1)
        {
          NSAppendPrintF(connections, ", BTUser");
        }

        if (*(v6 + 32))
        {
          NSAppendPrintF(connections, ", %@", *(v6 + 32));
        }

        if (*(v6 + 40))
        {
          NSAppendPrintF(connections, ", %@", *(v6 + 40));
        }

        if (*(v6 + 64))
        {
          NSAppendPrintF(connections, ", Note: %@", *(v6 + 64));
        }

        if (*(v6 + 72))
        {
          NSAppendPrintF(connections, ", PreventExit: '%@'", *(v6 + 72));
        }

        if (*(v6 + 88))
        {
          NSAppendPrintF(connections, ", %@", *(v6 + 88));
        }

        if (*(v6 + 96))
        {
          NSAppendPrintF(connections, ", %@", *(v6 + 96));
        }

        if (*(v6 + 104))
        {
          NSAppendPrintF(connections, ", %@", *(v6 + 104));
        }

        NSAppendPrintF(connections, "\n");
      }

      v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }
}

@end