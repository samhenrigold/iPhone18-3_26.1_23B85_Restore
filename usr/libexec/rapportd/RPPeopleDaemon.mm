@interface RPPeopleDaemon
+ (id)sharedPeopleDaemon;
- (BOOL)_pruneFamilyDevices;
- (BOOL)_pruneFriendAccounts:(BOOL)accounts;
- (BOOL)_pruneFriendDevices;
- (BOOL)_pruneFriends:(BOOL)friends;
- (BOOL)_sendCloudIdentityFrameType:(unsigned __int8)type destinationID:(id)d flags:(unsigned int)flags msgCtx:(id)ctx;
- (BOOL)_shouldThrottleFriendSyncing;
- (BOOL)_updateFamilyAccounts;
- (BOOL)_updateFamilyDevices;
- (BOOL)_updateFamilyIdentityWithFamilyMember:(id)member;
- (BOOL)_updateFriendAccounts;
- (BOOL)_updateFriendDevices;
- (BOOL)addOrUpdateAdHocPairedIdentity:(id)identity error:(id *)error;
- (BOOL)addOrUpdateIdentity:(id)identity source:(int)source error:(id *)error;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RPPeopleDaemon)init;
- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)sessionTelemetry;
- (id)_primaryAppleID:(BOOL)d;
- (id)descriptionWithLevel:(int)level;
- (id)getFamilyURIs;
- (unsigned)_updateFriendIdentityWithAppleID:(id)d contactID:(id)iD sendersKnownAlias:(id)alias userAdded:(BOOL)added updateDateRequested:(BOOL)requested suggestedContactIDs:(id)ds source:(int)source;
- (unsigned)_updateIdentityType:(int)type idsDeviceID:(id)d appleID:(id)iD contactID:(id)contactID sendersKnownAlias:(id)alias msg:(id)msg source:(int)source;
- (void)_activate;
- (void)_bufferCloudMessage:(id)message frameType:(unsigned __int8)type msgCtx:(id)ctx;
- (void)_daemonDevice:(id)device updatedMeasurement:(id)measurement;
- (void)_daemonDeviceChanged:(id)changed changes:(unsigned int)changes;
- (void)_daemonDeviceFound:(id)found;
- (void)_daemonDeviceLost:(id)lost;
- (void)_discoveryEnsureStarted;
- (void)_discoveryEnsureStopped;
- (void)_familyEnsureStarted;
- (void)_familyEnsureStopped;
- (void)_fetchSameAccountIdentities;
- (void)_friendsEnsureStarted;
- (void)_friendsEnsureStopped;
- (void)_friendsUpdateSuggestedIfNeeded;
- (void)_invalidate;
- (void)_invalidated;
- (void)_irkMetricsSetup;
- (void)_processBufferedCloudMessages;
- (void)_rangingBLEActionScannerBurst;
- (void)_rangingBLEActionScannerDeviceFound:(id)found;
- (void)_rangingBLEActionScannerDeviceLost:(id)lost;
- (void)_rangingBLEActionScannerEnsureStarted;
- (void)_rangingBLEActionScannerEnsureStopped;
- (void)_rangingInitiatorEnsureStarted;
- (void)_rangingInitiatorEnsureStopped;
- (void)_rangingInitiatorHandlePeer:(id)peer measurement:(id)measurement;
- (void)_rangingInitiatorStatusChanged;
- (void)_rangingRemoveDevice:(id)device;
- (void)_rangingResponderEnsureStarted;
- (void)_rangingResponderEnsureStopped;
- (void)_rangingResponderUpdate;
- (void)_rangingResponderUpdateForAirDropChange;
- (void)_rangingUpdateForDevice:(id)device;
- (void)_resetFriends;
- (void)_update;
- (void)_updateFamilyIdentities;
- (void)_updateFamilyNotification;
- (void)_updateFamilySyncing;
- (void)_updateFriendIdentities;
- (void)_updateFriendPrivacy;
- (void)_updateFriendPrivacyResults:(id)results;
- (void)_updateFriendSyncing;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)invalidate;
- (void)prefsChanged;
- (void)receivedFamilyIdentityRequest:(id)request msgCtx:(id)ctx;
- (void)receivedFamilyIdentityResponse:(id)response msgCtx:(id)ctx;
- (void)receivedFamilyIdentityUpdate:(id)update msgCtx:(id)ctx;
- (void)receivedFriendIdentityRequest:(id)request msgCtx:(id)ctx;
- (void)receivedFriendIdentityResponse:(id)response msgCtx:(id)ctx;
- (void)receivedFriendIdentityUpdate:(id)update msgCtx:(id)ctx;
- (void)regenerateSelfIdentity:(id)identity;
- (void)reportIRKMetrics;
- (void)sendFriendRequest:(id)request nonWakingRequest:(BOOL)wakingRequest sendersKnownAlias:(id)alias;
@end

@implementation RPPeopleDaemon

- (void)_rangingResponderUpdate
{
  if ([(NSMutableDictionary *)self->_rangingBLEActionDevicesActive count])
  {

    [(RPPeopleDaemon *)self _rangingResponderEnsureStarted];
  }

  else
  {

    [(RPPeopleDaemon *)self _rangingResponderEnsureStopped];
  }
}

- (void)_rangingResponderEnsureStopped
{
  if (self->_rangingResponder)
  {
    selfCopy = self;
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001262D0(self, a2, v2);
      }
    }

    [(CURangingSession *)selfCopy->_rangingResponder invalidate];
    rangingResponder = selfCopy->_rangingResponder;
    selfCopy->_rangingResponder = 0;
  }
}

- (void)_updateFriendPrivacy
{
  if (!self->_friendPrivacyGetting)
  {
    v3 = objc_alloc_init(NSMutableArray);
    friendAccountIdentityMap = self->_friendAccountIdentityMap;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009CD78;
    v12[3] = &unk_1001AE918;
    v12[4] = v3;
    [(NSMutableDictionary *)friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v12];
    v5 = [v3 count];
    if (v5)
    {
      if (dword_1001D4910 <= 30)
      {
        if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          v5 = sub_100125AA4(v3);
        }
      }

      v6 = objc_alloc_init(off_1001D4990(v5));
      v7 = [v6 setDispatchQueue:self->_dispatchQueue];
      v8 = objc_alloc_init(off_1001D4998(v7));
      [v8 setContactIDs:v3];
      self->_friendPrivacyGetting = 1;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10009CDD8;
      v10[3] = &unk_1001ACF70;
      v10[4] = self;
      v11 = v6;
      v9 = v6;
      [v9 getPeopleSuggestions:v8 completion:v10];
    }

    else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100009954();
    }
  }
}

+ (id)sharedPeopleDaemon
{
  if (qword_1001D64A0 != -1)
  {
    sub_10000F210();
  }

  v3 = qword_1001D6498;

  return v3;
}

- (RPPeopleDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPPeopleDaemon;
  v2 = [(RPPeopleDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_airdropModeNotifyToken = -1;
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_familyNotifyToken = -1;
    v3->_friendsSuggestedNotifyToken = -1;
    v3->_privacyChangedNotifyToken = -1;
    [(RPPeopleDaemon *)v3 _irkMetricsSetup];
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  if (level < 21)
  {
    v92 = 0;
    v93 = &v92;
    v94 = 0x3032000000;
    v95 = sub_100002A3C;
    v96 = sub_1000031B4;
    v97 = 0;
    familyMembers = [(CUSystemMonitor *)self->_familyMemberMonitor familyMembers];
    v6 = (v93 + 5);
    obj = v93[5];
    NSAppendPrintF(&obj, "-- RPPeopleDaemon: %d devices, %d family, %d XPC --\n", -[NSMutableDictionary count](self->_discoveredDevices, "count"), [familyMembers count], -[NSMutableSet count](self->_xpcConnections, "count"));
    objc_storeStrong(v6, obj);
    if (level > 10)
    {
      v22 = 50;
    }

    else
    {
      if ([familyMembers count])
      {
        v7 = (v93 + 5);
        v90 = v93[5];
        NSAppendPrintF(&v90, "Family: ");
        objc_storeStrong(v7, v90);
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v58 = familyMembers;
        v8 = [v58 countByEnumeratingWithState:&v86 objects:v99 count:16];
        if (v8)
        {
          v9 = "";
          v10 = *v87;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v87 != v10)
              {
                objc_enumerationMutation(v58);
              }

              v12 = *(*(&v86 + 1) + 8 * i);
              v13 = (v93 + 5);
              v85 = v93[5];
              appleID = [v12 appleID];
              isMe = [v12 isMe];
              v16 = " (me)";
              if (!isMe)
              {
                v16 = "";
              }

              NSAppendPrintF(&v85, "%s%{mask}%s", v9, appleID, v16);
              objc_storeStrong(v13, v85);

              v9 = ", ";
            }

            v8 = [v58 countByEnumeratingWithState:&v86 objects:v99 count:16];
            v9 = ", ";
          }

          while (v8);
        }

        v17 = (v93 + 5);
        v84 = v93[5];
        NSAppendPrintF(&v84, "\n");
        objc_storeStrong(v17, v84);
      }

      Current = CFAbsoluteTimeGetCurrent();
      CFPrefs_GetDouble();
      if (v19 >= 0.0)
      {
        if (v19 == 0.0)
        {
          v20 = (v93 + 5);
          v82 = v93[5];
          NSAppendPrintF(&v82, "Friend Sync Start: not started\n");
          v21 = v82;
        }

        else
        {
          v20 = (v93 + 5);
          if (v19 <= Current)
          {
            v81 = v93[5];
            NSAppendPrintF(&v81, "Friend Sync Start: %{DateCF}\n", *&v19);
            v21 = v81;
          }

          else
          {
            v80 = v93[5];
            NSAppendPrintF(&v80, "Friend Sync Start: %{DateCF}, %{dur}\n", *&v19, fmin(v19 - Current, 2147483650.0));
            v21 = v80;
          }
        }
      }

      else
      {
        v20 = (v93 + 5);
        v83 = v93[5];
        NSAppendPrintF(&v83, "Friend Sync Start: disabled\n");
        v21 = v83;
      }

      v23 = v21;
      v24 = *v20;
      *v20 = v23;

      v22 = 30;
    }

    v59 = v22;
    v25 = self->_deviceDiscovery;
    v26 = v25;
    if (v25)
    {
      v27 = (v93 + 5);
      v79 = v93[5];
      NSAppendPrintF(&v79, "%@\n", v25);
      objc_storeStrong(v27, v79);
    }

    v28 = [(NSMutableDictionary *)self->_discoveredDevices count];
    if (v28)
    {
      v29 = (v93 + 5);
      v78 = v93[5];
      NSAppendPrintF(&v78, "%d device(s)\n", v28);
      objc_storeStrong(v29, v78);
    }

    discoveredDevices = self->_discoveredDevices;
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000940E0;
    v76[3] = &unk_1001AE6C0;
    v76[4] = &v92;
    v77 = v59;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v76];
    v31 = self->_rangingInitiator;
    if (v31)
    {
      v32 = (v93 + 5);
      v75 = v93[5];
      NSAppendPrintF(&v75, "Ranging initiator: On\n");
      objc_storeStrong(v32, v75);
    }

    v33 = self->_rangingResponder;
    if (v33)
    {
      v34 = (v93 + 5);
      v74 = v93[5];
      NSAppendPrintF(&v74, "Ranging responder: On\n");
      objc_storeStrong(v34, v74);
    }

    v35 = self->_rangingBLEActionAdvertiser;
    v36 = v35;
    if (v35)
    {
      v37 = (v93 + 5);
      v73 = v93[5];
      NSAppendPrintF(&v73, "Ranging advertiser: %@\n", v35);
      objc_storeStrong(v37, v73);
    }

    v38 = self->_rangingBLEActionScanner;
    v39 = v38;
    if (v38)
    {
      v40 = (v93 + 5);
      v72 = v93[5];
      NSAppendPrintF(&v72, "Ranging scanner: %@\n", v38);
      objc_storeStrong(v40, v72);
    }

    rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10009414C;
    v70[3] = &unk_1001AAED0;
    v70[4] = &v92;
    v71 = v59;
    [(NSMutableDictionary *)rangingBLEActionDevicesActive enumerateKeysAndObjectsUsingBlock:v70];
    rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000941B8;
    v68[3] = &unk_1001AAED0;
    v68[4] = &v92;
    v69 = v59;
    [(NSMutableDictionary *)rangingBLEActionDevicesOther enumerateKeysAndObjectsUsingBlock:v68];
    v43 = [(NSMutableSet *)self->_xpcConnections count];
    if (v43)
    {
      v44 = (v93 + 5);
      v67 = v93[5];
      NSAppendPrintF(&v67, "%d XPC Cnx\n", v43);
      objc_storeStrong(v44, v67);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = self->_xpcConnections;
    v46 = [(NSMutableSet *)v45 countByEnumeratingWithState:&v63 objects:v98 count:16];
    if (v46)
    {
      v47 = *v64;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v63 + 1) + 8 * j);
          v50 = (v93 + 5);
          v62 = v93[5];
          xpcCnx = [v49 xpcCnx];
          NSAppendPrintF(&v62, "    %#{pid}", [xpcCnx processIdentifier]);
          objc_storeStrong(v50, v62);

          activatedDiscovery = [v49 activatedDiscovery];
          if (activatedDiscovery)
          {
            v53 = (v93 + 5);
            v61 = v93[5];
            v54 = CUDescriptionWithLevel();
            NSAppendPrintF(&v61, ", %@", v54);
            objc_storeStrong(v53, v61);
          }

          v55 = (v93 + 5);
          v60 = v93[5];
          NSAppendPrintF(&v60, "\n");
          objc_storeStrong(v55, v60);
        }

        v46 = [(NSMutableSet *)v45 countByEnumeratingWithState:&v63 objects:v98 count:16];
      }

      while (v46);
    }

    v4 = v93[5];
    _Block_object_dispose(&v92, 8);
  }

  else
  {
    v4 = NSPrintF("RPPeopleDaemon %{ptr}", a2, self);
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094298;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001244DC(self, a2, v2);
    }
  }

  if (!selfCopy->_xpcListener)
  {
    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.people"];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v4;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener _setQueue:selfCopy->_dispatchQueue];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
  }

  if (selfCopy->_airdropModeNotifyToken == -1)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100094530;
    handler[3] = &unk_1001AAFE8;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.sharing.airdrop-mode-changed", &selfCopy->_airdropModeNotifyToken, dispatchQueue, handler);
    airdropModeNotifyToken = selfCopy->_airdropModeNotifyToken;
    state64 = 0;
    notify_get_state(airdropModeNotifyToken, &state64);
    selfCopy->_airdropMode = state64;
  }

  if (!selfCopy->_systemMonitor)
  {
    v8 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = v8;

    [(CUSystemMonitor *)selfCopy->_systemMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000945C8;
    v14[3] = &unk_1001AA970;
    v14[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setFirstUnlockHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000945D0;
    v13[3] = &unk_1001AA970;
    v13[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setPrimaryAppleIDChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000945F8;
    v12[3] = &unk_1001AA970;
    v12[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setScreenOnChangedHandler:v12];
    v10 = selfCopy->_systemMonitor;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100094600;
    v11[3] = &unk_1001AA970;
    v11[4] = selfCopy;
    [(CUSystemMonitor *)v10 activateWithCompletion:v11];
  }

  [(RPPeopleDaemon *)selfCopy prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009467C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100124564(self, a2, v2);
      }
    }

    primaryAppleIDCached = selfCopy->_primaryAppleIDCached;
    selfCopy->_primaryAppleIDCached = 0;

    [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate];
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = 0;

    airdropModeNotifyToken = selfCopy->_airdropModeNotifyToken;
    if (airdropModeNotifyToken != -1)
    {
      notify_cancel(airdropModeNotifyToken);
      selfCopy->_airdropModeNotifyToken = -1;
    }

    [(NSXPCListener *)selfCopy->_xpcListener invalidate];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = 0;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = selfCopy->_xpcConnections;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          xpcCnx = [*(*(&v14 + 1) + 8 * i) xpcCnx];
          [xpcCnx invalidate];
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(RPPeopleDaemon *)selfCopy _discoveryEnsureStopped];
    [(RPPeopleDaemon *)selfCopy _familyEnsureStopped];
    [(RPPeopleDaemon *)selfCopy _friendsEnsureStopped];
    [(RPPeopleDaemon *)selfCopy _rangingInitiatorEnsureStopped];
    [(RPPeopleDaemon *)selfCopy _rangingResponderEnsureStopped];
    [(RPPeopleDaemon *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = [(NSMutableSet *)self->_xpcConnections count];
    if (!v3 && !self->_xpcListener)
    {
      self->_invalidateDone = 1;
      if (dword_1001D4910 <= 30)
      {
        if (dword_1001D4910 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_100124580(v3, v4, v5);
        }
      }
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  selfCopy = self;
  if ((changed & 0x10) != 0)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10012459C(self, a2, changed);
      }
    }

    [(RPPeopleDaemon *)selfCopy _familyEnsureStopped];
    v5 = +[RPDaemon sharedDaemon];
    [v5 postDaemonInfoChanges:2];

    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_1001245B8(v6, v7, v8);
      }
    }

    [(RPPeopleDaemon *)selfCopy _friendsEnsureStopped];
    v9 = +[RPDaemon sharedDaemon];
    [v9 postDaemonInfoChanges:128];

    self = [(RPPeopleDaemon *)selfCopy _update];
    if ((changedCopy & 0x40) == 0)
    {
LABEL_3:
      if ((changedCopy & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      [(NSMutableDictionary *)selfCopy->_familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE700];
      [(RPPeopleDaemon *)selfCopy _update];
      if ((changedCopy & 0x80000) == 0)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else if ((changed & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001245D4(self, a2, changed);
    }
  }

  [(RPPeopleDaemon *)selfCopy _update];
  if ((changedCopy & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((changedCopy & 0x80000) == 0)
  {
    return;
  }

LABEL_18:

  [(RPPeopleDaemon *)selfCopy reportIRKMetrics];
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  paramsCopy = params;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([commandCopy rangeOfString:@"FamilyReq" options:9] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(commandCopy, "rangeOfString:options:", @"FamilyAck", 9) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(commandCopy, "rangeOfString:options:", @"FamilyUp", 9) != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringGetTypeID();
    v33 = CFDictionaryGetTypedValue();
    v36 = v33;
    if (v33)
    {
      if ([commandCopy rangeOfString:@"FamilyReq" options:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([commandCopy rangeOfString:@"FamilyAck" options:9] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([commandCopy rangeOfString:@"FamilyUp" options:9] == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_37:

LABEL_38:
            v32 = 1;
            goto LABEL_39;
          }

          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100124670(paramsCopy);
          }

          selfCopy3 = self;
          v38 = 34;
        }

        else
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100124630(paramsCopy);
          }

          selfCopy3 = self;
          v38 = 33;
        }
      }

      else
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_1001245F0(paramsCopy);
        }

        selfCopy3 = self;
        v38 = 32;
      }

      [(RPPeopleDaemon *)selfCopy3 _sendCloudIdentityFrameType:v38 destinationID:v36 flags:0 msgCtx:0];
      goto LABEL_37;
    }

    if (dword_1001D4910 > 90)
    {
      goto LABEL_37;
    }

    if (dword_1001D4910 == -1)
    {
      v33 = _LogCategory_Initialize();
      if (!v33)
      {
        goto LABEL_37;
      }
    }

LABEL_27:
    sub_1001246B0(v33, v34, v35);
    goto LABEL_37;
  }

  if ([commandCopy rangeOfString:@"FriendReq" options:9] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(commandCopy, "rangeOfString:options:", @"FriendAck", 9) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(commandCopy, "rangeOfString:options:", @"FriendUp", 9) != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringGetTypeID();
    v33 = CFDictionaryGetTypedValue();
    v36 = v33;
    if (v33)
    {
      Int64 = CFDictionaryGetInt64();
      if (Int64)
      {
        if (dword_1001D4910 <= 10)
        {
          if (dword_1001D4910 != -1 || (Int64 = _LogCategory_Initialize(), Int64))
          {
            sub_1001246CC(Int64, v41, v42);
          }
        }

        v43 = objc_opt_new();
        [v43 setNonWakingRequest:1];
      }

      else
      {
        if (dword_1001D4910 <= 10)
        {
          if (dword_1001D4910 != -1 || (Int64 = _LogCategory_Initialize(), Int64))
          {
            sub_1001246E8(Int64, v41, v42);
          }
        }

        v43 = 0;
      }

      if ([commandCopy rangeOfString:@"FriendReq" options:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([commandCopy rangeOfString:@"FriendAck" options:9] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([commandCopy rangeOfString:@"FriendUp" options:9] == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_95:

            goto LABEL_37;
          }

          if (dword_1001D4910 > 30)
          {
            v44 = 66;
          }

          else
          {
            if (dword_1001D4910 == -1)
            {
              v44 = 66;
              if (!_LogCategory_Initialize())
              {
                goto LABEL_94;
              }
            }

            else
            {
              v44 = 66;
            }

            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon diagnosticCommand:params:]", 30, "Diag: Friend Identity Update: %##@\n", paramsCopy);
          }
        }

        else if (dword_1001D4910 > 30)
        {
          v44 = 65;
        }

        else
        {
          if (dword_1001D4910 == -1)
          {
            v44 = 65;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_94;
            }
          }

          else
          {
            v44 = 65;
          }

          LogPrintF(&dword_1001D4910, "[RPPeopleDaemon diagnosticCommand:params:]", 30, "Diag: Friend Identity Response: %##@\n", paramsCopy);
        }
      }

      else if (dword_1001D4910 > 30)
      {
        v44 = 64;
      }

      else
      {
        if (dword_1001D4910 == -1)
        {
          v44 = 64;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_94;
          }
        }

        else
        {
          v44 = 64;
        }

        LogPrintF(&dword_1001D4910, "[RPPeopleDaemon diagnosticCommand:params:]", 30, "Diag: Friend Identity Request: %##@\n", paramsCopy);
      }

LABEL_94:
      [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:v44 destinationID:v36 flags:1 msgCtx:v43];
      goto LABEL_95;
    }

    if (dword_1001D4910 > 90)
    {
      goto LABEL_37;
    }

    if (dword_1001D4910 == -1)
    {
      v33 = _LogCategory_Initialize();
      if (!v33)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_27;
  }

  v8 = [commandCopy caseInsensitiveCompare:@"FamilyClearDates"];
  if (!v8)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001247C8(v8, v9, v10);
      }
    }

    familyAccountIdentityMap = self->_familyAccountIdentityMap;
    v46 = &stru_1001AE720;
    goto LABEL_84;
  }

  v11 = [commandCopy caseInsensitiveCompare:@"FriendClearDates"];
  if (!v11)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        sub_1001247AC(v11, v12, v13);
      }
    }

    familyAccountIdentityMap = self->_friendAccountIdentityMap;
    v46 = &stru_1001AE740;
