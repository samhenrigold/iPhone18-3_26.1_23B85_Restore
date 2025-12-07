@interface W5PeerDiagnosticsManager
- (W5PeerDiagnosticsManager)initWithStatusManager:(id)manager;
- (id)gatherPeerDiagnostics;
- (id)gatherPeerTypes;
- (id)getDPSSummary;
- (id)getLQMSummary;
- (id)getWiFiStatus;
- (id)localDiagnostics;
- (int64_t)configureDiscoveryClientAndActivate;
- (void)beginPeerDiscovery;
- (void)dealloc;
- (void)invalidateDiscoveryClient;
- (void)registerCallbacksAndActivate;
- (void)registerRequestHandler;
- (void)requestDiagnostics:(id)diagnostics completionBlock:(id)block;
@end

@implementation W5PeerDiagnosticsManager

- (W5PeerDiagnosticsManager)initWithStatusManager:(id)manager
{
  self->_discoveryClientStatus = 0;
  v10.receiver = self;
  v10.super_class = W5PeerDiagnosticsManager;
  v4 = [(W5PeerDiagnosticsManager *)&v10 init];
  v5 = v4;
  if (!manager || !v4 || (v4->_status = manager, v6 = dispatch_queue_create("com.apple.wifid.peerdiagnosticsmanager", 0), (v5->_queue = v6) == 0))
  {

    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[W5PeerDiagnosticsManager initWithStatusManager:]";
      v13 = 2080;
      v14 = "W5PeerDiagnosticsManager.m";
      v15 = 1024;
      v16 = 95;
      LODWORD(v9) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) init error!", &v11, v9, LODWORD(v10.receiver));
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  self->_cachedPeerTypesResult = 0;

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5PeerDiagnosticsManager;
  [(W5PeerDiagnosticsManager *)&v4 dealloc];
}

- (void)invalidateDiscoveryClient
{
  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];

  objc_sync_enter(self);
  self->_discoveryClientStatus = 0;
  objc_sync_exit(self);
  self->_discoveryClient = 0;
}

- (int64_t)configureDiscoveryClientAndActivate
{
  objc_sync_enter(self);
  if (self->_discoveryClientStatus)
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[W5PeerDiagnosticsManager configureDiscoveryClientAndActivate]";
      v14 = 2080;
      v15 = "W5PeerDiagnosticsManager.m";
      v16 = 1024;
      v17 = 127;
      LODWORD(v10) = 28;
      discoveryClientStatus = 1;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v3, 0, "[wifivelocity] %s (%s:%u) Failed to configure discovery client, it's already active", &v12, v10, LODWORD(block[0]));
    }

    else
    {
      discoveryClientStatus = 1;
    }
  }

  else
  {
    objc_sync_exit(self);
    v5 = objc_alloc_init(RPCompanionLinkClient);
    self->_discoveryClient = v5;
    if (v5)
    {
      [(RPCompanionLinkClient *)v5 setInvalidationHandler:&stru_1000E3780];
      [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:&stru_1000E37A0];
      [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:&stru_1000E37C0];
      [(RPCompanionLinkClient *)self->_discoveryClient setDispatchQueue:self->_queue];
      [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:[(RPCompanionLinkClient *)self->_discoveryClient controlFlags]| 0x109102];
      objc_sync_enter(self);
      self->_discoveryClientStatus = 2;
      objc_sync_exit(self);
      v6 = dispatch_semaphore_create(0);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B304;
      block[3] = &unk_1000E1C98;
      block[4] = self;
      block[5] = v6;
      dispatch_async(queue, block);
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v6);
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[W5PeerDiagnosticsManager configureDiscoveryClientAndActivate]";
        v14 = 2080;
        v15 = "W5PeerDiagnosticsManager.m";
        v16 = 1024;
        v17 = 169;
        LODWORD(v10) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) discovery client activated successfully", &v12, v10, LODWORD(block[0]));
      }
    }

    objc_sync_enter(self);
    discoveryClientStatus = self->_discoveryClientStatus;
  }

  objc_sync_exit(self);
  return discoveryClientStatus;
}

- (id)gatherPeerTypes
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  objc_sync_enter(self);
  cachedPeerTypesResult = self->_cachedPeerTypesResult;
  objc_sync_exit(self);
  return cachedPeerTypesResult;
}

