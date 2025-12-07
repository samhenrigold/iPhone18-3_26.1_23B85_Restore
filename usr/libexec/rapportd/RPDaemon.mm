@interface RPDaemon
+ (id)sharedDaemon;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RPDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (id)keychainStateString;
- (void)_metricsSubmissionSetup;
- (void)_prefsChanged;
- (void)_updateErrorFlags;
- (void)_xpcPublisherAction:(unsigned int)action token:(unint64_t)token event:(id)event;
- (void)_xpcPublisherAddToken:(unint64_t)token event:(id)event;
- (void)_xpcPublisherRemoveToken:(unint64_t)token;
- (void)_xpcPublisherStateChangedForToken:(unint64_t)token state:(BOOL)state;
- (void)_xpcPublisherTriggeredReply:(id)reply token:(unint64_t)token responseHandler:(id)handler;
- (void)_xpcPublisherTriggeredToken:(unint64_t)token payload:(id)payload responseHandler:(id)handler;
- (void)activate;
- (void)invalidate;
- (void)postDaemonInfoChanges:(unint64_t)changes;
@end

@implementation RPDaemon

+ (id)sharedDaemon
{
  if (qword_1001D6148 != -1)
  {
    sub_100117048();
  }

  v3 = qword_1001D6140;

  return v3;
}

- (RPDaemon)init
{
  v32.receiver = self;
  v32.super_class = RPDaemon;
  v2 = [(RPDaemon *)&v32 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_languageChangedNotifier = -1;
    v4 = objc_alloc_init(NSMutableArray);
    subDaemons = v3->_subDaemons;
    v3->_subDaemons = v4;

    v6 = v3->_subDaemons;
    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    [(NSMutableArray *)v6 addObject:v7];

    v8 = v3->_subDaemons;
    v9 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
    [(NSMutableArray *)v8 addObject:v9];

    v10 = v3->_subDaemons;
    v11 = +[RPCloudDaemon sharedCloudDaemon];
    [(NSMutableArray *)v10 addObject:v11];

    v12 = v3->_subDaemons;
    v13 = +[RPNearFieldDaemon sharedNearFieldDaemon];
    [(NSMutableArray *)v12 addObject:v13];

    v14 = v3->_subDaemons;
    v15 = +[RPNearbyInvitationDaemon sharedInvitationDaemon];
    [(NSMutableArray *)v14 addObject:v15];

    v16 = v3->_subDaemons;
    v17 = +[RPPeopleDaemon sharedPeopleDaemon];
    [(NSMutableArray *)v16 addObject:v17];

    v18 = v3->_subDaemons;
    v19 = objc_alloc_init(RPRemoteDisplayDaemon);
    [(NSMutableArray *)v18 addObject:v19];

    v20 = v3->_subDaemons;
    v21 = +[RPPrivateDaemon sharedPrivateDaemon];
    [(NSMutableArray *)v20 addObject:v21];

    v22 = v3->_subDaemons;
    v23 = +[RPNWNetworkAgent sharedNetworkAgent];
    [(NSMutableArray *)v22 addObject:v23];

    v24 = v3->_subDaemons;
    v25 = +[RPStatusDaemon sharedStatusDaemon];
    [(NSMutableArray *)v24 addObject:v25];

    if (+[_TtC8rapportd15RPFeatureGating identitySyncServiceEnabled])
    {
      v26 = v3->_subDaemons;
      v27 = +[_TtC8rapportd20RPIdentitySyncDaemon shared];
      [(NSMutableArray *)v26 addObject:v27];
    }

    if (+[_TtC8rapportd15RPFeatureGating applicationServicePairingEnabled])
    {
      v28 = v3->_subDaemons;
      v29 = +[_TtC8rapportd15RPPairingDaemon shared];
      [(NSMutableArray *)v28 addObject:v29];
    }

    [(RPDaemon *)v3 _metricsSubmissionSetup];
    v30 = v3;
  }

  return v3;
}