LABEL_84:
    [(NSMutableDictionary *)familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v46];
LABEL_85:
    [(RPPeopleDaemon *)self _update];
    goto LABEL_38;
  }

  v14 = [commandCopy caseInsensitiveCompare:@"FriendPrivacy"];
  if (!v14)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v14 = _LogCategory_Initialize(), v14))
      {
        sub_100124790(v14, v15, v16);
      }
    }

    [(RPPeopleDaemon *)self _updateFriendPrivacy];
    goto LABEL_38;
  }

  v17 = [commandCopy caseInsensitiveCompare:@"FriendSuggest"];
  if (v17)
  {
    v20 = [commandCopy caseInsensitiveCompare:@"PruneFriends"];
    if (v20)
    {
      v23 = [commandCopy caseInsensitiveCompare:@"ResetFriends"];
      if (!v23)
      {
        if (dword_1001D4910 <= 30)
        {
          if (dword_1001D4910 != -1 || (v23 = _LogCategory_Initialize(), v23))
          {
            sub_10012473C(v23, v24, v25);
          }
        }

        [(RPPeopleDaemon *)self _resetFriends];
        goto LABEL_38;
      }

      v26 = [commandCopy caseInsensitiveCompare:@"RegenerateSelfIdentity"];
      if (!v26)
      {
        if (dword_1001D4910 <= 30)
        {
          if (dword_1001D4910 != -1 || (v26 = _LogCategory_Initialize(), v26))
          {
            sub_100124720(v26, v27, v28);
          }
        }

        [(RPPeopleDaemon *)self regenerateSelfIdentity:@"dcmd"];
        goto LABEL_38;
      }

      v29 = [commandCopy caseInsensitiveCompare:@"update"];
      if (v29)
      {
        v32 = 0;
        goto LABEL_39;
      }

      if (dword_1001D4910 <= 30)
      {
        if (dword_1001D4910 != -1 || (v29 = _LogCategory_Initialize(), v29))
        {
          sub_100124704(v29, v30, v31);
        }
      }

      goto LABEL_85;
    }

    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v20 = _LogCategory_Initialize(), v20))
      {
        sub_100124758(v20, v21, v22);
      }
    }

    v32 = 1;
    [(RPPeopleDaemon *)self _pruneFriends:1];
  }

  else
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v17 = _LogCategory_Initialize(), v17))
      {
        sub_100124774(v17, v18, v19);
      }
    }

    v32 = 1;
    self->_friendsSuggestedNeedsUpdate = 1;
    [(RPPeopleDaemon *)self _update];
  }

LABEL_39:

  return v32;
}

- (BOOL)addOrUpdateIdentity:(id)identity source:(int)source error:(id *)error
{
  identityCopy = identity;
  if ([identityCopy type] != 15)
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_100002A3C;
    v74 = sub_1000031B4;
    v75 = 0;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000958AC;
    v66[3] = &unk_1001AE768;
    v68 = &v70;
    v10 = identityCopy;
    v67 = v10;
    errorCopy = error;
    v11 = objc_retainBlock(v66);
    v65 = v11;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon addOrUpdateIdentity:source:error:]", 30, "AddOrUpdateIdentity: %@\n", v10);
    }

    accountID = [v10 accountID];
    v19 = accountID;
    if (!accountID || ![accountID length])
    {
      v54 = v71;
      v55 = RPErrorF(4294960540, "No accountID", v13, v14, v15, v16, v17, v18, v60);
      v9 = 0;
      idsDeviceID = v54[5];
      v54[5] = v55;
      goto LABEL_22;
    }

    idsDeviceID = [v10 idsDeviceID];
    if (idsDeviceID)
    {
      if ([v10 type] == 6)
      {
        v33 = +[RPIdentityDaemon sharedIdentityDaemon];
        sameAccountDeviceIDs = [v33 sameAccountDeviceIDs];

        v64 = sameAccountDeviceIDs;
        v63 = [sameAccountDeviceIDs containsObject:idsDeviceID];
        if (v63)
        {
          v58 = v71;
          v59 = RPErrorF(4294960540, "Existing SameAccount device detected", v35, v36, v37, v38, v39, v40, v60);
          contactID = v58[5];
          v58[5] = v59;
        }

        else
        {
          sourceCopy = source;
          contactID = [v10 contactID];
          LODWORD(v60) = source;
          v62 = [(RPPeopleDaemon *)self _updateFriendIdentityWithAppleID:v19 contactID:contactID sendersKnownAlias:0 userAdded:1 updateDateRequested:1 suggestedContactIDs:0 source:v60];
          v43 = objc_alloc_init(NSMutableDictionary);
          deviceIRKData = [v10 deviceIRKData];
          [v43 setObject:deviceIRKData forKeyedSubscript:@"_dIRK"];

          edPKData = [v10 edPKData];
          [v43 setObject:edPKData forKeyedSubscript:@"_edPK"];

          featureFlags = [v10 featureFlags];
          if (featureFlags)
          {
            v47 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 featureFlags]);
          }

          else
          {
            v47 = &off_1001B8008;
          }

          [v43 setObject:v47 forKeyedSubscript:@"_ff"];
          if (featureFlags)
          {
          }

          sendersKnownAlias = [v10 sendersKnownAlias];
          LODWORD(v61) = sourceCopy;
          v49 = [(RPPeopleDaemon *)self _updateIdentityType:6 idsDeviceID:idsDeviceID appleID:v19 contactID:contactID sendersKnownAlias:sendersKnownAlias msg:v43 source:v61]| v62;

          v11 = v65;
          if ((v49 & 0xCA86C) != 0)
          {
            v50 = objc_alloc_init(RPCloudMessageContext);
            sendersKnownAlias2 = [v10 sendersKnownAlias];
            [(RPCloudMessageContext *)v50 setSendersKnownAlias:sendersKnownAlias2];

            [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:64 destinationID:v19 flags:1 msgCtx:v50];
          }
        }

        v9 = v63 ^ 1;
        v52 = v64;
        goto LABEL_21;
      }

      v56 = v71;
      v57 = RPErrorF(4294960540, "Only friend device identity allowed", v27, v28, v29, v30, v31, v32, v60);
    }

    else
    {
      v56 = v71;
      v57 = RPErrorF(4294960540, "No IDSDeviceID", v20, v21, v22, v23, v24, v25, v60);
    }

    v9 = 0;
    v52 = v56[5];
    v56[5] = v57;
LABEL_21:

LABEL_22:
    (v11[2])(v11);

    _Block_object_dispose(&v70, 8);
    goto LABEL_23;
  }

  v9 = [(RPPeopleDaemon *)self addOrUpdateAdHocPairedIdentity:identityCopy error:error];
LABEL_23:

  return v9;
}

- (BOOL)addOrUpdateAdHocPairedIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001247E4(identityCopy);
  }

  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 addOrUpdateAdHocPairedIdentity:identityCopy];

  return 1;
}

- (void)prefsChanged
{
  v3 = 1;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass <= 0xB && ((1 << DeviceClass) & 0x80E) != 0 || DeviceClass == 100)
  {
    v3 = 0;
  }

  v80 = 0;
  sharedInstance = [(objc_class *)off_1001D4980() sharedInstance];
  v79 = 0;
  v6 = [sharedInstance isDeviceEnrolledWithDeKOTA:&v79];
  v7 = v79;

  v78 = v7;
  v8 = (v7 == 0) & v6;
  if (self->_prefDisableSelfIdentityRolling != v8)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124824();
    }

    self->_prefDisableSelfIdentityRolling = v8;
  }

  Int64 = CFPrefs_GetInt64();
  if (v80)
  {
    v10 = 600;
  }

  else
  {
    v10 = Int64;
  }

  prefFamilyIdentityPruneSeconds = self->_prefFamilyIdentityPruneSeconds;
  if (v10 != prefFamilyIdentityPruneSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        prefFamilyIdentityPruneSeconds = self->_prefFamilyIdentityPruneSeconds;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FamilyIdentityPruneSeconds: %lld -> %lld\n", prefFamilyIdentityPruneSeconds, v10);
    }

LABEL_18:
    self->_prefFamilyIdentityPruneSeconds = v10;
  }

  v12 = CFPrefs_GetInt64();
  if (v80)
  {
    v13 = 604800;
  }

  else
  {
    v13 = v12;
  }

  prefFriendAccountPruneSeconds = self->_prefFriendAccountPruneSeconds;
  if (v13 != prefFriendAccountPruneSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        prefFriendAccountPruneSeconds = self->_prefFriendAccountPruneSeconds;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendAccountPruneSeconds: %lld -> %lld\n", prefFriendAccountPruneSeconds, v13);
    }

LABEL_27:
    self->_prefFriendAccountPruneSeconds = v13;
  }

  v15 = CFPrefs_GetInt64();
  prefFriendRefreshMaxSeconds = self->_prefFriendRefreshMaxSeconds;
  if (v15 == prefFriendRefreshMaxSeconds)
  {
    goto LABEL_34;
  }

  if (dword_1001D4910 <= 30)
  {
    v17 = self->_prefFriendRefreshMaxSeconds;
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      v17 = self->_prefFriendRefreshMaxSeconds;
    }

    LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendRefreshMax: %lld -> %lld\n", v17, v15);
  }

LABEL_33:
  self->_prefFriendRefreshMaxSeconds = v15;
LABEL_34:
  v18 = CFPrefs_GetInt64();
  prefFriendRefreshMinSeconds = self->_prefFriendRefreshMinSeconds;
  if (v18 != prefFriendRefreshMinSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        prefFriendRefreshMinSeconds = self->_prefFriendRefreshMinSeconds;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendRefreshMin: %lld -> %lld\n", prefFriendRefreshMinSeconds, v18);
    }

LABEL_41:
    self->_prefFriendRefreshMinSeconds = v18;
    p_prefFriendRefreshSeconds = &self->_prefFriendRefreshSeconds;
    goto LABEL_42;
  }

  p_prefFriendRefreshSeconds = &self->_prefFriendRefreshSeconds;
  if (v15 == prefFriendRefreshMaxSeconds)
  {
    prefFriendRefreshSeconds = self->_prefFriendRefreshSeconds;
    goto LABEL_46;
  }

LABEL_42:
  if (v18 < 1 || v18 >= self->_prefFriendRefreshMaxSeconds)
  {
    prefFriendRefreshSeconds = 0;
  }

  else
  {
    prefFriendRefreshSeconds = arc4random() % (self->_prefFriendRefreshMaxSeconds - self->_prefFriendRefreshMinSeconds + 1) + v18;
  }

LABEL_46:
  v22 = *p_prefFriendRefreshSeconds;
  if (prefFriendRefreshSeconds == *p_prefFriendRefreshSeconds)
  {
    goto LABEL_52;
  }

  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_51;
      }

      v22 = *p_prefFriendRefreshSeconds;
    }

    LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendRefreshSecs: %lld -> %lld\n", v22, prefFriendRefreshSeconds);
  }

LABEL_51:
  *p_prefFriendRefreshSeconds = prefFriendRefreshSeconds;
LABEL_52:
  v23 = CFPrefs_GetInt64();
  v24 = v80;
  if (v80)
  {
    v25 = "default";
  }

  else
  {
    v25 = "pref";
  }

  if (v80)
  {
    v26 = v3;
  }

  else
  {
    v26 = 1;
  }

  if (v80)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  if (v80)
  {
    v28 = "disabled";
  }

  else
  {
    v28 = "pref";
  }

  if ((v26 & 1) == 0)
  {
    v29 = v23;
    v30 = +[IDSServerBag sharedInstance];
    v31 = [v30 objectForKey:@"rapport-friend-keys-max-v2"];

    if (v31)
    {
      v28 = "server-v2";
    }

    else
    {
      v32 = +[IDSServerBag sharedInstance];
      v31 = [v32 objectForKey:@"rapport-friend-keys-max"];

      if (!v31)
      {
        v27 = v29;
        v28 = v25;
        goto LABEL_70;
      }

      v28 = "server";
    }

    v27 = CFGetInt64();

LABEL_70:
    v24 = v80;
  }

  v33 = "clamped";
  if ((v27 - 1001) < 0xFFFFFFFFFFFFFC16)
  {
    v34 = 0;
  }

  else
  {
    v33 = v28;
    v34 = v24 == 0;
  }

  if (v34)
  {
    v35 = v27;
  }

  else
  {
    v35 = 32;
  }

  if (!v24)
  {
    v28 = v33;
  }

  prefFriendSuggestMax = self->_prefFriendSuggestMax;
  if (v35 != prefFriendSuggestMax)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        LODWORD(prefFriendSuggestMax) = self->_prefFriendSuggestMax;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendSuggestMax: %d -> %lld (%s)\n", prefFriendSuggestMax, v35, v28);
    }

LABEL_84:
    self->_prefFriendSuggestMax = v35;
  }

  v37 = CFPrefs_GetInt64();
  if ((v37 - 0x80000000) >= 0xFFFFFFFF7FFFFFFFLL && v80 == 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = 3600;
  }

  prefFriendSuggestPollSeconds = self->_prefFriendSuggestPollSeconds;
  if (v39 != prefFriendSuggestPollSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_96;
        }

        LODWORD(prefFriendSuggestPollSeconds) = self->_prefFriendSuggestPollSeconds;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendSuggestPollSeconds: %d -> %lld\n", prefFriendSuggestPollSeconds, v39);
    }

LABEL_96:
    self->_prefFriendSuggestPollSeconds = v39;
  }

  v41 = CFPrefs_GetInt64();
  if (v80)
  {
    v42 = v3;
  }

  else
  {
    v42 = 1;
  }

  if (v80)
  {
    v43 = -1;
  }

  else
  {
    v43 = v41;
  }

  if (v80)
  {
    v44 = "disabled";
  }

  else
  {
    v44 = "pref";
  }

  if ((v42 & 1) == 0)
  {
    v45 = v41;
    v46 = +[IDSServerBag sharedInstance];
    v47 = [v46 objectForKey:@"rapport-friend-keys-initial-delay"];

    if (v47)
    {
      v43 = CFGetInt64();
      v44 = "server";
    }

    else
    {
      v44 = "default";
      v43 = v45;
    }
  }

  prefFriendSyncDelaySeconds = self->_prefFriendSyncDelaySeconds;
  if (v43 != prefFriendSyncDelaySeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_116;
        }

        prefFriendSyncDelaySeconds = self->_prefFriendSyncDelaySeconds;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "FriendSyncDelaySeconds: %lld -> %lld (%s)\n", prefFriendSyncDelaySeconds, v43, v44);
    }