- (void)beginPeerDiscovery
{
  if (_os_feature_enabled_impl())
  {
    if ([(W5PeerDiagnosticsManager *)self configureDiscoveryClientAndActivate]== 2)
    {
      v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      v4 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10009B5E4;
      v5[3] = &unk_1000E1C98;
      v5[4] = v3;
      v5[5] = self;
      dispatch_source_set_event_handler(v3, v5);
      dispatch_activate(v3);
    }
  }
}

- (void)registerCallbacksAndActivate
{
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009BC38;
  v5[3] = &unk_1000E1C98;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(queue, v5);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
}

- (void)registerRequestHandler
{
  discoveryClient = self->_discoveryClient;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009BE48;
  v3[3] = &unk_1000E3810;
  v3[4] = self;
  [(RPCompanionLinkClient *)discoveryClient registerRequestID:@"com.apple.proximity.peerdiagnosticslink" options:0 handler:v3];
}

- (id)getWiFiStatus
{
  v3 = objc_alloc_init(NSMutableDictionary);
  wifiStatus = [(W5StatusManager *)self->_status wifiStatus];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", objc_msgSend(wifiStatus, "rssi")), @"RSSI"}];
  [v3 setObject:objc_msgSend(wifiStatus forKeyedSubscript:{"macAddress"), @"MAC"}];
  [v3 setObject:objc_msgSend(wifiStatus forKeyedSubscript:{"ssidString"), @"SSID"}];
  [v3 setObject:objc_msgSend(wifiStatus forKeyedSubscript:{"bssid"), @"BSSID"}];
  [wifiStatus channel];
  [v3 setObject:W5DescriptionForChannel() forKeyedSubscript:@"Channel"];
  return v3;
}

- (id)getLQMSummary
{
  if ([-[CWFInterface LQMSummary](-[W5StatusManager corewifi](self->_status "corewifi")])
  {

    return _CWFDebugDescriptionForLQMSummary();
  }

  else
  {
    v2 = sub_100098A04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "[W5PeerDiagnosticsManager getLQMSummary]";
      v7 = 2080;
      v8 = "W5PeerDiagnosticsManager.m";
      v9 = 1024;
      v10 = 316;
      v4 = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v2, 0, "[wifivelocity] %s (%s:%u) Failed to obtain LQM Summary", &v5, v4);
    }

    return 0;
  }
}

- (id)getDPSSummary
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_10009C3D0;
  v25 = sub_10009C3E0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (sub_10009C3EC())
  {
    v3 = dispatch_semaphore_create(0);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10009C4D8;
    v12 = &unk_1000E3838;
    v13 = v3;
    selfCopy = self;
    v15 = &v17;
    v16 = &v21;
    [objc_msgSend(sub_10009C3EC() sharedClientWithIdentifier:{@"wifivelocityd", "getDpsStatsandReply:", &v9}];
    v4 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      objc_sync_enter(self);
      *(v18 + 24) = 1;
      objc_sync_exit(self);
      v5 = sub_100098A04();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136315906;
        v28 = "[W5PeerDiagnosticsManager getDPSSummary]";
        v29 = 2080;
        v30 = "W5PeerDiagnosticsManager.m";
        v31 = 1024;
        v32 = 350;
        v33 = 1024;
        v34 = 2;
        LODWORD(v8) = 34;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) %d sec timeout waiting for summarized logs from wifianalyticsd", &v27, v8, v9, v10);
      }
    }

    dispatch_release(v3);
  }

  v6 = v22[5];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v6;
}

- (id)localDiagnostics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:objc_msgSend(-[RPCompanionLinkClient localDevice](self->_discoveryClient forKeyedSubscript:{"localDevice"), "model"), @"DeviceModel"}];
  [v3 setObject:-[W5PeerDiagnosticsManager getWiFiStatus](self forKeyedSubscript:{"getWiFiStatus"), @"WiFiStatus"}];
  [v3 setObject:-[W5PeerDiagnosticsManager getDPSSummary](self forKeyedSubscript:{"getDPSSummary"), @"DPSSummary"}];
  [v3 setObject:-[W5PeerDiagnosticsManager getLQMSummary](self forKeyedSubscript:{"getLQMSummary"), @"LQMSummary"}];
  return v3;
}

