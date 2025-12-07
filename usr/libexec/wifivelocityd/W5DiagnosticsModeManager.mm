@interface W5DiagnosticsModeManager
- (BOOL)_isFaultSupported:(int64_t)supported;
- (BOOL)_shouldShowNotification:(int64_t)notification;
- (BOOL)registerPeer:(id)peer role:(int64_t)role configuration:(id)configuration error:(id *)error;
- (BOOL)unregisterPeer:(id)peer role:(int64_t)role error:(id *)error;
- (NSArray)activeDiagnostics;
- (NSArray)allDiagnostics;
- (NSArray)registeredPeers;
- (W5DiagnosticsModeManager)initWithNetUsageManager:(id)manager peerManager:(id)peerManager userNotificationManager:(id)notificationManager snifferManager:(id)snifferManager statusManager:(id)statusManager logManager:(id)logManager;
- (id)_actionHandler;
- (id)finishedDiagnostics;
- (int64_t)registeredRoleForPeer:(id)peer;
- (void)__collectNetUsageFiles:(id)files uuid:(id)uuid;
- (void)__waitForLogRequestToComplete:(id)complete maxWait:(unint64_t)wait;
- (void)__writeDiagnosticModeToFile:(id)file file:(id)a4;
- (void)__writePeerStatusToFile:(id)file;
- (void)_archiveAndCollectLogs:(id)logs logCollectionPath:(id)path outputDirectory:(id)directory maxWait:(unint64_t)wait;
- (void)_collectAnalyticsCSVsForDiagnosticMode:(id)mode;
- (void)_collectNetworkInfoForDiagnosticMode:(id)mode;
- (void)_collectSystemLogsForDiagnosticMode:(id)mode;
- (void)_finishedProcessingDiagnosticMode:(id)mode;
- (void)_notifyPeers:(id)peers info:(id)info;
- (void)_queryDebugConfigurationForPeer:(id)peer reply:(id)reply;
- (void)_runDiagnosticsForDiagnosticMode:(id)mode;
- (void)_showSuggestedStartNotificationForEvent:(id)event;
- (void)_showSuggestedStopNotificationForEvent:(id)event;
- (void)_startDiagnosticsModeWithConfiguration:(id)configuration currentPeer:(id)peer reply:(id)reply;
- (void)_stopDiagnosticsMode:(id)mode currentPeer:(id)peer info:(id)info reply:(id)reply;
- (void)_storeSnifferInfo:(id)info peer:(id)peer uuid:(id)uuid path:(id)path;
- (void)_updateDiagnosticsMode:(id)mode incomingMode:(id)incomingMode currentPeer:(id)peer reply:(id)reply;
- (void)collectLogsDiagnosticMode:(id)mode outputName:(id)name reply:(id)reply;
- (void)handlePeerFaultEvent:(id)event;
- (void)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply;
- (void)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply;
- (void)updateDiagnosticsMode:(id)mode reply:(id)reply;
@end

@implementation W5DiagnosticsModeManager

- (W5DiagnosticsModeManager)initWithNetUsageManager:(id)manager peerManager:(id)peerManager userNotificationManager:(id)notificationManager snifferManager:(id)snifferManager statusManager:(id)statusManager logManager:(id)logManager
{
  managerCopy = manager;
  peerManagerCopy = peerManager;
  notificationManagerCopy = notificationManager;
  snifferManagerCopy = snifferManager;
  statusManagerCopy = statusManager;
  logManagerCopy = logManager;
  v35.receiver = self;
  v35.super_class = W5DiagnosticsModeManager;
  v18 = [(W5DiagnosticsModeManager *)&v35 init];
  objc_storeStrong(&v18->_netUsageManager, manager);
  if (peerManagerCopy && (objc_storeStrong(&v18->_peerManager, peerManager), snifferManagerCopy))
  {
    objc_storeStrong(&v18->_snifferManager, snifferManager);
    v20 = statusManagerCopy;
    v19 = notificationManagerCopy;
    if (logManagerCopy)
    {
      objc_storeStrong(&v18->_logManager, logManager);
      objc_storeStrong(&v18->_userNotificationManager, notificationManager);
      objc_storeStrong(&v18->_statusManager, statusManager);
      v21 = objc_alloc_init(W5DiagnosticsModeStore);
      store = v18->_store;
      v18->_store = v21;

      v23 = objc_alloc_init(W5DiagnosticsModeLocalStore);
      localStore = v18->_localStore;
      v18->_localStore = v23;

      v25 = +[NSMutableArray array];
      processors = v18->_processors;
      v18->_processors = v25;

      v27 = +[NSMutableDictionary dictionary];
      lastNotificationTimestamp = v18->_lastNotificationTimestamp;
      v18->_lastNotificationTimestamp = v27;

      faultEventManager = v18->_faultEventManager;
      v18->_faultEventManager = 0;
    }

    else
    {
      faultEventManager = v18;
      v18 = 0;
    }

    v30 = managerCopy;
  }

  else
  {
    faultEventManager = v18;
    v18 = 0;
    v19 = notificationManagerCopy;
    v30 = managerCopy;
    v20 = statusManagerCopy;
  }

  return v18;
}

- (void)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315906;
    v24 = "[W5DiagnosticsModeManager startDiagnosticsModeWithConfiguration:reply:]";
    v25 = 2080;
    v26 = "W5DiagnosticsModeManager.m";
    v27 = 1024;
    v28 = 147;
    v29 = 2114;
    v30 = configurationCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) [DM] starting with info='%{public}@'", &v23, 38);
  }

  v9 = [configurationCopy objectForKeyedSubscript:@"Peers"];
  if (v9)
  {
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v12 = sub_10009161C(v9, peerID);

    if (v12)
    {
      [(W5DiagnosticsModeManager *)self _startDiagnosticsModeWithConfiguration:configurationCopy currentPeer:v12 reply:replyCopy];
    }

    else
    {
      v15 = sub_100098A04();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v24 = "[W5DiagnosticsModeManager startDiagnosticsModeWithConfiguration:reply:]";
        v25 = 2080;
        v26 = "W5DiagnosticsModeManager.m";
        v27 = 1024;
        v28 = 158;
        v29 = 2114;
        v30 = v9;
        LODWORD(v18) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) [DM] missing current peer in peers list='%{public}@'", &v23, v18);
      }

      v19 = NSLocalizedFailureReasonErrorKey;
      v20 = @"W5ParamErr";
      v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v16];
      replyCopy[2](replyCopy, 0, v17);

      v12 = 0;
    }
  }

  else
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315906;
      v24 = "[W5DiagnosticsModeManager startDiagnosticsModeWithConfiguration:reply:]";
      v25 = 2080;
      v26 = "W5DiagnosticsModeManager.m";
      v27 = 1024;
      v28 = 151;
      v29 = 2114;
      v30 = configurationCopy;
      LODWORD(v18) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) [DM] missing peers info='%{public}@'", &v23, v18);
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"W5ParamErr";
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v12];
    replyCopy[2](replyCopy, 0, v14);
  }
}

- (void)_startDiagnosticsModeWithConfiguration:(id)configuration currentPeer:(id)peer reply:(id)reply
{
  configurationCopy = configuration;
  peerCopy = peer;
  replyCopy = reply;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315394;
    *&v24[4] = "[W5DiagnosticsModeManager _startDiagnosticsModeWithConfiguration:currentPeer:reply:]";
    *&v24[12] = 2114;
    *&v24[14] = configurationCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s: [DM] config='%{public}@'", v24, 22);
  }

  v12 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:peerCopy];
  if (v12)
  {
    [(NSMutableArray *)self->_processors addObject:v12];
    *v24 = 0;
    *&v24[8] = v24;
    *&v24[16] = 0x3032000000;
    v25 = sub_100002E48;
    v26 = sub_100002E58;
    v13 = os_transaction_create();
    v14 = +[W5ActivityManager sharedActivityManager];
    [v14 osTransactionCreate:"_startDiagnosticsModeWithConfiguration" transaction:v13];

    v27 = v13;
    _actionHandler = [(W5DiagnosticsModeManager *)self _actionHandler];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100002E60;
    v18[3] = &unk_1000E1000;
    v22 = replyCopy;
    v19 = peerCopy;
    selfCopy = self;
    v21 = v12;
    v23 = v24;
    [(W5DiagnosticsModeProcessor *)v21 performStartOperationsWithConfiguration:configurationCopy handler:_actionHandler completion:v18];

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v28 = NSLocalizedFailureReasonErrorKey;
    v29 = @"W5InternalErr";
    v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }
}