LABEL_116:
    self->_prefFriendSyncDelaySeconds = v43;
  }

  v49 = CFPrefs_GetInt64();
  if (v80)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49 == 0;
  }

  v51 = !v50;
  if (self->_prefPeopleDiscoveryFamily != v51)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012487C();
    }

    self->_prefPeopleDiscoveryFamily = v51;
  }

  v52 = CFPrefs_GetInt64();
  if (v80)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52 == 0;
  }

  v54 = !v53;
  if (self->_prefPeopleDiscoveryFriends != v54)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001248D4();
    }

    self->_prefPeopleDiscoveryFriends = v54;
  }

  CFPrefs_GetDouble();
  if (v80)
  {
    v56 = 300.0;
  }

  else
  {
    v56 = v55;
  }

  prefPrivacyCoalesceMinSecs = self->_prefPrivacyCoalesceMinSecs;
  if (v56 != prefPrivacyCoalesceMinSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_147;
        }

        prefPrivacyCoalesceMinSecs = self->_prefPrivacyCoalesceMinSecs;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeoplePrivacyCoalesceMinSeconds: %.0f -> %.0f\n", prefPrivacyCoalesceMinSecs, v56);
    }

LABEL_147:
    self->_prefPrivacyCoalesceMinSecs = v56;
  }

  CFPrefs_GetDouble();
  if (v80)
  {
    v59 = 900.0;
  }

  else
  {
    v59 = v58;
  }

  prefPrivacyCoalesceMaxSecs = self->_prefPrivacyCoalesceMaxSecs;
  if (v59 != prefPrivacyCoalesceMaxSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_156;
        }

        prefPrivacyCoalesceMaxSecs = self->_prefPrivacyCoalesceMaxSecs;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeoplePrivacyCoalesceMaxSeconds: %.0f -> %.0f\n", prefPrivacyCoalesceMaxSecs, v59);
    }

LABEL_156:
    self->_prefPrivacyCoalesceMaxSecs = v59;
  }

  CFPrefs_GetDouble();
  v62 = v61;
  if (v80 && GestaltGetBoolean())
  {
    v62 = 2.0;
  }

  prefPTSBurstScanActionSecs = self->_prefPTSBurstScanActionSecs;
  if (v62 != prefPTSBurstScanActionSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_165;
        }

        prefPTSBurstScanActionSecs = self->_prefPTSBurstScanActionSecs;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeoplePTSBurstScanActionSeconds: %.3f -> %.3f\n", prefPTSBurstScanActionSecs, v62);
    }

LABEL_165:
    self->_prefPTSBurstScanActionSecs = v62;
  }

  CFPrefs_GetDouble();
  if (v80)
  {
    v65 = 2.0;
  }

  else
  {
    v65 = v64;
  }

  prefPTSBurstScanInfoSecs = self->_prefPTSBurstScanInfoSecs;
  if (v65 != prefPTSBurstScanInfoSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_174;
        }

        prefPTSBurstScanInfoSecs = self->_prefPTSBurstScanInfoSecs;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeoplePTSBurstScanInfoSeconds: %.3f -> %.3f\n", prefPTSBurstScanInfoSecs, v65);
    }

LABEL_174:
    self->_prefPTSBurstScanInfoSecs = v65;
  }

  v67 = CFPrefs_GetInt64();
  v68 = v67 != 0;
  if (v80)
  {
    v69 = v67;
    if (GestaltGetBoolean())
    {
      v70 = 0;
    }

    else
    {
      v70 = v69 == 0;
    }

    v68 = !v70;
  }

  if (self->_prefRanging != v68)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012492C();
    }

    self->_prefRanging = v68;
  }

  v71 = CFPrefs_GetInt64() != 0;
  if (self->_prefPeopleStrangers != v71)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124984();
    }

    self->_prefPeopleStrangers = v71;
  }

  if (CFPrefs_GetInt64())
  {
    v72 = 6;
  }

  else
  {
    v72 = 5;
  }

  if (v80)
  {
    v73 = 0;
  }

  else
  {
    v73 = v72;
  }

  prefTrackWhileAsleepState = self->_prefTrackWhileAsleepState;
  if (v73 != prefTrackWhileAsleepState)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1)
      {
LABEL_201:
        if (prefTrackWhileAsleepState >= 8)
        {
          if (prefTrackWhileAsleepState <= 9)
          {
            v75 = "?";
          }

          else
          {
            v75 = "User";
          }
        }

        else
        {
          v75 = (&off_1001AEB50)[prefTrackWhileAsleepState];
        }

        LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "People track while asleep enabled: %s -> %s\n", v75, (&off_1001AEB90)[v73]);
        goto LABEL_209;
      }

      if (_LogCategory_Initialize())
      {
        prefTrackWhileAsleepState = self->_prefTrackWhileAsleepState;
        goto LABEL_201;
      }
    }

LABEL_209:
    self->_prefTrackWhileAsleepState = v73;
  }

  v76 = CFPrefs_GetInt64() != 0;
  v77 = v80;
  if (!v80)
  {
    goto LABEL_216;
  }

  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_215;
      }

      v77 = v80;
    }

    LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "OneTimeDateRequestedResetCompleted: error returned %d\n", v77);
  }

LABEL_215:
  v76 = 0;
LABEL_216:
  if (self->_prefOneTimeDateRequestedResetCompleted != v76)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001249DC();
    }

    self->_prefOneTimeDateRequestedResetCompleted = v76;
  }

  [(RPPeopleDaemon *)self _update];
}

- (void)_update
{
  if ([(NSMutableSet *)self->_discoveryClients count])
  {
    [(RPPeopleDaemon *)self _discoveryEnsureStarted];
  }

  else
  {
    [(RPPeopleDaemon *)self _discoveryEnsureStopped];
  }

  if (self->_prefPeopleDiscoveryFamily && ([(RPPeopleDaemon *)self _primaryAppleID:0], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(RPPeopleDaemon *)self _familyEnsureStarted];
  }

  else
  {
    [(RPPeopleDaemon *)self _familyEnsureStopped];
  }

  if (self->_prefPeopleDiscoveryFriends)
  {
    [(RPPeopleDaemon *)self _friendsEnsureStarted];
  }

  else
  {
    [(RPPeopleDaemon *)self _friendsEnsureStopped];
  }

  if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
  {
    if (self->_ptsActive)
    {
      [(RPPeopleDaemon *)self _rangingInitiatorEnsureStarted];
    }

    else
    {
      [(RPPeopleDaemon *)self _rangingInitiatorEnsureStopped];
    }

    if (self->_prefRanging)
    {

      [(RPPeopleDaemon *)self _rangingBLEActionScannerEnsureStarted];
      return;
    }
  }

  else
  {
    [(RPPeopleDaemon *)self _rangingInitiatorEnsureStopped];
  }

  [(RPPeopleDaemon *)self _rangingBLEActionScannerEnsureStopped];
}

- (id)_primaryAppleID:(BOOL)d
{
  dCopy = d;
  p_primaryAppleIDCached = &self->_primaryAppleIDCached;
  v6 = self->_primaryAppleIDCached;
  v7 = v6;
  if (!dCopy && v6)
  {
    v8 = v6;
    goto LABEL_12;
  }

  primaryAppleID = [(CUSystemMonitor *)self->_systemMonitor primaryAppleID];
  if (primaryAppleID)
  {
    v10 = primaryAppleID;
    v8 = CUNormalizeEmailAddress();
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(p_primaryAppleIDCached, v8);
  if (dword_1001D4910 > 30 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
  {
    if (!dCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_100124A34(v8);
  if (dCopy)
  {
LABEL_11:
    [(RPPeopleDaemon *)self _update];
  }

LABEL_12:

  return v8;
}

- (void)regenerateSelfIdentity:(id)identity
{
  identityCopy = identity;
  *&self->_irkMetrics.selfIdentRolled = vadd_s32(*&self->_irkMetrics.selfIdentRolled, 0x100000001);
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100124A74(identityCopy);
  }

  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v4 regenerateSelfIdentity:identityCopy];

  [(NSMutableDictionary *)self->_familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE788];
  [(NSMutableDictionary *)self->_friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE7A8];
  [(RPPeopleDaemon *)self _update];
}

- (void)_discoveryEnsureStarted
{
  deviceDiscovery = self->_deviceDiscovery;
  v4 = &unk_1001D4000;
  if (!deviceDiscovery)
  {
    deviceDiscoveryID = self->_deviceDiscoveryID;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124AB4(deviceDiscoveryID);
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = v6;

    v8 = objc_alloc_init(off_1001D4988());
    v9 = self->_deviceDiscovery;
    self->_deviceDiscovery = v8;

    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:11];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"RPPeople"];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:20];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000972EC;
    v71[3] = &unk_1001AB250;
    v71[4] = self;
    v72 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v71];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100097310;
    v69[3] = &unk_1001AB250;
    v69[4] = self;
    v70 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v69];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100097334;
    v67[3] = &unk_1001AB278;
    v67[4] = self;
    v68 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v67];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10009735C;
    v65[3] = &unk_1001AB2A0;
    v65[4] = self;
    v66 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setInterruptionHandler:v65];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1000973F4;
    v63[3] = &unk_1001AE7C8;
    v64 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setInvalidationHandler:v63];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = self->_discoveryClients;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v60;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 |= [*(*(&v59 + 1) + 8 * i) discoveryFlags];
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v12);

    self->_discoveryFlagsAggregate = v13;
    if ((v13 & 0x5FE) == 2)
    {
      v16 = 1048577;
      goto LABEL_22;
    }
  }

  else
  {

    LOWORD(v13) = 0;
    self->_discoveryFlagsAggregate = 0;
  }

  if ((v13 & 0x5F8) != 0 || (v13 & 6) == 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 33;
  }

LABEL_22:
  discoveryFlags = [(SFDeviceDiscovery *)self->_deviceDiscovery discoveryFlags];
  if (v16 != discoveryFlags)
  {
    if (deviceDiscovery)
    {
      if (dword_1001D4910 <= 30)
      {
        v19 = discoveryFlags;
        if (dword_1001D4910 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _discoveryEnsureStarted]", 30, "Device discovery update flags %#{flags} -> %#{flags}\n", v19, &unk_100148F00, v16, &unk_100148F00);
        }
      }
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:v16];
  }

  prefTrackWhileAsleepState = self->_prefTrackWhileAsleepState;
  v21 = prefTrackWhileAsleepState == 6;
  if (!prefTrackWhileAsleepState)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v22 = self->_discoveryClients;
    v21 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v55 objects:v74 count:16];
    if (v21)
    {
      v23 = *v56;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(v22);
          }

          if ([*(*(&v55 + 1) + 8 * j) discoveryFlags])
          {
            v21 = 1;
            goto LABEL_40;
          }
        }

        v21 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v55 objects:v74 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
  }

  if (v21 != [(SFDeviceDiscovery *)self->_deviceDiscovery trackPeers])
  {
    if (deviceDiscovery && dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124AF4();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setTrackPeers:v21];
  }

  v25 = v21 | ((v13 & 0x200) >> 9);
  if (v25 != [(SFDeviceDiscovery *)self->_deviceDiscovery overrideScreenOff])
  {
    if (deviceDiscovery && dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124B4C();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setOverrideScreenOff:v25];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = self->_discoveryClients;
  v27 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v51 objects:v73 count:16];
  if (!v27)
  {

    v30 = 0;
LABEL_68:
    v29 = 20;
    goto LABEL_69;
  }

  v28 = v27;
  v49 = deviceDiscovery;
  v29 = 0;
  v30 = 0;
  v31 = *v52;
  do
  {
    for (k = 0; k != v28; k = k + 1)
    {
      if (*v52 != v31)
      {
        objc_enumerationMutation(v26);
      }

      v33 = *(*(&v51 + 1) + 8 * k);
      scanRate = [v33 scanRate];
      discoveryMode = [v33 discoveryMode];
      if (v29 <= scanRate)
      {
        v36 = scanRate;
      }

      else
      {
        v36 = v29;
      }

      if (discoveryMode != 1)
      {
        v29 = v36;
      }

      v30 |= discoveryMode == 1;
    }

    v28 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v51 objects:v73 count:16];
  }

  while (v28);

  deviceDiscovery = v49;
  v4 = &unk_1001D4000;
  if (!v29)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (self->_ptsActive == (v30 & 1))
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_86;
  }

  if (deviceDiscovery)
  {
    v37 = v4[580];
    if (v37 <= 30 && (v37 != -1 || _LogCategory_Initialize()))
    {
      sub_100124BA4();
    }
  }

  self->_ptsActive = v30 & 1;
  changeFlags = [(SFDeviceDiscovery *)self->_deviceDiscovery changeFlags];
  if (v30)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  if ((changeFlags & 0xFFFFFFFB | v39) != changeFlags)
  {
    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:?];
  }

  if (v30)
  {
    if (self->_prefPTSBurstScanInfoSecs > 0.0)
    {
      ptsBurstScanTimer = self->_ptsBurstScanTimer;
      if (ptsBurstScanTimer)
      {
        v41 = ptsBurstScanTimer;
        dispatch_source_cancel(v41);
        v42 = self->_ptsBurstScanTimer;
        self->_ptsBurstScanTimer = 0;
      }

      v43 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v44 = self->_ptsBurstScanTimer;
      self->_ptsBurstScanTimer = v43;
      v45 = v43;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100097450;
      handler[3] = &unk_1001AA970;
      handler[4] = self;
      dispatch_source_set_event_handler(v45, handler);
      CUDispatchTimerSet();
      dispatch_activate(v45);
    }

LABEL_86:
    if (self->_ptsBurstScanTimer)
    {
      if (v29 <= 50)
      {
        v29 = 50;
      }
    }

    else
    {
      Boolean = GestaltGetBoolean();
      v47 = 30;
      if (v29 > 30)
      {
        v47 = v29;
      }

      if (Boolean)
      {
        v29 = v47;
      }
    }
  }

LABEL_94:
  v48 = v4[580];
  if (v48 <= 30 && (v48 != -1 || _LogCategory_Initialize()))
  {
    sub_100124BFC(v29);
  }

  if (v29 != [(SFDeviceDiscovery *)self->_deviceDiscovery scanRate])
  {
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:v29];
  }

  if (!deviceDiscovery)
  {
    [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1001AE7E8];
  }
}

- (void)_discoveryEnsureStopped
{
  if (self->_deviceDiscovery)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124D98(self);
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;

    ++self->_deviceDiscoveryID;
    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = 0;

    self->_discoveryFlagsAggregate = 0;
    if (self->_ptsActive)
    {
      if (dword_1001D4910 <= 30)
      {
        if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_100124DDC(v5, v6, v7);
        }
      }

      self->_ptsActive = 0;
    }

    [(NSMutableSet *)self->_rangingCapableDevices removeAllObjects];
    ptsBurstScanTimer = self->_ptsBurstScanTimer;
    if (ptsBurstScanTimer)
    {
      v10 = ptsBurstScanTimer;
      dispatch_source_cancel(v10);
      v9 = self->_ptsBurstScanTimer;
      self->_ptsBurstScanTimer = 0;
    }
  }
}

- (void)_daemonDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v7 = objc_alloc_init(RPDevice);
    [v7 setIdentifier:uUIDString];
    [v7 updateWithSFDevice:foundCopy changes:0xFFFFFFFFLL];
    [(NSMutableDictionary *)self->_discoveredDevices setObject:v7 forKeyedSubscript:uUIDString];
    if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124DF8(v7);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_xpcConnections;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) clientDeviceFound:v7 report:{1, v13}];
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [(RPPeopleDaemon *)self _rangingUpdateForDevice:v7];
  }
}

- (void)_daemonDeviceLost:(id)lost
{
  identifier = [lost identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v6 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:uUIDString];
    if (v6)
    {
      [(NSMutableDictionary *)self->_discoveredDevices setObject:0 forKeyedSubscript:uUIDString];
      if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124E38(v6);
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = self->_xpcConnections;
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * i) clientDeviceLost:{v6, v12}];
          }

          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }

      [(RPPeopleDaemon *)self _rangingRemoveDevice:v6];
    }
  }
}

- (void)_daemonDeviceChanged:(id)changed changes:(unsigned int)changes
{
  v4 = *&changes;
  changedCopy = changed;
  identifier = [changedCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v9 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:uUIDString];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 updateWithSFDevice:changedCopy changes:v4];
      if ((v11 & 0x25B) != 0)
      {
        v12 = 30;
      }

      else
      {
        v12 = 20;
      }

      if (v12 >= dword_1001D4910 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _daemonDeviceChanged:changes:]", v12, "Device changed: %@, %#{flags}\n", v10, v11, &unk_10014901C);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = self->_xpcConnections;
      v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v18 + 1) + 8 * i) clientDeviceChanged:v10 changes:v11];
          }

          v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }

      [(RPPeopleDaemon *)self _rangingUpdateForDevice:v10];
    }

    else
    {
      [(RPPeopleDaemon *)self _daemonDeviceFound:changedCopy];
    }
  }
}

- (void)_daemonDevice:(id)device updatedMeasurement:(id)measurement
{
  deviceCopy = device;
  measurementCopy = measurement;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v9 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:identifier];
    if (v9)
    {
      [deviceCopy setRelativeLocation:measurementCopy];
      if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124E78(deviceCopy);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = self->_xpcConnections;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * i) clientDevice:v9 updatedMeasurement:{measurementCopy, v15}];
          }

          v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)_familyEnsureStarted
{
  selfCopy = self;
  if (!self->_familyMemberMonitor)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100124EB8(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(CUSystemMonitor);
    familyMemberMonitor = selfCopy->_familyMemberMonitor;
    selfCopy->_familyMemberMonitor = v4;

    [(CUSystemMonitor *)selfCopy->_familyMemberMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100097FC8;
    v14[3] = &unk_1001AA970;
    v14[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_familyMemberMonitor setFamilyUpdatedHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009801C;
    v13[3] = &unk_1001AA970;
    v13[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_familyMemberMonitor setFirstUnlockHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100098024;
    v12[3] = &unk_1001AA970;
    v12[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_familyMemberMonitor setSystemNameChangedHandler:v12];
    v6 = selfCopy->_familyMemberMonitor;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009802C;
    v11[3] = &unk_1001AA970;
    v11[4] = selfCopy;
    [(CUSystemMonitor *)v6 activateWithCompletion:v11];
  }

  if (!selfCopy->_familySyncCheckTimer)
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
    familySyncCheckTimer = selfCopy->_familySyncCheckTimer;
    selfCopy->_familySyncCheckTimer = v7;

    v9 = selfCopy->_familySyncCheckTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100098034;
    handler[3] = &unk_1001AA970;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(v9, handler);
    CUDispatchTimerSet();
    dispatch_activate(selfCopy->_familySyncCheckTimer);
  }

  [(RPPeopleDaemon *)selfCopy _updateFamilyIdentities];
}

- (void)_familyEnsureStopped
{
  bufferedCloudMessages = self->_bufferedCloudMessages;
  self->_bufferedCloudMessages = 0;

  if (self->_familyMemberMonitor)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_100124ED4(v4, v5, v6);
      }
    }

    [(CUSystemMonitor *)self->_familyMemberMonitor invalidate];
    familyMemberMonitor = self->_familyMemberMonitor;
    self->_familyMemberMonitor = 0;
  }

  familyNotifyToken = self->_familyNotifyToken;
  if (familyNotifyToken != -1)
  {
    notify_cancel(familyNotifyToken);
    self->_familyNotifyToken = -1;
  }

  [(NSMutableDictionary *)self->_familyAccountIdentityMap removeAllObjects];
  familyAccountIdentityMap = self->_familyAccountIdentityMap;
  self->_familyAccountIdentityMap = 0;

  [(NSMutableDictionary *)self->_familyDeviceIdentityMap removeAllObjects];
  familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
  self->_familyDeviceIdentityMap = 0;

  self->_familyFlags = 0;
  familySyncCheckTimer = self->_familySyncCheckTimer;
  if (familySyncCheckTimer)
  {
    v13 = familySyncCheckTimer;
    dispatch_source_cancel(v13);
    v12 = self->_familySyncCheckTimer;
    self->_familySyncCheckTimer = 0;
  }
}