- (void)_metricsSubmissionSetup
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v4 = dispatch_queue_create("RPMetricsSubmission", attr);
  metricsReportQueue = self->_metricsReportQueue;
  self->_metricsReportQueue = v4;

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_metricsReportQueue);
  metricsReportTimer = self->_metricsReportTimer;
  self->_metricsReportTimer = v6;

  dispatch_source_set_event_handler(self->_metricsReportTimer, &stru_1001AC650);
  CUDispatchTimerSet();
  dispatch_resume(self->_metricsReportTimer);
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v61 = sub_100009D00(self, a2);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  selfCopy = self;
  v5 = self->_subDaemons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v96;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v96 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v94 = v8;
          v11 = CUDescriptionWithLevel();
          NSAppendPrintF(&v94, "%@\n", v11);
          v12 = v94;

          v8 = v12;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = +[RPMetrics sharedMetricsNoCreate];
  v59 = v13;
  if (levelCopy <= 0x13 && v13)
  {
    v93 = v8;
    v14 = CUDescriptionWithLevel();
    NSAppendPrintF(&v93, "%@\n", v14);
    v15 = v93;

    v8 = v15;
  }

  v58 = +[RPAssertionTracker sharedTrackerNoCreate];
  if (v58)
  {
    v92 = v8;
    v16 = CUDescriptionWithLevel();
    NSAppendPrintF(&v92, "%@\n", v16);
    v17 = v92;

    v8 = v17;
  }

  v91 = v8;
  NSAppendPrintF(&v91, "-- Daemon XPC Cnx: %d --\n", [(NSMutableSet *)selfCopy->_xpcConnections count]);
  v18 = v91;

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = selfCopy->_xpcConnections;
  v64 = [(NSMutableSet *)obj countByEnumeratingWithState:&v87 objects:v102 count:16];
  if (v64)
  {
    v63 = *v88;
    do
    {
      for (j = 0; j != v64; j = j + 1)
      {
        if (*v88 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v87 + 1) + 8 * j);
        v86 = v18;
        xpcCnx = [v20 xpcCnx];
        NSAppendPrintF(&v86, "%#{pid}", [xpcCnx processIdentifier]);
        v22 = v86;

        assertions = [v20 assertions];
        if ([assertions count])
        {
          v85 = v22;
          NSAppendPrintF(&v85, ", assertions <");
          v24 = v85;

          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v65 = assertions;
          v25 = assertions;
          v26 = [v25 countByEnumeratingWithState:&v81 objects:v101 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v82;
            v29 = "";
            do
            {
              v30 = 0;
              v31 = v24;
              do
              {
                if (*v82 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v32 = *(*(&v81 + 1) + 8 * v30);
                v80 = v31;
                NSAppendPrintF(&v80, "%s%@", v29, v32, v58, v59);
                v24 = v80;

                v30 = v30 + 1;
                v29 = " ";
                v31 = v24;
              }

              while (v27 != v30);
              v27 = [v25 countByEnumeratingWithState:&v81 objects:v101 count:16];
              v29 = " ";
            }

            while (v27);
          }

          v79 = v24;
          NSAppendPrintF(&v79, ">");
          v22 = v79;

          assertions = v65;
        }

        v78 = v22;
        NSAppendPrintF(&v78, "\n");
        v18 = v78;
      }

      v64 = [(NSMutableSet *)obj countByEnumeratingWithState:&v87 objects:v102 count:16];
    }

    while (v64);
  }

  errorFlags = selfCopy->_errorFlags;
  if (errorFlags)
  {
    v77 = v18;
    NSAppendPrintF(&v77, "\nError Flags: %#ll{flags}\n", errorFlags, &unk_100148360, v58, v59);
    v34 = v77;

    v18 = v34;
  }

  v35 = [NSSet alloc];
  v36 = CFPrefs_CopyKeys();
  v37 = [v35 initWithArray:v36];

  v38 = [[NSMutableSet alloc] initWithSet:v37];
  v100[0] = @"btPipeEnabled";
  v100[1] = @"cloudDiscovery";
  v100[2] = @"clBLEClient";
  v100[3] = @"clMeDeviceIsMeOverride";
  v100[4] = @"clClientEnabled";
  v100[5] = @"clHomeKit";
  v100[6] = @"clMaxConnectionCount";
  v100[7] = @"clServerBonjourAlways";
  v100[8] = @"clServerEnabled";
  v100[9] = @"familySyncedName";
  v100[10] = @"ftCompress";
  v100[11] = @"ftLargeFileBufferBytes";
  v100[12] = @"ftLargeFileMaxOutstanding";
  v100[13] = @"ftLargeFileMaxTasks";
  v100[14] = @"ftSmallFilesMaxBytes";
  v100[15] = @"ftSmallFilesMaxTasks";
  v100[16] = @"frPruneAccountSecs";
  v100[17] = @"frPruneLastSecs";
  v100[18] = @"frRefreshMax";
  v100[19] = @"frRefreshMin";
  v100[20] = @"frMaxReachedLastSecs";
  v100[21] = @"frSuggestMax";
  v100[22] = @"frSuggestPollSecs";
  v100[23] = @"frSyncDelaySecs";
  v100[24] = @"hasAppleTVForce";
  v100[25] = @"hasHomePodForce";
  v100[26] = @"hasMacForce";
  v100[27] = @"hidEnabled";
  v100[28] = @"idFamilyResolve";
  v100[29] = @"idFriendResolve";
  v100[30] = @"idOwnerResolve";
  v100[31] = @"idPairedResolve";
  v100[32] = @"idSharedHomeResolve";
  v100[33] = @"idsEnabled";
  v100[34] = @"ignoreCompanionLinkChecks";
  v100[35] = @"ignoreRemoteDisplayChecks";
  v100[36] = @"ipEnabled";
  v100[37] = @"isSignedInForce";
  v100[38] = @"liveAudioEnabled";
  v100[39] = @"mcEnabled";
  v100[40] = @"metricsEnabled";
  v100[41] = @"applyNoiWiFiToUSB";
  v100[42] = @"pdFamily";
  v100[43] = @"pdFriends";
  v100[44] = @"pdFriendSyncStart";
  v100[45] = @"pdPrivacyCoalesceMin";
  v100[46] = @"pdPrivacyCoalesceMax";
  v100[47] = @"pdPTSBurstActionScanSecs";
  v100[48] = @"pdPTSBurstInfoScanSecs";
  v100[49] = @"pdRanging";
  v100[50] = @"pdStrangers";
  v100[51] = @"pdTrackWhileAsleep";
  v100[52] = @"rdBLEClient";
  v100[53] = @"rdBLEServer";
  v100[54] = @"rdClientEnabled";
  v100[55] = @"rdHomeKit";
  v100[56] = @"rdNoInfra";
  v100[57] = @"rdServerBonjourInfra";
  v100[58] = @"rdServerEnabled";
  v100[59] = @"siriEnabled";
  v100[60] = @"textInputEnabled";
  v100[61] = @"touchEnabled";
  v100[62] = @"uiNotes";
  v100[63] = @"useTargetAuthTag";
  v100[64] = @"xpcMatchingTestMode";
  v100[65] = @"nearFieldSeverDiscoveryEnabled";
  v100[66] = @"sendActivityLevelOverInfra";
  v100[67] = @"oneTimeDateRequestedResetCompleted";
  v39 = [NSArray arrayWithObjects:v100 count:68];
  [v38 addObjectsFromArray:v39];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v66 = v38;
  v40 = [v66 countByEnumeratingWithState:&v73 objects:v99 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = 0;
    v43 = *v74;
    do
    {
      for (k = 0; k != v41; k = k + 1)
      {
        if (*v74 != v43)
        {
          objc_enumerationMutation(v66);
        }

        v45 = *(*(&v73 + 1) + 8 * k);
        v46 = [v37 containsObject:v45];
        if (!v42)
        {
          v72 = v18;
          NSAppendPrintF(&v72, "\n");
          v47 = v72;

          v18 = v47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = 0;
          v48 = CFPrefs_CopyTypedValue();
          v49 = v48;
          if (v46)
          {
            if (v61)
            {
              v68 = v18;
              v54 = v45;
              v50 = &v68;
              NSAppendPrintF(&v68, "Pref: '%@' = '%@'\n", v54, v48);
            }

            else
            {
              v67 = v18;
              v56 = v45;
              v50 = &v67;
              NSAppendPrintF(&v67, "Pref: '%@' = '%~@'\n", v56, v48);
            }

            goto LABEL_51;
          }

          if (v71 != -6727)
          {
            if (v61)
            {
              v70 = v18;
              v55 = v45;
              v50 = &v70;
              NSAppendPrintF(&v70, "Pref (profile): '%@' = '%@'\n", v55, v48);
            }

            else
            {
              v69 = v18;
              v57 = v45;
              v50 = &v69;
              NSAppendPrintF(&v69, "Pref (profile): '%@' = '%~@'\n", v57, v48);
            }

LABEL_51:
            v51 = *v50;

            v18 = v51;
          }

          ++v42;

          continue;
        }
      }

      v41 = [v66 countByEnumeratingWithState:&v73 objects:v99 count:16];
    }

    while (v41);
  }

  v52 = v18;
  return v18;
}