- (void)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply
{
  dCopy = d;
  infoCopy = info;
  replyCopy = reply;
  v11 = [infoCopy objectForKeyedSubscript:@"Peer"];
  store = [(W5DiagnosticsModeManager *)self store];
  v13 = [store diagnosticsModeMatchingUUID:dCopy];

  if (!(v13 | v11))
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315394;
      v33 = "[W5DiagnosticsModeManager stopDiagnosticsModeWithUUID:info:reply:]";
      v34 = 2114;
      v35 = dCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s: [DM] no mode matching UUID='%{public}@'", &v32, 22);
    }

    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = @"W5ParamErr";
    v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v17];
    replyCopy[2](replyCopy, v21);

    goto LABEL_11;
  }

  if (v13)
  {
    peers = [v13 peers];
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v17 = sub_10009161C(peers, peerID);

    v18 = [W5DiagnosticsModePeer alloc];
    if (v17)
    {
      role = [v17 role];
    }

    else
    {
      role = 8;
    }

    localPeer2 = [(W5DiagnosticsModeManager *)self localPeer];
    v23 = [v18 initWithRole:role peer:localPeer2];

    [(W5DiagnosticsModeManager *)self _stopDiagnosticsMode:v13 currentPeer:v23 info:infoCopy reply:replyCopy];
LABEL_11:

    goto LABEL_12;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003410;
  v24[3] = &unk_1000E1028;
  v25 = dCopy;
  selfCopy = self;
  v27 = infoCopy;
  v29 = replyCopy;
  v28 = v11;
  [(W5DiagnosticsModeManager *)self _queryDebugConfigurationForPeer:v28 reply:v24];

LABEL_12:
}

- (void)_stopDiagnosticsMode:(id)mode currentPeer:(id)peer info:(id)info reply:(id)reply
{
  modeCopy = mode;
  peerCopy = peer;
  infoCopy = info;
  replyCopy = reply;
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 136315394;
    *&v27[4] = "[W5DiagnosticsModeManager _stopDiagnosticsMode:currentPeer:info:reply:]";
    *&v27[12] = 2114;
    *&v27[14] = modeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s: [DM] mode='%{public}@'", v27, 22);
  }

  v15 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:peerCopy];
  if (v15)
  {
    [(NSMutableArray *)self->_processors addObject:v15];
    *v27 = 0;
    *&v27[8] = v27;
    *&v27[16] = 0x3032000000;
    v28 = sub_100002E48;
    v29 = sub_100002E58;
    v16 = os_transaction_create();
    v17 = +[W5ActivityManager sharedActivityManager];
    [v17 osTransactionCreate:"_stopDiagnosticsMode" transaction:v16];

    v30 = v16;
    _actionHandler = [(W5DiagnosticsModeManager *)self _actionHandler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100003B3C;
    v21[3] = &unk_1000E1000;
    v25 = replyCopy;
    v22 = peerCopy;
    selfCopy = self;
    v24 = v15;
    v26 = v27;
    [(W5DiagnosticsModeProcessor *)v24 performStopOperationsForMode:modeCopy handler:_actionHandler completion:v21];

    _Block_object_dispose(v27, 8);
  }

  else
  {
    v31 = NSLocalizedFailureReasonErrorKey;
    v32 = @"W5InternalErr";
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, v20);
  }
}

- (void)_queryDebugConfigurationForPeer:(id)peer reply:(id)reply
{
  replyCopy = reply;
  peerCopy = peer;
  v8 = [W5PeerDebugConfigurationRequest alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003EF4;
  v13[3] = &unk_1000E1050;
  v9 = replyCopy;
  v14 = v9;
  v10 = [(W5PeerDebugConfigurationRequest *)v8 initWithPeer:peerCopy type:1 debugConfiguration:0 reply:v13];

  v11 = [(W5PeerManager *)self->_peerManager sendDebugConfigurationForPeerWithRequest:v10];
  v12 = v11;
  if (v9 && v11)
  {
    (*(v9 + 2))(v9, 0, v11);
  }
}

- (void)updateDiagnosticsMode:(id)mode reply:(id)reply
{
  modeCopy = mode;
  replyCopy = reply;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 136316162;
    v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
    v59 = 2080;
    v60 = "W5DiagnosticsModeManager.m";
    v61 = 1024;
    v62 = 309;
    v63 = 2080;
    v64 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
    v65 = 2114;
    v66 = modeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) %s: [DM] incoming update mode='%{public}@'", &v57, 48);
  }

  if (modeCopy)
  {
    peers = [modeCopy peers];
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v12 = sub_10009161C(peers, peerID);

    if (!v12)
    {
      v34 = sub_100098A04();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        peers2 = [modeCopy peers];
        v57 = 136315906;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 319;
        v63 = 2114;
        v64 = peers2;
        LODWORD(v44) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v34, 0, "[wifivelocity] %s (%s:%u) [DM] missing current peer in peers list='%{public}@'", &v57, v44);
      }

      v70 = NSLocalizedFailureReasonErrorKey;
      v71 = @"W5ParamErr";
      v22 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v23 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v22];
      replyCopy[2](replyCopy, v23);
      goto LABEL_35;
    }

    v46 = replyCopy;
    v47 = modeCopy;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    selfCopy = self;
    activeDiagnostics = [(W5DiagnosticsModeManager *)self activeDiagnostics];
    v14 = [activeDiagnostics countByEnumeratingWithState:&v51 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(activeDiagnostics);
        }

        v18 = *(*(&v51 + 1) + 8 * v17);
        peers3 = [v18 peers];
        peer = [v12 peer];
        peerID2 = [peer peerID];
        v22 = sub_10009161C(peers3, peerID2);

        if (v22)
        {
          if (([v22 role] & 1) != 0 || (objc_msgSend(v22, "role") & 2) != 0)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [activeDiagnostics countByEnumeratingWithState:&v51 objects:v69 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }

      v23 = v18;

      uuid = [v23 uuid];
      modeCopy = v47;
      uuid2 = [v47 uuid];
      v27 = [uuid isEqual:uuid2];

      if (v27)
      {
        goto LABEL_20;
      }

      v36 = sub_100098A04();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 136316418;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 341;
        v63 = 2080;
        v64 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v65 = 2114;
        v66 = v22;
        v67 = 2114;
        v68 = v23;
        LODWORD(v44) = 58;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v36, 0, "[wifivelocity] %s (%s:%u) %s: [DM] current peer ('%{public}@') is already active in mode='%{public}@'", &v57, v44);
      }

      peer2 = [v22 peer];
      name = [peer2 name];
      [v22 peer];
      v40 = v39 = v23;
      peerID3 = [v40 peerID];
      uuid3 = [v39 uuid];
      v30 = [NSString stringWithFormat:@"Device ('%@ - %@') is already in active diagnostics (UUID='%@')", name, peerID3, uuid3];

      v23 = v39;
      v55 = NSLocalizedFailureReasonErrorKey;
      v56 = @"W5NotPermittedErr";
      v32 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v43 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v32];
      replyCopy = v46;
      v46[2](v46, v43);

      goto LABEL_34;
    }

LABEL_15:

    v22 = 0;
    v23 = 0;
    modeCopy = v47;
LABEL_20:
    store = [(W5DiagnosticsModeManager *)selfCopy store];
    uuid4 = [modeCopy uuid];
    v30 = [store diagnosticsModeMatchingUUID:uuid4];

    replyCopy = v46;
    if (v30)
    {
      state = [v30 state];
      v32 = sub_100098A04();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (state == 10)
      {
        if (v33)
        {
          v57 = 136315650;
          v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
          v59 = 2080;
          v60 = "W5DiagnosticsModeManager.m";
          v61 = 1024;
          v62 = 350;
          LODWORD(v44) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v32, 0, "[wifivelocity] %s (%s:%u) [DM] Locally stored DM is already for waiting for collection, returning", &v57, v44, v45);
        }

        goto LABEL_34;
      }

      if (v33)
      {
        v57 = 136315906;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 354;
        v63 = 2112;
        v64 = v30;
        LODWORD(v44) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v32, 0, "[wifivelocity] %s (%s:%u) [DM] Updating existing local mode: %@", &v57, v44);
      }
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100004864;
    v49[3] = &unk_1000E1078;
    v50 = v46;
    [(W5DiagnosticsModeManager *)selfCopy _updateDiagnosticsMode:v30 incomingMode:modeCopy currentPeer:v12 reply:v49];
    v32 = v50;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v24 = sub_100098A04();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 136315650;
    v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
    v59 = 2080;
    v60 = "W5DiagnosticsModeManager.m";
    v61 = 1024;
    v62 = 311;
    LODWORD(v44) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v24, 0, "[wifivelocity] %s (%s:%u) [DM] mode is nil", &v57, v44, v45);
  }

  v72 = NSLocalizedFailureReasonErrorKey;
  v73 = @"W5ParamErr";
  v12 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v22 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v12];
  replyCopy[2](replyCopy, v22);