- (id)getFamilyURIs
{
  familyMembers = [(CUSystemMonitor *)self->_familyMemberMonitor familyMembers];
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = familyMembers;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isMe] & 1) == 0)
        {
          appleID = [v9 appleID];

          if (appleID)
          {
            appleID2 = [v9 appleID];
            [v3 addObject:appleID2];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateFamilyIdentities
{
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    _updateFamilyAccounts = [(RPPeopleDaemon *)self _updateFamilyAccounts];
    v7 = [(RPPeopleDaemon *)self _updateFamilyDevices]+ _updateFamilyAccounts;
    _pruneFamilyDevices = [(RPPeopleDaemon *)self _pruneFamilyDevices];
    [(RPPeopleDaemon *)self _processBufferedCloudMessages];
    [(RPPeopleDaemon *)self _updateFamilySyncing];
    if (v7 | _pruneFamilyDevices)
    {
      v9 = +[RPDaemon sharedDaemon];
      [v9 postDaemonInfoChanges:2];
    }

    [(RPPeopleDaemon *)self _updateFamilyNotification];
  }

  else if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_100124EF0(firstUnlocked, v4, v5);
    }
  }
}

- (BOOL)_updateFamilyAccounts
{
  familyMembers = [(CUSystemMonitor *)self->_familyMemberMonitor familyMembers];
  if (familyMembers || (-[NSMutableDictionary allKeys](self->_familyAccountIdentityMap, "allKeys"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    familyAccountIdentityMap = self->_familyAccountIdentityMap;
    if (!familyAccountIdentityMap)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->_familyAccountIdentityMap;
      self->_familyAccountIdentityMap = v9;

      v11 = +[RPIdentityDaemon sharedIdentityDaemon];
      v38 = 0;
      v12 = [v11 identitiesOfType:3 error:&v38];
      v27 = v38;

      if (!v12 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFamilyAccounts]", 90, "### Load family account identities failed: %{error}\n", v27);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v15)
      {
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            identifier = [v18 identifier];
            if (identifier)
            {
              [(NSMutableDictionary *)self->_familyAccountIdentityMap setObject:v18 forKeyedSubscript:identifier];
              if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFamilyAccounts]", 30, "Loaded family account identity: %@\n", v18);
              }

              *(v40 + 24) = 1;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v15);
      }

      familyAccountIdentityMap = self->_familyAccountIdentityMap;
    }

    [(NSMutableDictionary *)familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE808];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = familyMembers;
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v43 count:16];
    if (v21)
    {
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          if (([v24 isMe] & 1) == 0 && -[RPPeopleDaemon _updateFamilyIdentityWithFamilyMember:](self, "_updateFamilyIdentityWithFamilyMember:", v24))
          {
            *(v40 + 24) = 1;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v30 objects:v43 count:16];
      }

      while (v21);
    }

    v25 = self->_familyAccountIdentityMap;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100098840;
    v29[3] = &unk_1001AE830;
    v29[4] = &v39;
    [(NSMutableDictionary *)v25 enumerateKeysAndObjectsUsingBlock:v29];
    v13 = *(v40 + 24);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100124F0C(v5, v6, v7);
      }
    }

    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)_updateFamilyIdentityWithFamilyMember:(id)member
{
  memberCopy = member;
  appleID = [memberCopy appleID];
  if (appleID)
  {
    v6 = CUNormalizeEmailAddress();
    v7 = [(NSMutableDictionary *)self->_familyAccountIdentityMap objectForKeyedSubscript:v6];
    LODWORD(v8) = v7 == 0;
    v9 = v7;
    if (!v7)
    {
      v9 = objc_alloc_init(RPIdentity);
    }

    [v9 setPresent:1];
    dateAdded = [v9 dateAdded];

    if (!dateAdded)
    {
      v8 = +[NSDate date];
      [v9 setDateAdded:v8];

      LODWORD(v8) = 1;
    }

    dateRemoved = [v9 dateRemoved];

    if (dateRemoved)
    {
      [v9 setDateRemoved:0];
      LODWORD(v8) = 1;
    }

    identifier = [v9 identifier];
    v13 = [identifier isEqual:v6];

    if ((v13 & 1) == 0)
    {
      [v9 setIdentifier:v6];
      LODWORD(v8) = 1;
    }

    if ([v9 type] == 3)
    {
      if (v7)
      {
        if (!v8)
        {
          if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100124F68(v9);
          }

          LOBYTE(v8) = 0;
LABEL_33:

          goto LABEL_34;
        }

LABEL_22:
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100124FA8(v9);
        }

        v8 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v8 saveIdentity:v9 error:0];

        LOBYTE(v8) = 1;
        goto LABEL_33;
      }
    }

    else
    {
      [v9 setType:3];
      if (v7)
      {
        goto LABEL_22;
      }

      LOBYTE(v8) = 1;
    }

    familyAccountIdentityMap = self->_familyAccountIdentityMap;
    if (!familyAccountIdentityMap)
    {
      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = self->_familyAccountIdentityMap;
      self->_familyAccountIdentityMap = v15;

      familyAccountIdentityMap = self->_familyAccountIdentityMap;
    }

    [(NSMutableDictionary *)familyAccountIdentityMap setObject:v9 forKeyedSubscript:v6];
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124FE8(v9);
    }

    v17 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v17 saveIdentity:v9 error:0];

    goto LABEL_33;
  }

  if (dword_1001D4910 <= 50 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100125028(memberCopy);
  }

  LOBYTE(v8) = 0;
LABEL_34:

  return v8;
}

- (BOOL)_updateFamilyDevices
{
  if (self->_familyDeviceIdentityMap)
  {
    return 0;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
  self->_familyDeviceIdentityMap = v4;

  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  v23 = 0;
  v7 = [v6 loadFamilyDeviceIdentitiesWithError:&v23];
  v8 = v23;

  if (!v7 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100125068(v8);
  }

  v18 = v8;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v2 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        identifier = [v14 identifier];
        if (identifier)
        {
          [(NSMutableDictionary *)self->_familyDeviceIdentityMap setObject:v14 forKeyedSubscript:identifier];
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001250A8(v14);
          }

          v2 = 1;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v16 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v11 = v16;
    }

    while (v16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_pruneFamilyDevices
{
  prefFamilyIdentityPruneSeconds = self->_prefFamilyIdentityPruneSeconds;
  if (prefFamilyIdentityPruneSeconds <= 0)
  {
    if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125128(prefFamilyIdentityPruneSeconds);
    }

    return 0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(NSMutableDictionary *)self->_familyAccountIdentityMap allKeys];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v20 = 0;
      v7 = *v25;
      v19 = v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_familyAccountIdentityMap objectForKeyedSubscript:v9];
          dateRemoved = [v10 dateRemoved];
          v12 = dateRemoved;
          if (dateRemoved)
          {
            [dateRemoved timeIntervalSinceReferenceDate];
            v14 = (Current - v13);
            if (prefFamilyIdentityPruneSeconds <= v14)
            {
              if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _pruneFamilyDevices]", 30, "Prune family account identity: %ll{dur}, %@\n", v14, v10);
              }

              [(NSMutableDictionary *)self->_familyAccountIdentityMap setObject:0 forKeyedSubscript:v9];
              v15 = +[RPIdentityDaemon sharedIdentityDaemon];
              [v15 removeIdentity:v10 error:0];

              familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3221225472;
              v23[0] = sub_100099178;
              v23[1] = &unk_1001AE858;
              v23[2] = v9;
              v23[3] = v10;
              v23[4] = self;
              [(NSMutableDictionary *)familyDeviceIdentityMap enumerateKeysAndObjectsUsingBlock:v22];
              v20 = 1;
            }

            else if (dword_1001D4910 <= 9 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _pruneFamilyDevices]", 9, "Skipping prune family account identity: premature, %ll{dur}, %@\n", v14, v10, v19);
            }
          }

          else if (dword_1001D4910 <= 8 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001250E8(v10);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    else
    {
      v20 = 0;
    }

    return v20;
  }
}

- (void)_updateFamilySyncing
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 10;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  systemName = [(CUSystemMonitor *)self->_familyMemberMonitor systemName];
  if (systemName)
  {
    CFStringGetTypeID();
    v4 = CFPrefs_CopyTypedValue();
    v5 = v4;
    v6 = v4 != 0;
    if (v4 && ([v4 isEqual:systemName] & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      CFPrefs_SetValue();
    }
  }

  else
  {
    v6 = 0;
  }

  familyAccountIdentityMap = self->_familyAccountIdentityMap;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000995A4;
  v13[3] = &unk_1001AE880;
  v13[6] = &v35;
  v13[7] = &v31;
  v14 = v6;
  v13[8] = &v27;
  v13[9] = &v23;
  v13[4] = systemName;
  v13[5] = self;
  v13[10] = &v39;
  v13[11] = &v15;
  v13[12] = &v19;
  [(NSMutableDictionary *)familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v13];
  maxNumFamilyDevices = self->_irkMetrics.maxNumFamilyDevices;
  v9 = [(NSMutableDictionary *)self->_familyDeviceIdentityMap count];
  if (maxNumFamilyDevices <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = maxNumFamilyDevices;
  }

  self->_irkMetrics.maxNumFamilyDevices = v10;
  self->_sendIRKMetricsReport = 1;
  v11 = *(v40 + 6);
  if (dword_1001D4910 <= v11)
  {
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v11 = *(v40 + 6);
    }

    v12 = [(NSMutableDictionary *)self->_familyAccountIdentityMap count];
    LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFamilySyncing]", v11, "Updated family account syncing: Total %d, Removed %d, Refresh %d, Retry %d, Later %d, Request %d, Failed %d\n", v12, *(v36 + 6), *(v32 + 6), *(v28 + 6), *(v24 + 6), *(v20 + 6), *(v16 + 6));
  }

LABEL_15:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
}

- (void)receivedFamilyIdentityRequest:(id)request msgCtx:(id)ctx
{
  requestCopy = request;
  ctxCopy = ctx;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  appleID = [ctxCopy appleID];
  fromID = [ctxCopy fromID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v9 = self->_familyAccountIdentityMap;
    v10 = v9;
    if (v9)
    {
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:appleID];

      if (v11)
      {
        CFStringGetTypeID();
        v12 = CFDictionaryGetTypedValue();
        v15 = v12;
        if (v12)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon receivedFamilyIdentityRequest:msgCtx:]", 30, "Received family identity request: from '%{mask}', IDS '%.8@'\n", appleID, v15);
          }

          LODWORD(v16) = 2;
          [(RPPeopleDaemon *)self _updateIdentityType:4 idsDeviceID:v15 appleID:appleID contactID:0 sendersKnownAlias:0 msg:requestCopy source:v16];
          [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:33 destinationID:fromID flags:0 msgCtx:ctxCopy];
        }

        else if (dword_1001D4910 <= 60)
        {
          if (dword_1001D4910 != -1 || (v12 = _LogCategory_Initialize(), v12))
          {
            sub_10012522C(v12, v13, v14);
          }
        }
      }

      else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125248(appleID);
      }
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125288(appleID);
      }

      [(RPPeopleDaemon *)self _bufferCloudMessage:requestCopy frameType:32 msgCtx:ctxCopy];
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001251EC(appleID);
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:requestCopy frameType:32 msgCtx:ctxCopy];
  }
}

- (void)receivedFamilyIdentityResponse:(id)response msgCtx:(id)ctx
{
  responseCopy = response;
  ctxCopy = ctx;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  appleID = [ctxCopy appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v8 = self->_familyAccountIdentityMap;
    v9 = v8;
    if (v8)
    {
      v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:appleID];
      if (v10)
      {
        CFStringGetTypeID();
        v11 = CFDictionaryGetTypedValue();
        v14 = v11;
        if (v11)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon receivedFamilyIdentityResponse:msgCtx:]", 30, "Received family identity response: from '%{mask}', IDS '%.8@'\n", appleID, v14);
          }

          v15 = +[NSDate date];
          [v10 setDateAcknowledged:v15];

          v16 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v16 saveIdentity:v10 error:0];

          LODWORD(v17) = 2;
          [(RPPeopleDaemon *)self _updateIdentityType:4 idsDeviceID:v14 appleID:appleID contactID:0 sendersKnownAlias:0 msg:responseCopy source:v17];
        }

        else if (dword_1001D4910 <= 60)
        {
          if (dword_1001D4910 != -1 || (v11 = _LogCategory_Initialize(), v11))
          {
            sub_100125308(v11, v12, v13);
          }
        }
      }

      else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125324(appleID);
      }
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125364(appleID);
      }

      [(RPPeopleDaemon *)self _bufferCloudMessage:responseCopy frameType:33 msgCtx:ctxCopy];
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001252C8(appleID);
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:responseCopy frameType:33 msgCtx:ctxCopy];
  }
}

- (void)receivedFamilyIdentityUpdate:(id)update msgCtx:(id)ctx
{
  updateCopy = update;
  ctxCopy = ctx;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  appleID = [ctxCopy appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v8 = self->_familyAccountIdentityMap;
    v9 = v8;
    if (v8)
    {
      v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:appleID];

      if (v10)
      {
        CFStringGetTypeID();
        v11 = CFDictionaryGetTypedValue();
        v14 = v11;
        if (v11)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon receivedFamilyIdentityUpdate:msgCtx:]", 30, "Received family identity update: from '%{mask}', IDS '%.8@'\n", appleID, v14);
          }

          LODWORD(v15) = 2;
          [(RPPeopleDaemon *)self _updateIdentityType:4 idsDeviceID:v14 appleID:appleID contactID:0 sendersKnownAlias:0 msg:updateCopy source:v15];
        }

        else if (dword_1001D4910 <= 60)
        {
          if (dword_1001D4910 != -1 || (v11 = _LogCategory_Initialize(), v11))
          {
            sub_1001253E4(v11, v12, v13);
          }
        }
      }

      else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125400(appleID);
      }
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125440(appleID);
      }

      [(RPPeopleDaemon *)self _bufferCloudMessage:updateCopy frameType:34 msgCtx:ctxCopy];
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001253A4(appleID);
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:updateCopy frameType:34 msgCtx:ctxCopy];
  }
}

- (void)_updateFamilyNotification
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  if ([(NSMutableDictionary *)self->_familyDeviceIdentityMap count])
  {
    v14[3] |= 2uLL;
  }

  familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009A2AC;
  v12[3] = &unk_1001AE830;
  v12[4] = &v13;
  [(NSMutableDictionary *)familyDeviceIdentityMap enumerateKeysAndObjectsUsingBlock:v12];
  familyFlags = self->_familyFlags;
  v5 = v14;
  v6 = v14[3];
  if (v6 != familyFlags)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        v7 = _LogCategory_Initialize();
        v5 = v14;
        if (!v7)
        {
          goto LABEL_8;
        }

        v6 = v14[3];
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFamilyNotification]", 30, "Family flags changed: %#ll{flags} -> %#ll{flags}\n", familyFlags, &unk_10014905F, v6, &unk_10014905F);
      v5 = v14;
    }

LABEL_8:
    v8 = v5[3];
    familyNotifyToken = self->_familyNotifyToken;
    p_familyNotifyToken = &self->_familyNotifyToken;
    v9 = familyNotifyToken;
    *(p_familyNotifyToken - 1) = v8;
    if (familyNotifyToken == -1)
    {
      notify_register_check("com.apple.rapport.familyFlagsChanged", p_familyNotifyToken);
      v9 = *p_familyNotifyToken;
      v8 = v14[3];
    }

    notify_set_state(v9, v8);
    notify_post("com.apple.rapport.familyFlagsChanged");
  }

  _Block_object_dispose(&v13, 8);
}

- (void)_friendsEnsureStarted
{
  [(RPPeopleDaemon *)self _friendsUpdateSuggestedIfNeeded];
  [(RPPeopleDaemon *)self _updateFriendIdentities];
  if (!self->_privacyChangedCoalescer && self->_prefPrivacyCoalesceMinSecs > 0.0 && self->_prefPrivacyCoalesceMaxSecs > 0.0)
  {
    v3 = objc_alloc_init(CUCoalescer);
    privacyChangedCoalescer = self->_privacyChangedCoalescer;
    self->_privacyChangedCoalescer = v3;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000978C;
    v7[3] = &unk_1001AA970;
    v7[4] = self;
    [(CUCoalescer *)self->_privacyChangedCoalescer setActionHandler:v7];
    [(CUCoalescer *)self->_privacyChangedCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_privacyChangedCoalescer setMinDelay:self->_prefPrivacyCoalesceMinSecs];
    [(CUCoalescer *)self->_privacyChangedCoalescer setMaxDelay:self->_prefPrivacyCoalesceMaxSecs];
  }

  if (self->_privacyChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10009A480;
    v6[3] = &unk_1001AAFE8;
    v6[4] = self;
    notify_register_dispatch("com.apple.sharing.privacy-changed", &self->_privacyChangedNotifyToken, dispatchQueue, v6);
    [(CUCoalescer *)self->_privacyChangedCoalescer trigger];
  }
}

- (void)_friendsEnsureStopped
{
  [(NSMutableDictionary *)self->_friendAccountIdentityMap removeAllObjects];
  friendAccountIdentityMap = self->_friendAccountIdentityMap;
  self->_friendAccountIdentityMap = 0;

  [(NSMutableDictionary *)self->_friendDeviceIdentityMap removeAllObjects];
  friendDeviceIdentityMap = self->_friendDeviceIdentityMap;
  self->_friendDeviceIdentityMap = 0;

  friendsSuggestedArray = self->_friendsSuggestedArray;
  self->_friendsSuggestedArray = 0;

  self->_friendsSuggestedNeedsUpdate = 0;
  friendsSuggestedNotifyToken = self->_friendsSuggestedNotifyToken;
  if (friendsSuggestedNotifyToken != -1)
  {
    notify_cancel(friendsSuggestedNotifyToken);
    self->_friendsSuggestedNotifyToken = -1;
  }

  [(CUCoalescer *)self->_privacyChangedCoalescer invalidate];
  privacyChangedCoalescer = self->_privacyChangedCoalescer;
  self->_privacyChangedCoalescer = 0;

  privacyChangedNotifyToken = self->_privacyChangedNotifyToken;
  if (privacyChangedNotifyToken != -1)
  {
    notify_cancel(privacyChangedNotifyToken);
    self->_privacyChangedNotifyToken = -1;
  }

  friendsSuggestedPollTimer = self->_friendsSuggestedPollTimer;
  if (friendsSuggestedPollTimer)
  {
    v11 = friendsSuggestedPollTimer;
    dispatch_source_cancel(v11);
    v10 = self->_friendsSuggestedPollTimer;
    self->_friendsSuggestedPollTimer = 0;
  }
}