- (void)activate
{
  selfCopy = self;
  if (dword_1001D3730 <= 30)
  {
    if (dword_1001D3730 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011705C(self, a2, v2);
    }
  }

  Int64 = CFPrefs_GetInt64();
  v5 = Int64 != 0;
  if (selfCopy->_prefXPCMatchingTestMode != v5)
  {
    if (dword_1001D3730 <= 40)
    {
      v6 = Int64;
      if (dword_1001D3730 != -1 || _LogCategory_Initialize())
      {
        sub_100117078(v6 != 0);
      }
    }

    selfCopy->_prefXPCMatchingTestMode = v5;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = selfCopy->_subDaemons;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v42 + 1) + 8 * i) setDispatchQueue:selfCopy->_dispatchQueue];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v9);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = selfCopy->_subDaemons;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v38 + 1) + 8 * j) activate];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v14);
  }

  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FCE0;
  block[3] = &unk_1001AA970;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  if (selfCopy->_languageChangedNotifier == -1)
  {
    v18 = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004FCE8;
    handler[3] = &unk_1001AAFE8;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.language.changed", &selfCopy->_languageChangedNotifier, v18, handler);
  }

  if (!selfCopy->_sigTermSource)
  {
    v19 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, selfCopy->_dispatchQueue);
    sigTermSource = selfCopy->_sigTermSource;
    selfCopy->_sigTermSource = v19;

    v21 = selfCopy->_sigTermSource;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10004FD6C;
    v35[3] = &unk_1001AA970;
    v35[4] = selfCopy;
    dispatch_source_set_event_handler(v21, v35);
    dispatch_resume(selfCopy->_sigTermSource);
  }

  if (!selfCopy->_systemMonitor)
  {
    v22 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = v22;

    [(CUSystemMonitor *)selfCopy->_systemMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10004FDE8;
    v34[3] = &unk_1001AA970;
    v34[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setManateeChangedHandler:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10004FE50;
    v33[3] = &unk_1001AA970;
    v33[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setPrimaryAppleIDChangedHandler:v33];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10004FEB8;
    v32[3] = &unk_1001AA970;
    v32[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setWifiStateChangedHandler:v32];
    v24 = selfCopy->_systemMonitor;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10004FF20;
    v31[3] = &unk_1001AA970;
    v31[4] = selfCopy;
    [(CUSystemMonitor *)v24 activateWithCompletion:v31];
  }

  if (!selfCopy->_xpcEventsRegistered)
  {
    v25 = selfCopy->_dispatchQueue;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10004FF28;
    v30[3] = &unk_1001AC678;
    v30[4] = selfCopy;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v25, v30);
    selfCopy->_xpcEventsRegistered = 1;
  }

  if (!selfCopy->_xpcListener)
  {
    v26 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport"];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v26;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener _setQueue:selfCopy->_dispatchQueue];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
  }

  if (!selfCopy->_xpcPublisher)
  {
    v28 = xpc_event_publisher_create();
    xpcPublisher = selfCopy->_xpcPublisher;
    selfCopy->_xpcPublisher = v28;

    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
  }

  if (!selfCopy->_stateHandleGeneral)
  {
    selfCopy->_stateHandleGeneral = os_state_add_handler();
  }

  if (!selfCopy->_stateHandleIdentities)
  {
    selfCopy->_stateHandleIdentities = os_state_add_handler();
  }

  if (!selfCopy->_stateHandleKeychain)
  {
    selfCopy->_stateHandleKeychain = os_state_add_handler();
  }

  if (!selfCopy->_stateHandlePrivateDiscovery)
  {
    selfCopy->_stateHandlePrivateDiscovery = os_state_add_handler();
  }
}