LABEL_36:
}

- (void)_updateDiagnosticsMode:(id)mode incomingMode:(id)incomingMode currentPeer:(id)peer reply:(id)reply
{
  modeCopy = mode;
  incomingModeCopy = incomingMode;
  peerCopy = peer;
  replyCopy = reply;
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315394;
    *&v25[4] = "[W5DiagnosticsModeManager _updateDiagnosticsMode:incomingMode:currentPeer:reply:]";
    *&v25[12] = 2114;
    *&v25[14] = incomingModeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s: [DM] incoming mode='%{public}@'", v25, 22);
  }

  v15 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:peerCopy];
  if (v15)
  {
    [(NSMutableArray *)self->_processors addObject:v15];
    *v25 = 0;
    *&v25[8] = v25;
    *&v25[16] = 0x3032000000;
    v26 = sub_100002E48;
    v27 = sub_100002E58;
    v16 = os_transaction_create();
    v17 = +[W5ActivityManager sharedActivityManager];
    [v17 osTransactionCreate:"_updateDiagnosticsMode" transaction:v16];

    v28 = v16;
    _actionHandler = [(W5DiagnosticsModeManager *)self _actionHandler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100004B90;
    v21[3] = &unk_1000E10C8;
    v23 = replyCopy;
    v21[4] = self;
    v22 = v15;
    v24 = v25;
    [(W5DiagnosticsModeProcessor *)v22 performUpdateOperationsForMode:modeCopy incomingMode:incomingModeCopy handler:_actionHandler completion:v21];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"W5InternalErr";
    v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, v20);
  }
}

- (id)_actionHandler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004E84;
  v5[3] = &unk_1000E1248;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (void)_storeSnifferInfo:(id)info peer:(id)peer uuid:(id)uuid path:(id)path
{
  pathCopy = path;
  uuidCopy = uuid;
  peerCopy = peer;
  infoCopy = info;
  info = [peerCopy info];
  [info setObject:uuidCopy forKey:@"UUID"];

  info2 = [peerCopy info];

  [info2 setObject:pathCopy forKey:@"path"];
  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v18[0] = @"UUID";
  v18[1] = @"path";
  v19[0] = uuidCopy;
  v19[1] = pathCopy;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  [localStore addToStore:infoCopy newInfo:v17];
}

- (void)collectLogsDiagnosticMode:(id)mode outputName:(id)name reply:(id)reply
{
  modeCopy = mode;
  nameCopy = name;
  replyCopy = reply;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v76 = 136315906;
    v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
    v78 = 2080;
    v79 = "W5DiagnosticsModeManager.m";
    v80 = 1024;
    v81 = 804;
    v82 = 2112;
    v83 = modeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) [DM] Received log collection request with configuration:%@", &v76, 38);
  }

  v12 = [NSUUID alloc];
  v13 = [(NSError *)modeCopy objectForKey:@"DiagnosticsModeUUID"];
  v14 = [v12 initWithUUIDString:v13];

  store = [(W5DiagnosticsModeManager *)self store];
  v16 = store;
  if (v14)
  {
    firstObject = [store diagnosticsModeMatchingUUID:v14];
LABEL_7:
    v19 = firstObject;
    goto LABEL_8;
  }

  v18 = [store diagnosticsModeWithState:10];

  v16 = [v18 sortedArrayUsingSelector:"compareCollectionTimeLatestFirst:"];

  if ([v16 count])
  {
    firstObject = [v16 firstObject];
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:

  v20 = sub_100098A04();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v76 = 136315906;
      v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
      v78 = 2080;
      v79 = "W5DiagnosticsModeManager.m";
      v80 = 1024;
      v81 = 829;
      v82 = 2114;
      v83 = v19;
      LODWORD(v69) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting logs for dm='%{public}@'", &v76, v69);
    }

    peers = [(NSError *)v19 peers];
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v25 = sub_10009161C(peers, peerID);

    if (v25)
    {
      v72 = v14;
      role = [v25 role];
      v27 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
      v74 = nameCopy;
      v28 = [v27 URLByAppendingPathComponent:nameCopy];

      v29 = [(NSError *)modeCopy objectForKeyedSubscript:@"Compress"];
      bOOLValue = [v29 BOOLValue];

      HIDWORD(v70) = bOOLValue;
      if (bOOLValue)
      {
        uRLByDeletingPathExtension = [(NSError *)v28 URLByDeletingPathExtension];

        v28 = uRLByDeletingPathExtension;
      }

      v73 = modeCopy;
      v32 = +[NSFileManager defaultManager];
      path = [(NSError *)v28 path];
      [v32 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

      v34 = [(NSError *)v28 URLByAppendingPathComponent:@"status.txt"];
      [(W5DiagnosticsModeManager *)self __writePeerStatusToFile:v34];

      v35 = [(NSError *)v28 URLByAppendingPathComponent:@"diagnostic_mode.txt"];
      [(W5DiagnosticsModeManager *)self __writeDiagnosticModeToFile:v19 file:v35];

      if ((role & 4) == 0 && self->_netUsageManager)
      {
        uuid = [(NSError *)v19 uuid];
        v37 = [NSString stringWithFormat:@"DiagnosticsMode-%@-NetworkUsage", uuid];
        v38 = [(NSError *)v28 URLByAppendingPathComponent:v37];

        uuid2 = [(NSError *)v19 uuid];
        [(W5DiagnosticsModeManager *)self __collectNetUsageFiles:v38 uuid:uuid2];
      }

      localStore = [(W5DiagnosticsModeManager *)self localStore];
      v41 = [localStore infoMatchingDiagnosticMode:v19];

      if (v41)
      {
        if ((role & 4) != 0)
        {
          v42 = sub_100098A04();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v76 = 136315650;
            v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
            v78 = 2080;
            v79 = "W5DiagnosticsModeManager.m";
            v80 = 1024;
            v81 = 869;
            LODWORD(v70) = 28;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v42, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting Sniffer capture", &v76, v70, v72);
          }

          v43 = [(NSError *)v41 objectForKey:@"path"];
          [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:0 logCollectionPath:v43 outputDirectory:v28 maxWait:0];
        }

        v44 = sub_100098A04();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136315650;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 876;
          LODWORD(v70) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v44, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting WiFi DE Test Logs", &v76, v70, v72);
        }

        v45 = [(NSError *)v41 objectForKey:@"diagnosticTestsRequestUUID"];
        v46 = [(NSError *)v41 objectForKey:@"TestOutputDirectory"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v45 logCollectionPath:v46 outputDirectory:v28 maxWait:240];

        v47 = sub_100098A04();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136315650;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 882;
          LODWORD(v70) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v47, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting WiFi Analytics CSVs", &v76, v70, v72);
        }

        v48 = [(NSError *)v41 objectForKey:@"analyticsCSVsRequestUUID"];
        v49 = [(NSError *)v41 objectForKey:@"analyticsCSVsOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v48 logCollectionPath:v49 outputDirectory:v28 maxWait:240];

        v50 = sub_100098A04();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136315650;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 888;
          LODWORD(v70) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v50, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting System Logarchive", &v76, v70, v72);
        }

        v51 = [(NSError *)v41 objectForKey:@"systemLogsRequestUUID"];
        v52 = [(NSError *)v41 objectForKey:@"systemLogsOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v51 logCollectionPath:v52 outputDirectory:v28 maxWait:240];

        v53 = sub_100098A04();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136315650;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 894;
          LODWORD(v70) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v53, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting Network Info Logs", &v76, v70, v72);
        }

        v54 = [(NSError *)v41 objectForKey:@"networkInfoGenUUID"];
        [(W5DiagnosticsModeManager *)self __waitForLogRequestToComplete:v54 maxWait:100];

        v55 = [(NSError *)v41 objectForKey:@"networkInfoCollectUUID"];
        v56 = [(NSError *)v41 objectForKey:@"networkInfoOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v55 logCollectionPath:v56 outputDirectory:v28 maxWait:180];

        v57 = sub_100098A04();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136315650;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 901;
          LODWORD(v70) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v57, 0, "[wifivelocity] %s (%s:%u) [DM] Collecting TCPDump Logs", &v76, v70, v72);
        }

        v58 = [(NSError *)v41 objectForKey:@"tcpdumpOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:0 logCollectionPath:v58 outputDirectory:v28 maxWait:0];
      }

      else
      {
        v58 = sub_100098A04();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136315906;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 908;
          v82 = 2112;
          v83 = v19;
          LODWORD(v70) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v58, 0, "[wifivelocity] %s (%s:%u) [DM] no local store URL for dm='%@'", &v76, v70);
        }
      }

      if (HIDWORD(v70))
      {
        v62 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
        v63 = [v62 URLByAppendingPathComponent:v74];

        v75 = 0;
        v64 = sub_100098A4C(v28, v63, &v75);
        v65 = v75;
        v66 = sub_100098A04();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 136316674;
          v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v78 = 2080;
          v79 = "W5DiagnosticsModeManager.m";
          v80 = 1024;
          v81 = 917;
          v82 = 2112;
          v83 = v28;
          v84 = 2112;
          v85 = v63;
          v86 = 1024;
          v87 = v64;
          v88 = 2112;
          v89 = v65;
          LODWORD(v70) = 64;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v66, 0, "[wifivelocity] %s (%s:%u) [DM] Compress: %@ -> %@, success: %d, error: %@", &v76, v70);
        }

        v67 = v63;
      }

      else
      {
        v65 = 0;
        v67 = 0;
        v63 = v28;
      }

      [(NSError *)v19 setState:11];
      store2 = [(W5DiagnosticsModeManager *)self store];
      [store2 updateStoreWithDiagnosticsMode:v19];

      if (replyCopy)
      {
        replyCopy[2](replyCopy, v65, 0, v63);
      }

      v14 = v72;
    }

    else
    {
      v59 = sub_100098A04();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        localPeer2 = [(W5DiagnosticsModeManager *)self localPeer];
        peers2 = [(NSError *)v19 peers];
        v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
        v78 = 2080;
        v76 = 136316162;
        v79 = "W5DiagnosticsModeManager.m";
        v80 = 1024;
        v81 = 834;
        v82 = 2112;
        v83 = localPeer2;
        v84 = 2114;
        v85 = peers2;
        LODWORD(v69) = 48;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v59, 0, "[wifivelocity] %s (%s:%u) [DM] Local device (%@) not found in dm peer list='%{public}@'", &v76, v69);
      }

      if (!replyCopy)
      {
        v25 = 0;
        goto LABEL_53;
      }

      v73 = modeCopy;
      v74 = nameCopy;
      v90 = NSLocalizedFailureReasonErrorKey;
      v91 = @"W5NotPermittedErr";
      v28 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v41 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v28];
      replyCopy[2](replyCopy, v41, 0, 0);
    }

    modeCopy = v73;