- (void)_friendsUpdateSuggestedIfNeeded
{
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if ((firstUnlocked & 1) == 0)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
      {
        sub_10012549C(firstUnlocked, v4, v5);
      }
    }

    return;
  }

  p_friendsSuggestedNotifyToken = &self->_friendsSuggestedNotifyToken;
  friendsSuggestedNotifyToken = self->_friendsSuggestedNotifyToken;
  prefFriendSuggestMax = self->_prefFriendSuggestMax;
  if (prefFriendSuggestMax < 1)
  {
    if (friendsSuggestedNotifyToken != -1)
    {
      if (dword_1001D4910 > 30)
      {
        goto LABEL_22;
      }

      if (dword_1001D4910 != -1 || (friendsSuggestedNotifyToken = _LogCategory_Initialize(), friendsSuggestedNotifyToken))
      {
        sub_1001254B8(friendsSuggestedNotifyToken, v4, v5);
      }

      friendsSuggestedNotifyToken = *p_friendsSuggestedNotifyToken;
      if (friendsSuggestedNotifyToken != -1)
      {
LABEL_22:
        friendsSuggestedNotifyToken = notify_cancel(friendsSuggestedNotifyToken);
        *p_friendsSuggestedNotifyToken = -1;
      }
    }

LABEL_23:
    friendsSuggestedPollTimer = self->_friendsSuggestedPollTimer;
    if (!friendsSuggestedPollTimer)
    {
      goto LABEL_31;
    }

    if (dword_1001D4910 >= 31)
    {
      v12 = friendsSuggestedPollTimer;
    }

    else
    {
      if (dword_1001D4910 != -1 || _LogCategory_Initialize())
      {
        sub_1001254F0();
      }

      friendsSuggestedNotifyToken = self->_friendsSuggestedPollTimer;
      v12 = friendsSuggestedNotifyToken;
      if (!friendsSuggestedNotifyToken)
      {
LABEL_31:
        if (prefFriendSuggestMax < 1)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    dispatch_source_cancel(v12);
    v13 = self->_friendsSuggestedPollTimer;
    self->_friendsSuggestedPollTimer = 0;

    goto LABEL_31;
  }

  if (friendsSuggestedNotifyToken == -1)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (friendsSuggestedNotifyToken = _LogCategory_Initialize(), friendsSuggestedNotifyToken))
      {
        sub_1001254D4(friendsSuggestedNotifyToken, v4, v5);
      }
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10009AA84;
    handler[3] = &unk_1001AAFE8;
    handler[4] = self;
    friendsSuggestedNotifyToken = notify_register_dispatch("com.apple.PeopleSuggester.ReQuery", &self->_friendsSuggestedNotifyToken, dispatchQueue, handler);
  }

  prefFriendSuggestPollSeconds = self->_prefFriendSuggestPollSeconds;
  if (prefFriendSuggestPollSeconds < 1)
  {
    goto LABEL_23;
  }

  if (!self->_friendsSuggestedPollTimer)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        prefFriendSuggestPollSeconds = self->_prefFriendSuggestPollSeconds;
      }

      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _friendsUpdateSuggestedIfNeeded]", 30, "Friends suggest poll start: %d seconds\n", prefFriendSuggestPollSeconds);
    }

LABEL_34:
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v15 = self->_friendsSuggestedPollTimer;
    self->_friendsSuggestedPollTimer = v14;
    v16 = v14;

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009AB0C;
    v23[3] = &unk_1001AB488;
    v23[4] = v16;
    v23[5] = self;
    dispatch_source_set_event_handler(v16, v23);
    CUDispatchTimerSet();
    dispatch_activate(v16);
  }

LABEL_35:
  if (!self->_friendsSuggestedGetting && (!self->_friendsSuggestedArray || self->_friendsSuggestedNeedsUpdate))
  {
    v17 = objc_alloc_init(off_1001D4990(friendsSuggestedNotifyToken));
    v18 = [v17 setDispatchQueue:self->_dispatchQueue];
    v19 = objc_alloc_init(off_1001D4998(v18));
    [v19 setMaxPeople:self->_prefFriendSuggestMax];
    NSSelectorFromString(@"excludeBackfills");
    if (objc_opt_respondsToSelector())
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125558();
      }

      [v19 setValue:&__kCFBooleanTrue forKey:@"excludeBackfills"];
    }

    else
    {
      if (dword_1001D4910 > 30)
      {
LABEL_49:
        *&self->_friendsSuggestedGetting = 1;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10009AB9C;
        v21[3] = &unk_1001ACF70;
        v21[4] = self;
        v22 = v17;
        v20 = v17;
        [v20 getPeopleSuggestions:v19 completion:v21];

        return;
      }

      if (dword_1001D4910 != -1 || _LogCategory_Initialize())
      {
        sub_100125524();
      }
    }

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012558C(&self->_prefFriendSuggestMax);
    }

    goto LABEL_49;
  }
}

- (BOOL)_pruneFriends:(BOOL)friends
{
  friendsCopy = friends;
  Current = CFAbsoluteTimeGetCurrent();
  if (friendsCopy || Current >= 584466893.0)
  {
    pruneLastSeconds = self->_pruneLastSeconds;
    if (pruneLastSeconds == 0.0)
    {
      CFPrefs_GetDouble();
      self->_pruneLastSeconds = pruneLastSeconds;
    }

    v8 = vabdd_f64(Current, pruneLastSeconds);
    if (friendsCopy || v8 >= 86400.0)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125718(v8);
      }

      v9 = [(RPPeopleDaemon *)self _pruneFriendAccounts:friendsCopy];
      _pruneFriendDevices = [(RPPeopleDaemon *)self _pruneFriendDevices];
      self->_pruneLastSeconds = Current;
      CFPrefs_SetDouble();
      LOBYTE(v6) = v9 | _pruneFriendDevices;
    }

    else
    {
      if (dword_1001D4910 > 10)
      {
        goto LABEL_15;
      }

      if (dword_1001D4910 != -1 || (v6 = _LogCategory_Initialize()) != 0)
      {
        sub_1001256CC(v8);
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (dword_1001D4910 > 30)
    {
LABEL_15:
      LOBYTE(v6) = 0;
      return v6;
    }

    if (dword_1001D4910 != -1 || (v6 = _LogCategory_Initialize()) != 0)
    {
      sub_10012568C(Current);
      goto LABEL_15;
    }
  }

  return v6;
}

- (BOOL)_pruneFriendAccounts:(BOOL)accounts
{
  prefFriendAccountPruneSeconds = self->_prefFriendAccountPruneSeconds;
  if (accounts || prefFriendAccountPruneSeconds > 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(NSMutableDictionary *)self->_friendAccountIdentityMap allKeys];
    v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v6)
    {
      v5 = 0;
      goto LABEL_39;
    }

    v7 = v6;
    v18 = prefFriendAccountPruneSeconds;
    v5 = 0;
    v8 = *v21;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v10];
        if (![v10 length])
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001257DC(v11);
          }

LABEL_33:
          [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v10];
          v5 = 1;
          self->_needsFriendAccountUpdate = 1;
          v13 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v13 removeIdentity:v11 error:0];
          goto LABEL_34;
        }

        dateRemoved = [v11 dateRemoved];
        if (dateRemoved)
        {
          v13 = dateRemoved;
          Current = CFAbsoluteTimeGetCurrent();
          [v13 timeIntervalSinceReferenceDate];
          v16 = (Current - v15);
          if (v18 <= v16)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _pruneFriendAccounts:]", 30, "Prune friend account identity: %ll{dur}, %@\n", v16, v11);
            }

            goto LABEL_33;
          }

          if (dword_1001D4910 <= 9 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _pruneFriendAccounts:]", 9, "Skipping prune friend account identity: premature, %ll{dur}, %@\n", v16, v11);
          }

LABEL_34:

          goto LABEL_35;
        }

        if (dword_1001D4910 <= 8 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012579C(v11);
        }

LABEL_35:
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v7)
      {
LABEL_39:

        return v5;
      }
    }
  }

  if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_10012575C(prefFriendAccountPruneSeconds);
  }

  return 0;
}

- (BOOL)_pruneFriendDevices
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSMutableDictionary *)self->_friendDeviceIdentityMap allKeys];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap objectForKeyedSubscript:v8];
        accountID = [v9 accountID];
        if (accountID && ([(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:accountID], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v12 = v11;
          if (dword_1001D4910 <= 8 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _pruneFriendDevices]", 8, "Skipping prune friend device identity: active, %@, %@\n", v9, v12);
          }
        }

        else
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_10012581C(v9);
          }

          [(NSMutableDictionary *)self->_friendDeviceIdentityMap setObject:0 forKeyedSubscript:v8];
          v13 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v13 removeIdentity:v9 error:0];

          v12 = 0;
          v5 = 1;
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v14 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v4 = v14;
    }

    while (v14);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_resetFriends
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [(NSMutableDictionary *)self->_friendAccountIdentityMap allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v8];
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012585C(v9);
        }

        [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v8];
        self->_needsFriendAccountUpdate = 1;
        v10 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v10 removeIdentity:v9 error:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v11 = [allKeys countByEnumeratingWithState:&v25 objects:v30 count:16];
      v5 = v11;
    }

    while (v11);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap allKeys];
  v13 = [allKeys2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(allKeys2);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap objectForKeyedSubscript:v17];
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012589C(v18);
        }

        [(NSMutableDictionary *)self->_friendDeviceIdentityMap setObject:0 forKeyedSubscript:v17];
        v19 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v19 removeIdentity:v18 error:0];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v20 = [allKeys2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v14 = v20;
    }

    while (v20);
  }

  [(RPPeopleDaemon *)self _update];
}

- (BOOL)_shouldThrottleFriendSyncing
{
  prefFriendSuggestMax = self->_prefFriendSuggestMax;
  if (prefFriendSuggestMax >= 33 && dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001258DC(self, a2, v2);
    }
  }

  return prefFriendSuggestMax > 32;
}

- (void)_updateFriendIdentities
{
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    _updateFriendAccounts = [(RPPeopleDaemon *)self _updateFriendAccounts];
    v7 = [(RPPeopleDaemon *)self _updateFriendDevices]+ _updateFriendAccounts;
    v8 = [(RPPeopleDaemon *)self _pruneFriends:0];
    [(RPPeopleDaemon *)self _processBufferedCloudMessages];
    [(RPPeopleDaemon *)self _updateFriendSyncing];
    if (v7 | v8)
    {
      v9 = +[RPDaemon sharedDaemon];
      [v9 postDaemonInfoChanges:128];
    }
  }

  else if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_1001258F8(firstUnlocked, v4, v5);
    }
  }
}

- (BOOL)_updateFriendAccounts
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  if (!self->_friendAccountIdentityMap)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    friendAccountIdentityMap = self->_friendAccountIdentityMap;
    self->_friendAccountIdentityMap = v3;

    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v65 = 0;
    v6 = [v5 identitiesOfType:5 error:&v65];
    v45 = v65;

    if (!v6 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendAccounts]", 90, "### Load friend account identities failed: %{error}\n", v45);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v8)
    {
      v9 = *v62;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v62 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v61 + 1) + 8 * i);
          identifier = [v11 identifier];
          if (identifier)
          {
            [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:v11 forKeyedSubscript:identifier];
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendAccounts]", 30, "Loaded friend account identity: %@\n", v11);
            }

            *(v67 + 24) = 1;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v8);
    }

    self->_needsFriendAccountUpdate = 1;
  }

  v41 = self->_friendsSuggestedArray;
  if (!v41)
  {
    ++self->_irkMetrics.duetNotQueried;
    self->_sendIRKMetricsReport = 1;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendAccounts]", 30, "Deferring friend account identities update until friends suggested ready\n");
    }

    goto LABEL_73;
  }

  maxNumDuetSuggestions = self->_irkMetrics.maxNumDuetSuggestions;
  v14 = [(NSArray *)self->_friendsSuggestedArray count];
  if (maxNumDuetSuggestions <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = maxNumDuetSuggestions;
  }

  self->_irkMetrics.maxNumDuetSuggestions = v15;
  self->_sendIRKMetricsReport = 1;
  if (!self->_needsFriendAccountUpdate)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendAccounts]", 30, "Skipping friend account identities update, not needed\n");
    }

    goto LABEL_73;
  }

  if (![(NSArray *)v41 count])
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendAccounts]", 30, "Skipping friend account identities update, empty friend suggestions\n");
    }

LABEL_73:
    v36 = *(v67 + 24);
    goto LABEL_74;
  }

  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendAccounts]", 30, "Updating friend account identities");
  }

  self->_needsFriendAccountUpdate = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v17 = self->_friendAccountIdentityMap;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10009BF68;
  v60[3] = &unk_1001AE8A0;
  *&v60[4] = Current;
  [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v60];
  v18 = [[NSMutableSet alloc] initWithCapacity:{-[NSArray count](v41, "count")}];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = v41;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v20)
  {
    v21 = *v57;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v19);
        }

        contactID = [*(*(&v56 + 1) + 8 * j) contactID];
        [v18 addObject:contactID];
      }

      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v20);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v19;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v71 count:16];
  if (v43)
  {
    v39 = 0;
    v42 = *v53;
LABEL_53:
    v24 = 0;
    v46 = v39;
    v39 += v43;
    while (1)
    {
      if (*v53 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v52 + 1) + 8 * v24);
      if (objc_opt_respondsToSelector())
      {
        sendersKnownAlias = [v25 sendersKnownAlias];
        _stripFZIDPrefix = [sendersKnownAlias _stripFZIDPrefix];
      }

      else
      {
        _stripFZIDPrefix = 0;
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      handles = [v25 handles];
      v29 = [handles countByEnumeratingWithState:&v48 objects:v70 count:16];
      v44 = v24;
      if (v29)
      {
        v30 = *v49;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(handles);
            }

            v32 = *(*(&v48 + 1) + 8 * k);
            contactID2 = [v25 contactID];
            LODWORD(v38) = 4;
            LODWORD(v32) = [(RPPeopleDaemon *)self _updateFriendIdentityWithAppleID:v32 contactID:contactID2 sendersKnownAlias:_stripFZIDPrefix userAdded:0 updateDateRequested:0 suggestedContactIDs:v18 source:v38];

            if (v32)
            {
              *(v67 + 24) = 1;
            }
          }

          v29 = [handles countByEnumeratingWithState:&v48 objects:v70 count:16];
        }

        while (v29);
      }

      v34 = ++v46 < self->_prefFriendSuggestMax;
      if (!v34)
      {
        break;
      }

      v24 = v44 + 1;
      if ((v44 + 1) == v43)
      {
        v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v71 count:16];
        if (v43)
        {
          goto LABEL_53;
        }

        break;
      }
    }
  }

  v35 = self->_friendAccountIdentityMap;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10009BFFC;
  v47[3] = &unk_1001AE830;
  v47[4] = &v66;
  [(NSMutableDictionary *)v35 enumerateKeysAndObjectsUsingBlock:v47];
  v36 = *(v67 + 24);

LABEL_74:
  _Block_object_dispose(&v66, 8);
  return v36 & 1;
}

- (unsigned)_updateFriendIdentityWithAppleID:(id)d contactID:(id)iD sendersKnownAlias:(id)alias userAdded:(BOOL)added updateDateRequested:(BOOL)requested suggestedContactIDs:(id)ds source:(int)source
{
  requestedCopy = requested;
  addedCopy = added;
  dCopy = d;
  iDCopy = iD;
  aliasCopy = alias;
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v19 = CUNormalizeEmailAddress();
  v20 = [(RPPeopleDaemon *)self _primaryAppleID:0];
  v21 = [v20 caseInsensitiveCompare:v19];
  if (v21)
  {
    v66 = addedCopy;
    v67 = v20;
    selfCopy = self;
    v24 = [(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v19];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
    }

    else
    {
      v25 = objc_alloc_init(RPIdentity);
      [v25 setSource:source];
      v26 = 2048;
    }

    [v25 setPresent:1];
    if ([iDCopy length])
    {
      contactID = [v25 contactID];
      if ([contactID isEqual:iDCopy])
      {
      }

      else
      {
        v63 = requestedCopy;
        v28 = aliasCopy;
        v29 = dCopy;
        v30 = iDCopy;
        contactID2 = [v25 contactID];
        v32 = [dsCopy containsObject:contactID2];

        if (v32)
        {
          iDCopy = v30;
        }

        else
        {
          iDCopy = v30;
          [v25 setContactID:v30];
          v26 = v26 | 0x8000;
        }

        dCopy = v29;
        aliasCopy = v28;
        requestedCopy = v63;
      }
    }

    dateAdded = [v25 dateAdded];

    if (!dateAdded)
    {
      v34 = +[NSDate date];
      [v25 setDateAdded:v34];

      v26 = v26 | 2;
    }

    dateRemoved = [v25 dateRemoved];

    if (dateRemoved)
    {
      [v25 setDateRemoved:0];
      v26 = v26 | 2;
    }

    if (requestedCopy)
    {
      v36 = +[NSDate date];
      [v25 setDateRequested:v36];
    }

    identifier = [v25 identifier];
    v38 = [identifier isEqual:v19];

    if ((v38 & 1) == 0)
    {
      [v25 setIdentifier:v19];
      v26 = v26 | 0x2020;
    }

    v39 = aliasCopy;
    if (!aliasCopy)
    {
      goto LABEL_45;
    }

    allUsedSendersKnownAliases = [v25 allUsedSendersKnownAliases];

    v64 = iDCopy;
    if (!allUsedSendersKnownAliases)
    {
      sendersKnownAlias = [v25 sendersKnownAlias];

      if (sendersKnownAlias)
      {
        sendersKnownAlias2 = [v25 sendersKnownAlias];
        v68 = sendersKnownAlias2;
        v43 = [NSArray arrayWithObjects:&v68 count:1];
        [v25 setAllUsedSendersKnownAliases:v43];
      }

      else
      {
        sendersKnownAlias2 = +[NSArray array];
        [v25 setAllUsedSendersKnownAliases:sendersKnownAlias2];
      }
    }

    if (![v39 length])
    {
LABEL_45:

      if ([v25 type] != 5)
      {
        [v25 setType:5];
        v26 = v26 | 0x200;
      }

      if (v66 && ([v25 userAdded] & 1) == 0)
      {
        [v25 setUserAdded:1];
        v26 = v26 | 0x4000;
      }

      if ((v26 & 0x800) != 0)
      {
        friendAccountIdentityMap = selfCopy->_friendAccountIdentityMap;
        if (!friendAccountIdentityMap)
        {
          v59 = objc_alloc_init(NSMutableDictionary);
          v60 = selfCopy->_friendAccountIdentityMap;
          selfCopy->_friendAccountIdentityMap = v59;

          friendAccountIdentityMap = selfCopy->_friendAccountIdentityMap;
        }

        [(NSMutableDictionary *)friendAccountIdentityMap setObject:v25 forKeyedSubscript:v19];
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125988(v25);
        }
      }

      else
      {
        if (!v26)
        {
          if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001259C8(v25);
          }

          goto LABEL_61;
        }

        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendIdentityWithAppleID:contactID:sendersKnownAlias:userAdded:updateDateRequested:suggestedContactIDs:source:]", 30, "Updated friend account identity: %@, %#{flags}\n", v25, v26, &unk_10014907A);
        }
      }

      v61 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v61 saveIdentity:v25 error:0];