- (void)invalidate
{
  selfCopy = self;
  if (dword_1001D3730 <= 30)
  {
    if (dword_1001D3730 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001171E0(self, a2, v2);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = selfCopy->_subDaemons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v27 + 1) + 8 * i) invalidate];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)selfCopy->_subDaemons removeAllObjects];
  xpcPublisher = selfCopy->_xpcPublisher;
  selfCopy->_xpcPublisher = 0;

  if (selfCopy->_stateHandleGeneral)
  {
    os_state_remove_handler();
    selfCopy->_stateHandleGeneral = 0;
  }

  if (selfCopy->_stateHandleIdentities)
  {
    os_state_remove_handler();
    selfCopy->_stateHandleIdentities = 0;
  }

  if (selfCopy->_stateHandleKeychain)
  {
    os_state_remove_handler();
    selfCopy->_stateHandleKeychain = 0;
  }

  if (selfCopy->_stateHandlePrivateDiscovery)
  {
    os_state_remove_handler();
    selfCopy->_stateHandlePrivateDiscovery = 0;
  }

  languageChangedNotifier = selfCopy->_languageChangedNotifier;
  if (languageChangedNotifier != -1)
  {
    notify_cancel(languageChangedNotifier);
    selfCopy->_languageChangedNotifier = -1;
  }

  sigTermSource = selfCopy->_sigTermSource;
  if (sigTermSource)
  {
    v12 = sigTermSource;
    dispatch_source_cancel(v12);
    v13 = selfCopy->_sigTermSource;
    selfCopy->_sigTermSource = 0;
  }

  [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate];
  systemMonitor = selfCopy->_systemMonitor;
  selfCopy->_systemMonitor = 0;

  [(NSXPCListener *)selfCopy->_xpcListener invalidate];
  xpcListener = selfCopy->_xpcListener;
  selfCopy->_xpcListener = 0;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = selfCopy->_xpcConnections;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        xpcCnx = [*(*(&v23 + 1) + 8 * j) xpcCnx];
        [xpcCnx invalidate];
      }

      v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  [(NSMutableSet *)selfCopy->_xpcConnections removeAllObjects];
  xpcConnections = selfCopy->_xpcConnections;
  selfCopy->_xpcConnections = 0;

  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001171FC();
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  paramsCopy = params;
  dispatchQueue = self->_dispatchQueue;
  commandCopy = command;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [commandCopy isEqual:@"errorFlags"];

  if (v9)
  {
    self->_errorFlagsForceSet = CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
    self->_errorFlagsForceClear = Int64;
    if (dword_1001D3730 <= 30)
    {
      if (dword_1001D3730 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        Int64 = self->_errorFlagsForceClear;
      }

      LogPrintF(&dword_1001D3730, "[RPDaemon diagnosticCommand:params:]", 30, "Diag: ErrorFlags: Set %#ll{flags}, Clear %#ll{flags}\n", self->_errorFlagsForceSet, &unk_100148360, Int64, &unk_100148360);
    }

LABEL_6:
    [(RPDaemon *)self _updateErrorFlags];
  }

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPDaemonXPCConnection alloc] initWithDaemon:self xpcConnection:connectionCopy];
  [(RPDaemonXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPDaemonXPCServerInterface];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100050728;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v6;
  [connectionCopy setInvalidationHandler:v13];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPDaemonXPCClientInterface];
  [connectionCopy setRemoteObjectInterface:v11];

  [connectionCopy resume];
  if (dword_1001D3730 <= 20 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117230(connectionCopy);
  }

  return 1;
}