LABEL_52:

    nameCopy = v74;
LABEL_53:

    goto LABEL_54;
  }

  if (v21)
  {
    v76 = 136315650;
    v77 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
    v78 = 2080;
    v79 = "W5DiagnosticsModeManager.m";
    v80 = 1024;
    v81 = 824;
    LODWORD(v69) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) [DM] No UUID specified and No Diagnostic Mode sessions waiting for collection.", &v76, v69, v71);
  }

  if (replyCopy)
  {
    v74 = nameCopy;
    v92 = NSLocalizedFailureReasonErrorKey;
    v93 = @"W5NotPermittedErr";
    v25 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    v28 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v25];
    replyCopy[2](replyCopy, v28, 0, 0);
    goto LABEL_52;
  }

LABEL_54:
}

- (void)_archiveAndCollectLogs:(id)logs logCollectionPath:(id)path outputDirectory:(id)directory maxWait:(unint64_t)wait
{
  logsCopy = logs;
  pathCopy = path;
  directoryCopy = directory;
  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136316418;
    v29 = "[W5DiagnosticsModeManager _archiveAndCollectLogs:logCollectionPath:outputDirectory:maxWait:]";
    v30 = 2080;
    v31 = "W5DiagnosticsModeManager.m";
    v32 = 1024;
    v33 = 929;
    v34 = 2112;
    v35 = logsCopy;
    v36 = 2112;
    v37 = pathCopy;
    v38 = 2112;
    v39[0] = directoryCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) [DM] Archive and collect logs UUID: %@, at: %@ to: %@", &v28, 58);
  }

  if (logsCopy)
  {
    [(W5DiagnosticsModeManager *)self __waitForLogRequestToComplete:logsCopy maxWait:wait];
  }

  if (pathCopy)
  {
    lastPathComponent = [(NSError *)pathCopy lastPathComponent];
    v15 = [NSString stringWithFormat:@"%@.tgz", lastPathComponent];

    v16 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v17 = [v16 URLByAppendingPathComponent:v15];

    v27 = 0;
    sub_100098A4C(pathCopy, v17, &v27);
    v18 = v27;
    if (v18)
    {
      v19 = sub_100098A04();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136316162;
        v29 = "[W5DiagnosticsModeManager _archiveAndCollectLogs:logCollectionPath:outputDirectory:maxWait:]";
        v30 = 2080;
        v31 = "W5DiagnosticsModeManager.m";
        v32 = 1024;
        v33 = 940;
        v34 = 2112;
        v35 = pathCopy;
        v36 = 2112;
        v37 = v18;
        LODWORD(v25) = 48;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v19, 0, "[wifivelocity] %s (%s:%u) [DM] failed to create tarball for logs at URL='%@', error='%@'", &v28, v25);
      }
    }

    else
    {
      v20 = +[NSFileManager defaultManager];
      v21 = [directoryCopy URLByAppendingPathComponent:v15];
      v26 = 0;
      v22 = [v20 moveItemAtURL:v17 toURL:v21 error:&v26];
      v19 = v26;

      v23 = sub_100098A04();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [directoryCopy URLByAppendingPathComponent:v15];
        v28 = 136316674;
        v29 = "[W5DiagnosticsModeManager _archiveAndCollectLogs:logCollectionPath:outputDirectory:maxWait:]";
        v30 = 2080;
        v31 = "W5DiagnosticsModeManager.m";
        v32 = 1024;
        v33 = 945;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = v24;
        v38 = 1024;
        LODWORD(v39[0]) = v22;
        WORD2(v39[0]) = 2112;
        *(v39 + 6) = v19;
        LODWORD(v25) = 64;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v23, 0, "[wifivelocity] %s (%s:%u) [DM] move log tarball: %@ -> %@, moved: %d, error: %@", &v28, v25);
      }
    }
  }
}

- (BOOL)registerPeer:(id)peer role:(int64_t)role configuration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  peerCopy = peer;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[W5CloudStore sharedStore];
    registeredPeers = [v12 registeredPeers];
    v21 = 136315906;
    v22 = "[W5DiagnosticsModeManager registerPeer:role:configuration:error:]";
    v23 = 2080;
    v24 = "W5DiagnosticsModeManager.m";
    v25 = 1024;
    v26 = 952;
    v27 = 2114;
    v28 = registeredPeers;
    v20 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) current peers='%{public}@'", &v21, v20);
  }

  v14 = [[W5DiagnosticsModePeer alloc] initWithRole:role peer:peerCopy];
  v15 = sub_100098A04();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315906;
    v22 = "[W5DiagnosticsModeManager registerPeer:role:configuration:error:]";
    v23 = 2080;
    v24 = "W5DiagnosticsModeManager.m";
    v25 = 1024;
    v26 = 954;
    v27 = 2114;
    v28 = v14;
    LODWORD(v19) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) registering peer='%{public}@'", &v21, v19);
  }

  v16 = +[W5CloudStore sharedStore];
  v17 = [v16 registerDiagnosticModePeer:v14 configuration:configurationCopy error:error];

  return v17;
}

- (BOOL)unregisterPeer:(id)peer role:(int64_t)role error:(id *)error
{
  peerCopy = peer;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[W5CloudStore sharedStore];
    registeredPeers = [v9 registeredPeers];
    v18 = 136315906;
    v19 = "[W5DiagnosticsModeManager unregisterPeer:role:error:]";
    v20 = 2080;
    v21 = "W5DiagnosticsModeManager.m";
    v22 = 1024;
    v23 = 960;
    v24 = 2114;
    v25 = registeredPeers;
    v17 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) current peers='%{public}@'", &v18, v17);
  }

  v11 = [[W5DiagnosticsModePeer alloc] initWithRole:role peer:peerCopy];
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[W5DiagnosticsModeManager unregisterPeer:role:error:]";
    v20 = 2080;
    v21 = "W5DiagnosticsModeManager.m";
    v22 = 1024;
    v23 = 962;
    v24 = 2114;
    v25 = v11;
    LODWORD(v16) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) unregistering peer='%{public}@'", &v18, v16);
  }

  v13 = +[W5CloudStore sharedStore];
  v14 = [v13 unregisterDiagnosticModePeer:v11 error:error];

  return v14;
}