- (void)requestDiagnostics:(id)diagnostics completionBlock:(id)block
{
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[W5PeerDiagnosticsManager requestDiagnostics:completionBlock:]";
    v13 = 2080;
    v14 = "W5PeerDiagnosticsManager.m";
    v15 = 1024;
    v16 = 372;
    v17 = 2114;
    diagnosticsCopy = diagnostics;
    v8 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) sending peerdiagnostic request to %{public}@ ", &v11, v8);
  }

  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setControlFlags:{objc_msgSend(v7, "controlFlags") | 0x8102}];
  [v7 setDestinationDevice:diagnostics];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009C8DC;
  v10[3] = &unk_1000E1CE8;
  v10[4] = diagnostics;
  [v7 setInvalidationHandler:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009C9CC;
  v9[3] = &unk_1000E1E38;
  v9[4] = v7;
  v9[5] = block;
  [v7 activateWithCompletion:v9];
}

- (id)gatherPeerDiagnostics
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v25 = objc_alloc_init(NSMutableArray);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if ([-[RPCompanionLinkClient activeDevices](self->_discoveryClient "activeDevices")])
  {
    v3 = dispatch_group_create();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v5 = [activeDevices countByEnumeratingWithState:&v28 objects:v48 count:16];
    v7 = 0;
    if (v5)
    {
      v8 = *v29;
      *&v6 = 136315906;
      v24 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(activeDevices);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          if (![v10 model] || (objc_msgSend(objc_msgSend(v10, "model"), "containsString:", @"iPhone") & 1) != 0 || (objc_msgSend(objc_msgSend(v10, "model"), "containsString:", @"iPad") & 1) != 0 || (objc_msgSend(objc_msgSend(v10, "model"), "containsString:", @"Mac") & 1) != 0)
          {
            dispatch_group_enter(v3);
            ++v7;
            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10009D144;
            block[3] = &unk_1000E38B0;
            block[4] = self;
            block[5] = v10;
            block[7] = v3;
            block[8] = &v32;
            block[6] = v25;
            dispatch_async(queue, block);
          }

          else
          {
            v12 = sub_100098A04();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v36 = v24;
              v37 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
              v38 = 2080;
              v39 = "W5PeerDiagnosticsManager.m";
              v40 = 1024;
              v41 = 434;
              v42 = 2114;
              v43 = v10;
              LODWORD(v23) = 38;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) skipping device %{public}@", &v36, v23);
            }
          }

          v9 = v9 + 1;
        }

        while (v5 != v9);
        v13 = [activeDevices countByEnumeratingWithState:&v28 objects:v48 count:16];
        v5 = v13;
      }

      while (v13);
    }

    dispatch_group_enter(v3);
    v14 = self->_queue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10009D3D8;
    v26[3] = &unk_1000E1948;
    v26[4] = self;
    v26[5] = v25;
    v26[6] = v3;
    dispatch_async(v14, v26);
    v15 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v3, v15))
    {
      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315906;
        v37 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
        v38 = 2080;
        v39 = "W5PeerDiagnosticsManager.m";
        v40 = 1024;
        v41 = 473;
        v42 = 1024;
        LODWORD(v43) = 5;
        LODWORD(v23) = 34;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) %d sec timeout waiting for diagnosctic logs from peers", &v36, v23, v24, DWORD2(v24));
      }
    }

    if (v3)
    {
      dispatch_release(v3);
    }

    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [-[RPCompanionLinkClient activeDevices](self->_discoveryClient "activeDevices")];
      v19 = v33[3];
      v36 = 136316418;
      v37 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
      v38 = 2080;
      v39 = "W5PeerDiagnosticsManager.m";
      v40 = 1024;
      v41 = 478;
      v42 = 2048;
      v43 = v18;
      v44 = 2048;
      v45 = v7;
      v46 = 2048;
      v47 = v19;
      LODWORD(v23) = 58;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) active peers %lu, requested peers %lu, responses %lu", &v36, v23);
    }
  }

  else
  {
    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136315650;
      v37 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
      v38 = 2080;
      v39 = "W5PeerDiagnosticsManager.m";
      v40 = 1024;
      v41 = 424;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) No active clients, returning", &v36, 28);
    }
  }

  objc_sync_enter(self);
  v20 = [v25 copy];
  objc_sync_exit(self);
  _Block_object_dispose(&v32, 8);
  return v20;
}

@end