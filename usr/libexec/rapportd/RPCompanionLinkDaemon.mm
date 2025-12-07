@interface RPCompanionLinkDaemon
+ (id)sharedCompanionLinkDaemon;
- (BOOL)_allowMessageForRegistrationOptions:(id)options cnx:(id)cnx;
- (BOOL)_allowStreamRequest:(id)request xpcCnx:(id)cnx rpCnx:(id)rpCnx;
- (BOOL)_clientBLEActionDiscoveryShouldRun;
- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun;
- (BOOL)_clientBLENeedsCLinkAdvertiserShouldRun;
- (BOOL)_clientBLETriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case error:(id *)error;
- (BOOL)_clientBonjourAWDLBrowserShouldRun;
- (BOOL)_clientBonjourCheckFoundPairedDevice:(id)device publicID:(id)d;
- (BOOL)_clientBonjourCheckLostPairedDevice:(id)device publicID:(id)d;
- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate;
- (BOOL)_clientConnectionStartOnDemand:(id)demand xpcCnx:(id)cnx error:(id *)error;
- (BOOL)_clientConnectionStartUnauth:(id)unauth client:(id)client publicID:(id)d xpcCnx:(id)cnx error:(id *)error;
- (BOOL)_clientShouldFindNonSameAccountDevices;
- (BOOL)_destinationID:(id)d matchesCnx:(id)cnx;
- (BOOL)_destinationID:(id)d matchesProxyDeviceOnCnx:(id)cnx;
- (BOOL)_haveActiveClientConnectionsOnAWDL;
- (BOOL)_haveActiveServerConnectionsOnAWDL;
- (BOOL)_homeKitAuthMatchForBonjourDevice:(id)device;
- (BOOL)_proxyDevice:(id)device isEqualTo:(id)to;
- (BOOL)_proxyDevice:(id)device receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler cnx:(id)cnx;
- (BOOL)_receivedEventID:(id)d onXPCCnx:(id)cnx event:(id)event options:(id)options unauth:(BOOL)unauth rpCnx:(id)rpCnx;
- (BOOL)_receivedRequestID:(id)d onXPCCnx:(id)cnx request:(id)request options:(id)options responseHandler:(id)handler unauth:(BOOL)unauth rpCnx:(id)rpCnx;
- (BOOL)_serverBLENeedsCLinkScannerScreenOff;
- (BOOL)_serverBonjourAWDLAdvertiserShouldRun;
- (BOOL)_serverBonjourShouldRun;
- (BOOL)_serverNearbyActionV2DiscoveryShouldRun;
- (BOOL)_serverNearbyInfoV2DiscoveryShouldRun;
- (BOOL)_serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:(int)type;
- (BOOL)_serverTCPHasActiveConnections;
- (BOOL)_shouldSendActivityLevelOverWiFi;
- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler;
- (BOOL)createDeviceToEndpointMappingForDeviceID:(id)d endpointUUID:(id *)iD error:(id *)error;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)removeXPCMatchingToken:(unint64_t)token;
- (BOOL)triggerEnhancedDiscoveryForReason:(id)reason useCase:(unsigned int)case error:(id *)error;
- (RPCompanionLinkDaemon)init;
- (id)_addProxyIdentifier:(id)identifier toDictionary:(id)dictionary;
- (id)_checkForProxyOrLocalDestinations:(id)destinations eventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (id)_clientBLENeedsCLinkTargetDevice;
- (id)_clientCreateConnection:(id)connection xpcCnx:(id)cnx error:(id *)error;
- (id)_clientShouldConnectOverBonjour:(id)bonjour device:(id)device identities:(id)identities;
- (id)_contextCollectorDevice;
- (id)_discoveryNonceOrRotate:(BOOL)rotate;
- (id)_eventForHomeHubDevice:(id)device;
- (id)_findDeviceWithDevice:(id)device deviceMap:(id)map matchedIdentifier:(id *)identifier;
- (id)_findExistingActiveDevice:(id)device;
- (id)_findExistingActiveOnDemandDevice:(id)device;
- (id)_findMatchingAWDLBonjourDevice:(id)device;
- (id)_findWiFiConnectionByID:(id)d;
- (id)_getAppleID;
- (id)_homeKitDecryptRotatingIDForBonjourDevice:(id)device;
- (id)_serverBonjourAuthTagString;
- (id)_serverBonjourAuthTagStringWithData:(id)data;
- (id)_serverBonjourTempAuthTagStringWithData:(id)data;
- (id)_serverTCPHandleConnectionStarted:(id)started;
- (id)_xpcConnections:(id)connections withControlFlags:(unint64_t)flags;
- (id)descriptionWithLevel:(int)level;
- (id)findAuthAWDLPairingModeDeviceForIdentifier:(id)identifier;
- (id)findConnectedDeviceForIdentifier:(id)identifier controlFlags:(unint64_t)flags cnx:(id *)cnx;
- (id)findDeviceFromID:(id)d;
- (id)findServerClientFromID:(id)d senderIDS:(id)s statusFlags:(unint64_t)flags;
- (id)findUnauthDeviceForIdentifier:(id)identifier;
- (id)homeHubDeviceForLaunchInstanceID:(id)d;
- (id)logDictionaryOfStringArrays:(id)arrays withPrefix:(id)prefix;
- (int)_airPlayLeaderStateUncached;
- (int)_localMediaAccessControlSetting;
- (int64_t)_sessionsActiveOnConnection:(id)connection xpcConnection:(id)xpcConnection;
- (unsigned)_controlFlagsToNearbyActionType:(unint64_t)type;
- (void)_activate;
- (void)_activeDeviceAdded:(id)added cnx:(id)cnx;
- (void)_activeDeviceChanged:(id)changed changes:(unsigned int)changes;
- (void)_activeDeviceChangedForConnection:(id)connection bonjourDevice:(id)device;
- (void)_activeDeviceRemoved:(id)removed cnx:(id)cnx;
- (void)_addApplicationPID:(id)d;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_bleServerHandleConnectionEnded:(id)ended;
- (void)_bleServerHandleConnectionStarted:(id)started;
- (void)_btPipeConnectionEnded:(id)ended;
- (void)_btPipeConnectionStart;
- (void)_btPipeEnsureStarted;
- (void)_btPipeEnsureStopped;
- (void)_btPipeHandleStateChanged:(id)changed;
- (void)_btPipeSetup:(id)setup withPriority:(int)priority;
- (void)_btPipeSyncKeysIfNeeded;
- (void)_btPipeTearDown:(id)down;
- (void)_clientBLEActionDiscoveryEnsureStarted;
- (void)_clientBLEActionDiscoveryEnsureStopped;
- (void)_clientBLEDiscoveryDeviceFound:(id)found deviceFlags:(unsigned __int8)flags;
- (void)_clientBLEDiscoveryDeviceLastSeenChange:(id)change;
- (void)_clientBLEDiscoveryDeviceLost:(id)lost force:(BOOL)force deviceFlags:(unsigned __int8)flags;
- (void)_clientBLEDiscoveryEnsureStarted;
- (void)_clientBLEDiscoveryEnsureStopped;
- (void)_clientBLEFamilyDeviceReportChanges;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped;
- (void)_clientBLENearbyActionV2AdvertiserRestart;
- (void)_clientBLENearbyActionV2AdvertiserUpdate;
- (void)_clientBLENeedsCLinkAdvertiserEnsureStarted;
- (void)_clientBLENeedsCLinkAdvertiserEnsureStopped;
- (void)_clientBLENeedsCLinkAdvertiserRestart;
- (void)_clientBLENeedsCLinkAdvertiserUpdate;
- (void)_clientBonjourAWDLBrowserEnsureStarted;
- (void)_clientBonjourAWDLBrowserEnsureStopped;
- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device;
- (void)_clientBonjourAWDLBrowserLostDevice:(id)device;
- (void)_clientBonjourEnsureStarted;
- (void)_clientBonjourEnsureStopped;
- (void)_clientBonjourFoundUnauthDevice:(id)device isAWDLDevice:(BOOL)lDevice;
- (void)_clientBonjourLostDevice:(id)device;
- (void)_clientBonjourLostUnauthDevice:(id)device;
- (void)_clientBonjourReevaluateAllDevices;
- (void)_clientBonjourReevaluateUnauthDevices;
- (void)_clientBonjourResetReevaluationRateLimit;
- (void)_clientConnectionEnded:(id)ended uniqueID:(id)d;
- (void)_clientConnectionEndedUnauth:(id)unauth publicID:(id)d;
- (void)_clientConnectionStart:(id)start controlFlags:(unint64_t)flags uniqueID:(id)d identity:(id)identity;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientOnDemandAWDLDiscoveryStartForXPC:(id)c;
- (void)_clientOnDemandAWDLDiscoveryTimedOutForDevice:(id)device xpcCnx:(id)cnx;
- (void)_clientOnDemandConnectionEnded:(id)ended uniqueID:(id)d;
- (void)_clientOnDemandDiscoveryStart:(id)start xpcCnx:(id)cnx;
- (void)_clientPurgeUnauthAWDLDevices;
- (void)_clientReportChangedDevice:(id)device changes:(unsigned int)changes;
- (void)_clientReportFoundDevice:(id)device;
- (void)_clientReportLocalDevice:(id)device xpcCnx:(id)cnx;
- (void)_clientReportLostDevice:(id)device cnx:(id)cnx;
- (void)_clientReportUINoteDevice:(id)device;
- (void)_clientSendActivityLevelOverWiFiIfNecessary;
- (void)_clientSendNeedsAWDLOverWiFi:(BOOL)fi;
- (void)_clientUINoteAction:(int)action error:(id)error device:(id)device;
- (void)_clientUINoteProcessPending;
- (void)_clientUINoteStart:(id)start;
- (void)_configureConnectionForPairing:(id)pairing;
- (void)_connectionConfigureCommon:(id)common;
- (void)_connectionStateChanged:(int)changed cnx:(id)cnx;
- (void)_createDestinationIdentifierMaps;
- (void)_createRequestEntryForXid:(id)xid requestID:(id)d options:(id)options responseHandler:(id)handler;
- (void)_deliverEventID:(id)d event:(id)event options:(id)options unauth:(BOOL)unauth cnx:(id)cnx outError:(id *)error;
- (void)_disconnectRemovedSharedHomeDevices;
- (void)_disconnectUnauthConnections;
- (void)_disconnectUnpairedDevices;
- (void)_duetSyncEnsureStarted;
- (void)_duetSyncEnsureStopped;
- (void)_existingProxyDeviceUpdated:(id)updated event:(id)event isLocal:(BOOL)local;
- (void)_forEachConnectionWithHandler:(id)handler;
- (void)_forEachMatchingDestinationID:(id)d handler:(id)handler;
- (void)_forEachUniqueMatchingDestinationID:(id)d handler:(id)handler;
- (void)_handleContextCollectorProxyRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_handleContextCollectorRequest:(id)request responseHandler:(id)handler;
- (void)_hidEnsureStarted;
- (void)_hidEnsureStopped;
- (void)_homeHubDeviceAdded:(id)added;
- (void)_homeHubDeviceRemoved:(id)removed;
- (void)_homeKitEnsureStarted;
- (void)_homeKitEnsureStopped;
- (void)_homeKitGetPairingIdentities;
- (void)_homeKitGetUserInfo:(id)info;
- (void)_homeKitIdentityUpdated:(id)updated error:(id)error;
- (void)_homeKitPairingUpdated:(id)updated;
- (void)_homeKitSelfAccessoryMediaAccessUpdated:(unsigned int)updated password:(id)password;
- (void)_homeKitSelfAccessoryMediaSystemUpdated:(int)updated;
- (void)_homeKitSelfAccessoryUpdated;
- (void)_homeKitUpdateInfo:(BOOL)info;
- (void)_homeKitUpdateUserIdentifiers;
- (void)_interestReceived:(id)received cnx:(id)cnx;
- (void)_interestRemoveForCnx:(id)cnx;
- (void)_interestSendEventID:(id)d event:(id)event;
- (void)_invalidate;
- (void)_invalidated;
- (void)_localDeviceCleanup;
- (void)_localDeviceUpdate;
- (void)_mediaControlEnsureStarted;
- (void)_mediaControlEnsureStopped;
- (void)_mediaRemoteIDGet;
- (void)_mediaRouteIDGet;
- (void)_miscEnsureStarted;
- (void)_miscEnsureStopped;
- (void)_miscHandleLaunchAppRequest:(id)request responseHandler:(id)handler;
- (void)_miscHandleSpeakRequest:(id)request responseHandler:(id)handler;
- (void)_personalDeviceUpdate;
- (void)_processPendingLostBLEDevices;
- (void)_processPendingLostNeedsCLinkDevices;
- (void)_proxyDevice:(id)device loopbackRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)_proxyDeviceAdd:(id)add options:(id)options eventID:(id)d deviceInfo:(id)info cnx:(id)cnx;
- (void)_proxyDeviceListUpdated:(id)updated content:(id)content options:(id)options cnx:(id)cnx;
- (void)_proxyDeviceRemove:(id)remove options:(id)options cnx:(id)cnx;
- (void)_proxyLocalDeviceUpdateOnConnection:(id)connection launchInstanceID:(id)d;
- (void)_pruneStaleBLEDevices;
- (void)_reachabilityEnsureStarted;
- (void)_reachabilityEnsureStopped;
- (void)_receivedEventID:(id)d event:(id)event options:(id)options unauth:(BOOL)unauth cnx:(id)cnx;
- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler unauth:(BOOL)unauth cnx:(id)cnx;
- (void)_registerConnectionRequestID:(id)d options:(id)options handler:(id)handler;
- (void)_removeApplicationPID:(id)d;
- (void)_reportXPCMatchingDiscoveryCLink;
- (void)_reportXPCMatchingDiscoveryCompanionAuthenticationDevice:(id)device;
- (void)_reportXPCMatchingDiscoveryUINoteDevice:(id)device;
- (void)_schedulePendingLostBLEDeviceTimer;
- (void)_schedulePendingLostNeedsCLinkDeviceTimer;
- (void)_sendProxyDeviceUpdateToPeer:(id)peer;
- (void)_serverBLENeedsCLinkScannerDeviceFound:(id)found;
- (void)_serverBLENeedsCLinkScannerDeviceLost:(id)lost;
- (void)_serverBLENeedsCLinkScannerEnsureStarted;
- (void)_serverBLENeedsCLinkScannerEnsureStopped;
- (void)_serverBTAddressChanged;
- (void)_serverBTAddressMonitorEnsureStarted;
- (void)_serverBTAddressMonitorEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserEnsureStarted;
- (void)_serverBonjourAWDLAdvertiserEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserUpdateTXT;
- (void)_serverBonjourEnsureStarted;
- (void)_serverBonjourEnsureStopped;
- (void)_serverBonjourUpdateTXT;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_serverNearbyActionV2DiscoveryEnsureStarted;
- (void)_serverNearbyActionV2DiscoveryEnsureStopped;
- (void)_serverNearbyInfoV2DeviceFound:(id)found deviceFlags:(unsigned __int8)flags;
- (void)_serverNearbyInfoV2DeviceLost:(id)lost idsIdentifier:(id)identifier force:(BOOL)force deviceFlags:(unsigned __int8)flags;
- (void)_serverNearbyInfoV2DiscoveryEnsureStarted;
- (void)_serverNearbyInfoV2DiscoveryEnsureStopped;
- (void)_serverReceivedNeedsAWDLEvent:(id)event event:(id)a4;
- (void)_serverTCPEnsureStarted;
- (void)_serverTCPEnsureStopped;
- (void)_serverTCPHandleConnectionEnded:(id)ended;
- (void)_serverTCPRemoveConnectionsWithIdentifier:(id)identifier exceptConnection:(id)connection;
- (void)_sessionHandlePeerDisconnect:(id)disconnect;
- (void)_sessionHandleStartRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler;
- (void)_sessionHandleStopRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler;
- (void)_siriEnsureStarted;
- (void)_siriEnsureStopped;
- (void)_startApplicationServiceMonitorIfNecessary;
- (void)_stereoDeviceUpdate:(int)update;
- (void)_update;
- (void)_updateAssertions;
- (void)_updateForXPCClientChange;
- (void)_updateForXPCServerChange;
- (void)_updateHomeHubDevices:(id)devices;
- (void)_updateRBSProcessMonitor;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)interestDeregisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner;
- (void)interestRegisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prefsChanged;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD xpcID:(unsigned int)xpcID options:(id)options responseHandler:(id)handler;
- (void)sessionStartSend:(id)send session:(id)session xpcID:(unsigned int)d destinationID:(id)iD completion:(id)completion;
- (void)sessionStopSend:(id)send session:(id)session xpcID:(unsigned int)d completion:(id)completion;
@end

@implementation RPCompanionLinkDaemon

- (void)_updateForXPCClientChange
{
  v41 = +[NSMutableSet set];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  DeviceClass = GestaltGetDeviceClass();
  v34 = +[NSMutableSet set];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_xpcConnections;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  v3 = 0;
  v4 = 0;
  if (!v2)
  {
    v33 = 0;
    v35 = 0;
    bleScreenOffScanRate = 0;
    LOBYTE(v44) = 0;
    v40 = 0;
    bleScreenOffRescanInterval = 0x7FFFFFFFFFFFFFFFLL;
    v5 = -60;
    goto LABEL_45;
  }

  v33 = 0;
  v35 = 0;
  bleScreenOffScanRate = 0;
  v44 = 0;
  v40 = 0;
  v39 = *v50;
  bleScreenOffRescanInterval = 0x7FFFFFFFFFFFFFFFLL;
  v5 = -60;
  do
  {
    v6 = 0;
    v42 = v2;
    do
    {
      if (*v50 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v49 + 1) + 8 * v6);
      client = [v7 client];
      controlFlags = [client controlFlags];

      client2 = [v7 client];
      deviceFilter = [client2 deviceFilter];

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100003AFC;
      v46[3] = &unk_1001AB0E0;
      v47 = v41;
      v48 = v7;
      [deviceFilter enumerateObjectsUsingBlock:v46];
      if ((controlFlags & 0x10000) != 0)
      {
        v40 |= [deviceFilter count] == 0;
      }

      if ((controlFlags & 0x2104000000) != 0 && !self->_prefCommunal)
      {
        v58[3] |= controlFlags;
        *(v54 + 24) = 1;
      }

      if ((controlFlags & 2) != 0)
      {
        v58[3] |= controlFlags;
      }

      if ((controlFlags & 0x8000) != 0)
      {
        *(v54 + 24) = 1;
      }

      if (DeviceClass != 11 && (controlFlags & 0x10000000000) != 0 && (([v7 needsCLink] & 1) != 0 || objc_msgSend(v7, "needsNearbyActionV2")))
      {
        v33 = 1;
      }

      if ((controlFlags & 0x200000000) != 0)
      {
        v35 = 1;
        *(v54 + 24) = 1;
      }

      if ((controlFlags & 0x20000) != 0 && (([v7 needsCLink] & 1) != 0 || objc_msgSend(v7, "needsNearbyActionV2")))
      {
        client3 = [v7 client];
        destinationDevice = [client3 destinationDevice];
        identifier = [destinationDevice identifier];

        [v34 addObject:identifier];
      }

      if ((controlFlags & 0x10000) != 0)
      {
        client4 = [v7 client];
        v16 = [client4 bleScreenOffRescanInterval] > 0;

        if (v16)
        {
          client5 = [v7 client];
          bleScreenOffRescanInterval = [client5 bleScreenOffRescanInterval];
        }

        client6 = [v7 client];
        if ([client6 bleScreenOffScanRate] <= bleScreenOffScanRate)
        {
          goto LABEL_32;
        }

        client7 = [v7 client];
        v20 = [client7 bleScreenOffScanRate] < 0x15;

        if (v20)
        {
          client6 = [v7 client];
          bleScreenOffScanRate = [client6 bleScreenOffScanRate];
LABEL_32:
        }
      }

      if (DeviceClass == 6 && (controlFlags & 0x10000000000000) != 0)
      {
        _os_feature_enabled_impl();
      }

      client8 = [v7 client];
      rssiThreshold = [client8 rssiThreshold];

      if (rssiThreshold >= v5)
      {
        v23 = v5;
      }

      else
      {
        v23 = rssiThreshold;
      }

      if (rssiThreshold)
      {
        v5 = v23;
      }

      v44 |= (controlFlags >> 16) & 1;
      v3 |= (controlFlags >> 13) & 1;
      v4 |= (controlFlags >> 35) & 1;
      v6 = v6 + 1;
    }

    while (v42 != v6);
    v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  }

  while (v2);
LABEL_45:

  if (!self->_prefCommunal)
  {
    xpcMatchingMap = self->_xpcMatchingMap;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100003C74;
    v45[3] = &unk_1001AB108;
    v45[4] = &v57;
    v45[5] = &v53;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v45];
  }

  self->_bleDiscoveryControlFlags = v58[3];
  self->_bleDiscoveryForce = *(v54 + 24);
  self->_bleProximityDetection = v35 & 1;
  self->_discoverPairedDevices = v3 & 1;
  self->_bleRSSIThreshold = v5;
  self->_enableAWDLGuestDiscovery = v4 & 1;
  if (bleScreenOffScanRate)
  {
    v25 = bleScreenOffScanRate;
  }

  else
  {
    v25 = 10;
  }

  self->_bleDiscoveryScreenOffScanRate = v25;
  if (bleScreenOffRescanInterval == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = bleScreenOffRescanInterval;
  }

  self->_bleDiscoveryScreenOffRescanInterval = v26;
  needsAWDLTransaction = self->_needsAWDLTransaction;
  if (needsAWDLTransaction != (v33 & 1))
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1)
      {
        goto LABEL_56;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(needsAWDLTransaction) = self->_needsAWDLTransaction;
LABEL_56:
        v28 = "no";
        if (needsAWDLTransaction)
        {
          v29 = "yes";
        }

        else
        {
          v29 = "no";
        }

        if (v33)
        {
          v28 = "yes";
        }

        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _updateForXPCClientChange]", 30, "Needs AWDL Transaction: %s -> %s\n", v29, v28);
      }
    }

    self->_needsAWDLTransaction = v33 & 1;
  }

  if (v40)
  {
    screenOffDeviceFilter = self->_screenOffDeviceFilter;
    self->_screenOffDeviceFilter = 0;

    v31 = 1;
  }

  else
  {
    objc_storeStrong(&self->_screenOffDeviceFilter, v41);
    v31 = (v44 & 1) != 0 && [v41 count] != 0;
  }

  self->_bleDiscoveryScreenOff = v31;
  if ([v34 count])
  {
    [v34 minusSet:self->_needsAWDLSentToPeers];
    if ([v34 count])
    {
      objc_storeStrong(&self->_needsAWDLNewPeers, v34);
    }
  }

  [(RPCompanionLinkDaemon *)self _update];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v57, 8);
}

- (void)_pruneStaleBLEDevices
{
  selfCopy = self;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100003DFC(self, a2, v2);
    }
  }

  v4 = objc_opt_new();
  bleDevices = selfCopy->_bleDevices;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100011860;
  v19[3] = &unk_1001AB340;
  v6 = v4;
  v20 = v6;
  [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10010FE68(v12);
        }

        v13 = [(NSMutableDictionary *)selfCopy->_bleDevices objectForKeyedSubscript:v12, v15];
        [(NSMutableDictionary *)selfCopy->_bleDevices setObject:0 forKeyedSubscript:v12];
        [(RPCompanionLinkDaemon *)selfCopy _clientReportLostDevice:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      v9 = v14;
    }

    while (v14);
  }
}

- (void)_localDeviceUpdate
{
  p_localDeviceInfo = &self->_localDeviceInfo;
  changed = [(RPCompanionLinkDevice *)self->_localDeviceInfo changed];
  v5 = changed;
  v7 = sub_100009D00(changed, v6);
  DeviceClass = GestaltGetDeviceClass();
  if (!self->_localDeviceInfo)
  {
    v15 = objc_alloc_init(RPCompanionLinkDevice);
    v16 = *p_localDeviceInfo;
    *p_localDeviceInfo = v15;

    [*p_localDeviceInfo setDaemon:1];
    [*p_localDeviceInfo setFlags:{objc_msgSend(*p_localDeviceInfo, "flags") | 0x40}];
    [*p_localDeviceInfo setFlags:{objc_msgSend(*p_localDeviceInfo, "flags") | 0x80}];
    if (DeviceClass == 4)
    {
      [*p_localDeviceInfo setStatusFlags:{objc_msgSend(*p_localDeviceInfo, "statusFlags") | 0x10000}];
      v9 = 0;
      goto LABEL_12;
    }

    if (DeviceClass == 7)
    {
      [*p_localDeviceInfo setFlags:{objc_msgSend(*p_localDeviceInfo, "flags") | 2}];
    }
  }

  v9 = DeviceClass == 7;
  if (!self->_soundBoardUserLeaderKVO && DeviceClass == 7)
  {
    soundBoardPrefs = self->_soundBoardPrefs;
    if (!soundBoardPrefs)
    {
      v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.soundboard"];
      v12 = self->_soundBoardPrefs;
      self->_soundBoardPrefs = v11;

      soundBoardPrefs = self->_soundBoardPrefs;
    }

    v9 = 1;
    [(NSUserDefaults *)soundBoardPrefs addObserver:self forKeyPath:@"stereo_leader" options:1 context:0];
    [(NSUserDefaults *)self->_soundBoardPrefs addObserver:self forKeyPath:@"stereo_leader_info" options:1 context:0];
    self->_soundBoardUserLeaderKVO = 1;
    Int64 = CFPrefs_GetInt64();
    self->_soundBoardUserLeader = Int64 != 0;
    if (!Int64)
    {
      CFDictionaryGetTypeID();
      v14 = CFPrefs_CopyTypedValue();
      self->_soundBoardUserLeader = CFDictionaryGetInt64() != 0;

      v9 = 1;
    }
  }

LABEL_12:
  deviceColor = [*p_localDeviceInfo deviceColor];

  if (!deviceColor)
  {
    v18 = GestaltCopyAnswer();
    if (v18)
    {
      [*p_localDeviceInfo setDeviceColor:v18];
      v5 = 1;
    }
  }

  flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
  v20 = flags & 0xFFFFF2DF | (32 * ([(CUSystemMonitor *)self->_systemMonitor wifiFlags]& 1));
  if (self->_prefHIDEnabled)
  {
    v21 = 1024;
  }

  else
  {
    v21 = 0;
  }

  if (self->_prefMediaControlEnabled)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v23 = v20 | v21 | v22;
  if (self->_prefSiriEnabled)
  {
    v24 = 2048;
  }

  else
  {
    v24 = 0;
  }

  if ((v23 | v24) != flags)
  {
    [*p_localDeviceInfo setFlags:?];
    v5 = 1;
  }

  if (!self->_needsPrimaryAppleIDUpdate)
  {
    v31 = 0;
    v27 = 0;
    goto LABEL_44;
  }

  _getAltDSID = [(RPCompanionLinkDaemon *)self _getAltDSID];
  accountAltDSID = [(RPCompanionLinkDevice *)self->_localDeviceInfo accountAltDSID];
  v27 = _getAltDSID;
  v28 = accountAltDSID;
  v29 = v28;
  if (v27 == v28)
  {

    goto LABEL_36;
  }

  if ((v27 != 0) == (v28 == 0))
  {

    goto LABEL_35;
  }

  v30 = [v27 isEqual:v28];

  if ((v30 & 1) == 0)
  {
LABEL_35:
    [*p_localDeviceInfo setAccountAltDSID:v27];
    v5 = 1;
  }

LABEL_36:
  _getAppleID = [(RPCompanionLinkDaemon *)self _getAppleID];
  accountID = [(RPCompanionLinkDevice *)self->_localDeviceInfo accountID];
  v31 = _getAppleID;
  v34 = accountID;
  v35 = v34;
  if (v31 == v34)
  {
  }

  else
  {
    if ((v31 != 0) != (v34 == 0))
    {
      v36 = [v31 isEqual:v34];

      if (v36)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    [*p_localDeviceInfo setAccountID:v31];
    v5 = 1;
  }

LABEL_43:
  self->_needsPrimaryAppleIDUpdate = 0;
LABEL_44:
  v170 = v5;
  if ([(RPCompanionLinkDaemon *)self _shouldSendActivityLevelOverWiFi])
  {
    if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
    {
      v37 = 7;
    }

    else
    {
      v37 = 3;
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setActivityLevel:v37];
  }

  if (self->_prefHomeKitEnabled)
  {
    homeKitIdentifier = [*p_localDeviceInfo homeKitIdentifier];

    if (homeKitIdentifier || ([(HMAccessory *)self->_homeKitSelfAccessory uniqueIdentifier], (v168 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v168 = 0;
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001137DC(v168);
      }

      [*p_localDeviceInfo setHomeKitIdentifier:v168];
      v170 = 1;
    }

    v39 = +[RPIdentityDaemon sharedIdentityDaemon];
    homeKitIdentity = [v39 homeKitIdentity];

    accountID2 = [*p_localDeviceInfo accountID];

    if (accountID2)
    {
      v167 = v31;
    }

    else
    {
      accountID3 = [homeKitIdentity accountID];

      v167 = accountID3;
      if (accountID3)
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011381C(v7, accountID3);
        }

        [*p_localDeviceInfo setAccountID:accountID3];
        v170 = 1;
      }

      else
      {
        v167 = 0;
      }
    }

    homeKitUserIdentifiers = [*p_localDeviceInfo homeKitUserIdentifiers];

    if (homeKitUserIdentifiers || ([(RPHomeKitManager *)self->_rpHomeKitManager homeKitUserIdentifiers], (v166 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v166 = 0;
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113878(v7, v166);
      }

      [*p_localDeviceInfo setHomeKitUserIdentifiers:v166];
      v170 = 1;
    }
  }

  else
  {
    v166 = 0;
    v167 = v31;
    v168 = 0;
  }

  if (!self->_uniqueIDData)
  {
    p_uniqueIDData = &self->_uniqueIDData;
    memset(v199, 0, sizeof(v199));
    v195.tv_sec = 0;
    v195.tv_nsec = 0;
    if (gethostuuid(v199, &v195))
    {
      v45 = NSRandomData();
    }

    else
    {
      v45 = [[NSData alloc] initWithBytes:v199 length:6];
    }

    v46 = *p_uniqueIDData;
    *p_uniqueIDData = v45;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001138D4();
    }

    v47 = NSPrintF("%.3H", [(NSData *)self->_uniqueIDData bytes], [(NSData *)self->_uniqueIDData length], [(NSData *)self->_uniqueIDData length]);
    uniqueIDStr = self->_uniqueIDStr;
    self->_uniqueIDStr = v47;
  }

  v49 = self->_uniqueIDStr;
  if (v49)
  {
    identifier = [*p_localDeviceInfo identifier];
    v51 = v49;
    v52 = identifier;
    v53 = v52;
    if (v51 == v52)
    {

      goto LABEL_90;
    }

    if (v52)
    {
      v54 = [(NSString *)v51 isEqual:v52];

      if (v54)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdentifier:self->_uniqueIDStr];
    v170 = 1;
  }

LABEL_90:
  idsDeviceIdentifier = [*p_localDeviceInfo idsDeviceIdentifier];

  if (!idsDeviceIdentifier)
  {
    v56 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf = [v56 idsDeviceIDSelf];

    if (idsDeviceIDSelf)
    {
      [*p_localDeviceInfo setIdsDeviceIdentifier:idsDeviceIDSelf];
      v170 = 1;
    }
  }

  v58 = +[RPCloudDaemon sharedCloudDaemon];
  idsCorrelationIdentifier = [v58 idsCorrelationIdentifier];

  idsCorrelationIdentifier2 = [*p_localDeviceInfo idsCorrelationIdentifier];
  v61 = idsCorrelationIdentifier;
  v62 = idsCorrelationIdentifier2;
  v63 = v62;
  if (v61 == v62)
  {

    goto LABEL_99;
  }

  if ((v61 != 0) != (v62 == 0))
  {
    v64 = [v61 isEqual:v62];

    if ((v64 & 1) == 0)
    {
      goto LABEL_101;
    }

LABEL_99:
    v169 = 0;
    goto LABEL_102;
  }

LABEL_101:
  v169 = v61;
  [*p_localDeviceInfo setIdsCorrelationIdentifier:?];
  v170 = 1;
LABEL_102:
  v65 = +[RPIdentityDaemon sharedIdentityDaemon];
  sessionPairingIdentifier = [v65 sessionPairingIdentifier];
  uUIDString = [sessionPairingIdentifier UUIDString];

  sessionPairingIdentifier2 = [*p_localDeviceInfo sessionPairingIdentifier];
  v69 = uUIDString;
  v70 = sessionPairingIdentifier2;
  v71 = v70;
  if (v69 == v70)
  {
  }

  else
  {
    if ((v69 != 0) != (v70 == 0))
    {
      v72 = [v69 isEqual:v70];

      if (v72)
      {
        goto LABEL_109;
      }
    }

    else
    {
    }

    [*p_localDeviceInfo setSessionPairingIdentifier:v69];
    v170 = 1;
  }

LABEL_109:
  if ([*p_localDeviceInfo listeningPort] > 0 || (v73 = -[CUTCPServer tcpListeningPort](self->_tcpServer, "tcpListeningPort"), v73 < 1))
  {
    v162 = 0;
  }

  else
  {
    [*p_localDeviceInfo setListeningPort:v73];
    v162 = 1;
    v170 = 1;
  }

  model = [*p_localDeviceInfo model];

  if (!model)
  {
    v75 = GestaltCopyAnswer();
    if (v75)
    {
      [*p_localDeviceInfo setModel:v75];
      v170 = 1;
    }
  }

  if (self->_prefCommunal)
  {
    meDeviceIDSDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];

    v69 = meDeviceIDSDeviceID;
  }

  else
  {
    meDeviceIDSDeviceID = 0;
  }

  idsPersonalDeviceIdentifier = [*p_localDeviceInfo idsPersonalDeviceIdentifier];
  v78 = meDeviceIDSDeviceID;
  v79 = idsPersonalDeviceIdentifier;
  v80 = v79;
  v163 = v27;
  v171 = v78;
  if (v78 == v79)
  {

    goto LABEL_140;
  }

  if ((v78 != 0) != (v79 == 0))
  {
    v81 = v78;
    v82 = [v78 isEqual:v79];

    if (v82)
    {
      goto LABEL_140;
    }
  }

  else
  {
  }

  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || _LogCategory_Initialize())
    {
      sub_100113914();
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113948(v7, p_localDeviceInfo, v171);
    }
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdsPersonalDeviceIdentifier:v171];
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
  v84 = [allValues countByEnumeratingWithState:&v191 objects:v201 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v192;
    do
    {
      for (i = 0; i != v85; i = i + 1)
      {
        if (*v192 != v86)
        {
          objc_enumerationMutation(allValues);
        }

        v88 = *(*(&v191 + 1) + 8 * i);
        [v88 setIdsPersonalDeviceIdentifier:v171];
        [v88 setChanged:1];
      }

      v85 = [allValues countByEnumeratingWithState:&v191 objects:v201 count:16];
    }

    while (v85);
  }

  [(RPCompanionLinkDaemon *)self _personalDeviceUpdate];
  v170 = 1;
LABEL_140:
  if (v9 & ~self->_mediaAccessControlKVO)
  {
    airplayPrefs = self->_airplayPrefs;
    if (!airplayPrefs)
    {
      v90 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
      v91 = self->_airplayPrefs;
      self->_airplayPrefs = v90;

      airplayPrefs = self->_airplayPrefs;
    }

    [(NSUserDefaults *)airplayPrefs addObserver:self forKeyPath:@"accessControlLevel" options:1 context:0];
    [(NSUserDefaults *)self->_airplayPrefs addObserver:self forKeyPath:@"p2pAllow" options:1 context:0];
    self->_mediaAccessControlKVO = 1;
  }

  mediaRemoteIdentifier = [*p_localDeviceInfo mediaRemoteIdentifier];

  if (!mediaRemoteIdentifier)
  {
    [(RPCompanionLinkDaemon *)self _mediaRemoteIDGet];
  }

  mediaRouteIdentifier = [*p_localDeviceInfo mediaRouteIdentifier];

  if (!mediaRouteIdentifier)
  {
    [(RPCompanionLinkDaemon *)self _mediaRouteIDGet];
  }

  if (*p_localDeviceInfo)
  {
    objc_msgSend_operatingSystemVersion(*p_localDeviceInfo);
    if (v188)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v188 = 0;
    v189 = 0;
    v190 = 0;
  }

  memset(v199, 0, sizeof(v199));
  v200 = 0;
  v94 = +[RPCloudDaemon sharedCloudDaemon];
  v95 = v94;
  if (v94)
  {
    objc_msgSend_operatingSystemVersionForSelf(v94);
  }

  else
  {
    memset(v199, 0, sizeof(v199));
    v200 = 0;
  }

  v186 = *v199;
  v187 = v200;
  [*p_localDeviceInfo setOperatingSystemVersion:&v186];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001139C4(v199);
  }

LABEL_158:
  personalDeviceState = [(RPCompanionLinkDevice *)self->_localDeviceInfo personalDeviceState];
  if (self->_prefCommunal && [(CUSystemMonitor *)self->_systemMonitor meDeviceValid])
  {
    meDeviceFMFDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceFMFDeviceID];
    if ([meDeviceFMFDeviceID length])
    {
      v98 = 6;
    }

    else
    {
      v98 = 5;
    }
  }

  else
  {
    v98 = 0;
  }

  if (v98 != personalDeviceState)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113A2C(personalDeviceState, v98);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setPersonalDeviceState:v98];
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_homeHubDevices allValues];
    v100 = [allValues2 countByEnumeratingWithState:&v182 objects:v198 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v183;
      do
      {
        for (j = 0; j != v101; j = j + 1)
        {
          if (*v183 != v102)
          {
            objc_enumerationMutation(allValues2);
          }

          v104 = *(*(&v182 + 1) + 8 * j);
          [v104 setPersonalDeviceState:v98];
          [v104 setChanged:1];
        }

        v101 = [allValues2 countByEnumeratingWithState:&v182 objects:v198 count:16];
      }

      while (v101);
    }

    v170 = 1;
  }

  statusFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
  if ([(NSMutableSet *)self->_registeredProfileIDs containsObject:@"DuetSync"])
  {
    [(RPCompanionLinkDaemon *)self _duetSyncEnsureStarted];
    v106 = 256;
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _duetSyncEnsureStopped];
    v106 = 0;
  }

  v107 = v106 | statusFlags & 0xFFFFFEFFFFFFFEFFLL;
  meDeviceIsMe = [(CUSystemMonitor *)self->_systemMonitor meDeviceIsMe];
  prefMeDeviceIsMeOverride = self->_prefMeDeviceIsMeOverride;
  if (prefMeDeviceIsMeOverride)
  {
    meDeviceIsMe = [(NSNumber *)prefMeDeviceIsMeOverride BOOLValue];
  }

  else if (sub_10000329C())
  {
    meDeviceIsMe = GestaltGetDeviceClass() == 1;
  }

  v110 = 0x10000000000;
  if (!meDeviceIsMe)
  {
    v110 = 0;
  }

  v111 = v107 | v110;
  if ((v107 | v110) != statusFlags)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _localDeviceUpdate]", 30, "StatusFlags changed: %#ll{flags} -> %#ll{flags}\n", statusFlags, &unk_1001476B8, v111, &unk_1001476B8);
    }

    [*p_localDeviceInfo setStatusFlags:v111];
    v170 = 1;
  }

  v165 = v111;
  btAdvAddrStr = self->_btAdvAddrStr;
  if (btAdvAddrStr)
  {
    publicIdentifier = [*p_localDeviceInfo publicIdentifier];
    v114 = btAdvAddrStr;
    v115 = publicIdentifier;
    v116 = v115;
    if (v114 == v115)
    {
    }

    else
    {
      if (v115)
      {
        v117 = [(NSString *)v114 isEqual:v115];

        if (v117)
        {
          goto LABEL_200;
        }
      }

      else
      {
      }

      [(RPCompanionLinkDevice *)self->_localDeviceInfo setPublicIdentifier:self->_btAdvAddrStr];
      v170 = 1;
    }
  }

LABEL_200:
  serversChangedState = [*p_localDeviceInfo serversChangedState];
  if (serversChangedState != 6 && serversChangedState)
  {
    v160 = 0;
  }

  else
  {
    v119 = objc_alloc_init(NSMutableArray);
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v120 = self->_activeServers;
    v121 = [(NSMutableSet *)v120 countByEnumeratingWithState:&v178 objects:v197 count:16];
    if (v121)
    {
      v122 = v121;
      v123 = *v179;
      do
      {
        for (k = 0; k != v122; k = k + 1)
        {
          if (*v179 != v123)
          {
            objc_enumerationMutation(v120);
          }

          serviceType = [*(*(&v178 + 1) + 8 * k) serviceType];
          if (serviceType)
          {
            [v119 addObject:serviceType];
          }
        }

        v122 = [(NSMutableSet *)v120 countByEnumeratingWithState:&v178 objects:v197 count:16];
      }

      while (v122);
    }

    xpcMatchingMap = self->_xpcMatchingMap;
    v176[0] = _NSConcreteStackBlock;
    v176[1] = 3221225472;
    v176[2] = sub_100033880;
    v176[3] = &unk_1001AB968;
    v127 = v119;
    v177 = v127;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v176];
    v160 = v127;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setServiceTypes:v127];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setServersChangedState:5];
  }

  v128 = CUIsGreenTeaDevice();
  deviceCapabilityFlags = [*p_localDeviceInfo deviceCapabilityFlags];
  if (v128)
  {
    v130 = deviceCapabilityFlags & 0xFFFFFFFC | 2;
  }

  else
  {
    v130 = deviceCapabilityFlags & 0xFFFFFFFC;
  }

  v159 = deviceCapabilityFlags;
  if (deviceCapabilityFlags != v130)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _localDeviceUpdate]", 30, "DeviceCapabilityFlags changed: %#ll{flags} -> %#ll{flags}\n", statusFlags, &unk_100147B24, v165, &unk_100147B24);
    }

    [*p_localDeviceInfo setDeviceCapabilityFlags:v130];
    v170 = 1;
  }

  v158 = v130;
  v161 = statusFlags;
  v164 = p_localDeviceInfo;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v131 = self->_xpcConnections;
  v132 = [(NSMutableSet *)v131 countByEnumeratingWithState:&v172 objects:v196 count:16];
  v133 = v170;
  if (v132)
  {
    v134 = v132;
    v135 = *v173;
    do
    {
      for (m = 0; m != v134; m = m + 1)
      {
        if (*v173 != v135)
        {
          objc_enumerationMutation(v131);
        }

        v137 = *(*(&v172 + 1) + 8 * m);
        client = [v137 client];

        if (client)
        {
          netCnx = [v137 netCnx];
          v140 = netCnx;
          if (netCnx)
          {
            v141 = netCnx;
          }

          else
          {
            session = [v137 session];
            v141 = [session cnx];
          }

          if (([v141 controlFlags] & 0x200) != 0)
          {
            client2 = [v137 client];
            usingOnDemandConnection = [client2 usingOnDemandConnection];

            if ((usingOnDemandConnection & 1) == 0)
            {
              client3 = [v137 client];
              [client3 setUsingOnDemandConnection:1];

              xpcCnx = [v137 xpcCnx];
              remoteObjectProxy = [xpcCnx remoteObjectProxy];
              client4 = [v137 client];
              [remoteObjectProxy companionLinkUpdateClientState:client4];

              v133 = v170;
            }
          }

          if ((v133 & 1) != 0 || ([v137 localDeviceUpdated] & 1) == 0)
          {
            [(RPCompanionLinkDaemon *)self _clientReportLocalDevice:self->_localDeviceInfo xpcCnx:v137];
            [v137 setLocalDeviceUpdated:1];
          }
        }
      }

      v134 = [(NSMutableSet *)v131 countByEnumeratingWithState:&v172 objects:v196 count:16];
    }

    while (v134);
  }

  v149 = objc_alloc_init(NSMutableDictionary);
  v150 = v149;
  if (v163)
  {
    [v149 setObject:v163 forKeyedSubscript:@"_accAltDSID"];
  }

  if (v167)
  {
    [v150 setObject:v167 forKeyedSubscript:@"_accID"];
  }

  if (v168)
  {
    [v150 setObject:v168 forKeyedSubscript:@"_hkID"];
  }

  if (v166)
  {
    [v150 setObject:v166 forKeyedSubscript:@"_hkUID"];
  }

  if (v160)
  {
    [v150 setObject:v160 forKeyedSubscript:@"_stA"];
  }

  if (v162)
  {
    v151 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*v164 listeningPort]);
    [v150 setObject:v151 forKeyedSubscript:@"_lP"];
  }

  if (v165 != v161)
  {
    v152 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v164 statusFlags] & 0x10000010100);
    [v150 setObject:v152 forKeyedSubscript:@"_sf"];
  }

  if (v169)
  {
    idsCorrelationIdentifier3 = [*v164 idsCorrelationIdentifier];
    [v150 setObject:idsCorrelationIdentifier3 forKeyedSubscript:@"_idsCID"];
  }

  if (v159 != v158)
  {
    v154 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*v164 deviceCapabilityFlags]);
    [v150 setObject:v154 forKeyedSubscript:@"_dCapF"];
  }

  allKeys = [v150 allKeys];
  v156 = [allKeys count];

  if (v156)
  {
    v157 = [NSDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:@"failIfAsleep"];
    [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v150 destinationID:@"rapport:rdid:SameHome" options:v157 completion:0];
  }

  [*v164 setChanged:0];
}

- (void)_update
{
  [(RPCompanionLinkDaemon *)self _updateAssertions];
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100020CA0;
    v26[3] = &unk_1001AA970;
    v26[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v26];
    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceUseFindMyLocate:1];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100020CA8;
    v25[3] = &unk_1001AA970;
    v25[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceChangedHandler:v25];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100020D14;
    v24[3] = &unk_1001AA970;
    v24[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPowerUnlimitedChangedHandler:v24];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100020D1C;
    v23[3] = &unk_1001AA970;
    v23[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v23];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100020D30;
    v22[3] = &unk_1001AA970;
    v22[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenLockedChangedHandler:v22];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100020D38;
    v21[3] = &unk_1001AA970;
    v21[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v21];
    if (self->_prefIPEnabled)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100020D40;
      v20[3] = &unk_1001AA970;
      v20[4] = self;
      [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v20];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100020D48;
    v19[3] = &unk_1001AA970;
    v19[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setBluetoothAddressChangedHandler:v19];
    [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:0];
  }

  if (!self->_cbAdvertiser)
  {
    v5 = objc_alloc_init(CBAdvertiser);
    cbAdvertiser = self->_cbAdvertiser;
    self->_cbAdvertiser = v5;

    [(CBAdvertiser *)self->_cbAdvertiser setDispatchQueue:self->_dispatchQueue];
    [(CBAdvertiser *)self->_cbAdvertiser activateWithCompletion:&stru_1001AB0B8];
  }

  v7 = self->_prefServerEnabled && !self->_disabled;
  v8 = +[RPIdentityDaemon sharedIdentityDaemon];
  v9 = [v8 identitiesOfType:13 error:0];

  v10 = +[RPIdentityDaemon sharedIdentityDaemon];
  v11 = [v10 identitiesOfType:15 error:0];

  v12 = +[RPIdentityDaemon sharedIdentityDaemon];
  v13 = [v12 identitiesOfType:12 error:0];

  if (!v7)
  {
    goto LABEL_19;
  }

  if (!self->_prefCommunal)
  {
    v14 = +[RPCloudDaemon sharedCloudDaemon];
    if (([v14 idsIsSignedIn] & 1) != 0 || objc_msgSend(v9, "count") || objc_msgSend(v11, "count") || objc_msgSend(v13, "count"))
    {

      goto LABEL_17;
    }

    v16 = sub_10000329C();

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_19:
    hasCurrentTransaction = [(RPNearFieldDaemon *)self->_nearfieldDaemon hasCurrentTransaction];
    goto LABEL_20;
  }

LABEL_17:
  hasCurrentTransaction = 1;
LABEL_20:
  self->_prefServerShouldRun = hasCurrentTransaction;
  if (!self->_prefClientEnabled && !self->_prefServerEnabled)
  {
    [(RPCompanionLinkDaemon *)self _localDeviceCleanup];
    v17 = 0;
LABEL_26:
    [(RPCompanionLinkDaemon *)self _homeKitEnsureStopped];
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  [(RPCompanionLinkDaemon *)self _localDeviceUpdate];
  if (!self->_prefHomeKitEnabled)
  {
    v17 = 1;
    goto LABEL_26;
  }

  [(RPCompanionLinkDaemon *)self _homeKitEnsureStarted];
  v17 = 1;
LABEL_27:
  if (self->_prefIPEnabled)
  {
    [(RPCompanionLinkDaemon *)self _reachabilityEnsureStarted];
    goto LABEL_30;
  }

LABEL_29:
  [(RPCompanionLinkDaemon *)self _reachabilityEnsureStopped];
LABEL_30:
  if ((v17 & !self->_disabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _bleServerEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _bleServerEnsureStopped];
  }

  if (self->_prefBTPipeEnabled)
  {
    [(RPCompanionLinkDaemon *)self _btPipeEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _btPipeEnsureStopped];
  }

  if (!self->_prefClientEnabled || self->_disabled || self->_homeKitWaiting && !self->_homeKitLTPK)
  {
    [(RPCompanionLinkDaemon *)self _clientEnsureStopped];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientEnsureStarted];
  }

  if (self->_prefServerShouldRun || self->_serverBonjourInfraPairing)
  {
    [(RPCompanionLinkDaemon *)self _serverEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverEnsureStopped];
  }

  if ((v17 & self->_prefHIDEnabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _hidEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _hidEnsureStopped];
  }

  if ((v17 & self->_prefMediaControlEnabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _mediaControlEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _mediaControlEnsureStopped];
  }

  if (self->_prefClientEnabled || self->_prefServerEnabled)
  {
    [(RPCompanionLinkDaemon *)self _miscEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _miscEnsureStopped];
  }

  if ((v17 & self->_prefSiriEnabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _siriEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _siriEnsureStopped];
  }

  [(RPCompanionLinkDaemon *)self _clientSendActivityLevelOverWiFiIfNecessary];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
  if ((v17 & self->_prefIPEnabled & 1) == 0)
  {
    [(CUWiFiManager *)self->_wifiManager invalidate];
    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;
  }
}

- (void)_updateAssertions
{
  selfCopy = self;
  if (!self->_prefClientEnabled)
  {
    prefServerEnabled = self->_prefServerEnabled;
    if (!prefServerEnabled && !self->_prefBTPipeEnabled && !prefServerEnabled)
    {
      goto LABEL_7;
    }
  }

  v5 = +[RPDaemon sharedDaemon];
  if ([v5 sigTermPending])
  {

    goto LABEL_7;
  }

  v6 = +[RPDaemon sharedDaemon];
  languageChangePending = [v6 languageChangePending];

  if (languageChangePending)
  {
LABEL_7:
    if (selfCopy->_osTransaction)
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_10010F97C(self, a2, v2);
        }
      }

      osTransaction = selfCopy->_osTransaction;
      selfCopy->_osTransaction = 0;
    }

    goto LABEL_20;
  }

  if (!selfCopy->_osTransaction)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10010F944(self, a2, v2);
      }
    }

    v9 = os_transaction_create();
    v10 = selfCopy->_osTransaction;
    selfCopy->_osTransaction = v9;

    if (!selfCopy->_osTransaction && dword_1001D3228 <= 90)
    {
      if (dword_1001D3228 != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        sub_10010F960(v11, v12, v13);
      }
    }
  }

LABEL_20:
  if (![(NSMutableDictionary *)selfCopy->_tcpClientConnections count]&& ![(NSMutableDictionary *)selfCopy->_tcpOnDemandClientConnections count]&& ![(NSMutableSet *)selfCopy->_tcpServerConnections count])
  {
    if (![(CUWiFiManager *)selfCopy->_wifiManager wakeOnWirelessEnabled])
    {
      return;
    }

    v18 = 0;
    p_wifiManager = &selfCopy->_wifiManager;
    goto LABEL_28;
  }

  wifiManager = selfCopy->_wifiManager;
  if (!wifiManager)
  {
    v15 = objc_alloc_init(CUWiFiManager);
    v16 = selfCopy->_wifiManager;
    selfCopy->_wifiManager = v15;

    [(CUWiFiManager *)selfCopy->_wifiManager setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUWiFiManager *)selfCopy->_wifiManager setLabel:@"CLink"];
    [(CUWiFiManager *)selfCopy->_wifiManager activateWithCompletion:0];
    wifiManager = selfCopy->_wifiManager;
  }

  if (([(CUWiFiManager *)wifiManager wakeOnWirelessEnabled]& 1) == 0)
  {
    p_wifiManager = &selfCopy->_wifiManager;
    v18 = 1;
LABEL_28:
    v19 = *p_wifiManager;

    [v19 setWakeOnWirelessEnabled:v18];
  }
}

- (BOOL)_shouldSendActivityLevelOverWiFi
{
  v3 = objc_alloc_init(NSMutableString);
  DeviceClass = GestaltGetDeviceClass();
  v5 = DeviceClass == 11;
  if (self->_prefSendActLvlInfra != v5)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112B48();
    }

    self->_prefSendActLvlInfra = v5;
  }

  return DeviceClass == 11;
}

- (BOOL)_serverNearbyActionV2DiscoveryShouldRun
{
  v2 = +[RPCloudDaemon sharedCloudDaemon];
  v4 = [v2 idsIsSignedIn] && ((DeviceClass = GestaltGetDeviceClass(), DeviceClass == 3) || DeviceClass == 100 || DeviceClass == 11) && ((objc_msgSend(v2, "idsHasiPad") & 1) != 0 || (objc_msgSend(v2, "idsHasMac") & 1) != 0 || objc_msgSend(v2, "idsHasRealityDevice"));

  return v4;
}

- (void)_clientSendActivityLevelOverWiFiIfNecessary
{
  if ([(RPCompanionLinkDaemon *)self _shouldSendActivityLevelOverWiFi])
  {
    activityLevel = [(RPCompanionLinkDevice *)self->_localDeviceInfo activityLevel];
    if (activityLevel != self->_lastSentActivityLevelOverWiFi)
    {
      v4 = activityLevel;
      v5 = objc_alloc_init(NSMutableSet);
      v6 = +[RPCloudDaemon sharedCloudDaemon];
      idsDeviceArray = [v6 idsDeviceArray];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10002CFC8;
      v24[3] = &unk_1001AB658;
      v24[4] = self;
      v8 = v5;
      v25 = v8;
      v18 = idsDeviceArray;
      [idsDeviceArray enumerateObjectsUsingBlock:v24];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            v19 = 0;
            v15 = [(RPCompanionLinkDaemon *)self findConnectedDeviceForIdentifier:v14 controlFlags:0x400000 cnx:&v19];
            if (v15 && ([v19 linkType] == 6 || objc_msgSend(v19, "linkType") == 8 || objc_msgSend(v19, "linkType") == 7))
            {
              v16 = +[NSMutableDictionary dictionary];
              v17 = [NSNumber numberWithInt:v4];
              [v16 setObject:v17 forKeyedSubscript:@"_actLvl"];

              [v19 sendEncryptedEventID:@"_systemInfoUpdate" event:v16 options:0 completion:&stru_1001AB678];
            }

            self->_lastSentActivityLevelOverWiFi = v4;

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v11);
      }
    }
  }
}

- (BOOL)_serverBonjourAWDLAdvertiserShouldRun
{
  if (self->_bonjourAWDLAdvertiserForce)
  {
    return 1;
  }

  if ([(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
  {
    return 1;
  }

  if ([(RPCompanionLinkDaemon *)self _haveActiveServerConnectionsOnAWDL])
  {
    return 1;
  }

  actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
  v4 = [actionV2Devices count];

  if (v4)
  {
    return 1;
  }

  if (![(NSMutableDictionary *)self->_bleNeedsCLinkDevices count])
  {
    return 0;
  }

  if (!self->_prefUseTargetAuthTag)
  {
    return 1;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 identityOfSelfAndReturnError:0];

  v9 = v8;
  v10 = +[RPIdentityDaemon sharedIdentityDaemon];
  v11 = [v10 identityOfTemporarySelfAndReturnError:0];

  deviceIRKData = [v9 deviceIRKData];
  if (deviceIRKData)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices allValues];
    v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v32)
    {
      v31 = *v34;
      v28 = v11;
      v29 = v9;
      v27 = deviceIRKData;
      do
      {
        v13 = 0;
        do
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * v13);
          bleDevice = [v14 bleDevice];
          advertisementFields = [bleDevice advertisementFields];
          CFDataGetTypeID();
          v17 = CFDictionaryGetTypedValue();

          if (!v17)
          {
            if (dword_1001D3228 <= 30)
            {
              deviceIRKData = v27;
              if (dword_1001D3228 != -1 || _LogCategory_Initialize())
              {
                sub_100112920(v14);
              }

              goto LABEL_58;
            }

            v5 = 1;
            goto LABEL_64;
          }

          bluetoothAddressData = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];
          v19 = [v9 authTagForData:bluetoothAddressData type:2 error:0];
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            v20 = v14;
            if (objc_opt_respondsToSelector())
            {
              shortDescription = [v20 shortDescription];
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                [v20 descriptionWithLevel:50];
              }

              else
              {
                [v20 description];
              }
              shortDescription = ;
            }

            v22 = shortDescription;

            LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserShouldRun]", 30, "Evaluating target AuthTag <%@> from device (%@) using BLE addr %.6a selfAuthTag <%@>\n", v17, v22, [bluetoothAddressData bytes], v19);
          }

          if (!memcmp([v19 bytes], objc_msgSend(v17, "bytes"), objc_msgSend(v17, "length")))
          {
            deviceIRKData = v27;
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001128CC(v14);
            }

LABEL_58:
            v5 = 1;
            goto LABEL_65;
          }

          advertisingAddressDataNonConnectable = [(CBAdvertiser *)self->_cbAdvertiser advertisingAddressDataNonConnectable];
          if (advertisingAddressDataNonConnectable)
          {
            deviceIRKData2 = [v11 deviceIRKData];

            if (deviceIRKData2)
            {
              v25 = [v11 authTagForData:advertisingAddressDataNonConnectable type:2 error:0];
              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100112850(v14, advertisingAddressDataNonConnectable, v17, v25);
              }

              if (!memcmp([v25 bytes], objc_msgSend(v17, "bytes"), objc_msgSend(v17, "length")))
              {
                v9 = v29;
                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001128CC(v14);
                }

                v5 = 1;
                v11 = v28;
LABEL_64:
                deviceIRKData = v27;
                goto LABEL_65;
              }

              v9 = v29;
              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserShouldRun]", 30, "Skip enabling Bonjour AWDL advertiser as target AuthTag <%@> did not match hash <%@>\n", v17, v19);
              }

              v11 = v28;
            }
          }

          v13 = v13 + 1;
        }

        while (v32 != v13);
        v26 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v5 = 0;
        deviceIRKData = v27;
        v32 = v26;
      }

      while (v26);
    }

    else
    {
      v5 = 0;
    }

LABEL_65:
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112974(v9);
    }

    v5 = 1;
  }

  return v5;
}

- (BOOL)_haveActiveServerConnectionsOnAWDL
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_tcpServerConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) linkType] == 4)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_serverEnsureStarted
{
  _serverBonjourShouldRun = [(RPCompanionLinkDaemon *)self _serverBonjourShouldRun];
  _serverBonjourAWDLShouldRun = [(RPCompanionLinkDaemon *)self _serverBonjourAWDLShouldRun];
  if ((_serverBonjourShouldRun & 1) != 0 || (_serverBonjourAWDLShouldRun & 1) != 0 || [(RPCompanionLinkDaemon *)self _serverTCPHasActiveConnections])
  {
    [(RPCompanionLinkDaemon *)self _serverTCPEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverTCPEnsureStopped];
  }

  [(RPCompanionLinkDaemon *)self _serverBTAddressMonitorEnsureStarted];
  [(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerEnsureStarted];
  if ([(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryEnsureStarted];
    if (!_serverBonjourShouldRun)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryEnsureStopped];
    if (!_serverBonjourShouldRun)
    {
      goto LABEL_13;
    }
  }

  if (!self->_homeKitWaiting || self->_homeKitLTPK)
  {
    [(RPCompanionLinkDaemon *)self _serverBonjourEnsureStarted];
    goto LABEL_14;
  }

LABEL_13:
  [(RPCompanionLinkDaemon *)self _serverBonjourEnsureStopped];
LABEL_14:
  if ([(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserShouldRun])
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserEnsureStarted];
  }

  else
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
  }
}

- (void)_serverBLENeedsCLinkScannerEnsureStarted
{
  if (self->_bleNeedsCLinkScanner)
  {
    _serverBLENeedsCLinkScannerScreenOff = [(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerScreenOff];
    if (_serverBLENeedsCLinkScannerScreenOff != [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner overrideScreenOff])
    {
      bleNeedsCLinkScanner = self->_bleNeedsCLinkScanner;

      [(SFDeviceDiscovery *)bleNeedsCLinkScanner setOverrideScreenOff:_serverBLENeedsCLinkScannerScreenOff];
    }
  }

  else
  {
    bleNeedsCLinkScannerID = self->_bleNeedsCLinkScannerID;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112434(bleNeedsCLinkScannerID);
    }

    v6 = objc_alloc_init(off_1001D3298());
    v7 = self->_bleNeedsCLinkScanner;
    self->_bleNeedsCLinkScanner = v6;

    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDiscoveryFlags:64];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setOverrideScreenOff:[(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerScreenOff]];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setPurpose:@"CLink"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B5C0;
    v14[3] = &unk_1001AB250;
    v15 = bleNeedsCLinkScannerID;
    v14[4] = self;
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDeviceFoundHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B5E0;
    v12[3] = &unk_1001AB250;
    v13 = bleNeedsCLinkScannerID;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDeviceLostHandler:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F89C;
    v10[3] = &unk_1001AB278;
    v11 = bleNeedsCLinkScannerID;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDeviceChangedHandler:v10];
    v8 = self->_bleNeedsCLinkScanner;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002B600;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(SFDeviceDiscovery *)v8 activateWithCompletion:v9];
  }
}

- (BOOL)_serverBLENeedsCLinkScannerScreenOff
{
  if (self->_prefCommunal)
  {
    return 1;
  }

  v3 = +[RPCloudDaemon sharedCloudDaemon];
  v2 = ([v3 idsHasAppleTV] & 1) != 0 || (objc_msgSend(v3, "idsHasHomePod") & 1) != 0 || (objc_msgSend(v3, "idsHasMac") & 1) != 0 || objc_msgSend(v3, "idsHandheldCount") > 2;

  return v2;
}

- (BOOL)_serverTCPHasActiveConnections
{
  if (!self->_prefServerBonjourOpportunitistic)
  {
    return [(NSMutableSet *)self->_tcpServerConnections count:v2]!= 0;
  }

  return [(RPCompanionLinkDaemon *)self _haveActiveServerConnectionsOnAWDL];
}

- (void)_clientEnsureStarted
{
  if (self->_prefBLEClient || self->_bleDiscoveryForce)
  {
    [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryEnsureStopped];
  }

  if (self->_prefIPEnabled)
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DiscoveryShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DiscoveryEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DiscoveryEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserShouldRun])
  {

    [(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserEnsureStarted];
  }

  else
  {

    [(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
  }
}

- (BOOL)_haveActiveClientConnectionsOnAWDL
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_tcpOnDemandClientConnections allValues];
  v4 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 state] == 1 && objc_msgSend(v8, "linkType") == 4)
        {
          inUseProcessesToString = [v8 inUseProcessesToString];
          v11 = [RPAssertionInfo assertionWithType:4 processName:inUseProcessesToString];

          [v11 setHandlerQueue:self->_dispatchQueue];
          [v11 setStartHandler:&stru_1001AB920];
          [v11 setExpiredHandler:&stru_1001AB940];
          bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          if (!bonjourBrowserAWDLAssertions)
          {
            v13 = +[NSMutableSet set];
            v14 = self->_bonjourBrowserAWDLAssertions;
            self->_bonjourBrowserAWDLAssertions = v13;

            bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          }

          [(NSMutableSet *)bonjourBrowserAWDLAssertions addObject:v11];

          v9 = 1;
          goto LABEL_14;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)_clientBonjourAWDLBrowserShouldRun
{
  if (self->_bonjourBrowserAWDLForce)
  {
    return 1;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (([v9 needsCLink] & 1) != 0 || objc_msgSend(v9, "needsNearbyActionV2"))
        {
          client = [v9 client];
          controlFlags = [client controlFlags];

          if ((controlFlags & 0x400000) == 0)
          {
            xpcCnx = [v9 xpcCnx];
            v13 = sub_10001B924([xpcCnx processIdentifier]);
            v14 = [RPAssertionInfo assertionWithType:3 processName:v13];

            [v14 setHandlerQueue:self->_dispatchQueue];
            [v14 setStartHandler:&stru_1001AB4A8];
            [v14 setExpiredHandler:&stru_1001AB4C8];
            bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
            if (!bonjourBrowserAWDLAssertions)
            {
              v16 = +[NSMutableSet set];
              v17 = self->_bonjourBrowserAWDLAssertions;
              self->_bonjourBrowserAWDLAssertions = v16;

              bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
            }

            [(NSMutableSet *)bonjourBrowserAWDLAssertions addObject:v14];

            v6 = 1;
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(RPCompanionLinkDaemon *)self _haveActiveClientConnectionsOnAWDL];
}

- (BOOL)_serverNearbyInfoV2DiscoveryShouldRun
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[RPIdentityDaemon sharedIdentityDaemon];
    v4 = [v3 identitiesOfType:15 error:0];

    if ([v4 count] && ((DeviceClass = GestaltGetDeviceClass(), DeviceClass == 1) || DeviceClass == 100 || DeviceClass == 3))
    {
      v6 = (BYTE5(self->_bleDiscoveryControlFlags) >> 5) & 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun
{
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000241F0;
  v25[3] = &unk_1001AB3C8;
  v25[4] = self;
  v3 = objc_retainBlock(v25);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 needsNearbyActionV2])
        {
          netCnx = [v10 netCnx];
          state = [netCnx state];

          if (state != 1)
          {
            bonjourDevice = [v10 bonjourDevice];

            if (!bonjourDevice)
            {
              xpcCnx = [v10 xpcCnx];
              v15 = sub_10001B924([xpcCnx processIdentifier]);
              v16 = [RPAssertionInfo assertionWithType:2 processName:v15];

              [v16 setHandlerQueue:self->_dispatchQueue];
              [v16 setStartHandler:v3];
              [v16 setExpiredHandler:&stru_1001AB3E8];
              bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
              if (!bleNearbyActionV2AdvertiserAssertions)
              {
                v18 = +[NSMutableSet set];
                v19 = self->_bleNearbyActionV2AdvertiserAssertions;
                self->_bleNearbyActionV2AdvertiserAssertions = v18;

                bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
              }

              [(NSMutableSet *)bleNearbyActionV2AdvertiserAssertions addObject:v16];

              v7 = 1;
            }
          }
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_clientBLENeedsCLinkAdvertiserShouldRun
{
  selfCopy = self;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    v26 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 needsCLink])
        {
          netCnx = [v10 netCnx];
          state = [netCnx state];

          if (state != 1)
          {
            if (GestaltGetDeviceClass() == 1)
            {
              client = [v10 client];
              serviceType = [client serviceType];
              if ([serviceType isEqualToString:@"com.apple.ApplicationService.chrono"])
              {
                v6 = 1;
              }

              else
              {
                client2 = [v10 client];
                v16 = selfCopy;
                v17 = v3;
                v18 = ([client2 controlFlags] >> 51) & 1;

                v6 |= v18;
                v3 = v17;
                selfCopy = v16;
                v8 = v26;
              }
            }

            xpcCnx = [v10 xpcCnx];
            v20 = sub_10001B924([xpcCnx processIdentifier]);
            v21 = [RPAssertionInfo assertionWithType:1 processName:v20];

            [v21 setHandlerQueue:selfCopy->_dispatchQueue];
            [v21 setStartHandler:&stru_1001AB380];
            [v21 setExpiredHandler:&stru_1001AB3A0];
            bleNeedsCLinkAdvertiserAssertions = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
            if (!bleNeedsCLinkAdvertiserAssertions)
            {
              v23 = +[NSMutableSet set];
              v24 = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
              selfCopy->_bleNeedsCLinkAdvertiserAssertions = v23;

              bleNeedsCLinkAdvertiserAssertions = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
            }

            [(NSMutableSet *)bleNeedsCLinkAdvertiserAssertions addObject:v21];

            v7 = 1;
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  selfCopy->_bleNeedsCLinkAdvertiserScreenOff = v6 & 1;
  return v7 & 1;
}

- (void)_clientBLEActionDiscoveryEnsureStarted
{
  bleActionDiscovery = self->_bleActionDiscovery;
  v4 = bleActionDiscovery;
  if (!bleActionDiscovery)
  {
    bleActionDiscoveryID = self->_bleActionDiscoveryID;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FB80(bleActionDiscoveryID);
    }

    v6 = objc_alloc_init(off_1001D3298());
    v7 = self->_bleActionDiscovery;
    self->_bleActionDiscovery = v6;

    [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setPurpose:@"CLink"];
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setRssiThreshold:-60];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002183C;
    v17[3] = &unk_1001AB250;
    v17[4] = self;
    v18 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceFoundHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003AD0;
    v15[3] = &unk_1001AB250;
    v15[4] = self;
    v16 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceLostHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C094;
    v13[3] = &unk_1001AB278;
    v13[4] = self;
    v14 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceChangedHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100021864;
    v11[3] = &unk_1001AB2A0;
    v11[4] = self;
    v12 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setInterruptionHandler:v11];
    v4 = self->_bleActionDiscovery;
  }

  if ((self->_bleDiscoveryControlFlags & 0x382000103C00) != 0)
  {
    v8 = 16;
  }

  else
  {
    v8 = 48;
  }

  if (v8 != [(SFDeviceDiscovery *)v4 discoveryFlags])
  {
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDiscoveryFlags:v8];
  }

  if (!bleActionDiscovery)
  {
    v9 = self->_bleActionDiscovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000218FC;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(SFDeviceDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_clientBLEDiscoveryEnsureStarted
{
  if (([(CUSystemMonitor *)self->_systemMonitor screenOn]& 1) == 0 && self->_bleDiscoveryScreenOff && [(NSSet *)self->_screenOffDeviceFilter count])
  {
    screenOffDeviceFilter = self->_screenOffDeviceFilter;
  }

  else
  {
    screenOffDeviceFilter = 0;
  }

  v4 = screenOffDeviceFilter;
  p_bleDiscovery = &self->_bleDiscovery;
  bleDiscovery = self->_bleDiscovery;
  if (!bleDiscovery)
  {
    goto LABEL_44;
  }

  changeFlags = [(SFDeviceDiscovery *)bleDiscovery changeFlags];
  bleProximityDetection = self->_bleProximityDetection;
  if (bleProximityDetection != (changeFlags & 2) >> 1)
  {
    if (dword_1001D3228 <= 30)
    {
      v9 = changeFlags;
      if (dword_1001D3228 != -1 || (v12 = _LogCategory_Initialize(), LOBYTE(bleProximityDetection) = self->_bleProximityDetection, v12))
      {
        if ((v9 & 2) != 0)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        if (bleProximityDetection)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryEnsureStarted]", 30, "Proximity state already enabled %@ needs to be enabled %@\n", v10, v11);
        LOBYTE(bleProximityDetection) = self->_bleProximityDetection;
      }
    }

    v13 = *p_bleDiscovery;
    if (bleProximityDetection)
    {
      v14 = [*p_bleDiscovery changeFlags] | 2;
    }

    else
    {
      v14 = [*p_bleDiscovery changeFlags] & 0xFFFFFFFD;
    }

    [v13 setChangeFlags:v14];
  }

  if ([(SFDeviceDiscovery *)self->_bleDiscovery rssiThreshold]!= self->_bleRSSIThreshold)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FC60(&self->_bleDiscovery);
    }

    [*p_bleDiscovery setRssiThreshold:self->_bleRSSIThreshold];
  }

  if (![(NSSet *)v4 count])
  {
    deviceFilter = [*p_bleDiscovery deviceFilter];
    v16 = [deviceFilter count];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  deviceFilter2 = [*p_bleDiscovery deviceFilter];
  v18 = v4;
  v19 = deviceFilter2;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_34;
  }

  if ((v18 != 0) != (v19 == 0))
  {
    v21 = [(NSSet *)v18 isEqual:v19];

    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_34:
    v22 = 10;
    v23 = 1;
    goto LABEL_37;
  }

LABEL_36:
  v23 = 0;
  v22 = 30;
LABEL_37:
  if (v22 < dword_1001D3228 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
  {
    if (v23)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  sub_10010FCB4(v23, &self->_bleDiscovery, v22, v18);
  if ((v23 & 1) == 0)
  {
LABEL_41:
    [*p_bleDiscovery setDeviceFilter:v18];
  }

LABEL_42:
  if (*p_bleDiscovery)
  {
    v24 = 0;
    goto LABEL_54;
  }

LABEL_44:
  bleDiscoveryID = self->_bleDiscoveryID;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010FD48(bleDiscoveryID);
  }

  if (self->_bleProximityDetection)
  {
    v26 = 3;
  }

  else
  {
    v26 = 1;
  }

  v27 = objc_alloc_init(off_1001D3298());
  v28 = self->_bleDiscovery;
  self->_bleDiscovery = v27;

  [(SFDeviceDiscovery *)self->_bleDiscovery setChangeFlags:v26 | 0x20u];
  v24 = 1;
  [(SFDeviceDiscovery *)self->_bleDiscovery setRssiChangeDetection:1];
  [(SFDeviceDiscovery *)self->_bleDiscovery setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)self->_bleDiscovery setPurpose:@"CLink"];
  if (self->_bleRSSIThreshold)
  {
    bleRSSIThreshold = self->_bleRSSIThreshold;
  }

  else
  {
    bleRSSIThreshold = -60;
  }

  [(SFDeviceDiscovery *)self->_bleDiscovery setRssiThreshold:bleRSSIThreshold];
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFilter:v4];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10000B298;
  v44[3] = &unk_1001AB250;
  v44[4] = self;
  v45 = bleDiscoveryID;
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFoundHandler:v44];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100021B6C;
  v42[3] = &unk_1001AB250;
  v42[4] = self;
  v43 = bleDiscoveryID;
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceLostHandler:v42];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000031C4;
  v38[3] = &unk_1001AB2F0;
  v38[4] = self;
  v39 = bleDiscoveryID;
  v40 = v26;
  v41 = 32;
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceChangedHandler:v38];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100021B98;
  v36[3] = &unk_1001AB2A0;
  v36[4] = self;
  v37 = bleDiscoveryID;
  [(SFDeviceDiscovery *)self->_bleDiscovery setInterruptionHandler:v36];
LABEL_54:
  if ((self->_bleDiscoveryControlFlags & 0x380000103C00) != 0)
  {
    v30 = 1;
  }

  else
  {
    _clientShouldFindNonSameAccountDevices = [(RPCompanionLinkDaemon *)self _clientShouldFindNonSameAccountDevices];
    if (v4)
    {
      v32 = 1;
    }

    else
    {
      v32 = _clientShouldFindNonSameAccountDevices;
    }

    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v30 = 33;
    }
  }

  if (v30 != [*p_bleDiscovery discoveryFlags])
  {
    [*p_bleDiscovery setDiscoveryFlags:v30];
  }

  if (self->_bleDiscoveryScreenOff != [(SFDeviceDiscovery *)self->_bleDiscovery overrideScreenOff])
  {
    [*p_bleDiscovery setOverrideScreenOff:?];
  }

  if ([(SFDeviceDiscovery *)self->_bleDiscovery overrideScreenOffRescanInterval]!= self->_bleDiscoveryScreenOffRescanInterval)
  {
    [*p_bleDiscovery setOverrideScreenOffRescanInterval:?];
  }

  if (([(CUSystemMonitor *)self->_systemMonitor screenOn]& 1) != 0)
  {
    bleDiscoveryScreenOffScanRate = 0;
  }

  else
  {
    bleDiscoveryScreenOffScanRate = self->_bleDiscoveryScreenOffScanRate;
  }

  [*p_bleDiscovery setScanRate:bleDiscoveryScreenOffScanRate];
  if (v24)
  {
    v34 = self->_bleDiscovery;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100021C30;
    v35[3] = &unk_1001AB2C8;
    v35[4] = self;
    [(SFDeviceDiscovery *)v34 activateWithCompletion:v35];
  }
}

- (void)_btPipeEnsureStarted
{
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    if (!self->_btPipe)
    {
      v6 = objc_alloc_init(CUBluetoothScalablePipe);
      btPipe = self->_btPipe;
      self->_btPipe = v6;

      [(CUBluetoothScalablePipe *)self->_btPipe setIdentifier:@"CLink"];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10002ED54;
      v16[3] = &unk_1001AA970;
      v16[4] = self;
      [(CUBluetoothScalablePipe *)self->_btPipe setPeerHostStateChangedHandler:v16];
      [(RPCompanionLinkDaemon *)self _btPipeSetup:self->_btPipe withPriority:2];
    }

    if (!self->_btPipeHighPriority)
    {
      v8 = objc_alloc_init(CUBluetoothScalablePipe);
      btPipeHighPriority = self->_btPipeHighPriority;
      self->_btPipeHighPriority = v8;

      [(CUBluetoothScalablePipe *)self->_btPipeHighPriority setIdentifier:@"CLinkHP"];
      [(RPCompanionLinkDaemon *)self _btPipeSetup:self->_btPipeHighPriority withPriority:3];
    }

    if (GestaltGetDeviceClass() == 1)
    {
      v10 = +[RPCloudDaemon sharedCloudDaemon];
      if (([v10 idsHasWatch] & 1) == 0)
      {
LABEL_13:

        return;
      }

      v11 = _os_feature_enabled_impl();

      if (v11)
      {
        v17 = @"statusFlags";
        v18 = &off_1001B7D38;
        v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v12 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:@"_ctxtColl"];

        if (!v12)
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10002EE14;
          v15[3] = &unk_1001AB798;
          v15[4] = self;
          [(RPCompanionLinkDaemon *)self registerRequestID:@"_ctxtColl" options:v10 handler:v15];
        }

        v13 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:@"_ctxtCollProxy"];

        if (!v13)
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10002EE20;
          v14[3] = &unk_1001AB798;
          v14[4] = self;
          [(RPCompanionLinkDaemon *)self registerRequestID:@"_ctxtCollProxy" options:v10 handler:v14];
        }

        goto LABEL_13;
      }
    }
  }

  else if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_100112F98(firstUnlocked, v4, v5);
    }
  }
}

- (void)_homeKitUpdateUserIdentifiers
{
  [(RPHomeKitManager *)self->_rpHomeKitManager resetHomeKitUserIdentifiers];
  homeKitUserIdentifiers = [(RPHomeKitManager *)self->_rpHomeKitManager homeKitUserIdentifiers];
  homeKitUserIdentifiers2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo homeKitUserIdentifiers];
  v5 = [homeKitUserIdentifiers2 count];
  v6 = [homeKitUserIdentifiers count];

  if (v5 == v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = homeKitUserIdentifiers;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          homeKitUserIdentifiers3 = [(RPCompanionLinkDevice *)self->_localDeviceInfo homeKitUserIdentifiers];
          LODWORD(v12) = [homeKitUserIdentifiers3 containsObject:v12];

          if (!v12)
          {

            goto LABEL_12;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setHomeKitUserIdentifiers:0];
    [(RPCompanionLinkDaemon *)self _localDeviceUpdate];
  }
}

- (void)_homeKitEnsureStarted
{
  selfCopy = self;
  if (!self->_homeKitManager)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113DF4(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(CUHomeKitManager);
    homeKitManager = selfCopy->_homeKitManager;
    selfCopy->_homeKitManager = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.rapportd.CUHomeKitManager", v6);
    [(CUHomeKitManager *)selfCopy->_homeKitManager setDispatchQueue:v7];

    if (selfCopy->_prefCommunal)
    {
      v8 = 842;
    }

    else
    {
      v8 = 1600;
    }

    [(CUHomeKitManager *)selfCopy->_homeKitManager setFlags:v8];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100035E44;
    v20[3] = &unk_1001AA970;
    v20[4] = selfCopy;
    [(CUHomeKitManager *)selfCopy->_homeKitManager setResolvableAccessoriesChangedHandler:v20];
    if ((v8 & 2) != 0)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100035F40;
      v19[3] = &unk_1001AA970;
      v19[4] = selfCopy;
      [(CUHomeKitManager *)selfCopy->_homeKitManager setSelfAccessoryMediaAccessUpdatedHandler:v19];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100036014;
      v18[3] = &unk_1001AA970;
      v18[4] = selfCopy;
      [(CUHomeKitManager *)selfCopy->_homeKitManager setSelfAccessoryMediaSystemUpdatedHandler:v18];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100036134;
      v17[3] = &unk_1001AA970;
      v17[4] = selfCopy;
      [(CUHomeKitManager *)selfCopy->_homeKitManager setSelfAccessoryUpdatedHandler:v17];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10003623C;
      v16[3] = &unk_1001AA970;
      v16[4] = selfCopy;
      [(CUHomeKitManager *)selfCopy->_homeKitManager setSelfAccessorySiriAccessUpdatedHandler:v16];
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000362F0;
    v15[3] = &unk_1001AB810;
    v15[4] = selfCopy;
    [(CUHomeKitManager *)selfCopy->_homeKitManager setStateChangedHandler:v15];
    [(CUHomeKitManager *)selfCopy->_homeKitManager activate];
  }

  if (!selfCopy->_rpHomeKitManager)
  {
    v9 = [[RPHomeKitManager alloc] initWithQueue:selfCopy->_dispatchQueue];
    rpHomeKitManager = selfCopy->_rpHomeKitManager;
    selfCopy->_rpHomeKitManager = v9;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003641C;
    v14[3] = &unk_1001AA970;
    v14[4] = selfCopy;
    [(RPHomeKitManager *)selfCopy->_rpHomeKitManager setPersonalRequestsStateChangedHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100036424;
    v13[3] = &unk_1001ABB70;
    v13[4] = selfCopy;
    [(RPHomeKitManager *)selfCopy->_rpHomeKitManager setRoomUpdatedHandler:v13];
  }

  homeKitManagerState = selfCopy->_homeKitManagerState;
  if (homeKitManagerState == 1)
  {
    [(RPCompanionLinkDaemon *)selfCopy _homeKitGetPairingIdentities];
  }

  if (!selfCopy->_receiveHomeKitPairingUpdated)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:selfCopy selector:"_homeKitPairingUpdated:" name:@"HMAccessoryPairingIdentityUpdatedNotification" object:0];
    selfCopy->_receiveHomeKitPairingUpdated = 1;
  }

  if (homeKitManagerState == 1)
  {
    [(RPCompanionLinkDaemon *)selfCopy _homeKitUpdateUserIdentifiers];
  }
}

- (void)_homeKitGetPairingIdentities
{
  if (!self->_homeKitGettingIdentity)
  {
    selfCopy = self;
    if (!self->_homeKitLTPK || self->_homeKitForceGetIdentity)
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100113E68(self, a2, v2);
        }
      }

      *&selfCopy->_homeKitForceGetIdentity = 256;
      homeKitManager = selfCopy->_homeKitManager;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100036620;
      v5[3] = &unk_1001ABB98;
      v5[4] = selfCopy;
      [(CUHomeKitManager *)homeKitManager getPairingIdentityWithOptions:34 completion:v5];
    }
  }
}

- (void)_reachabilityEnsureStarted
{
  if (!self->_netLinkManager)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113D28(self, a2, v2);
      }
    }

    v5 = objc_alloc_init(CUNetLinkManager);
    netLinkManager = selfCopy->_netLinkManager;
    selfCopy->_netLinkManager = v5;

    [(CUNetLinkManager *)selfCopy->_netLinkManager setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUNetLinkManager *)selfCopy->_netLinkManager setLabel:@"CLink"];
    v7 = selfCopy->_netLinkManager;

    [(CUNetLinkManager *)v7 activate];
  }
}

- (void)_bleServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112E34(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CUBLEServer);
    bleServer = selfCopy->_bleServer;
    selfCopy->_bleServer = v8;

    [(CUBLEServer *)selfCopy->_bleServer setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUBLEServer *)selfCopy->_bleServer setLabel:@"CLink"];
    [(CUBLEServer *)selfCopy->_bleServer setListenPSM:129];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002E2E8;
    v12[3] = &unk_1001AB770;
    v12[4] = selfCopy;
    [(CUBLEServer *)selfCopy->_bleServer setConnectionStartedHandler:v12];
    v10 = selfCopy->_bleServer;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002E2F4;
    v11[3] = &unk_1001AB2C8;
    v11[4] = selfCopy;
    [(CUBLEServer *)v10 activateWithCompletion:v11];
  }
}

- (BOOL)_clientBLEActionDiscoveryShouldRun
{
  bleDiscoveryControlFlags = self->_bleDiscoveryControlFlags;
  v3 = (bleDiscoveryControlFlags & &_mh_execute_header) != 0 || (bleDiscoveryControlFlags & 0x2000000000) != 0;
  return bleDiscoveryControlFlags && v3;
}

- (void)_clientBonjourEnsureStarted
{
  if (!self->_bonjourBrowser)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (self->_btAdvAddrData || !self->_prefServerShouldRun)
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100110A38(self, a2, v2);
        }
      }

      v8 = objc_alloc_init(CUBonjourBrowser);
      bonjourBrowser = selfCopy->_bonjourBrowser;
      selfCopy->_bonjourBrowser = v8;

      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setChangeFlags:0xFFFFFFFFLL];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setControlFlags:1];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDispatchQueue:selfCopy->_dispatchQueue];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDomain:@"local."];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setLabel:@"CLink"];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setServiceType:@"_companion-link._tcp"];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100024D28;
      v12[3] = &unk_1001AB438;
      v12[4] = selfCopy;
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDeviceFoundHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100024D44;
      v11[3] = &unk_1001AB438;
      v11[4] = selfCopy;
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDeviceLostHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100024D5C;
      v10[3] = &unk_1001AB460;
      v10[4] = selfCopy;
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDeviceChangedHandler:v10];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser activate];
    }

    else if (dword_1001D3228 <= 20)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100110A54(self, a2, v2);
      }
    }
  }
}

- (void)_duetSyncEnsureStarted
{
  if (!self->_duetSyncClient)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10011366C(self, a2, v2);
      }
    }

    v5 = objc_alloc_init(off_1001D32A8());
    duetSyncClient = selfCopy->_duetSyncClient;
    selfCopy->_duetSyncClient = v5;

    [(SFClient *)selfCopy->_duetSyncClient setDispatchQueue:selfCopy->_dispatchQueue];
    v7 = selfCopy->_duetSyncClient;

    [(SFClient *)v7 activateAssertionWithIdentifier:@"com.apple.sharing.DuetSync"];
  }
}

- (void)_clientBLENeedsCLinkAdvertiserEnsureStopped
{
  if (self->_bleNeedsCLinkAdvertiser)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100110958(self, a2, v2);
      }
    }

    [(RPCompanionLinkDaemon *)selfCopy _clientPurgeUnauthAWDLDevices];
    [(SFService *)selfCopy->_bleNeedsCLinkAdvertiser invalidate];
    bleNeedsCLinkAdvertiser = selfCopy->_bleNeedsCLinkAdvertiser;
    selfCopy->_bleNeedsCLinkAdvertiser = 0;

    bleNeedsCLinkAdvertiserAssertions = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
    if (bleNeedsCLinkAdvertiserAssertions)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = bleNeedsCLinkAdvertiserAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)selfCopy->_bleNeedsCLinkAdvertiserAssertions removeAllObjects];
      v13 = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
      selfCopy->_bleNeedsCLinkAdvertiserAssertions = 0;
    }

    bleNeedsCLinkDevice = selfCopy->_bleNeedsCLinkDevice;
    selfCopy->_bleNeedsCLinkDevice = 0;

    [(RPCompanionLinkDaemon *)selfCopy _clientSendNeedsAWDLOverWiFi:0];
  }
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (bleNearbyActionV2Advertiser)
  {
    [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser invalidate];
    v4 = self->_bleNearbyActionV2Advertiser;
    self->_bleNearbyActionV2Advertiser = 0;

    bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
    if (bleNearbyActionV2AdvertiserAssertions)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = bleNearbyActionV2AdvertiserAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)self->_bleNearbyActionV2AdvertiserAssertions removeAllObjects];
      v13 = self->_bleNearbyActionV2AdvertiserAssertions;
      self->_bleNearbyActionV2AdvertiserAssertions = 0;
    }

    bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
    self->_bleNearbyActionV2Device = 0;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001109C4();
    }

    [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:0, v15];
  }
}

- (void)_serverNearbyInfoV2DiscoveryEnsureStopped
{
  if (self->_bleNearbyInfoV2Discovery)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112418(self, a2, v2);
      }
    }

    [(RPNearbyInfoV2Discovery *)selfCopy->_bleNearbyInfoV2Discovery invalidate];
    bleNearbyInfoV2Discovery = selfCopy->_bleNearbyInfoV2Discovery;
    selfCopy->_bleNearbyInfoV2Discovery = 0;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_nearbyInfoV2Devices allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = [(NSMutableDictionary *)selfCopy->_nearbyInfoV2Devices objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
          v11 = v10;
          if (v10)
          {
            cbDevice = [v10 cbDevice];
            idsDeviceIdentifier = [v11 idsDeviceIdentifier];
            [(RPCompanionLinkDaemon *)selfCopy _serverNearbyInfoV2DeviceLost:cbDevice idsIdentifier:idsDeviceIdentifier force:1 deviceFlags:4];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStopped
{
  if (self->_bonjourBrowserAWDL)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001115D0(self, a2, v2);
      }
    }

    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL invalidate];
    bonjourBrowserAWDL = selfCopy->_bonjourBrowserAWDL;
    selfCopy->_bonjourBrowserAWDL = 0;

    bonjourBrowserAWDLAssertions = selfCopy->_bonjourBrowserAWDLAssertions;
    if (bonjourBrowserAWDLAssertions)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = bonjourBrowserAWDLAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)selfCopy->_bonjourBrowserAWDLAssertions removeAllObjects];
      v13 = selfCopy->_bonjourBrowserAWDLAssertions;
      selfCopy->_bonjourBrowserAWDLAssertions = 0;
    }

    [(NSMutableDictionary *)selfCopy->_bonjourAWDLDevices removeAllObjects];
    bonjourAWDLDevices = selfCopy->_bonjourAWDLDevices;
    selfCopy->_bonjourAWDLDevices = 0;

    [(NSMutableDictionary *)selfCopy->_authenticatedAWDLPairingModeDevices removeAllObjects];
    authenticatedAWDLPairingModeDevices = selfCopy->_authenticatedAWDLPairingModeDevices;
    selfCopy->_authenticatedAWDLPairingModeDevices = 0;

    if (!selfCopy->_needsAWDLTransaction && !selfCopy->_bonjourAWDLAdvertiser)
    {
      v16 = +[RPWiFiP2PTransaction sharedInstance];
      [v16 invalidateForClient:@"Ensemble"];
    }
  }
}

- (void)_serverTCPEnsureStopped
{
  if (self->_tcpServer)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112D20(self, a2, v2);
      }
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = selfCopy->_tcpServerConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) invalidate];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(NSMutableSet *)selfCopy->_tcpServerConnections removeAllObjects];
    [(CUTCPServer *)selfCopy->_tcpServer invalidate];
    tcpServer = selfCopy->_tcpServer;
    selfCopy->_tcpServer = 0;
  }
}

- (void)_serverBTAddressMonitorEnsureStarted
{
  if (!self->_btAdvAddrMonitor)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112BE4(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CUSystemMonitor);
    btAdvAddrMonitor = selfCopy->_btAdvAddrMonitor;
    selfCopy->_btAdvAddrMonitor = v8;

    [(CUSystemMonitor *)selfCopy->_btAdvAddrMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002D0C4;
    v12[3] = &unk_1001AA970;
    v12[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_btAdvAddrMonitor setRotatingIdentifierChangedHandler:v12];
    v10 = selfCopy->_btAdvAddrMonitor;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002D0CC;
    v11[3] = &unk_1001AA970;
    v11[4] = selfCopy;
    [(CUSystemMonitor *)v10 activateWithCompletion:v11];
  }
}

- (void)_serverNearbyActionV2DiscoveryEnsureStopped
{
  bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
  if (bleNearbyActionV2Discovery)
  {
    [(RPNearbyActionV2Discovery *)bleNearbyActionV2Discovery invalidate];
    v4 = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = 0;
  }
}

- (void)_serverBonjourEnsureStopped
{
  if (self->_bonjourAdvertiser)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001127F4(self, a2, v2);
      }
    }

    [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser invalidate];
    bonjourAdvertiser = selfCopy->_bonjourAdvertiser;
    selfCopy->_bonjourAdvertiser = 0;
  }
}

- (void)_serverBonjourAWDLAdvertiserEnsureStopped
{
  bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
  if (bonjourAWDLAdvertiser)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser, v5))
      {
        v4 = CUDescriptionWithLevel();
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserEnsureStopped]", 30, "Bonjour AWDL advertiser stop: %@\n", v4);

        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
      }
    }

    [(CUBonjourAdvertiser *)bonjourAWDLAdvertiser invalidate];
    if (!self->_bonjourBrowserAWDL)
    {
      v6 = +[RPWiFiP2PTransaction sharedInstance];
      [v6 invalidateForClient:@"Ensemble"];
    }

    v7 = self->_bonjourAWDLAdvertiser;
    self->_bonjourAWDLAdvertiser = 0;

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }
}

- (void)_hidEnsureStopped
{
  if (self->_hidDaemon)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113740(self, a2, v2);
      }
    }

    [(RPHIDDaemon *)selfCopy->_hidDaemon invalidate];
    hidDaemon = selfCopy->_hidDaemon;
    selfCopy->_hidDaemon = 0;
  }
}

- (void)_mediaControlEnsureStopped
{
  if (self->_mediaControlDaemon)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113B04(self, a2, v2);
      }
    }

    [(RPMediaControlDaemon *)selfCopy->_mediaControlDaemon invalidate];
    mediaControlDaemon = selfCopy->_mediaControlDaemon;
    selfCopy->_mediaControlDaemon = 0;
  }
}

- (void)_miscEnsureStarted
{
  if (!self->_miscStarted)
  {
    v11 = @"statusFlags";
    v12 = &off_1001B7D38;
    v3 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113BD8();
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034100;
    v8[3] = &unk_1001AB798;
    v8[4] = self;
    [(RPCompanionLinkDaemon *)self registerRequestID:@"_launchApp" options:v3 handler:v8];
    if (self->_prefCommunal)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10003410C;
      v7[3] = &unk_1001AB798;
      v7[4] = self;
      [(RPCompanionLinkDaemon *)self registerRequestID:@"_speak" options:v3 handler:v7];
    }

    v9 = @"statusFlags";
    v10 = &off_1001B7D50;
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100034118;
    v6[3] = &unk_1001ABA08;
    v6[4] = self;
    [(RPCompanionLinkDaemon *)self _registerConnectionRequestID:@"_sessionStart" options:v4 handler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100034128;
    v5[3] = &unk_1001ABA08;
    v5[4] = self;
    [(RPCompanionLinkDaemon *)self _registerConnectionRequestID:@"_sessionStop" options:v4 handler:v5];
    self->_miscStarted = 1;
  }
}

- (void)_siriEnsureStopped
{
  if (self->_siriDaemon)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113DBC(self, a2, v2);
      }
    }

    [(RPSiriDaemon *)selfCopy->_siriDaemon invalidate];
    siriDaemon = selfCopy->_siriDaemon;
    selfCopy->_siriDaemon = 0;
  }
}

- (BOOL)_serverBonjourShouldRun
{
  if (self->_prefServerBonjourAlways)
  {
    return 1;
  }

  return self->_serverBonjourInfraPairing || self->_prefServerBonjourOpportunitistic && (([(CUSystemMonitor *)self->_systemMonitor powerUnlimited]& 1) != 0 || ![(CUSystemMonitor *)self->_systemMonitor screenLocked]);
}

- (BOOL)_clientShouldFindNonSameAccountDevices
{
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 1)
  {
LABEL_4:
    if (self->_inDiscoverySession)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (DeviceClass != 4)
  {
    if (DeviceClass != 3)
    {
      return 0;
    }

    goto LABEL_4;
  }

LABEL_5:
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 identitiesOfType:12 error:0];

  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    v8 = [v7 identitiesOfType:13 error:0];

    v6 = [v8 count] != 0;
  }

  return v6;
}

- (void)_reportXPCMatchingDiscoveryCLink
{
  v3 = +[NSMutableArray array];
  allValues = [(NSMutableDictionary *)self->_activeDevices allValues];
  [v3 addObjectsFromArray:allValues];

  allValues2 = [(NSMutableDictionary *)self->_bleDevices allValues];
  [v3 addObjectsFromArray:allValues2];

  v6 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    selfCopy = self;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        statusFlags = [v12 statusFlags];
        model = [v12 model];
        if (model)
        {
          v15 = GestaltProductTypeStringToDeviceClass();
          if (v15)
          {
            v16 = [NSNumber numberWithInt:v15];
            [v6 addObject:v16];
          }
        }

        v9 += (statusFlags >> 19) & 1;
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
    LOBYTE(v8) = v9 > 0;
    self = selfCopy;
  }

  xpcMatchingMap = self->_xpcMatchingMap;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000B62C;
  v20[3] = &unk_1001AB050;
  v22 = v8;
  v21 = v6;
  v18 = v6;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v20];
}

- (void)_serverEnsureStopped
{
  [(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverBonjourEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverBTAddressMonitorEnsureStopped];

  [(RPCompanionLinkDaemon *)self _serverTCPEnsureStopped];
}

- (void)_serverBLENeedsCLinkScannerEnsureStopped
{
  if (self->_bleNeedsCLinkScanner)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001124D0(self);
    }

    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner invalidate];
    bleNeedsCLinkScanner = self->_bleNeedsCLinkScanner;
    self->_bleNeedsCLinkScanner = 0;

    ++self->_bleNeedsCLinkScannerID;
    [(NSMutableDictionary *)self->_bleNeedsCLinkDevices removeAllObjects];
    pendingLostNeedsCLinkDevicesTimer = self->_pendingLostNeedsCLinkDevicesTimer;
    if (pendingLostNeedsCLinkDevicesTimer)
    {
      dispatch_source_cancel(pendingLostNeedsCLinkDevicesTimer);
      v5 = self->_pendingLostNeedsCLinkDevicesTimer;
      self->_pendingLostNeedsCLinkDevicesTimer = 0;
    }
  }
}

- (void)_serverBTAddressMonitorEnsureStopped
{
  if (self->_btAdvAddrMonitor)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112C00(self, a2, v2);
      }
    }

    [(CUSystemMonitor *)selfCopy->_btAdvAddrMonitor invalidate];
    btAdvAddrMonitor = selfCopy->_btAdvAddrMonitor;
    selfCopy->_btAdvAddrMonitor = 0;
  }
}

- (void)_clientBonjourReevaluateUnauthDevices
{
  v3 = [(NSMutableDictionary *)self->_unauthDevices count];
  if (v3)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100111558(v3, v4, v5);
      }
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_unauthDevices allValues];
  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        bonjourDevice = [*(*(&v13 + 1) + 8 * v10) bonjourDevice];
        if (bonjourDevice && [(RPCompanionLinkDaemon *)self _clientBonjourFoundDevice:bonjourDevice reevaluate:1])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100111574(bonjourDevice);
          }

          [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:bonjourDevice];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v12 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = v12;
    }

    while (v12);
  }
}

+ (id)sharedCompanionLinkDaemon
{
  if (qword_1001D6040 != -1)
  {
    sub_10000F8E0();
  }

  v3 = qword_1001D6038;

  return v3;
}

- (void)_startApplicationServiceMonitorIfNecessary
{
  if (self->_applicationServiceMonitorStarted)
  {
    v9 = v3;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113DD8(self, a2, v2);
      }
    }

    v8 = [_TtC8rapportd27RPApplicationServiceMonitor shared:v4];
    [v8 invalidate];

    selfCopy->_applicationServiceMonitorStarted = 0;
  }
}

- (RPCompanionLinkDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPCompanionLinkDaemon;
  v2 = [(RPCompanionLinkDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_coreDeviceChangedNotifier = -1;
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_needsPrimaryAppleIDUpdate = 1;
    [(RPCompanionLinkDaemon *)v3 _createDestinationIdentifierMaps];
    RandomBytes();
    RandomBytes();
    v4 = v3;
  }

  return v3;
}

- (void)_createDestinationIdentifierMaps
{
  v9[0] = @"rapport:rdid:ModelAppleTV";
  v9[1] = @"rapport:rdid:ModelAppleTV";
  v10[0] = &stru_1001AACF8;
  v10[1] = &stru_1001AAD18;
  v9[2] = @"rapport:rdid:ModelAppleTV";
  v9[3] = @"rapport:rdid:ModelAppleTV";
  v10[2] = &stru_1001AAD38;
  v10[3] = &stru_1001AAD58;
  v9[4] = @"rapport:rdid:ModelAppleTV";
  v9[5] = @"rapport:rdid:ModelAppleTV";
  v10[4] = &stru_1001AAD78;
  v10[5] = &stru_1001AAD98;
  v9[6] = @"rapport:rdid:ModelAppleTV";
  v10[6] = &stru_1001AADB8;
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];
  destinationIdentifierModelMap = self->_destinationIdentifierModelMap;
  self->_destinationIdentifierModelMap = v3;

  v7[0] = @"rapport:rdid:RelationMyiCloud";
  v7[1] = @"rapport:rdid:RelationFamily";
  v8[0] = &stru_1001AADF8;
  v8[1] = &stru_1001AAE18;
  v7[2] = @"rapport:rdid:RelationFriend";
  v7[3] = @"rapport:rdid:RelationSharedHome";
  v8[2] = &stru_1001AAE38;
  v8[3] = &stru_1001AAE58;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  destinationIdentifierRelMap = self->_destinationIdentifierRelMap;
  self->_destinationIdentifierRelMap = v5;
}

- (id)findServerClientFromID:(id)d senderIDS:(id)s statusFlags:(unint64_t)flags
{
  dCopy = d;
  sCopy = s;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon findServerClientFromID:senderIDS:statusFlags:]", 30, "findServerClientFromID: deviceID=%@, senderIDS=%@, SF=%#ll{flags}\n", dCopy, sCopy, flags, &unk_1001476B8);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000029CC;
  v22 = sub_10000317C;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C34C;
  v14[3] = &unk_1001AAE80;
  v10 = dCopy;
  v15 = v10;
  v11 = sCopy;
  v16 = v11;
  v17 = &v18;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)findDeviceFromID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000029CC;
  v14 = sub_10000317C;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C6C8;
  v9[3] = &unk_1001AAEA8;
  v9[4] = &v10;
  [(RPCompanionLinkDaemon *)self _forEachMatchingDestinationID:dCopy handler:v9];
  v5 = v11[5];
  if (v5)
  {
    if (dword_1001D3228 > 30)
    {
      goto LABEL_11;
    }

    if (dword_1001D3228 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v5 = v11[5];
LABEL_4:
      name = [v5 name];
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon findDeviceFromID:]", 30, "Found match for deviceID='%@', returning device='%@'\n", dCopy, name);
    }
  }

  else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon findDeviceFromID:]", 30, "Failed to find matching device for deviceID='%@'\n", dCopy);
  }

LABEL_11:
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)descriptionWithLevel:(int)level
{
  if (level >= 21)
  {
    v4 = NSPrintF("RPCompanionLinkDaemon %{ptr}", a2, self);
    goto LABEL_127;
  }

  v270 = 0;
  v271 = &v270;
  v272 = 0x3032000000;
  v273 = sub_1000029CC;
  v274 = sub_10000317C;
  v275 = 0;
  v6 = sub_100009D00(self, a2);
  v7 = (v271 + 5);
  obj = v271[5];
  NSAppendPrintF(&obj, "-- RPCompanionLinkDaemon --\n");
  objc_storeStrong(v7, obj);
  v8 = (v271 + 5);
  v268 = v271[5];
  mach_continuous_time();
  v9 = UpTicksToSeconds();
  mach_absolute_time();
  v10 = UpTicksToSeconds();
  NSAppendPrintF(&v268, "Up %ll{dur} (awake %ll{dur})", v9, v10);
  objc_storeStrong(v8, v268);
  v171 = GestaltCopyAnswer();
  v172 = WiFiCopyCurrentNetworkInfoEx();
  CFStringGetTypeID();
  v170 = CFDictionaryGetTypedValue();
  v11 = (v271 + 5);
  v267 = v271[5];
  v12 = sub_10001BB10(", Nm ", v6);
  NSAppendPrintF(&v267, v12, v171);
  objc_storeStrong(v11, v267);
  v13 = (v271 + 5);
  v266 = v271[5];
  v14 = sub_10001BB10(", WiFi ", v6);
  NSAppendPrintF(&v266, v14, v170);
  objc_storeStrong(v13, v266);
  v15 = (v271 + 5);
  v265 = v271[5];
  v16 = sub_10001BB10(", AID ", v6);
  _getAppleID = [(RPCompanionLinkDaemon *)self _getAppleID];
  NSAppendPrintF(&v265, v16, _getAppleID);
  objc_storeStrong(v15, v265);

  v168 = self->_homeKitSelfAccessory;
  home = [(HMAccessory *)v168 home];
  if (home)
  {
    v18 = (v271 + 5);
    v264 = v271[5];
    v19 = sub_10001BB10(", Hm ", v6);
    name = [home name];
    NSAppendPrintF(&v264, v19, name);
    objc_storeStrong(v18, v264);
  }

  if (self->_prefHomeKitEnabled)
  {
    v21 = (v271 + 5);
    v263 = v271[5];
    NSAppendPrintF(&v263, ", LTPK <%.4@>", self->_homeKitLTPK);
    objc_storeStrong(v21, v263);
  }

  if (self->_prefCommunal)
  {
    v22 = (v271 + 5);
    v262 = v271[5];
    v23 = sub_10001BB10(", MeDev F ", v6);
    meDeviceFMFDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceFMFDeviceID];
    NSAppendPrintF(&v262, v23, meDeviceFMFDeviceID);
    objc_storeStrong(v22, v262);

    v25 = (v271 + 5);
    v261 = v271[5];
    v26 = sub_10001BB10(" I ", v6);
    meDeviceIDSDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];
    NSAppendPrintF(&v261, v26, meDeviceIDSDeviceID);
    objc_storeStrong(v25, v261);

    v28 = (v271 + 5);
    v260 = v271[5];
    v29 = sub_10001BB10(" Nm ", v6);
    meDeviceName = [(CUSystemMonitor *)self->_systemMonitor meDeviceName];
    NSAppendPrintF(&v260, v29, meDeviceName);
    objc_storeStrong(v28, v260);
  }

  if (level <= 10 && self->_prefHomeKitEnabled)
  {
    v31 = (v271 + 5);
    v259 = v271[5];
    NSAppendPrintF(&v259, ", AT <%@>, IRK <%.4@>, RID <%@>", self->_homeKitAuthTag, self->_homeKitIRK, self->_homeKitRotatingID);
    objc_storeStrong(v31, v259);
LABEL_13:
    v32 = (v271 + 5);
    v258 = v271[5];
    NSAppendPrintF(&v258, ", Nonce <%@>", self->_discoveryNonceData);
    objc_storeStrong(v32, v258);
    goto LABEL_14;
  }

  if (level <= 10)
  {
    goto LABEL_13;
  }

LABEL_14:
  v33 = (v271 + 5);
  v257 = v271[5];
  NSAppendPrintF(&v257, "\n");
  objc_storeStrong(v33, v257);
  if (level >= 11)
  {
    v34 = 50;
  }

  else
  {
    v34 = 0;
  }

  v35 = (v271 + 5);
  v256 = v271[5];
  v36 = CUDescriptionWithLevel();
  NSAppendPrintF(&v256, "Self: %@\n", v36);
  objc_storeStrong(v35, v256);

  if (level >= 11)
  {
    v37 = 50;
  }

  else
  {
    v37 = 30;
  }

  v38 = self->_bleDiscovery;
  if (v38)
  {
    v39 = (v271 + 5);
    v255 = v271[5];
    v40 = CUDescriptionWithLevel();
    NSAppendPrintF(&v255, "%@\n", v40);
    objc_storeStrong(v39, v255);
  }

  v41 = self->_bleNeedsCLinkAdvertiser;
  if (v41)
  {
    v42 = (v271 + 5);
    v254 = v271[5];
    v43 = CUDescriptionWithLevel();
    NSAppendPrintF(&v254, "%@\n", v43);
    objc_storeStrong(v42, v254);
  }

  v44 = self->_bleNeedsCLinkAdvertiserAssertions;
  v45 = v44;
  if (v44)
  {
    v46 = (v271 + 5);
    v253 = v271[5];
    NSAppendPrintF(&v253, "BLE NeedsCLink Assertions: %@\n", v44);
    objc_storeStrong(v46, v253);
  }

  v47 = self->_bleNeedsCLinkScanner;
  if (v47)
  {
    v48 = (v271 + 5);
    v252 = v271[5];
    v49 = CUDescriptionWithLevel();
    NSAppendPrintF(&v252, "%@\n", v49);
    objc_storeStrong(v48, v252);
  }

  bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
  v250[0] = _NSConcreteStackBlock;
  v250[1] = 3221225472;
  v250[2] = sub_10001DF6C;
  v250[3] = &unk_1001AAED0;
  v250[4] = &v270;
  v251 = v37;
  [(NSMutableDictionary *)bleNeedsCLinkDevices enumerateKeysAndObjectsUsingBlock:v250];
  v51 = self->_bleNearbyActionV2Advertiser;
  v52 = v51;
  if (v51)
  {
    v53 = (v271 + 5);
    v249 = v271[5];
    NSAppendPrintF(&v249, "%@\n", v51);
    objc_storeStrong(v53, v249);
  }

  v54 = self->_bleNearbyActionV2AdvertiserAssertions;
  v55 = v54;
  if (v54)
  {
    v56 = (v271 + 5);
    v248 = v271[5];
    NSAppendPrintF(&v248, "NearbyActionV2 Adv Assertions: %@\n", v54);
    objc_storeStrong(v56, v248);
  }

  v57 = self->_bleNearbyActionV2Discovery;
  v58 = v57;
  if (v57)
  {
    v59 = (v271 + 5);
    v247 = v271[5];
    NSAppendPrintF(&v247, "%@\n", v57);
    objc_storeStrong(v59, v247);
  }

  v60 = self->_bleNearbyInfoV2Discovery;
  v61 = v60;
  if (v60)
  {
    v62 = (v271 + 5);
    v246 = v271[5];
    NSAppendPrintF(&v246, "%@\n", v60);
    objc_storeStrong(v62, v246);
  }

  if (self->_bonjourAWDLAdvertiseForPairing)
  {
    v63 = (v271 + 5);
    v245 = v271[5];
    NSAppendPrintF(&v245, "AWDL advertiser for pairing: %s", "yes");
    objc_storeStrong(v63, v245);
  }

  v64 = self->_bonjourAdvertiser;
  if (v64)
  {
    v65 = (v271 + 5);
    v244 = v271[5];
    v66 = CUDescriptionWithLevel();
    NSAppendPrintF(&v244, "%@\n", v66);
    objc_storeStrong(v65, v244);
  }

  v67 = self->_bonjourAWDLAdvertiser;
  if (v67)
  {
    v68 = (v271 + 5);
    v243 = v271[5];
    v69 = CUDescriptionWithLevel();
    NSAppendPrintF(&v243, "%@\n", v69);
    objc_storeStrong(v68, v243);
  }

  if (self->_bonjourAWDLAdvertiserForce)
  {
    v70 = (v271 + 5);
    v242 = v271[5];
    NSAppendPrintF(&v242, "Force AWDL Advertiser\n");
    objc_storeStrong(v70, v242);
  }

  v71 = self->_bonjourBrowser;
  if (v71)
  {
    v72 = (v271 + 5);
    v241 = v271[5];
    v73 = CUDescriptionWithLevel();
    NSAppendPrintF(&v241, "%@", v73);
    objc_storeStrong(v72, v241);
  }

  v74 = self->_bonjourBrowserAWDL;
  if (v74)
  {
    v75 = (v271 + 5);
    v240 = v271[5];
    v76 = CUDescriptionWithLevel();
    NSAppendPrintF(&v240, "%@", v76);
    objc_storeStrong(v75, v240);
  }

  if (self->_bonjourBrowserAWDLForce)
  {
    v77 = (v271 + 5);
    v239 = v271[5];
    NSAppendPrintF(&v239, "Force AWDL Browser\n");
    objc_storeStrong(v77, v239);
  }

  v235 = 0;
  v236 = &v235;
  v237 = 0x2020000000;
  v238 = 0;
  v78 = [(NSMutableSet *)self->_bonjourBrowserAWDLAssertions count];
  v79 = v78;
  if (v78)
  {
    v80 = (v271 + 5);
    v234 = v271[5];
    NSAppendPrintF(&v234, "%d AWDL Browser Assertions\n", v78);
    objc_storeStrong(v80, v234);
  }

  bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
  v232[0] = _NSConcreteStackBlock;
  v232[1] = 3221225472;
  v232[2] = sub_10001DFF4;
  v232[3] = &unk_1001AAEF8;
  v233 = v37;
  v232[4] = &v270;
  v232[5] = &v235;
  v232[6] = v79;
  [(NSMutableSet *)bonjourBrowserAWDLAssertions enumerateObjectsUsingBlock:v232];
  v82 = self->_btPipe;
  v83 = v82;
  if (v82)
  {
    v84 = (v271 + 5);
    v231 = v271[5];
    NSAppendPrintF(&v231, "%@\n", v82);
    objc_storeStrong(v84, v231);
  }

  v85 = self->_btPipeHighPriority;
  v86 = v85;
  if (v85)
  {
    v87 = (v271 + 5);
    v230 = v271[5];
    NSAppendPrintF(&v230, "%@\n", v85);
    objc_storeStrong(v87, v230);
  }

  v88 = self->_netLinkManager;
  if (v88)
  {
    v89 = (v271 + 5);
    v229 = v271[5];
    v90 = CUDescriptionWithLevel();
    NSAppendPrintF(&v229, "%@", v90);
    objc_storeStrong(v89, v229);
  }

  v91 = self->_tcpServer;
  v92 = v91;
  if (v91)
  {
    v93 = (v271 + 5);
    v228 = v271[5];
    v94 = v91;
    if (objc_opt_respondsToSelector())
    {
      detailedDescription = [(CUTCPServer *)v94 detailedDescription];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CUTCPServer *)v94 descriptionWithLevel:20];
      }

      else
      {
        NSPrintF("%@\n", v94);
      }
      detailedDescription = ;
    }

    v96 = detailedDescription;

    NSAppendPrintF(&v228, "%@", v96);
    objc_storeStrong(v93, v228);
  }

  if (self->_hidDaemon)
  {
    v227 = 0;
    NSAppendPrintF(&v227, " HID");
    v97 = v227;
  }

  else
  {
    v97 = 0;
  }

  if (self->_mediaControlDaemon)
  {
    v98 = v97;
    v226 = v97;
    NSAppendPrintF(&v226, " MediaControl");
    v97 = v226;
  }

  if (self->_siriDaemon)
  {
    v99 = v97;
    v225 = v97;
    NSAppendPrintF(&v225, " Siri");
    v97 = v225;
  }

  v169 = v97;
  if (v97)
  {
    v100 = (v271 + 5);
    v224 = v271[5];
    NSAppendPrintF(&v224, "Profiles: <%@ >\n", v169);
    objc_storeStrong(v100, v224);
  }

  v101 = self->_btPipeConnection != 0;
  v102 = [(NSMutableDictionary *)self->_bleClientConnections count];
  v103 = [(NSMutableDictionary *)self->_tcpClientConnections count];
  v104 = &v102[v101 + [(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]+ v103];
  if (v104)
  {
    v105 = (v271 + 5);
    v223 = v271[5];
    NSAppendPrintF(&v223, "%d Client Cnx\n", v104);
    objc_storeStrong(v105, v223);
  }

  if (self->_btPipeConnection)
  {
    v106 = (v271 + 5);
    v222 = v271[5];
    v107 = CUDescriptionWithLevel();
    NSAppendPrintF(&v222, "    %@\n", v107);
    objc_storeStrong(v106, v222);
  }

  tcpClientConnections = self->_tcpClientConnections;
  v220[0] = _NSConcreteStackBlock;
  v220[1] = 3221225472;
  v220[2] = sub_10001E0DC;
  v220[3] = &unk_1001AAF20;
  v220[4] = &v270;
  v221 = v34;
  [(NSMutableDictionary *)tcpClientConnections enumerateKeysAndObjectsUsingBlock:v220];
  tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;
  v218[0] = _NSConcreteStackBlock;
  v218[1] = 3221225472;
  v218[2] = sub_10001E148;
  v218[3] = &unk_1001AAF20;
  v218[4] = &v270;
  v219 = v34;
  [(NSMutableDictionary *)tcpOnDemandClientConnections enumerateKeysAndObjectsUsingBlock:v218];
  bleClientConnections = self->_bleClientConnections;
  v216[0] = _NSConcreteStackBlock;
  v216[1] = 3221225472;
  v216[2] = sub_10001E1B4;
  v216[3] = &unk_1001AAF20;
  v216[4] = &v270;
  v217 = v34;
  [(NSMutableDictionary *)bleClientConnections enumerateKeysAndObjectsUsingBlock:v216];
  v111 = [(NSMutableSet *)self->_bleServerConnections count];
  v112 = &v111[[(NSMutableSet *)self->_tcpServerConnections count]];
  if (v112)
  {
    v113 = (v271 + 5);
    v215 = v271[5];
    NSAppendPrintF(&v215, "%d Server Cnx\n", v112);
    objc_storeStrong(v113, v215);
  }

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v114 = self->_tcpServerConnections;
  v115 = [(NSMutableSet *)v114 countByEnumeratingWithState:&v211 objects:v278 count:16];
  if (v115)
  {
    v116 = *v212;
    do
    {
      for (i = 0; i != v115; ++i)
      {
        if (*v212 != v116)
        {
          objc_enumerationMutation(v114);
        }

        v118 = (v271 + 5);
        v210 = v271[5];
        v119 = CUDescriptionWithLevel();
        NSAppendPrintF(&v210, "    %@\n", v119);
        objc_storeStrong(v118, v210);
      }

      v115 = [(NSMutableSet *)v114 countByEnumeratingWithState:&v211 objects:v278 count:16];
    }

    while (v115);
  }

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v120 = self->_bleServerConnections;
  v121 = [(NSMutableSet *)v120 countByEnumeratingWithState:&v206 objects:v277 count:16];
  if (v121)
  {
    v122 = *v207;
    do
    {
      for (j = 0; j != v121; ++j)
      {
        if (*v207 != v122)
        {
          objc_enumerationMutation(v120);
        }

        v124 = (v271 + 5);
        v205 = v271[5];
        v125 = CUDescriptionWithLevel();
        NSAppendPrintF(&v205, "    %@\n", v125);
        objc_storeStrong(v124, v205);
      }

      v121 = [(NSMutableSet *)v120 countByEnumeratingWithState:&v206 objects:v277 count:16];
    }

    while (v121);
  }

  if (self->_personalCnx)
  {
    v126 = (v271 + 5);
    v204 = v271[5];
    v127 = CUDescriptionWithLevel();
    NSAppendPrintF(&v204, "Personal: %@\n", v127);
    objc_storeStrong(v126, v204);
  }

  if (self->_stereoCnx)
  {
    v128 = (v271 + 5);
    v203 = v271[5];
    v129 = CUDescriptionWithLevel();
    NSAppendPrintF(&v203, "Stereo: %@\n", v129);
    objc_storeStrong(v128, v203);
  }

  v236[3] = 0;
  v130 = [(NSMutableDictionary *)self->_unauthDevices count];
  v131 = v130;
  if (v130)
  {
    v132 = (v271 + 5);
    v202 = v271[5];
    NSAppendPrintF(&v202, "%d Unauth\n", v130);
    objc_storeStrong(v132, v202);
  }

  unauthDevices = self->_unauthDevices;
  v200[0] = _NSConcreteStackBlock;
  v200[1] = 3221225472;
  v200[2] = sub_10001E220;
  v200[3] = &unk_1001AAF48;
  v201 = v34;
  v200[4] = &v270;
  v200[5] = &v235;
  v200[6] = v131;
  [(NSMutableDictionary *)unauthDevices enumerateKeysAndObjectsUsingBlock:v200];
  v236[3] = 0;
  v134 = [(NSMutableDictionary *)self->_bleDevices count];
  v135 = v134;
  if (v134)
  {
    v136 = (v271 + 5);
    v199 = v271[5];
    NSAppendPrintF(&v199, "%d BLE\n", v134);
    objc_storeStrong(v136, v199);
  }

  bleDevices = self->_bleDevices;
  v197[0] = _NSConcreteStackBlock;
  v197[1] = 3221225472;
  v197[2] = sub_10001E304;
  v197[3] = &unk_1001AAF48;
  v198 = v34;
  v197[4] = &v270;
  v197[5] = &v235;
  v197[6] = v135;
  [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v197];
  v236[3] = 0;
  v138 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices count];
  v139 = v138;
  if (v138)
  {
    v140 = (v271 + 5);
    v196 = v271[5];
    NSAppendPrintF(&v196, "%d NearbyInfoV2\n", v138);
    objc_storeStrong(v140, v196);
  }

  nearbyInfoV2Devices = self->_nearbyInfoV2Devices;
  v194[0] = _NSConcreteStackBlock;
  v194[1] = 3221225472;
  v194[2] = sub_10001E3E8;
  v194[3] = &unk_1001AAF48;
  v195 = v34;
  v194[4] = &v270;
  v194[5] = &v235;
  v194[6] = v139;
  [(NSMutableDictionary *)nearbyInfoV2Devices enumerateKeysAndObjectsUsingBlock:v194];
  v236[3] = 0;
  v142 = [(NSMutableDictionary *)self->_pairedDevices count];
  v143 = v142;
  if (v142)
  {
    v144 = (v271 + 5);
    v193 = v271[5];
    NSAppendPrintF(&v193, "%d Paired\n", v142);
    objc_storeStrong(v144, v193);
  }

  pairedDevices = self->_pairedDevices;
  v191[0] = _NSConcreteStackBlock;
  v191[1] = 3221225472;
  v191[2] = sub_10001E4CC;
  v191[3] = &unk_1001AAF48;
  v192 = v34;
  v191[4] = &v270;
  v191[5] = &v235;
  v191[6] = v143;
  [(NSMutableDictionary *)pairedDevices enumerateKeysAndObjectsUsingBlock:v191];
  v236[3] = 0;
  v146 = [(NSMutableDictionary *)self->_homeHubDevices count];
  v147 = v146;
  if (v146)
  {
    v148 = (v271 + 5);
    v190 = v271[5];
    NSAppendPrintF(&v190, "%d HomeHub\n", v146);
    objc_storeStrong(v148, v190);
  }

  homeHubDevices = self->_homeHubDevices;
  v188[0] = _NSConcreteStackBlock;
  v188[1] = 3221225472;
  v188[2] = sub_10001E5B0;
  v188[3] = &unk_1001AAF48;
  v189 = v34;
  v188[4] = &v270;
  v188[5] = &v235;
  v188[6] = v147;
  [(NSMutableDictionary *)homeHubDevices enumerateKeysAndObjectsUsingBlock:v188];
  if ([(NSMutableDictionary *)self->_uiNoteDevices count])
  {
    v150 = (v271 + 5);
    v187 = v271[5];
    NSAppendPrintF(&v187, "%d UINote\n", [(NSMutableDictionary *)self->_uiNoteDevices count]);
    objc_storeStrong(v150, v187);
    uiNoteDevices = self->_uiNoteDevices;
    v185[0] = _NSConcreteStackBlock;
    v185[1] = 3221225472;
    v185[2] = sub_10001E694;
    v185[3] = &unk_1001AAF70;
    v185[4] = &v270;
    v186 = v34;
    [(NSMutableDictionary *)uiNoteDevices enumerateKeysAndObjectsUsingBlock:v185];
  }

  v152 = self->_uiNoteSession;
  v153 = v152;
  if (v152)
  {
    v154 = (v271 + 5);
    v184 = v271[5];
    NSAppendPrintF(&v184, "    %@\n", v152);
    objc_storeStrong(v154, v184);
  }

  if ([(NSMutableDictionary *)self->_xpcMatchingMap count])
  {
    v155 = (v271 + 5);
    v183 = v271[5];
    NSAppendPrintF(&v183, "%d LaunchOnDemand\n", [(NSMutableDictionary *)self->_xpcMatchingMap count]);
    objc_storeStrong(v155, v183);
    xpcMatchingMap = self->_xpcMatchingMap;
    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_10001E700;
    v182[3] = &unk_1001AAF98;
    v182[4] = &v270;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v182];
  }

  v157 = mach_absolute_time();
  if ([(NSMutableDictionary *)self->_activeSessions count])
  {
    v158 = (v271 + 5);
    v181 = v271[5];
    NSAppendPrintF(&v181, "%d Session(s)\n", [(NSMutableDictionary *)self->_activeSessions count]);
    objc_storeStrong(v158, v181);
    activeSessions = self->_activeSessions;
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = sub_10001E7E4;
    v180[3] = &unk_1001AAFC0;
    v180[4] = &v270;
    v180[5] = v157;
    [(NSMutableDictionary *)activeSessions enumerateKeysAndObjectsUsingBlock:v180];
  }

  if ([(NSMutableSet *)self->_xpcConnections count])
  {
    v160 = (v271 + 5);
    v179 = v271[5];
    NSAppendPrintF(&v179, "%d XPC Cnx\n", [(NSMutableSet *)self->_xpcConnections count]);
    objc_storeStrong(v160, v179);
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v161 = self->_xpcConnections;
    v162 = [(NSMutableSet *)v161 countByEnumeratingWithState:&v175 objects:v276 count:16];
    if (v162)
    {
      v163 = *v176;
      do
      {
        for (k = 0; k != v162; ++k)
        {
          if (*v176 != v163)
          {
            objc_enumerationMutation(v161);
          }

          v165 = (v271 + 5);
          v174 = v271[5];
          v166 = CUDescriptionWithLevel();
          NSAppendPrintF(&v174, "    %@", v166);
          objc_storeStrong(v165, v174);
        }

        v162 = [(NSMutableSet *)v161 countByEnumeratingWithState:&v175 objects:v276 count:16];
      }

      while (v162);
    }
  }

  v4 = v271[5];

  _Block_object_dispose(&v235, 8);
  _Block_object_dispose(&v270, 8);

LABEL_127:

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E920;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10010EC88(self, a2, v2);
    }
  }

  DeviceClass = GestaltGetDeviceClass();
  selfCopy->_prefCommunal = sub_10001BA9C(DeviceClass);
  v5 = GestaltGetDeviceClass() == 3 || GestaltGetDeviceClass() == 11;
  selfCopy->_prefServerBonjourOpportunitistic = v5;
  selfCopy->_startTicks = mach_absolute_time();
  selfCopy->_startTicksFull = mach_continuous_time();
  RandomBytes();
  if (!selfCopy->_xpcListener)
  {
    v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.CompanionLink"];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v6;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener _setQueue:selfCopy->_dispatchQueue];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
  }

  if (selfCopy->_coreDeviceChangedNotifier == -1)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001EC04;
    handler[3] = &unk_1001AAFE8;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.dt.coredevice.devicePaired", &selfCopy->_coreDeviceChangedNotifier, dispatchQueue, handler);
  }

  selfCopy->_homeKitWaiting = 1;
  v9 = dispatch_time(0, 2000000000);
  v10 = selfCopy->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EC0C;
  block[3] = &unk_1001AA970;
  block[4] = selfCopy;
  dispatch_after(v9, v10, block);
  if (!selfCopy->_nearfieldDaemon)
  {
    v11 = +[RPNearFieldDaemon sharedNearFieldDaemon];
    nearfieldDaemon = selfCopy->_nearfieldDaemon;
    selfCopy->_nearfieldDaemon = v11;

    [(RPNearFieldDaemon *)selfCopy->_nearfieldDaemon setDispatchQueue:selfCopy->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001EC94;
    v16[3] = &unk_1001AA970;
    v16[4] = selfCopy;
    [(RPNearFieldDaemon *)selfCopy->_nearfieldDaemon setTransactionChangedHandler:v16];
  }

  if (!selfCopy->_tvDeviceInfoManager && GestaltGetDeviceClass() == 4)
  {
    v13 = objc_alloc_init(RPAppleTVDeviceInfoManager);
    tvDeviceInfoManager = selfCopy->_tvDeviceInfoManager;
    selfCopy->_tvDeviceInfoManager = v13;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001EC9C;
    v15[3] = &unk_1001AA970;
    v15[4] = selfCopy;
    [(RPAppleTVDeviceInfoManager *)selfCopy->_tvDeviceInfoManager setDeviceInfoChangedHandler:v15];
  }

  [(RPCompanionLinkDaemon *)selfCopy _startApplicationServiceMonitorIfNecessary];
  [(RPCompanionLinkDaemon *)selfCopy prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EDE0;
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
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10010ED04(self, a2, v2);
      }
    }

    [(NSXPCListener *)selfCopy->_xpcListener invalidate];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = 0;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = selfCopy->_xpcConnections;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          xpcCnx = [*(*(&v31 + 1) + 8 * i) xpcCnx];
          [xpcCnx invalidate];
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)selfCopy->_xpcMatchingMap removeAllObjects];
    xpcMatchingMap = selfCopy->_xpcMatchingMap;
    selfCopy->_xpcMatchingMap = 0;

    [(RPCompanionLinkDaemon *)selfCopy _bleServerEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _btPipeEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _clientEnsureStopped];
    coreDeviceChangedNotifier = selfCopy->_coreDeviceChangedNotifier;
    if (coreDeviceChangedNotifier != -1)
    {
      notify_cancel(coreDeviceChangedNotifier);
      selfCopy->_coreDeviceChangedNotifier = -1;
    }

    [(RPCompanionLinkDaemon *)selfCopy _duetSyncEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _serverEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _homeKitEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _hidEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _mediaControlEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _miscEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _siriEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _reachabilityEnsureStopped];
    [(RPCompanionLinkDaemon *)selfCopy _localDeviceCleanup];
    v13 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
    [v13 invalidate];

    [(NSMutableSet *)selfCopy->_needsAWDLNewPeers removeAllObjects];
    needsAWDLNewPeers = selfCopy->_needsAWDLNewPeers;
    selfCopy->_needsAWDLNewPeers = 0;

    [(NSMutableSet *)selfCopy->_needsAWDLSentToPeers removeAllObjects];
    needsAWDLSentToPeers = selfCopy->_needsAWDLSentToPeers;
    selfCopy->_needsAWDLSentToPeers = 0;

    [(NSMutableSet *)selfCopy->_needsAWDLRequestIdentifiers removeAllObjects];
    needsAWDLRequestIdentifiers = selfCopy->_needsAWDLRequestIdentifiers;
    selfCopy->_needsAWDLRequestIdentifiers = 0;

    needsAWDLRequestTimer = selfCopy->_needsAWDLRequestTimer;
    if (needsAWDLRequestTimer)
    {
      v18 = needsAWDLRequestTimer;
      dispatch_source_cancel(v18);
      v19 = selfCopy->_needsAWDLRequestTimer;
      selfCopy->_needsAWDLRequestTimer = 0;
    }

    [(NSMutableDictionary *)selfCopy->_pendingSessionStopsMap removeAllObjects];
    pendingSessionStopsMap = selfCopy->_pendingSessionStopsMap;
    selfCopy->_pendingSessionStopsMap = 0;

    [(NSMutableDictionary *)selfCopy->_registeredEvents removeAllObjects];
    registeredEvents = selfCopy->_registeredEvents;
    selfCopy->_registeredEvents = 0;

    [(NSMutableSet *)selfCopy->_registeredProfileIDs removeAllObjects];
    registeredProfileIDs = selfCopy->_registeredProfileIDs;
    selfCopy->_registeredProfileIDs = 0;

    [(NSMutableDictionary *)selfCopy->_registeredRequests removeAllObjects];
    registeredRequests = selfCopy->_registeredRequests;
    selfCopy->_registeredRequests = 0;

    [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate];
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = 0;

    [(CBAdvertiser *)selfCopy->_cbAdvertiser invalidate];
    cbAdvertiser = selfCopy->_cbAdvertiser;
    selfCopy->_cbAdvertiser = 0;

    [(RPNearFieldDaemon *)selfCopy->_nearfieldDaemon setTransactionChangedHandler:0];
    nearfieldDaemon = selfCopy->_nearfieldDaemon;
    selfCopy->_nearfieldDaemon = 0;

    [(RPAppleTVDeviceInfoManager *)selfCopy->_tvDeviceInfoManager invalidate];
    tvDeviceInfoManager = selfCopy->_tvDeviceInfoManager;
    selfCopy->_tvDeviceInfoManager = 0;

    rbsProcessMonitor = selfCopy->_rbsProcessMonitor;
    if (rbsProcessMonitor)
    {
      [(RBSProcessMonitor *)rbsProcessMonitor invalidate];
      v29 = selfCopy->_rbsProcessMonitor;
      selfCopy->_rbsProcessMonitor = 0;
    }

    [(NSMutableSet *)selfCopy->_rbsPIDSet removeAllObjects];
    rbsPIDSet = selfCopy->_rbsPIDSet;
    selfCopy->_rbsPIDSet = 0;

    [(RPCompanionLinkDaemon *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_bleClientConnections count]&& ![(NSMutableSet *)self->_bleServerConnections count]&& !self->_bonjourAdvertiser && !self->_bonjourBrowser && !self->_btAdvAddrMonitor && !self->_btPipeConnection && ![(NSMutableDictionary *)self->_tcpClientConnections count]&& ![(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]&& ![(NSMutableSet *)self->_tcpServerConnections count]&& !self->_tcpServer && ![(NSMutableSet *)self->_xpcConnections count]&& !self->_xpcListener)
  {
    [(CUWiFiManager *)self->_wifiManager invalidate];
    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;

    self->_invalidateDone = 1;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10010ED20(v4, v5, v6);
      }
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ((changed & 0x10) != 0)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (_update = _LogCategory_Initialize(), _update))
      {
        sub_10010ED3C(_update, v6, v7);
      }
    }

    [(RPCompanionLinkDaemon *)self _btPipeEnsureStopped];
    [(RPCompanionLinkDaemon *)self _clientEnsureStopped];
    [(RPCompanionLinkDaemon *)self _serverEnsureStopped];
    _update = [(RPCompanionLinkDaemon *)self _update];
    if ((changed & 0x40) == 0)
    {
LABEL_3:
      if ((changed & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((changed & 0x40) == 0)
  {
    goto LABEL_3;
  }

  _update = [(RPCompanionLinkDaemon *)self _update];
  if ((changed & 4) == 0)
  {
LABEL_4:
    if ((changed & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_25:
  if (self->_deviceAuthTagStr)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (_update = _LogCategory_Initialize(), _update))
      {
        sub_10010ED58(_update, v6, v7);
      }
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;
  }

  if (self->_deviceAWDLRandomID)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (_update = _LogCategory_Initialize(), _update))
      {
        sub_10010ED74(_update, v6, v7);
      }
    }

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }

  [(RPCompanionLinkDaemon *)self _update];
  if ((changed & 1) == 0)
  {
LABEL_5:
    if ((changed & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  [(RPCompanionLinkDaemon *)self _update];
  if ((changed & 0x100) == 0)
  {
LABEL_6:
    if ((changed & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  [(RPCompanionLinkDaemon *)self _clientBonjourResetReevaluationRateLimit];
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  [(RPCompanionLinkDaemon *)self _disconnectUnpairedDevices];
  if ((changed & 0x200) == 0)
  {
LABEL_7:
    if ((changed & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  [(RPCompanionLinkDaemon *)self _disconnectRemovedSharedHomeDevices];
  [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  if ((changed & 8) == 0)
  {
LABEL_8:
    if ((changed & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:&stru_1001AB028];
  [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  if ((changed & 0x20) == 0)
  {
LABEL_9:
    if ((changed & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_40:
  v10 = +[RPDaemon sharedDaemon];
  errorFlags = [v10 errorFlags];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_xpcConnections;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * i) updateErrorFlags:{errorFlags, v17}];
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  if ((changed & 0x800) == 0)
  {
LABEL_10:
    if ((changed & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_48:
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010ED90(changed);
  }

  [(RPCompanionLinkDaemon *)self _clientBLEFamilyDeviceReportChanges];
  if ((changed & 0x4000) == 0)
  {
LABEL_11:
    if ((changed & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_52:
  [(RPCompanionLinkDaemon *)self _update];
  if ((changed & 0x40000) != 0)
  {
LABEL_12:
    [(RPCompanionLinkDaemon *)self _update];
  }

LABEL_13:
  if ((changed & 0x18000) != 0)
  {
    self->_inDiscoverySession = (changed & 0x8000) != 0;
    [(RPCompanionLinkDaemon *)self _update];
  }

  if ((changed & 0x2000) != 0)
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  }

  if ((changed & 2) != 0)
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
    [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([commandCopy rangeOfString:@"clAWDLa" options:9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([commandCopy rangeOfString:@"clAWDLb" options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [commandCopy rangeOfString:@"clUpdate" options:9];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [commandCopy isEqual:@"eval"];
        if (v9)
        {
          if (dword_1001D3228 <= 30)
          {
            if (dword_1001D3228 != -1 || (v9 = _LogCategory_Initialize(), v9))
            {
              sub_10010EF24(v9, v10, v11);
            }
          }

          [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateAllDevices];
          goto LABEL_18;
        }

        v16 = [commandCopy isEqual:@"hkbad"];
        if (v16)
        {
          if (dword_1001D3228 <= 30)
          {
            if (dword_1001D3228 != -1 || (v16 = _LogCategory_Initialize(), v16))
            {
              sub_10010EF08(v16, v17, v18);
            }
          }

          v19 = NSRandomData();
          homeKitLTPK = self->_homeKitLTPK;
          self->_homeKitLTPK = v19;

          v14 = 1;
          v21 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1];
          [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
          [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
LABEL_29:
          [(RPCompanionLinkDaemon *)self _update];
          goto LABEL_19;
        }

        v22 = [commandCopy isEqual:@"hkgood"];
        if (!v22)
        {
          if (![commandCopy isEqual:@"rotate"])
          {
            v14 = 0;
            goto LABEL_19;
          }

          v26 = NSRandomData();
          btAdvAddrData = self->_btAdvAddrData;
          self->_btAdvAddrData = v26;

          v28 = NSPrintF("%.6a", COERCE_DOUBLE([(NSData *)self->_btAdvAddrData bytes]));
          btAdvAddrStr = self->_btAdvAddrStr;
          self->_btAdvAddrStr = v28;

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_10010EEA4(&self->_btAdvAddrData);
          }

          deviceAuthTagStr = self->_deviceAuthTagStr;
          self->_deviceAuthTagStr = 0;

          v14 = 1;
          v31 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1];
          [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
          goto LABEL_29;
        }

        if (dword_1001D3228 <= 30)
        {
          if (dword_1001D3228 != -1 || (v22 = _LogCategory_Initialize(), v22))
          {
            sub_10010EEEC(v22, v23, v24);
          }
        }

        v25 = self->_homeKitLTPK;
        self->_homeKitLTPK = 0;
      }

      else if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          sub_10010EE88(v6, v7, v8);
        }
      }
    }

    else
    {
      bonjourBrowserAWDLForce = self->_bonjourBrowserAWDLForce;
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010EE30();
      }

      self->_bonjourBrowserAWDLForce = !bonjourBrowserAWDLForce;
    }
  }

  else
  {
    bonjourAWDLAdvertiserForce = self->_bonjourAWDLAdvertiserForce;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EDD8();
    }

    self->_bonjourAWDLAdvertiserForce = !bonjourAWDLAdvertiserForce;
  }

  [(RPCompanionLinkDaemon *)self _update];
LABEL_18:
  v14 = 1;
LABEL_19:

  return v14;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  DeviceClass = GestaltGetDeviceClass();
  v4 = DeviceClass;
  v5 = 1;
  if (DeviceClass != 3 && (DeviceClass - 1) >= 2)
  {
    v5 = DeviceClass == 100;
  }

  if (self->_prefAppSignIn != v5)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EF40();
    }

    self->_prefAppSignIn = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefApplyNoiWiFiToUSB != v6)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EF98();
    }

    self->_prefApplyNoiWiFiToUSB = v6;
  }

  v7 = 1;
  if (v4 != 3 && (v4 - 1) >= 2)
  {
    v7 = v4 == 100;
  }

  if (self->_prefCompanionAuthentication != v7)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EFF0();
    }

    self->_prefCompanionAuthentication = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefBLEClient != v8)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F048();
    }

    self->_prefBLEClient = v8;
  }

  v9 = [NSNumber numberWithBool:CFPrefs_GetInt64() != 0];
  if (v9 != self->_prefMeDeviceIsMeOverride && ([(NSNumber *)v9 isEqual:?]& 1) == 0)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F0A0(&self->_prefMeDeviceIsMeOverride);
    }

    objc_storeStrong(&self->_prefMeDeviceIsMeOverride, v9);
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefBTPipeEnabled != v10)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F120();
    }

    self->_prefBTPipeEnabled = v10;
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefClientEnabled != v11)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F178();
    }

    self->_prefClientEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_prefCoreDevicePaired != v12)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F1D0();
    }

    self->_prefCoreDevicePaired = v12;
    if (v12)
    {
      [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
    }
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (self->_prefCoreDeviceEnabled != v13)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F228();
    }

    self->_prefCoreDeviceEnabled = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  if (self->_prefHIDEnabled != v14)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F280();
    }

    self->_prefHIDEnabled = v14;
  }

  Int64 = CFPrefs_GetInt64();
  v16 = Int64 != 0;
  if (Int64 && !self->_prefHomeKitConfigured)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F2D8();
    }

    self->_prefHomeKitConfigured = v16;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_prefHomeKitEnabled != v17)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F328();
    }

    self->_prefHomeKitEnabled = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_prefIgnoreCompanionLinkChecks != v18)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F380();
    }

    self->_prefIgnoreCompanionLinkChecks = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_prefIPEnabled != v19)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F3D8();
    }

    self->_prefIPEnabled = v19;
  }

  v20 = CFPrefs_GetInt64();
  if (v20 <= 0x3E8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 100;
  }

  prefMaxConnectionCount = self->_prefMaxConnectionCount;
  if (v21 != prefMaxConnectionCount)
  {
    if (dword_1001D3228 <= 40)
    {
      if (dword_1001D3228 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_88;
        }

        LODWORD(prefMaxConnectionCount) = self->_prefMaxConnectionCount;
      }

      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Max connections: %u -> %lld\n", prefMaxConnectionCount, v21);
    }

LABEL_88:
    self->_prefMaxConnectionCount = v21;
  }

  v23 = CFPrefs_GetInt64() != 0;
  if (self->_prefMediaControlEnabled != v23)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F430();
    }

    self->_prefMediaControlEnabled = v23;
  }

  v24 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerBonjourAlways != v24)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F488();
    }

    self->_prefServerBonjourAlways = v24;
  }

  v25 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerEnabled != v25)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F4E0();
    }

    self->_prefServerEnabled = v25;
  }

  v26 = CFPrefs_GetInt64() != 0;
  if (self->_prefSiriEnabled != v26)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F538();
    }

    self->_prefSiriEnabled = v26;
  }

  v27 = CFPrefs_GetInt64() != 0;
  if (self->_prefTouchEnabled != v27)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F590();
    }

    self->_prefTouchEnabled = v27;
  }

  v28 = CFPrefs_GetInt64() != 0;
  if (self->_prefUINotesEnabled != v28)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F5E8();
    }

    self->_prefUINotesEnabled = v28;
  }

  v29 = CFPrefs_GetInt64() != 0;
  if (self->_prefUseTargetAuthTag != v29)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F640();
    }

    self->_prefUseTargetAuthTag = v29;
  }

  [(RPCompanionLinkDaemon *)self _update];
}

- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  v10 = objc_alloc_init(RPXPCMatchingEntry);
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (![v11 isEqual:@"discovery"])
  {
    if ([v11 isEqual:@"server"] && (objc_msgSend(v12, "isEqual:", @"_companion-link._tcp") & 1) == 0 && (objc_msgSend(v12, "isEqual:", @"_rdlink._tcp") & 1) == 0 && objc_msgSend(v12, "length"))
    {
      v13 = objc_alloc_init(RPServer);
      [v13 setDispatchQueue:self->_dispatchQueue];
      [v13 setServiceType:v12];
      [(RPCompanionLinkDevice *)self->_localDeviceInfo setServersChangedState:6];
      [(RPXPCMatchingEntry *)v10 setServer:v13];

      goto LABEL_11;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_21;
  }

  if (!self->_prefAppSignIn || ![v12 isEqual:@"RPUserNotificationAppSignIn"])
  {
    if ([v12 isEqual:@"_companion-link._tcp"] & 1) != 0 || self->_prefCompanionAuthentication && (objc_msgSend(v12, "isEqual:", @"com.apple.CompanionAuthentication"))
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  [(RPXPCMatchingEntry *)v10 setAppSignIn:1];
LABEL_11:
  [(RPXPCMatchingEntry *)v10 setEvent:eventCopy];
  [(RPXPCMatchingEntry *)v10 setHandler:handlerCopy];
  [(RPXPCMatchingEntry *)v10 setToken:token];
  xpcMatchingMap = self->_xpcMatchingMap;
  if (!xpcMatchingMap)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = self->_xpcMatchingMap;
    self->_xpcMatchingMap = v15;

    xpcMatchingMap = self->_xpcMatchingMap;
  }

  v17 = [NSNumber numberWithUnsignedLongLong:token];
  [(NSMutableDictionary *)xpcMatchingMap setObject:v10 forKeyedSubscript:v17];

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon addXPCMatchingToken:event:handler:]", 30, "LaunchOnDemand added: %##@, token %llu\n", eventCopy, token);
  }

  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
  v18 = 1;
LABEL_21:

  return v18;
}

- (BOOL)removeXPCMatchingToken:(unint64_t)token
{
  v5 = [NSNumber numberWithUnsignedLongLong:?];
  v6 = [(NSMutableDictionary *)self->_xpcMatchingMap objectForKeyedSubscript:v5];
  if (v6)
  {
    [(NSMutableDictionary *)self->_xpcMatchingMap setObject:0 forKeyedSubscript:v5];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F698(v6, token);
    }

    server = [v6 server];
    if (server)
    {
      [(RPCompanionLinkDevice *)self->_localDeviceInfo setServersChangedState:6];
    }

    [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
  }

  return v6 != 0;
}

- (void)_reportXPCMatchingDiscoveryUINoteDevice:(id)device
{
  deviceCopy = device;
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  v6 = effectiveIdentifier;
  v7 = @"?";
  if (effectiveIdentifier)
  {
    v7 = effectiveIdentifier;
  }

  v8 = v7;

  xpcMatchingMap = self->_xpcMatchingMap;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020848;
  v11[3] = &unk_1001AB078;
  v11[4] = v8;
  v12 = deviceCopy;
  v10 = deviceCopy;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_reportXPCMatchingDiscoveryCompanionAuthenticationDevice:(id)device
{
  deviceCopy = device;
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  v6 = effectiveIdentifier;
  v7 = @"?";
  if (effectiveIdentifier)
  {
    v7 = effectiveIdentifier;
  }

  v8 = v7;

  xpcMatchingMap = self->_xpcMatchingMap;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020ADC;
  v11[3] = &unk_1001AB078;
  v11[4] = v8;
  v12 = deviceCopy;
  v10 = deviceCopy;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_updateForXPCServerChange
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        server = [*(*(&v14 + 1) + 8 * i) server];
        v10 = server;
        if (server)
        {
          if ((~[server controlFlags] & 0x404) == 0)
          {
            passwordType = [v10 passwordType];
            if (passwordType > 4 || ((1 << passwordType) & 0x19) == 0)
            {
              v6 = 1;
            }
          }

          v5 |= [v10 advertiseDeviceName];
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  if (self->_serverBonjourInfraPairing != (v6 & 1))
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F998();
    }

    self->_serverBonjourInfraPairing = v6 & 1;
    [(RPCompanionLinkDaemon *)self _update];
  }

  if (self->_bonjourAWDLAdvertiseForPairing != (v5 & 1))
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F9F0();
    }

    self->_bonjourAWDLAdvertiseForPairing = v5 & 1;
    [(RPCompanionLinkDaemon *)self _update];
  }
}

- (void)_addApplicationPID:(id)d
{
  dCopy = d;
  if (([(NSMutableSet *)self->_rbsPIDSet containsObject:?]& 1) == 0)
  {
    rbsPIDSet = self->_rbsPIDSet;
    if (!rbsPIDSet)
    {
      v5 = +[NSMutableSet set];
      v6 = self->_rbsPIDSet;
      self->_rbsPIDSet = v5;

      rbsPIDSet = self->_rbsPIDSet;
    }

    [(NSMutableSet *)rbsPIDSet addObject:dCopy];
    [(RPCompanionLinkDaemon *)self _updateRBSProcessMonitor];
  }
}

- (void)_removeApplicationPID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableSet *)self->_rbsPIDSet containsObject:dCopy];
  v5 = dCopy;
  if (v4)
  {
    [(NSMutableSet *)self->_rbsPIDSet removeObject:dCopy];
    v6 = [(NSMutableSet *)self->_rbsPIDSet count];
    if (v6)
    {
      [(RPCompanionLinkDaemon *)self _updateRBSProcessMonitor];
    }

    else
    {
      if (self->_rbsProcessMonitor)
      {
        if (dword_1001D3228 <= 30)
        {
          if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), v6))
          {
            sub_10010FA48(v6, v7, v8);
          }
        }

        [(RBSProcessMonitor *)self->_rbsProcessMonitor invalidate];
        rbsProcessMonitor = self->_rbsProcessMonitor;
        self->_rbsProcessMonitor = 0;
      }

      rbsPIDSet = self->_rbsPIDSet;
      self->_rbsPIDSet = 0;
    }

    v5 = dCopy;
  }
}

- (void)_updateRBSProcessMonitor
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002120C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_clientEnsureStopped
{
  [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBonjourEnsureStopped];
  [(NSMutableDictionary *)self->_bleClientConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AB1E8];
  [(NSMutableDictionary *)self->_tcpClientConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AB208];
  tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;

  [(NSMutableDictionary *)tcpOnDemandClientConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AB228];
}

- (void)_clientBLEActionDiscoveryEnsureStopped
{
  if (self->_bleActionDiscovery)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FC1C(self);
    }

    [(SFDeviceDiscovery *)self->_bleActionDiscovery invalidate];
    bleActionDiscovery = self->_bleActionDiscovery;
    self->_bleActionDiscovery = 0;

    ++self->_bleActionDiscoveryID;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [(NSMutableDictionary *)self->_bleDevices allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            bleDevice = [v9 bleDevice];
            [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice force:1 deviceFlags:2];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_clientBLEDiscoveryEnsureStopped
{
  if (self->_bleDiscovery)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FDE4(self);
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery invalidate];
    bleDiscovery = self->_bleDiscovery;
    self->_bleDiscovery = 0;

    ++self->_bleDiscoveryID;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)self->_bleDevices allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            bleDevice = [v9 bleDevice];
            [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice force:1 deviceFlags:1];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    pendingLostBLEDevicesTimer = self->_pendingLostBLEDevicesTimer;
    if (pendingLostBLEDevicesTimer)
    {
      dispatch_source_cancel(pendingLostBLEDevicesTimer);
      v13 = self->_pendingLostBLEDevicesTimer;
      self->_pendingLostBLEDevicesTimer = 0;
    }

    [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
    uiNoteSession = self->_uiNoteSession;
    self->_uiNoteSession = 0;

    [(NSMutableDictionary *)self->_uiNoteDevices removeAllObjects];
    uiNoteDevices = self->_uiNoteDevices;
    self->_uiNoteDevices = 0;
  }
}

- (BOOL)_clientBLETriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case error:(id *)error
{
  v6 = *&case;
  discoveryCopy = discovery;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  bleDiscovery = self->_bleDiscovery;
  if (bleDiscovery)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100021FF0;
    v17[3] = &unk_1001AB318;
    v17[4] = &v18;
    v17[5] = error;
    [(SFDeviceDiscovery *)bleDiscovery triggerEnhancedDiscovery:discoveryCopy useCase:v6 completion:v17];
LABEL_5:
    LOBYTE(error) = *(v19 + 24);
    goto LABEL_6;
  }

  if (error)
  {
    *error = RPErrorF(4294960569, "BLE discovery is not active", v8, v9, v10, v11, v12, v13, v17[0]);
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v18, 8);

  return error & 1;
}

- (void)_clientBLEDiscoveryDeviceFound:(id)found deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  foundCopy = found;
  idsIdentifier = [foundCopy idsIdentifier];
  if (!idsIdentifier)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v8 = +[RPCloudDaemon sharedCloudDaemon];
  idsDeviceMap = [v8 idsDeviceMap];
  v10 = [idsDeviceMap objectForKeyedSubscript:idsIdentifier];

  if (!v10 || self->_prefIgnoreCompanionLinkChecks)
  {
    goto LABEL_9;
  }

  model = [foundCopy model];
  if (model)
  {
    uUIDString = model;
    v13 = GestaltProductTypeStringToDeviceClass();
    objc_msgSend_operatingSystemVersion(v10);
    if (v13 && (wInTP56r94EFs9NAAi() & 1) == 0)
    {
      if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 20, "Ignoring BLE device found: old OS %d.%d.%d, %@\n", 0, 0, foundCopy);
      }

      goto LABEL_82;
    }

LABEL_9:
    deviceFlags = [foundCopy deviceFlags];
    if (!idsIdentifier && (deviceFlags & 0x10000) != 0)
    {
      idsIdentifier = [foundCopy rapportIdentifier];
    }

    identifier = [foundCopy identifier];
    uUIDString = [identifier UUIDString];

    if (idsIdentifier && uUIDString)
    {
      v16 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:uUIDString];
      if (v16)
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 30, "Replacing BLE device identifier %@ with IDS identifier %@, DFl current %#{flags} new %#{flags}\n", uUIDString, idsIdentifier, [v16 deviceFlags], &unk_100147A0F, flagsCopy, &unk_100147A0F);
        }

        flagsCopy = [v16 deviceFlags] | flagsCopy;
        bleDevice = [v16 bleDevice];
        [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice force:1 deviceFlags:7];
      }
    }

    if (idsIdentifier)
    {
      v18 = idsIdentifier;
    }

    else
    {
      v18 = uUIDString;
    }

    v19 = v18;
    if (v19)
    {
      v20 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v19];
      v21 = v20;
      v43 = v10;
      if (v20)
      {
        v22 = ([v20 statusFlags] & 0x80000) == 0 && (objc_msgSend(foundCopy, "deviceFlags") & 8) == 0;
        statusFlags = [v21 statusFlags];
        deviceFlags2 = [foundCopy deviceFlags];
        if (v22 && (statusFlags & 0x700002E000) != 0 && (deviceFlags2 & 0x1D446) == 0)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 30, "Marking device as lost %@ since identities changed from %#ll{flags} -> %#{flags}\n", v21, statusFlags & 0x700002E000, &unk_1001476B8, 0, &unk_100147A27);
          }

          flagsCopy = [v21 deviceFlags] | flagsCopy;
          bleDevice2 = [v21 bleDevice];
          [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice2 force:1 deviceFlags:7];
        }
      }

      v26 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v19];
      if (v26)
      {
        v27 = v26;
        statusFlags2 = [v26 statusFlags];
        bleDevice3 = [v27 bleDevice];
        isBLEDeviceReplaced = [bleDevice3 isBLEDeviceReplaced];

        if (isBLEDeviceReplaced && dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10010FEE8(v27, foundCopy);
        }

        v31 = [v27 updateWithSFDevice:foundCopy];
        [v27 setDeviceFlags:{objc_msgSend(v27, "deviceFlags") | flagsCopy}];
        if (dword_1001D3228 <= 10)
        {
          if (dword_1001D3228 != -1 || _LogCategory_Initialize())
          {
            sub_10010FF44(foundCopy, flagsCopy);
          }

          if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_10010FFB0(v27);
          }
        }

        v10 = v43;
        if (v31)
        {
          [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v27 changes:v31];
          statusFlags3 = [v27 statusFlags];
          if ((statusFlags2 & 0x200000) == 0 && (statusFlags3 & 0x200000) != 0)
          {
            [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryUINoteDevice:v27];
          }

          statusFlags4 = [v27 statusFlags];
          if ((statusFlags2 & 0x40000000) == 0 && (statusFlags4 & 0x40000000) != 0)
          {
            [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCompanionAuthenticationDevice:v27];
          }

          if (v31)
          {
            if ([(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device isEqualToDevice:v27])
            {
              [(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device updateWithSFDevice:foundCopy];
              [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserUpdate];
            }

            if ([(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice isEqualToDevice:v27])
            {
              [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice updateWithSFDevice:foundCopy];
              [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserUpdate];
            }
          }
        }
      }

      else
      {
        if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100110008(foundCopy, flagsCopy);
        }

        v27 = objc_alloc_init(RPCompanionLinkDevice);
        [v27 setIdentifier:v19];
        [v27 setIdsDevice:v43];
        [v27 setIdsDeviceIdentifier:idsIdentifier];
        [v27 updateWithSFDevice:foundCopy];
        [v27 setDeviceFlags:{objc_msgSend(v27, "deviceFlags") | flagsCopy}];
        if (self->_prefIgnoreCompanionLinkChecks)
        {
          v34 = RPVersionToSourceVersionString(4000000);
          [v27 setSourceVersion:v34];
        }

        v35 = +[RPCloudDaemon sharedCloudDaemon];
        idsFamilyEndpointMap = [v35 idsFamilyEndpointMap];

        v37 = [idsFamilyEndpointMap objectForKeyedSubscript:idsIdentifier];
        v38 = v37;
        if (v37)
        {
          familyEndpointData = [v37 familyEndpointData];
          [v27 updateWithFamilyEndpoint:familyEndpointData];
        }

        bleDevices = self->_bleDevices;
        if (!bleDevices)
        {
          v41 = objc_alloc_init(NSMutableDictionary);
          v42 = self->_bleDevices;
          self->_bleDevices = v41;

          bleDevices = self->_bleDevices;
        }

        [(NSMutableDictionary *)bleDevices setObject:v27 forKeyedSubscript:v19];
        [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v27];
        v10 = v43;
        if (([v27 statusFlags] & 0x200000) != 0)
        {
          [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryUINoteDevice:v27];
        }

        if (([v27 statusFlags] & 0x40000000) != 0)
        {
          [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCompanionAuthenticationDevice:v27];
        }

        if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10010FFB0(v27);
        }
      }
    }

    else
    {
      sub_100110098();
    }

LABEL_82:
    goto LABEL_83;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010FEA8(foundCopy);
  }

LABEL_83:
}

- (void)_clientBLEDiscoveryDeviceLost:(id)lost force:(BOOL)force deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  idsIdentifier = [lostCopy idsIdentifier];
  v11 = idsIdentifier;
  if (idsIdentifier)
  {
    v12 = idsIdentifier;
  }

  else
  {
    v12 = uUIDString;
  }

  v13 = v12;
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v13];
    if (!v14 && uUIDString)
    {
      v14 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:uUIDString];
    }

    if (!v14)
    {
      goto LABEL_40;
    }

    if (!force)
    {
      if ([lostCopy isBLEDeviceReplaced])
      {
        [v14 setDeviceFlags:{objc_msgSend(v14, "deviceFlags") & ~flagsCopy}];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001101B8(lostCopy);
        }

        bleDevice = [v14 bleDevice];
        [bleDevice setIsBLEDeviceReplaced:1];

        [(RPCompanionLinkDaemon *)self _schedulePendingLostBLEDeviceTimer];
        goto LABEL_40;
      }

      if (!v11 || ([lostCopy deviceFlags] & 0x8000) != 0)
      {
        bleDevice2 = [v14 bleDevice];
        identifier2 = [bleDevice2 identifier];
        uUIDString2 = [identifier2 UUIDString];

        if (([uUIDString isEqual:uUIDString2] & 1) == 0)
        {
          sub_100110114(uUIDString2, uUIDString, v14);
LABEL_40:

          goto LABEL_41;
        }
      }
    }

    [v14 setDeviceFlags:{objc_msgSend(v14, "deviceFlags") & ~flagsCopy}];
    statusFlags = [v14 statusFlags];
    _nearbyActionDeviceActionTypes = [(RPCompanionLinkDaemon *)self _nearbyActionDeviceActionTypes];
    if (([v14 deviceFlags] & 7) != 0)
    {
      if (([v14 deviceFlags] & 2) != 0 || (_nearbyActionDeviceActionTypes & statusFlags) == 0)
      {
        if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100110258(v14);
        }
      }

      else
      {
        [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") & ~_nearbyActionDeviceActionTypes}];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001101F8(v14);
        }

        [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v14];
      }
    }

    else
    {
      if (uUIDString)
      {
        [(NSMutableDictionary *)self->_bleDevices setObject:0 forKeyedSubscript:uUIDString];
      }

      if (v11)
      {
        [(NSMutableDictionary *)self->_bleDevices setObject:0 forKeyedSubscript:v11];
      }

      [v14 removeSFDevice:lostCopy];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001102B8(v14, flagsCopy);
      }

      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v14];
      if ([(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device isEqualToDevice:v14])
      {
        bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
        self->_bleNearbyActionV2Device = 0;

        [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserRestart];
      }

      if ([(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice isEqualToDevice:v14])
      {
        bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
        self->_bleNeedsCLinkDevice = 0;

        [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserRestart];
      }
    }

    goto LABEL_40;
  }

  sub_100110330();
LABEL_41:
}

- (void)_clientBLEDiscoveryDeviceLastSeenChange:(id)change
{
  changeCopy = change;
  identifier = [changeCopy identifier];
  uUIDString = [identifier UUIDString];

  idsIdentifier = [changeCopy idsIdentifier];
  v7 = idsIdentifier;
  if (idsIdentifier)
  {
    v8 = idsIdentifier;
  }

  else
  {
    v8 = uUIDString;
  }

  v9 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    [v9 updateWithSFDevice:changeCopy];
    if (dword_1001D3228 < 11 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001103A8(v10);
    }
  }
}

- (void)_schedulePendingLostBLEDeviceTimer
{
  if (!self->_pendingLostBLEDevicesTimer)
  {
    handler[7] = v3;
    handler[8] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001103E8(self, a2, v2);
      }
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
    pendingLostBLEDevicesTimer = selfCopy->_pendingLostBLEDevicesTimer;
    selfCopy->_pendingLostBLEDevicesTimer = v6;

    v8 = selfCopy->_pendingLostBLEDevicesTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100022D8C;
    handler[3] = &unk_1001AA970;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(v8, handler);
    CUDispatchTimerSet();
    dispatch_activate(selfCopy->_pendingLostBLEDevicesTimer);
  }
}

- (void)_processPendingLostBLEDevices
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_bleDevices allValues];
  v4 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        bleDevice = [v8 bleDevice];
        isBLEDeviceReplaced = [bleDevice isBLEDeviceReplaced];

        if (isBLEDeviceReplaced)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110404(v8);
          }

          bleDevice2 = [v8 bleDevice];
          [bleDevice2 setIsBLEDeviceReplaced:0];

          bleDevice3 = [v8 bleDevice];
          [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice3 force:0 deviceFlags:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v13 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v13;
    }

    while (v13);
  }
}

- (void)_serverNearbyInfoV2DeviceFound:(id)found deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btAddressData = [foundCopy btAddressData];
  if (btAddressData)
  {
    nearbyInfoV2TempAuthTagData = [foundCopy nearbyInfoV2TempAuthTagData];
    if (nearbyInfoV2TempAuthTagData)
    {
      v9 = +[RPIdentityDaemon sharedIdentityDaemon];
      v10 = [v9 resolveIdentityForTempAuthTagData:nearbyInfoV2TempAuthTagData bluetoothAddressData:btAddressData];

      if (v10)
      {
        idsDeviceID = [v10 idsDeviceID];
        if (idsDeviceID)
        {
          v12 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:idsDeviceID];
          if (v12)
          {
            v13 = v12;
            v14 = [v12 updateWithCBDevice:foundCopy];
            if (v14)
            {
              [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v13 changes:v14];
            }
          }

          else
          {
            if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100110444(foundCopy, flagsCopy);
            }

            v13 = objc_alloc_init(RPCompanionLinkDevice);
            [v13 setDeviceFlags:{objc_msgSend(v13, "deviceFlags") | flagsCopy}];
            [v13 updateWithIdentity:v10];
            [v13 updateWithCBDevice:foundCopy];
            [v13 setStatusFlags:{objc_msgSend(v13, "statusFlags") | 0x200}];
            nearbyInfoV2Devices = self->_nearbyInfoV2Devices;
            if (!nearbyInfoV2Devices)
            {
              v27 = objc_alloc_init(NSMutableDictionary);
              v28 = self->_nearbyInfoV2Devices;
              self->_nearbyInfoV2Devices = v27;

              nearbyInfoV2Devices = self->_nearbyInfoV2Devices;
            }

            [(NSMutableDictionary *)nearbyInfoV2Devices setObject:v13 forKeyedSubscript:idsDeviceID];
            [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v13];
            if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001104DC(v13);
            }
          }
        }

        else
        {
          sub_10011053C();
        }
      }

      else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001105B4(foundCopy);
      }
    }

    else
    {
      v29 = btAddressData;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = [(NSMutableDictionary *)self->_nearbyInfoV2Devices allKeys];
      v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v31 = *v33;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v33 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            selfCopy = self;
            v20 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:v18];
            cbDevice = [v20 cbDevice];
            identifier = [cbDevice identifier];
            v23 = foundCopy;
            identifier2 = [foundCopy identifier];
            v25 = [identifier isEqualToString:identifier2];

            if (v25)
            {
              if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_1001105F4();
              }

              foundCopy = v23;
              [(RPCompanionLinkDaemon *)selfCopy _serverNearbyInfoV2DeviceLost:v23 idsIdentifier:v18 force:1 deviceFlags:4];

              goto LABEL_25;
            }

            foundCopy = v23;
            self = selfCopy;
          }

          v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:

      nearbyInfoV2TempAuthTagData = 0;
      btAddressData = v29;
    }
  }
}

- (void)_serverNearbyInfoV2DeviceLost:(id)lost idsIdentifier:(id)identifier force:(BOOL)force deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  lostCopy = lost;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  idsDeviceID = [lostCopy idsDeviceID];
  v13 = idsDeviceID;
  if (idsDeviceID)
  {
    v14 = idsDeviceID;
  }

  else
  {
    v14 = identifierCopy;
  }

  idsDeviceID2 = v14;

  if (!idsDeviceID2)
  {
    btAddressData = [lostCopy btAddressData];
    nearbyInfoV2TempAuthTagData = [lostCopy nearbyInfoV2TempAuthTagData];
    v18 = nearbyInfoV2TempAuthTagData;
    if (btAddressData && nearbyInfoV2TempAuthTagData)
    {
      v19 = +[RPIdentityDaemon sharedIdentityDaemon];
      v20 = [v19 resolveIdentityForTempAuthTagData:v18 bluetoothAddressData:btAddressData];

      idsDeviceID2 = [v20 idsDeviceID];
    }
  }

  if (idsDeviceID2)
  {
    v21 = idsDeviceID2;
  }

  else
  {
    v21 = identifier;
  }

  v22 = v21;
  if (v22)
  {
    v23 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:v22];
    if (v23)
    {
      v24 = 1;
    }

    else
    {
      v24 = identifier == 0;
    }

    if (!v24)
    {
      v23 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:identifier];
    }

    if (!v23)
    {
      goto LABEL_27;
    }

    [v23 setDeviceFlags:{objc_msgSend(v23, "deviceFlags") & ~flagsCopy}];
    if (!force)
    {
      cbDevice = [v23 cbDevice];
      stableIdentifier = [cbDevice stableIdentifier];

      if (([v22 isEqual:stableIdentifier] & 1) == 0)
      {
        sub_100110628(stableIdentifier, v22);
LABEL_27:

        goto LABEL_28;
      }
    }

    if (([v23 deviceFlags] & 7) == 0)
    {
      [(NSMutableDictionary *)self->_nearbyInfoV2Devices setObject:0 forKeyedSubscript:v22];
      [v23 removeCBDevice:lostCopy];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001106C4(v23, flagsCopy);
      }

      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v23];
    }

    goto LABEL_27;
  }

  sub_10011073C();
LABEL_28:
}

- (void)_clientBLEFamilyDeviceReportChanges
{
  selfCopy = self;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_bleDevices allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v19 = *v22;
    v20 = allKeys;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_bleDevices objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v7), v19, v20];
        v9 = v8;
        if (v8)
        {
          if (([v8 deviceFlags] & 2) != 0)
          {
            idsDeviceIdentifier = [v9 idsDeviceIdentifier];
            if (idsDeviceIdentifier)
            {
              v11 = idsDeviceIdentifier;
              v12 = +[RPCloudDaemon sharedCloudDaemon];
              idsFamilyEndpointMap = [v12 idsFamilyEndpointMap];
              v14 = [idsFamilyEndpointMap objectForKeyedSubscript:v11];
              [v14 familyEndpointData];
              v16 = v15 = selfCopy;
              v17 = [v9 updateWithFamilyEndpoint:v16];

              selfCopy = v15;
              if (v17)
              {
                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001107B4();
                }

                [(RPCompanionLinkDaemon *)v15 _clientReportChangedDevice:v9 changes:v17];
              }

              v6 = v19;
              allKeys = v20;
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v18 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      v5 = v18;
    }

    while (v18);
  }
}

- (void)_clientBLENeedsCLinkAdvertiserEnsureStarted
{
  if (!self->_bleNeedsCLinkAdvertiser)
  {
    v16[9] = v2;
    v16[10] = v3;
    _clientBLENeedsCLinkTargetDevice = [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkTargetDevice];
    v8 = _clientBLENeedsCLinkTargetDevice;
    if (self->_enableAWDLGuestDiscovery || _clientBLENeedsCLinkTargetDevice)
    {
      objc_storeStrong(&self->_bleNeedsCLinkDevice, _clientBLENeedsCLinkTargetDevice);
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          sub_100110848(v9, v10, v11);
        }
      }

      v12 = objc_alloc_init(off_1001D32A0());
      bleNeedsCLinkAdvertiser = self->_bleNeedsCLinkAdvertiser;
      self->_bleNeedsCLinkAdvertiser = v12;

      [(SFService *)self->_bleNeedsCLinkAdvertiser setAdvertiseRate:60];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setDeviceActionType:51];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setDispatchQueue:self->_dispatchQueue];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setIdentifier:@"bb6e0a35-ca03-4151-8feb-f6bcae4d9a41"];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setLabel:@"CLink"];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setNeedsKeyboard:1];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setPairSetupDisabled:1];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setOverrideScreenOff:self->_bleNeedsCLinkAdvertiserScreenOff];
      bleTargetData = [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice bleTargetData];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:bleTargetData];

      v15 = self->_bleNeedsCLinkAdvertiser;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000239A8;
      v16[3] = &unk_1001AB2C8;
      v16[4] = self;
      [(SFService *)v15 activateWithCompletion:v16];
      [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
    }

    else if (dword_1001D3228 <= 90)
    {
      if (dword_1001D3228 != -1 || (_clientBLENeedsCLinkTargetDevice = _LogCategory_Initialize(), _clientBLENeedsCLinkTargetDevice))
      {
        sub_10011082C(_clientBLENeedsCLinkTargetDevice, v6, v7);
      }
    }
  }
}

- (void)_clientBLENeedsCLinkAdvertiserUpdate
{
  bleNeedsCLinkAdvertiser = self->_bleNeedsCLinkAdvertiser;
  if (!bleNeedsCLinkAdvertiser || !self->_bleNeedsCLinkDevice)
  {
    return;
  }

  targetAuthTag = [(SFService *)bleNeedsCLinkAdvertiser targetAuthTag];
  bleTargetData = [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice bleTargetData];
  v8 = targetAuthTag;
  v6 = bleTargetData;
  if (v8 != v6)
  {
    if ((v8 != 0) != (v6 == 0))
    {
      v7 = [v8 isEqual:v6];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLENeedsCLinkAdvertiserUpdate]", 30, "BLE NeedsCLink advertiser updating target data <%.3@> -> <%.3@>\n", v8, v6);
    }

    [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:v6];
    goto LABEL_15;
  }

LABEL_15:
}

- (void)_clientBLENeedsCLinkAdvertiserRestart
{
  bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
  self->_bleNeedsCLinkDevice = 0;

  if ([(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserShouldRun])
  {
    _clientBLENeedsCLinkTargetDevice = [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkTargetDevice];
    v5 = self->_bleNeedsCLinkDevice;
    self->_bleNeedsCLinkDevice = _clientBLENeedsCLinkTargetDevice;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110918();
    }

    if (self->_bleNeedsCLinkAdvertiser)
    {
      bleTargetData = [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice bleTargetData];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:bleTargetData];

      v7 = self->_bleNeedsCLinkAdvertiserAssertions;
      v8 = v7;
      if (v7)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * i);
              v14 = +[RPAssertionTracker sharedTracker];
              [v14 startTracking:v13];
            }

            v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v10);
        }
      }
    }

    else
    {

      [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStarted];
    }
  }

  else
  {

    [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStopped];
  }
}

- (id)_clientBLENeedsCLinkTargetDevice
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_xpcConnections;
  daemonDevice3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (daemonDevice3)
  {
    v4 = *v15;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v15 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v14 + 1) + 8 * v5);
      if ([v6 needsCLink])
      {
        netCnx = [v6 netCnx];
        state = [netCnx state];

        if (state != 1)
        {
          daemonDevice = [v6 daemonDevice];

          if (daemonDevice)
          {
            daemonDevice2 = [v6 daemonDevice];
            statusFlags = [daemonDevice2 statusFlags];

            if ((statusFlags & 2) != 0)
            {
              break;
            }
          }
        }
      }

      if (daemonDevice3 == ++v5)
      {
        daemonDevice3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (daemonDevice3)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v12 = v6;

    if (v12)
    {
      daemonDevice3 = [(NSMutableSet *)v12 daemonDevice];
      v2 = v12;
      goto LABEL_15;
    }

    daemonDevice3 = 0;
  }

  else
  {
LABEL_15:
  }

  return daemonDevice3;
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted
{
  if (self->_bleNearbyActionV2Advertiser)
  {

    [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
  }

  else
  {
    if (self->_bleNearbyActionV2Device)
    {
      goto LABEL_18;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = self->_xpcConnections;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          if ([v8 needsNearbyActionV2])
          {
            bonjourDevice = [v8 bonjourDevice];

            if (!bonjourDevice)
            {
              daemonDevice = [v8 daemonDevice];
              bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
              self->_bleNearbyActionV2Device = daemonDevice;

              goto LABEL_17;
            }
          }
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    if (self->_bleNearbyActionV2Device)
    {
LABEL_18:
      v12 = objc_alloc_init(RPNearbyActionV2Advertiser);
      bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
      self->_bleNearbyActionV2Advertiser = v12;

      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setDispatchQueue:self->_dispatchQueue];
      bleTargetData = [(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device bleTargetData];
      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:bleTargetData];

      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setNearbyActionType:[(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device nearbyActionV2Type]];
      v15 = self->_bleNearbyActionV2Advertiser;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000245DC;
      v16[3] = &unk_1001AB2C8;
      v16[4] = self;
      [(RPNearbyActionV2Advertiser *)v15 activateWithCompletion:v16];
      [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
    }

    else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110974();
    }
  }
}

- (void)_clientBLENearbyActionV2AdvertiserUpdate
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (!bleNearbyActionV2Advertiser || !self->_bleNearbyActionV2Device)
  {
    return;
  }

  targetData = [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser targetData];
  bleTargetData = [(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device bleTargetData];
  v8 = targetData;
  v6 = bleTargetData;
  if (v8 != v6)
  {
    if ((v8 != 0) != (v6 == 0))
    {
      v7 = [v8 isEqual:v6];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLENearbyActionV2AdvertiserUpdate]", 30, "BLE NearbyActionV2 advertiser updating target data <%.3@> -> <%.3@>\n", v8, v6);
    }

    [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:v6];
    goto LABEL_15;
  }

LABEL_15:
}

- (void)_clientBLENearbyActionV2AdvertiserRestart
{
  [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
  _clientBLENearbyActionV2AdvertiserShouldRun = [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserShouldRun];
  if (_clientBLENearbyActionV2AdvertiserShouldRun)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (_clientBLENearbyActionV2AdvertiserShouldRun = _LogCategory_Initialize(), _clientBLENearbyActionV2AdvertiserShouldRun))
      {
        sub_1001109A8(_clientBLENearbyActionV2AdvertiserShouldRun, v4, v5);
      }
    }

    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStarted];
  }
}

- (void)_clientSendNeedsAWDLOverWiFi:(BOOL)fi
{
  fiCopy = fi;
  v5 = 664;
  if (fi)
  {
    v5 = 648;
  }

  v6 = *(&self->super.isa + v5);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = "disable";
    v9 = *v25;
    if (fiCopy)
    {
      v8 = "enable";
    }

    v18 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v23 = 0;
        v12 = [(RPCompanionLinkDaemon *)self findConnectedDeviceForIdentifier:v11 controlFlags:0x400000 cnx:&v23];
        if (v12 && ([v23 linkType] == 6 || objc_msgSend(v23, "linkType") == 8 || objc_msgSend(v23, "linkType") == 7))
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientSendNeedsAWDLOverWiFi:]", 30, "Sending NeedsAWDL %s event to %@ over connection %@\n", v18, v12, v23);
          }

          v13 = +[NSMutableDictionary dictionary];
          identifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo identifier];
          [v13 setObject:identifier forKeyedSubscript:@"_i"];

          v15 = [NSNumber numberWithBool:fiCopy];
          [v13 setObject:v15 forKeyedSubscript:@"_ena"];

          v21[0] = 0;
          v21[1] = v21;
          v21[2] = 0x2020000000;
          v22 = fiCopy;
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100024C4C;
          v20[3] = &unk_1001AB410;
          v20[5] = v11;
          v20[6] = v21;
          v20[4] = self;
          [v23 sendEncryptedEventID:@"_needsAWDL" event:v13 options:0 completion:v20];
          _Block_object_dispose(v21, 8);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  if (!fiCopy)
  {
    needsAWDLSentToPeers = self->_needsAWDLSentToPeers;
    self->_needsAWDLSentToPeers = 0;
  }

  needsAWDLNewPeers = self->_needsAWDLNewPeers;
  self->_needsAWDLNewPeers = 0;
}

- (void)_clientBonjourEnsureStopped
{
  if (self->_bonjourBrowser)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100110A70(self, a2, v2);
      }
    }

    [(CUBonjourBrowser *)selfCopy->_bonjourBrowser invalidate];
    bonjourBrowser = selfCopy->_bonjourBrowser;
    selfCopy->_bonjourBrowser = 0;

    bonjourReevaluateTimer = selfCopy->_bonjourReevaluateTimer;
    if (bonjourReevaluateTimer)
    {
      v7 = bonjourReevaluateTimer;
      dispatch_source_cancel(v7);
      v6 = selfCopy->_bonjourReevaluateTimer;
      selfCopy->_bonjourReevaluateTimer = 0;
    }
  }
}

- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  if (!self->_btAdvAddrStr)
  {
LABEL_14:
    CFDictionaryGetInt64();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if ([v9 UTF8String])
    {
      v10 = TextToSourceVersion();
      if (v10 > 0x10CA0B)
      {
        Int64 = CFDictionaryGetInt64();
        v12 = Int64;
        if (self->_prefCommunal || (Int64 & 0x20002) != 0x20002)
        {
          if (self->_prefCoreDevicePaired && (*&Int64 & 0x200000) != 0)
          {
            LODWORD(v13) = 130;
          }

          else
          {
            LODWORD(v13) = 2;
          }
        }

        else
        {
          LODWORD(v13) = 394;
        }

        if (_os_feature_enabled_impl())
        {
          v13 = v13 | 0xF;
        }

        else
        {
          v13 = v13;
        }

        v14 = +[RPIdentityDaemon sharedIdentityDaemon];
        v15 = [v14 resolveIdentityForBonjourDevice:deviceCopy typeFlags:v13];

        v16 = [(RPCompanionLinkDaemon *)self _homeKitAuthMatchForBonjourDevice:deviceCopy];
        v17 = v16;
        if ((v16 & 1) == 0 && !v15)
        {
LABEL_31:
          [(RPCompanionLinkDaemon *)self _clientBonjourFoundUnauthDevice:deviceCopy isAWDLDevice:0];
          v18 = 0;
LABEL_65:

          goto LABEL_37;
        }

        if (v16 && ([(RPCompanionLinkDaemon *)self _homeKitDecryptRotatingIDForBonjourDevice:deviceCopy], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v20 = v19;
          v40 = 1;
          v41 = v19;
        }

        else
        {
          idsDeviceID = [v15 idsDeviceID];
          if (!idsDeviceID)
          {
            if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100110E3C(deviceCopy);
            }

            goto LABEL_31;
          }

          v20 = idsDeviceID;
          v41 = 0;
          v40 = 0;
        }

        v23 = self->_uniqueIDStr;
        idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsDeviceIdentifier];
        if (v23 && -[NSString caseInsensitiveCompare:](v23, "caseInsensitiveCompare:", v20) == NSOrderedSame || idsDeviceIdentifier && ![idsDeviceIdentifier caseInsensitiveCompare:v20])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110BFC(deviceCopy);
          }

          goto LABEL_63;
        }

        if (!reevaluate)
        {
          [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
        }

        if ((v12 & 0x100000) != 0)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110C58(deviceCopy);
          }

          goto LABEL_63;
        }

        if (GestaltGetDeviceClass() == 6)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110DFC(deviceCopy);
          }

LABEL_63:
          v18 = 0;
LABEL_64:

          goto LABEL_65;
        }

        v24 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v20];
        if (v24)
        {
          v25 = v24;
LABEL_68:
          v26 = 0;
          goto LABEL_69;
        }

        idsDeviceID2 = [v15 idsDeviceID];
        if (idsDeviceID2)
        {
          v38 = idsDeviceID2;
          v28 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:idsDeviceID2];
          if (v28)
          {
            v25 = v28;

            goto LABEL_68;
          }

          v25 = [(RPCompanionLinkDaemon *)self _findWiFiConnectionByID:v38];
          if ([v25 linkType] == 6 && (objc_msgSend(v25, "controlFlags") & 0x200) == 0)
          {

            if (v25)
            {
              goto LABEL_68;
            }

LABEL_81:
            txtDictionary2 = [deviceCopy txtDictionary];
            CFStringGetTypeID();
            v39 = CFDictionaryGetTypedValue();

            v25 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v39];
            v37 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v39];
            bonjourDevice = [v37 bonjourDevice];

            if (v25)
            {
              v26 = bonjourDevice;
LABEL_69:
              [v25 setBonjourPeerDevice:deviceCopy];
              [v25 setPresent:1];
              [(RPCompanionLinkDaemon *)self _activeDeviceChangedForConnection:v25 bonjourDevice:deviceCopy];
              if (v26)
              {
                [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:v26];
              }

              goto LABEL_71;
            }

            if (v40)
            {
              v29 = 0x8000000;
            }

            else
            {
              v29 = 0;
            }

            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100110C98(deviceCopy, v20);
            }

            if (self->_prefServerBonjourAlways)
            {
              v30 = (v12 & 2) == 0 || self->_prefCommunal;
              if (v30 && (v12 & 0x8000) == 0)
              {
                if (self->_prefCommunal && (v12 & 2) == 0)
                {
                  if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100110DA0(deviceCopy);
                  }

                  goto LABEL_113;
                }

                if ((v17 & v40) == 1)
                {
                  if (([(NSString *)self->_uniqueIDStr compare:v41]& 0x8000000000000000) == 0)
                  {
                    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                    {
                      uniqueIDStr = self->_uniqueIDStr;
                      v32 = sub_100025600(deviceCopy);
                      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 40, "Ignoring lower peer %@ with hkKnown %d, unique local ID %@ vs peer %@, %@\n", v20, 1, uniqueIDStr, v41, v32);
                    }

                    goto LABEL_113;
                  }
                }

                else
                {
                  idsDeviceID3 = [v15 idsDeviceID];
                  v34 = [idsDeviceIdentifier compare:idsDeviceID3];

                  if ((v34 & 0x8000000000000000) == 0)
                  {
                    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                    {
                      sub_100110D04(v15, deviceCopy, v20, idsDeviceIdentifier);
                    }

                    goto LABEL_113;
                  }
                }
              }
            }

            [(RPCompanionLinkDaemon *)self _clientConnectionStart:deviceCopy controlFlags:v29 uniqueID:v20 identity:v15];
LABEL_113:
            v25 = 0;
            v26 = bonjourDevice;
LABEL_71:

            v18 = 1;
            goto LABEL_64;
          }

          idsDeviceID2 = v38;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v10 = 0;
    }

    if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 20, "Ignoring old version (%u) device: %@\n", v10, deviceCopy);
    }

    goto LABEL_36;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (!v8)
  {
    if (dword_1001D3228 > 10 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_36;
    }

    sub_100110B44(deviceCopy, &v43);
    goto LABEL_12;
  }

  if (![v8 isEqual:self->_btAdvAddrStr])
  {

    goto LABEL_14;
  }

  if (dword_1001D3228 > 10 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_36;
  }

  sub_100110A8C(deviceCopy, &v43);
LABEL_12:

LABEL_36:
  v18 = 0;
LABEL_37:

  return v18;
}

- (void)_clientBonjourLostDevice:(id)device
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:deviceCopy];
  txtDictionary = [deviceCopy txtDictionary];
  v5 = ~CFDictionaryGetInt64();

  if (self->_prefCommunal || (*&v5 & 0x20002) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 394;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 resolveIdentityForBonjourDevice:deviceCopy typeFlags:v6];
  v9 = [(RPCompanionLinkDaemon *)self _homeKitAuthMatchForBonjourDevice:deviceCopy];
  if ((v9 & 1) == 0 && !v8)
  {
    goto LABEL_22;
  }

  if (!v9 || ([(RPCompanionLinkDaemon *)self _homeKitDecryptRotatingIDForBonjourDevice:deviceCopy], (idsDeviceID = objc_claimAutoreleasedReturnValue()) == 0))
  {
    idsDeviceID = [v8 idsDeviceID];
    if (!idsDeviceID)
    {
      goto LABEL_22;
    }
  }

  v11 = idsDeviceID;
  v12 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:idsDeviceID];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    idsDeviceID2 = [v8 idsDeviceID];
    if (idsDeviceID2)
    {
      v13 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:idsDeviceID2];
      if (v13)
      {
        v15 = idsDeviceID2;

        v11 = v15;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100110E7C(deviceCopy);
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v13)
  {
LABEL_20:
    [v13 setPresent:0];
  }

LABEL_21:

LABEL_22:
}

- (void)_clientBonjourFoundUnauthDevice:(id)device isAWDLDevice:(BOOL)lDevice
{
  lDeviceCopy = lDevice;
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      [v8 setBonjourPeerDevice:deviceCopy];
      [v9 setPresent:1];
    }

    if (!self->_discoverPairedDevices || ![(RPCompanionLinkDaemon *)self _clientBonjourCheckFoundPairedDevice:deviceCopy publicID:v7])
    {
      v10 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v7];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 updateWithBonjourDevice:deviceCopy];
        if (v12)
        {
          v13 = v12;
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110F3C(deviceCopy, lDeviceCopy, v7, v13);
          }

          [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v11 changes:v13];
        }
      }

      else
      {
        v14 = objc_alloc_init(RPCompanionLinkDevice);
        [v14 updateWithBonjourDevice:deviceCopy];
        [v14 setFlags:{objc_msgSend(v14, "flags") | 1}];
        if (lDeviceCopy)
        {
          [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") & 0xFFFFFFFFFFFFFFFBLL}];
          [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") | 8}];
        }

        unauthDevices = self->_unauthDevices;
        if (!unauthDevices)
        {
          v16 = objc_alloc_init(NSMutableDictionary);
          v17 = self->_unauthDevices;
          self->_unauthDevices = v16;

          unauthDevices = self->_unauthDevices;
        }

        [(NSMutableDictionary *)unauthDevices setObject:v14 forKeyedSubscript:v7];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100111044(deviceCopy, lDeviceCopy, v7);
        }

        [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v14];
      }
    }
  }

  else if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011113C(deviceCopy);
  }
}

- (BOOL)_clientBonjourCheckFoundPairedDevice:(id)device publicID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = +[RPIdentityDaemon sharedIdentityDaemon];
  v9 = [v8 resolveIdentityForBonjourDevice:deviceCopy typeFlags:128];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_pairedDevices objectForKeyedSubscript:dCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 updateWithBonjourDevice:deviceCopy];
      if (v12)
      {
        v13 = v12;
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011117C(deviceCopy, dCopy, v13);
        }

        [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v11 changes:v13];
      }
    }

    else
    {
      v14 = objc_alloc_init(RPCompanionLinkDevice);
      [v14 updateWithBonjourDevice:deviceCopy];
      [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") | 0x8000}];
      pairedDevices = self->_pairedDevices;
      if (!pairedDevices)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = self->_pairedDevices;
        self->_pairedDevices = v16;

        pairedDevices = self->_pairedDevices;
      }

      [(NSMutableDictionary *)pairedDevices setObject:v14 forKeyedSubscript:dCopy];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011125C(deviceCopy);
      }

      [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v14];
    }
  }

  return v9 != 0;
}

- (void)_clientBonjourLostUnauthDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      [v6 setPresent:0];
    }

    if (![(RPCompanionLinkDaemon *)self _clientBonjourCheckLostPairedDevice:deviceCopy publicID:v5])
    {
      v8 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v5];
      if (v8)
      {
        [(NSMutableDictionary *)self->_unauthDevices setObject:0 forKeyedSubscript:v5];
        [v8 removeBonjourDevice:deviceCopy];
        [v8 setStatusFlags:{objc_msgSend(v8, "statusFlags") & 0xFFFFFFFFFFFFFFF7}];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011131C(deviceCopy);
        }

        [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v8];
      }
    }
  }

  else if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001113DC(deviceCopy);
  }
}

- (BOOL)_clientBonjourCheckLostPairedDevice:(id)device publicID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_pairedDevices objectForKeyedSubscript:dCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_pairedDevices setObject:0 forKeyedSubscript:dCopy];
    [v8 removeBonjourDevice:deviceCopy];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011141C(deviceCopy);
    }

    [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v8];
  }

  return v8 != 0;
}

- (void)_clientBonjourReevaluateAllDevices
{
  devices = [(CUBonjourBrowser *)self->_bonjourBrowser devices];
  if ([devices count] && !self->_bonjourReevaluateTimer)
  {
    v4 = mach_absolute_time();
    if (v4 >= self->_bonjourReevaluateNextTicks)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001114DC(devices);
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = devices;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(RPCompanionLinkDaemon *)self _clientBonjourFoundDevice:*(*(&v16 + 1) + 8 * i) reevaluate:1, v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v12);
      }

      v15 = mach_absolute_time();
      self->_bonjourReevaluateNextTicks = SecondsToUpTicks() + v15;
    }

    else
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v4))
        {
          sub_100111520(v4, v5, v6);
        }
      }

      v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      bonjourReevaluateTimer = self->_bonjourReevaluateTimer;
      self->_bonjourReevaluateTimer = v7;
      v9 = v7;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100026158;
      handler[3] = &unk_1001AB488;
      handler[4] = v9;
      handler[5] = self;
      dispatch_source_set_event_handler(v9, handler);
      CUDispatchTimerSet();
      dispatch_activate(v9);
    }
  }
}

- (void)_clientBonjourResetReevaluationRateLimit
{
  selfCopy = self;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011153C(self, a2, v2);
    }
  }

  selfCopy->_bonjourReevaluateNextTicks = 0;
  bonjourReevaluateTimer = selfCopy->_bonjourReevaluateTimer;
  if (bonjourReevaluateTimer)
  {
    v6 = bonjourReevaluateTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_bonjourReevaluateTimer;
    selfCopy->_bonjourReevaluateTimer = 0;
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStarted
{
  if (!self->_bonjourBrowserAWDL)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001115B4(self, a2, v2);
      }
    }

    if (selfCopy->_needsAWDLTransaction)
    {
      v4 = +[RPWiFiP2PTransaction sharedInstance];
      [v4 activateForClient:@"Ensemble"];
    }

    v5 = objc_alloc_init(CUBonjourBrowser);
    bonjourBrowserAWDL = selfCopy->_bonjourBrowserAWDL;
    selfCopy->_bonjourBrowserAWDL = v5;

    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setChangeFlags:0xFFFFFFFFLL];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDomain:@"local."];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setInterfaceName:@"awdl0"];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setLabel:@"CLink"];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setServiceType:@"_companion-link._tcp"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002653C;
    v21[3] = &unk_1001AB438;
    v21[4] = selfCopy;
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDeviceFoundHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100026554;
    v20[3] = &unk_1001AB438;
    v20[4] = selfCopy;
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDeviceLostHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002656C;
    v19[3] = &unk_1001AB460;
    v19[4] = selfCopy;
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDeviceChangedHandler:v19];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL activate];
    v7 = selfCopy->_bonjourBrowserAWDLAssertions;
    v8 = v7;
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            v14 = +[RPAssertionTracker sharedTracker];
            [v14 startTracking:v13];
          }

          v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
        }

        while (v10);
      }
    }
  }
}

- (id)_clientShouldConnectOverBonjour:(id)bonjour device:(id)device identities:(id)identities
{
  bonjourCopy = bonjour;
  deviceCopy = device;
  identitiesCopy = identities;
  netCnx = [bonjourCopy netCnx];
  if ([netCnx present])
  {

LABEL_3:
    v11 = 0;
    goto LABEL_30;
  }

  if ([bonjourCopy needsCLink])
  {
  }

  else
  {
    needsNearbyActionV2 = [bonjourCopy needsNearbyActionV2];

    if ((needsNearbyActionV2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  identifier = [deviceCopy identifier];
  v14 = identifier;
  if (identifier)
  {
    publicIdentifier = identifier;
  }

  else
  {
    publicIdentifier = [deviceCopy publicIdentifier];
  }

  v16 = publicIdentifier;

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  if (!idsDeviceIdentifier && v16 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001115EC(bonjourCopy, v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = identitiesCopy;
  v11 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v29 = v16;
    v30 = identitiesCopy;
    v19 = *v32;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        if ([v21 type] == 15)
        {
          identifier2 = [deviceCopy identifier];
          identifier3 = [v21 identifier];
          v24 = [identifier2 isEqual:identifier3];

          if (v24)
          {
            goto LABEL_27;
          }
        }

        else
        {
          idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
          idsDeviceID = [v21 idsDeviceID];
          v27 = [idsDeviceIdentifier2 isEqual:idsDeviceID];

          if (v27)
          {
LABEL_27:
            v11 = v21;
            goto LABEL_28;
          }
        }
      }

      v11 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_28:
    v16 = v29;
    identitiesCopy = v30;
  }

LABEL_30:

  return v11;
}

- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];

  if (identifier)
  {
    txtDictionary = [deviceCopy txtDictionary];
    if (CFDictionaryGetInt64())
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011165C();
      }

      goto LABEL_135;
    }

    if ((CFDictionaryGetInt64() & 0x800) == 0)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100111980(deviceCopy);
      }

      goto LABEL_135;
    }

    CFStringGetTypeID();
    [deviceCopy setName:CFDictionaryGetTypedValue()];
    v6 = +[RPIdentityDaemon sharedIdentityDaemon];
    v7 = [v6 resolveIdentitiesForBonjourDevice:deviceCopy typeFlags:19882];
    if ([v7 count])
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v104;
LABEL_19:
        v12 = 0;
        while (1)
        {
          if (*v104 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v103 + 1) + 8 * v12);
          idsDeviceID = [v13 idsDeviceID];
          if (idsDeviceID)
          {
            break;
          }

          if ([v13 type] == 15)
          {
            idsDeviceID = [v13 identifier];
            if (idsDeviceID)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v103 objects:v113 count:16];
            if (v10)
            {
              goto LABEL_19;
            }

            goto LABEL_27;
          }
        }

        v16 = idsDeviceID;

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001116D0();
        }

        bonjourAWDLDevices = self->_bonjourAWDLDevices;
        if (!bonjourAWDLDevices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_bonjourAWDLDevices;
          self->_bonjourAWDLDevices = v18;

          bonjourAWDLDevices = self->_bonjourAWDLDevices;
        }

        v20 = [(NSMutableDictionary *)bonjourAWDLDevices objectForKeyedSubscript:v16];
        if (v20 && dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011172C();
        }

        v71 = v20;
        v73 = v6;
        v74 = txtDictionary;
        v75 = v16;
        [(NSMutableDictionary *)self->_bonjourAWDLDevices setObject:deviceCopy forKeyedSubscript:v16];
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v21 = self->_xpcConnections;
        v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v99 objects:v112 count:16];
        v72 = v7;
        if (v22)
        {
          v23 = v22;
          v24 = *v100;
LABEL_41:
          v25 = 0;
          while (1)
          {
            if (*v100 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v99 + 1) + 8 * v25);
            daemonDevice = [v26 daemonDevice];
            v28 = [(RPCompanionLinkDaemon *)self _clientShouldConnectOverBonjour:v26 device:daemonDevice identities:v8];
            if (v28)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v99 objects:v112 count:16];
              if (v23)
              {
                goto LABEL_41;
              }

              goto LABEL_47;
            }
          }

          v30 = v28;
          [v26 setBonjourDevice:deviceCopy];
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001117A0(v26);
          }

          v98 = 0;
          v29 = [(RPCompanionLinkDaemon *)self _clientCreateConnection:daemonDevice xpcCnx:v26 error:&v98];
          v31 = v98;
          if (v29)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001117E0();
            }

            v76 = deviceCopy;

            goto LABEL_57;
          }

          if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 90, "### Start connection on found AWDL device failed: %@, %{error}\n", daemonDevice, v31);
          }

          v29 = v21;
          goto LABEL_132;
        }

LABEL_47:
        v76 = deviceCopy;
        v29 = 0;
LABEL_57:

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v32 = self->_xpcConnections;
        v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v94 objects:v111 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v95;
          do
          {
            v36 = 0;
            do
            {
              if (*v95 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v94 + 1) + 8 * v36);
              daemonDevice2 = [v37 daemonDevice];
              v39 = [(RPCompanionLinkDaemon *)self _clientShouldConnectOverBonjour:v37 device:daemonDevice2 identities:v8];
              if (v39)
              {
                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011184C(v29, v37);
                }

                netCnx = [v37 netCnx];

                if (netCnx)
                {
                  netCnx2 = [v37 netCnx];
                  [netCnx2 processSendsUsingConnection:v29];
                }

                [v37 setNetCnx:v29];
                [v37 setBonjourDevice:v76];
                session = [v37 session];
                [session setCnx:v29];

                xpcCnx = [v37 xpcCnx];
                [v29 addInUseProcess:{objc_msgSend(xpcCnx, "processIdentifier")}];

                discoveryTimer = [v37 discoveryTimer];
                v45 = discoveryTimer;
                if (discoveryTimer)
                {
                  dispatch_source_cancel(discoveryTimer);
                  [v37 setDiscoveryTimer:0];
                  [v37 setNeedsCLink:0];
                  [v37 setNeedsNearbyActionV2:0];
                }
              }

              v36 = v36 + 1;
            }

            while (v34 != v36);
            v46 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v94 objects:v111 count:16];
            v34 = v46;
          }

          while (v46);
        }

        daemonDevice = [(RPCompanionLinkDaemon *)self _xpcConnections:self->_xpcConnections withControlFlags:0x1000000000000];
        v47 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:v75];
        v30 = v47;
        if (!v47)
        {
          v30 = objc_alloc_init(RPCompanionLinkDevice);
        }

        v48 = [v30 updateWithBonjourDevice:v76];
        [v30 setStatusFlags:{objc_msgSend(v30, "statusFlags") & 0xFFFFFFFFFFFFFFFBLL}];
        [v30 setStatusFlags:{objc_msgSend(v30, "statusFlags") | 8}];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v49 = v8;
        v50 = [v49 countByEnumeratingWithState:&v90 objects:v110 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v91;
          do
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v91 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v48 = ([v30 updateTrustStatusFlagsWithIdentity:*(*(&v90 + 1) + 8 * i)] | v48);
            }

            v51 = [v49 countByEnumeratingWithState:&v90 objects:v110 count:16];
          }

          while (v51);
        }

        if (([v30 statusFlags] & 0x80000000) == 0)
        {
          deviceCopy = v76;
          if (v47)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100111940(v30);
            }

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v54 = daemonDevice;
            v55 = [v54 countByEnumeratingWithState:&v78 objects:v107 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v79;
              do
              {
                for (j = 0; j != v56; j = j + 1)
                {
                  if (*v79 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  [*(*(&v78 + 1) + 8 * j) reportLostDevice:v30];
                }

                v56 = [v54 countByEnumeratingWithState:&v78 objects:v107 count:16];
              }

              while (v56);
            }

            [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices setObject:0 forKeyedSubscript:v75];
          }

          goto LABEL_127;
        }

        deviceCopy = v76;
        authenticatedAWDLPairingModeDevices = self->_authenticatedAWDLPairingModeDevices;
        if (!authenticatedAWDLPairingModeDevices)
        {
          v60 = objc_alloc_init(NSMutableDictionary);
          v61 = self->_authenticatedAWDLPairingModeDevices;
          self->_authenticatedAWDLPairingModeDevices = v60;

          authenticatedAWDLPairingModeDevices = self->_authenticatedAWDLPairingModeDevices;
        }

        [(NSMutableDictionary *)authenticatedAWDLPairingModeDevices setObject:v30 forKeyedSubscript:v75];
        if (v47 && v48)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001118C0(v30);
          }

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v62 = daemonDevice;
          v63 = [v62 countByEnumeratingWithState:&v86 objects:v109 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v87;
            do
            {
              for (k = 0; k != v64; k = k + 1)
              {
                if (*v87 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                [*(*(&v86 + 1) + 8 * k) reportChangedDevice:v30 changes:v48];
              }

              v64 = [v62 countByEnumeratingWithState:&v86 objects:v109 count:16];
            }

            while (v64);
          }
        }

        else
        {
          if (v47)
          {
LABEL_127:
            [(RPCompanionLinkDaemon *)self _updateAssertions];
LABEL_132:

            v6 = v73;
            txtDictionary = v74;
            v7 = v72;
            v15 = v75;
            goto LABEL_133;
          }

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100111900(v30);
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v62 = daemonDevice;
          v67 = [v62 countByEnumeratingWithState:&v82 objects:v108 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v83;
            do
            {
              for (m = 0; m != v68; m = m + 1)
              {
                if (*v83 != v69)
                {
                  objc_enumerationMutation(v62);
                }

                [*(*(&v82 + 1) + 8 * m) reportFoundDevice:v30 outReason:0];
              }

              v68 = [v62 countByEnumeratingWithState:&v82 objects:v108 count:16];
            }

            while (v68);
          }
        }

        goto LABEL_127;
      }

LABEL_27:

      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v15 = CUDescriptionWithLevel();
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 90, "Ignoring AWDL device as ids identifier is not found: %@\n", v15);
LABEL_133:
      }
    }

    else
    {
      [(RPCompanionLinkDaemon *)self _clientBonjourFoundUnauthDevice:deviceCopy isAWDLDevice:1];
    }

LABEL_135:
    goto LABEL_136;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001119E0(deviceCopy);
  }

LABEL_136:
}

- (void)_clientBonjourAWDLBrowserLostDevice:(id)device
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:deviceCopy];
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 resolveIdentityForBonjourDevice:deviceCopy typeFlags:19882];
  v6 = v5;
  if (v5)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (!idsDeviceID)
    {
      if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      v9 = CUDescriptionWithLevel();
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserLostDevice:]", 90, "Ignoring lost AWDL device with missing IDS device ID: %@\n", v9);
      goto LABEL_26;
    }

    v8 = [(NSMutableDictionary *)self->_bonjourAWDLDevices objectForKeyedSubscript:idsDeviceID];
    v9 = v8;
    if (!v8)
    {
      if (sub_100111B68(deviceCopy, 0, &v19, &v20))
      {
        v9 = v20;
        goto LABEL_26;
      }

      v12 = v19;
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }

    identifier = [v8 identifier];
    identifier2 = [deviceCopy identifier];
    v12 = identifier;
    v13 = identifier2;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if ((v12 != 0) == (v13 == 0))
      {

LABEL_40:
        sub_100111A40(v14, v12);
LABEL_24:

        goto LABEL_25;
      }

      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111ABC();
    }

    [(NSMutableDictionary *)self->_bonjourAWDLDevices setObject:0 forKeyedSubscript:idsDeviceID];
    v16 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:idsDeviceID];
    v17 = v16;
    if (v16)
    {
      [v16 setStatusFlags:{objc_msgSend(v16, "statusFlags") & 0xFFFFFFFF7FFFFFFFLL}];
      if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100111B28(v17);
      }

      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v17];
      [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices setObject:0 forKeyedSubscript:idsDeviceID];
    }

    goto LABEL_24;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    idsDeviceID = CUDescriptionWithLevel();
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserLostDevice:]", 30, "Ignoring lost unresolved AWDL device: %@\n", idsDeviceID);
LABEL_27:
  }
}

- (void)_clientConnectionStart:(id)start controlFlags:(unint64_t)flags uniqueID:(id)d identity:(id)identity
{
  startCopy = start;
  dCopy = d;
  identityCopy = identity;
  v13 = [(NSMutableDictionary *)self->_tcpClientConnections count];
  v14 = &v13[[(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]];
  if (v14 >= self->_prefMaxConnectionCount)
  {
    if (dword_1001D3228 <= 60 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111C18(v14, startCopy);
    }
  }

  else
  {
    if (identityCopy)
    {
      flagsCopy = flags | 0x80;
    }

    else
    {
      flagsCopy = flags;
    }

    v16 = objc_alloc_init(RPConnection);
    [v16 setBonjourPeerDevice:startCopy];
    v17 = +[RPCloudDaemon sharedCloudDaemon];
    [v16 setCloudDaemon:v17];

    [v16 setControlFlags:flagsCopy];
    [v16 setDispatchQueue:self->_dispatchQueue];
    [v16 setHomeKitManager:self->_homeKitManager];
    [v16 setIdentityResolved:identityCopy];
    v18 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v16 setIdentityDaemon:v18];

    v19 = [NSString alloc];
    v20 = self->_cnxIDLast + 1;
    self->_cnxIDLast = v20;
    v21 = [v19 initWithFormat:@"%@Cnx-%u", @"CLink", v20];
    [v16 setLabel:v21];

    [v16 setLocalDeviceInfo:self->_localDeviceInfo];
    [v16 setNetLinkManager:self->_netLinkManager];
    [v16 setPeerIdentifier:dCopy];
    [v16 setPreferredIdentityType:{objc_msgSend(identityCopy, "type")}];
    [v16 setPresent:1];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100027D0C;
    v32[3] = &unk_1001AB130;
    v32[4] = self;
    v32[5] = v16;
    v22 = dCopy;
    v33 = v22;
    [v16 setInvalidationHandler:v32];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100027D4C;
    v31[3] = &unk_1001AB488;
    v31[4] = self;
    v31[5] = v16;
    [v16 setPeerUpdatedHandler:v31];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100027DC4;
    v30[3] = &unk_1001AB4F0;
    v30[4] = self;
    v30[5] = v16;
    [v16 setReceivedEventHandler:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100027DE0;
    v29[3] = &unk_1001AB518;
    v29[4] = self;
    v29[5] = v16;
    [v16 setReceivedRequestHandler:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100027E00;
    v28[3] = &unk_1001AB540;
    v28[4] = self;
    v28[5] = v16;
    [v16 setStateChangedHandler:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100027E10;
    v27[3] = &unk_1001AB488;
    v27[4] = v16;
    v27[5] = self;
    [v16 setHomeKitUserIdentifierHandler:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100027EA8;
    v26[3] = &unk_1001AB488;
    v26[4] = self;
    v26[5] = v16;
    [v16 setProxyDeviceUpdateHandler:v26];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111CE0(startCopy, v22, v16);
    }

    tcpClientConnections = self->_tcpClientConnections;
    if (!tcpClientConnections)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      v25 = self->_tcpClientConnections;
      self->_tcpClientConnections = v24;

      tcpClientConnections = self->_tcpClientConnections;
    }

    [(NSMutableDictionary *)tcpClientConnections setObject:v16 forKeyedSubscript:v22];
    [v16 activate];
    [(RPCompanionLinkDaemon *)self _updateAssertions];
  }
}

- (BOOL)_clientConnectionStartOnDemand:(id)demand xpcCnx:(id)cnx error:(id *)error
{
  v6 = [(RPCompanionLinkDaemon *)self _clientCreateConnection:demand xpcCnx:cnx error:error];
  if (v6)
  {
    [(RPCompanionLinkDaemon *)self _updateAssertions];
  }

  return v6 != 0;
}

- (id)_clientCreateConnection:(id)connection xpcCnx:(id)cnx error:(id *)error
{
  connectionCopy = connection;
  cnxCopy = cnx;
  identifier = [connectionCopy identifier];
  if (!identifier)
  {
    v41 = RPErrorF(4294960588, "No identifier for on-demand device", v10, v11, v12, v13, v14, v15, v95);
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111E9C(connectionCopy, v41);
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else if (!error)
    {
LABEL_14:

      v43 = 0;
      goto LABEL_122;
    }

    v42 = v41;
    *error = v41;
    goto LABEL_14;
  }

  client = [cnxCopy client];
  v24 = client;
  if (client)
  {
    controlFlags = [client controlFlags];
    netCnx = [cnxCopy netCnx];
    if (!netCnx)
    {
      netCnx = objc_alloc_init(RPConnection);
      appID = [v24 appID];
      [netCnx setAppID:appID];

      [netCnx setDispatchQueue:self->_dispatchQueue];
      v28 = +[RPIdentityDaemon sharedIdentityDaemon];
      [netCnx setIdentityDaemon:v28];

      [cnxCopy setNetCnx:netCnx];
    }

    xpcCnx = [cnxCopy xpcCnx];
    [netCnx addInUseProcess:{objc_msgSend(xpcCnx, "processIdentifier")}];

    ipAddress = [connectionCopy ipAddress];

    if (ipAddress)
    {
      ipAddress2 = [connectionCopy ipAddress];
      [netCnx setDestinationString:ipAddress2];
    }

    else
    {
      bonjourDevice = [connectionCopy bonjourDevice];
      if (bonjourDevice || ([cnxCopy bonjourDevice], (bonjourDevice = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v98 = controlFlags;
        identifier2 = bonjourDevice;
        v99 = 0;
        v40 = "Infra";
        goto LABEL_24;
      }

      if ((controlFlags & 0x400000) == 0 && ((controlFlags & 0x20000) != 0 || GestaltGetDeviceClass() != 6))
      {
        v77 = [(RPCompanionLinkDaemon *)self _findMatchingAWDLBonjourDevice:connectionCopy];
        if (v77)
        {
          v98 = controlFlags;
          identifier2 = v77;
          [cnxCopy setNeedsCLink:1];
          v99 = 0;
          v40 = "AWDL";
          goto LABEL_24;
        }
      }
    }

    ipAddress3 = [connectionCopy ipAddress];

    if (ipAddress3)
    {
      v98 = controlFlags;
      identifier2 = 0;
      v40 = "Infra";
      v99 = 1;
LABEL_24:
      v47 = [(NSMutableDictionary *)self->_tcpClientConnections count];
      if (&v47[[(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]] < self->_prefMaxConnectionCount)
      {
        goto LABEL_25;
      }

      v65 = "Too many existing TCP connections";
      goto LABEL_51;
    }

    if ((controlFlags & 0x100) != 0)
    {
      v40 = "ForceL2CAP";
      if (!"ForceL2CAP")
      {
        goto LABEL_71;
      }
    }

    else if (([connectionCopy statusFlags] & 0x200) != 0)
    {
      v122 = 0;
      v95 = &v122;
      v96 = 0;
      SocketGetInterfaceInfo();
      v40 = ((v122 << 63 >> 63) & "NoLocalAWDL");
      if (!v40)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v40 = "NoWiFiP2P";
      if (!"NoWiFiP2P")
      {
        goto LABEL_71;
      }
    }

    if ((controlFlags & 0x20000000000) == 0)
    {
      v98 = controlFlags;
      bleDevice = [connectionCopy bleDevice];
      identifier2 = [bleDevice identifier];

      if (!identifier2)
      {
        v67 = RPErrorF(4294960588, "No BLE device", v69, v70, v71, v72, v73, v74, v95);
        if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100111E40(connectionCopy, v67);
          if (!error)
          {
            goto LABEL_90;
          }

          goto LABEL_89;
        }

LABEL_88:
        if (!error)
        {
LABEL_90:

          goto LABEL_91;
        }

LABEL_89:
        v78 = v67;
        *error = v67;
        goto LABEL_90;
      }

      if ([(NSMutableDictionary *)self->_bleClientConnections count]< 4)
      {
        if (GestaltGetDeviceClass() == 1)
        {
          model = [connectionCopy model];
          if ([model hasPrefix:@"Watch"])
          {
            +[RPCloudDaemon sharedCloudDaemon];
            v80 = v100 = model;
            idsHasWatch = [v80 idsHasWatch];

            if (idsHasWatch)
            {
              v65 = "Phone with a paired watch can not open on-demand connection to another watch";
              v66 = 4294896150;
              goto LABEL_52;
            }
          }

          else
          {
          }
        }

        [netCnx setBleClientUseCase:{objc_msgSend(v24, "bleClientUseCase", v95, v96)}];
        [netCnx setBlePeerIdentifier:identifier2];
        if ([netCnx bleClientUseCase] == 327680)
        {
          appID2 = [v24 appID];
          [netCnx setClientBundleID:appID2];
        }

        identifier2 = 0;
        v99 = 1;
LABEL_25:
        discoveryTimer = [cnxCopy discoveryTimer];
        v55 = discoveryTimer;
        if (discoveryTimer)
        {
          dispatch_source_cancel(discoveryTimer);
          [cnxCopy setDiscoveryTimer:0];
        }

        if (v99)
        {
          v56 = 640;
        }

        else
        {
          v56 = 576;
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100111DE0(connectionCopy, v40);
        }

        if ((v99 & 1) == 0)
        {
          [netCnx setBonjourPeerDevice:identifier2];
        }

        [netCnx setClient:v24];
        [netCnx setControlFlags:v56 | v98 & 0xC08010000400];
        [netCnx setIdentifierOverride:identifier];
        v57 = [NSString alloc];
        v58 = self->_cnxIDLast + 1;
        self->_cnxIDLast = v58;
        v59 = [v57 initWithFormat:@"%@Cnx-%u", @"CLink", v58];
        [netCnx setLabel:v59];

        [netCnx setLocalDeviceInfo:self->_localDeviceInfo];
        password = [v24 password];
        [netCnx setPassword:password];

        [netCnx setPeerIdentifier:identifier];
        [netCnx setPresent:1];
        [cnxCopy setNetCnx:netCnx];
        passwordType = [v24 passwordType];
        if (passwordType)
        {
          v62 = passwordType;
          if (passwordType != 3)
          {
            [netCnx setPasswordType:passwordType];
            if (([v24 internalAuthFlags] & 8) != 0)
            {
              v120[0] = _NSConcreteStackBlock;
              v120[1] = 3221225472;
              v120[2] = sub_100028B34;
              v120[3] = &unk_1001AB2C8;
              v121 = cnxCopy;
              [netCnx setAuthCompletionHandler:v120];
            }

            if (([v24 internalAuthFlags] & 4) != 0)
            {
              v117[0] = _NSConcreteStackBlock;
              v117[1] = 3221225472;
              v117[2] = sub_100028B40;
              v117[3] = &unk_1001AB568;
              v118 = cnxCopy;
              v119 = netCnx;
              [v119 setPromptForPasswordHandler:v117];
            }
          }
        }

        statusFlags = [connectionCopy statusFlags];
        if ((statusFlags & 0x80000) != 0)
        {
          v64 = 2;
        }

        else if ((statusFlags & 0x8000) != 0)
        {
          v64 = 8;
        }

        else if ((statusFlags & 0x2000) != 0)
        {
          v64 = 9;
        }

        else if ((statusFlags & 0x4000) != 0)
        {
          v64 = 4;
        }

        else if ((statusFlags & 0x20000) != 0)
        {
          v64 = 6;
        }

        else if ((statusFlags & 0x4000000000) != 0)
        {
          v64 = 15;
        }

        else if (statusFlags & 0x2000000000 | v98 & 0x800000000000)
        {
          v64 = 13;
        }

        else
        {
          v64 = 0;
        }

        if ((v98 & 0x8000000000) != 0)
        {
          v82 = 8;
        }

        else
        {
          v82 = v64;
        }

        if (v82)
        {
          [netCnx setPreferredIdentityType:?];
        }

        [(RPCompanionLinkDaemon *)self _configureConnectionForPairing:netCnx];
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_100028B94;
        v114[3] = &unk_1001AB130;
        v114[4] = self;
        v83 = netCnx;
        v115 = v83;
        v116 = identifier;
        [v83 setInvalidationHandler:v114];
        v112[0] = _NSConcreteStackBlock;
        v112[1] = 3221225472;
        v112[2] = sub_100028D00;
        v112[3] = &unk_1001AB4F0;
        v112[4] = self;
        v84 = v83;
        v113 = v84;
        [v84 setReceivedEventHandler:v112];
        v110[0] = _NSConcreteStackBlock;
        v110[1] = 3221225472;
        v110[2] = sub_100028D1C;
        v110[3] = &unk_1001AB518;
        v110[4] = self;
        v85 = v84;
        v111 = v85;
        [v85 setReceivedRequestHandler:v110];
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_100028D3C;
        v106[3] = &unk_1001AB590;
        v107 = connectionCopy;
        selfCopy = self;
        v86 = v85;
        v109 = v86;
        [v86 setStateChangedHandler:v106];
        v103[0] = _NSConcreteStackBlock;
        v103[1] = 3221225472;
        v103[2] = sub_100028DB0;
        v103[3] = &unk_1001AB488;
        v87 = v86;
        v104 = v87;
        selfCopy2 = self;
        [v87 setHomeKitUserIdentifierHandler:v103];
        v101[0] = _NSConcreteStackBlock;
        v101[1] = 3221225472;
        v101[2] = sub_100028E48;
        v101[3] = &unk_1001AB488;
        v101[4] = self;
        v88 = v87;
        v102 = v88;
        [v88 setProxyDeviceUpdateHandler:v101];
        if (v99)
        {
          bleClientConnections = self->_bleClientConnections;
          p_bleClientConnections = &self->_bleClientConnections;
          tcpOnDemandClientConnections = bleClientConnections;
          if (!bleClientConnections)
          {
            goto LABEL_118;
          }
        }

        else
        {
          tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;
          if (!tcpOnDemandClientConnections)
          {
            p_bleClientConnections = &self->_tcpOnDemandClientConnections;
LABEL_118:
            v92 = objc_alloc_init(NSMutableDictionary);
            v93 = *p_bleClientConnections;
            *p_bleClientConnections = v92;

            tcpOnDemandClientConnections = *p_bleClientConnections;
          }
        }

        [(NSMutableDictionary *)tcpOnDemandClientConnections setObject:v88 forKeyedSubscript:identifier];
        [v88 activate];
        v43 = v88;

        goto LABEL_120;
      }

      v65 = "Too many existing BLE connections";
LABEL_51:
      v66 = 4294896146;
LABEL_52:
      v67 = RPErrorF(v66, v65, v48, v49, v50, v51, v52, v53, v95);
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientCreateConnection:xpcCnx:error:]", 90, "### Start on-demand connection failed: %@, %{error}\n", connectionCopy, v67);
        if (!error)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      goto LABEL_88;
    }

LABEL_71:
    if ((controlFlags & 0x400000) == 0)
    {
      [(RPCompanionLinkDaemon *)self _clientOnDemandDiscoveryStart:connectionCopy xpcCnx:cnxCopy];
      v43 = netCnx;
LABEL_120:

      goto LABEL_121;
    }

    v75 = RPErrorF(4294960539, "Skip on-demand connection discovery", v33, v34, v35, v36, v37, v38, v95);
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111DAC();
      if (!error)
      {
        goto LABEL_78;
      }
    }

    else if (!error)
    {
LABEL_78:

LABEL_91:
      v43 = 0;
      goto LABEL_120;
    }

    v76 = v75;
    *error = v75;
    goto LABEL_78;
  }

  v44 = RPErrorF(4294960534, "No client for on-demand connection", v18, v19, v20, v21, v22, v23, v95);
  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100111E9C(connectionCopy, v44);
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (error)
  {
LABEL_19:
    v45 = v44;
    *error = v44;
  }

LABEL_20:

  v43 = 0;
LABEL_121:

LABEL_122:

  return v43;
}

- (void)_clientConnectionEnded:(id)ended uniqueID:(id)d
{
  endedCopy = ended;
  dCopy = d;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionEnded:uniqueID:]", 30, "Connection ended: UID %@, Cnx %@\n", dCopy, endedCopy);
  }

  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy];
  v7 = [(NSMutableDictionary *)self->_bleClientConnections objectForKeyedSubscript:dCopy];
  if (v7 == endedCopy)
  {
    [(NSMutableDictionary *)self->_bleClientConnections setObject:0 forKeyedSubscript:dCopy];
  }

  v8 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:dCopy];

  if (v8 == endedCopy)
  {
    [(NSMutableDictionary *)self->_tcpClientConnections setObject:0 forKeyedSubscript:dCopy];
  }

  [(RPCompanionLinkDaemon *)self _updateAssertions];
  [(RPCompanionLinkDaemon *)self _update];
}

- (void)_clientOnDemandConnectionEnded:(id)ended uniqueID:(id)d
{
  endedCopy = ended;
  dCopy = d;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientOnDemandConnectionEnded:uniqueID:]", 30, "On demand connection ended: UID %@, Cnx %@\n", dCopy, endedCopy);
  }

  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy];
  [(RPCompanionLinkDaemon *)self _sessionHandlePeerDisconnect:endedCopy];
  bonjourPeerDevice = [endedCopy bonjourPeerDevice];

  if (bonjourPeerDevice)
  {
    v8 = [(NSMutableDictionary *)self->_tcpOnDemandClientConnections objectForKeyedSubscript:dCopy];
    if (v8 != endedCopy)
    {
      goto LABEL_10;
    }

    p_tcpOnDemandClientConnections = &self->_tcpOnDemandClientConnections;
  }

  else
  {
    p_tcpOnDemandClientConnections = &self->_bleClientConnections;
    v8 = [(NSMutableDictionary *)self->_bleClientConnections objectForKeyedSubscript:dCopy];
    if (v8 != endedCopy)
    {
      goto LABEL_10;
    }
  }

  [(NSMutableDictionary *)*p_tcpOnDemandClientConnections setObject:0 forKeyedSubscript:dCopy];
LABEL_10:

  [(RPCompanionLinkDaemon *)self _updateAssertions];
  [(RPCompanionLinkDaemon *)self _update];
}

- (BOOL)_clientConnectionStartUnauth:(id)unauth client:(id)client publicID:(id)d xpcCnx:(id)cnx error:(id *)error
{
  unauthCopy = unauth;
  clientCopy = client;
  dCopy = d;
  cnxCopy = cnx;
  bonjourDevice = [unauthCopy bonjourDevice];
  if (!bonjourDevice)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001120EC(unauthCopy);
      if (!error)
      {
        goto LABEL_30;
      }
    }

    else if (!error)
    {
      goto LABEL_30;
    }

    v41 = "No Bonjour Device";
    v42 = 4294960591;
LABEL_25:
    RPErrorF(v42, v41, v16, v17, v18, v19, v20, v21, prefMaxConnectionCount);
    *error = v40 = 0;
    goto LABEL_31;
  }

  v23 = [(NSMutableDictionary *)self->_tcpClientConnections count];
  v24 = &v23[[(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]];
  if (v24 >= self->_prefMaxConnectionCount)
  {
    if (dword_1001D3228 <= 60 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111F60(v24, unauthCopy);
      if (error)
      {
        goto LABEL_24;
      }
    }

    else if (error)
    {
LABEL_24:
      prefMaxConnectionCount = self->_prefMaxConnectionCount;
      v41 = "At connection limit %d";
      v42 = 4294960567;
      goto LABEL_25;
    }

LABEL_30:
    v40 = 0;
    goto LABEL_31;
  }

  v25 = objc_alloc_init(RPConnection);
  appID = [clientCopy appID];
  [v25 setAppID:appID];

  [v25 setBonjourPeerDevice:bonjourDevice];
  [v25 setClient:clientCopy];
  [v25 setControlFlags:{objc_msgSend(clientCopy, "controlFlags") | objc_msgSend(v25, "controlFlags") | 0x200}];
  [v25 setDispatchQueue:self->_dispatchQueue];
  [v25 setFlags:1];
  v27 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v25 setIdentityDaemon:v27];

  v28 = [NSString alloc];
  v29 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v29;
  v30 = [v28 initWithFormat:@"%@Cnx-%u", @"CLink", v29];
  [v25 setLabel:v30];

  [v25 setLocalDeviceInfo:self->_localDeviceInfo];
  [v25 setNetLinkManager:self->_netLinkManager];
  password = [clientCopy password];
  [v25 setPassword:password];

  [v25 setPeerIdentifier:dCopy];
  [v25 setPresent:1];
  [cnxCopy setNetCnx:v25];
  [(RPCompanionLinkDaemon *)self _configureConnectionForPairing:v25];
  passwordType = [clientCopy passwordType];
  if (passwordType)
  {
    v33 = passwordType;
    if (passwordType != 3)
    {
      allowedMACAddresses = [clientCopy allowedMACAddresses];
      [v25 setAllowedMACAddresses:allowedMACAddresses];

      pairSetupACL = [clientCopy pairSetupACL];
      [v25 setPairSetupACL:pairSetupACL];

      [v25 setPasswordType:v33];
      if (([clientCopy internalAuthFlags] & 8) != 0)
      {
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000297C0;
        v56[3] = &unk_1001AB2C8;
        v57 = cnxCopy;
        [v25 setAuthCompletionHandler:v56];
      }

      if (([clientCopy internalAuthFlags] & 4) != 0)
      {
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1000297CC;
        v53[3] = &unk_1001AB568;
        v54 = cnxCopy;
        v55 = v25;
        [v25 setPromptForPasswordHandler:v53];
      }
    }
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100029820;
  v50[3] = &unk_1001AB5B8;
  v50[4] = self;
  v50[5] = v25;
  v36 = dCopy;
  v51 = v36;
  v52 = cnxCopy;
  [v25 setInvalidationHandler:v50];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100029860;
  v49[3] = &unk_1001AB4F0;
  v49[4] = self;
  v49[5] = v25;
  [v25 setReceivedEventHandler:v49];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10002987C;
  v48[3] = &unk_1001AB518;
  v48[4] = self;
  v48[5] = v25;
  [v25 setReceivedRequestHandler:v48];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10002989C;
  v47[3] = &unk_1001AB540;
  v47[4] = self;
  v47[5] = v25;
  [v25 setStateChangedHandler:v47];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000298AC;
  v46[3] = &unk_1001AB488;
  v46[4] = v25;
  v46[5] = self;
  [v25 setHomeKitUserIdentifierHandler:v46];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100029944;
  v45[3] = &unk_1001AB488;
  v45[4] = self;
  v45[5] = v25;
  [v25 setProxyDeviceUpdateHandler:v45];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112028(unauthCopy, v36, v25);
  }

  tcpClientConnections = self->_tcpClientConnections;
  if (!tcpClientConnections)
  {
    v38 = objc_alloc_init(NSMutableDictionary);
    v39 = self->_tcpClientConnections;
    self->_tcpClientConnections = v38;

    tcpClientConnections = self->_tcpClientConnections;
  }

  [(NSMutableDictionary *)tcpClientConnections setObject:v25 forKeyedSubscript:v36];
  [v25 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];

  v40 = 1;
LABEL_31:

  return v40;
}

- (void)_clientConnectionEndedUnauth:(id)unauth publicID:(id)d
{
  unauthCopy = unauth;
  dCopy = d;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionEndedUnauth:publicID:]", 30, "Connection ended unauth: PID %@, Cnx %@\n", dCopy, unauthCopy);
  }

  v7 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:dCopy];
  if (v7 == unauthCopy)
  {
    [(NSMutableDictionary *)self->_tcpClientConnections setObject:0 forKeyedSubscript:dCopy];
  }

  [(RPCompanionLinkDaemon *)self _updateAssertions];
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateAllDevices];
}

- (void)_clientOnDemandDiscoveryStart:(id)start xpcCnx:(id)cnx
{
  startCopy = start;
  cnxCopy = cnx;
  discoveryTimer = [cnxCopy discoveryTimer];

  if (!discoveryTimer)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001121F0(startCopy);
    }

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [cnxCopy setDiscoveryTimer:v10];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100029CBC;
    v21 = &unk_1001AB5B8;
    v22 = v10;
    selfCopy = self;
    v11 = startCopy;
    v24 = v11;
    v12 = cnxCopy;
    v25 = v12;
    dispatch_source_set_event_handler(v10, &v18);
    CUDispatchTimerSet();
    dispatch_activate(v10);
    client = [v12 client];
    [v11 setNearbyActionV2Type:{-[RPCompanionLinkDaemon _controlFlagsToNearbyActionType:](self, "_controlFlagsToNearbyActionType:", objc_msgSend(client, "controlFlags"))}];

    bleTargetData = [v11 bleTargetData];
    if (bleTargetData && [v11 nearbyActionV2Type])
    {
      [v12 setNeedsNearbyActionV2:1];
      bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
      p_bleNearbyActionV2Device = &self->_bleNearbyActionV2Device;
      if (!bleNearbyActionV2Device)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v12 setNeedsCLink:1];
      bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
      p_bleNearbyActionV2Device = &self->_bleNeedsCLinkDevice;
      if (!bleNeedsCLinkDevice)
      {
LABEL_14:
        objc_storeStrong(p_bleNearbyActionV2Device, start);
      }
    }

    goto LABEL_16;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001121B0(startCopy);
  }

LABEL_16:
}

- (void)_clientOnDemandAWDLDiscoveryStartForXPC:(id)c
{
  cCopy = c;
  client = [cCopy client];
  [client awdlGuestDiscoveryTimeout];
  v7 = v6;

  discoveryTimer = [cCopy discoveryTimer];

  if (discoveryTimer)
  {
    if (dword_1001D3228 <= 90)
    {
      if (dword_1001D3228 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_100112230(v9, v10, v11);
      }
    }

    discoveryTimer2 = [cCopy discoveryTimer];
    dispatch_source_cancel(discoveryTimer2);

    [cCopy setDiscoveryTimer:0];
    [cCopy setNeedsCLink:0];
  }

  v13 = fmax(v7, 15.0);
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011224C(v13);
  }

  self->_enableAWDLGuestDiscovery = 1;
  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  [cCopy setDiscoveryTimer:v14];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100029EDC;
  handler[3] = &unk_1001AB130;
  handler[4] = v14;
  v17 = cCopy;
  selfCopy = self;
  v15 = cCopy;
  dispatch_source_set_event_handler(v14, handler);
  CUDispatchTimerSet();
  dispatch_activate(v14);
  [v15 setNeedsCLink:1];
  [(RPCompanionLinkDaemon *)self _update];
}

- (void)_clientOnDemandAWDLDiscoveryTimedOutForDevice:(id)device xpcCnx:(id)cnx
{
  deviceCopy = device;
  cnxCopy = cnx;
  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001122A8(deviceCopy);
  }

  [cnxCopy setDiscoveryTimer:0];
  [cnxCopy setNeedsCLink:0];
  [cnxCopy setNeedsNearbyActionV2:0];
  daemonDevice = [cnxCopy daemonDevice];
  v8 = [daemonDevice isEqualToDevice:self->_bleNearbyActionV2Device];

  if (v8)
  {
    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserRestart];
  }

  else
  {
    daemonDevice2 = [cnxCopy daemonDevice];
    v10 = [daemonDevice2 isEqualToDevice:self->_bleNeedsCLinkDevice];

    if (v10)
    {
      [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserRestart];
    }
  }

  netCnx = [cnxCopy netCnx];
  v18 = RPErrorF(4294960574, "On-demand discovery timeout", v12, v13, v14, v15, v16, v17, v19);
  [netCnx invalidateWithError:v18];

  [cnxCopy setNetCnx:0];
  [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
}

- (void)_clientPurgeUnauthAWDLDevices
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_unauthDevices;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v9, v13];
        v11 = v10;
        if (v10 && ([v10 statusFlags] & 8) != 0)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001122E8(v11);
          }

          [v11 setStatusFlags:{objc_msgSend(v11, "statusFlags") & 0xFFFFFFFFFFFFFFF3}];
          [v3 addObject:v9];
          [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v12 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v12;
    }

    while (v12);
  }

  [(NSMutableDictionary *)self->_unauthDevices removeObjectsForKeys:v3];
}

- (id)logDictionaryOfStringArrays:(id)arrays withPrefix:(id)prefix
{
  arraysCopy = arrays;
  prefixCopy = prefix;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = arraysCopy;
  v23 = [arraysCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v23)
  {
    v6 = 0;
    v7 = 0;
    v22 = *v33;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v9 = [obj objectForKeyedSubscript:?];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          v14 = v6;
          while (2)
          {
            v15 = 0;
            v16 = v14 + 1;
            v17 = v7;
            do
            {
              v6 = v16;
              if (*v29 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v18 = *(*(&v28 + 1) + 8 * v15);
              v27 = v17;
              NSAppendPrintF(&v27, "%@, ", v18);
              v7 = v27;

              if (v16 >= 0x11)
              {
                v26 = v7;
                NSAppendPrintF(&v26, " ... %d more not shown", [v10 count] - v16);
                v19 = v26;

                v7 = v19;
                goto LABEL_16;
              }

              v15 = v15 + 1;
              ++v16;
              v17 = v7;
            }

            while (v12 != v15);
            v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
            v14 = v6;
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon logDictionaryOfStringArrays:withPrefix:]", 10, "%@.%@: %@", prefixCopy, v24, v7);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v23);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_clientReportLocalDevice:(id)device xpcCnx:(id)cnx
{
  if (device)
  {
    deviceCopy = device;
    xpcCnx = [cnx xpcCnx];
    remoteObjectProxy = [xpcCnx remoteObjectProxy];
    [remoteObjectProxy companionLinkLocalDeviceUpdated:deviceCopy];
  }
}

- (void)_clientReportFoundDevice:(id)device
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportFoundDevice:deviceCopy outReason:{0, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_clientReportLostDevice:(id)device cnx:(id)cnx
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_xpcConnections;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) reportLostDevice:{deviceCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_clientReportChangedDevice:(id)device changes:(unsigned int)changes
{
  v4 = *&changes;
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
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
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:deviceCopy changes:v4 xpcCnx:*(*(&v12 + 1) + 8 * v11), v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_clientUINoteProcessPending
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000029CC;
  v15 = sub_10000317C;
  v16 = 0;
  uiNoteDevices = self->_uiNoteDevices;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002AAFC;
  v10[3] = &unk_1001AB5E0;
  v10[4] = &v11;
  [(NSMutableDictionary *)uiNoteDevices enumerateKeysAndObjectsUsingBlock:v10];
  if (v12[5])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    xpcMatchingMap = self->_xpcMatchingMap;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002AB74;
    v5[3] = &unk_1001AAF98;
    v5[4] = &v6;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v5];
    if (v7[3])
    {
      [(RPCompanionLinkDaemon *)self _clientUINoteStart:v12[5]];
    }

    else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientUINoteProcessPending]", 30, "Ignoring unregistered UINote: %@\n", v12[5]);
    }

    _Block_object_dispose(&v6, 8);
  }

  _Block_object_dispose(&v11, 8);
}

- (void)_clientUINoteStart:(id)start
{
  startCopy = start;
  _getAppleID = [(RPCompanionLinkDaemon *)self _getAppleID];
  if (_getAppleID)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112328(startCopy);
    }

    [startCopy setUiTriggered:1];
    v7 = objc_alloc_init(CUUserNotificationSession);
    uiNoteSession = self->_uiNoteSession;
    self->_uiNoteSession = v7;
    v9 = v7;

    [(CUUserNotificationSession *)v9 setBundleID:@"com.apple.RPUserNotificationAppSignIn"];
    [(CUUserNotificationSession *)v9 setCategoryID:@"RPUserNotificationAppSignIn"];
    [(CUUserNotificationSession *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CUUserNotificationSession *)v9 setFlags:1];
    effectiveIdentifier = [startCopy effectiveIdentifier];
    [(CUUserNotificationSession *)v9 setIdentifier:effectiveIdentifier];

    [(CUUserNotificationSession *)v9 setLabel:@"CLink"];
    [(CUUserNotificationSession *)v9 setTitleKey:@"APP_SIGN_IN_TITLE"];
    [(CUUserNotificationSession *)v9 setBodyKey:@"APP_SIGN_IN_BODY_FORMAT"];
    v14 = _getAppleID;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    [(CUUserNotificationSession *)v9 setBodyArguments:v11];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002ADDC;
    v12[3] = &unk_1001AB608;
    v12[4] = v9;
    v12[5] = self;
    v13 = startCopy;
    [(CUUserNotificationSession *)v9 setActionHandler:v12];
    [(CUUserNotificationSession *)v9 activate];
  }

  else
  {
    sub_100112368(dword_1001D3228 < 31, dword_1001D3228, v5);
  }
}

- (void)_clientUINoteAction:(int)action error:(id)error device:(id)device
{
  errorCopy = error;
  deviceCopy = device;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    if (action > 5)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1001AC058[action];
    }

    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientUINoteAction:error:device:]", 30, "UINote action: %s, %{error}, %@, %@\n", v9, errorCopy, self->_uiNoteSession, deviceCopy);
  }

  if (action == 1)
  {
    [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryUINoteDevice:deviceCopy];
  }

  [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
  uiNoteSession = self->_uiNoteSession;
  self->_uiNoteSession = 0;

  [(RPCompanionLinkDaemon *)self _clientUINoteProcessPending];
}

- (BOOL)triggerEnhancedDiscoveryForReason:(id)reason useCase:(unsigned int)case error:(id *)error
{
  v6 = *&case;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon triggerEnhancedDiscoveryForReason:useCase:error:]", 10, "Incoming enhanced discovery trigger for reason '%@' with use case: 0x%x\n", reasonCopy, v6);
  }

  v9 = [(RPCompanionLinkDaemon *)self _clientBLETriggerEnhancedDiscovery:reasonCopy useCase:v6 error:error];

  return v9;
}

- (BOOL)createDeviceToEndpointMappingForDeviceID:(id)d endpointUUID:(id *)iD error:(id *)error
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v15 = [(RPCompanionLinkDaemon *)self findDeviceFromID:dCopy];
  if (!v15)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001123BC(dCopy);
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      RPErrorF(4294960569, "Failed to find device for mapping", v9, v10, v11, v12, v13, v14, v21);
      *error = v17 = 0;
      goto LABEL_14;
    }

    v17 = 0;
    goto LABEL_14;
  }

  v16 = +[NSUUID UUID];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon createDeviceToEndpointMappingForDeviceID:endpointUUID:error:]", 30, "Will create mapping for device=%@ UUID=%@\n", v15, v16);
  }

  if (iD)
  {
    v18 = v16;
    *iD = v16;
  }

  v19 = +[RPNWEndpoint dduiEndpointsKey];
  v17 = [RPNWEndpoint addEndpointMapping:v15 endpointID:v16 applicationService:@"NA" discoverySessionID:v19 shouldAutomapListener:0];

LABEL_14:
  return v17;
}

- (void)_serverNearbyActionV2DiscoveryEnsureStarted
{
  if (!self->_bleNearbyActionV2Discovery)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    v7 = objc_alloc_init(RPNearbyActionV2Discovery);
    bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = v7;

    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDiscoveryFlags:0x402000000];
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B27C;
    v11[3] = &unk_1001AA970;
    v11[4] = self;
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setUpdateHandler:v11];
    v9 = self->_bleNearbyActionV2Discovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002B2BC;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(RPNearbyActionV2Discovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_serverNearbyInfoV2DiscoveryEnsureStarted
{
  if (!self->_bleNearbyInfoV2Discovery)
  {
    v13[5] = v6;
    v13[6] = v5;
    v13[9] = v3;
    v13[10] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001123FC(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(RPNearbyInfoV2Discovery);
    bleNearbyInfoV2Discovery = selfCopy->_bleNearbyInfoV2Discovery;
    selfCopy->_bleNearbyInfoV2Discovery = v8;

    [(RPNearbyInfoV2Discovery *)selfCopy->_bleNearbyInfoV2Discovery setDiscoveryType:17];
    [(RPNearbyInfoV2Discovery *)selfCopy->_bleNearbyInfoV2Discovery setDispatchQueue:selfCopy->_dispatchQueue];
    [(RPNearbyInfoV2Discovery *)selfCopy->_bleNearbyInfoV2Discovery setUseCase:131094];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002B49C;
    v13[3] = &unk_1001AB630;
    v13[4] = selfCopy;
    [(RPNearbyInfoV2Discovery *)selfCopy->_bleNearbyInfoV2Discovery setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B500;
    v12[3] = &unk_1001AB630;
    v12[4] = selfCopy;
    [(RPNearbyInfoV2Discovery *)selfCopy->_bleNearbyInfoV2Discovery setDeviceLostHandler:v12];
    v10 = selfCopy->_bleNearbyInfoV2Discovery;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B56C;
    v11[3] = &unk_1001AB2C8;
    v11[4] = selfCopy;
    [(RPNearbyInfoV2Discovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_serverBLENeedsCLinkScannerDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  idsIdentifier = [foundCopy idsIdentifier];
  if (!uUIDString)
  {
    sub_1001125D4();
    goto LABEL_42;
  }

  v8 = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices objectForKeyedSubscript:uUIDString];
  if ([foundCopy deviceActionType] != 51)
  {
    if (v8)
    {
      [(NSMutableDictionary *)self->_bleNeedsCLinkDevices setObject:0 forKeyedSubscript:uUIDString];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100112514(v8);
      }
    }

    goto LABEL_41;
  }

  bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
  if (!bleNeedsCLinkDevices)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_bleNeedsCLinkDevices;
    self->_bleNeedsCLinkDevices = v10;

    bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
  }

  [(NSMutableDictionary *)bleNeedsCLinkDevices setObject:foundCopy forKeyedSubscript:uUIDString];
  if (!v8)
  {
    v27 = uUIDString;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112594(foundCopy);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
    allValues = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices allValues];
    v13 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v13)
    {
LABEL_34:

      self = selfCopy;
      uUIDString = v27;
LABEL_40:
      v8 = 0;
      goto LABEL_41;
    }

    v14 = v13;
    v15 = *v29;
LABEL_20:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(allValues);
      }

      v17 = *(*(&v28 + 1) + 8 * v16);
      idsIdentifier2 = [v17 idsIdentifier];
      v19 = idsIdentifier;
      v20 = v19;
      if (idsIdentifier2 == v19)
      {
        break;
      }

      if ((idsIdentifier == 0) != (idsIdentifier2 != 0))
      {
        v21 = [idsIdentifier2 isEqual:v19];

        if (v21)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_32:
      if (v14 == ++v16)
      {
        v14 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v14)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

LABEL_28:
    isBLEDeviceReplaced = [v17 isBLEDeviceReplaced];

    if (isBLEDeviceReplaced)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBLENeedsCLinkScannerDeviceFound:]", 30, "Replaced NeedsCLink device %@ -> %@", v17, foundCopy);
      }

      self = selfCopy;
      v23 = selfCopy->_bleNeedsCLinkDevices;
      identifier2 = [v17 identifier];
      uUIDString2 = [identifier2 UUIDString];
      [(NSMutableDictionary *)v23 setObject:0 forKeyedSubscript:uUIDString2];

      uUIDString = v27;
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112554(foundCopy);
  }

LABEL_41:
  [(RPCompanionLinkDaemon *)self _update];

LABEL_42:
}

- (void)_serverBLENeedsCLinkScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v6 = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices objectForKeyedSubscript:uUIDString];
    if (v6)
    {
      if ([lostCopy isBLEDeviceReplaced])
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011268C(lostCopy);
        }

        [v6 setIsBLEDeviceReplaced:1];
        [(RPCompanionLinkDaemon *)self _schedulePendingLostNeedsCLinkDeviceTimer];
      }

      else
      {
        [(NSMutableDictionary *)self->_bleNeedsCLinkDevices setObject:0 forKeyedSubscript:uUIDString];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011264C(v6);
        }

        [(RPCompanionLinkDaemon *)self _update];
      }
    }
  }

  else
  {
    sub_1001126CC();
  }
}

- (void)_schedulePendingLostNeedsCLinkDeviceTimer
{
  if (!self->_pendingLostNeedsCLinkDevicesTimer)
  {
    handler[7] = v3;
    handler[8] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112744(self, a2, v2);
      }
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
    pendingLostNeedsCLinkDevicesTimer = selfCopy->_pendingLostNeedsCLinkDevicesTimer;
    selfCopy->_pendingLostNeedsCLinkDevicesTimer = v6;

    v8 = selfCopy->_pendingLostNeedsCLinkDevicesTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002BCBC;
    handler[3] = &unk_1001AA970;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(v8, handler);
    CUDispatchTimerSet();
    dispatch_activate(selfCopy->_pendingLostNeedsCLinkDevicesTimer);
  }
}

- (void)_processPendingLostNeedsCLinkDevices
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices allValues];
  v4 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if ([v9 isBLEDeviceReplaced])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100112760(v9);
          }

          bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
          identifier = [v9 identifier];
          uUIDString = [identifier UUIDString];
          [(NSMutableDictionary *)bleNeedsCLinkDevices setObject:0 forKeyedSubscript:uUIDString];

          v6 = 1;
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v13 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v13;
    }

    while (v13);

    if (v6)
    {
      [(RPCompanionLinkDaemon *)self _update];
    }
  }

  else
  {
  }
}

- (void)_serverBonjourEnsureStarted
{
  selfCopy = self;
  if (self->_bonjourAdvertiser)
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourUpdateTXT];
  }

  else if (self->_btAdvAddrData)
  {
    tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
    if (tcpListeningPort <= 0)
    {
      if (dword_1001D3228 <= 20)
      {
        if (dword_1001D3228 != -1 || (tcpListeningPort = _LogCategory_Initialize(), tcpListeningPort))
        {
          sub_1001127BC(tcpListeningPort, v5, v6);
        }
      }
    }

    else
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1 || (tcpListeningPort = _LogCategory_Initialize(), tcpListeningPort))
        {
          sub_1001127A0(tcpListeningPort, v5, v6);
        }
      }

      v7 = objc_alloc_init(CUBonjourAdvertiser);
      bonjourAdvertiser = selfCopy->_bonjourAdvertiser;
      selfCopy->_bonjourAdvertiser = v7;

      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setDispatchQueue:selfCopy->_dispatchQueue];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setDomain:@"local."];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setLabel:@"CLink"];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setPort:[(CUTCPServer *)selfCopy->_tcpServer tcpListeningPort]];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setServiceType:@"_companion-link._tcp"];
      [(RPCompanionLinkDaemon *)selfCopy _serverBonjourUpdateTXT];
      v9 = selfCopy->_bonjourAdvertiser;

      [(CUBonjourAdvertiser *)v9 activate];
    }
  }

  else if (dword_1001D3228 <= 20)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001127D8(self, a2, v2);
    }
  }
}

- (id)_serverBonjourAuthTagString
{
  v3 = self->_deviceAuthTagStr;
  if (!v3)
  {
    v4 = [(RPCompanionLinkDaemon *)self _serverBonjourAuthTagStringWithData:self->_btAdvAddrData];
    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = v4;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112810();
    }

    v3 = self->_deviceAuthTagStr;
  }

  return v3;
}

- (id)_serverBonjourAuthTagStringWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = +[RPIdentityDaemon sharedIdentityDaemon];
    v5 = [v4 identityOfSelfAndReturnError:0];

    if (v5)
    {
      v6 = [v5 authTagForData:dataCopy type:1 error:0];
      v7 = v6;
      if (v6)
      {
        v8 = NSPrintF("%.3H", [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v6, "length"));
      }

      else
      {
        v8 = 0;
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
  }

  return v8;
}

- (id)_serverBonjourTempAuthTagStringWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = +[RPIdentityDaemon sharedIdentityDaemon];
    v5 = [v4 identityOfTemporarySelfAndReturnError:0];

    if (v5)
    {
      v6 = [v5 authTagForData:dataCopy type:1 error:0];
      v7 = v6;
      if (v6)
      {
        v8 = NSPrintF("%.3H", [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v6, "length"));
      }

      else
      {
        v8 = 0;
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
  }

  return v8;
}

- (void)_serverBonjourUpdateTXT
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:0];
  _serverBonjourAuthTagString = [(RPCompanionLinkDaemon *)self _serverBonjourAuthTagString];
  if (_serverBonjourAuthTagString)
  {
    [v3 setObject:_serverBonjourAuthTagString forKeyedSubscript:@"rpAD"];
  }

  btAdvAddrStr = self->_btAdvAddrStr;
  if (btAdvAddrStr)
  {
    [v3 setObject:btAdvAddrStr forKeyedSubscript:@"rpBA"];
  }

  v6 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:0];
  v7 = v6;
  if (v6)
  {
    v8 = NSPrintF("%.3H", [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v6, "length"));
    [v3 setObject:v8 forKeyedSubscript:@"rpHN"];
  }

  DeviceClass = GestaltGetDeviceClass();
  v39 = 0;
  RPBonjourFlagsUpdateWithRPCompanionLinkFlags(&v39, [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]);
  v10 = v39;
  if (DeviceClass == 7)
  {
    v10 = v39 | 0x40000;
  }

  v11 = v10 & 0xFFFFFFFFFFBFFFFDLL;
  v12 = 2;
  if (!self->_prefCommunal)
  {
    v12 = 0;
  }

  v13 = 0x400000;
  if (!self->_prefCoreDeviceEnabled)
  {
    v13 = 0;
  }

  v14 = v13 | v12 | v11;
  v39 = v14;
  if (DeviceClass == 100)
  {
    v15 = v14 & 0xFFFFFFFFFFDFFFFFLL;
    v16 = 0x200000;
    if (!self->_prefCoreDevicePaired)
    {
      v16 = 0;
    }

    v39 = v16 | v15;
    sub_10001BA9C(100);
    goto LABEL_18;
  }

  if (sub_10001BA9C(DeviceClass))
  {
LABEL_18:
    v17 = v39 | 0x20000;
    goto LABEL_20;
  }

  v17 = v39;
LABEL_20:
  v18 = v17 & 0xFFFFFFFFFFF6DFFFLL;
  v19 = 0x80000;
  if (!self->_serverBonjourInfraPairing)
  {
    v19 = 0;
  }

  v20 = v18 | v19;
  v21 = 0x2000;
  if (!self->_prefMediaControlEnabled)
  {
    v21 = 0;
  }

  v22 = 0x10000;
  if (!self->_prefTouchEnabled)
  {
    v22 = 0;
  }

  v39 = v21 | v22 | v20;
  statusFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
  v39 = v39 & 0xFFFFFFFFFFFFBFFFLL | (((statusFlags >> 16) & 1) << 14);
  statusFlags2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
  v25 = v39 & 0xFFFFFFFFFF7FFFFFLL | (((statusFlags2 >> 34) & 1) << 23);
  v39 = v25;
  if (v25)
  {
    v26 = NSPrintF("0x%llX", v25);
    [v3 setObject:v26 forKeyedSubscript:@"rpFl"];
  }

  v27 = self->_homeKitAuthTag;

  if (v27)
  {
    bytes = [(NSData *)v27 bytes];
    v29 = [(NSData *)v27 length];
    v30 = [(NSData *)v27 length];
    v31 = NSPrintF("%.3H", bytes, v29, v30, v39);
    [v3 setObject:v31 forKeyedSubscript:@"rpHA"];
  }

  v32 = self->_homeKitRotatingID;

  if (v32)
  {
    v33 = NSPrintF("%.3H", [(NSData *)v32 bytes], [(NSData *)v32 length], [(NSData *)v32 length]);
    [v3 setObject:v33 forKeyedSubscript:@"rpHI"];
  }

  _localMediaAccessControlSetting = [(RPCompanionLinkDaemon *)self _localMediaAccessControlSetting];
  if (_localMediaAccessControlSetting - 1 >= 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = _localMediaAccessControlSetting;
  }

  v36 = NSPrintF("%d", v35);
  [v3 setObject:v36 forKeyedSubscript:@"rpMac"];

  if (self->_prefCommunal)
  {
    model = [(RPCompanionLinkDevice *)self->_localDeviceInfo model];
    if (model)
    {
      [v3 setObject:model forKeyedSubscript:@"rpMd"];
    }
  }

  [v3 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
  if ([(RPCompanionLinkDaemon *)self _serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:6])
  {
    mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaRouteIdentifier];
    if (mediaRouteIdentifier)
    {
      [v3 setObject:mediaRouteIdentifier forKeyedSubscript:@"rpMRtID"];
    }
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setTxtDictionary:v3];
}

- (void)_serverBonjourAWDLAdvertiserEnsureStarted
{
  if (self->_bonjourAWDLAdvertiser)
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
  }

  else
  {
    v3 = self->_btAdvAddrData;
    v16 = v3;
    if (v3)
    {
      tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
      if (tcpListeningPort <= 0)
      {
        if (dword_1001D3228 <= 20)
        {
          if (dword_1001D3228 != -1 || (tcpListeningPort = _LogCategory_Initialize(), tcpListeningPort))
          {
            sub_100112A18(tcpListeningPort, v7, v8);
          }
        }
      }

      else
      {
        v9 = tcpListeningPort;
        if (GestaltGetDeviceClass() != 11)
        {
          if (-[NSMutableSet count](self->_needsAWDLRequestIdentifiers, "count") || (-[RPNearbyActionV2Discovery actionV2Devices](self->_bleNearbyActionV2Discovery, "actionV2Devices"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11))
          {
            v12 = +[RPWiFiP2PTransaction sharedInstance];
            [v12 activateForClient:@"Ensemble"];
          }
        }

        v13 = objc_alloc_init(CUBonjourAdvertiser);
        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
        self->_bonjourAWDLAdvertiser = v13;

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setAdvertiseFlags:2048];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDispatchQueue:self->_dispatchQueue];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDomain:@"local."];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setInterfaceName:@"awdl0"];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setLabel:@"CLink"];
        v15 = NSPrintF("CLink-%@", v16);
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setName:v15];

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setPort:v9];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setServiceType:@"_companion-link._tcp"];
        [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001129B4(&self->_bonjourAWDLAdvertiser);
        }

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser activate];
      }
    }

    else if (dword_1001D3228 <= 20)
    {
      if (dword_1001D3228 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100112A34(v3, v4, v5);
      }
    }
  }
}

- (void)_serverBonjourAWDLAdvertiserUpdateTXT
{
  if (!self->_deviceAWDLRandomID)
  {
    v3 = NSRandomData();
    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = v3;

    if ([(NSData *)self->_deviceAWDLRandomID length]!= 6)
    {
      return;
    }
  }

  v16 = objc_alloc_init(NSMutableDictionary);
  v5 = self->_deviceAWDLRandomID;
  v6 = v5;
  if (v5)
  {
    v7 = NSPrintF("%.6a", COERCE_DOUBLE([(NSData *)v5 bytes]));
    if (v7)
    {
      [v16 setObject:v7 forKeyedSubscript:@"rpBA"];
    }

    v8 = [(RPCompanionLinkDaemon *)self _serverBonjourAuthTagStringWithData:v6];
    if (v8)
    {
      [v16 setObject:v8 forKeyedSubscript:@"rpAD"];
    }

    v9 = [(RPCompanionLinkDaemon *)self _serverBonjourTempAuthTagStringWithData:v6];
    if (v9)
    {
      [v16 setObject:v9 forKeyedSubscript:@"rpTAD"];
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserUpdateTXT]", 30, "Using Bluetooth Identifier %@ and AuthTag %@ for AWDL Bonjour advertisement\n", v7, v8);
    }

    statusFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
    v11 = 18432;
    if ((statusFlags & 0x10000) == 0)
    {
      v11 = 2048;
    }

    if (self->_bonjourAWDLAdvertiseForPairing)
    {
      v12 = v11 | 0x80000;
    }

    else
    {
      v12 = v11;
    }

    v13 = NSPrintF("0x%llX", v12);
    [v16 setObject:v13 forKeyedSubscript:@"rpFl"];

    [v16 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112A50(&self->_bonjourAWDLAdvertiseForPairing);
    }

    if (GestaltGetDeviceClass() != 4 && !self->_bonjourAWDLAdvertiseForPairing)
    {
      goto LABEL_31;
    }

    v14 = GestaltCopyAnswer();
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112AAC(v14);
      if (!v14)
      {
        goto LABEL_30;
      }
    }

    else if (!v14)
    {
LABEL_30:

LABEL_31:
      if ([(RPCompanionLinkDaemon *)self _serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:4])
      {
        mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaRouteIdentifier];
        if (mediaRouteIdentifier)
        {
          [v16 setObject:mediaRouteIdentifier forKeyedSubscript:@"rpMRtID"];
        }
      }

      [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setTxtDictionary:v16];

      goto LABEL_36;
    }

    [v16 setObject:v14 forKeyedSubscript:@"rpNm"];
    goto LABEL_30;
  }

LABEL_36:
}

- (void)_serverReceivedNeedsAWDLEvent:(id)event event:(id)a4
{
  eventCopy = event;
  v7 = a4;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = NSDictionaryGetNSNumber();
    bOOLValue = [v9 BOOLValue];

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v11 = "disable";
      if (bOOLValue)
      {
        v11 = "enable";
      }

      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverReceivedNeedsAWDLEvent:event:]", 30, "Received NeedsAWDL %s event from peer %@\n", v11, v8);
    }

    needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
    if (bOOLValue)
    {
      if (needsAWDLRequestIdentifiers)
      {
        goto LABEL_20;
      }

      v13 = +[NSMutableSet set];
      v14 = self->_needsAWDLRequestIdentifiers;
      self->_needsAWDLRequestIdentifiers = v13;

      [(NSMutableSet *)self->_needsAWDLRequestIdentifiers addObject:v8];
      if (self->_needsAWDLRequestTimer)
      {
        goto LABEL_20;
      }

      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = v15;
      v17 = v15;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10002CF00;
      handler[3] = &unk_1001AA970;
      handler[4] = self;
      dispatch_source_set_event_handler(v17, handler);
      CUDispatchTimerSet();
      dispatch_activate(v17);
    }

    else
    {
      [(NSMutableSet *)needsAWDLRequestIdentifiers removeObject:v8];
      if ([(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
      {
        goto LABEL_20;
      }

      v18 = self->_needsAWDLRequestIdentifiers;
      self->_needsAWDLRequestIdentifiers = 0;

      v19 = self->_needsAWDLRequestTimer;
      if (!v19)
      {
        goto LABEL_20;
      }

      v17 = v19;
      dispatch_source_cancel(v17);
      v20 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }

LABEL_20:
    [(RPCompanionLinkDaemon *)self _update];
    goto LABEL_21;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112AEC(eventCopy);
  }

LABEL_21:
}

- (void)_serverBTAddressChanged
{
  obj = [(CUSystemMonitor *)self->_btAdvAddrMonitor rotatingIdentifierData];
  if ([obj length] == 6 && (-[NSData isEqual:](self->_btAdvAddrData, "isEqual:", obj) & 1) == 0)
  {
    objc_storeStrong(&self->_btAdvAddrData, obj);
    v3 = obj;
    v4 = NSPrintF("%.6a", COERCE_DOUBLE([obj bytes]));
    btAdvAddrStr = self->_btAdvAddrStr;
    self->_btAdvAddrStr = v4;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112C1C(obj);
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;

    v7 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1];
    [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
    [(RPCompanionLinkDaemon *)self _update];
  }
}

- (BOOL)_serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:(int)type
{
  Int64 = CFPrefs_GetInt64();
  v5 = CFPrefs_GetInt64();
  v6 = CFPrefs_GetInt64();
  DeviceClass = GestaltGetDeviceClass();
  v8 = GestaltGetDeviceClass();
  v9 = Int64 == 1;
  if (v5 != 1)
  {
    if (DeviceClass == 4 || v8 == 100)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:]", 30, "AirPlay advertisement preferences: enabled %d, p2p %d, intraOnly %d\n", v9, v5, v6 == 1);
  }

  if (type == 6)
  {
    return DeviceClass == 4 && v9;
  }

  if (type != 4)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112C64(type);
    }

    return 0;
  }

  return DeviceClass == 4 && v9 && v6 != 1 && ((v5 ^ 1) & 1) == 0;
}

- (void)_serverTCPEnsureStarted
{
  if (!self->_tcpServer)
  {
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112CC4(self, a2, v2);
      }
    }

    v6 = objc_alloc_init(CUTCPServer);
    tcpServer = selfCopy->_tcpServer;
    selfCopy->_tcpServer = v6;

    [(CUTCPServer *)selfCopy->_tcpServer setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUTCPServer *)selfCopy->_tcpServer setFlags:13];
    [(CUTCPServer *)selfCopy->_tcpServer setLabel:@"CLink"];
    [(CUTCPServer *)selfCopy->_tcpServer setMaxConnectionCount:selfCopy->_prefMaxConnectionCount];
    [(CUTCPServer *)selfCopy->_tcpServer setNetLinkManager:selfCopy->_netLinkManager];
    [(CUTCPServer *)selfCopy->_tcpServer setConnectionPrepareHandler:&stru_1001AB6B8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002D55C;
    v12[3] = &unk_1001AB6E0;
    v12[4] = selfCopy;
    [(CUTCPServer *)selfCopy->_tcpServer setConnectionStartedHandler:v12];
    v8 = selfCopy->_tcpServer;
    v11 = 0;
    [(CUTCPServer *)v8 activateDirectAndReturnError:&v11];
    v9 = v11;
    if (v9)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100112CE0(v9);
      }

      [(CUTCPServer *)selfCopy->_tcpServer invalidate];
      v10 = selfCopy->_tcpServer;
      selfCopy->_tcpServer = 0;
    }

    else
    {
      [(RPCompanionLinkDaemon *)selfCopy _localDeviceUpdate];
    }
  }
}

- (id)_serverTCPHandleConnectionStarted:(id)started
{
  startedCopy = started;
  v5 = objc_alloc_init(RPConnection);
  [v5 setDispatchQueue:self->_dispatchQueue];
  [v5 setHomeKitManager:self->_homeKitManager];
  v6 = +[RPCloudDaemon sharedCloudDaemon];
  [v5 setCloudDaemon:v6];

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 setIdentityDaemon:v7];

  v8 = [NSString alloc];
  v9 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v9;
  v10 = [v8 initWithFormat:@"%@Cnx-%u", @"CLink", v9];
  [v5 setLabel:v10];

  [v5 setLocalDeviceInfo:self->_localDeviceInfo];
  [v5 setTcpConnection:startedCopy];
  label = [v5 label];
  [startedCopy setLabel:label];

  [(RPCompanionLinkDaemon *)self _connectionConfigureCommon:v5];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002D930;
  v23[3] = &unk_1001AB488;
  v23[4] = v5;
  v23[5] = self;
  [v5 setInvalidationHandler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002D97C;
  v22[3] = &unk_1001AB488;
  v22[4] = v5;
  v22[5] = self;
  [v5 setPeerUpdatedHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002DA10;
  v21[3] = &unk_1001AB4F0;
  v21[4] = v5;
  v21[5] = self;
  [v5 setReceivedEventHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002DAAC;
  v20[3] = &unk_1001AB518;
  v20[4] = v5;
  v20[5] = self;
  [v5 setReceivedRequestHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002DB5C;
  v19[3] = &unk_1001AB540;
  v19[4] = v5;
  v19[5] = self;
  [v5 setStateChangedHandler:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002DBB0;
  v18[3] = &unk_1001AB488;
  v18[4] = v5;
  v18[5] = self;
  [v5 setHomeKitUserIdentifierHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002DC48;
  v17[3] = &unk_1001AB488;
  v17[4] = self;
  v17[5] = v5;
  [v5 setProxyDeviceUpdateHandler:v17];
  [(RPCompanionLinkDaemon *)self _configureConnectionForPairing:v5];
  tcpServerConnections = self->_tcpServerConnections;
  if (!tcpServerConnections)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_tcpServerConnections;
    self->_tcpServerConnections = v13;

    tcpServerConnections = self->_tcpServerConnections;
  }

  [(NSMutableSet *)tcpServerConnections addObject:v5];
  [v5 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
  v15 = v5;

  return v5;
}

- (void)_configureConnectionForPairing:(id)pairing
{
  pairingCopy = pairing;
  if (_os_feature_enabled_impl())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10002DD40;
    v4[3] = &unk_1001AB748;
    v5 = pairingCopy;
    [v5 setConfigurePairingHandler:v4];
  }
}

- (void)_serverTCPHandleConnectionEnded:(id)ended
{
  endedCopy = ended;
  if (([endedCopy controlFlags] & 0x200) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_xpcConnections;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v16;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        netCnx = [v10 netCnx];
        v12 = netCnx;
        if (netCnx == endedCopy)
        {
        }

        else
        {
          session = [v10 session];
          v14 = [session cnx];

          if (v14 != endedCopy)
          {
            continue;
          }
        }

        [v10 updateErrorFlags:512];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }

  [(NSMutableSet *)self->_tcpServerConnections removeObject:endedCopy, v15];
  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_serverTCPRemoveConnectionsWithIdentifier:(id)identifier exceptConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  if (([connectionCopy clientMode] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSMutableSet *)self->_tcpServerConnections copy];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          if (v12 != connectionCopy)
          {
            peerDeviceInfo = [*(*(&v18 + 1) + 8 * v11) peerDeviceInfo];
            peerDeviceInfo2 = [connectionCopy peerDeviceInfo];
            v15 = [peerDeviceInfo isEqualToDeviceBasic:peerDeviceInfo2];

            if (v15)
            {
              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100112DBC();
              }

              [v12 setInvalidationHandled:1];
              [(RPCompanionLinkDaemon *)self _serverTCPHandleConnectionEnded:v12];
              [v12 invalidate];
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v16;
      }

      while (v16);
    }
  }
}

- (void)_bleServerEnsureStopped
{
  selfCopy = self;
  if (self->_bleServer)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100112EDC(self, a2, v2);
      }
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = selfCopy->_bleServerConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) invalidate];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)selfCopy->_bleServerConnections removeAllObjects];
  [(CUBLEServer *)selfCopy->_bleServer invalidate];
  bleServer = selfCopy->_bleServer;
  selfCopy->_bleServer = 0;
}

- (void)_bleServerHandleConnectionStarted:(id)started
{
  startedCopy = started;
  v5 = objc_alloc_init(RPConnection);
  [v5 setBleConnection:startedCopy];

  [v5 setControlFlags:512];
  [v5 setDispatchQueue:self->_dispatchQueue];
  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 setIdentityDaemon:v6];

  v7 = [NSString alloc];
  v8 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v8;
  v9 = [v7 initWithFormat:@"%@Cnx-%u", @"CLink", v8];
  [v5 setLabel:v9];

  [v5 setLocalDeviceInfo:self->_localDeviceInfo];
  [(RPCompanionLinkDaemon *)self _connectionConfigureCommon:v5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002E810;
  v18[3] = &unk_1001AB488;
  v18[4] = v5;
  v18[5] = self;
  [v5 setInvalidationHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002E85C;
  v17[3] = &unk_1001AB4F0;
  v17[4] = v5;
  v17[5] = self;
  [v5 setReceivedEventHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002E8F8;
  v16[3] = &unk_1001AB518;
  v16[4] = v5;
  v16[5] = self;
  [v5 setReceivedRequestHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002E9A8;
  v15[3] = &unk_1001AB540;
  v15[4] = v5;
  v15[5] = self;
  [v5 setStateChangedHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002E9FC;
  v14[3] = &unk_1001AB488;
  v14[4] = v5;
  v14[5] = self;
  [v5 setHomeKitUserIdentifierHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002EA94;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v5;
  [v5 setProxyDeviceUpdateHandler:v13];
  bleServerConnections = self->_bleServerConnections;
  if (!bleServerConnections)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_bleServerConnections;
    self->_bleServerConnections = v11;

    bleServerConnections = self->_bleServerConnections;
  }

  [(NSMutableSet *)bleServerConnections addObject:v5];
  [v5 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_bleServerHandleConnectionEnded:(id)ended
{
  bleServerConnections = self->_bleServerConnections;
  endedCopy = ended;
  [(NSMutableSet *)bleServerConnections removeObject:endedCopy];
  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy];

  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_btPipeSetup:(id)setup withPriority:(int)priority
{
  v4 = *&priority;
  setupCopy = setup;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112EF8(v4);
  }

  [setupCopy setDispatchQueue:self->_dispatchQueue];
  [setupCopy setLabel:@"CLink"];
  [setupCopy setPriority:v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002ECB0;
  v11[3] = &unk_1001AB488;
  v7 = setupCopy;
  v12 = v7;
  selfCopy = self;
  [v7 setStateChangedHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002ECC4;
  v9[3] = &unk_1001AB2C8;
  v10 = v7;
  v8 = v7;
  [v8 activateWithCompletion:v9];
}

- (void)_btPipeTearDown:(id)down
{
  downCopy = down;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112FB4(downCopy);
  }

  btPipeConnection = self->_btPipeConnection;
  if (btPipeConnection)
  {
    [(RPConnection *)btPipeConnection invalidate];
    v5 = self->_btPipeConnection;
    self->_btPipeConnection = 0;
  }

  [downCopy invalidate];
}

- (void)_btPipeEnsureStopped
{
  if (self->_btPipe)
  {
    [(RPCompanionLinkDaemon *)self _btPipeTearDown:?];
    btPipe = self->_btPipe;
    self->_btPipe = 0;
  }

  if (self->_btPipeHighPriority)
  {
    [(RPCompanionLinkDaemon *)self _btPipeTearDown:?];
    btPipeHighPriority = self->_btPipeHighPriority;
    self->_btPipeHighPriority = 0;
  }
}

- (void)_btPipeHandleStateChanged:(id)changed
{
  changedCopy = changed;
  state = [changedCopy state];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113018(changedCopy, state);
  }

  btPipeConnection = self->_btPipeConnection;
  if (state == 1)
  {
    if (!btPipeConnection && [(CUBluetoothScalablePipe *)self->_btPipe state]== 1 && [(CUBluetoothScalablePipe *)self->_btPipeHighPriority state]== 1)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002F080;
      block[3] = &unk_1001AA970;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else if (btPipeConnection && [(CUBluetoothScalablePipe *)self->_btPipe state]== 2 && [(CUBluetoothScalablePipe *)self->_btPipeHighPriority state]== 2)
  {
    [(RPConnection *)self->_btPipeConnection invalidate];
    v8 = self->_btPipeConnection;
    self->_btPipeConnection = 0;
  }
}

- (void)_btPipeConnectionStart
{
  v3 = objc_alloc_init(RPConnection);
  [v3 setBtPipe:self->_btPipe];
  [v3 setBtPipeHighPriority:self->_btPipeHighPriority];
  [v3 setControlFlags:64];
  [v3 setDispatchQueue:self->_dispatchQueue];
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v3 setIdentityDaemon:v4];

  v5 = [NSString alloc];
  v6 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v6;
  v7 = [v5 initWithFormat:@"%@Cnx-%u", @"CLink", v6];
  [v3 setLabel:v7];

  [v3 setLocalDeviceInfo:self->_localDeviceInfo];
  [v3 setPasswordType:3];
  if (GestaltGetDeviceClass() == 6)
  {
    v8 = @"BTPipe-Phone";
  }

  else
  {
    v8 = @"BTPipe-Watch";
  }

  [v3 setPeerIdentifier:v8];
  [v3 setPresent:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002F43C;
  v20[3] = &unk_1001AB488;
  v20[4] = self;
  v20[5] = v3;
  [v3 setInvalidationHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002F448;
  v19[3] = &unk_1001AB2C8;
  v19[4] = self;
  [v3 setPairVerifyCompletion:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002F4A8;
  v18[3] = &unk_1001AB488;
  v18[4] = v3;
  v18[5] = self;
  [v3 setPeerUpdatedHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000F760;
  v17[3] = &unk_1001AB4F0;
  v17[4] = self;
  v17[5] = v3;
  [v3 setReceivedEventHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002F50C;
  v16[3] = &unk_1001AB518;
  v16[4] = self;
  v16[5] = v3;
  [v3 setReceivedRequestHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F52C;
  v15[3] = &unk_1001AB540;
  v15[4] = self;
  v15[5] = v3;
  [v3 setStateChangedHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002F53C;
  v14[3] = &unk_1001AB488;
  v14[4] = v3;
  v14[5] = self;
  [v3 setHomeKitUserIdentifierHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F5D4;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v3;
  [v3 setProxyDeviceUpdateHandler:v13];
  btPipeConnection = self->_btPipeConnection;
  if (btPipeConnection)
  {
    [(RPConnection *)btPipeConnection invalidate];
    v10 = self->_btPipeConnection;
    self->_btPipeConnection = 0;
  }

  v11 = self->_btPipeConnection;
  self->_btPipeConnection = v3;
  v12 = v3;

  [v12 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_btPipeConnectionEnded:(id)ended
{
  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:ended];
  btPipeConnection = self->_btPipeConnection;
  self->_btPipeConnection = 0;

  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_btPipeSyncKeysIfNeeded
{
  selfCopy = self;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001130A8(self, a2, v2);
    }
  }

  peerIdentifier = [(CUBluetoothScalablePipe *)selfCopy->_btPipe peerIdentifier];
  v6 = peerIdentifier;
  if (peerIdentifier)
  {
    v12 = peerIdentifier;
    v7 = +[RPCloudDaemon sharedCloudDaemon];
    v8 = [v7 idsDeviceForBluetoothUUID:v12];

    if (v8)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v10 addSelfIdentityInfoToMessage:v9 flags:0];

      v11 = +[RPCloudDaemon sharedCloudDaemon];
      [v11 sendIDSMessage:v9 cloudServiceID:@"com.apple.private.alloy.nearby" frameType:48 destinationDevice:v8 sendFlags:1 msgCtx:0 error:0];
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001130C4(v12);
    }

    goto LABEL_15;
  }

  if (dword_1001D3228 <= 90)
  {
    v12 = 0;
    if (dword_1001D3228 != -1 || (peerIdentifier = _LogCategory_Initialize(), v6 = 0, peerIdentifier))
    {
      sub_100113104(peerIdentifier, v5, v6);
LABEL_15:
      v6 = v12;
    }
  }
}

- (void)_activeDeviceAdded:(id)added cnx:(id)cnx
{
  addedCopy = added;
  cnxCopy = cnx;
  [addedCopy setLinkType:{-[RPConnection linkType](cnxCopy, "linkType")}];
  btPipe = [(RPConnection *)cnxCopy btPipe];

  statusFlags = [addedCopy statusFlags];
  v9 = 4;
  if (btPipe)
  {
    v9 = 1;
  }

  [addedCopy setStatusFlags:statusFlags | v9];
  if (!self->_prefCommunal)
  {
    goto LABEL_19;
  }

  idsDeviceIdentifier = [addedCopy idsDeviceIdentifier];
  idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsPersonalDeviceIdentifier];
  v12 = idsDeviceIdentifier;
  v13 = idsPersonalDeviceIdentifier;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

      goto LABEL_11;
    }

    v15 = [v12 isEqual:v13];

    if (!v15)
    {
LABEL_11:
      v16 = ~[addedCopy statusFlags] & 0x10000080000;

      if (v16)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  if ([addedCopy isPersonal])
  {
    personalCnx = self->_personalCnx;
    [addedCopy setPersonal:1];
    [addedCopy setStatusFlags:{objc_msgSend(addedCopy, "statusFlags") | 0x80}];
    objc_storeStrong(&self->_personalCnx, cnx);
    if (personalCnx == cnxCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [addedCopy setPersonal:1];
    [addedCopy setStatusFlags:{objc_msgSend(addedCopy, "statusFlags") | 0x80}];
    objc_storeStrong(&self->_personalCnx, cnx);
  }

  if (dword_1001D3228 > 30)
  {
    goto LABEL_22;
  }

  if (dword_1001D3228 != -1 || _LogCategory_Initialize())
  {
    sub_100113120(addedCopy);
  }

LABEL_19:
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113160(addedCopy);
  }

LABEL_22:
  [(RPCompanionLinkDaemon *)self _stereoDeviceUpdate:0];
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  notify_post("com.apple.rapport.CompanionLinkDeviceAdded");
  [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:addedCopy];
}

- (void)_activeDeviceRemoved:(id)removed cnx:(id)cnx
{
  removedCopy = removed;
  cnxCopy = cnx;
  [(RPCompanionLinkDaemon *)self _sessionHandlePeerDisconnect:cnxCopy];
  [removedCopy setLinkType:0];
  btPipe = [(RPConnection *)cnxCopy btPipe];

  statusFlags = [removedCopy statusFlags];
  v10 = -2;
  if (!btPipe)
  {
    v10 = -5;
  }

  [removedCopy setStatusFlags:statusFlags & v10];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001131C0(removedCopy);
  }

  personalCnx = self->_personalCnx;
  if (personalCnx == cnxCopy)
  {
    self->_personalCnx = 0;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113220(removedCopy);
    }

    [(RPCompanionLinkDaemon *)self _personalDeviceUpdate];
  }

  [(RPCompanionLinkDaemon *)self _stereoDeviceUpdate:0];
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  notify_post("com.apple.rapport.CompanionLinkDeviceRemoved");
  [(RPCompanionLinkDaemon *)self _clientReportLostDevice:removedCopy cnx:cnxCopy];
  peerDeviceInfo = [(RPConnection *)cnxCopy peerDeviceInfo];
  idsDeviceIdentifier = [peerDeviceInfo idsDeviceIdentifier];

  tcpClientConnections = self->_tcpClientConnections;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002FC74;
  v16[3] = &unk_1001AB7C0;
  v17 = cnxCopy;
  v18 = idsDeviceIdentifier;
  v15 = cnxCopy;
  [(NSMutableDictionary *)tcpClientConnections enumerateKeysAndObjectsUsingBlock:v16];
}

- (void)_activeDeviceChangedForConnection:(id)connection bonjourDevice:(id)device
{
  connectionCopy = connection;
  deviceCopy = device;
  peerDeviceInfo = [connectionCopy peerDeviceInfo];
  if (peerDeviceInfo)
  {
    deviceInfo = [deviceCopy deviceInfo];
    v9 = [deviceInfo objectForKeyedSubscript:@"removedServices"];

    if (v9)
    {
      [connectionCopy sendReachabilityProbe:"Bonjour partial remove"];
    }

    v10 = [peerDeviceInfo updateWithBonjourDevice:deviceCopy];
    if (v10)
    {
      v11 = v10;
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001132F0(connectionCopy, deviceCopy, v11);
      }

      [(RPCompanionLinkDaemon *)self _activeDeviceChanged:peerDeviceInfo changes:v11];
    }
  }
}

- (void)_activeDeviceChanged:(id)changed changes:(unsigned int)changes
{
  v4 = *&changes;
  changedCopy = changed;
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
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
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) reportChangedDevice:changedCopy changes:{v4, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (int)_airPlayLeaderStateUncached
{
  uniqueIdentifier = [(HMAccessory *)self->_homeKitSelfAccessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  components = [(HMMediaSystem *)self->_homeKitSelfMediaSystem components];
  v6 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(components);
        }

        mediaProfile = [*(*(&v18 + 1) + 8 * i) mediaProfile];
        accessory = [mediaProfile accessory];
        uniqueIdentifier2 = [accessory uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier2 UUIDString];

        if (uUIDString2 && (!v8 || ([uUIDString2 caseInsensitiveCompare:v8] & 0x8000000000000000) != 0))
        {
          v15 = uUIDString2;

          v8 = v15;
        }
      }

      v7 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isEqual:uUIDString])
  {
    v16 = 6;
  }

  else
  {
    v16 = 5;
  }

  return v16;
}

- (void)_connectionConfigureCommon:(id)common
{
  commonCopy = common;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_activeServers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        passwordType = [v10 passwordType];
        if (passwordType > 4 || ((1 << passwordType) & 0x19) == 0)
        {
          v13 = passwordType;
          allowedMACAddresses = [v10 allowedMACAddresses];
          [commonCopy setAllowedMACAddresses:allowedMACAddresses];

          pairSetupACL = [v10 pairSetupACL];
          [commonCopy setPairSetupACL:pairSetupACL];

          password = [v10 password];
          [commonCopy setPassword:password];

          [commonCopy setPasswordType:v13];
          internalAuthFlags = [v10 internalAuthFlags];
          if (internalAuthFlags)
          {
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10003048C;
            v29[3] = &unk_1001AB7E8;
            v29[4] = v10;
            [commonCopy setShowPasswordHandler:v29];
          }

          if ((internalAuthFlags & 2) != 0)
          {
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100030504;
            v28[3] = &unk_1001AB810;
            v28[4] = v10;
            [commonCopy setHidePasswordHandler:v28];
          }

          goto LABEL_17;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_xpcConnections;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        client = [*(*(&v24 + 1) + 8 * j) client];
        [commonCopy setFlags:{objc_msgSend(commonCopy, "flags") | objc_msgSend(client, "flags") & 0x4000}];
      }

      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v20);
  }
}

- (unsigned)_controlFlagsToNearbyActionType:(unint64_t)type
{
  if ((type & 0x10000000000) != 0)
  {
    return 38;
  }

  else
  {
    return 0;
  }
}

- (id)_findExistingActiveDevice:(id)device
{
  deviceCopy = device;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_activeDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToDeviceBasic:deviceCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_findExistingActiveOnDemandDevice:(id)device
{
  deviceCopy = device;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_activeOnDemandDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToDeviceBasic:deviceCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_connectionStateChanged:(int)changed cnx:(id)cnx
{
  cnxCopy = cnx;
  [(RPCompanionLinkDaemon *)self _update];
  if (changed != 1)
  {
    [(RPCompanionLinkDaemon *)self _interestRemoveForCnx:cnxCopy];
  }

  if (([cnxCopy flags] & 1) == 0)
  {
    peerDeviceInfo = [cnxCopy peerDeviceInfo];
    v7 = peerDeviceInfo;
    if (!peerDeviceInfo)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113490(cnxCopy);
      }

      goto LABEL_68;
    }

    idsDeviceIdentifier = [peerDeviceInfo idsDeviceIdentifier];
    if (!idsDeviceIdentifier)
    {
      idsDeviceIdentifier = [v7 identifier];
      if (!idsDeviceIdentifier)
      {
        if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100113450(cnxCopy);
        }

        goto LABEL_68;
      }
    }

    v9 = idsDeviceIdentifier;
    if (([cnxCopy controlFlags] & 0x200) != 0)
    {
      v13 = [(RPCompanionLinkDaemon *)self _findExistingActiveOnDemandDevice:v7];
      v11 = v13;
      if (changed == 1)
      {
        if (v13)
        {
          if ([cnxCopy clientMode])
          {
            v12 = v11;
          }

          else
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _connectionStateChanged:cnx:]", 30, "Replacing stale on-demand connection with new: %@, %@\n", v9, cnxCopy);
            }

            [(RPCompanionLinkDaemon *)self _serverTCPRemoveConnectionsWithIdentifier:v9 exceptConnection:cnxCopy];
            v12 = [(NSMutableDictionary *)self->_activeOnDemandDevices objectForKeyedSubscript:v9];

            if (v12 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100113410(v12);
            }
          }
        }

        else
        {
          v12 = 0;
        }

        activeOnDemandDevices = self->_activeOnDemandDevices;
        if (!activeOnDemandDevices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_activeOnDemandDevices;
          self->_activeOnDemandDevices = v18;

          activeOnDemandDevices = self->_activeOnDemandDevices;
        }

        [(NSMutableDictionary *)activeOnDemandDevices setObject:v7 forKeyedSubscript:v9];
        goto LABEL_67;
      }

      if (v13)
      {
        if ([v13 isEqualToDeviceBasic:v7])
        {
          [(NSMutableDictionary *)self->_activeOnDemandDevices setObject:0 forKeyedSubscript:v9];
        }

        else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _connectionStateChanged:cnx:]", 90, "### Ignoring remove active on demand device on mismatch: ED %@, CD %@, Cnx %@\n", v11, v7, cnxCopy);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v10 = [(RPCompanionLinkDaemon *)self _findExistingActiveDevice:v7];
      v11 = v10;
      if (changed == 1)
      {
        if (v10)
        {
          if ([cnxCopy clientMode])
          {
            v12 = v11;
          }

          else
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _connectionStateChanged:cnx:]", 30, "Replacing stale connection with new: %@, %@\n", v9, cnxCopy);
            }

            [(RPCompanionLinkDaemon *)self _serverTCPRemoveConnectionsWithIdentifier:v9 exceptConnection:cnxCopy];
            v12 = [(NSMutableDictionary *)self->_activeDevices objectForKeyedSubscript:v9];

            if (v12 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100113410(v12);
            }
          }
        }

        else
        {
          v12 = 0;
        }

        activeDevices = self->_activeDevices;
        if (!activeDevices)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_activeDevices;
          self->_activeDevices = v15;

          activeDevices = self->_activeDevices;
        }

        [(NSMutableDictionary *)activeDevices setObject:v7 forKeyedSubscript:v9];
        if (!v12)
        {
          [(RPCompanionLinkDaemon *)self _activeDeviceAdded:v7 cnx:cnxCopy];
        }

        goto LABEL_67;
      }

      if (v10)
      {
        if ([v10 isEqualToDeviceBasic:v7])
        {
          [(NSMutableDictionary *)self->_activeDevices setObject:0 forKeyedSubscript:v9];
          [(RPCompanionLinkDaemon *)self _activeDeviceRemoved:v11 cnx:cnxCopy];
        }

        else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _connectionStateChanged:cnx:]", 90, "### Ignoring remove active device on mismatch: ED %@, CD %@, Cnx %@\n", v11, v7, cnxCopy);
        }

LABEL_66:
        v12 = v11;
        goto LABEL_67;
      }
    }

    v12 = 0;
LABEL_67:

LABEL_68:
  }
}

- (BOOL)_destinationID:(id)d matchesCnx:(id)cnx
{
  dCopy = d;
  cnxCopy = cnx;
  peerIdentifier = [(RPConnection *)cnxCopy peerIdentifier];
  v9 = [peerIdentifier isEqual:dCopy];

  if ((v9 & 1) == 0)
  {
    peerDeviceInfo = [(RPConnection *)cnxCopy peerDeviceInfo];
    identifier = [peerDeviceInfo identifier];
    v13 = [identifier isEqual:dCopy];

    if (v13 & 1) != 0 || ([peerDeviceInfo idsDeviceIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", dCopy), v14, (v15) || (objc_msgSend(peerDeviceInfo, "publicIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", dCopy), v16, (v17))
    {
      v10 = 1;
LABEL_7:

      goto LABEL_8;
    }

    if (([(RPConnection *)cnxCopy controlFlags]& 0x200) == 0)
    {
      v19 = [(NSDictionary *)self->_destinationIdentifierModelMap objectForKeyedSubscript:dCopy];
      if (v19)
      {
        roomName = v19;
        peerDeviceInfo2 = [(RPConnection *)cnxCopy peerDeviceInfo];
        model = [peerDeviceInfo2 model];
        v23 = (roomName)[2](roomName, model);
LABEL_12:
        v10 = v23;

LABEL_15:
        goto LABEL_7;
      }

      v24 = [(NSDictionary *)self->_destinationIdentifierRelMap objectForKeyedSubscript:dCopy];
      if (v24)
      {
        roomName = v24;
        peerDeviceInfo2 = [(RPConnection *)cnxCopy peerDeviceInfo];
        v10 = (roomName)[2](roomName, [peerDeviceInfo2 statusFlags]);
        goto LABEL_15;
      }

      if (([dCopy isEqual:@"rapport:rdid:ActivePhone"] & 1) != 0 || (objc_msgSend(dCopy, "isEqual:", @"rapport:rdid:ActiveWatch") & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"rapport:rdid:PairedCompanion"))
      {
        btPipeConnection = self->_btPipeConnection;
LABEL_20:
        v10 = btPipeConnection == cnxCopy;
        goto LABEL_7;
      }

      if ([(RPCompanionLinkDaemon *)self _destinationID:dCopy matchesProxyDeviceOnCnx:cnxCopy])
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001134D0(cnxCopy, dCopy);
        }

        goto LABEL_31;
      }

      if ([dCopy isEqual:@"rapport:rdid:PersonalCompanion"])
      {
        btPipeConnection = self->_personalCnx;
        goto LABEL_20;
      }

      if ([dCopy isEqual:@"rapport:rdid:StereoCounterpart"])
      {
        btPipeConnection = self->_stereoCnx;
        goto LABEL_20;
      }

      if ([dCopy isEqual:@"rapport:rdid:SameHome"])
      {
LABEL_31:
        v10 = ([(RPConnection *)cnxCopy statusFlags]& 0x50000AE000) != 0;
        goto LABEL_7;
      }

      if ([dCopy isEqual:@"rapport:rdid:SameRoom"] && (-[RPConnection statusFlags](cnxCopy, "statusFlags") & 0x50000AE000) != 0)
      {
        roomName = [(RPCompanionLinkDevice *)self->_localDeviceInfo roomName];
        peerDeviceInfo2 = [(RPConnection *)cnxCopy peerDeviceInfo];
        model = [peerDeviceInfo2 roomName];
        v23 = [roomName isEqual:model];
        goto LABEL_12;
      }
    }

    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_disconnectRemovedSharedHomeDevices
{
  v3 = +[RPIdentityDaemon sharedIdentityDaemon];
  v4 = [v3 identitiesOfType:9 error:0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003109C;
  v5[3] = &unk_1001AB838;
  v5[4] = v4;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v5];
}

- (void)_disconnectUnauthConnections
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableSet *)self->_tcpServerConnections copy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 flags])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100113594(v7);
          }

          [v7 invalidate];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v8 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v8;
    }

    while (v8);
  }
}

- (void)_disconnectUnpairedDevices
{
  v3 = +[RPIdentityDaemon sharedIdentityDaemon];
  v4 = [v3 identitiesOfType:8 error:0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031434;
  v5[3] = &unk_1001AB838;
  v5[4] = v4;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v5];
}

- (id)_discoveryNonceOrRotate:(BOOL)rotate
{
  if (rotate || (v4 = self->_discoveryNonceData) == 0)
  {
    v4 = NSRandomData();
    objc_storeStrong(&self->_discoveryNonceData, v4);
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011362C(v4);
    }
  }

  return v4;
}

- (void)_duetSyncEnsureStopped
{
  if (self->_duetSyncClient)
  {
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113688(self, a2, v2);
      }
    }

    [(SFClient *)selfCopy->_duetSyncClient invalidate];
    duetSyncClient = selfCopy->_duetSyncClient;
    selfCopy->_duetSyncClient = 0;
  }
}

- (id)findAuthAWDLPairingModeDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:v13];
          publicIdentifier = [v14 publicIdentifier];
          v16 = [publicIdentifier isEqual:identifierCopy];

          if (v16)
          {
            v7 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:v13];

            goto LABEL_13;
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
    v6 = 0;
  }

  return v7;
}

- (id)findConnectedDeviceForIdentifier:(id)identifier controlFlags:(unint64_t)flags cnx:(id *)cnx
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000029CC;
  v19 = sub_10000317C;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000319D8;
  v9[3] = &unk_1001AB860;
  flagsCopy = flags;
  selfCopy = self;
  identifierCopy = identifier;
  v11 = identifierCopy;
  v12 = &v15;
  cnxCopy = cnx;
  [(RPCompanionLinkDaemon *)selfCopy _forEachConnectionWithHandler:v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (id)_findWiFiConnectionByID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000029CC;
  v14 = sub_10000317C;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031DD0;
  v7[3] = &unk_1001AB888;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)_findMatchingAWDLBonjourDevice:(id)device
{
  deviceCopy = device;
  v5 = self->_bonjourAWDLDevices;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier && (-[NSMutableDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", idsDeviceIdentifier), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (idsDeviceIdentifier, [deviceCopy identifier], (idsDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0) && (-[NSMutableDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", idsDeviceIdentifier), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (idsDeviceIdentifier, objc_msgSend(deviceCopy, "publicIdentifier"), (idsDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0) && (-[NSMutableDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", idsDeviceIdentifier), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_findDeviceWithDevice:(id)device deviceMap:(id)map matchedIdentifier:(id *)identifier
{
  deviceCopy = device;
  mapCopy = map;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (!idsDeviceIdentifier || ([mapCopy objectForKeyedSubscript:idsDeviceIdentifier], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    idsDeviceIdentifier = [deviceCopy identifier];
    if (!idsDeviceIdentifier || ([mapCopy objectForKeyedSubscript:idsDeviceIdentifier], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      idsDeviceIdentifier = [deviceCopy publicIdentifier];
      if (!idsDeviceIdentifier)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v13 = [mapCopy objectForKeyedSubscript:idsDeviceIdentifier];
      if (v13)
      {
        v12 = v13;
      }

      else
      {
        v12 = 0;
      }

      if (!v13)
      {
        goto LABEL_15;
      }

      v11 = v13;
      if (!identifier)
      {
        goto LABEL_15;
      }

LABEL_13:
      objc_storeStrong(identifier, idsDeviceIdentifier);
      v12 = v11;
      goto LABEL_15;
    }
  }

  v11 = v10;
  v12 = v10;
  if (identifier)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v12;
}

- (id)findUnauthDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000029CC;
  v15 = sub_10000317C;
  v16 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:identifierCopy];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000321E0;
    v8[3] = &unk_1001AB888;
    v9 = identifierCopy;
    v10 = &v11;
    [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v8];
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_forEachConnectionWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41[0] = 0;
  btPipeConnection = self->_btPipeConnection;
  if (!btPipeConnection || ((*(handlerCopy + 2))(handlerCopy, btPipeConnection, v41), (v39[3] & 1) == 0))
  {
    tcpClientConnections = self->_tcpClientConnections;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100032624;
    v35[3] = &unk_1001AB8B0;
    v8 = v5;
    v36 = v8;
    v37 = &v38;
    [(NSMutableDictionary *)tcpClientConnections enumerateKeysAndObjectsUsingBlock:v35];
    if ((v39[3] & 1) == 0)
    {
      tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100032680;
      v32[3] = &unk_1001AB8B0;
      v10 = v8;
      v33 = v10;
      v34 = &v38;
      [(NSMutableDictionary *)tcpOnDemandClientConnections enumerateKeysAndObjectsUsingBlock:v32];
      if ((v39[3] & 1) == 0)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = self->_tcpServerConnections;
        v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v28 objects:v43 count:16];
        if (v12)
        {
          v13 = *v29;
LABEL_7:
          v14 = 0;
          while (1)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v11);
            }

            (*(v10 + 2))(v10, *(*(&v28 + 1) + 8 * v14), v39 + 3);
            if (v39[3])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v28 objects:v43 count:16];
              if (v12)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:

          bleClientConnections = self->_bleClientConnections;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000326DC;
          v25[3] = &unk_1001AB8B0;
          v16 = v10;
          v26 = v16;
          v27 = &v38;
          [(NSMutableDictionary *)bleClientConnections enumerateKeysAndObjectsUsingBlock:v25];
          if ((v39[3] & 1) == 0)
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v17 = self->_bleServerConnections;
            v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v21 objects:v42 count:16];
            if (v18)
            {
              v19 = *v22;
LABEL_16:
              v20 = 0;
              while (1)
              {
                if (*v22 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                (v16[2].super.super.isa)(v16, *(*(&v21 + 1) + 8 * v20), v39 + 3);
                if (v39[3])
                {
                  break;
                }

                if (v18 == ++v20)
                {
                  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v21 objects:v42 count:16];
                  if (v18)
                  {
                    goto LABEL_16;
                  }

                  break;
                }
              }
            }
          }

          v11 = v26;
        }
      }
    }
  }

  _Block_object_dispose(&v38, 8);
}

- (void)_forEachMatchingDestinationID:(id)d handler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000327F8;
  v7[3] = &unk_1001AB8D8;
  selfCopy = self;
  dCopy = d;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = dCopy;
  [(RPCompanionLinkDaemon *)selfCopy _forEachConnectionWithHandler:v7];
}

- (void)_forEachUniqueMatchingDestinationID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100032944;
  v10[3] = &unk_1001AB900;
  v11 = objc_opt_new();
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = v11;
  [(RPCompanionLinkDaemon *)self _forEachMatchingDestinationID:dCopy handler:v10];
}

- (id)_getAppleID
{
  v2 = objc_alloc_init(CUAppleIDClient);
  v3 = [v2 copyMyAppleIDAndReturnError:0];

  return v3;
}

- (void)_hidEnsureStarted
{
  if (!self->_hidDaemon)
  {
    v11[5] = v3;
    v11[6] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001136E4(self, a2, v2);
      }
    }

    v6 = objc_alloc_init(RPHIDDaemon);
    hidDaemon = selfCopy->_hidDaemon;
    selfCopy->_hidDaemon = v6;

    [(RPHIDDaemon *)selfCopy->_hidDaemon setMessenger:selfCopy];
    v8 = selfCopy->_hidDaemon;
    v11[0] = 0;
    v9 = [(RPHIDDaemon *)v8 activateAndReturnError:v11];
    v10 = v11[0];
    if ((v9 & 1) == 0 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113700(v10);
    }
  }
}

- (void)interestRegisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner
{
  dCopy = d;
  identifierCopy = identifier;
  ownerCopy = owner;
  v11 = [(NSMutableDictionary *)self->_interestPeers objectForKeyedSubscript:identifierCopy];
  if (!v11)
  {
    if (!self->_interestPeers)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      interestPeers = self->_interestPeers;
      self->_interestPeers = v12;
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_interestPeers setObject:v11 forKeyedSubscript:identifierCopy];
  }

  v14 = [v11 objectForKeyedSubscript:dCopy];
  if (v14)
  {
    v15 = v14;
    [v14 addObject:ownerCopy];
  }

  else
  {
    v15 = objc_alloc_init(NSMutableSet);
    [v11 setObject:v15 forKeyedSubscript:dCopy];
    [v15 addObject:ownerCopy];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon interestRegisterEventID:peerIdentifier:owner:]", 30, "Interest register local: Peer %@, EventID %@\n", identifierCopy, dCopy);
    }

    v18 = dCopy;
    v19 = @"_regEvents";
    v16 = [NSArray arrayWithObjects:&v18 count:1];
    v20 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    [(RPCompanionLinkDaemon *)self sendEventID:@"_interest" event:v17 destinationID:identifierCopy options:0 completion:0];
  }
}

- (void)interestDeregisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner
{
  dCopy = d;
  identifierCopy = identifier;
  ownerCopy = owner;
  v11 = [(NSMutableDictionary *)self->_interestPeers objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:dCopy];
    v14 = v13;
    if (v13)
    {
      [v13 removeObject:ownerCopy];
      if (![v14 count])
      {
        [v12 setObject:0 forKeyedSubscript:dCopy];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon interestDeregisterEventID:peerIdentifier:owner:]", 30, "Interest deregister local: Peer %@, EventID %@\n", identifierCopy, dCopy);
        }

        v17 = dCopy;
        v18 = @"_deregEvents";
        v15 = [NSArray arrayWithObjects:&v17 count:1];
        v19 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

        [(RPCompanionLinkDaemon *)self sendEventID:@"_interest" event:v16 destinationID:identifierCopy options:0 completion:0];
      }
    }
  }
}

- (void)_interestReceived:(id)received cnx:(id)cnx
{
  receivedCopy = received;
  cnxCopy = cnx;
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  identifier = [peerDeviceInfo identifier];
  if (identifier)
  {
    publicIdentifier = identifier;

LABEL_4:
    v32 = cnxCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    CFArrayGetTypeID();
    v33 = receivedCopy;
    v12 = CFDictionaryGetTypedValue();
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:v17];
            v19 = v18;
            if (!v18)
            {
              v19 = objc_alloc_init(NSMutableSet);
              interestEvents = self->_interestEvents;
              if (!interestEvents)
              {
                v21 = objc_alloc_init(NSMutableDictionary);
                v22 = self->_interestEvents;
                self->_interestEvents = v21;

                interestEvents = self->_interestEvents;
              }

              [(NSMutableDictionary *)interestEvents setObject:v19 forKeyedSubscript:v17];
            }

            [v19 addObject:publicIdentifier];
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _interestReceived:cnx:]", 30, "Interest register remote: Peer %@, EventID %@ (%d total)\n", publicIdentifier, v17, [v19 count]);
            }

            if (!v18)
            {
              [(RPHIDDaemon *)self->_hidDaemon registeredEventID:v17];
            }

            [(RPMediaControlDaemon *)self->_mediaControlDaemon registeredEventID:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v14);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    CFArrayGetTypeID();
    v23 = CFDictionaryGetTypedValue();
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:v28];
            v30 = v29;
            if (v29)
            {
              [v29 removeObject:publicIdentifier];
              v31 = [v30 count];
              if (!v31)
              {
                [(NSMutableDictionary *)self->_interestEvents setObject:0 forKeyedSubscript:v28];
              }

              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _interestReceived:cnx:]", 30, "Interest deregister remote: Peer %@, EventID %@ (%d total)\n", publicIdentifier, v28, v31);
              }

              if (!v31)
              {
                [(RPHIDDaemon *)self->_hidDaemon deregisteredEventID:v28];
                [(RPMediaControlDaemon *)self->_mediaControlDaemon deregisteredEventID:v28];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    cnxCopy = v32;
    receivedCopy = v33;
    goto LABEL_42;
  }

  peerDeviceInfo2 = [cnxCopy peerDeviceInfo];
  publicIdentifier = [peerDeviceInfo2 publicIdentifier];

  if (publicIdentifier)
  {
    goto LABEL_4;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011375C(cnxCopy);
  }

LABEL_42:
}

- (void)_interestRemoveForCnx:(id)cnx
{
  cnxCopy = cnx;
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  identifier = [peerDeviceInfo identifier];

  if (identifier)
  {
    v15 = cnxCopy;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allKeys = [(NSMutableDictionary *)self->_interestEvents allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:v12];
          [v13 removeObject:identifier];
          v14 = [v13 count];
          if (!v14)
          {
            [(NSMutableDictionary *)self->_interestEvents setObject:0 forKeyedSubscript:v12];
          }

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _interestRemoveForCnx:]", 30, "Interest deregister remote: Peer %@, EventID %@ (%d total)\n", identifier, v12, v14);
          }

          if (!v14)
          {
            [(RPHIDDaemon *)self->_hidDaemon deregisteredEventID:v12];
            [(RPMediaControlDaemon *)self->_mediaControlDaemon deregisteredEventID:v12];
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    cnxCopy = v15;
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011379C(cnxCopy);
  }
}

- (void)_interestSendEventID:(id)d event:(id)event
{
  dCopy = d;
  eventCopy = event;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:dCopy, 0];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(RPCompanionLinkDaemon *)self sendEventID:dCopy event:eventCopy destinationID:*(*(&v13 + 1) + 8 * v12) options:0 completion:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_localDeviceCleanup
{
  if (self->_mediaAccessControlKVO)
  {
    self->_mediaAccessControlKVO = 0;
    [(NSUserDefaults *)self->_airplayPrefs removeObserver:self forKeyPath:@"accessControlLevel" context:0];
    [(NSUserDefaults *)self->_airplayPrefs removeObserver:self forKeyPath:@"p2pAllow" context:0];
  }

  airplayPrefs = self->_airplayPrefs;
  self->_airplayPrefs = 0;

  if (self->_soundBoardUserLeaderKVO)
  {
    self->_soundBoardUserLeaderKVO = 0;
    [(NSUserDefaults *)self->_soundBoardPrefs removeObserver:self forKeyPath:@"stereo_leader" context:0];
    [(NSUserDefaults *)self->_soundBoardPrefs removeObserver:self forKeyPath:@"stereo_leader_info" context:0];
  }

  soundBoardPrefs = self->_soundBoardPrefs;
  self->_soundBoardPrefs = 0;
}

- (int)_localMediaAccessControlSetting
{
  Int64 = CFPrefs_GetInt64();
  v3 = CFPrefs_GetInt64();
  v4 = v3 == 1;
  v5 = Int64 == 1;
  if (Int64 == 1)
  {
    v4 = 3;
  }

  if (v3 == 1)
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

- (void)_mediaControlEnsureStarted
{
  if (!self->_mediaControlDaemon)
  {
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113AA8(self, a2, v2);
      }
    }

    v6 = objc_alloc_init(RPMediaControlDaemon);
    mediaControlDaemon = selfCopy->_mediaControlDaemon;
    selfCopy->_mediaControlDaemon = v6;

    [(RPMediaControlDaemon *)selfCopy->_mediaControlDaemon setMessenger:selfCopy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100033B98;
    v12[3] = &unk_1001AB990;
    v12[4] = selfCopy;
    [(RPMediaControlDaemon *)selfCopy->_mediaControlDaemon setSendInterestEventHandler:v12];
    v8 = selfCopy->_mediaControlDaemon;
    v11 = 0;
    v9 = [(RPMediaControlDaemon *)v8 activateAndReturnError:&v11];
    v10 = v11;
    if ((v9 & 1) == 0 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113AC4(v10);
    }
  }
}

- (void)_mediaRemoteIDGet
{
  if (!self->_mediaRemoteIDGetting)
  {
    LocalOrigin = MRMediaRemoteGetLocalOrigin();
    if (LocalOrigin)
    {
      self->_mediaRemoteIDGetting = 1;
      MRMediaRemoteGetDeviceInfo();
    }

    else if (dword_1001D3228 <= 90)
    {
      if (dword_1001D3228 != -1 || (LocalOrigin = _LogCategory_Initialize(), LocalOrigin))
      {
        sub_100113B20(LocalOrigin, v4, v5);
      }
    }
  }
}

- (void)_mediaRouteIDGet
{
  if (!self->_mediaRouteIDGetting)
  {
    self->_mediaRouteIDGetting = 1;
    v3 = objc_alloc_init(CUPairingManager);
    [v3 setDispatchQueue:self->_dispatchQueue];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100033F1C;
    v4[3] = &unk_1001AB9E0;
    v4[4] = v3;
    v4[5] = self;
    [v3 getPairingIdentityWithOptions:5 completion:v4];
  }
}

- (void)_miscEnsureStopped
{
  if (self->_miscStarted)
  {
    v11 = v4;
    v12 = v3;
    v13 = v2;
    if (GestaltGetDeviceClass() == 1)
    {
      v9 = +[RPCloudDaemon sharedCloudDaemon];
      idsHasWatch = [v9 idsHasWatch];

      if (idsHasWatch)
      {
        [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_ctxtColl"];
      }
    }

    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_launchApp", v5, v11, v12, v13, v6, v7];
    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_sessionStart"];
    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_sessionStop"];
    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_speak"];
    self->_miscStarted = 0;
  }
}

- (void)_miscHandleLaunchAppRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  Int64 = CFDictionaryGetInt64();
  if (v7)
  {
    v9 = Int64 != 0;
    v10 = dispatch_queue_create("RPLaunchApp", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034458;
    block[3] = &unk_1001ABA58;
    v27 = v9;
    block[4] = v7;
    v26 = handlerCopy;
    dispatch_async(v10, block);
  }

  else
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10 && (v17 = [[NSURL alloc] initWithString:v10]) != 0)
    {
      v18 = v17;
      v19 = dispatch_queue_create("RPOpenURL", 0);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000347D8;
      v22[3] = &unk_1001ABA80;
      v23 = v18;
      v24 = handlerCopy;
      v20 = v18;
      dispatch_async(v19, v22);
    }

    else
    {
      v20 = RPErrorF(4294960591, "No valid bundleID or URL to LaunchApp", v11, v12, v13, v14, v15, v16, v21);
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113C0C(v20);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
    }
  }
}

- (void)_miscHandleSpeakRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (v8)
  {
    v15 = objc_alloc_init(CUVoiceSession);
    [v15 setDispatchQueue:self->_dispatchQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100034A90;
    v17[3] = &unk_1001ABAA8;
    v17[4] = v15;
    v18 = handlerCopy;
    [v15 speakText:v8 flags:0 completion:v17];
  }

  else
  {
    v16 = RPErrorF(4294960591, "No text to speak", v9, v10, v11, v12, v13, v14, v17[0]);
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113C90(v16);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"stereo_leader"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"stereo_leader_info"))
  {
    if (CFDictionaryGetInt64())
    {
      v10 = 1;
    }

    else
    {
      CFDictionaryGetTypeID();
      v11 = CFPrefs_CopyTypedValue();
      v10 = CFDictionaryGetInt64() != 0;
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113CD0(v10);
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034CDC;
    block[3] = &unk_1001ABAD0;
    block[4] = self;
    v16 = v10;
    dispatch_async(dispatchQueue, block);
  }

  if (([pathCopy isEqualToString:@"accessControlLevel"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"p2pAllow"))
  {
    v13 = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100034D04;
    v14[3] = &unk_1001AA970;
    v14[4] = self;
    dispatch_async(v13, v14);
  }
}

- (void)_personalDeviceUpdate
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000029CC;
  v13 = sub_10000317C;
  v14 = 0;
  idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsPersonalDeviceIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100034EB4;
  v8[3] = &unk_1001AAE80;
  v8[4] = idsPersonalDeviceIdentifier;
  v8[5] = self;
  v8[6] = &v9;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v8];
  v4 = v10;
  v5 = v10[5];
  if (v5 != self->_personalCnx)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 == -1)
      {
        v7 = _LogCategory_Initialize();
        v4 = v10;
        if (!v7)
        {
          goto LABEL_6;
        }

        v5 = v10[5];
      }

      peerDeviceInfo = [(RPConnection *)v5 peerDeviceInfo];
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _personalDeviceUpdate]", 30, "Personal device changed: %@\n", peerDeviceInfo);

      v4 = v10;
    }

LABEL_6:
    objc_storeStrong(&self->_personalCnx, v4[5]);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)_reachabilityEnsureStopped
{
  selfCopy = self;
  if (self->_netLinkManager)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113D44(self, a2, v2);
      }
    }
  }

  [(CUNetLinkManager *)selfCopy->_netLinkManager invalidate];
  netLinkManager = selfCopy->_netLinkManager;
  selfCopy->_netLinkManager = 0;
}

- (void)_siriEnsureStarted
{
  if (!self->_siriDaemon)
  {
    v11[5] = v3;
    v11[6] = v4;
    selfCopy = self;
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100113D60(self, a2, v2);
      }
    }

    v6 = objc_alloc_init(RPSiriDaemon);
    siriDaemon = selfCopy->_siriDaemon;
    selfCopy->_siriDaemon = v6;

    [(RPSiriDaemon *)selfCopy->_siriDaemon setMessenger:selfCopy];
    v8 = selfCopy->_siriDaemon;
    v11[0] = 0;
    v9 = [(RPSiriDaemon *)v8 activateAndReturnError:v11];
    v10 = v11[0];
    if ((v9 & 1) == 0 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113D7C(v10);
    }
  }
}

- (void)_stereoDeviceUpdate:(int)update
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1000029CC;
  v61 = sub_10000317C;
  v62 = 0;
  [(RPCompanionLinkDevice *)self->_localDeviceInfo identifier];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_1000029CC;
  v5 = v55 = sub_10000317C;
  v56 = v5;
  mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  mediaSystemRole = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole];
  if (mediaSystemIdentifier && mediaSystemRole - 1 <= 1)
  {
    v8 = mediaSystemRole == 2;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100035BC8;
    v49[3] = &unk_1001ABAF8;
    if (mediaSystemRole == 1)
    {
      v8 = 2;
    }

    v50 = v8;
    v49[4] = mediaSystemIdentifier;
    v49[5] = &v57;
    v49[6] = &v51;
    [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v49];
  }

  flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
  v10 = v52[5];
  v11 = v5;
  v12 = v11;
  if (v10 == v11)
  {
    v13 = 1;
  }

  else if ((v11 == 0) == (v10 != 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = [v10 isEqual:v11];
  }

  v14 = flags & 0x80;
  v15 = v14 >> 7 != v13;
  if (v14 >> 7 != v13)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v16 = "yes";
      if (v14)
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      if (!v13)
      {
        v16 = "no";
      }

      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "MediaSystem leader changed: %s -> %s\n", v17, v16);
    }

    localDeviceInfo = self->_localDeviceInfo;
    if (v13)
    {
      v19 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]| 0x80;
    }

    else
    {
      v19 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0xFFFFFF7F;
    }

    [(RPCompanionLinkDevice *)localDeviceInfo setFlags:v19];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  if (mediaSystemIdentifier)
  {
    if (v58[5])
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = self->_homeKitSelfAccessory != 0;
  }

  mediaSystemState = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemState];
  v22 = v20 != mediaSystemState;
  if (v20 != mediaSystemState)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      if (mediaSystemState > 4)
      {
        v23 = "?";
      }

      else
      {
        v23 = off_1001AC198[mediaSystemState];
      }

      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "MediaSystemState changed: %s -> %s\n", v23, off_1001AC198[v20]);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemState:v20];
    v15 = 1;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  v24 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0x200;
  soundBoardUserLeader = self->_soundBoardUserLeader;
  if (soundBoardUserLeader != v24 >> 9)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v28 = _LogCategory_Initialize(), LOBYTE(soundBoardUserLeader) = self->_soundBoardUserLeader, v28))
      {
        if (v24)
        {
          v26 = "yes";
        }

        else
        {
          v26 = "no";
        }

        if (soundBoardUserLeader)
        {
          v27 = "yes";
        }

        else
        {
          v27 = "no";
        }

        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "User leader changed: %s -> %s\n", v26, v27);
        LOBYTE(soundBoardUserLeader) = self->_soundBoardUserLeader;
      }
    }

    v29 = self->_localDeviceInfo;
    if (soundBoardUserLeader)
    {
      v30 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]| 0x200;
    }

    else
    {
      v30 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0xFFFFFDFF;
    }

    [(RPCompanionLinkDevice *)v29 setFlags:v30];
    v15 = 1;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  v31 = v58[5];
  stereoCnx = self->_stereoCnx;
  if (v31 != stereoCnx)
  {
    if (v31 && !stereoCnx)
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_76;
          }

          v31 = v58[5];
        }

        peerDeviceInfo = [(RPConnection *)v31 peerDeviceInfo];
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "Stereo counterpart found: %@\n", peerDeviceInfo);
        goto LABEL_70;
      }

LABEL_76:
      objc_storeStrong(&self->_stereoCnx, v58[5]);
      v22 = 1;
      goto LABEL_77;
    }

    if (v31 || !stereoCnx)
    {
      if (dword_1001D3228 > 30)
      {
        goto LABEL_76;
      }

      if (dword_1001D3228 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_76;
        }

        v31 = v58[5];
      }

      peerDeviceInfo = [(RPConnection *)v31 peerDeviceInfo];
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "Stereo counterpart changed: %@\n", peerDeviceInfo);
    }

    else
    {
      if (dword_1001D3228 > 30)
      {
        goto LABEL_76;
      }

      if (dword_1001D3228 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_76;
        }

        v34 = v58[5];
      }

      else
      {
        v34 = 0;
      }

      peerDeviceInfo = [v34 peerDeviceInfo];
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "Stereo counterpart lost: %@\n", peerDeviceInfo);
    }

LABEL_70:

    goto LABEL_76;
  }

LABEL_77:
  if (update <= 3 && v22)
  {
    [(RPCompanionLinkDaemon *)self _homeKitSelfAccessoryMediaSystemUpdated:(update + 1)];
  }

  if (self->_prefCommunal)
  {
    v35 = v20 - 2;
    if ((v20 - 2) > 2)
    {
      v36 = 2;
    }

    else if (self->_stereoCnx)
    {
      v36 = 5;
    }

    else
    {
      v36 = 6;
    }

    airplayBuddyNotReachableState = self->_airplayBuddyNotReachableState;
    if (v36 == airplayBuddyNotReachableState)
    {
LABEL_100:
      if (v35 > 2)
      {
        _airPlayLeaderStateUncached = 2;
      }

      else
      {
        _airPlayLeaderStateUncached = [(RPCompanionLinkDaemon *)self _airPlayLeaderStateUncached];
      }

      airplayLeaderState = self->_airplayLeaderState;
      if (_airPlayLeaderStateUncached == airplayLeaderState)
      {
        if (v36 == airplayBuddyNotReachableState)
        {
          goto LABEL_124;
        }

LABEL_123:
        CFPreferencesAppSynchronize(@"com.apple.airplay");
        notify_post("com.apple.airplay.prefsChanged");
        goto LABEL_124;
      }

      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 != -1)
        {
LABEL_108:
          if (airplayLeaderState >= 8)
          {
            if (airplayLeaderState <= 9)
            {
              v42 = "?";
            }

            else
            {
              v42 = "User";
            }
          }

          else
          {
            v42 = off_1001AC208[airplayLeaderState];
          }

          if (_airPlayLeaderStateUncached >= 8)
          {
            v43 = "?";
            if (_airPlayLeaderStateUncached > 9)
            {
              v43 = "User";
            }
          }

          else
          {
            v43 = off_1001AC208[_airPlayLeaderStateUncached];
          }

          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "AirPlay leader state changed: %s -> %s\n", v42, v43);
          goto LABEL_120;
        }

        if (_LogCategory_Initialize())
        {
          airplayLeaderState = self->_airplayLeaderState;
          goto LABEL_108;
        }
      }

LABEL_120:
      self->_airplayLeaderState = _airPlayLeaderStateUncached;
      if (_airPlayLeaderStateUncached == 2)
      {
        CFPrefs_RemoveValue();
      }

      else
      {
        CFPrefs_SetValue();
      }

      goto LABEL_123;
    }

    if (dword_1001D3228 <= 30)
    {
      v38 = self->_airplayBuddyNotReachableState;
      if (dword_1001D3228 != -1)
      {
LABEL_89:
        if (v38 >= 8)
        {
          if (v38 <= 9)
          {
            v39 = "?";
          }

          else
          {
            v39 = "User";
          }
        }

        else
        {
          v39 = off_1001AC208[v38];
        }

        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _stereoDeviceUpdate:]", 30, "AirPlay not reachable state changed: %s -> %s\n", v39, off_1001AC1C0[v36 - 2]);
        goto LABEL_97;
      }

      if (_LogCategory_Initialize())
      {
        v38 = self->_airplayBuddyNotReachableState;
        goto LABEL_89;
      }
    }

LABEL_97:
    self->_airplayBuddyNotReachableState = v36;
    if (v36 == 2)
    {
      CFPrefs_RemoveValue();
    }

    else
    {
      CFPrefs_SetValue();
    }

    goto LABEL_100;
  }

LABEL_124:
  if (v15)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100035CE8;
    block[3] = &unk_1001AA970;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
    v63[0] = @"_clFl";
    0x280 = [NSNumber numberWithUnsignedInt:[(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0x280];
    v63[1] = @"_msSt";
    v64[0] = 0x280;
    v46 = [NSNumber numberWithInt:[(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemState]];
    v64[1] = v46;
    v47 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
    [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v47 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
}

- (id)_xpcConnections:(id)connections withControlFlags:(unint64_t)flags
{
  connectionsCopy = connections;
  v6 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = connectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        client = [v12 client];
        v14 = [client controlFlags] & flags;

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_homeKitEnsureStopped
{
  selfCopy = self;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100113E2C(self, a2, v2);
    }
  }

  rpHomeKitManager = selfCopy->_rpHomeKitManager;
  if (rpHomeKitManager)
  {
    [(RPHomeKitManager *)rpHomeKitManager invalidate];
    v5 = selfCopy->_rpHomeKitManager;
    selfCopy->_rpHomeKitManager = 0;
  }

  homeKitManager = selfCopy->_homeKitManager;
  if (homeKitManager)
  {
    [(CUHomeKitManager *)homeKitManager invalidate];
    v7 = selfCopy->_homeKitManager;
    selfCopy->_homeKitManager = 0;

    selfCopy->_homeKitManagerState = 0;
    homeKitSelfAccessory = selfCopy->_homeKitSelfAccessory;
    selfCopy->_homeKitSelfAccessory = 0;

    selfCopy->_homeKitSelfAccessorySiriEnabled = 0;
    homeKitSelfMediaSystem = selfCopy->_homeKitSelfMediaSystem;
    selfCopy->_homeKitSelfMediaSystem = 0;

    homeKitSelfMediaSystemRole = selfCopy->_homeKitSelfMediaSystemRole;
    selfCopy->_homeKitSelfMediaSystemRole = 0;
  }

  if (selfCopy->_receiveHomeKitPairingUpdated)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:selfCopy name:@"HMAccessoryPairingIdentityUpdatedNotification" object:0];
    selfCopy->_receiveHomeKitPairingUpdated = 0;
  }

  homeKitAuthTag = selfCopy->_homeKitAuthTag;
  selfCopy->_homeKitAuthTag = 0;

  homeKitIRK = selfCopy->_homeKitIRK;
  selfCopy->_homeKitIRK = 0;

  homeKitLTPK = selfCopy->_homeKitLTPK;
  selfCopy->_homeKitLTPK = 0;

  homeKitRotatingID = selfCopy->_homeKitRotatingID;
  selfCopy->_homeKitRotatingID = 0;
}

- (void)_homeKitPairingUpdated:(id)updated
{
  updatedCopy = updated;
  if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113E48();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036618;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_homeKitAuthMatchForBonjourDevice:(id)device
{
  deviceCopy = device;
  if ([(NSData *)self->_homeKitIRK length]== 16)
  {
    txtDictionary = [deviceCopy txtDictionary];
    CFDictionaryGetData();
  }

  return 0;
}

- (id)_homeKitDecryptRotatingIDForBonjourDevice:(id)device
{
  if (self->_homeKitLTPK)
  {
    txtDictionary = [device txtDictionary];
    CFDictionaryGetHardwareAddress();
    CFDictionaryGetData();
  }

  return 0;
}

- (void)_homeKitGetUserInfo:(id)info
{
  infoCopy = info;
  homeKitSelfAccessory = self->_homeKitSelfAccessory;
  if (homeKitSelfAccessory)
  {
    v12 = infoCopy;
    home = [(HMAccessory *)homeKitSelfAccessory home];
    v7 = home;
    if (home)
    {
      currentUser = [home currentUser];
      if (currentUser)
      {
        accountID = [v12 accountID];

        if (!accountID)
        {
          userID = [currentUser userID];
          [v12 setAccountID:userID];

          uniqueIdentifier = [currentUser uniqueIdentifier];
          [v12 setHomeKitUserIdentifier:uniqueIdentifier];
        }
      }
    }

    infoCopy = v12;
  }
}

- (void)_homeKitIdentityUpdated:(id)updated error:(id)error
{
  updatedCopy = updated;
  errorCopy = error;
  if (!errorCopy)
  {
    publicKey = [updatedCopy publicKey];
    if (![publicKey length])
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113F24(publicKey);
      }

      goto LABEL_25;
    }

    homeKitLTPK = self->_homeKitLTPK;
    v9 = publicKey;
    v10 = homeKitLTPK;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if ((v9 != 0) == (v10 == 0))
      {

        goto LABEL_21;
      }

      v12 = [(NSData *)v9 isEqual:v10];

      if (!v12)
      {
LABEL_21:
        objc_storeStrong(&self->_homeKitLTPK, publicKey);
        v13 = objc_alloc_init(RPIdentity);
        [v13 setEdPKData:v9];
        secretKey = [updatedCopy secretKey];
        [v13 setEdSKData:secretKey];

        identifier = [updatedCopy identifier];
        uUIDString = [identifier UUIDString];
        [v13 setIdentifier:uUIDString];

        [(RPCompanionLinkDaemon *)self _homeKitGetUserInfo:v13];
        v17 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v17 setHomeKitIdentity:v13];

        self->_prefHomeKitConfigured = 1;
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100113EC4(v9);
        }

        [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:&stru_1001ABBB8];
        v18 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1];
        [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
        [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateAllDevices];
        [(RPCompanionLinkDaemon *)self _update];

LABEL_25:
        goto LABEL_26;
      }
    }

    if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113F04();
    }

    goto LABEL_25;
  }

  if (dword_1001D3228 <= 60 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113E84(errorCopy);
  }

LABEL_26:
}

- (void)_homeKitSelfAccessoryMediaAccessUpdated:(unsigned int)updated password:(id)password
{
  updatedCopy = updated;
  passwordCopy = password;
  password = [(RPCompanionLinkDevice *)self->_localDeviceInfo password];
  v13 = passwordCopy;
  v8 = password;
  if (v8 == v13)
  {

    goto LABEL_6;
  }

  if ((v13 != 0) == (v8 == 0))
  {

    goto LABEL_8;
  }

  v9 = [v13 isEqual:v8];

  if (v9)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_12;
  }

LABEL_8:
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113F68(v8, v13);
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setPassword:v13];
  v10 = 1;
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
LABEL_12:
  flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
  v12 = flags & 0xFFFFFFE3 | (8 * (updatedCopy & 3)) | (4 * ([v13 length] != 0));
  if (v12 == flags)
  {
    if (!v10)
    {
      if ((updatedCopy & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaAccessUpdated:password:]", 30, "HomeKit SelfAccessory MediaAccess flags changed: %#{flags} -> %#{flags}\n", flags, &unk_100147B44, v12, &unk_100147B44);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setFlags:v12];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  [(RPCompanionLinkDaemon *)self _update];
  if (updatedCopy)
  {
LABEL_15:
    [(RPCompanionLinkDaemon *)self _disconnectUnauthConnections];
  }

LABEL_16:
}

- (void)_homeKitSelfAccessoryMediaSystemUpdated:(int)updated
{
  mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  uniqueIdentifier = [(HMMediaSystem *)self->_homeKitSelfMediaSystem uniqueIdentifier];
  v7 = mediaSystemIdentifier;
  v8 = v7;
  v9 = uniqueIdentifier != v7;
  if (uniqueIdentifier == v7)
  {

    uUIDString = uniqueIdentifier;
  }

  else
  {
    if ((v7 == 0) != (uniqueIdentifier != 0))
    {
      v10 = [uniqueIdentifier isEqual:v7];

      if (v10)
      {
        v9 = 0;
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaSystemUpdated:]", 30, "HomeKit SelfAccessory MediaSystem identifier changed: %@ -> %@\n", v8, uniqueIdentifier);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemIdentifier:uniqueIdentifier];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
    uUIDString = [uniqueIdentifier UUIDString];
    CFPrefs_SetValue();
  }

LABEL_13:
  mediaSystemIdentifierEffective = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifierEffective];

  if (self->_stereoCnx)
  {
    v13 = uniqueIdentifier;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = v14;
  v16 = mediaSystemIdentifierEffective;
  v17 = v16;
  if (v15 == v16)
  {

    v19 = v9;
    goto LABEL_27;
  }

  if ((v16 == 0) != (v15 != 0))
  {
    v18 = [v15 isEqual:v16];

    v19 = v9;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaSystemUpdated:]", 30, "Effective MediaSystem identifier changed: %@ -> %@\n", v17, v15);
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemIdentifierEffective:v15];
  v19 = 1;
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
LABEL_27:
  mediaSystemName = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemName];
  name = [(HMMediaSystem *)self->_homeKitSelfMediaSystem name];
  v22 = mediaSystemName;
  v23 = v22;
  if (name == v22)
  {
  }

  else
  {
    if ((v22 == 0) == (name != 0))
    {

      goto LABEL_42;
    }

    v24 = [name isEqual:v22];

    if ((v24 & 1) == 0)
    {
LABEL_42:
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaSystemUpdated:]", 30, "HomeKit SelfAccessory MediaSystem name changed: '%@' -> '%@'\n", v23, name);
      }

      [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemName:name];
      v19 = 1;
      [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
      goto LABEL_47;
    }
  }

  if (![name length] && !self->_fixedSoundBoardNameIssue && self->_soundBoardPrefs)
  {
    CFStringGetTypeID();
    v25 = CFPrefs_CopyTypedValue();
    if ([v25 length])
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113FE8(v25);
      }

      CFPrefs_RemoveValue();
      v9 = 1;
      self->_fixedSoundBoardNameIssue = 1;
    }
  }

LABEL_47:
  mediaSystemRole = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole];
  homeKitSelfMediaSystemRole = self->_homeKitSelfMediaSystemRole;
  if (homeKitSelfMediaSystemRole)
  {
    type = [(HMMediaSystemRole *)homeKitSelfMediaSystemRole type];
    if (type == 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * (type == 2);
    }
  }

  else if (self->_homeKitSelfAccessory)
  {
    v29 = 3;
  }

  else
  {
    v29 = 0;
  }

  v49 = v23;
  v50 = name;
  if (v29 != mediaSystemRole)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114028(mediaSystemRole, v29);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemRole:v29];
    if (v29 == 1)
    {
      v30 = &RPDeviceRoleStereoLeft;
    }

    else
    {
      if (v29 != 2)
      {
        v31 = 0;
        goto LABEL_64;
      }

      v30 = &RPDeviceRoleStereoRight;
    }

    v31 = *v30;
LABEL_64:
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setRole:v31];

    v19 = 1;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  mediaSystemRoleEffective = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRoleEffective];
  if (self->_stereoCnx)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == mediaSystemRoleEffective)
  {
    if (!v19)
    {
      goto LABEL_94;
    }

    goto LABEL_80;
  }

  if (dword_1001D3228 <= 30)
  {
    v34 = mediaSystemRoleEffective;
    if (dword_1001D3228 != -1 || _LogCategory_Initialize())
    {
      sub_10011408C(v34, v33);
    }
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemRoleEffective:v33];
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  if (v33 == 1)
  {
    v35 = &RPDeviceRoleStereoLeft;
    goto LABEL_78;
  }

  if (v33 == 2)
  {
    v35 = &RPDeviceRoleStereoRight;
LABEL_78:
    v36 = *v35;
  }

  CFPrefs_SetValue();
  CFPreferencesAppSynchronize(@"com.apple.soundautoconfig");
LABEL_80:
  v46 = v17;
  v47 = v15;
  v48 = v9;
  [(RPCompanionLinkDaemon *)self _update];
  v51[0] = @"_forcedRole";
  role = [(RPCompanionLinkDevice *)self->_localDeviceInfo role];
  v38 = role;
  if (!role)
  {
    v38 = +[NSNull null];
  }

  v52[0] = v38;
  v51[1] = @"_msId";
  mediaSystemIdentifier2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  v40 = mediaSystemIdentifier2;
  if (!mediaSystemIdentifier2)
  {
    v40 = +[NSNull null];
  }

  updatedCopy = updated;
  v52[1] = v40;
  v51[2] = @"_msNm";
  mediaSystemName2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemName];
  v43 = mediaSystemName2;
  if (!mediaSystemName2)
  {
    v43 = +[NSNull null];
  }

  v52[2] = v43;
  v51[3] = @"_msRo";
  v44 = [NSNumber numberWithInt:[(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole]];
  v52[3] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v45 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];

  if (!mediaSystemName2)
  {
  }

  if (!mediaSystemIdentifier2)
  {
  }

  if (!role)
  {
  }

  v9 = v48;
  v17 = v46;
  v15 = v47;
  if (updatedCopy <= 3)
  {
    [(RPCompanionLinkDaemon *)self _stereoDeviceUpdate:(updatedCopy + 1)];
  }

LABEL_94:
  if (v9)
  {
    CFPreferencesAppSynchronize(@"com.apple.airplay");
    notify_post("com.apple.airplay.prefsChanged");
  }
}

- (void)_homeKitSelfAccessoryUpdated
{
  v3 = +[NSMutableDictionary dictionary];
  v29 = v3;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001140F0(v3, v4, v5);
    }
  }

  v6 = self->_homeKitSelfAccessory;
  v9 = v6;
  if (v6)
  {
    roomName = [(RPCompanionLinkDevice *)self->_localDeviceInfo roomName];
    room = [(HMAccessory *)v9 room];
    name = [room name];

    v13 = name;
    v14 = roomName;
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      if ((v14 == 0) == (v13 != 0))
      {

        goto LABEL_16;
      }

      v16 = [v13 isEqual:v14];

      if ((v16 & 1) == 0)
      {
LABEL_16:
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryUpdated]", 30, "HomeKit SelfAccessory room changed: %@ -> %@\n", v15, v13);
        }

        [(RPCompanionLinkDevice *)self->_localDeviceInfo setRoomName:v13];
        [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
        if (v13)
        {
          [v29 setObject:v13 forKeyedSubscript:@"_roomName"];
        }

        else
        {
          v18 = +[NSNull null];
          [v29 setObject:v18 forKeyedSubscript:@"_roomName"];
        }

        v17 = 1;
LABEL_24:
        personalRequestsState = [(RPCompanionLinkDevice *)self->_localDeviceInfo personalRequestsState];
        homeKitSelfAccessorySiriEnabled = self->_homeKitSelfAccessorySiriEnabled;
        if (homeKitSelfAccessorySiriEnabled)
        {
          v21 = 6;
        }

        else
        {
          v21 = 5;
        }

        if (v21 == personalRequestsState)
        {
          if (!v17)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (dword_1001D3228 <= 30)
          {
            v22 = personalRequestsState;
            if (dword_1001D3228 != -1 || _LogCategory_Initialize())
            {
              sub_10011410C(v22, homeKitSelfAccessorySiriEnabled);
            }
          }

          [(RPCompanionLinkDevice *)self->_localDeviceInfo setPersonalRequestsState:v21];
          [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
        }

        [(RPCompanionLinkDaemon *)self _update];
LABEL_35:
        home = [(HMAccessory *)self->_homeKitSelfAccessory home];
        currentUser = [home currentUser];

        currentUser2 = [(RPHomeKitManager *)self->_rpHomeKitManager currentUser];
        uniqueIdentifier = [currentUser uniqueIdentifier];
        uniqueIdentifier2 = [currentUser2 uniqueIdentifier];
        v28 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if ((v28 & 1) == 0)
        {
          [(RPHomeKitManager *)self->_rpHomeKitManager setCurrentUser:0];
          [(RPCompanionLinkDaemon *)self _updatePersonalRequestsStateForHomeHubDevices];
        }

        if ([v29 count])
        {
          [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v29 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];
        }

        goto LABEL_40;
      }
    }

    v17 = 0;
    goto LABEL_24;
  }

  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_100114194(v6, v7, v8);
    }
  }

LABEL_40:
}

- (void)_homeKitUpdateInfo:(BOOL)info
{
  if (info)
  {
    homeKitAuthTag = self->_homeKitAuthTag;
    self->_homeKitAuthTag = 0;

    homeKitIRK = self->_homeKitIRK;
    self->_homeKitIRK = 0;

    homeKitRotatingID = self->_homeKitRotatingID;
    self->_homeKitRotatingID = 0;
  }

  if (!self->_homeKitIRK)
  {
    homeKitLTPK = self->_homeKitLTPK;
    if (homeKitLTPK)
    {
      [(NSData *)homeKitLTPK bytes];
      [(NSData *)self->_homeKitLTPK length];
      CryptoHKDF();
      v11 = [[NSData alloc] initWithBytes:v22 length:{16, v22}];
      v12 = self->_homeKitIRK;
      self->_homeKitIRK = v11;

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001141B0();
      }
    }
  }

  if (!self->_homeKitAuthTag && [(NSData *)self->_homeKitIRK length]== 16)
  {
    if (self->_btAdvAddrData)
    {
      [(NSData *)self->_homeKitIRK bytes];
      [(NSData *)self->_btAdvAddrData bytes];
      [(NSData *)self->_btAdvAddrData length];
      v7 = SipHash();
      v22[0] = BYTE5(v7);
      v22[1] = BYTE4(v7);
      v22[2] = BYTE3(v7);
      v22[3] = BYTE2(v7);
      v22[4] = BYTE1(v7);
      v22[5] = v7;
      v8 = [[NSData alloc] initWithBytes:v22 length:6];
      v9 = self->_homeKitAuthTag;
      self->_homeKitAuthTag = v8;

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001141F0();
      }
    }
  }

  if (!self->_homeKitRotatingID)
  {
    if (self->_btAdvAddrData)
    {
      v13 = self->_homeKitLTPK;
      if (v13)
      {
        if (self->_uniqueIDData)
        {
          v14 = kCryptoHashDescriptor_SHA512;
          [(NSData *)v13 bytes];
          [(NSData *)self->_homeKitLTPK length];
          CryptoHKDF();
          v15 = [(NSData *)self->_btAdvAddrData length];
          btAdvAddrData = self->_btAdvAddrData;
          if (v15 == 6)
          {
            [(NSData *)btAdvAddrData bytes];
            [(NSData *)self->_btAdvAddrData length];
            __memcpy_chk();
            v14 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:0];
            if ([v14 length] == 6)
            {
              [v14 bytes];
              [v14 length];
              __memcpy_chk();
              v17 = [(NSData *)self->_uniqueIDData length];
              uniqueIDData = self->_uniqueIDData;
              if (v17 == 6)
              {
                [uniqueIDData bytes];
                [(NSData *)self->_uniqueIDData length];
                chacha20_all_96x32();
                v19 = [[NSData alloc] initWithBytes:v21 length:6];
                v20 = self->_homeKitRotatingID;
                self->_homeKitRotatingID = v19;

                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011429C();
                }

                return;
              }

LABEL_31:
              sub_100114278(uniqueIDData);
            }
          }

          else
          {
            sub_100114230(btAdvAddrData);
          }

          uniqueIDData = sub_100114254(v14);
          goto LABEL_31;
        }
      }
    }
  }
}

- (id)_eventForHomeHubDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = +[NSMutableDictionary dictionary];
    identifier2 = [deviceCopy identifier];

    if (identifier2)
    {
      [v5 setObject:identifier forKeyedSubscript:@"_i"];
    }

    homeKitIdentifier = [deviceCopy homeKitIdentifier];

    if (homeKitIdentifier)
    {
      homeKitIdentifier2 = [deviceCopy homeKitIdentifier];
      [v5 setObject:homeKitIdentifier2 forKeyedSubscript:@"_hkID"];
    }

    mediaRouteIdentifier = [deviceCopy mediaRouteIdentifier];

    if (mediaRouteIdentifier)
    {
      mediaRouteIdentifier2 = [deviceCopy mediaRouteIdentifier];
      [v5 setObject:mediaRouteIdentifier2 forKeyedSubscript:@"_mRtID"];
    }

    siriInfo = [deviceCopy siriInfo];

    if (siriInfo)
    {
      siriInfo2 = [deviceCopy siriInfo];
      [v5 setObject:siriInfo2 forKeyedSubscript:@"_siriInfo"];
    }

    roomName = [deviceCopy roomName];

    if (roomName)
    {
      roomName2 = [deviceCopy roomName];
      [v5 setObject:roomName2 forKeyedSubscript:@"_roomName"];
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001142DC(deviceCopy);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_homeHubDeviceAdded:(id)added
{
  addedCopy = added;
  homeHubDevices = self->_homeHubDevices;
  v24 = addedCopy;
  if (!homeHubDevices)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_homeHubDevices;
    self->_homeHubDevices = v6;

    addedCopy = v24;
    homeHubDevices = self->_homeHubDevices;
  }

  identifier = [addedCopy identifier];
  v9 = [(NSMutableDictionary *)homeHubDevices objectForKeyedSubscript:identifier];

  if (!v9)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011431C(v24);
    }

    [v24 setPersonalDeviceState:{-[RPCompanionLinkDevice personalDeviceState](self->_localDeviceInfo, "personalDeviceState")}];
    idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsPersonalDeviceIdentifier];
    [v24 setIdsPersonalDeviceIdentifier:idsPersonalDeviceIdentifier];

    rpHomeKitManager = self->_rpHomeKitManager;
    homeKitIdentifier = [v24 homeKitIdentifier];
    v10 = [(RPHomeKitManager *)rpHomeKitManager homeHubDeviceWithIdentifier:homeKitIdentifier];

    v14 = self->_rpHomeKitManager;
    homeKitIdentifier2 = [v24 homeKitIdentifier];
    LODWORD(v14) = [(RPHomeKitManager *)v14 personalRequestsStateForAccessory:homeKitIdentifier2];

    if (v14)
    {
      v16 = 6;
    }

    else
    {
      v16 = 5;
    }

    [v24 setPersonalRequestsState:v16];
    room = [v10 room];
    name = [room name];
    [v24 setRoomName:name];

    v19 = self->_homeHubDevices;
    identifier2 = [v24 identifier];
    [(NSMutableDictionary *)v19 setObject:v24 forKeyedSubscript:identifier2];

    [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v24];
    v21 = [(RPCompanionLinkDaemon *)self _eventForHomeHubDevice:v24];
    if (v21)
    {
      v22 = +[NSMutableArray array];
      [v22 addObject:v21];
      v23 = [NSDictionary dictionaryWithObjectsAndKeys:v22, @"_proxyDevs", 0];
      [(RPCompanionLinkDaemon *)self sendEventID:@"_proxyAdd" event:v23 destinationID:@"rapport:rdid:SameHome" options:0 completion:&stru_1001ABBD8];
    }

    goto LABEL_16;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v10 = CUDescriptionWithLevel();
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeHubDeviceAdded:]", 30, "Ignoring device added (%@) as it already exists: %@\n", v24, v10);
LABEL_16:
  }
}

- (void)_homeHubDeviceRemoved:(id)removed
{
  removedCopy = removed;
  [removedCopy setStatusFlags:{objc_msgSend(removedCopy, "statusFlags") & 0xFFFFFFFFEFFFFFFFLL}];
  [removedCopy setSiriInfo:0];
  [(RPCompanionLinkDaemon *)self _clientReportLostDevice:removedCopy];
  homeHubDevices = self->_homeHubDevices;
  identifier = [removedCopy identifier];
  [(NSMutableDictionary *)homeHubDevices setObject:0 forKeyedSubscript:identifier];

  if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001143BC(removedCopy);
  }

  v6 = [(RPCompanionLinkDaemon *)self _eventForHomeHubDevice:removedCopy];
  if (v6)
  {
    v7 = +[NSMutableArray array];
    [v7 addObject:v6];
    v8 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"_proxyDevs", 0];
    [(RPCompanionLinkDaemon *)self sendEventID:@"_proxyRemove" event:v8 destinationID:@"rapport:rdid:SameHome" options:0 completion:&stru_1001ABBF8];
  }
}

- (void)_updateHomeHubDevices:(id)devices
{
  devicesCopy = devices;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        homeHubDevices = self->_homeHubDevices;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)homeHubDevices objectForKeyedSubscript:identifier];

        if (!v12)
        {
          [(RPCompanionLinkDaemon *)self _homeHubDeviceAdded:v9];
        }
      }

      v6 = [devicesCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v6);
  }

  allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
  v14 = [allValues copy];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    v29 = *v38;
    selfCopy = self;
    do
    {
      v18 = 0;
      v31 = v16;
      do
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v37 + 1) + 8 * v18);
        if (([v19 statusFlags] & 0x20000000) != 0)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v20 = devicesCopy;
          v21 = devicesCopy;
          v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v34;
            while (2)
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                identifier2 = [*(*(&v33 + 1) + 8 * j) identifier];
                identifier3 = [v19 identifier];
                v28 = [identifier2 isEqual:identifier3];

                if (v28)
                {

                  devicesCopy = v20;
                  self = selfCopy;
                  goto LABEL_26;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          self = selfCopy;
          [(RPCompanionLinkDaemon *)selfCopy _homeHubDeviceRemoved:v19];
          devicesCopy = v20;
LABEL_26:
          v17 = v29;
          v16 = v31;
        }

        v18 = v18 + 1;
      }

      while (v18 != v16);
      v16 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v16);
  }

  [(RPCompanionLinkDaemon *)self _update];
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011445C(dCopy);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011449C(dCopy);
    }

    v11 = objc_alloc_init(RPEventRegistration);
    [(RPEventRegistration *)v11 setEventID:dCopy];
    [(RPEventRegistration *)v11 setOptions:optionsCopy];
    [(RPEventRegistration *)v11 setHandler:handlerCopy];
    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredEvents;
      self->_registeredEvents = v13;

      registeredEvents = self->_registeredEvents;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), dCopy = v6, v5))
    {
      sub_1001144DC(dCopy);
      dCopy = v6;
    }
  }

  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  selfCopy = self;
  completionCopy = completion;
  v32 = iDCopy;
  v33 = [(RPCompanionLinkDaemon *)self _checkForProxyOrLocalDestinations:iDCopy eventID:dCopy event:event options:optionsCopy completion:?];
  if (v33)
  {
    xidLast = self->_xidLast;
    if (xidLast + 1 > 1)
    {
      v16 = xidLast + 1;
    }

    else
    {
      v16 = 1;
    }

    self->_xidLast = v16;
    v34 = v16;
    v17 = [NSNumber numberWithUnsignedInt:?];
    v36 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1001B7D68, @"_t", dCopy, @"_i", v33, @"_c", v17, @"_x", 0];

    v18 = [optionsCopy objectForKeyedSubscript:@"chatty"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_cht"];
    }

    v20 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];

    if (v20)
    {
      v21 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
      [v36 setObject:v21 forKeyedSubscript:@"_inUseProc"];
    }

    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = sub_1000029CC;
    v63[4] = sub_10000317C;
    v64 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    group = dispatch_group_create();
    if ([iDCopy isEqual:@"rapport:rdid:InterestedPeers"])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v22 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:dCopy];
      v23 = [v22 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v23)
      {
        v24 = *v56;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v56 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v55 + 1) + 8 * i);
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_10003916C;
            v48[3] = &unk_1001ABC48;
            v48[4] = group;
            v49 = v36;
            v52 = v63;
            v50 = dCopy;
            v54 = v34;
            v51 = optionsCopy;
            v53 = &v59;
            [(RPCompanionLinkDaemon *)selfCopy _forEachMatchingDestinationID:v26 handler:v48];
          }

          v23 = [v22 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100039308;
      v41[3] = &unk_1001ABC48;
      v41[4] = group;
      v42 = v36;
      v45 = v63;
      v43 = dCopy;
      v47 = v34;
      v44 = optionsCopy;
      v46 = &v59;
      [(RPCompanionLinkDaemon *)self _forEachUniqueMatchingDestinationID:iDCopy handler:v41];
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000394A4;
    block[3] = &unk_1001ABC70;
    v39 = completionCopy;
    v40 = v63;
    dispatch_group_notify(group, dispatchQueue, block);
    if (*(v60 + 6))
    {
      goto LABEL_30;
    }

    v28 = dCopy;
    if ([v28 isEqual:@"HIDRelay"] & 1) != 0 || (objc_msgSend(v28, "isEqual:", @"synchSetupStateFromStereoCounterpart") & 1) != 0 || (objc_msgSend(v28, "isEqual:", @"_hidT") & 1) != 0 || (objc_msgSend(v28, "isEqual:", @"_laData"))
    {
    }

    else
    {
      v30 = [v28 isEqual:@"_siA"];

      if (!v30)
      {
        v29 = 30;
        goto LABEL_26;
      }
    }

    v29 = 10;
LABEL_26:
    if (v29 >= dword_1001D3228 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon sendEventID:event:destinationID:options:completion:]", v29, "SendEventID '%@' to %@ not found\n", v28, v32);
    }

LABEL_30:

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(v63, 8);
  }
}

- (BOOL)_receivedEventID:(id)d onXPCCnx:(id)cnx event:(id)event options:(id)options unauth:(BOOL)unauth rpCnx:(id)rpCnx
{
  unauthCopy = unauth;
  dCopy = d;
  cnxCopy = cnx;
  eventCopy = event;
  optionsCopy = options;
  rpCnxCopy = rpCnx;
  registeredEvents = [cnxCopy registeredEvents];
  v20 = [registeredEvents objectForKeyedSubscript:dCopy];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    registeredEvents2 = [cnxCopy registeredEvents];
    v21 = [registeredEvents2 objectForKeyedSubscript:@"*"];

    if (!v21)
    {
LABEL_7:
      v23 = 0;
      goto LABEL_8;
    }
  }

  if (unauthCopy && ![(RPCompanionLinkDaemon *)self _allowMessageForRegistrationOptions:v21 cnx:rpCnxCopy])
  {
    goto LABEL_7;
  }

  [cnxCopy receivedEventID:dCopy event:eventCopy options:optionsCopy];
  v23 = 1;
LABEL_8:

  return v23;
}

- (void)_receivedEventID:(id)d event:(id)event options:(id)options unauth:(BOOL)unauth cnx:(id)cnx
{
  unauthCopy = unauth;
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  cnxCopy = cnx;
  if (([cnxCopy statusFlags] & 0x50000AE000) != 0 && objc_msgSend(dCopy, "isEqual:", @"_interest"))
  {
    [(RPCompanionLinkDaemon *)self _interestReceived:eventCopy cnx:cnxCopy];
    goto LABEL_12;
  }

  if (([dCopy isEqual:@"_proxyAdd"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"_proxyRemove"))
  {
    if (!unauthCopy)
    {
      [(RPCompanionLinkDaemon *)self _proxyDeviceListUpdated:dCopy content:eventCopy options:optionsCopy cnx:cnxCopy];
      goto LABEL_12;
    }

LABEL_7:
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _receivedEventID:event:options:unauth:cnx:]", 90, "Ignoring received event '%@' from unauthenticated device (%@) \n", dCopy, cnxCopy);
    }

    goto LABEL_12;
  }

  if ([dCopy isEqual:@"_proxyUpdate"])
  {
    if (!unauthCopy)
    {
      [(RPCompanionLinkDaemon *)self _existingProxyDeviceUpdated:dCopy event:eventCopy isLocal:0];
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (![dCopy isEqual:@"_needsAWDL"])
  {
LABEL_26:
    [(RPCompanionLinkDaemon *)self _deliverEventID:dCopy event:eventCopy options:optionsCopy unauth:unauthCopy cnx:cnxCopy outError:0];
    goto LABEL_12;
  }

  if (!unauthCopy)
  {
    [(RPCompanionLinkDaemon *)self _serverReceivedNeedsAWDLEvent:dCopy event:eventCopy];
    goto LABEL_26;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _receivedEventID:event:options:unauth:cnx:]", 90, "Ignoring received event '%@' from unauthenticated device (%@)\n", dCopy, cnxCopy);
  }

LABEL_12:
}

- (void)_deliverEventID:(id)d event:(id)event options:(id)options unauth:(BOOL)unauth cnx:(id)cnx outError:(id *)error
{
  unauthCopy = unauth;
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v49 = dCopy;
  cnxCopy = cnx;
  v14 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:dCopy];
  handler = [v14 handler];
  if (handler)
  {
    if (!unauthCopy || ([v14 options], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, v18 = -[RPCompanionLinkDaemon _allowMessageForRegistrationOptions:cnx:](self, "_allowMessageForRegistrationOptions:cnx:", v16, cnxCopy), v17, v18))
    {
      (handler)[2](handler, eventCopy, optionsCopy);
    }
  }

  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();
  v26 = v19;
  if (v19)
  {
    v27 = !unauthCopy;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    sub_10011455C(error, v49, v20, v21, v22, v23, v24, v25);
    goto LABEL_33;
  }

  if (!v19)
  {
    launchInstanceID2 = 0;
LABEL_15:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = self->_xpcConnections;
    v38 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v38)
    {
      v39 = v38;
      v46 = v26;
      v47 = handler;
      v48 = v14;
      v40 = 0;
      v41 = *v55;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v55 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v54 + 1) + 8 * i);
          launchInstanceID = [v43 launchInstanceID];
          v45 = launchInstanceID;
          if ((launchInstanceID2 != 0) == (launchInstanceID != 0) && (!launchInstanceID2 || [launchInstanceID isEqual:launchInstanceID2]))
          {
            v40 |= [(RPCompanionLinkDaemon *)self _receivedEventID:v49 onXPCCnx:v43 event:eventCopy options:optionsCopy unauth:unauthCopy rpCnx:cnxCopy];
          }
        }

        v39 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v39);

      handler = v47;
      v14 = v48;
      v26 = v46;
      if (v40)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011451C(v49);
    }

LABEL_32:

    goto LABEL_33;
  }

  v28 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:v19];
  if (v28)
  {
    v35 = v28;
    launchInstanceID2 = [v28 launchInstanceID];

    goto LABEL_15;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _deliverEventID:event:options:unauth:cnx:outError:]", 90, "### Ignoring event ID '%@', proxy device with identifier %@ is not found", v26, v49);
  }

  if (error)
  {
    *error = RPErrorF(4294960569, "Proxy device %@ is not found", v29, v30, v31, v32, v33, v34, v26);
  }

LABEL_33:
}

- (void)_registerConnectionRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001145AC(dCopy);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001145EC(dCopy);
    }

    v11 = objc_alloc_init(RPRequestRegistration);
    [(RPRequestRegistration *)v11 setRequestID:dCopy];
    [(RPRequestRegistration *)v11 setOptions:optionsCopy];
    [(RPRequestRegistration *)v11 setCnxHandler:handlerCopy];
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredRequests;
      self->_registeredRequests = v13;

      registeredRequests = self->_registeredRequests;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011462C(dCopy);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011466C(dCopy);
    }

    v11 = objc_alloc_init(RPRequestRegistration);
    [(RPRequestRegistration *)v11 setRequestID:dCopy];
    [(RPRequestRegistration *)v11 setOptions:optionsCopy];
    [(RPRequestRegistration *)v11 setHandler:handlerCopy];
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredRequests;
      self->_registeredRequests = v13;

      registeredRequests = self->_registeredRequests;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), dCopy = v6, v5))
    {
      sub_1001146AC(dCopy);
      dCopy = v6;
    }
  }

  [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD xpcID:(unsigned int)xpcID options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  v18 = [(RPCompanionLinkDaemon *)self _addProxyIdentifier:iDCopy toDictionary:request];
  v19 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:iDCopy];
  v20 = v19;
  if (v19 && ([(RPCompanionLinkDevice *)v19 statusFlags]& 0x20000000) != 0)
  {
    selfCopy2 = self;
    localDeviceInfo = v20;
    goto LABEL_9;
  }

  effectiveIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo effectiveIdentifier];
  v22 = [iDCopy isEqual:effectiveIdentifier];

  if (v22)
  {
    localDeviceInfo = self->_localDeviceInfo;
    selfCopy2 = self;
LABEL_9:
    [(RPCompanionLinkDaemon *)selfCopy2 _proxyDevice:localDeviceInfo loopbackRequestID:dCopy request:v18 options:optionsCopy responseHandler:handlerCopy];
    goto LABEL_10;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10003A170;
  v33[3] = &unk_1001ABC98;
  v38 = &v40;
  v34 = dCopy;
  v35 = v18;
  xpcIDCopy = xpcID;
  v36 = optionsCopy;
  v25 = handlerCopy;
  v37 = v25;
  [(RPCompanionLinkDaemon *)self _forEachMatchingDestinationID:iDCopy handler:v33];

  if ((v41[3] & 1) == 0)
  {
    v32 = RPErrorF(4294960569, "'%@' not found", v26, v27, v28, v29, v30, v31, iDCopy);
    (*(v25 + 2))(v25, 0, 0, v32);
  }

  _Block_object_dispose(&v40, 8);
LABEL_10:
}

- (BOOL)_receivedRequestID:(id)d onXPCCnx:(id)cnx request:(id)request options:(id)options responseHandler:(id)handler unauth:(BOOL)unauth rpCnx:(id)rpCnx
{
  unauthCopy = unauth;
  dCopy = d;
  cnxCopy = cnx;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  rpCnxCopy = rpCnx;
  if ((([dCopy isEqualToString:@"_streamStart"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"_streamStop")) && !-[RPCompanionLinkDaemon _allowStreamRequest:xpcCnx:rpCnx:](self, "_allowStreamRequest:xpcCnx:rpCnx:", requestCopy, cnxCopy, rpCnxCopy))
  {
    v23 = 0;
  }

  else
  {
    registeredRequests = [cnxCopy registeredRequests];
    v22 = [registeredRequests objectForKeyedSubscript:dCopy];

    if (v22 && (!unauthCopy || [(RPCompanionLinkDaemon *)self _allowMessageForRegistrationOptions:v22 cnx:rpCnxCopy]))
    {
      [cnxCopy receivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy];
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler unauth:(BOOL)unauth cnx:(id)cnx
{
  unauthCopy = unauth;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  cnxCopy = cnx;
  v18 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];
  handler = [v18 handler];
  cnxHandler = [v18 cnxHandler];
  if (handler | cnxHandler && (!unauthCopy || ([v18 options], (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (v21 = v20, v22 = -[RPCompanionLinkDaemon _allowMessageForRegistrationOptions:cnx:](self, "_allowMessageForRegistrationOptions:cnx:", v20, cnxCopy), v21, v22)))
  {
    v23 = cnxHandler;
    if (cnxHandler)
    {
      (*(cnxHandler + 16))(cnxHandler, cnxCopy, requestCopy, optionsCopy, handlerCopy);
    }

    else
    {
      (*(handler + 16))(handler, requestCopy, optionsCopy, handlerCopy);
    }
  }

  else
  {
    CFStringGetTypeID();
    v24 = CFDictionaryGetTypedValue();
    v25 = v24;
    if (v24)
    {
      v26 = !unauthCopy;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      if (v24)
      {
        if (![(RPCompanionLinkDaemon *)self _proxyDevice:v24 receivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy cnx:cnxCopy])
        {
          v33 = RPErrorF(4294960582, "No request handler", v27, v28, v29, v30, v31, v32, v46);
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v33);
        }
      }

      else
      {
        v47 = handler;
        v48 = v18;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v34 = self->_xpcConnections;
        v35 = [(NSMutableSet *)v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v52;
          while (2)
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v52 != v37)
              {
                objc_enumerationMutation(v34);
              }

              if ([(RPCompanionLinkDaemon *)self _receivedRequestID:dCopy onXPCCnx:*(*(&v51 + 1) + 8 * i) request:requestCopy options:optionsCopy responseHandler:handlerCopy unauth:unauthCopy rpCnx:cnxCopy])
              {

                goto LABEL_25;
              }
            }

            v36 = [(NSMutableSet *)v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        v45 = RPErrorF(4294960582, "No request handler", v39, v40, v41, v42, v43, v44, v46);
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v45);

LABEL_25:
        handler = v47;
        v18 = v48;
        v25 = 0;
      }
    }

    else
    {
      sub_1001146EC(dCopy, v24);
    }

    v23 = cnxHandler;
  }
}

- (BOOL)_allowMessageForRegistrationOptions:(id)options cnx:(id)cnx
{
  optionsCopy = options;
  cnxCopy = cnx;
  v7 = cnxCopy;
  v9 = cnxCopy && (v8 = [cnxCopy statusFlags] & 0x70000AF000) != 0 && (CFDictionaryGetInt64() & v8) != 0 || CFDictionaryGetInt64() != 0;

  return v9;
}

- (BOOL)_allowStreamRequest:(id)request xpcCnx:(id)cnx rpCnx:(id)rpCnx
{
  requestCopy = request;
  cnxCopy = cnx;
  rpCnxCopy = rpCnx;
  client = [cnxCopy client];
  destinationDevice = [client destinationDevice];

  peerDeviceInfo = [rpCnxCopy peerDeviceInfo];

  identifier = [peerDeviceInfo identifier];
  if (identifier)
  {
    identifier2 = [destinationDevice identifier];
    v15 = identifier;
    v16 = identifier2;
    v17 = v16;
    if (v15 == v16)
    {
LABEL_17:
      v27 = v17;
      v28 = v15;
LABEL_27:

      v17 = v27;
      v15 = v28;
LABEL_28:

      goto LABEL_29;
    }

    if (v16)
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];
    v15 = v15;
    v20 = idsDeviceIdentifier;
    v21 = v20;
    if (v15 == v20)
    {
      goto LABEL_26;
    }

    if (v20)
    {
      v22 = [v15 isEqual:v20];

      if (v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  idsDeviceIdentifier2 = [peerDeviceInfo idsDeviceIdentifier];

  if (!idsDeviceIdentifier2)
  {
    client2 = 0;
    goto LABEL_19;
  }

  identifier3 = [destinationDevice identifier];
  v15 = idsDeviceIdentifier2;
  v25 = identifier3;
  v17 = v25;
  if (v15 == v25)
  {
    goto LABEL_17;
  }

  if (v25)
  {
    v26 = [v15 isEqual:v25];

    if (v26)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  idsDeviceIdentifier3 = [destinationDevice idsDeviceIdentifier];
  client2 = v15;
  v31 = idsDeviceIdentifier3;
  v21 = v31;
  if (client2 == v31)
  {
    v15 = client2;
LABEL_26:
    v27 = v17;
    v17 = v15;

    v15 = v21;
    v28 = v17;
    goto LABEL_27;
  }

  if (!v31)
  {
    v15 = client2;
    goto LABEL_37;
  }

  v32 = [client2 isEqual:v31];

  if (v32)
  {
    v15 = client2;
LABEL_29:
    CFStringGetTypeID();
    v17 = CFDictionaryGetTypedValue();
    if (!v17)
    {
      LOBYTE(v21) = 0;
LABEL_38:

      client2 = v15;
      goto LABEL_39;
    }

    client2 = [cnxCopy client];
    serviceType = [client2 serviceType];
    v17 = v17;
    v34 = serviceType;
    v35 = v34;
    if (v17 == v34)
    {
      LOBYTE(v21) = 1;
    }

    else if (v34)
    {
      LOBYTE(v21) = [v17 isEqual:v34];
    }

    else
    {
      LOBYTE(v21) = 0;
    }

LABEL_37:
    goto LABEL_38;
  }

LABEL_19:
  LOBYTE(v21) = 0;
LABEL_39:

  return v21;
}

- (void)_proxyDeviceListUpdated:(id)updated content:(id)content options:(id)options cnx:(id)cnx
{
  updatedCopy = updated;
  contentCopy = content;
  optionsCopy = options;
  cnxCopy = cnx;
  v37 = 0;
  objc_opt_class();
  v12 = NSDictionaryGetNSArrayOfClass();
  if (v12)
  {
    v25 = contentCopy;
    v26 = updatedCopy;
    v28 = [updatedCopy isEqual:@"_proxyAdd"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      v27 = *v34;
      do
      {
        v16 = 0;
        v31 = v14;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * v16);
          CFStringGetTypeID();
          v18 = CFDictionaryGetTypedValue();
          if (v18)
          {
            v19 = NSDictionaryGetNSUUID();
            if (v19)
            {
              v20 = objc_alloc_init(RPCompanionLinkDevice);
              [v20 setIdentifier:v18];
              [v20 setHomeKitIdentifier:v19];
              [v20 setStatusFlags:{objc_msgSend(v20, "statusFlags") | 0x10000000}];
              [v20 setFlags:{objc_msgSend(v20, "flags") | 0x2000}];
              CFStringGetTypeID();
              v21 = CFDictionaryGetTypedValue();
              if (v21)
              {
                [v20 setMediaRouteIdentifier:v21];
              }

              CFDictionaryGetTypeID();
              v22 = CFDictionaryGetTypedValue();
              if (v22)
              {
                [v20 setSiriInfo:v22];
              }

              CFStringGetTypeID();
              v23 = CFDictionaryGetTypedValue();
              if (v23)
              {
                [v20 setRoomName:v23];
              }

              [v20 setStatusFlags:{objc_msgSend(v20, "statusFlags") | objc_msgSend(cnxCopy, "statusFlags") & 0x50000AE000}];
              if (v28)
              {
                [(RPCompanionLinkDaemon *)self _proxyDeviceAdd:v20 options:optionsCopy eventID:v26 deviceInfo:v17 cnx:cnxCopy];
              }

              else
              {
                [(RPCompanionLinkDaemon *)self _proxyDeviceRemove:v20 options:optionsCopy cnx:cnxCopy];
              }

              v14 = v31;
              v15 = v27;
            }

            else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100114768(v17);
            }
          }

          else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001147A8(v17);
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    contentCopy = v25;
    updatedCopy = v26;
    v12 = v24;
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001147E8(&v37);
  }
}

- (void)_proxyDeviceAdd:(id)add options:(id)options eventID:(id)d deviceInfo:(id)info cnx:(id)cnx
{
  addCopy = add;
  dCopy = d;
  infoCopy = info;
  cnxCopy = cnx;
  proxyDevices = [cnxCopy proxyDevices];

  if (!proxyDevices)
  {
    v15 = +[NSMutableArray array];
    [cnxCopy setProxyDevices:v15];
  }

  proxyDevices2 = [cnxCopy proxyDevices];
  [proxyDevices2 addObject:addCopy];

  homeHubDevices = self->_homeHubDevices;
  if (!homeHubDevices)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = self->_homeHubDevices;
    self->_homeHubDevices = v18;

    homeHubDevices = self->_homeHubDevices;
  }

  identifier = [addCopy identifier];
  v21 = [(NSMutableDictionary *)homeHubDevices objectForKeyedSubscript:identifier];

  if (v21)
  {
    [(RPCompanionLinkDaemon *)self _existingProxyDeviceUpdated:dCopy event:infoCopy isLocal:0];
  }

  else
  {
    v22 = self->_homeHubDevices;
    identifier2 = [addCopy identifier];
    [(NSMutableDictionary *)v22 setObject:addCopy forKeyedSubscript:identifier2];

    [addCopy setLinkType:{objc_msgSend(cnxCopy, "linkType")}];
    [addCopy setStatusFlags:{objc_msgSend(addCopy, "statusFlags") | 4}];
    [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:addCopy];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011482C(addCopy);
    }
  }
}

- (void)_proxyDeviceRemove:(id)remove options:(id)options cnx:(id)cnx
{
  removeCopy = remove;
  cnxCopy = cnx;
  [cnxCopy proxyDevices];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      if ([(RPCompanionLinkDaemon *)self _proxyDevice:v14 isEqualTo:removeCopy, v19])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v14;

    if (!v15)
    {
      goto LABEL_16;
    }

    if (([v15 statusFlags] & 0x20000000) != 0)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011488C(removeCopy);
      }
    }

    else
    {
      [v15 setStatusFlags:{objc_msgSend(v15, "statusFlags") & 0xFFFFFFFFEFFFFFFFLL}];
      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v15];
      proxyDevices = [cnxCopy proxyDevices];
      [proxyDevices removeObject:v15];

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001148CC(v15);
      }

      homeHubDevices = self->_homeHubDevices;
      identifier = [removeCopy identifier];
      [(NSMutableDictionary *)homeHubDevices setObject:0 forKeyedSubscript:identifier];
    }
  }

  else
  {
LABEL_9:

LABEL_16:
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114924(removeCopy);
    }

    v15 = 0;
  }
}

- (BOOL)_proxyDevice:(id)device receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler cnx:(id)cnx
{
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  cnxCopy = cnx;
  v15 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:deviceCopy];
  if (v15)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _proxyDevice:receivedRequestID:request:options:responseHandler:cnx:]", 40, "Received requestID '%@' for proxy device %@", dCopy, deviceCopy);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = self->_xpcConnections;
    v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = deviceCopy;
      v19 = *v34;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          launchInstanceID = [v21 launchInstanceID];
          if (launchInstanceID)
          {
            launchInstanceID2 = [v15 launchInstanceID];
            v24 = [launchInstanceID isEqual:launchInstanceID2];

            if (v24)
            {
              if ([(RPCompanionLinkDaemon *)self _receivedRequestID:dCopy onXPCCnx:v21 request:requestCopy options:optionsCopy responseHandler:handlerCopy unauth:0 rpCnx:cnxCopy])
              {

                v25 = 1;
                goto LABEL_21;
              }
            }
          }
        }

        v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v25 = 0;
LABEL_21:
      deviceCopy = v27;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _proxyDevice:receivedRequestID:request:options:responseHandler:cnx:]", 30, "Proxy device with identifier %@ is not found, ignoring request ID %@", deviceCopy, dCopy);
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)_proxyDevice:(id)device isEqualTo:(id)to
{
  deviceCopy = device;
  toCopy = to;
  homeKitIdentifier = [deviceCopy homeKitIdentifier];
  homeKitIdentifier2 = [toCopy homeKitIdentifier];
  if ([homeKitIdentifier isEqual:homeKitIdentifier2])
  {
    v9 = 1;
  }

  else
  {
    identifier = [deviceCopy identifier];
    identifier2 = [toCopy identifier];
    v9 = [identifier isEqual:identifier2];
  }

  return v9;
}

- (BOOL)_destinationID:(id)d matchesProxyDeviceOnCnx:(id)cnx
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  proxyDevices = [cnx proxyDevices];
  v7 = [proxyDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(proxyDevices);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v11 = [identifier isEqual:dCopy];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [proxyDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_addProxyIdentifier:(id)identifier toDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v8 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:identifierCopy];
  if (v8)
  {
    v9 = [dictionaryCopy mutableCopy];
    [v9 setObject:identifierCopy forKeyedSubscript:@"proxyID"];

    dictionaryCopy = v9;
  }

  return dictionaryCopy;
}

- (void)_sendProxyDeviceUpdateToPeer:(id)peer
{
  peerCopy = peer;
  allKeys = [(NSMutableDictionary *)self->_homeHubDevices allKeys];
  v6 = [allKeys count];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
    v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      v10 = allValues;
      goto LABEL_18;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 statusFlags] & 0x20000000) != 0)
        {
          v14 = [(RPCompanionLinkDaemon *)self _eventForHomeHubDevice:v13];
          if (v14)
          {
            if (!v10)
            {
              v10 = +[NSMutableArray array];
            }

            [v10 addObject:v14];
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);

    if (v10)
    {
      v15 = [NSDictionary dictionaryWithObjectsAndKeys:v10, @"_proxyDevs", 0];
      [(RPCompanionLinkDaemon *)self sendEventID:@"_proxyAdd" event:v15 destinationID:peerCopy options:0 completion:&stru_1001ABCB8];

LABEL_18:
    }
  }
}

- (void)_proxyLocalDeviceUpdateOnConnection:(id)connection launchInstanceID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v7 = [(RPCompanionLinkDaemon *)self homeHubDeviceForLaunchInstanceID:dCopy];
  v8 = v7;
  if (v7)
  {
    if (([v7 changed] & 1) != 0 || (objc_msgSend(connectionCopy, "localDeviceUpdated") & 1) == 0)
    {
      [(RPCompanionLinkDaemon *)self _clientReportLocalDevice:v8 xpcCnx:connectionCopy];
      if (([connectionCopy localDeviceUpdated] & 1) == 0)
      {
        [connectionCopy reportFoundDevice:self->_localDeviceInfo outReason:0];
        [connectionCopy setLocalDeviceUpdated:1];
      }

      [v8 setChanged:0];
    }
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001149A4(dCopy);
  }
}

- (id)homeHubDeviceForLaunchInstanceID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        launchInstanceID = [v9 launchInstanceID];
        v11 = [launchInstanceID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_existingProxyDeviceUpdated:(id)updated event:(id)event isLocal:(BOOL)local
{
  localCopy = local;
  updatedCopy = updated;
  eventCopy = event;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:v9];
    if (!v10)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _existingProxyDeviceUpdated:event:isLocal:]", 90, "### HomeHub devices with identifier '%@' was not found for event %@", v9, updatedCopy);
      }

      goto LABEL_38;
    }

    CFDictionaryGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v23 = localCopy;
    if (v11)
    {
      siriInfo = [v10 siriInfo];
      v13 = v11;
      v14 = v13;
      if (siriInfo == v13)
      {
      }

      else
      {
        if (!siriInfo)
        {

          goto LABEL_18;
        }

        v15 = [siriInfo isEqual:v13];

        if ((v15 & 1) == 0)
        {
LABEL_18:
          if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001149E4(v10);
          }

          [v10 setSiriInfo:v14];
          v16 = 1;
LABEL_22:
          CFStringGetTypeID();
          v17 = CFDictionaryGetTypedValue();
          if (v17)
          {
            roomName = [v10 roomName];
            v19 = [v17 isEqual:roomName];

            if ((v19 & 1) == 0)
            {
              if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100114A40();
              }

              [v10 setRoomName:v17];
              v16 = 1;
            }
          }

          CFStringGetTypeID();
          v20 = CFDictionaryGetTypedValue();
          if (v20 && ([v10 mediaRouteIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, (v22 & 1) == 0))
          {
            if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100114ABC();
            }

            [v10 setMediaRouteIdentifier:v20];
          }

          else if ((v16 | v23) != 1)
          {
            goto LABEL_37;
          }

          [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v10 changes:2];
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }
      }
    }

    v16 = 0;
    goto LABEL_22;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114B38(updatedCopy);
  }

LABEL_39:
}

- (void)_createRequestEntryForXid:(id)xid requestID:(id)d options:(id)options responseHandler:(id)handler
{
  xidCopy = xid;
  optionsCopy = options;
  handlerCopy = handler;
  dCopy = d;
  v14 = objc_alloc_init(RPRequestEntry);
  [(RPRequestEntry *)v14 setOptions:optionsCopy];
  [(RPRequestEntry *)v14 setRequestID:dCopy];

  [(RPRequestEntry *)v14 setResponseHandler:handlerCopy];
  [(RPRequestEntry *)v14 setSendTicks:mach_absolute_time()];
  [(NSMutableDictionary *)self->_loopbackRequests setObject:v14 forKeyedSubscript:xidCopy];
  if (optionsCopy)
  {
    CFDictionaryGetDouble();
    if (v15 > 0.0)
    {
      v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10003C1B0;
      handler[3] = &unk_1001AB130;
      handler[4] = v16;
      handler[5] = self;
      v18 = xidCopy;
      dispatch_source_set_event_handler(v16, handler);
      CUDispatchTimerSet();
      dispatch_resume(v16);
      [(RPRequestEntry *)v14 setTimer:v16];
    }
  }
}

- (void)_proxyDevice:(id)device loopbackRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114BE8(dCopy);
    }

    identifier2 = [deviceCopy identifier];
    v26 = RPErrorF(4294960569, "'%@' not found", v20, v21, v22, v23, v24, v25, identifier2);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);

    goto LABEL_34;
  }

  if (!self->_loopbackRequests)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    loopbackRequests = self->_loopbackRequests;
    self->_loopbackRequests = v15;
  }

  loopbackXid = self->_loopbackXid;
  if (loopbackXid + 1 > 1)
  {
    v18 = loopbackXid + 1;
  }

  else
  {
    v18 = 1;
  }

  self->_loopbackXid = v18;
  v51 = v18;
  v55 = [NSNumber numberWithUnsignedInt:?];
  v49 = handlerCopy;
  v50 = optionsCopy;
  [RPCompanionLinkDaemon _createRequestEntryForXid:"_createRequestEntryForXid:requestID:options:responseHandler:" requestID:? options:? responseHandler:?];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _proxyDevice:loopbackRequestID:request:options:responseHandler:]", 30, "SendRequestID '%@', XID 0x%x, to device %@ over loopback\n", dCopy, v51, identifier);
  }

  v66[0] = @"dlt";
  v66[1] = @"senderID";
  v67[0] = &off_1001B7D80;
  v67[1] = identifier;
  v66[2] = @"xid";
  v67[2] = v55;
  v53 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->_xpcConnections;
  v27 = [(NSMutableSet *)obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (!v27)
  {
    goto LABEL_30;
  }

  v28 = v27;
  v29 = *v62;
  do
  {
    for (i = 0; i != v28; i = i + 1)
    {
      if (*v62 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v61 + 1) + 8 * i);
      launchInstanceID = [deviceCopy launchInstanceID];
      launchInstanceID2 = [v31 launchInstanceID];
      v34 = launchInstanceID;
      v35 = launchInstanceID2;
      v36 = v35;
      if (v34 == v35)
      {

LABEL_25:
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10003C800;
        v58[3] = &unk_1001ABCE0;
        v58[4] = self;
        v58[5] = v55;
        v58[6] = identifier;
        v60 = v51;
        v59 = deviceCopy;
        v38 = [(RPCompanionLinkDaemon *)self _receivedRequestID:dCopy onXPCCnx:v31 request:requestCopy options:v53 responseHandler:v58 unauth:0 rpCnx:0];

        if (v38)
        {
          handlerCopy = v49;
          optionsCopy = v50;
          v48 = obj;
          goto LABEL_33;
        }

        continue;
      }

      if ((v34 != 0) == (v35 == 0))
      {

        continue;
      }

      v37 = [v34 isEqual:v35];

      if (v37)
      {
        goto LABEL_25;
      }
    }

    v28 = [(NSMutableSet *)obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  }

  while (v28);
LABEL_30:

  v48 = [(NSMutableDictionary *)self->_loopbackRequests objectForKeyedSubscript:v55];
  [(NSMutableDictionary *)self->_loopbackRequests setObject:0 forKeyedSubscript:v55];
  timer = [v48 timer];
  [v48 setTimer:0];
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  responseHandler = [v48 responseHandler];
  v47 = RPErrorF(4294960582, "Request '%@' not handled", v41, v42, v43, v44, v45, v46, dCopy);
  (responseHandler)[2](responseHandler, 0, 0, v47);

  handlerCopy = v49;
  optionsCopy = v50;
LABEL_33:

LABEL_34:
}

- (id)_checkForProxyOrLocalDestinations:(id)destinations eventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  destinationsCopy = destinations;
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  v17 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:destinationsCopy];
  if (v17 && (-[RPCompanionLinkDaemon _addProxyIdentifier:toDictionary:](self, "_addProxyIdentifier:toDictionary:", destinationsCopy, eventCopy), v18 = objc_claimAutoreleasedReturnValue(), eventCopy, eventCopy = v18, ([v17 flags] & 0x20000000) != 0) || (-[RPCompanionLinkDevice effectiveIdentifier](self->_localDeviceInfo, "effectiveIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(destinationsCopy, "isEqual:", v19), v19, v20))
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _checkForProxyOrLocalDestinations:eventID:event:options:completion:]", 30, "Send eventID '%@' to destination %@ over loopback\n", dCopy, destinationsCopy);
    }

    v24 = 0;
    [(RPCompanionLinkDaemon *)self _deliverEventID:dCopy event:eventCopy options:optionsCopy unauth:0 cnx:0 outError:&v24];
    v22 = v24;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v22);
    }

    v21 = 0;
  }

  else
  {
    eventCopy = eventCopy;
    v21 = eventCopy;
  }

  return v21;
}

- (void)sessionStartSend:(id)send session:(id)session xpcID:(unsigned int)d destinationID:(id)iD completion:(id)completion
{
  sendCopy = send;
  sessionCopy = session;
  iDCopy = iD;
  selfCopy = self;
  completionCopy = completion;
  sessionIDLast = self->_sessionIDLast;
  v15 = __CFADD__(sessionIDLast, 1);
  v16 = sessionIDLast + 1;
  v17 = sessionIDLast + 2;
  if (!v15)
  {
    v17 = v16;
  }

  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  self->_sessionIDLast = v17;
  localIdentifier = [sessionCopy localIdentifier];
  serviceType = [sessionCopy serviceType];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    label = [sendCopy label];
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon sessionStartSend:session:xpcID:destinationID:completion:]", 30, "Session start request: Service %@, destinationID %@, CSID 0x%llX, LocalID %@, connection %@\n", serviceType, iDCopy, v18, localIdentifier, label);
  }

  btPipeHighPriority = [sendCopy btPipeHighPriority];
  v23 = [btPipeHighPriority state] == 1;

  v50[0] = serviceType;
  v49[0] = @"_srvT";
  v49[1] = @"_sid";
  [NSNumber numberWithUnsignedLongLong:v18];
  v24 = v33 = localIdentifier;
  v50[1] = v24;
  v49[2] = @"_btHP";
  [NSNumber numberWithBool:v23];
  v26 = v25 = v18;
  v50[2] = v26;
  v34 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];

  v48[0] = &off_1001B7D98;
  v47[0] = @"timeoutSeconds";
  v47[1] = @"highPriority";
  v27 = [NSNumber numberWithBool:v23];
  v48[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10003CF58;
  v38[3] = &unk_1001ABD08;
  v38[4] = serviceType;
  v39 = iDCopy;
  v44 = completionCopy;
  v45 = v25;
  v40 = v33;
  v41 = sessionCopy;
  v42 = sendCopy;
  v43 = selfCopy;
  dCopy = d;
  v29 = sendCopy;
  v30 = sessionCopy;
  v31 = completionCopy;
  v32 = iDCopy;
  [v29 sendEncryptedRequestID:@"_sessionStart" request:v34 xpcID:d options:v28 responseHandler:v38];
}

- (void)sessionStopSend:(id)send session:(id)session xpcID:(unsigned int)d completion:(id)completion
{
  sendCopy = send;
  completionCopy = completion;
  sessionCopy = session;
  localIdentifier = [sessionCopy localIdentifier];
  peerIdentifier = [sendCopy peerIdentifier];
  serviceType = [sessionCopy serviceType];
  sessionID = [sessionCopy sessionID];

  if (sessionID)
  {
    dCopy = d;
    v29 = completionCopy;
    v27 = [NSNumber numberWithUnsignedLongLong:sessionID];
    [(NSMutableDictionary *)self->_activeSessions setObject:0 forKeyedSubscript:?];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon sessionStopSend:session:xpcID:completion:]", 30, "Session stop request: Service %@, PeerID %@, SID 0x%llX, LocalID %@\n", serviceType, peerIdentifier, sessionID, localIdentifier);
    }

    btPipeHighPriority = [sendCopy btPipeHighPriority];
    v18 = [btPipeHighPriority state] == 1;

    v35[0] = @"_sid";
    v19 = [NSNumber numberWithUnsignedLongLong:sessionID];
    v35[1] = @"_btHP";
    v36[0] = v19;
    v20 = [NSNumber numberWithInt:v18];
    v36[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

    v34[0] = &off_1001B7DB0;
    v33[0] = @"timeoutSeconds";
    v33[1] = @"highPriority";
    v22 = [NSNumber numberWithInt:v18];
    v34[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003D618;
    v30[3] = &unk_1001ABD30;
    v30[4] = serviceType;
    v30[5] = peerIdentifier;
    v32 = sessionID;
    v30[6] = localIdentifier;
    completionCopy = v29;
    v31 = v29;
    [sendCopy sendEncryptedRequestID:@"_sessionStop" request:v21 xpcID:dCopy options:v23 responseHandler:v30];
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon sessionStopSend:session:xpcID:completion:]", 30, "Waiting to send session stop request for session that has not completed starting: Service %@, PeerID %@, LocalID %@", serviceType, peerIdentifier, localIdentifier);
    }

    if (!self->_pendingSessionStopsMap)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      pendingSessionStopsMap = self->_pendingSessionStopsMap;
      self->_pendingSessionStopsMap = v24;
    }

    v26 = objc_retainBlock(completionCopy);
    [(NSMutableDictionary *)self->_pendingSessionStopsMap setObject:v26 forKeyedSubscript:localIdentifier];
  }
}

- (void)_sessionHandleStartRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  cnxCopy = cnx;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_1000029CC;
  v105 = sub_10000317C;
  v106 = 0;
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_10003DF24;
  v98[3] = &unk_1001ABD58;
  v100 = &v101;
  handlerCopy = handler;
  v99 = handlerCopy;
  v71 = objc_retainBlock(v98);
  CFStringGetTypeID();
  v75 = CFDictionaryGetTypedValue();
  if (!v75)
  {
    v61 = RPErrorF(4294960534, "No senderID", v10, v11, v12, v13, v14, v15, v70);
    v62 = v102[5];
    v102[5] = v61;

    goto LABEL_43;
  }

  v97 = 0;
  Int64 = CFDictionaryGetInt64();
  if (!Int64)
  {
    v63 = RPErrorF(4294960591, "Bad peer sessionID", v16, v17, v18, v19, v20, v21, v70);
    v29 = v102[5];
    v102[5] = v63;
    goto LABEL_42;
  }

  CFStringGetTypeID();
  v29 = CFDictionaryGetTypedValue();
  if (!v29)
  {
    v64 = RPErrorF(4294896129, "No service type", v23, v24, v25, v26, v27, v28, v70);
    v65 = v102[5];
    v102[5] = v64;

    goto LABEL_42;
  }

  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_1000029CC;
  v95 = sub_10000317C;
  v96 = 0;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v30 = self->_activeServers;
  v31 = [(NSMutableSet *)v30 countByEnumeratingWithState:&v87 objects:v111 count:16];
  if (v31)
  {
    v32 = *v88;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v88 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v87 + 1) + 8 * i);
        serviceType = [v34 serviceType];
        v36 = [serviceType isEqual:v29];

        if (v36)
        {
          objc_storeStrong(v92 + 5, v34);
          goto LABEL_14;
        }
      }

      v31 = [(NSMutableSet *)v30 countByEnumeratingWithState:&v87 objects:v111 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  handler = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_1000029CC;
  v85 = sub_10000317C;
  v86 = 0;
  if (v92[5])
  {
    goto LABEL_17;
  }

  xpcMatchingMap = self->_xpcMatchingMap;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10003DFF4;
  v80[3] = &unk_1001ABD80;
  v80[4] = v29;
  v80[5] = &v81;
  v80[6] = &v91;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v80];
  if (v92[5])
  {
    handler = [v82[5] handler];
    if (handler)
    {
LABEL_17:
      sessionIDLast = self->_sessionIDLast;
      v46 = __CFADD__(sessionIDLast, 1);
      v47 = sessionIDLast + 1;
      v48 = sessionIDLast + 2;
      if (!v46)
      {
        v48 = v47;
      }

      if (v47 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v47;
      }

      self->_sessionIDLast = v48;
      v50 = Int64 | (v49 << 32);
      v51 = [NSNumber numberWithUnsignedLongLong:v50];
      v52 = objc_alloc_init(RPSession);
      [v52 setPeerID:v75];
      [v52 setServiceType:v29];
      [v52 setSessionID:v50];
      [v52 setStartTicks:mach_absolute_time()];
      [v52 setCnx:cnxCopy];
      activeSessions = self->_activeSessions;
      if (!activeSessions)
      {
        v54 = objc_alloc_init(NSMutableDictionary);
        v55 = self->_activeSessions;
        self->_activeSessions = v54;

        activeSessions = self->_activeSessions;
      }

      [(NSMutableDictionary *)activeSessions setObject:v52 forKeyedSubscript:v51];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v56 = v82[5];
        if (v56)
        {
          token = [v56 token];
        }

        else
        {
          token = -1;
        }

        localIdentifier = [v52 localIdentifier];
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _sessionHandleStartRequest:options:cnx:responseHandler:]", 30, "Session start received: Service %@, PeerID %@, SID 0x%llX, Token %lld persona %@, LocalID %@\n", v29, v75, v50, token, 0, localIdentifier);
      }

      if (v82[5] && handler)
      {
        v109[0] = @"type";
        v109[1] = @"serviceType";
        v110[0] = @"server";
        v110[1] = v29;
        v109[2] = @"sessionID";
        v109[3] = @"replyRequired";
        v110[2] = v51;
        v110[3] = &__kCFBooleanTrue;
        v59 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:4];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _sessionHandleStartRequest:options:cnx:responseHandler:]", 30, "LaunchOnDemand service type %@ payload %@\n", v29, v59);
        }

        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_10003E0B0;
        v77[3] = &unk_1001ABDA8;
        v77[4] = self;
        v77[5] = v51;
        v77[6] = v52;
        v78 = handlerCopy;
        v79 = v49;
        (handler)[2](handler, 0, v59, v77);
      }

      else
      {
        v107 = @"_sid";
        v60 = [NSNumber numberWithUnsignedLongLong:v49];
        v108 = v60;
        v59 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];

        (*(handlerCopy + 2))(handlerCopy, v59, 0, 0);
      }

      goto LABEL_41;
    }

    v66 = "No LaunchOnDemand handler";
    v67 = 4294960534;
  }

  else
  {
    v66 = "Unsupported service type";
    v67 = 4294896131;
  }

  v68 = RPErrorF(v67, v66, v39, v40, v41, v42, v43, v44, v70);
  v69 = v102[5];
  v102[5] = v68;

LABEL_41:
  _Block_object_dispose(&v81, 8);

  _Block_object_dispose(&v91, 8);
LABEL_42:

LABEL_43:
  (v71[2])(v71);

  _Block_object_dispose(&v101, 8);
}

- (void)_sessionHandleStopRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  cnxCopy = cnx;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1000029CC;
  v61 = sub_10000317C;
  v62 = 0;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10003E678;
  v54[3] = &unk_1001ABD58;
  v56 = &v57;
  handlerCopy = handler;
  v55 = handlerCopy;
  v14 = objc_retainBlock(v54);
  CFStringGetTypeID();
  v21 = CFDictionaryGetTypedValue();
  if (!v21)
  {
    v44 = RPErrorF(4294896131, "No senderID", v15, v16, v17, v18, v19, v20, v51);
    v45 = v58[5];
    v58[5] = v44;

    goto LABEL_20;
  }

  Int64 = CFDictionaryGetInt64();
  v53 = optionsCopy;
  if (!Int64)
  {
    v46 = RPErrorF(4294960591, "Bad sessionID", v22, v23, v24, v25, v26, v27, v51);
    v29 = v58[5];
    v58[5] = v46;
    goto LABEL_19;
  }

  v52 = requestCopy;
  v29 = [NSNumber numberWithUnsignedLongLong:Int64];
  v30 = [(NSMutableDictionary *)self->_activeSessions objectForKeyedSubscript:v29];
  v37 = v30;
  if (v30)
  {
    peerID = [v30 peerID];
    v39 = [peerID isEqual:v21];

    if (v39)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        serviceType = [v37 serviceType];
        localIdentifier = [v37 localIdentifier];
        LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _sessionHandleStopRequest:options:cnx:responseHandler:]", 30, "Session stop: Service %@, PeerID %@, SID 0x%llX, LocalID %@ request\n", serviceType, v21, Int64, localIdentifier);
      }

      (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
      [(NSMutableDictionary *)self->_activeSessions setObject:0 forKeyedSubscript:v29];
      [v37 setCnx:0];
      [cnxCopy sessionStopped:v37];
      if ([cnxCopy clientMode] && (objc_msgSend(cnxCopy, "controlFlags") & 0x200) != 0)
      {
        v42 = [(RPCompanionLinkDaemon *)self _sessionsActiveOnConnection:cnxCopy xpcConnection:0];
        if (v42 < 1)
        {
          [cnxCopy invalidate];
        }

        else if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          label = [cnxCopy label];
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _sessionHandleStopRequest:options:cnx:responseHandler:]", 40, "Connection %@ has %llu active sessions in progress, skip invalidating", label, v42);
        }
      }

      [v37 invalidate];
      goto LABEL_18;
    }

    v47 = "Not owner of session";
    v48 = 4294960523;
  }

  else
  {
    v47 = "Session not found";
    v48 = 4294960569;
  }

  v49 = RPErrorF(v48, v47, v31, v32, v33, v34, v35, v36, v51);
  v50 = v58[5];
  v58[5] = v49;

LABEL_18:
  requestCopy = v52;
LABEL_19:

  optionsCopy = v53;
LABEL_20:

  (v14[2])(v14);
  _Block_object_dispose(&v57, 8);
}

- (void)_sessionHandlePeerDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  peerIdentifier = [disconnectCopy peerIdentifier];
  if (peerIdentifier)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(NSMutableDictionary *)self->_activeSessions allKeys];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = [(NSMutableDictionary *)self->_activeSessions objectForKeyedSubscript:v10];
          peerID = [v11 peerID];
          v13 = [peerID isEqual:peerIdentifier];

          if (!v13 || ([v11 cnx], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 != disconnectCopy))
          {

            goto LABEL_18;
          }

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100114E14();
          }

          [v11 setCnx:0];
          [(NSMutableDictionary *)self->_activeSessions setObject:0 forKeyedSubscript:v10];
          [v11 invalidate];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v15 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v7 = v15;
      }

      while (v15);
    }

LABEL_18:
  }

  else
  {
    sub_100114E98();
  }
}

- (int64_t)_sessionsActiveOnConnection:(id)connection xpcConnection:(id)xpcConnection
{
  connectionCopy = connection;
  xpcConnectionCopy = xpcConnection;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  xpcConnections = self->_xpcConnections;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003EAB4;
  v18[3] = &unk_1001ABDD0;
  v9 = xpcConnectionCopy;
  v19 = v9;
  v10 = connectionCopy;
  v20 = v10;
  v21 = &v22;
  [(NSMutableSet *)xpcConnections enumerateObjectsUsingBlock:v18];
  activeSessions = self->_activeSessions;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003EB88;
  v15[3] = &unk_1001ABDF8;
  v12 = v10;
  v16 = v12;
  v17 = &v22;
  [(NSMutableDictionary *)activeSessions enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (void)_handleContextCollectorProxyRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [requestCopy objectForKeyedSubscript:@"ctxCollProxyReq"];
  v19 = v11;
  if (v11)
  {
    v20 = [requestCopy mutableCopy];
    [v20 removeObjectForKey:@"ctxCollProxyReq"];
    v21 = [v20 copy];

    _contextCollectorDevice = [(RPCompanionLinkDaemon *)self _contextCollectorDevice];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114F10(_contextCollectorDevice, v19);
    }

    identifier = [_contextCollectorDevice identifier];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10003EDE4;
    v26[3] = &unk_1001ABE20;
    v27 = handlerCopy;
    [(RPCompanionLinkDaemon *)self sendRequestID:v19 request:v21 destinationID:identifier options:optionsCopy responseHandler:v26];

    requestCopy = v21;
  }

  else
  {
    if (dword_1001D3228 <= 90)
    {
      if (dword_1001D3228 != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        sub_100114F7C(v11, v12, v13);
      }
    }

    v24 = RPErrorF(4294960534, "Missing proxy requestID", v13, v14, v15, v16, v17, v18, v25);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v24);
  }
}

- (void)_handleContextCollectorRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  _contextCollectorDevice = [(RPCompanionLinkDaemon *)self _contextCollectorDevice];
  v13 = _contextCollectorDevice;
  if (_contextCollectorDevice)
  {
    bonjourDevice = [_contextCollectorDevice bonjourDevice];
    deviceInfo = [bonjourDevice deviceInfo];

    ipAddress = [v13 ipAddress];
    bonjourDevice2 = [v13 bonjourDevice];
    deviceInfo2 = [bonjourDevice2 deviceInfo];
    CFStringGetTypeID();
    v19 = CFDictionaryGetTypedValue();

    if (deviceInfo && ipAddress && v19)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100114F98(v13);
      }

      v29[0] = @"_bi";
      v29[1] = @"_dIP";
      v30[0] = deviceInfo;
      v30[1] = ipAddress;
      v29[2] = @"_i";
      v30[2] = v19;
      v26 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
      v27 = 0;
    }

    else
    {
      v27 = RPErrorF(4294960534, "Insufficient context collector device information", v20, v21, v22, v23, v24, v25, v28);
      v26 = 0;
    }
  }

  else
  {
    v27 = RPErrorF(4294960534, "No context collector found (proxy discovery)", v7, v8, v9, v10, v11, v12, v28);
    v26 = 0;
  }

  handlerCopy[2](handlerCopy, v26, 0, v27);
}

- (id)_contextCollectorDevice
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_activeDevices allValues];
  v3 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        bonjourDevice = [v6 bonjourDevice];

        if (bonjourDevice)
        {
          bonjourDevice2 = [v6 bonjourDevice];
          txtDictionary = [bonjourDevice2 txtDictionary];

          if ((CFDictionaryGetInt64() & 0x800000) != 0)
          {
            bonjourDevice3 = [v6 bonjourDevice];
            deviceInfo = [bonjourDevice3 deviceInfo];
            CFStringGetTypeID();
            v12 = CFDictionaryGetTypedValue();

            if (v12)
            {
              v3 = v6;

              goto LABEL_14;
            }
          }
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPCompanionLinkXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPCompanionLinkXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  ++self->_xpcLastID;
  [(RPCompanionLinkXPCConnection *)v6 setXpcID:?];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = self->_xpcClientInterface;
  if (!v10)
  {
    v32 = [NSSet alloc];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v32 initWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPCompanionLinkXPCClientInterface];
    [(NSXPCInterface *)v10 setClasses:v18 forSelector:"companionLinkReceivedEventID:event:options:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v10 setClasses:v18 forSelector:"companionLinkReceivedRequestID:request:options:responseHandler:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v10 setClasses:v18 forSelector:"companionLinkReceivedRequestID:request:options:responseHandler:" argumentIndex:0 ofReply:1];
    objc_storeStrong(&self->_xpcClientInterface, v10);
  }

  v19 = self->_xpcServerInterface;
  if (!v19)
  {
    v33 = [NSSet alloc];
    v31 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v33 initWithObjects:{v31, v20, v21, v22, v23, v24, v25, objc_opt_class(), 0}];
    v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPCompanionLinkXPCServerInterface];
    v27 = [NSSet alloc];
    v28 = objc_opt_class();
    v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
    [(NSXPCInterface *)v19 setClasses:v29 forSelector:"companionLinkActivateClient:completion:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v19 setClasses:v26 forSelector:"companionLinkSendEventID:event:destinationID:options:nwActivityToken:completion:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v19 setClasses:v26 forSelector:"companionLinkSendRequestID:request:destinationID:options:nwActivityToken:responseHandler:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v19 setClasses:v26 forSelector:"companionLinkSendRequestID:request:destinationID:options:nwActivityToken:responseHandler:" argumentIndex:0 ofReply:1];
    objc_storeStrong(&self->_xpcServerInterface, v19);
  }

  [connectionCopy setExportedInterface:v19];
  [connectionCopy setExportedObject:v6];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10003F628;
  v34[3] = &unk_1001AB488;
  v34[4] = self;
  v34[5] = v6;
  [connectionCopy setInvalidationHandler:v34];
  [connectionCopy setRemoteObjectInterface:v10];
  [connectionCopy _setQueue:self->_dispatchQueue];
  [connectionCopy resume];
  if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114FD8(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
  [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
  rbsPID = [invalidatedCopy rbsPID];

  if (rbsPID)
  {
    rbsPID2 = [invalidatedCopy rbsPID];
    [(RPCompanionLinkDaemon *)self _removeApplicationPID:rbsPID2];
  }
}

- (void)_clientReportUINoteDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (self->_prefUINotesEnabled)
  {
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    if (idsDeviceIdentifier || ([v5 identifier], (idsDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "publicIdentifier"), (idsDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = idsDeviceIdentifier;
      v22 = 0;
      v8 = [(RPCompanionLinkDaemon *)self _findDeviceWithDevice:v5 deviceMap:self->_uiNoteDevices matchedIdentifier:&v22];
      if (([v5 statusFlags] & 0x200000) != 0)
      {
        if (!v8)
        {
          sub_1000454B8();
          if (v11 ^ v12 | v10)
          {
            if (v13 != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientReportUINoteDevice:]", 30, "UINote found: %@\n", v5);
            }
          }
        }

        uiNoteDevices = self->_uiNoteDevices;
        if (!uiNoteDevices)
        {
          v17 = objc_alloc_init(NSMutableDictionary);
          v18 = self->_uiNoteDevices;
          self->_uiNoteDevices = v17;

          uiNoteDevices = self->_uiNoteDevices;
        }

        [(NSMutableDictionary *)uiNoteDevices setObject:v5 forKeyedSubscript:v7];
      }

      else if (v8)
      {
        sub_1000454B8();
        if (v11 ^ v12 | v10 && (v9 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientReportUINoteDevice:]", 30, "UINote lost: %@\n", v8);
        }

        [(NSMutableDictionary *)self->_uiNoteDevices setObject:0 forKeyedSubscript:v22];
        [v8 setUiTriggered:0];
        identifier = [(CUUserNotificationSession *)self->_uiNoteSession identifier];
        if ([identifier isEqual:v22])
        {
          sub_1000454B8();
          if (v11 ^ v12 | v10 && (v15 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientReportUINoteDevice:]", 30, "UINote dismiss UI on lost: %@\n", v8);
          }

          [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
          uiNoteSession = self->_uiNoteSession;
          self->_uiNoteSession = 0;
        }
      }

      if (!self->_uiNoteSession)
      {
        goto LABEL_38;
      }

      if (![(NSMutableDictionary *)self->_uiNoteDevices count])
      {
        sub_1000454B8();
        if (v11 ^ v12 | v10 && (v20 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientReportUINoteDevice:]", 30, "UINote stop on empty: %@\n", v8);
        }

        [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
        v21 = self->_uiNoteSession;
        self->_uiNoteSession = 0;
      }

      if (!self->_uiNoteSession)
      {
LABEL_38:
        [(RPCompanionLinkDaemon *)self _clientUINoteProcessPending];
      }
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientReportUINoteDevice:]", 90, "### UINote ignore no ID: %@\n", v5);
    }
  }
}

@end