- (id)keychainStateString
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = objc_alloc_init(CUKeychainItem);
  [v3 setAccessGroup:@"com.apple.rapport"];
  [v3 setSyncType:3];
  v4 = objc_alloc_init(CUKeychainManager);
  v21 = 0;
  v5 = [v4 copyItemsMatchingItem:v3 flags:0 error:&v21];
  v6 = v21;
  v20 = v2;
  NSAppendPrintF(&v20, "-- RPKeychain: %d items, %{error} --\n", [v5 count], v6);
  v7 = v20;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = CUDescriptionWithLevel();
        [v7 appendString:v13];

        [v7 appendString:@"\n"];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = v7;
  return v7;
}

- (void)postDaemonInfoChanges:(unint64_t)changes
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000509D0;
  v4[3] = &unk_1001AC750;
  v4[4] = self;
  v4[5] = changes;
  dispatch_async(dispatchQueue, v4);
}

- (void)_prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_subDaemons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) prefsChanged];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateErrorFlags
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(CUSystemMonitor *)self->_systemMonitor manateeAvailable])
  {
    v3 = 0;
  }

  else
  {
    v3 = 256;
  }

  if (![(CUSystemMonitor *)self->_systemMonitor primaryAppleIDIsHSA2])
  {
    v3 |= 0x20uLL;
  }

  v4 = v3 | (4 * [(CUSystemMonitor *)self->_systemMonitor wifiFlags]) & 0x80;
  wifiState = [(CUSystemMonitor *)self->_systemMonitor wifiState];
  v6 = v4 | 4;
  if (wifiState != 10)
  {
    v6 = v4;
  }

  v7 = (v6 | self->_errorFlagsForceSet) & ~self->_errorFlagsForceClear;
  errorFlags = self->_errorFlags;
  if (v7 != errorFlags)
  {
    self->_errorFlags = v7;
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3730, "[RPDaemon _updateErrorFlags]", 30, "Error flags changed: %#ll{flags} -> %#ll{flags}\n", errorFlags, &unk_100148360, v7, &unk_100148360);
    }

    v9 = +[RPDaemon sharedDaemon];
    [v9 postDaemonInfoChanges:32];
  }
}