- (void)__waitForLogRequestToComplete:(id)complete maxWait:(unint64_t)wait
{
  completeCopy = complete;
  if ([(W5LogManager *)self->_logManager isRequestActiveOrPending:completeCopy])
  {
    v7 = (wait / 0xA);
    if (v7)
    {
      v8 = 1;
      v9 = 10;
      while (1)
      {
        v10 = dispatch_semaphore_create(0);
        v11 = sub_100098A04();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v22 = "[W5DiagnosticsModeManager __waitForLogRequestToComplete:maxWait:]";
          v23 = 2080;
          v24 = "W5DiagnosticsModeManager.m";
          v25 = 1024;
          v26 = 974;
          v27 = 2048;
          v28 = 10;
          v29 = 2112;
          v30 = completeCopy;
          v31 = 2048;
          v32 = v8;
          LODWORD(v18) = 58;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) Waiting for additional %ld seconds to let log request: %@ to complete, attempt: %ld", buf, v18);
        }

        v12 = dispatch_time(0, 10000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000A050;
        block[3] = &unk_1000E1270;
        v13 = v10;
        v20 = v13;
        dispatch_after(v12, &_dispatch_main_q, block);
        v14 = dispatch_time(0, 80000000000);
        if (dispatch_semaphore_wait(v13, v14) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v22 = 0x4054000000000000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
        }

        v15 = [(W5LogManager *)self->_logManager isRequestActiveOrPending:completeCopy];
        v16 = sub_100098A04();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if ((v15 & 1) == 0)
        {
          break;
        }

        if (v17)
        {
          *buf = 136316162;
          v22 = "[W5DiagnosticsModeManager __waitForLogRequestToComplete:maxWait:]";
          v23 = 2080;
          v24 = "W5DiagnosticsModeManager.m";
          v25 = 1024;
          v26 = 985;
          v27 = 2112;
          v28 = completeCopy;
          v29 = 2048;
          v30 = v9;
          LODWORD(v18) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) Log request: %@ still active/pending, continuing wait. Waited (till now): %ld seconds", buf, v18);
        }

        ++v8;
        v9 += 10;
        if (v8 > v7)
        {
          goto LABEL_17;
        }
      }

      if (v17)
      {
        *buf = 136316162;
        v22 = "[W5DiagnosticsModeManager __waitForLogRequestToComplete:maxWait:]";
        v23 = 2080;
        v24 = "W5DiagnosticsModeManager.m";
        v25 = 1024;
        v26 = 982;
        v27 = 2112;
        v28 = completeCopy;
        v29 = 2048;
        v30 = v9;
        LODWORD(v18) = 48;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) Log request: %@ no longer active/pending, ending wait. Waited: %ld seconds", buf, v18);
      }
    }
  }

LABEL_17:
}

- (void)__writePeerStatusToFile:(id)file
{
  fileCopy = file;
  statusManager = self->_statusManager;
  if (statusManager)
  {
    status = [(W5StatusManager *)statusManager status];
    if (!status)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315650;
        *&v13[4] = "[W5DiagnosticsModeManager __writePeerStatusToFile:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) nil status", v13, 28, *v13);
      }

      goto LABEL_9;
    }

    v7 = +[NSFileManager defaultManager];
    path = [fileCopy path];
    v9 = [status description];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [v7 createFileAtPath:path contents:v10 attributes:0];

    if (v11)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = "[W5DiagnosticsModeManager __writePeerStatusToFile:]";
        *&v13[12] = 2080;
        *&v13[14] = "W5DiagnosticsModeManager.m";
        *&v13[22] = 1024;
        LODWORD(v14) = 999;
        WORD2(v14) = 2112;
        *(&v14 + 6) = fileCopy;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) Status File: %@", v13, 38, *v13, *&v13[8], v14);
      }

LABEL_9:
    }
  }

  else
  {
    status = 0;
  }
}

- (void)__writeDiagnosticModeToFile:(id)file file:(id)a4
{
  fileCopy = file;
  v6 = a4;
  if (!fileCopy)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315650;
      *&v13[4] = "[W5DiagnosticsModeManager __writeDiagnosticModeToFile:file:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) nil mode", v13, 28, *v13);
    }

    goto LABEL_7;
  }

  v7 = +[NSFileManager defaultManager];
  path = [v6 path];
  v9 = [fileCopy description];
  v10 = [v9 dataUsingEncoding:4];
  v11 = [v7 createFileAtPath:path contents:v10 attributes:0];

  if (v11)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315906;
      *&v13[4] = "[W5DiagnosticsModeManager __writeDiagnosticModeToFile:file:]";
      *&v13[12] = 2080;
      *&v13[14] = "W5DiagnosticsModeManager.m";
      *&v13[22] = 1024;
      LODWORD(v14) = 1013;
      WORD2(v14) = 2112;
      *(&v14 + 6) = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) Diagnostics Mode File: %@", v13, 38, *v13, *&v13[8], v14);
    }

LABEL_7:
  }
}

- (void)__collectNetUsageFiles:(id)files uuid:(id)uuid
{
  filesCopy = files;
  uuidCopy = uuid;
  v8 = +[NSFileManager defaultManager];
  v25 = 0;
  v9 = [v8 createDirectoryAtURL:filesCopy withIntermediateDirectories:1 attributes:0 error:&v25];
  v10 = v25;

  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136316418;
    v27 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
    v28 = 2080;
    v29 = "W5DiagnosticsModeManager.m";
    v30 = 1024;
    v31 = 1028;
    v32 = 2112;
    v33 = filesCopy;
    v34 = 1024;
    *v35 = v9;
    *&v35[4] = 2112;
    *&v35[6] = v10;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) Create Directory: %@, success: %d, error: %@", &v26, 54);
  }

  if (v9)
  {
    v12 = [(W5NetUsageManager *)self->_netUsageManager calculateUsageDelta:uuidCopy];
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
      v28 = 2080;
      v29 = "W5DiagnosticsModeManager.m";
      v30 = 1024;
      v31 = 1032;
      LODWORD(v23) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) Generating Network Usage Delta File", &v26, v23, v24);
    }

    v14 = [filesCopy URLByAppendingPathComponent:@"netusage_delta.csv"];
    [W5NetUsageManager writeProcNetUsage:v12 ToFile:v14];

    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
      v28 = 2080;
      v29 = "W5DiagnosticsModeManager.m";
      v30 = 1024;
      v31 = 1035;
      LODWORD(v23) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) Requesting Periodic Network Usage Data Files", &v26, v23, v24);
    }

    [W5NetUsageManager copyPeriodicNetUsageToDir:filesCopy uuid:uuidCopy];
    filesCopy = [NSString stringWithFormat:@"%@.tgz", filesCopy];
    v17 = [NSURL URLWithString:filesCopy];

    v24 = v10;
    v18 = sub_100098A4C(filesCopy, v17, &v24);
    v19 = v24;

    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136316674;
      v27 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
      v28 = 2080;
      v29 = "W5DiagnosticsModeManager.m";
      v30 = 1024;
      v31 = 1040;
      v32 = 2112;
      v33 = filesCopy;
      v34 = 2112;
      *v35 = v17;
      *&v35[8] = 1024;
      *&v35[10] = v18;
      v36 = 2112;
      v37 = v19;
      LODWORD(v23) = 64;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) Compress %@ -> %@, success:%d, error: %@", &v26, v23);
    }

    if (v18)
    {
      v21 = +[NSFileManager defaultManager];
      path = [filesCopy path];
      [v21 removeItemAtPath:path error:0];
    }
  }

  else
  {
    v19 = v10;
  }
}