LABEL_61:
      v20 = v67;
      goto LABEL_62;
    }

    sendersKnownAlias3 = [v25 sendersKnownAlias];
    v45 = v39;
    v46 = sendersKnownAlias3;
    v47 = v46;
    if (v46 == v45)
    {

      goto LABEL_38;
    }

    if (v46)
    {
      v48 = [v45 isEqual:v46];

      if (v48)
      {
LABEL_38:
        allUsedSendersKnownAliases2 = [v25 allUsedSendersKnownAliases];
        sendersKnownAlias4 = [v25 sendersKnownAlias];
        v51 = [allUsedSendersKnownAliases2 containsObject:sendersKnownAlias4];

        allKeys = [(NSMutableDictionary *)selfCopy->_friendDeviceIdentityMap allKeys];
        v53 = [allKeys containsObject:dCopy];

        if ((v51 & 1) == 0 && (v53 & 1) == 0)
        {
          allUsedSendersKnownAliases3 = [v25 allUsedSendersKnownAliases];
          v55 = [NSMutableArray arrayWithArray:allUsedSendersKnownAliases3];

          sendersKnownAlias5 = [v25 sendersKnownAlias];
          [v55 addObject:sendersKnownAlias5];

          v57 = [v55 copy];
          [v25 setAllUsedSendersKnownAliases:v57];

          v26 = v26 | 0x1000000;
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100125954();
          }

          [v25 setDateRequested:0];
        }

        iDCopy = v64;
        goto LABEL_45;
      }
    }

    else
    {
    }

    [v25 setSendersKnownAlias:v45];
    v26 = v26 | 0x40000;
    goto LABEL_38;
  }

  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (v21 = _LogCategory_Initialize(), v21))
    {
      sub_100125A08(v21, v22, v23);
    }
  }

  LODWORD(v26) = 0;
LABEL_62:

  return v26;
}

- (BOOL)_updateFriendDevices
{
  v2 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (!self->_friendDeviceIdentityMap)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    friendDeviceIdentityMap = self->_friendDeviceIdentityMap;
    self->_friendDeviceIdentityMap = v4;

    v6 = +[RPIdentityDaemon sharedIdentityDaemon];
    v30 = 0;
    v7 = [v6 loadFriendDeviceIdentitiesWithError:&v30];
    v21 = v30;

    if (!v7 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendDevices]", 90, "### Load friend device identities failed: %{error}\n", v21);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          identifier = [v12 identifier];
          if (identifier)
          {
            [(NSMutableDictionary *)self->_friendDeviceIdentityMap setObject:v12 forKeyedSubscript:identifier];
            *(v32 + 24) = 1;
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendDevices]", 30, "Loaded friend device identity: %@\n", v12);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v9);
    }

    v14 = +[RPIdentityDaemon sharedIdentityDaemon];
    sameAccountDeviceIDs = [v14 sameAccountDeviceIDs];

    v16 = objc_opt_new();
    allValues = [(NSMutableDictionary *)self->_friendDeviceIdentityMap allValues];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009CBD8;
    v23[3] = &unk_1001AE8C8;
    v18 = sameAccountDeviceIDs;
    v24 = v18;
    v19 = v16;
    v25 = v19;
    [allValues enumerateObjectsUsingBlock:v23];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009CC90;
    v22[3] = &unk_1001AE8F0;
    v22[4] = self;
    v22[5] = &v31;
    [v19 enumerateObjectsUsingBlock:v22];

    v2 = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);
  return v2 & 1;
}

- (void)_updateFriendPrivacyResults:(id)results
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = results;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v17 = 0;
    v5 = 0;
    v6 = *v33;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        contactID = [v8 contactID];
        if (!contactID)
        {

          goto LABEL_31;
        }

        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = sub_100002A3C;
        v30 = sub_1000031B4;
        v31 = 0;
        v20 = 0;
        v21 = &v20;
        v22 = 0x3032000000;
        v23 = sub_100002A3C;
        v24 = sub_1000031B4;
        v25 = 0;
        friendAccountIdentityMap = self->_friendAccountIdentityMap;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10009D34C;
        v19[3] = &unk_1001AE940;
        v19[4] = contactID;
        v19[5] = &v26;
        v19[6] = &v20;
        [(NSMutableDictionary *)friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v19];
        if (v27[5] && v21[5])
        {
          flags = [v8 flags];
          if ((flags & 3) != 0)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendPrivacyResults:]", 30, "Friend account identity privacy: delete, %@, %#{flags}\n", v27[5], flags, &unk_1001491B2);
            }

            dateRequested = [v27[5] dateRequested];

            v13 = dateRequested != 0;
            [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v21[5]];
            self->_needsFriendAccountUpdate = 1;
            v14 = +[RPIdentityDaemon sharedIdentityDaemon];
            [v14 removeIdentity:v27[5] error:0];

            [(RPPeopleDaemon *)self _pruneFriendDevices];
            v17 |= v13;
            v5 = 1;
          }
        }

        else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendPrivacyResults:]", 30, "Friend account identity privacy: not found, %@\n", contactID);
        }

        _Block_object_dispose(&v20, 8);

        _Block_object_dispose(&v26, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v15 = +[RPDaemon sharedDaemon];
      [v15 postDaemonInfoChanges:128];
    }

    if (v17)
    {
      if (self->_prefDisableSelfIdentityRolling)
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125B6C();
        }
      }

      else
      {
        friendsSuggestedArray = self->_friendsSuggestedArray;
        self->_friendsSuggestedArray = 0;

        [(RPPeopleDaemon *)self regenerateSelfIdentity:@"Friend Blocked/Removed"];
      }
    }
  }

  else
  {
  }

LABEL_31:
}

- (void)_updateFriendSyncing
{
  if (self->_prefFriendSyncDelaySeconds < 0)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100125C44(self, a2, v2);
      }
    }
  }

  else
  {
    selfCopy = self;
    Double = CFPrefs_GetDouble();
    if (v7 < 0.0)
    {
      if (dword_1001D4910 <= 30)
      {
        if (dword_1001D4910 != -1 || (Double = _LogCategory_Initialize(), Double))
        {
          sub_100125C28(Double, v5, v6);
        }
      }

      Current = CFAbsoluteTimeGetCurrent();
      goto LABEL_18;
    }

    v9 = v7;
    v10 = CFAbsoluteTimeGetCurrent();
    Current = v10;
    if (v9 > 0.0 && vabdd_f64(v9, v10) > 2592000.0)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125BE8(v9 - Current);
      }

      goto LABEL_18;
    }

    if (v9 == 0.0)
    {
LABEL_18:
      v11 = arc4random() % 0x2A301 + 86400;
      v12 = Current + v11;
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendSyncing]", 30, "Friend sync: initial delay: %{DateCF}, %{dur}\n", *&v12, v11);
      }

      CFPrefs_SetDouble();
      return;
    }

    if (v9 <= v10)
    {
      _shouldThrottleFriendSyncing = [(RPPeopleDaemon *)selfCopy _shouldThrottleFriendSyncing];
      v14 = _shouldThrottleFriendSyncing;
      if (!_shouldThrottleFriendSyncing)
      {
        goto LABEL_33;
      }

      friendRequestMaxReachedLastSeconds = selfCopy->_friendRequestMaxReachedLastSeconds;
      if (friendRequestMaxReachedLastSeconds == 0.0)
      {
        CFPrefs_GetDouble();
        selfCopy->_friendRequestMaxReachedLastSeconds = friendRequestMaxReachedLastSeconds;
      }

      v16 = vabdd_f64(Current, friendRequestMaxReachedLastSeconds);
      if (v16 < 3300.0)
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125BA0(v16);
        }
      }

      else
      {
LABEL_33:
        v67[0] = 0;
        v67[1] = v67;
        v67[2] = 0x2020000000;
        v68 = 10;
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        friendAccountIdentityMap = selfCopy->_friendAccountIdentityMap;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10009DB38;
        v25[3] = &unk_1001AE968;
        v25[6] = &v27;
        v25[7] = &v39;
        v25[4] = selfCopy;
        v25[5] = &v63;
        v25[8] = &v35;
        v25[9] = &v51;
        v25[10] = &v59;
        v25[11] = &v55;
        v25[12] = v67;
        v25[13] = &v43;
        v25[14] = &v47;
        v25[15] = &v31;
        v26 = v14;
        [(NSMutableDictionary *)friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v25, &v27];
        if (*(v28 + 24) == 1)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendSyncing]", 30, "Friend sync: max requests reached\n");
          }

          selfCopy->_friendRequestMaxReachedLastSeconds = CFAbsoluteTimeGetCurrent();
          CFPrefs_SetDouble();
        }

        maxNumFriendAccounts = selfCopy->_irkMetrics.maxNumFriendAccounts;
        v19 = [(NSMutableDictionary *)selfCopy->_friendAccountIdentityMap count];
        if (maxNumFriendAccounts <= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = maxNumFriendAccounts;
        }

        selfCopy->_irkMetrics.maxNumFriendAccounts = v20;
        maxNumFriendDevices = selfCopy->_irkMetrics.maxNumFriendDevices;
        v22 = [(NSMutableDictionary *)selfCopy->_friendDeviceIdentityMap count];
        if (maxNumFriendDevices <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = maxNumFriendDevices;
        }

        selfCopy->_irkMetrics.maxNumFriendDevices = v23;
        selfCopy->_sendIRKMetricsReport = 1;
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          v24 = [(NSMutableDictionary *)selfCopy->_friendAccountIdentityMap count];
          LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendSyncing]", 30, "Friend sync: updated accounts: Total %d, Removed %d, Refresh %d, One-Time Refresh %d, Missing SendersKnownAlias %d, Retry %d, Later %d, Request %d, Failed %d, OverMax %d\n", v24, *(v64 + 6), *(v60 + 6), *(v36 + 6), *(v32 + 6), *(v56 + 6), *(v52 + 6), *(v48 + 6), *(v44 + 6), *(v40 + 6));
        }

        if (!selfCopy->_prefOneTimeDateRequestedResetCompleted)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendSyncing]", 30, "Friend sync: completed the one time dateRequest refresh, setting pref accordingly");
          }

          CFPrefs_SetValue();
          selfCopy->_prefOneTimeDateRequestedResetCompleted = 1;
        }

        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v51, 8);
        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);
        _Block_object_dispose(v67, 8);
      }
    }

    else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _updateFriendSyncing]", 30, "Friend sync: waiting for start: %{DateCF}, %{dur}\n", *&v9, fmin(v9 - Current, 2147483650.0));
    }
  }
}

- (void)_irkMetricsSetup
{
  self->_irkMetricsReportLock._os_unfair_lock_opaque = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *&self->_irkMetrics.selfIdentRolled = v2;
  *&self->_irkMetrics.requestsSent = v2;
  *&self->_irkMetrics.requestsIgnoredNoIDSDevice = v2;
  *&self->_irkMetrics.maxNumFamilyDevices = -1;
}

- (void)_fetchSameAccountIdentities
{
  v3 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = 0;
  v4 = [v3 identitiesOfType:2 error:&v8];

  maxNumSelfDevices = self->_irkMetrics.maxNumSelfDevices;
  v6 = [v4 count];
  if (maxNumSelfDevices <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = maxNumSelfDevices;
  }

  self->_irkMetrics.maxNumSelfDevices = v7;
  self->_sendIRKMetricsReport = 1;
}

- (void)reportIRKMetrics
{
  [(RPPeopleDaemon *)self _fetchSameAccountIdentities];
  os_unfair_lock_lock(&self->_irkMetricsReportLock);
  if (self->_sendIRKMetricsReport)
  {
    v3 = +[NSMutableDictionary dictionary];
    selfIdentRolled = self->_irkMetrics.selfIdentRolled;
    v28 = v3;
    if ((selfIdentRolled & 0x80000000) == 0)
    {
      v5 = [NSNumber numberWithInt:(selfIdentRolled + 1)];
      [v28 setObject:v5 forKeyedSubscript:@"selfIdentRolled"];
    }

    selfIdentRolledBlocked = self->_irkMetrics.selfIdentRolledBlocked;
    if ((selfIdentRolledBlocked & 0x80000000) == 0)
    {
      v7 = [NSNumber numberWithInt:(selfIdentRolledBlocked + 1)];
      [v28 setObject:v7 forKeyedSubscript:@"selfIdentRolledBlocked"];
    }

    duetNotQueried = self->_irkMetrics.duetNotQueried;
    if ((duetNotQueried & 0x80000000) == 0)
    {
      v9 = [NSNumber numberWithInt:(duetNotQueried + 1)];
      [v28 setObject:v9 forKeyedSubscript:@"duetNotQueried"];
    }

    if ((self->_irkMetrics.maxNumDuetSuggestions & 0x80000000) == 0)
    {
      v10 = [NSNumber numberWithInt:?];
      [v28 setObject:v10 forKeyedSubscript:@"numDuetSuggestions"];
    }

    requestsSent = self->_irkMetrics.requestsSent;
    if ((requestsSent & 0x80000000) == 0)
    {
      v12 = [NSNumber numberWithInt:(requestsSent + 1)];
      [v28 setObject:v12 forKeyedSubscript:@"requestsSent"];
    }

    if ((self->_irkMetrics.maxNumFriendAccounts & 0x80000000) == 0)
    {
      v13 = [NSNumber numberWithInt:?];
      [v28 setObject:v13 forKeyedSubscript:@"numFriendAccounts"];
    }

    if ((self->_irkMetrics.maxNumFriendDevices & 0x80000000) == 0)
    {
      v14 = [NSNumber numberWithInt:?];
      [v28 setObject:v14 forKeyedSubscript:@"numFriendDevices"];
    }

    requestsIgnored = self->_irkMetrics.requestsIgnored;
    if ((requestsIgnored & 0x80000000) == 0)
    {
      v16 = [NSNumber numberWithInt:(requestsIgnored + 1)];
      [v28 setObject:v16 forKeyedSubscript:@"requestsIgnored"];
    }

    requestsIgnoredNoIDSDevice = self->_irkMetrics.requestsIgnoredNoIDSDevice;
    if ((requestsIgnoredNoIDSDevice & 0x80000000) == 0)
    {
      v18 = [NSNumber numberWithInt:(requestsIgnoredNoIDSDevice + 1)];
      [v28 setObject:v18 forKeyedSubscript:@"requestsIgnoredNoIDSDevice"];
    }

    requestsIgnoredSelfIdentReq = self->_irkMetrics.requestsIgnoredSelfIdentReq;
    if ((requestsIgnoredSelfIdentReq & 0x80000000) == 0)
    {
      v20 = [NSNumber numberWithInt:(requestsIgnoredSelfIdentReq + 1)];
      [v28 setObject:v20 forKeyedSubscript:@"requestsIgnoredSelfIdentReq"];
    }

    requestsIgnoredUnknownPeer = self->_irkMetrics.requestsIgnoredUnknownPeer;
    if ((requestsIgnoredUnknownPeer & 0x80000000) == 0)
    {
      v22 = [NSNumber numberWithInt:(requestsIgnoredUnknownPeer + 1)];
      [v28 setObject:v22 forKeyedSubscript:@"requestsIgnoredUnknownPeer"];
    }

    requestsAcked = self->_irkMetrics.requestsAcked;
    if ((requestsAcked & 0x80000000) == 0)
    {
      v24 = [NSNumber numberWithInt:(requestsAcked + 1)];
      [v28 setObject:v24 forKeyedSubscript:@"requestsAcked"];
    }

    if ((self->_irkMetrics.maxNumFamilyDevices & 0x80000000) == 0)
    {
      v25 = [NSNumber numberWithInt:?];
      [v28 setObject:v25 forKeyedSubscript:@"numFamilyDevices"];
    }

    if ((self->_irkMetrics.maxNumSelfDevices & 0x80000000) == 0)
    {
      v26 = [NSNumber numberWithInt:?];
      [v28 setObject:v26 forKeyedSubscript:@"numSelfDevices"];
    }

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125D20(v28);
    }

    CUMetricsLog();
    *&self->_irkMetrics.maxNumFamilyDevices = -1;
    *&v27 = -1;
    *(&v27 + 1) = -1;
    *&self->_irkMetrics.requestsSent = v27;
    *&self->_irkMetrics.requestsIgnoredNoIDSDevice = v27;
    *&self->_irkMetrics.selfIdentRolled = v27;
    self->_sendIRKMetricsReport = 0;
    os_unfair_lock_unlock(&self->_irkMetricsReportLock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_irkMetricsReportLock);
  }
}

- (void)receivedFriendIdentityRequest:(id)request msgCtx:(id)ctx
{
  requestCopy = request;
  ctxCopy = ctx;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  appleID = [ctxCopy appleID];
  fromID = [ctxCopy fromID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    v13 = v10;
    if (v10)
    {
      v14 = [(RPPeopleDaemon *)self _primaryAppleID:0];
      v15 = [v14 caseInsensitiveCompare:appleID];
      if (v15)
      {
        v18 = objc_alloc_init(off_1001D49A0());
        [v18 setEmailAddress:appleID];
        v19 = [v18 setPhoneNumber:appleID];
        v20 = objc_alloc_init(off_1001D4990(v19));
        [v20 setDispatchQueue:self->_dispatchQueue];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10009E770;
        v22[3] = &unk_1001AE990;
        v23 = v20;
        selfCopy = self;
        v25 = appleID;
        v26 = v13;
        v27 = ctxCopy;
        v28 = requestCopy;
        v29 = fromID;
        v21 = v20;
        [v21 findContact:v18 completion:v22];
      }

      else
      {
        ++self->_irkMetrics.requestsIgnored;
        ++self->_irkMetrics.requestsIgnoredSelfIdentReq;
        self->_sendIRKMetricsReport = 1;
        if (dword_1001D4910 <= 30)
        {
          if (dword_1001D4910 != -1 || (v15 = _LogCategory_Initialize(), v15))
          {
            sub_100125DA0(v15, v16, v17);
          }
        }
      }
    }

    else
    {
      *&self->_irkMetrics.requestsIgnored = vadd_s32(*&self->_irkMetrics.requestsIgnored, 0x100000001);
      self->_sendIRKMetricsReport = 1;
      if (dword_1001D4910 <= 60)
      {
        if (dword_1001D4910 != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          sub_100125DBC(v10, v11, v12);
        }
      }
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125D60(appleID);
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:requestCopy frameType:64 msgCtx:ctxCopy];
  }
}