- (void)_xpcPublisherAction:(unsigned int)action token:(unint64_t)token event:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (action != 2)
  {
    if (action == 1)
    {
      [(RPDaemon *)self _xpcPublisherRemoveToken:token];
    }

    else if (action)
    {
      if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        sub_1001172C0(action);
      }
    }

    else
    {
      [(RPDaemon *)self _xpcPublisherAddToken:token event:eventCopy];
    }
  }
}

- (void)_xpcPublisherAddToken:(unint64_t)token event:(id)event
{
  v6 = _CFXPCCreateCFObjectFromXPCObject();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherAddToken:event:]", 30, "XPC publisher add token %llu, %##@\n", token, v6);
      }

      if (self->_prefXPCMatchingTestMode || !CFDictionaryGetInt64())
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = self->_subDaemons;
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v14 + 1) + 8 * i);
              v13[0] = _NSConcreteStackBlock;
              v13[1] = 3221225472;
              v13[2] = sub_100051128;
              v13[3] = &unk_1001AC778;
              v13[4] = self;
              v13[5] = token;
              if ([v12 addXPCMatchingToken:token event:v6 handler:v13])
              {

                goto LABEL_33;
              }
            }

            v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherAddToken:event:]", 60, "### Add XPC matching not handled: token %llu, event %##@\n", token, v6);
        }
      }

      else if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherAddToken:event:]", 30, "Ignoring TestMode XPC matching when not enabled: token %llu, event %##@\n", token, v6);
      }
    }

    else if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117300(token);
    }
  }

  else if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117340(token);
  }

LABEL_33:
}

- (void)_xpcPublisherRemoveToken:(unint64_t)token
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_subDaemons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) removeXPCMatchingToken:{token, v9}])
        {

          return;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117380(token);
  }
}