- (void)handlePeerFaultEvent:(id)event
{
  eventCopy = event;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 136315906;
    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeManager.m";
    v89 = 1024;
    v90 = 1047;
    v91 = 2114;
    v92 = eventCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) [DM] received fault event='%{public}@'", &v85, 38);
  }

  info = [eventCopy info];
  v7 = [info objectForKeyedSubscript:@"RemoteListener"];

  peer = [eventCopy peer];
  peerID = [peer peerID];

  if (peerID)
  {
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID2 = [localPeer peerID];
    v12 = [peerID isEqualToString:peerID2];

    if (!v12)
    {
      info2 = [eventCopy info];
      v17 = [info2 objectForKey:@"DiagnosticMode"];

      if (v17)
      {
        v31 = sub_100098A04();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          peer2 = [eventCopy peer];
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v85 = 136316162;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1103;
          v91 = 2112;
          v92 = v17;
          v93 = 2114;
          v94 = peer2;
          LODWORD(v68) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v31, 0, "[wifivelocity] %s (%s:%u) [DM] Active DM instance: %@ reported by peer='%{public}@'", &v85, v68);
        }

        v33 = [W5DiagnosticsModePeer alloc];
        localPeer2 = [(W5DiagnosticsModeManager *)self localPeer];
        v35 = [v33 initWithRole:8 peer:localPeer2];

        peers = [v17 peers];
        v37 = sub_100091470(peers, v35, 8);

        if (!v37)
        {
LABEL_60:

          goto LABEL_67;
        }

        v70 = v35;
        v71 = v7;
        info3 = [eventCopy info];
        v39 = [info3 objectForKeyedSubscript:@"FaultType"];
        integerValue = [v39 integerValue];

        info4 = [v17 info];
        v42 = [info4 objectForKeyedSubscript:@"Faults"];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v43 = v42;
        v44 = [v43 countByEnumeratingWithState:&v72 objects:v83 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v73;
          while (2)
          {
            for (i = 0; i != v45; i = i + 1)
            {
              if (*v73 != v46)
              {
                objc_enumerationMutation(v43);
              }

              if ([*(*(&v72 + 1) + 8 * i) integerValue] == integerValue)
              {

                v65 = sub_100098A04();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = 136315650;
                  v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
                  v87 = 2080;
                  v88 = "W5DiagnosticsModeManager.m";
                  v89 = 1024;
                  v90 = 1131;
                  LODWORD(v68) = 28;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v65, 0, "[wifivelocity] %s (%s:%u) [DM] showing auto stop user notification", &v85, v68, v70);
                }

                v35 = v70;
                if (self->_userNotificationManager)
                {
                  [(W5DiagnosticsModeManager *)self _showSuggestedStopNotificationForEvent:eventCopy];
                  v7 = v71;
                }

                else
                {
                  v66 = sub_100098A04();
                  v7 = v71;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = 136315650;
                    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
                    v87 = 2080;
                    v88 = "W5DiagnosticsModeManager.m";
                    v89 = 1024;
                    v90 = 1138;
                    LODWORD(v68) = 28;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v66, 0, "[wifivelocity] %s (%s:%u) [DM] userNotificationManager is nil", &v85, v68, v70);
                  }
                }

                goto LABEL_60;
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v72 objects:v83 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v48 = sub_100098A04();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v85 = 136316162;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1127;
          v91 = 2048;
          v92 = integerValue;
          v93 = 2114;
          v94 = v43;
          LODWORD(v68) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v48, 0, "[wifivelocity] %s (%s:%u) [DM] received peer fault (%ld) that is not being monitored (monitoring='%{public}@')", &v85, v68);
        }

        goto LABEL_48;
      }

      localPeer3 = [(W5DiagnosticsModeManager *)self localPeer];
      peerID3 = [localPeer3 peerID];
      v55 = [v7 isEqualToString:peerID3];

      v56 = sub_100098A04();
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (!v55)
      {
        if (v57)
        {
          v85 = 136315906;
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1158;
          v91 = 2114;
          v92 = eventCopy;
          LODWORD(v68) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v56, 0, "[wifivelocity] %s (%s:%u) [DM] unhandled fault event='%{public}@'", &v85, v68);
        }

        goto LABEL_66;
      }

      if (v57)
      {
        v85 = 136315650;
        v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
        v87 = 2080;
        v88 = "W5DiagnosticsModeManager.m";
        v89 = 1024;
        v90 = 1145;
        LODWORD(v68) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v56, 0, "[wifivelocity] %s (%s:%u)  [DM] showing auto start user notification", &v85, v68, v69);
      }

      if (self->_userNotificationManager)
      {
        info5 = [eventCopy info];
        v59 = [info5 objectForKeyedSubscript:@"FaultType"];
        v60 = -[W5DiagnosticsModeManager _isFaultSupported:](self, "_isFaultSupported:", [v59 integerValue]);

        if (v60)
        {
          [(W5DiagnosticsModeManager *)self _showSuggestedStartNotificationForEvent:eventCopy];
LABEL_66:
          v17 = 0;
          goto LABEL_67;
        }

        v67 = sub_100098A04();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v85 = 136315906;
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1149;
          v91 = 2114;
          v92 = eventCopy;
          LODWORD(v68) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v67, 0, "[wifivelocity] %s (%s:%u) Unsupported fault event:'%{public}@'", &v85, v68);
        }
      }

      else
      {
        v67 = sub_100098A04();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v85 = 136315650;
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1153;
          LODWORD(v68) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v67, 0, "[wifivelocity] %s (%s:%u) [DM] userNotificationManager is nil", &v85, v68);
        }
      }

      goto LABEL_66;
    }
  }

  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 136315650;
    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeManager.m";
    v89 = 1024;
    v90 = 1053;
    LODWORD(v68) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) [DM] received fault event for local device", &v85, v68, v69);
  }

  store = [(W5DiagnosticsModeManager *)self store];
  localPeer4 = [(W5DiagnosticsModeManager *)self localPeer];
  peerID4 = [localPeer4 peerID];
  v17 = [store diagnosticsModeMatchingPeerID:peerID4 state:3 role:1];

  if ([v17 count])
  {
    v71 = v7;
    firstObject = [v17 firstObject];
    info6 = [eventCopy info];
    v20 = [info6 objectForKeyedSubscript:@"FaultType"];
    integerValue2 = [v20 integerValue];

    info7 = [firstObject info];
    v23 = [info7 objectForKeyedSubscript:@"Faults"];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v80;
      while (2)
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v80 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([*(*(&v79 + 1) + 8 * j) integerValue] == integerValue2)
          {

            [firstObject setState:4];
            info8 = [firstObject info];
            if (info8)
            {
              info9 = [firstObject info];
              v51 = [info9 mutableCopy];
            }

            else
            {
              v51 = +[NSMutableDictionary dictionary];
            }

            v61 = [NSNumber numberWithInteger:integerValue2];
            v84 = v61;
            v62 = [NSArray arrayWithObjects:&v84 count:1];
            [v51 setObject:v62 forKeyedSubscript:@"DetectedFaults"];

            [firstObject setInfo:v51];
            store2 = [(W5DiagnosticsModeManager *)self store];
            [store2 updateStoreWithDiagnosticsMode:firstObject];

            uuid = [firstObject uuid];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_10000B69C;
            v76[3] = &unk_1000E1298;
            v76[4] = self;
            v77 = eventCopy;
            v78 = firstObject;
            [(W5DiagnosticsModeManager *)self stopDiagnosticsModeWithUUID:uuid info:&__NSDictionary0__struct reply:v76];

            goto LABEL_47;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
      v87 = 2080;
      v85 = 136316162;
      v88 = "W5DiagnosticsModeManager.m";
      v89 = 1024;
      v90 = 1073;
      v91 = 2048;
      v92 = integerValue2;
      v93 = 2114;
      v94 = v24;
      LODWORD(v68) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v29, 0, "[wifivelocity] %s (%s:%u) [DM] received local fault (%ld) that is not being monitored (monitoring='%{public}@')", &v85, v68);
    }

    [(W5DiagnosticsModeManager *)self _notifyPeers:eventCopy info:0];
LABEL_47:

LABEL_48:
    v7 = v71;
    goto LABEL_67;
  }

  v52 = sub_100098A04();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 136315650;
    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeManager.m";
    v89 = 1024;
    v90 = 1093;
    LODWORD(v68) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v52, 0, "[wifivelocity] %s (%s:%u) [DM] no active DM instances for local device", &v85, v68, v69);
  }

  [(W5DiagnosticsModeManager *)self _notifyPeers:eventCopy info:0];
LABEL_67:
}

- (BOOL)_isFaultSupported:(int64_t)supported
{
  v4 = [&off_1000F34E0 objectAtIndex:0];
  integerValue = [v4 integerValue];

  if (integerValue == supported)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 3)
    {
      break;
    }

    ++v7;
    v9 = [&off_1000F34E0 objectAtIndex:v8 + 1];
    integerValue2 = [v9 integerValue];
  }

  while (integerValue2 != supported);
  return v8 < 3;
}