- (void)receivedFriendIdentityResponse:(id)response msgCtx:(id)ctx
{
  responseCopy = response;
  ctxCopy = ctx;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  appleID = [ctxCopy appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    v12 = v9;
    if (v9)
    {
      v13 = self->_friendAccountIdentityMap;
      if (v13)
      {
        v14 = [(RPPeopleDaemon *)self _primaryAppleID:0];
        v15 = [v14 caseInsensitiveCompare:appleID];
        if (v15)
        {
          v18 = objc_alloc_init(off_1001D49A0());
          [v18 setEmailAddress:appleID];
          v19 = [v18 setPhoneNumber:appleID];
          v20 = objc_alloc_init(off_1001D4990(v19));
          [v20 setDispatchQueue:self->_dispatchQueue];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10009EC14;
          v22[3] = &unk_1001AE990;
          v23 = v20;
          v24 = appleID;
          v25 = v12;
          v26 = v13;
          selfCopy = self;
          v28 = ctxCopy;
          v29 = responseCopy;
          v21 = v20;
          [v21 findContact:v18 completion:v22];
        }

        else if (dword_1001D4910 <= 30)
        {
          if (dword_1001D4910 != -1 || (v15 = _LogCategory_Initialize(), v15))
          {
            sub_100125E5C(v15, v16, v17);
          }
        }
      }

      else
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125E78(appleID);
        }

        [(RPPeopleDaemon *)self _bufferCloudMessage:responseCopy frameType:65 msgCtx:ctxCopy];
      }
    }

    else if (dword_1001D4910 <= 60)
    {
      if (dword_1001D4910 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_100125EB8(v9, v10, v11);
      }
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125E1C(appleID);
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:responseCopy frameType:65 msgCtx:ctxCopy];
  }
}

- (void)receivedFriendIdentityUpdate:(id)update msgCtx:(id)ctx
{
  updateCopy = update;
  ctxCopy = ctx;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  appleID = [ctxCopy appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    v12 = v9;
    if (v9)
    {
      v13 = self->_friendAccountIdentityMap;
      if (v13)
      {
        v14 = [(RPPeopleDaemon *)self _primaryAppleID:0];
        v15 = [v14 caseInsensitiveCompare:appleID];
        if (v15)
        {
          v18 = objc_alloc_init(off_1001D49A0());
          [v18 setEmailAddress:appleID];
          v19 = [v18 setPhoneNumber:appleID];
          v20 = objc_alloc_init(off_1001D4990(v19));
          [v20 setDispatchQueue:self->_dispatchQueue];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10009F0E0;
          v22[3] = &unk_1001AE9B8;
          v23 = v20;
          v24 = appleID;
          v25 = v12;
          selfCopy = self;
          v27 = ctxCopy;
          v28 = updateCopy;
          v21 = v20;
          [v21 findContact:v18 completion:v22];
        }

        else if (dword_1001D4910 <= 30)
        {
          if (dword_1001D4910 != -1 || (v15 = _LogCategory_Initialize(), v15))
          {
            sub_100125F9C(v15, v16, v17);
          }
        }
      }

      else
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125FB8(appleID);
        }

        [(RPPeopleDaemon *)self _bufferCloudMessage:updateCopy frameType:66 msgCtx:ctxCopy];
      }
    }

    else if (dword_1001D4910 <= 60)
    {
      if (dword_1001D4910 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_100125FF8(v9, v10, v11);
      }
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125F5C(appleID);
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:updateCopy frameType:66 msgCtx:ctxCopy];
  }
}

- (void)sendFriendRequest:(id)request nonWakingRequest:(BOOL)wakingRequest sendersKnownAlias:(id)alias
{
  requestCopy = request;
  aliasCopy = alias;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009F314;
  v13[3] = &unk_1001AE9E0;
  wakingRequestCopy = wakingRequest;
  v14 = aliasCopy;
  selfCopy = self;
  v16 = requestCopy;
  v11 = requestCopy;
  v12 = aliasCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_rangingBLEActionScannerEnsureStarted
{
  if (!self->_rangingBLEActionScanner)
  {
    v25 = v6;
    v26 = v5;
    v27 = v3;
    v28 = v4;
    selfCopy = self;
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001260C4(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(off_1001D4988());
    rangingBLEActionScanner = selfCopy->_rangingBLEActionScanner;
    selfCopy->_rangingBLEActionScanner = v8;

    [(SFDeviceDiscovery *)v8 setChangeFlags:1];
    [(SFDeviceDiscovery *)v8 setDiscoveryFlags:16];
    [(SFDeviceDiscovery *)v8 setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFDeviceDiscovery *)v8 setPurpose:@"RPPeople"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009F678;
    v22[3] = &unk_1001AEA08;
    v10 = v8;
    v23 = v10;
    v24 = selfCopy;
    [(SFDeviceDiscovery *)v10 setDeviceFoundHandler:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000039D4;
    v19[3] = &unk_1001AEA08;
    v11 = v10;
    v20 = v11;
    v21 = selfCopy;
    [(SFDeviceDiscovery *)v11 setDeviceLostHandler:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000F880;
    v16[3] = &unk_1001AEA30;
    v17 = v11;
    v18 = selfCopy;
    v12 = v11;
    [(SFDeviceDiscovery *)v12 setDeviceChangedHandler:v16];

    v13 = selfCopy->_rangingBLEActionScanner;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009F694;
    v15[3] = &unk_1001AAA40;
    v15[4] = v13;
    v15[5] = selfCopy;
    v14 = v13;
    [(SFDeviceDiscovery *)v14 activateWithCompletion:v15];
  }
}

- (void)_rangingBLEActionScannerEnsureStopped
{
  selfCopy = self;
  rangingBLEActionBurstTimer = self->_rangingBLEActionBurstTimer;
  if (rangingBLEActionBurstTimer)
  {
    v5 = rangingBLEActionBurstTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_rangingBLEActionBurstTimer;
    selfCopy->_rangingBLEActionBurstTimer = 0;
  }

  if (selfCopy->_rangingBLEActionScanner)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10012613C(self, a2, v2);
      }
    }

    [(SFDeviceDiscovery *)selfCopy->_rangingBLEActionScanner invalidate];
    rangingBLEActionScanner = selfCopy->_rangingBLEActionScanner;
    selfCopy->_rangingBLEActionScanner = 0;

    rangingBLEActionDevicesActive = selfCopy->_rangingBLEActionDevicesActive;
    selfCopy->_rangingBLEActionDevicesActive = 0;

    rangingBLEActionDevicesOther = selfCopy->_rangingBLEActionDevicesOther;
    selfCopy->_rangingBLEActionDevicesOther = 0;

    [(RPPeopleDaemon *)selfCopy _rangingResponderUpdate];
  }
}

- (void)_rangingBLEActionScannerBurst
{
  prefPTSBurstScanActionSecs = self->_prefPTSBurstScanActionSecs;
  if (prefPTSBurstScanActionSecs > 0.0)
  {
    v4 = self->_rangingBLEActionBurstTimer;
    if (v4)
    {
      v5 = v4;
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126158(prefPTSBurstScanActionSecs);
      }

      CUDispatchTimerSet();
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126198(prefPTSBurstScanActionSecs);
      }

      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      rangingBLEActionBurstTimer = self->_rangingBLEActionBurstTimer;
      self->_rangingBLEActionBurstTimer = v6;

      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_10009F9E8;
      v11 = &unk_1001AB488;
      v5 = v6;
      v12 = v5;
      selfCopy = self;
      dispatch_source_set_event_handler(v5, &v8);
      CUDispatchTimerSet();
      dispatch_activate(v5);
    }

    if ([(SFDeviceDiscovery *)self->_rangingBLEActionScanner scanRate:v8]!= 30)
    {
      [(SFDeviceDiscovery *)self->_rangingBLEActionScanner setScanRate:30];
    }
  }
}

- (void)_rangingInitiatorEnsureStarted
{
  selfCopy = self;
  if (!self->_rangingInitiator)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001261F4(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(CURangingSession);
    rangingInitiator = selfCopy->_rangingInitiator;
    selfCopy->_rangingInitiator = v4;
    v6 = v4;

    [(CURangingSession *)v6 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CURangingSession *)v6 setLabel:@"RPPeople"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009FD00;
    v14[3] = &unk_1001AEA58;
    v14[4] = v6;
    v14[5] = selfCopy;
    [(CURangingSession *)v6 setMeasurementHandlerEx:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009FD20;
    v13[3] = &unk_1001AA970;
    v13[4] = selfCopy;
    [(CURangingSession *)v6 setStatusChangedHandler:v13];
    [(CURangingSession *)selfCopy->_rangingInitiator activate];
  }

  if (!selfCopy->_rangingBLEActionAdvertiser && selfCopy->_prefRanging)
  {
    v7 = objc_alloc_init(off_1001D49A8());
    rangingBLEActionAdvertiser = selfCopy->_rangingBLEActionAdvertiser;
    selfCopy->_rangingBLEActionAdvertiser = v7;

    [(SFService *)v7 setAdvertiseRate:50];
    [(SFService *)v7 setDeviceActionType:53];
    [(SFService *)v7 setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFService *)v7 setIdentifier:@"1e270a1a-2920-49b6-b076-4b7914bc85e2"];
    [(SFService *)v7 setLabel:@"RPPeople"];
    [(SFService *)v7 setPairSetupDisabled:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009FD28;
    v10[3] = &unk_1001AAA40;
    v11 = v7;
    v12 = selfCopy;
    v9 = v7;
    [(SFService *)v9 activateWithCompletion:v10];
  }
}

- (void)_rangingInitiatorEnsureStopped
{
  selfCopy = self;
  if (self->_rangingInitiator)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100126250(self, a2, v2);
      }
    }

    [(CURangingSession *)selfCopy->_rangingInitiator invalidate];
    rangingInitiator = selfCopy->_rangingInitiator;
    selfCopy->_rangingInitiator = 0;
  }

  rangingBLEActionAdvertiser = selfCopy->_rangingBLEActionAdvertiser;
  if (rangingBLEActionAdvertiser)
  {
    [(SFService *)rangingBLEActionAdvertiser invalidate];
    v6 = selfCopy->_rangingBLEActionAdvertiser;
    selfCopy->_rangingBLEActionAdvertiser = 0;
  }
}

- (void)_rangingInitiatorHandlePeer:(id)peer measurement:(id)measurement
{
  peerCopy = peer;
  measurementCopy = measurement;
  deviceAddress = [peerCopy deviceAddress];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100002A3C;
  v16 = sub_1000031B4;
  v17 = 0;
  discoveredDevices = self->_discoveredDevices;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100124370;
  v11[3] = &unk_1001AEA80;
  v11[4] = deviceAddress;
  v11[5] = &v12;
  [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v11];
  v10 = v13[5];
  if (v10)
  {
    [(RPPeopleDaemon *)self _daemonDevice:v10 updatedMeasurement:measurementCopy];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_rangingInitiatorStatusChanged
{
  statusFlags = [(CURangingSession *)self->_rangingInitiator statusFlags];
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_10012626C(statusFlags & 1);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) clientPeopleStatusChanged:{statusFlags & 1, v9}];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_rangingResponderEnsureStarted
{
  selfCopy = self;
  rangingResponder = self->_rangingResponder;
  if (!rangingResponder)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001262B4(self, a2, v2);
      }
    }

    v5 = objc_alloc_init(CURangingSession);
    v6 = selfCopy->_rangingResponder;
    selfCopy->_rangingResponder = v5;
    v7 = v5;

    [(CURangingSession *)v7 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CURangingSession *)v7 setFlags:1];
    [(CURangingSession *)v7 setLabel:@"RPPeople"];
  }

  v8 = objc_alloc_init(NSMutableArray);
  rangingBLEActionDevicesActive = selfCopy->_rangingBLEActionDevicesActive;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001243FC;
  v10[3] = &unk_1001AEAA8;
  v10[4] = v8;
  [(NSMutableDictionary *)rangingBLEActionDevicesActive enumerateKeysAndObjectsUsingBlock:v10];
  [(CURangingSession *)selfCopy->_rangingResponder setPeers:v8];
  if (!rangingResponder)
  {
    [(CURangingSession *)selfCopy->_rangingResponder activate];
  }
}

- (void)_rangingResponderUpdateForAirDropChange
{
  p_airdropMode = &self->_airdropMode;
  airdropMode = self->_airdropMode;
  if (airdropMode == 3)
  {
    if (self->_prefPeopleStrangers)
    {
      v38 = &self->_airdropMode;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      allKeys = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther allKeys];
      v10 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v10)
      {
        v11 = v10;
        v8 = 0;
        v12 = *v40;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(allKeys);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            v15 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther objectForKeyedSubscript:v14];
            if (([v15 deviceFlags] & 0x444E) == 0)
            {
              [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther setObject:0 forKeyedSubscript:v14];
              rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
              if (!rangingBLEActionDevicesActive)
              {
                v17 = objc_alloc_init(NSMutableDictionary);
                v18 = self->_rangingBLEActionDevicesActive;
                self->_rangingBLEActionDevicesActive = v17;

                rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
              }

              [(NSMutableDictionary *)rangingBLEActionDevicesActive setObject:v15 forKeyedSubscript:v14];
              v8 = 1;
            }
          }

          v11 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v11);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_46;
    }

LABEL_22:
    v38 = &self->_airdropMode;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    allKeys2 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive allKeys];
    v20 = [allKeys2 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v20)
    {
      v21 = v20;
      v8 = 0;
      v22 = *v48;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(allKeys2);
          }

          v24 = *(*(&v47 + 1) + 8 * j);
          v25 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive objectForKeyedSubscript:v24];
          if (([v25 deviceFlags] & 0x444E) == 0)
          {
            [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:0 forKeyedSubscript:v24];
            rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
            if (!rangingBLEActionDevicesOther)
            {
              v27 = objc_alloc_init(NSMutableDictionary);
              v28 = self->_rangingBLEActionDevicesOther;
              self->_rangingBLEActionDevicesOther = v27;

              rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
            }

            [(NSMutableDictionary *)rangingBLEActionDevicesOther setObject:v25 forKeyedSubscript:v24];
            v8 = 1;
          }
        }

        v21 = [allKeys2 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v21);
    }

    else
    {
      v8 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    allKeys = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther allKeys];
    v29 = [allKeys countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(allKeys);
          }

          v33 = *(*(&v43 + 1) + 8 * k);
          v34 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther objectForKeyedSubscript:v33];
          if (([v34 deviceFlags] & 0x444E) != 0)
          {
            [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther setObject:0 forKeyedSubscript:v33];
            v35 = self->_rangingBLEActionDevicesActive;
            if (!v35)
            {
              v36 = objc_alloc_init(NSMutableDictionary);
              v37 = self->_rangingBLEActionDevicesActive;
              self->_rangingBLEActionDevicesActive = v36;

              v35 = self->_rangingBLEActionDevicesActive;
            }

            [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v33];
            v8 = 1;
          }
        }

        v30 = [allKeys countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v30);
    }

LABEL_46:

    p_airdropMode = v38;
    goto LABEL_47;
  }

  if (airdropMode == 2)
  {
    goto LABEL_22;
  }

  if (airdropMode == 1 && [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive count])
  {
    v5 = self->_rangingBLEActionDevicesOther;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_rangingBLEActionDevicesOther;
      self->_rangingBLEActionDevicesOther = v6;

      v5 = self->_rangingBLEActionDevicesOther;
    }

    [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_rangingBLEActionDevicesActive];
    [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive removeAllObjects];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_47:
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001262EC(p_airdropMode, self, v8 & 1);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else if ((v8 & 1) == 0)
  {
    return;
  }

  [(RPPeopleDaemon *)self _rangingResponderUpdate];
}

- (void)_rangingRemoveDevice:(id)device
{
  identifier = [device identifier];
  if (identifier)
  {
    v8 = identifier;
    v5 = [(NSMutableSet *)self->_rangingCapableDevices count];
    [(NSMutableSet *)self->_rangingCapableDevices removeObject:v8];
    v6 = [(NSMutableSet *)self->_rangingCapableDevices count]== 0;
    identifier = v8;
    v7 = !v6;
    if ((((v5 == 0) ^ v7) & 1) == 0)
    {
      [(RPPeopleDaemon *)self _update];
      identifier = v8;
    }
  }
}

- (void)_rangingUpdateForDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableSet *)self->_rangingCapableDevices count];
    if (([deviceCopy flags] & 0x24D) != 0 || (self->_discoveryFlagsAggregate & 0x400) != 0)
    {
      rangingCapableDevices = self->_rangingCapableDevices;
      if (!rangingCapableDevices)
      {
        v7 = objc_alloc_init(NSMutableSet);
        v8 = self->_rangingCapableDevices;
        self->_rangingCapableDevices = v7;

        rangingCapableDevices = self->_rangingCapableDevices;
      }

      [(NSMutableSet *)rangingCapableDevices addObject:identifier];
      rangingInitiator = self->_rangingInitiator;
      if (rangingInitiator)
      {
        v10 = rangingInitiator;
        bleDevice = [deviceCopy bleDevice];
        v11BleDevice = [bleDevice bleDevice];
        advertisementFields = [v11BleDevice advertisementFields];
        v14 = objc_alloc_init(CURangingSample);
        [v14 setChannel:CFDictionaryGetInt64Ranged()];
        CFDataGetTypeID();
        [v14 setDeviceAddress:CFDictionaryGetTypedValue()];
        model = [bleDevice model];
        [v14 setDeviceModel:model];

        [v14 setRawRSSI:{objc_msgSend(v11BleDevice, "rssi")}];
        [(CURangingSession *)v10 addSample:v14];
      }
    }

    else
    {
      [(NSMutableSet *)self->_rangingCapableDevices removeObject:identifier];
    }

    if ((v5 == 0) == ([(NSMutableSet *)self->_rangingCapableDevices count]!= 0))
    {
      [(RPPeopleDaemon *)self _update];
    }
  }
}