- (void)_xpcPublisherTriggeredToken:(unint64_t)token payload:(id)payload responseHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v10 = objc_retainBlock(handlerCopy);
  v17 = self->_xpcPublisher;
  if (!v17)
  {
    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117420(token);
      if (!v10)
      {
        goto LABEL_26;
      }
    }

    else if (!v10)
    {
      goto LABEL_26;
    }

    v20 = RPErrorF(4294960596, "No XPC publisher", v11, v12, v13, v14, v15, v16, v21);
    v10[2](v10, 0, v20);

    goto LABEL_26;
  }

  if (!payloadCopy)
  {
LABEL_14:
    v18 = 0;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    v19 = xpc_event_publisher_fire();
    goto LABEL_16;
  }

  v18 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v18)
  {
    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001173C0();
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  v22 = handlerCopy;
  v19 = xpc_event_publisher_fire_with_reply();

LABEL_16:
  if (v19)
  {
    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherTriggeredToken:payload:responseHandler:]", 90, "### XPC publisher trigger failed: token %llu, %#m\n", token);
    }
  }

  else if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001173E0(token);
  }

LABEL_26:
}

- (void)_xpcPublisherTriggeredReply:(id)reply token:(unint64_t)token responseHandler:(id)handler
{
  replyCopy = reply;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000029DC;
  v39 = sub_100003184;
  v40 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000518A4;
  v31[3] = &unk_1001AC7C8;
  v33 = &v35;
  tokenCopy = token;
  handlerCopy = handler;
  v32 = handlerCopy;
  v9 = objc_retainBlock(v31);
  if (xpc_get_type(replyCopy) != &_xpc_type_error)
  {
    v16 = _CFXPCCreateCFObjectFromXPCObject();
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherTriggeredReply:token:responseHandler:]", 30, "XPC publisher reply: token %llu, %##@\n", token, v16);
        }

        (*(handlerCopy + 2))(handlerCopy, v16, 0);
        goto LABEL_12;
      }

      v26 = "XPC reply bad type";
      v27 = 4294960540;
    }

    else
    {
      v26 = "XPC reply convert failed";
      v27 = 4294960584;
    }

    v28 = RPErrorF(v27, v26, v10, v11, v12, v13, v14, v15, v30);
    v29 = v36[5];
    v36[5] = v28;

    goto LABEL_12;
  }

  string = xpc_dictionary_get_string(replyCopy, _xpc_error_key_description);
  v24 = "?";
  if (string)
  {
    v24 = string;
  }

  v25 = RPErrorF(4294960584, "XPC reply error: %s", v18, v19, v20, v21, v22, v23, v24);
  v16 = v36[5];
  v36[5] = v25;
LABEL_12:

  (v9[2])(v9);
  _Block_object_dispose(&v35, 8);
}

- (void)_xpcPublisherStateChangedForToken:(unint64_t)token state:(BOOL)state
{
  stateCopy = state;
  v6 = self->_xpcPublisher;
  v7 = v6;
  if (v6)
  {
    v11 = v6;
    if (xpc_event_publisher_set_subscriber_keepalive())
    {
      if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherStateChangedForToken:state:]", 90, "### XPC publisher state change failed: token %llu, state %d, %#m\n");
      }
    }

    else if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherStateChangedForToken:state:]", 30, "XPC publisher state changed: token %llu, state %d\n");
    }

    v7 = v11;
    if (stateCopy)
    {
      if (xpc_event_publisher_fire())
      {
        v7 = v11;
        if (dword_1001D3730 > 90)
        {
          goto LABEL_29;
        }

        if (dword_1001D3730 == -1)
        {
          v10 = _LogCategory_Initialize();
          v7 = v11;
          if (!v10)
          {
            goto LABEL_29;
          }
        }

        LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherStateChangedForToken:state:]", 90, "### XPC publisher state  trigger failed: token %llu, %#m\n");
LABEL_23:
        v7 = v11;
        goto LABEL_29;
      }

      v7 = v11;
      if (dword_1001D3730 <= 30)
      {
        if (dword_1001D3730 != -1 || (v9 = _LogCategory_Initialize(), v7 = v11, v9))
        {
          sub_100117460(token);
          goto LABEL_23;
        }
      }
    }
  }

  else if (dword_1001D3730 <= 90)
  {
    v11 = 0;
    if (dword_1001D3730 != -1 || (v8 = _LogCategory_Initialize(), v7 = 0, v8))
    {
      LogPrintF(&dword_1001D3730, "[RPDaemon _xpcPublisherStateChangedForToken:state:]", 90, "### XPC publisher state changed without publisher, token %llu, state %d\n");
      goto LABEL_23;
    }
  }

LABEL_29:
}

@end