- (void)_notifyPeers:(id)peers info:(id)info
{
  peersCopy = peers;
  infoCopy = info;
  faultEventManager = self->_faultEventManager;
  v9 = sub_100098A04();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (faultEventManager)
  {
    if (v10)
    {
      v11 = 136315906;
      v12 = "[W5DiagnosticsModeManager _notifyPeers:info:]";
      v13 = 2080;
      v14 = "W5DiagnosticsModeManager.m";
      v15 = 1024;
      v16 = 1174;
      v17 = 2112;
      v18 = peersCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) Notifying registered peers for fault event: %@", &v11, 38);
    }

    [(W5FaultEventManager *)self->_faultEventManager notifyPeersWithFaultEvent:peersCopy info:infoCopy];
  }

  else
  {
    if (v10)
    {
      v11 = 136315650;
      v12 = "[W5DiagnosticsModeManager _notifyPeers:info:]";
      v13 = 2080;
      v14 = "W5DiagnosticsModeManager.m";
      v15 = 1024;
      v16 = 1178;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) nil W5FaultEventManager", &v11, 28);
    }
  }
}

- (void)_showSuggestedStartNotificationForEvent:(id)event
{
  eventCopy = event;
  if ([(W5DiagnosticsModeManager *)self _shouldShowNotification:2])
  {
    v4 = +[NSUUID UUID];
    [(W5DiagnosticsModeManager *)self setStopNotificationUUID:v4];

    info = [eventCopy info];
    v6 = [info objectForKeyedSubscript:@"FaultType"];
    [v6 integerValue];

    v7 = W5DescriptionForDiagnosticsFaultType();
    v8 = [NSString stringWithFormat:@"%@ Issue Detected", v7];

    peer = [eventCopy peer];
    name = [peer name];
    if (name)
    {
      peer2 = [eventCopy peer];
      name2 = [peer2 name];
    }

    else
    {
      name2 = @"Your device";
    }

    peer3 = [eventCopy peer];
    peerID = [peer3 peerID];
    v15 = [NSString stringWithFormat:@"wifiapp://startDiagnostics?peerID=%@", peerID];
    v16 = [NSURL URLWithString:v15];

    userNotificationManager = self->_userNotificationManager;
    v18 = [NSString stringWithFormat:@"%@ has detected an issue. Tap here to help diagnose the issue.", name2];
    stopNotificationUUID = [(W5DiagnosticsModeManager *)self stopNotificationUUID];
    [(W5UserNotificationManager *)userNotificationManager dispatchNotificationWithTitle:v8 subtitle:0 body:v18 type:3 UUID:stopNotificationUUID actionURL:v16];
  }
}

- (void)_showSuggestedStopNotificationForEvent:(id)event
{
  eventCopy = event;
  if ([(W5DiagnosticsModeManager *)self _shouldShowNotification:3])
  {
    v4 = +[NSUUID UUID];
    [(W5DiagnosticsModeManager *)self setStopNotificationUUID:v4];

    info = [eventCopy info];
    v6 = [info objectForKeyedSubscript:@"FaultType"];
    [v6 integerValue];

    v7 = W5DescriptionForDiagnosticsFaultType();
    v8 = [NSString stringWithFormat:@"%@ Issue Diagnostics Complete", v7];

    peer = [eventCopy peer];
    name = [peer name];
    if (name)
    {
      peer2 = [eventCopy peer];
      name2 = [peer2 name];
    }

    else
    {
      name2 = @"Your device";
    }

    info2 = [eventCopy info];
    v14 = [info2 objectForKeyedSubscript:@"DiagnosticMode"];
    uuid = [v14 uuid];

    peer3 = [eventCopy peer];
    peerID = [peer3 peerID];
    uUIDString = [uuid UUIDString];
    v19 = [NSString stringWithFormat:@"wifiapp://endDiagnostics?peerID=%@&dmUUID=%@", peerID, uUIDString];
    v20 = [NSURL URLWithString:v19];

    userNotificationManager = self->_userNotificationManager;
    v22 = [NSString stringWithFormat:@"%@ has detected the issue again and has completed diagnostics. Tap here to file a radar.", name2];
    stopNotificationUUID = [(W5DiagnosticsModeManager *)self stopNotificationUUID];
    [(W5UserNotificationManager *)userNotificationManager dispatchNotificationWithTitle:v8 subtitle:0 body:v22 type:3 UUID:stopNotificationUUID actionURL:v20];
  }
}

- (BOOL)_shouldShowNotification:(int64_t)notification
{
  v5 = +[NSDate date];
  v6 = 300.0;
  if (notification != 3)
  {
    v6 = 0.0;
  }

  if (notification == 2)
  {
    v7 = 900.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = +[W5CloudStore sharedStore];
  peerID = [(W5Peer *)self->_localPeer peerID];
  v10 = [v8 getMinNotificationInterval:peerID notificationType:notification];

  if (v10)
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315906;
      v29 = "[W5DiagnosticsModeManager _shouldShowNotification:]";
      v30 = 2080;
      v31 = "W5DiagnosticsModeManager.m";
      v32 = 1024;
      v33 = 1239;
      v34 = 2112;
      v35 = v10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) [DM] Minimum Notification Interval (Cloud KVS): %@", &v28, 38);
    }

    [v10 doubleValue];
    v7 = v12;
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];

  if (notification == 2)
  {
    v15 = @"MinStartNotificationInterval";
  }

  else
  {
    if (notification != 3)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v15 = @"MinStopNotificationInterval";
  }

  v16 = [v14 objectForKey:v15];
  if (v16)
  {
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315906;
      v29 = "[W5DiagnosticsModeManager _shouldShowNotification:]";
      v30 = 2080;
      v31 = "W5DiagnosticsModeManager.m";
      v32 = 1024;
      v33 = 1259;
      v34 = 2112;
      v35 = v16;
      LODWORD(v27) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) [DM] Minimum Notification Interval (User defaults): %@", &v28, v27);
    }

    [v16 doubleValue];
    v7 = v18;
  }

LABEL_19:
  v19 = [NSNumber numberWithInteger:notification];
  lastNotificationTimestamp = [(W5DiagnosticsModeManager *)self lastNotificationTimestamp];
  v21 = [lastNotificationTimestamp objectForKey:v19];

  if (v21)
  {
    [v5 timeIntervalSinceDate:v21];
    v23 = v22 > v7;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_100098A04();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136316674;
    v29 = "[W5DiagnosticsModeManager _shouldShowNotification:]";
    v30 = 2080;
    v31 = "W5DiagnosticsModeManager.m";
    v32 = 1024;
    v33 = 1269;
    v34 = 2112;
    v35 = v19;
    v36 = 2112;
    v37 = v21;
    v38 = 2048;
    v39 = v7;
    v40 = 1024;
    v41 = v23;
    LODWORD(v27) = 64;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v24, 0, "[wifivelocity] %s (%s:%u) Notification Type: %@, Last notification timestamp: %@, minTimeInterval (s): %f, Allow Notification?: %d", &v28, v27);
  }

  if (v23)
  {
    lastNotificationTimestamp2 = [(W5DiagnosticsModeManager *)self lastNotificationTimestamp];
    [lastNotificationTimestamp2 setObject:v5 forKeyedSubscript:v19];
  }

  return v23;
}

- (void)_runDiagnosticsForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-WiFiDETestsAtFault", uUIDString];

  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v9 setUuid:v8];
  v10 = [W5LogItemRequest requestWithItemID:55 configuration:0];
  v32 = v10;
  v11 = [NSArray arrayWithObjects:&v32 count:1];
  [(W5LogItemRequestInternal *)v9 setItemRequests:v11];

  [(W5LogItemRequestInternal *)v9 setFilename:v7];
  v12 = +[NSDate date];
  [(W5LogItemRequestInternal *)v9 setAddedAt:v12];

  logManager = [(W5DiagnosticsModeManager *)self logManager];
  [logManager addRequest:v9];

  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315906;
    v25 = "[W5DiagnosticsModeManager _runDiagnosticsForDiagnosticMode:]";
    v26 = 2080;
    v27 = "W5DiagnosticsModeManager.m";
    v28 = 1024;
    v29 = 1287;
    v30 = 2112;
    v31 = v9;
    v21 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s (%s:%u) Added to W5LogManager queue: %@", &v24, v21);
  }

  v15 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v16 = [v15 URLByAppendingPathComponent:v7];

  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315906;
    v25 = "[W5DiagnosticsModeManager _runDiagnosticsForDiagnosticMode:]";
    v26 = 2080;
    v27 = "W5DiagnosticsModeManager.m";
    v28 = 1024;
    v29 = 1290;
    v30 = 2114;
    v31 = v16;
    LODWORD(v20) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) [DM] running fault log collection to dir='%{public}@'", &v24, v20);
  }

  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v22[0] = @"diagnosticTestsRequestUUID";
  v22[1] = @"TestOutputDirectory";
  v23[0] = v8;
  v23[1] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  [localStore addToStore:modeCopy newInfo:v19];
}

- (void)_collectAnalyticsCSVsForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-AnalyticsCSVs", uUIDString];

  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v9 setUuid:v8];
  v10 = [W5LogItemRequest requestWithItemID:85 configuration:&off_1000F2018];
  v34[0] = v10;
  v11 = [W5LogItemRequest requestWithItemID:84 configuration:&off_1000F2040];
  v34[1] = v11;
  v12 = [W5LogItemRequest requestWithItemID:88 configuration:&off_1000F2068];
  v34[2] = v12;
  v13 = [NSArray arrayWithObjects:v34 count:3];
  [(W5LogItemRequestInternal *)v9 setItemRequests:v13];

  [(W5LogItemRequestInternal *)v9 setFilename:v7];
  v14 = +[NSDate date];
  [(W5LogItemRequestInternal *)v9 setAddedAt:v14];

  logManager = [(W5DiagnosticsModeManager *)self logManager];
  [logManager addRequest:v9];

  v16 = sub_100098A04();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315906;
    v27 = "[W5DiagnosticsModeManager _collectAnalyticsCSVsForDiagnosticMode:]";
    v28 = 2080;
    v29 = "W5DiagnosticsModeManager.m";
    v30 = 1024;
    v31 = 1315;
    v32 = 2112;
    v33 = v9;
    v23 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) Added to W5LogManager queue: %@", &v26, v23);
  }

  v17 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v18 = [v17 URLByAppendingPathComponent:v7];

  v19 = sub_100098A04();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315906;
    v27 = "[W5DiagnosticsModeManager _collectAnalyticsCSVsForDiagnosticMode:]";
    v28 = 2080;
    v29 = "W5DiagnosticsModeManager.m";
    v30 = 1024;
    v31 = 1318;
    v32 = 2114;
    v33 = v18;
    LODWORD(v22) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v19, 0, "[wifivelocity] %s (%s:%u) [DM] collecting analytics CSVs to dir='%{public}@'", &v26, v22);
  }

  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v24[0] = @"analyticsCSVsRequestUUID";
  v24[1] = @"analyticsCSVsOutputPath";
  v25[0] = v8;
  v25[1] = v18;
  v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  [localStore addToStore:modeCopy newInfo:v21];
}

- (void)_collectSystemLogsForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-SystemLogs", uUIDString];

  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v9 setUuid:v8];
  v10 = [W5LogItemRequest requestWithItemID:31 configuration:&off_1000F2090];
  v32 = v10;
  v11 = [NSArray arrayWithObjects:&v32 count:1];
  [(W5LogItemRequestInternal *)v9 setItemRequests:v11];

  [(W5LogItemRequestInternal *)v9 setFilename:v7];
  v12 = +[NSDate date];
  [(W5LogItemRequestInternal *)v9 setAddedAt:v12];

  logManager = [(W5DiagnosticsModeManager *)self logManager];
  [logManager addRequest:v9];

  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315906;
    v25 = "[W5DiagnosticsModeManager _collectSystemLogsForDiagnosticMode:]";
    v26 = 2080;
    v27 = "W5DiagnosticsModeManager.m";
    v28 = 1024;
    v29 = 1337;
    v30 = 2112;
    v31 = v9;
    v21 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s (%s:%u) Added to W5LogManager queue: %@", &v24, v21);
  }

  v15 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v16 = [v15 URLByAppendingPathComponent:v7];

  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315906;
    v25 = "[W5DiagnosticsModeManager _collectSystemLogsForDiagnosticMode:]";
    v26 = 2080;
    v27 = "W5DiagnosticsModeManager.m";
    v28 = 1024;
    v29 = 1340;
    v30 = 2114;
    v31 = v16;
    LODWORD(v20) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) [DM] collecting system logs to dir='%{public}@'", &v24, v20);
  }

  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v22[0] = @"systemLogsRequestUUID";
  v22[1] = @"systemLogsOutputPath";
  v23[0] = v8;
  v23[1] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  [localStore addToStore:modeCopy newInfo:v19];
}

- (void)_collectNetworkInfoForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-NetworkInfo", uUIDString];

  v8 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v9 = [v8 URLByAppendingPathComponent:v7];

  v10 = +[NSFileManager defaultManager];
  path = [(W5LogItemRequestInternal *)v9 path];
  v12 = [v10 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  if (v12)
  {
    v13 = +[NSUUID UUID];
    v14 = objc_alloc_init(W5LogItemRequestInternal);
    [(W5LogItemRequestInternal *)v14 setUuid:v13];
    v15 = [W5LogItemRequest requestWithItemID:89 configuration:&off_1000F20B8];
    v39[0] = v15;
    v16 = [W5LogItemRequest requestWithItemID:91 configuration:&off_1000F20E0];
    v39[1] = v16;
    v17 = [W5LogItemRequest requestWithItemID:92 configuration:0];
    v39[2] = v17;
    v18 = [NSArray arrayWithObjects:v39 count:3];
    [(W5LogItemRequestInternal *)v14 setItemRequests:v18];

    [(W5LogItemRequestInternal *)v14 setFilename:v7];
    v19 = +[NSDate date];
    [(W5LogItemRequestInternal *)v14 setAddedAt:v19];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000D1C8;
    v25[3] = &unk_1000E12C0;
    v26 = v7;
    selfCopy = self;
    v20 = modeCopy;
    v28 = v20;
    [(W5LogItemRequestInternal *)v14 setReply:v25];
    logManager = [(W5DiagnosticsModeManager *)self logManager];
    [logManager addRequest:v14];

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5DiagnosticsModeManager _collectNetworkInfoForDiagnosticMode:]";
      v33 = 2080;
      v34 = "W5DiagnosticsModeManager.m";
      v35 = 1024;
      v36 = 1385;
      v37 = 2112;
      v38 = v14;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) Added to W5LogManager queue: %@", &v31, 38);
    }

    localStore = [(W5DiagnosticsModeManager *)self localStore];
    v29[0] = @"networkInfoGenUUID";
    v29[1] = @"networkInfoOutputPath";
    v30[0] = v13;
    v30[1] = v9;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    [localStore addToStore:v20 newInfo:v24];
  }

  else
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5DiagnosticsModeManager _collectNetworkInfoForDiagnosticMode:]";
      v33 = 2080;
      v34 = "W5DiagnosticsModeManager.m";
      v35 = 1024;
      v36 = 1392;
      v37 = 2112;
      v38 = v9;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) [DM] Unable to create network info dir: %@", &v31, 38);
    }
  }
}

- (NSArray)registeredPeers
{
  v2 = +[W5CloudStore sharedStore];
  registeredPeers = [v2 registeredPeers];

  return registeredPeers;
}

- (int64_t)registeredRoleForPeer:(id)peer
{
  peerCopy = peer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  registeredPeers = [(W5DiagnosticsModeManager *)self registeredPeers];
  role = [registeredPeers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (role)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != role; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(registeredPeers);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        peer = [v9 peer];
        peerID = [peer peerID];
        peerID2 = [peerCopy peerID];
        v13 = [peerID isEqualToString:peerID2];

        if (v13)
        {
          role = [v9 role];
          goto LABEL_11;
        }
      }

      role = [registeredPeers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (role)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return role;
}

- (NSArray)activeDiagnostics
{
  store = [(W5DiagnosticsModeManager *)self store];
  v3 = [store diagnosticsModeWithState:3];

  return v3;
}

- (id)finishedDiagnostics
{
  store = [(W5DiagnosticsModeManager *)self store];
  v3 = [store diagnosticsModeWithState:11];

  return v3;
}

- (NSArray)allDiagnostics
{
  store = [(W5DiagnosticsModeManager *)self store];
  diagnostics = [store diagnostics];
  allObjects = [diagnostics allObjects];

  return allObjects;
}

- (void)_finishedProcessingDiagnosticMode:(id)mode
{
  modeCopy = mode;
  store = [(W5DiagnosticsModeManager *)self store];
  [store updateStoreWithDiagnosticsMode:modeCopy];
}

@end