- (void)_bufferCloudMessage:(id)message frameType:(unsigned __int8)type msgCtx:(id)ctx
{
  typeCopy = type;
  messageCopy = message;
  ctxCopy = ctx;
  v9 = [(NSMutableArray *)self->_bufferedCloudMessages count];
  if (v9 < 0x64)
  {
    appleID = objc_alloc_init(RPBufferedCloudMessage);
    [(RPBufferedCloudMessage *)appleID setFrameType:typeCopy];
    [(RPBufferedCloudMessage *)appleID setMessage:messageCopy];
    [(RPBufferedCloudMessage *)appleID setMsgCtx:ctxCopy];
    bufferedCloudMessages = self->_bufferedCloudMessages;
    if (!bufferedCloudMessages)
    {
      v14 = objc_alloc_init(NSMutableArray);
      v15 = self->_bufferedCloudMessages;
      self->_bufferedCloudMessages = v14;

      bufferedCloudMessages = self->_bufferedCloudMessages;
    }

    [(NSMutableArray *)bufferedCloudMessages addObject:appleID];
    goto LABEL_40;
  }

  if (dword_1001D4910 <= 60)
  {
    v10 = v9;
    if (dword_1001D4910 != -1 || _LogCategory_Initialize())
    {
      if (typeCopy <= 47)
      {
        v11 = "Invalid";
        switch(typeCopy)
        {
          case 0:
            goto LABEL_39;
          case 1:
            v11 = "NoOp";
            break;
          case 3:
            v11 = "PS_Start";
            break;
          case 4:
            v11 = "PS_Next";
            break;
          case 5:
            v11 = "PV_Start";
            break;
          case 6:
            v11 = "PV_Next";
            break;
          case 7:
            v11 = "U_OPACK";
            break;
          case 8:
            v11 = "E_OPACK";
            break;
          case 9:
            v11 = "P_OPACK";
            break;
          case 10:
            v11 = "PA_Req";
            break;
          case 11:
            v11 = "PA_Rsp";
            break;
          case 16:
            v11 = "SessionStartRequest";
            break;
          case 17:
            v11 = "SessionStartResponse";
            break;
          case 18:
            v11 = "SessionData";
            break;
          case 32:
            v11 = "FamilyIdentityRequest";
            break;
          case 33:
            v11 = "FamilyIdentityResponse";
            break;
          case 34:
            v11 = "FamilyIdentityUpdate";
            break;
          default:
            goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (typeCopy <= 63)
      {
        if (typeCopy == 48)
        {
          v11 = "WatchIdentityRequest";
          goto LABEL_39;
        }

        if (typeCopy == 49)
        {
          v11 = "WatchIdentityResponse";
          goto LABEL_39;
        }
      }

      else
      {
        switch(typeCopy)
        {
          case '@':
            v11 = "FriendIdentityRequest";
            goto LABEL_39;
          case 'A':
            v11 = "FriendIdentityResponse";
            goto LABEL_39;
          case 'B':
            v11 = "FriendIdentityUpdate";
LABEL_39:
            appleID = [ctxCopy appleID];
            LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _bufferCloudMessage:frameType:msgCtx:]", 60, "### Dropping cloud message at max (%zu): %s, '%{mask}'\n", v10, v11, appleID);
LABEL_40:

            goto LABEL_41;
        }
      }

LABEL_38:
      v11 = "?";
      goto LABEL_39;
    }
  }

LABEL_41:
}

- (void)_processBufferedCloudMessages
{
  if ([(CUSystemMonitor *)self->_systemMonitor firstUnlocked])
  {
    if (self->_familyAccountIdentityMap)
    {
      p_bufferedCloudMessages = &self->_bufferedCloudMessages;
      if ([(NSMutableArray *)self->_bufferedCloudMessages count])
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012639C(&self->_bufferedCloudMessages);
        }

        v4 = *p_bufferedCloudMessages;
        v5 = *p_bufferedCloudMessages;
        *p_bufferedCloudMessages = 0;

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = v4;
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v15 + 1) + 8 * i);
              frameType = [v11 frameType];
              if (frameType > 63)
              {
                switch(frameType)
                {
                  case '@':
                    message = [v11 message];
                    msgCtx = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFriendIdentityRequest:message msgCtx:msgCtx];
                    goto LABEL_29;
                  case 'A':
                    message = [v11 message];
                    msgCtx = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFriendIdentityResponse:message msgCtx:msgCtx];
                    goto LABEL_29;
                  case 'B':
                    message = [v11 message];
                    msgCtx = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFriendIdentityUpdate:message msgCtx:msgCtx];
                    goto LABEL_29;
                }
              }

              else
              {
                switch(frameType)
                {
                  case ' ':
                    message = [v11 message];
                    msgCtx = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFamilyIdentityRequest:message msgCtx:msgCtx];
                    goto LABEL_29;
                  case '!':
                    message = [v11 message];
                    msgCtx = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFamilyIdentityResponse:message msgCtx:msgCtx];
                    goto LABEL_29;
                  case '""':
                    message = [v11 message];
                    msgCtx = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFamilyIdentityUpdate:message msgCtx:msgCtx];
LABEL_29:

                    continue;
                }
              }

              if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                sub_1001263E4(v11);
              }
            }

            v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v8);
        }
      }
    }
  }
}

- (BOOL)_sendCloudIdentityFrameType:(unsigned __int8)type destinationID:(id)d flags:(unsigned int)flags msgCtx:(id)ctx
{
  v7 = *&flags;
  typeCopy = type;
  dCopy = d;
  ctxCopy = ctx;
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    if (typeCopy <= 47)
    {
      v12 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_35;
        case 1:
          v12 = "NoOp";
          break;
        case 3:
          v12 = "PS_Start";
          break;
        case 4:
          v12 = "PS_Next";
          break;
        case 5:
          v12 = "PV_Start";
          break;
        case 6:
          v12 = "PV_Next";
          break;
        case 7:
          v12 = "U_OPACK";
          break;
        case 8:
          v12 = "E_OPACK";
          break;
        case 9:
          v12 = "P_OPACK";
          break;
        case 10:
          v12 = "PA_Req";
          break;
        case 11:
          v12 = "PA_Rsp";
          break;
        case 16:
          v12 = "SessionStartRequest";
          break;
        case 17:
          v12 = "SessionStartResponse";
          break;
        case 18:
          v12 = "SessionData";
          break;
        case 32:
          v12 = "FamilyIdentityRequest";
          break;
        case 33:
          v12 = "FamilyIdentityResponse";
          break;
        case 34:
          v12 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v12 = "WatchIdentityRequest";
        goto LABEL_35;
      }

      if (typeCopy == 49)
      {
        v12 = "WatchIdentityResponse";
        goto LABEL_35;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v12 = "FriendIdentityRequest";
          goto LABEL_35;
        case 'A':
          v12 = "FriendIdentityResponse";
          goto LABEL_35;
        case 'B':
          v12 = "FriendIdentityUpdate";
LABEL_35:
          LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _sendCloudIdentityFrameType:destinationID:flags:msgCtx:]", 30, "Send identity request: %s, '%{mask}'\n", v12, dCopy);
          goto LABEL_36;
      }
    }

LABEL_34:
    v12 = "?";
    goto LABEL_35;
  }

LABEL_36:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v14 addSelfIdentityInfoToMessage:v13 flags:v7];

  v15 = +[RPCloudDaemon sharedCloudDaemon];
  idsDeviceIDSelf = [v15 idsDeviceIDSelf];

  if (idsDeviceIDSelf)
  {
    [v13 setObject:idsDeviceIDSelf forKeyedSubscript:@"_idsID"];
  }

  v17 = +[RPCloudDaemon sharedCloudDaemon];
  v18 = [v17 sendIDSMessage:v13 cloudServiceID:@"com.apple.private.alloy.nearby" frameType:typeCopy destinationID:dCopy sendFlags:0 msgCtx:ctxCopy error:0];

  return v18;
}

- (unsigned)_updateIdentityType:(int)type idsDeviceID:(id)d appleID:(id)iD contactID:(id)contactID sendersKnownAlias:(id)alias msg:(id)msg source:(int)source
{
  v13 = *&type;
  dCopy = d;
  iDCopy = iD;
  contactIDCopy = contactID;
  aliasCopy = alias;
  msgCopy = msg;
  v88 = contactIDCopy;
  v89 = dCopy;
  if (v13 == 4)
  {
    v20 = 120;
    goto LABEL_5;
  }

  if (v13 == 6)
  {
    v20 = 168;
LABEL_5:
    selfCopy = self;
    v84 = v20;
    v21 = *(&self->super.isa + v20);
    v22 = [v21 objectForKeyedSubscript:dCopy];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
    }

    else
    {
      v23 = objc_alloc_init(RPIdentity);
      [v23 setIdentifier:dCopy];
      [v23 setType:v13];
      [v23 setSource:source];
      v24 = 2048;
    }

    v85 = v21;
    if ([iDCopy length])
    {
      accountID = [v23 accountID];
      v26 = iDCopy;
      v27 = v26;
      if (accountID == v26)
      {

        goto LABEL_20;
      }

      if ((v26 == 0) == (accountID != 0))
      {
      }

      else
      {
        v28 = [accountID isEqual:v26];

        if (v28)
        {
          goto LABEL_20;
        }
      }

      [v23 setAccountID:v27];
      v24 |= 0x2000u;
    }

LABEL_20:
    if (![contactIDCopy length])
    {
      goto LABEL_28;
    }

    contactID = [v23 contactID];
    v30 = contactIDCopy;
    v31 = v30;
    if (contactID == v30)
    {

      goto LABEL_28;
    }

    if ((v30 == 0) == (contactID != 0))
    {
    }

    else
    {
      v32 = [contactID isEqual:v30];

      if (v32)
      {
LABEL_28:
        if (![aliasCopy length])
        {
          goto LABEL_36;
        }

        sendersKnownAlias = [v23 sendersKnownAlias];
        v34 = aliasCopy;
        v35 = v34;
        if (sendersKnownAlias == v34)
        {

          goto LABEL_36;
        }

        if ((v34 == 0) == (sendersKnownAlias != 0))
        {
        }

        else
        {
          v36 = [sendersKnownAlias isEqual:v34];

          if (v36)
          {
LABEL_36:
            v37 = CFDictionaryGetCFDataOfLength();
            v86 = aliasCopy;
            if (!v37)
            {
              goto LABEL_44;
            }

            deviceIRKData = [v23 deviceIRKData];
            v39 = v37;
            v40 = v39;
            if (deviceIRKData == v39)
            {

              goto LABEL_44;
            }

            if (deviceIRKData)
            {
              v41 = [deviceIRKData isEqual:v39];

              if (v41)
              {
LABEL_44:

                v42 = CFDictionaryGetCFDataOfLength();
                if (!v42)
                {
                  goto LABEL_52;
                }

                edPKData = [v23 edPKData];
                v44 = v42;
                v45 = v44;
                if (edPKData == v44)
                {

                  goto LABEL_52;
                }

                if (edPKData)
                {
                  v46 = [edPKData isEqual:v44];

                  if (v46)
                  {
LABEL_52:

                    v47 = NSDictionaryGetNSNumber();
                    if (!v47)
                    {
                      goto LABEL_60;
                    }

                    v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 featureFlags]);
                    v49 = v47;
                    v50 = v49;
                    if (v48 == v49)
                    {

                      goto LABEL_60;
                    }

                    if (v48)
                    {
                      v51 = [v48 isEqual:v49];

                      if (v51)
                      {
LABEL_60:

                        idsDeviceID = [v23 idsDeviceID];
                        v53 = v89;
                        v54 = v53;
                        if (idsDeviceID == v53)
                        {
                        }

                        else
                        {
                          if ((v53 == 0) != (idsDeviceID != 0))
                          {
                            v55 = [idsDeviceID isEqual:v53];

                            if (v55)
                            {
                              goto LABEL_67;
                            }
                          }

                          else
                          {
                          }

                          [v23 setIdsDeviceID:v54];
                          v24 |= 0x40u;
                        }

LABEL_67:
                        CFStringGetTypeID();
                        v56 = CFDictionaryGetTypedValue();
                        v57 = v56;
                        if (v56 && [v56 length])
                        {
                          model = [v23 model];
                          v59 = v57;
                          v60 = v59;
                          if (model == v59)
                          {
                          }

                          else
                          {
                            if (model)
                            {
                              v61 = [model isEqual:v59];

                              if (v61)
                              {
                                goto LABEL_76;
                              }
                            }

                            else
                            {
                            }

                            [v23 setModel:v60];
                            v24 |= 0x80u;
                          }
                        }

LABEL_76:

                        CFStringGetTypeID();
                        v62 = CFDictionaryGetTypedValue();
                        v63 = v62;
                        if (v62 && [v62 length])
                        {
                          name = [v23 name];
                          v65 = v63;
                          v66 = v65;
                          if (name == v65)
                          {

                            goto LABEL_85;
                          }

                          if (name)
                          {
                            v67 = [name isEqual:v65];

                            if (v67)
                            {
                              goto LABEL_85;
                            }
                          }

                          else
                          {
                          }

                          [v23 setName:v66];
                          v24 |= 0x100u;
                        }

LABEL_85:

                        v68 = CFDictionaryGetCFDataOfLength();
                        if (!v68)
                        {
                          goto LABEL_93;
                        }

                        btIRKData = [v23 btIRKData];
                        v70 = v68;
                        v71 = v70;
                        if (btIRKData == v70)
                        {

                          goto LABEL_93;
                        }

                        if (btIRKData)
                        {
                          v72 = [btIRKData isEqual:v70];

                          if (v72)
                          {
LABEL_93:

                            v73 = CFDictionaryGetCFDataOfLength();
                            if (!v73)
                            {
                              goto LABEL_101;
                            }

                            btAddress = [v23 btAddress];
                            v75 = v73;
                            v76 = v75;
                            if (btAddress == v75)
                            {

                              goto LABEL_101;
                            }

                            if (btAddress)
                            {
                              v77 = [btAddress isEqual:v75];

                              if (v77)
                              {
LABEL_101:

                                sessionTelemetry = [(RPPeopleDaemon *)selfCopy sessionTelemetry];
                                deviceIRKData2 = [v23 deviceIRKData];
                                [sessionTelemetry logIdentityUpdateWithHandle:iDCopy deviceIRKData:deviceIRKData2 type:v13 source:source completionHandler:&stru_1001AEAC8];

                                aliasCopy = v86;
                                if ((v24 & 0x800) != 0)
                                {
                                  v80 = v85;
                                  if (!v85)
                                  {
                                    v80 = objc_alloc_init(NSMutableDictionary);
                                    v81 = *(&selfCopy->super.isa + v84);
                                    *(&selfCopy->super.isa + v84) = v80;
                                  }

                                  [(objc_class *)v80 setObject:v23 forKeyedSubscript:v54];
                                }

                                else
                                {
                                  v80 = v85;
                                  if (!v24)
                                  {
                                    goto LABEL_108;
                                  }
                                }

                                v82 = +[RPIdentityDaemon sharedIdentityDaemon];
                                [v82 saveIdentity:v23 error:0];

LABEL_108:
                                if (v13 == 4)
                                {
                                  [(RPPeopleDaemon *)selfCopy _updateFamilyNotification];
                                }

                                contactIDCopy = v88;
                                goto LABEL_111;
                              }
                            }

                            else
                            {
                            }

                            [v23 setBtAddress:v76];
                            v24 |= 0x800000u;
                            goto LABEL_101;
                          }
                        }

                        else
                        {
                        }

                        [v23 setBtIRKData:v71];
                        v24 |= 0x400000u;
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                    }

                    [v23 setFeatureFlags:{objc_msgSend(v50, "unsignedIntegerValue")}];
                    v24 |= 0x400u;
                    goto LABEL_60;
                  }
                }

                else
                {
                }

                [v23 setEdPKData:v45];
                v24 |= 8u;
                goto LABEL_52;
              }
            }

            else
            {
            }

            [v23 setDeviceIRKData:v40];
            v24 |= 4u;
            goto LABEL_44;
          }
        }

        [v23 setSendersKnownAlias:v35];
        v24 |= 0x40000u;
        goto LABEL_36;
      }
    }

    [v23 setContactID:v31];
    v24 |= 0x8000u;
    goto LABEL_28;
  }

  if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100126428(v13);
  }

  v24 = 0;
LABEL_111:

  return v24;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPPeopleXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPPeopleXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPeopleXPCDaemonInterface];
  v11 = [NSSet alloc];
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:"xpcPeopleDiscoveryActivate:completion:" argumentIndex:0 ofReply:1];

  [connectionCopy _setQueue:self->_dispatchQueue];
  [connectionCopy setExportedInterface:v10];
  [connectionCopy setExportedObject:v6];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A1E44;
  v16[3] = &unk_1001AB488;
  v16[4] = self;
  v16[5] = v6;
  [connectionCopy setInvalidationHandler:v16];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPeopleXPCClientInterface];
  [connectionCopy setRemoteObjectInterface:v14];

  [connectionCopy resume];
  if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100126468(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];

  [(RPPeopleDaemon *)self _update];
}

- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)sessionTelemetry
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionTelemetry);

  return WeakRetained;
}

- (void)_rangingBLEActionScannerDeviceFound:(id)found
{
  foundCopy = found;
  v16 = foundCopy;
  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), foundCopy = v16, v5))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _rangingBLEActionScannerDeviceFound:]", 30, "Ranging BLE action scanner found/updated: %@\n", foundCopy);
      foundCopy = v16;
    }
  }

  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if ([v16 deviceActionType] == 53)
    {
      if (self->_airdropMode != 1 && (([v16 deviceFlags] & 0x444E) != 0 || self->_airdropMode == 3 && self->_prefPeopleStrangers))
      {
        rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
        if (!rangingBLEActionDevicesActive)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = self->_rangingBLEActionDevicesActive;
          self->_rangingBLEActionDevicesActive = v13;

          rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
        }

        v15 = [(NSMutableDictionary *)rangingBLEActionDevicesActive objectForKeyedSubscript:uUIDString];

        [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:v16 forKeyedSubscript:uUIDString];
        if (!v15)
        {
          [(RPPeopleDaemon *)self _rangingBLEActionScannerBurst];
        }

        goto LABEL_13;
      }

      rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
      if (!rangingBLEActionDevicesOther)
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = self->_rangingBLEActionDevicesOther;
        self->_rangingBLEActionDevicesOther = v9;

        rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
      }

      v11 = v16;
    }

    else
    {
      [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:0 forKeyedSubscript:uUIDString];
      rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
      v11 = 0;
    }

    [(NSMutableDictionary *)rangingBLEActionDevicesOther setObject:v11 forKeyedSubscript:uUIDString];
LABEL_13:
    [(RPPeopleDaemon *)self _rangingResponderUpdate];
  }
}

- (void)_rangingBLEActionScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  v8 = lostCopy;
  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), lostCopy = v8, v5))
    {
      LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _rangingBLEActionScannerDeviceLost:]", 30, "Ranging BLE action scanner lost: %@\n", lostCopy);
      lostCopy = v8;
    }
  }

  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:0 forKeyedSubscript:uUIDString];
    [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther setObject:0 forKeyedSubscript:uUIDString];
    [(RPPeopleDaemon *)self _rangingResponderUpdate];
  }
}

@end