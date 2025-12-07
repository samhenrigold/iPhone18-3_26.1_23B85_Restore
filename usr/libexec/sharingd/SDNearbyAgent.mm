@interface SDNearbyAgent
+ (SDNearbyAgent)sharedNearbyAgent;
- (BOOL)_bleNearbyActionScannerShouldScan;
- (BOOL)_bleNearbyInfoAdvertiserLingerIfNeeded;
- (BOOL)_bleNearbyInfoAdvertiserShouldAddField3;
- (BOOL)_bleNearbyInfoAdvertiserShouldAdvertise;
- (BOOL)_bleNearbyInfoScannerShouldScan;
- (BOOL)_bleProximityPairingScannerShouldScan;
- (BOOL)_deviceCanTriggerEnhancedDiscovery:(id)discovery;
- (BOOL)_identificationIdentifyDevice:(id)device sfDevice:(id)sfDevice;
- (BOOL)_idsHasActiveWatch;
- (BOOL)_idsShouldAdvertiseNearbyInfo;
- (BOOL)_isDeviceMountedAndScreenOff;
- (BOOL)_onlyRingVisionDeviceWhenDonned;
- (BOOL)hasAdHocPairings;
- (BOOL)idsIsSignedIn;
- (BOOL)isDeviceValidRIServer:(id)server;
- (BOOL)isTempAuthTagKnown:(id)known bluetoothAddressData:(id)data;
- (NSArray)adHocPairedDeviceIdentities;
- (NSString)description;
- (SDNearbyAgent)init;
- (double)_activityMonitorLastUserEventDelta;
- (id)_bleUpdateUseCases:(id)cases;
- (id)_idsBluetoothDeviceIDsForAnnouncements;
- (id)_idsBluetoothDeviceIDsForHomePods;
- (id)_idsBluetoothDeviceIDsForLEPipe;
- (id)_idsBluetoothDeviceIDsForMe;
- (id)_idsBluetoothDeviceIDsForOneness;
- (id)_idsBluetoothDeviceIDsForSMSRelay;
- (id)_idsBluetoothDeviceIDsForSharing;
- (id)_idsBluetoothDeviceIDsForSharingLocked;
- (id)_idsBluetoothDeviceIDsForiMessage;
- (id)_idsDeviceArrayLocked;
- (id)_useCasesToHexString:(id)string;
- (id)bleProximityEstimatorForActionType:(unsigned __int8)type device:(id)device;
- (id)bleProximityInfo;
- (id)bleProximityInfoForActionType:(unsigned __int8)type device:(id)device;
- (id)bleProximityInfoForType:(id)type device:(id)device;
- (id)bleProximityInfoForType:(id)type device:(id)device allInfo:(id)info;
- (id)bleProximityRSSIEstimatorInfo;
- (id)idsBluetoothDeviceIDsForLEPipe;
- (id)idsBluetoothDeviceIDsForRIServers;
- (id)idsBluetoothDeviceIDsForSharing;
- (id)idsBluetoothDeviceIDsForWatches;
- (id)idsDeviceArray;
- (id)idsDeviceForBluetoothDeviceID:(id)d conflictDetected:(BOOL *)detected;
- (id)idsDeviceIDsForFamily;
- (id)idsDeviceIDsForRIServers;
- (id)sharedNearbyPipe;
- (int)_allowEnhancedDiscovery;
- (int)_bleNearbyInfoReceivedFrameType:(unsigned __int8)type src:(const char *)src end:(const char *)end cnx:(id)cnx;
- (int)_idsAppleTVCount;
- (int)_idsContinuityDeviceCount;
- (int)_idsHomePodCount;
- (int)_idsMacCount;
- (int)_idsShouldEncryptActivityLevel;
- (int)_idsVisionOS1Count;
- (int)_idsVisionOS2OrHigherCount;
- (int)_idsWatchCount;
- (int)_sendMessage:(id)message frameType:(unsigned __int8)type service:(id)service session:(id)session;
- (int)_setupHandleCreateSession:(id)session data:(id)data;
- (int)_setupHandleSessionCreated:(id)created data:(id)data;
- (int)_setupHandleSessionEncryptedFrame:(id)frame type:(unsigned __int8)type cnx:(id)cnx;
- (int)_setupHandleSessionMessageType:(unsigned __int8)type src:(const char *)src end:(const char *)end cnx:(id)cnx session:(id)session;
- (int)_setupSendCreateSession:(id)session cnx:(id)cnx;
- (int)_setupSendData:(id)data sessionIdentifier:(id)identifier cnx:(id)cnx clientSession:(id)session;
- (int)bleNearbyInfoSendFrameType:(unsigned __int8)type serviceType:(unsigned __int8)serviceType data:(id)data peer:(id)peer isSession:(BOOL)session;
- (int)bleNearbyInfoStartConnectionToDevice:(id)device owner:(id)owner connected:(BOOL *)connected;
- (int)serviceStart:(id)start;
- (int)sessionStart:(id)start;
- (int64_t)bleProximityRSSIThreshold:(id)threshold;
- (int64_t)bleProximityRSSIThresholdForType:(int64_t)type device:(id)device;
- (unsigned)_activityMonitorCurrentLevelAndNeedsPoll:(BOOL *)poll recentUserActivity:(BOOL *)activity;
- (unsigned)_bleEncryptActivityLevel:(unsigned __int8)level;
- (unsigned)_bleProximityUpdateDeviceCloseNearbyActionDevice:(id)device;
- (unsigned)_bleProximityUpdateNearbyActionDevice:(id)device;
- (unsigned)_bleProximityUpdateNearbyInfoDevice:(id)device;
- (unsigned)_identificationDecryptActivityLevel:(unsigned __int8)level device:(id)device authTag:(id)tag identity:(id)identity;
- (void)_activate;
- (void)_activityMonitorCarPlayStatusChanged:(id)changed;
- (void)_activityMonitorEnsureStarted;
- (void)_activityMonitorEnsureStopped;
- (void)_activityMonitorMediaAccessControlSettingChanged:(id)changed;
- (void)_activityMonitorMultipleUsersLoggedInChanged:(id)changed;
- (void)_activityMonitorScreenStateChanged:(id)changed;
- (void)_activityMonitorUILockStatusChanged:(id)changed;
- (void)_activityMonitorUpdate;
- (void)_activityMonitorUpdateUserActive:(BOOL)active;
- (void)_activityMonitorWatchWristStateChanged:(id)changed;
- (void)_bleAdvertisingAddressChanged;
- (void)_bleNearbyActionAdvertiserEnsureStarted;
- (void)_bleNearbyActionAdvertiserEnsureStopped;
- (void)_bleNearbyActionScannerEnsureStarted;
- (void)_bleNearbyActionScannerEnsureStopped;
- (void)_bleNearbyInfoAdvertiserEnsureStarted;
- (void)_bleNearbyInfoAdvertiserEnsureStopped;
- (void)_bleNearbyInfoAdvertiserLingerStart:(id)start;
- (void)_bleNearbyInfoAdvertiserUpdate;
- (void)_bleNearbyInfoAdvertiserUpdateAddAudioRoutingScore:(id)score;
- (void)_bleNearbyInfoAdvertiserUpdateAddHotspotInfo:(id)info;
- (void)_bleNearbyInfoAdvertiserUpdateAdvertiseReason:(id)reason;
- (void)_bleNearbyInfoAdvertisingUpdateAddCameraState:(id)state;
- (void)_bleNearbyInfoReceivedData:(id)data cnx:(id)cnx peer:(id)peer;
- (void)_bleNearbyInfoScannerEnsureStarted;
- (void)_bleNearbyInfoScannerEnsureStopped;
- (void)_bleProximityPairingScannerEnsureStarted;
- (void)_bleProximityPairingScannerEnsureStopped;
- (void)_bleUpdateAuthTagIfNeeded;
- (void)_bleUpdateScanner:(id)scanner typeFlag:(unint64_t)flag;
- (void)_btPipeEnsureStarted;
- (void)_btPipeEnsureStopped;
- (void)_btPipeHandleFrameType:(unsigned __int8)type data:(id)data;
- (void)_btPipeStateChanged:(id)changed;
- (void)_cameraStateChanged;
- (void)_cancelDonStateRetryTimers;
- (void)_checkBrightnessLuxValue;
- (void)_checkConditionsForEnhancedDiscovery;
- (void)_deliverDoffedEvent;
- (void)_deliverDonnedEventToDevice:(id)device allowRetry:(BOOL)retry;
- (void)_deliverDonnedEventsStart;
- (void)_deviceDiscoveryBLEDeviceChanged:(id)changed type:(int64_t)type changes:(unsigned int)changes;
- (void)_deviceDiscoveryBLEDeviceFound:(id)found type:(int64_t)type;
- (void)_deviceDiscoveryBLEDeviceLost:(id)lost type:(int64_t)type;
- (void)_deviceDiscoveryBLEScanStateChanged:(int64_t)changed type:(int64_t)type;
- (void)_deviceDiscoveryFastScanEvaluate:(id)evaluate device:(id)device;
- (void)_deviceDiscoveryFastScanStart:(id)start device:(id)device reason:(id)reason;
- (void)_deviceDiscoveryFastScanStop:(id)stop reset:(BOOL)reset reason:(id)reason;
- (void)_deviceDiscoveryRequestStart:(id)start;
- (void)_disableEnhancedDiscovery:(id)discovery;
- (void)_discoverySessionStateChange:(BOOL)change;
- (void)_enableEnhancedDiscovery:(id)discovery useCase:(unsigned int)case;
- (void)_enhancedDiscoveryScreenChange:(BOOL)change;
- (void)_enhancedDiscoveryTimerFired;
- (void)_handleAirDropDiscoverableModeChanged:(id)changed;
- (void)_handleAppleIDChanged:(id)changed;
- (void)_handleBluetoothDeviceConnected:(id)connected;
- (void)_handleDonStateReceivedRequest:(id)request withOptions:(id)options;
- (void)_handleRetryTimerForDevice:(id)device;
- (void)_identificationCheckFlagsAndACL;
- (void)_identificationDecryptAudioRoutingScoreData:(id)data device:(id)device authTag:(id)tag identity:(id)identity;
- (void)_identificationDecryptHotspotData:(id)data device:(id)device authTag:(id)tag identity:(id)identity;
- (void)_identificationEnsureStarted;
- (void)_identificationEnsureStopped;
- (void)_identificationGetIdentities;
- (void)_identificationHandleDeviceFound:(id)found flags:(unint64_t)flags;
- (void)_identificationHandleDeviceLost:(id)lost flags:(unint64_t)flags;
- (void)_identificationHandleDiscoveryStop;
- (void)_identificationMaintenanceTimer;
- (void)_identificationReIdentify;
- (void)_identificationReIdentifySameAccountDevices:(id)devices type:(int64_t)type;
- (void)_idsEnsureStarted;
- (void)_idsEnsureStopped;
- (void)_idsMeDeviceChanged;
- (void)_invalidate;
- (void)_invalidateActiveDeviceDiscoveryIfNeeded;
- (void)_mirroringStateChanged:(id)changed;
- (void)_notifyCameraConfigChange;
- (void)_performTemporaryScan;
- (void)_postNotificationForWombatState:(unsigned int)state;
- (void)_registerForDonStateRequest;
- (void)_registerForMagicMountUpdates;
- (void)_registerForWombatActivityNotification;
- (void)_sendUnlockData:(id)data toBLEDevice:(id)device direct:(BOOL)direct completion:(id)completion;
- (void)_smartCoverStatusChanged:(id)changed;
- (void)_startPeriodicScanner;
- (void)_startUnlockBLEConnectionWithDevice:(id)device encrypted:(BOOL)encrypted;
- (void)_stopPeriodicScanner;
- (void)_stopUnlockBLEConnectionWithDevice:(id)device;
- (void)_systemHasPoweredOn;
- (void)_systemWillSleep;
- (void)_testPipePing;
- (void)_unlockApproveBluetoothIDsChanged:(id)changed;
- (void)_unlockDeviceFilterChangedForRequest:(id)request;
- (void)_unlockReceivedFrameData:(id)data peer:(id)peer device:(id)device;
- (void)_unregisterForMagicMountUpdates;
- (void)_unregisterForWombatActivityNotification;
- (void)_update;
- (void)_updateCameraState;
- (void)_updateDonState;
- (void)_useLuxValue;
- (void)_wirelessCriticalChanged:(id)changed;
- (void)activate;
- (void)activityStateWithCompletion:(id)completion;
- (void)bleNearbyInfoStopConnectionToDevice:(id)device owner:(id)owner;
- (void)bleProximityEstimatorsResetDeviceClose;
- (void)coordinatedAlertRequestCancel:(id)cancel;
- (void)coordinatedAlertRequestFinish:(id)finish;
- (void)coordinatedAlertRequestStart:(id)start;
- (void)cutWiFiManagerLinkDidChange:(id)change context:(id)context;
- (void)deviceDiscoveryFastScanCancel:(id)cancel reason:(id)reason;
- (void)deviceDiscoveryFastScanTrigger:(id)trigger reason:(id)reason;
- (void)deviceDiscoveryRequestStart:(id)start;
- (void)deviceDiscoveryRequestStop:(id)stop;
- (void)deviceDiscoveryRequestUpdate:(id)update;
- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery reason:(id)reason;
- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery reason:(id)reason useCase:(unsigned int)case;
- (void)diagnosticBLEModeStart:(id)start;
- (void)diagnosticBLEModeStop:(id)stop;
- (void)diagnosticMockChanged:(id)changed;
- (void)diagnosticMockFound:(id)found;
- (void)diagnosticMockLost:(id)lost;
- (void)idsAddCachedIDSIdentifier:(id)identifier device:(id)device;
- (void)idsAddCachedIDSIdentifierToDevice:(id)device;
- (void)idsDevicesAppendDescription:(id *)description;
- (void)invalidate;
- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error;
- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error;
- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer;
- (void)nearbyDidUpdateState:(id)state;
- (void)prefillDefaultsForGenuineCheckIfNecessary;
- (void)prefsChanged;
- (void)sendUnlockData:(id)data toBLEDevice:(id)device completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)serviceReceivedFrameType:(unsigned __int8)type serviceType:(unsigned __int8)serviceType data:(id)data peer:(id)peer;
- (void)serviceSendRequest:(id)request service:(id)service;
- (void)serviceStop:(id)stop;
- (void)sessionReceivedFrameType:(unsigned __int8)type serviceType:(unsigned __int8)serviceType data:(id)data peer:(id)peer;
- (void)sessionSendEvent:(id)event session:(id)session;
- (void)sessionSendRequest:(id)request session:(id)session;
- (void)sessionStop:(id)stop;
- (void)setAudioRoutingScore:(int)score;
- (void)setAutoUnlockActive:(BOOL)active;
- (void)setBoostNearbyInfo:(BOOL)info;
- (void)setEnhancedDiscovery:(BOOL)discovery;
- (void)setHotspotInfo:(unsigned int)info;
- (void)startUnlockBLEConnectionWithDevice:(id)device encrypted:(BOOL)encrypted;
- (void)stopUnlockBLEConnectionWithDevice:(id)device;
- (void)testPipePing;
- (void)unlockStartTestClientWithDevice:(id)device;
- (void)unlockStartTestServer;
- (void)unlockStopTestClient;
- (void)unlockStopTestServer;
- (void)unlockUpdateAdvertising:(unsigned int)advertising mask:(unsigned int)mask;
- (void)update;
@end

@implementation SDNearbyAgent

- (void)_identificationEnsureStarted
{
  if (self->_idIdentitiesChangedNotifyToken == -1)
  {
    handler[7] = v2;
    handler[8] = v3;
    firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
    if (firstUnlocked)
    {
      if (dword_100973248 <= 30)
      {
        if (dword_100973248 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
        {
          sub_100265DA8(firstUnlocked, v6, v7);
        }
      }

      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1002577A4;
      handler[3] = &unk_1008CE690;
      handler[4] = self;
      notify_register_dispatch("com.apple.rapport.identitiesChanged", &self->_idIdentitiesChangedNotifyToken, dispatchQueue, handler);
      [(SDNearbyAgent *)self _identificationGetIdentities];
    }

    else if (dword_100973248 <= 20)
    {
      if (dword_100973248 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
      {
        sub_100265D8C(firstUnlocked, v6, v7);
      }
    }
  }
}

- (void)_bleNearbyActionAdvertiserEnsureStarted
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v4 = self->_services;
  v70 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v70)
  {
    v72 = 0;
    v73 = 0;
    targetAuthTag3 = 0;
    deviceModelCode = 0;
    deviceClassCode = 0;
    v67 = 0;
    advertiseRate = 0;
    v5 = 0;
    v6 = 0;
    v74 = 0;
    v7 = 0;
    deviceColorCode = SFDeviceColorCodeUnknown;
    v69 = *v77;
    v71 = 1;
    v61 = v3;
    obj = v4;
LABEL_3:
    v8 = 0;
    while (2)
    {
      if (*v77 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v76 + 1) + 8 * v8)];
      deviceActionType = [v9 deviceActionType];
      v11 = 990;
      switch(deviceActionType)
      {
        case 0u:
          goto LABEL_48;
        case 1u:
          if (SFIsDeviceAudioAccessory())
          {
            goto LABEL_108;
          }

          v11 = 680;
LABEL_44:
          v12 = v11 < v5;
          if (v11 > v5)
          {
            v5 = v11;
          }

          if (!v12)
          {
            v6 = deviceActionType;
          }

LABEL_48:
          if ((!-[CUSystemMonitor screenOn](self->_systemMonitor, "screenOn") || -[CUSystemMonitor screenSaverActive](self->_systemMonitor, "screenSaverActive")) && ![v9 overrideScreenOff])
          {
            goto LABEL_108;
          }

          if ([v9 advertiseRate] > advertiseRate)
          {
            advertiseRate = [v9 advertiseRate];
          }

          authTagOverride = [v9 authTagOverride];
          v14 = authTagOverride;
          if (authTagOverride)
          {
            v15 = authTagOverride;

            v67 = v15;
          }

          if ([v9 deviceClassCode])
          {
            deviceClassCode = [v9 deviceClassCode];
          }

          if ([v9 deviceColorCode])
          {
            deviceColorCode = [v9 deviceColorCode];
          }

          if ([v9 deviceModelCode])
          {
            deviceModelCode = [v9 deviceModelCode];
          }

          if ([v9 needsKeyboard])
          {
            v16 = v7 | 0x20;
          }

          else
          {
            v16 = v7;
          }

          if ([v9 needsSetup])
          {
            v7 = v16 | 0x40;
          }

          else
          {
            v7 = v16;
          }

          sessionFlags = [v9 sessionFlags];
          v18 = sessionFlags;
          if ((sessionFlags & 0x200) != 0)
          {
            if ([(SDStatusMonitor *)self->_statusMonitor mediaAccessControlSetting]== 1)
            {
              v19 = 24;
            }

            else
            {
              v19 = 16;
            }

            v7 |= v19;
          }

          problemFlags = [v9 problemFlags];
          v21 = v73;
          if (!v73)
          {
            if ([v9 deviceActionType] == 8)
            {
              requestSSID = [v9 requestSSID];
              uTF8String = [requestSSID UTF8String];

              if (uTF8String)
              {
                *md = 0u;
                v81 = 0u;
                v24 = strlen(uTF8String);
                CC_SHA256(uTF8String, v24, md);
                v21 = [[NSData alloc] initWithBytes:md length:3];
              }

              else
              {
                v21 = 0;
              }

              v3 = v61;
            }

            else
            {
              v21 = 0;
            }
          }

          v73 = v21;
          v74 |= (v18 & 0x80) >> 7;
          if ((v71 & 1) == 0)
          {
            v71 = 0;
            goto LABEL_102;
          }

          if ([v9 deviceActionType] != 51)
          {
            goto LABEL_97;
          }

          targetAuthTag = [v9 targetAuthTag];
          if (targetAuthTag)
          {
            v26 = targetAuthTag;
            targetAuthTag2 = [v9 targetAuthTag];
            v28 = [targetAuthTag2 length];

            if (v28 == 3)
            {
              v3 = v61;
              if (!targetAuthTag3)
              {
                targetAuthTag3 = [v9 targetAuthTag];
                v74 |= 4u;
              }
            }

            else
            {
              v3 = v61;
            }
          }

          targetAuthTag4 = [v9 targetAuthTag];

          if (targetAuthTag4)
          {
            if (!targetAuthTag3)
            {
              targetAuthTag3 = 0;
LABEL_97:
              v71 = 1;
              goto LABEL_102;
            }

            targetAuthTag5 = [v9 targetAuthTag];
            if (!targetAuthTag5)
            {
              goto LABEL_97;
            }

            v31 = targetAuthTag5;
            targetAuthTag6 = [v9 targetAuthTag];
            v33 = [targetAuthTag3 isEqual:targetAuthTag6];

            if (v33)
            {
              v71 = 1;
              v3 = v61;
              goto LABEL_102;
            }

            v3 = v61;
            if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100262E50(v9, targetAuthTag3);
            }
          }

          else if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100262EAC();
          }

          v71 = 0;
          targetAuthTag3 = 0;
          v74 &= ~4u;
LABEL_102:
          if ([v9 deviceActionType] == 84)
          {
            deviceClassCode = SFDeviceClassCodeGet();
            deviceModelCode = SFDeviceModelCodeGet();
            deviceColorCode = SFDeviceColorCodeGet();
          }

          v72 |= problemFlags;
          if ([v9 deviceActionType] == 90)
          {
            payloadDovePeace2 = [v9 payloadDovePeace2];
            v35 = [NSNumber numberWithUnsignedChar:payloadDovePeace2];
            [v3 setObject:v35 forKeyedSubscript:@"dpp"];

            if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100262EE0(payloadDovePeace2);
            }
          }

LABEL_108:

          if (v70 != ++v8)
          {
            continue;
          }

          v36 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v76 objects:v82 count:16];
          v70 = v36;
          if (v36)
          {
            goto LABEL_3;
          }

          v37 = v7;
          if (!v7 && (v6 - 28 > 0x38 || ((1 << (v6 - 28)) & 0x10000001A008053) == 0) && v6 != 19)
          {
            v42 = v67;
            goto LABEL_131;
          }

          self->_bleNearbyActionAdvertiseActive = 1;
          if (advertiseRate)
          {
            v38 = advertiseRate;
          }

          else
          {
            v38 = 40;
          }

          if (deviceClassCode)
          {
            v39 = [NSNumber numberWithUnsignedChar:deviceClassCode];
            [v3 setObject:v39 forKeyedSubscript:@"cl"];
          }

          if (deviceColorCode)
          {
            v40 = [NSNumber numberWithUnsignedChar:deviceColorCode];
            [v3 setObject:v40 forKeyedSubscript:@"cc"];
          }

          if (deviceModelCode)
          {
            v41 = [NSNumber numberWithUnsignedChar:deviceModelCode];
            [v3 setObject:v41 forKeyedSubscript:@"md"];
          }

          if ((v7 & 0x20) != 0)
          {
            [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"nk"];
          }

          if (v7 >= 0x40u)
          {
            [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ns"];
          }

          else if (!v7)
          {
            goto LABEL_142;
          }

          v48 = [NSNumber numberWithUnsignedChar:v7];
          [v3 setObject:v48 forKeyedSubscript:@"af1"];

LABEL_142:
          if (v74)
          {
            v49 = [NSNumber numberWithUnsignedChar:v74];
            [v3 setObject:v49 forKeyedSubscript:@"af2"];
          }

          v42 = v67;
          if (targetAuthTag3)
          {
            [v3 setObject:targetAuthTag3 forKeyedSubscript:@"tatag"];
          }

          v50 = [NSNumber numberWithUnsignedChar:v6];
          [v3 setObject:v50 forKeyedSubscript:@"dt"];

          [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
          bleAuthTagOverride = self->_bleAuthTagOverride;
          if (bleAuthTagOverride || (bleAuthTagOverride = v67) != 0 || (bleAuthTagOverride = self->_bleAuthTag) != 0)
          {
            [v3 setObject:bleAuthTagOverride forKeyedSubscript:@"at"];
          }

          if (v6 != 8 || !self->_contactHashesEnabled)
          {
            goto LABEL_156;
          }

          v52 = self->_contactHashesCached;
          if (v52)
          {
            myMediumHashes = v52;
          }

          else
          {
            myMediumHashes = [(SDStatusMonitor *)self->_statusMonitor myMediumHashes];
            objc_storeStrong(&self->_contactHashesCached, myMediumHashes);
            if (!myMediumHashes)
            {
              goto LABEL_156;
            }
          }

          [v3 setObject:myMediumHashes forKeyedSubscript:@"ach"];

LABEL_156:
          if (v72)
          {
            v54 = [NSNumber numberWithUnsignedLongLong:?];
            [v3 setObject:v54 forKeyedSubscript:@"pf"];
          }

          if (v73)
          {
            [v3 setObject:v73 forKeyedSubscript:@"ssidH"];
          }

          v55 = self->_bleNearbyActionAdvertiseLingerTimer;
          v56 = v55;
          if (v55)
          {
            dispatch_source_cancel(v55);
            bleNearbyActionAdvertiseLingerTimer = self->_bleNearbyActionAdvertiseLingerTimer;
            self->_bleNearbyActionAdvertiseLingerTimer = 0;
          }

          if (self->_bleNearbyActionAdvertiser)
          {
            if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100262F24(v37);
            }

            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setPayloadFields:v3];
            if (v38 != [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser advertiseRate])
            {
              [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setAdvertiseRate:v38];
            }
          }

          else
          {
            if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyActionAdvertiserEnsureStarted]", 30, "BLE NearbyAction advertiser start: %#{flags}, %##@\n", v37, &unk_1007F5468, v3);
            }

            v58 = [[SFBLEAdvertiser alloc] initWithType:15];
            bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
            self->_bleNearbyActionAdvertiser = v58;

            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setAdvertiseRate:v38];
            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setDispatchQueue:self->_dispatchQueue];
            _idsBluetoothDeviceIDsForLEPipe = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForLEPipe];
            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setLePipeDevices:_idsBluetoothDeviceIDsForLEPipe];

            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setPayloadFields:v3];
            [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser activateWithCompletion:&stru_1008D55B0];
          }

          break;
        case 4u:
          v11 = 480;
          goto LABEL_44;
        case 5u:
          v11 = 450;
          goto LABEL_44;
        case 6u:
          v11 = 960;
          goto LABEL_44;
        case 7u:
          v11 = 470;
          goto LABEL_44;
        case 8u:
          v11 = 950;
          goto LABEL_44;
        case 9u:
          v11 = 670;
          goto LABEL_44;
        case 0xAu:
          v11 = 630;
          goto LABEL_44;
        case 0xBu:
          v11 = 690;
          goto LABEL_44;
        case 0xCu:
          v11 = 980;
          goto LABEL_44;
        case 0xDu:
          v11 = 660;
          goto LABEL_44;
        case 0xEu:
          v11 = 930;
          goto LABEL_44;
        case 0x11u:
          v11 = 590;
          goto LABEL_44;
        case 0x12u:
          v11 = 580;
          goto LABEL_44;
        case 0x13u:
          v11 = 920;
          goto LABEL_44;
        case 0x14u:
          v11 = 490;
          goto LABEL_44;
        case 0x15u:
          v11 = 460;
          goto LABEL_44;
        case 0x16u:
          v11 = 910;
          goto LABEL_44;
        case 0x18u:
          v11 = 640;
          goto LABEL_44;
        case 0x19u:
        case 0x1Eu:
          v11 = 940;
          goto LABEL_44;
        case 0x1Bu:
          v11 = 900;
          goto LABEL_44;
        case 0x1Cu:
          v11 = 970;
          goto LABEL_44;
        case 0x1Du:
          v11 = 880;
          goto LABEL_44;
        case 0x1Fu:
          v11 = 895;
          goto LABEL_44;
        case 0x20u:
          v11 = 965;
          goto LABEL_44;
        case 0x21u:
          v11 = 700;
          goto LABEL_44;
        case 0x22u:
          v11 = 971;
          goto LABEL_44;
        case 0x24u:
          v11 = 665;
          goto LABEL_44;
        case 0x2Bu:
          v11 = 966;
          goto LABEL_44;
        case 0x32u:
          goto LABEL_44;
        case 0x33u:
          v11 = 790;
          goto LABEL_44;
        case 0x35u:
          v11 = 890;
          goto LABEL_44;
        case 0x37u:
          v11 = 985;
          goto LABEL_44;
        case 0x38u:
          v11 = 860;
          goto LABEL_44;
        case 0x54u:
          v11 = 870;
          goto LABEL_44;
        case 0x5Au:
          v11 = 667;
          goto LABEL_44;
        default:
          v11 = 1;
          goto LABEL_44;
      }

      break;
    }
  }

  else
  {

    v73 = 0;
    targetAuthTag3 = 0;
    v42 = 0;
LABEL_131:
    self->_bleNearbyActionAdvertiseActive = 0;
    if (self->_bleNearbyActionAdvertiser && !self->_bleNearbyActionAdvertiseLingerTimer)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100262F6C();
      }

      [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setPayloadFields:v3];
      [(SFBLEAdvertiser *)self->_bleNearbyActionAdvertiser setAdvertiseRate:50];
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100262FB4();
      }

      v43 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v44 = self->_bleNearbyActionAdvertiseLingerTimer;
      self->_bleNearbyActionAdvertiseLingerTimer = v43;

      v45 = self->_bleNearbyActionAdvertiseLingerTimer;
      v46 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v45, v46, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v47 = self->_bleNearbyActionAdvertiseLingerTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10024973C;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v47, handler);
      dispatch_resume(self->_bleNearbyActionAdvertiseLingerTimer);
    }
  }
}

- (id)idsBluetoothDeviceIDsForSharing
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsBluetoothDevicesSet = selfCopy->_idsBluetoothDevicesSet;
  if (!idsBluetoothDevicesSet)
  {
    v4 = [NSSet alloc];
    _idsBluetoothDeviceIDsForSharingLocked = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForSharingLocked];
    v6 = [v4 initWithArray:_idsBluetoothDeviceIDsForSharingLocked];
    v7 = selfCopy->_idsBluetoothDevicesSet;
    selfCopy->_idsBluetoothDevicesSet = v6;

    idsBluetoothDevicesSet = selfCopy->_idsBluetoothDevicesSet;
  }

  v8 = idsBluetoothDevicesSet;
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_update
{
  if (self->_activated)
  {
    selfCopy = self;
    bleNearbyInfoAdvertiseAlways = self->_bleNearbyInfoAdvertiseAlways;
    if (!self->_caEnabled)
    {
      goto LABEL_12;
    }

    if (self->_caSingleDevice)
    {
      goto LABEL_13;
    }

    if ([(SDNearbyAgent *)self idsIsSignedIn])
    {
      if ([(SDNearbyAgent *)selfCopy _idsContinuityDeviceCount]<= 0 && !bleNearbyInfoAdvertiseAlways)
      {
        goto LABEL_7;
      }
    }

    else
    {
LABEL_12:
      if (!bleNearbyInfoAdvertiseAlways)
      {
LABEL_7:
        [(SDNearbyAgent *)selfCopy _activityMonitorEnsureStopped];
        v5 = 0;
        goto LABEL_14;
      }
    }

LABEL_13:
    [(SDNearbyAgent *)selfCopy _activityMonitorEnsureStarted];
    v5 = 1;
LABEL_14:
    if (selfCopy->_idEnabled)
    {
      [(SDNearbyAgent *)selfCopy _identificationEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)selfCopy _identificationEnsureStopped];
    }

    if ([(SDNearbyAgent *)selfCopy _bleNearbyActionAdvertiserShouldAdvertise])
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyActionAdvertiserEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyActionAdvertiserEnsureStopped];
    }

    if ([(SDNearbyAgent *)selfCopy _bleNearbyActionScannerShouldScan])
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyActionScannerEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyActionScannerEnsureStopped];
    }

    if ([(SDNearbyAgent *)selfCopy _bleNearbyInfoAdvertiserShouldAdvertise]|| [(SDNearbyAgent *)selfCopy _bleNearbyInfoAdvertiserLingerIfNeeded])
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyInfoAdvertiserEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyInfoAdvertiserEnsureStopped];
    }

    if ([(SDNearbyAgent *)selfCopy _bleNearbyInfoScannerShouldScan])
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyInfoScannerEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)selfCopy _bleNearbyInfoScannerEnsureStopped];
    }

    if ([(SDNearbyAgent *)selfCopy _bleProximityPairingScannerShouldScan])
    {
      [(SDNearbyAgent *)selfCopy _bleProximityPairingScannerEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)selfCopy _bleProximityPairingScannerEnsureStopped];
    }

    v6 = selfCopy;
    objc_sync_enter(v6);
    if (v6->_btPipeEnabled || v6->_btPipeForced)
    {
      [(SDNearbyAgent *)v6 _btPipeEnsureStarted];
    }

    else
    {
      [(SDNearbyAgent *)v6 _btPipeEnsureStopped];
    }

    objc_sync_exit(v6);

    if (v5)
    {

      [(SDNearbyAgent *)v6 _activityMonitorUpdate];
    }

    else if ([(SDNearbyAgent *)v6 _bleNearbyInfoAdvertiserShouldAdvertise])
    {

      [(SDNearbyAgent *)v6 _bleNearbyInfoAdvertiserUpdate];
    }

    return;
  }

  if (dword_100973248 <= 90)
  {
    if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100262DBC(self, a2, v2);
    }
  }
}

- (id)_idsBluetoothDeviceIDsForMe
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = &selfCopy->super.isa;
  idsBluetoothDeviceIDsForMe = selfCopy->_idsBluetoothDeviceIDsForMe;
  if (idsBluetoothDeviceIDsForMe)
  {
    v4 = idsBluetoothDeviceIDsForMe;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableSet);
    meDeviceIDSDeviceID = [(CUSystemMonitor *)selfCopy->_systemMonitor meDeviceIDSDeviceID];
    if (meDeviceIDSDeviceID)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      idsDeviceArray = [(SDNearbyAgent *)selfCopy idsDeviceArray];
      v8 = [idsDeviceArray countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            nsuuid = [v11 nsuuid];
            if (nsuuid)
            {
              uniqueIDOverride = [v11 uniqueIDOverride];
              v14 = [uniqueIDOverride isEqual:meDeviceIDSDeviceID];

              if ((v14 & 1) != 0 || ([v11 modelIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasPrefix:", @"Watch"), v15, v16))
              {
                [v5 addObject:nsuuid];
              }
            }
          }

          v8 = [idsDeviceArray countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }
    }

    v17 = [v5 copy];
    v18 = obj[77];
    obj[77] = v17;

    v4 = obj[77];
  }

  objc_sync_exit(obj);

  return v4;
}

- (id)bleProximityInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bleProximityInfo = selfCopy->_bleProximityInfo;
  if (!bleProximityInfo)
  {
    selfCopy->_bleProximityInfo = &off_10090FE60;

    bleProximityInfo = selfCopy->_bleProximityInfo;
  }

  v4 = bleProximityInfo;
  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsIsSignedIn
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_idsIsSignedInCache & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  selfCopy->_idsIsSignedInCache = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(IDSService *)selfCopy->_idsService accounts];
  v4 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v13 + 1) + 8 * i) isActive])
        {
          selfCopy->_idsIsSignedInCache = 1;
          goto LABEL_12;
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!selfCopy->_idsIsSignedInCache)
  {
    _idsDeviceArrayLocked = [(SDNearbyAgent *)selfCopy _idsDeviceArrayLocked];
    if ([_idsDeviceArrayLocked count])
    {
    }

    else
    {
      devices = [(IDSService *)selfCopy->_idsService devices];
      v10 = [devices count] == 0;

      if (v10)
      {
        goto LABEL_13;
      }
    }

    selfCopy->_idsIsSignedInCache = 1;
    if (dword_100973248 > 90)
    {
      goto LABEL_27;
    }

    if (dword_100973248 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent idsIsSignedIn]", 90, "### No active IDS accounts, but has devices\n");
    }
  }

LABEL_13:
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    if (selfCopy->_idsIsSignedInCache)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    LogPrintF(&dword_100973248, "[SDNearbyAgent idsIsSignedIn]", 30, "IsSignedIn: %s\n", v7);
  }

LABEL_27:
  v11 = selfCopy->_idsIsSignedInCache != 0;
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)_activityMonitorEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activityMonitorStarted)
  {
    *&self->_activityLevel = 0;
  }

  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  if (activityLevelNotifyToken != -1)
  {
    notify_set_state(activityLevelNotifyToken, self->_activityLevel);
    notify_post("com.apple.sharing.activity-level-changed");
    notify_cancel(self->_activityLevelNotifyToken);
    self->_activityLevelNotifyToken = -1;
  }

  if (self->_activityCarPlayRegistered)
  {
    self->_activityCarPlayRegistered = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.sharingd.CarPlayStatusChanged" object:0];
  }

  if (self->_activityMultipleUsersRegistered)
  {
    self->_activityMultipleUsersRegistered = 0;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"com.apple.sharingd.MultipleUsersLoggedInChanged" object:0];
  }

  activityTimer = self->_activityTimer;
  if (activityTimer)
  {
    v8 = activityTimer;
    dispatch_source_cancel(v8);
    v7 = self->_activityTimer;
    self->_activityTimer = 0;
  }
}

- (BOOL)_bleNearbyActionScannerShouldScan
{
  if (self->_bleNearbyActionScanNever || [(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    return 0;
  }

  if (self->_bleNearbyActionScanAlways)
  {
    return 1;
  }

  if (!self->_ddNearbyActionEnabled)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_ddRequests;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_21:

    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_10:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if (([v9 discoveryFlags] & 0x10) == 0 || !self->_activityScreenOn && !objc_msgSend(v9, "overrideScreenOff"))
    {
      goto LABEL_19;
    }

    deviceFilter = [v9 deviceFilter];
    v11 = deviceFilter;
    if (!deviceFilter || [deviceFilter count])
    {
      break;
    }

LABEL_19:
    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  if (!self->_ddNearbyActionScreenOff && [(SDNearbyAgent *)self _idsAppleTVCount]<= 0)
  {
    return [(SDStatusMonitor *)self->_statusMonitor screenOn];
  }

  return 1;
}

- (int)_idsAppleTVCount
{
  result = self->_idsAppleTVCountCache;
  if (result < 0)
  {
    self->_idsAppleTVCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          modelIdentifier = [*(*(&v11 + 1) + 8 * v8) modelIdentifier];
          v10 = [modelIdentifier hasPrefix:@"AppleTV"];

          if (v10)
          {
            ++self->_idsAppleTVCountCache;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return self->_idsAppleTVCountCache;
  }

  return result;
}

- (void)_bleNearbyActionScannerEnsureStarted
{
  selfCopy = self;
  bleNearbyActionScanner = self->_bleNearbyActionScanner;
  if (bleNearbyActionScanner)
  {

    [SDNearbyAgent _bleUpdateScanner:"_bleUpdateScanner:typeFlag:" typeFlag:?];
  }

  else
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10002A66C(self, a2, bleNearbyActionScanner);
      }
    }

    v4 = [[SFBLEScanner alloc] initWithType:15];
    v5 = selfCopy->_bleNearbyActionScanner;
    selfCopy->_bleNearbyActionScanner = v4;

    [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner setDispatchQueue:selfCopy->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002498B0;
    v9[3] = &unk_1008CE810;
    v9[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009C74;
    v8[3] = &unk_1008CE810;
    v8[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007694;
    v7[3] = &unk_1008CE878;
    v7[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner setDeviceChangedHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10024999C;
    v6[3] = &unk_1008CEA50;
    v6[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner setScanStateChangedHandler:v6];
    [(SDNearbyAgent *)selfCopy _bleUpdateScanner:selfCopy->_bleNearbyActionScanner typeFlag:16];
    if (selfCopy->_bleNearbyActionRSSILog)
    {
      [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner setRssiLog:1];
    }

    [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner activateWithCompletion:&stru_1008D55D0];
  }
}

- (void)_bleNearbyInfoScannerEnsureStopped
{
  selfCopy = self;
  if (self->_bleNearbyInfoScanner)
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100009F00(self, a2, v2);
      }
    }
  }

  [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner invalidate];
  bleNearbyInfoScanner = selfCopy->_bleNearbyInfoScanner;
  selfCopy->_bleNearbyInfoScanner = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_bleNearbyInfoDevices allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [(NSMutableDictionary *)selfCopy->_bleNearbyInfoDevices objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [(SDNearbyAgent *)selfCopy _deviceDiscoveryBLEDeviceLost:v10 type:16];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)selfCopy->_bleNearbyInfoDevices removeAllObjects];
  bleNearbyInfoDevices = selfCopy->_bleNearbyInfoDevices;
  selfCopy->_bleNearbyInfoDevices = 0;
}

- (BOOL)_bleNearbyInfoScannerShouldScan
{
  if (self->_systemWillPowerDown || [(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    return 0;
  }

  if ([(NSMutableSet *)self->_caRequests count])
  {
    return 1;
  }

  if (!self->_ddNearbyInfoEnabled)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_ddRequests;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_21:

    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_10:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if (([v9 discoveryFlags] & 1) == 0 || !self->_activityScreenOn && !objc_msgSend(v9, "overrideScreenOff"))
    {
      goto LABEL_19;
    }

    deviceFilter = [v9 deviceFilter];
    v11 = deviceFilter;
    if (!deviceFilter || [deviceFilter count])
    {
      break;
    }

LABEL_19:
    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  if (self->_ddNearbyInfoScreenOff)
  {
    return 1;
  }

  return [(SDStatusMonitor *)self->_statusMonitor screenOn];
}

- (BOOL)_bleNearbyInfoAdvertiserShouldAdvertise
{
  if (![(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    if (self->_bleNearbyInfoAdvertiseDisabled)
    {
      v3 = @"_bleNearbyInfoAdvertiseDisabled";
      goto LABEL_7;
    }

    if (self->_autoUnlockActive)
    {
      v3 = @"_autoUnlockActive";
      goto LABEL_7;
    }

    if (self->_bleNearbyInfoAdvertiseAlways)
    {
      v6 = @"_bleNearbyInfoAdvertiseAlways set";
LABEL_26:
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v6];
      return 1;
    }

    if (self->_bleNearbyInfoAdvertiseLingerTimer)
    {
      v6 = @"_bleNearbyInfoAdvertiseLingerTimer";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseAlways)
    {
      v6 = @"_unlockAdvertiseAlways";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseEnabled)
    {
      v6 = @"_unlockAdvertiseEnabled";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseWatch)
    {
      v6 = @"_unlockAdvertiseWatch";
      goto LABEL_26;
    }

    if (self->_unlockAdvertiseWatchLocked)
    {
      v6 = @"_unlockAdvertiseWatchLocked";
      goto LABEL_26;
    }

    if ((self->_familyFlags & 2) != 0)
    {
      v6 = @"familyFlags set";
      goto LABEL_26;
    }

    DeviceClass = GestaltGetDeviceClass();
    if (DeviceClass == 7 || DeviceClass == 4)
    {
      v6 = @"device is communal";
      goto LABEL_26;
    }

    screenOn = [(SDStatusMonitor *)self->_statusMonitor screenOn];
    statusFlags = [(CUBluetoothClient *)self->_btConnectedDeviceMonitor statusFlags];
    if (screenOn && (statusFlags & 8) != 0)
    {
      v6 = @"ShareAudio is ongoing while screen on";
      goto LABEL_26;
    }

    if (self->_adHocPairedIdentityPresent)
    {
      v6 = @"_adHocPairedIdentityPresent";
      goto LABEL_26;
    }

    v10 = screenOn;
    if (![(SDNearbyAgent *)self idsIsSignedIn])
    {
      v3 = @"Not signed into iCloud";
      goto LABEL_7;
    }

    if ([(SDStatusMonitor *)self->_statusMonitor iCloudSharedPhotoLibraryEnabled])
    {
      v6 = @"Shared iCloud Photo Library is enabled";
      goto LABEL_26;
    }

    if (self->_coreDeviceEnabled)
    {
      v11 = +[SDStatusMonitor sharedMonitor];
      supportsXcodePairing = [v11 supportsXcodePairing];

      if (supportsXcodePairing)
      {
        v6 = @"CoreDeviceEnabled";
        goto LABEL_26;
      }
    }

    if (self->_fitnessPairingEnabled)
    {
      v13 = +[SDStatusMonitor sharedMonitor];
      supportsFitnessPlusPairing = [v13 supportsFitnessPlusPairing];

      if (supportsFitnessPlusPairing)
      {
        v6 = @"FitnessPairingEnabled";
        goto LABEL_26;
      }
    }

    if (self->_sessionPairingEnabled)
    {
      v6 = @"SessionPairingEnabled";
      goto LABEL_26;
    }

    if ([(SDNearbyAgent *)self _idsShouldAdvertiseNearbyInfo])
    {
      v6 = @"Same account devices";
      goto LABEL_26;
    }

    if (v10)
    {
      v6 = @"Screen on";
      goto LABEL_26;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100249B98;
    v23 = sub_100249BA8;
    v24 = 0;
    services = self->_services;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100249BB0;
    v18[3] = &unk_1008D55F8;
    v18[4] = &v19;
    v18[5] = &v25;
    [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v18];
    if (*(v26 + 24) == 1)
    {
      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SFServiceType %s active", sub_100249C34([v20[5] serviceType]));
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v16];
    }

    else
    {
      if (self->_caEnabled && self->_activityUserActive && (self->_caSingleDevice || [(SDNearbyAgent *)self _idsContinuityDeviceCount]> 0))
      {
        v17 = @"caEnabled";
      }

      else
      {
        if (!self->_inDiscoverySession)
        {
          [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:@"Don't advertise by default"];
          v4 = 0;
          goto LABEL_59;
        }

        v17 = @"inDiscoverySession";
      }

      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v17];
    }

    v4 = 1;
LABEL_59:
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    return v4;
  }

  v3 = @"_bleDiagnosticModeClients.count > 0";
LABEL_7:
  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAdvertiseReason:v3];
  return 0;
}

- (int)_idsShouldEncryptActivityLevel
{
  idsShouldEncryptActivityLevel = self->_idsShouldEncryptActivityLevel;
  if (idsShouldEncryptActivityLevel < 0)
  {
    manateeAvailable = [(CUSystemMonitor *)self->_systemMonitor manateeAvailable];
    if (manateeAvailable)
    {
      [(SDNearbyAgent *)self idsDeviceArray];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v19 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            modelIdentifier = [v12 modelIdentifier];
            v14 = GestaltProductTypeStringToDeviceClass();

            if (v12)
            {
              objc_msgSend_operatingSystemVersion(v12);
            }

            if (v14 && (DeviceOSVersionAtOrLater() & 1) == 0)
            {
              if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                sub_1002660F0(v12);
              }

              idsShouldEncryptActivityLevel = 0;
              goto LABEL_23;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      idsShouldEncryptActivityLevel = 1;
LABEL_23:
    }

    else
    {
      if (dword_100973248 <= 20)
      {
        if (dword_100973248 != -1 || (manateeAvailable = _LogCategory_Initialize(), manateeAvailable))
        {
          sub_1002660D4(manateeAvailable, v5, v6);
        }
      }

      idsShouldEncryptActivityLevel = 0;
    }

    self->_idsShouldEncryptActivityLevel = idsShouldEncryptActivityLevel;
  }

  return idsShouldEncryptActivityLevel;
}

- (int)_allowEnhancedDiscovery
{
  result = self->_allowEnhancedDiscovery;
  if (result < 0)
  {
    v4 = SFDeviceClassCodeGet();
    v5 = SFDeviceClassCodeGet();
    v6 = SFDeviceClassCodeGet();
    v7 = SFDeviceClassCodeGet();
    v36 = v6;
    v11 = v4 == 5 || v5 == 3 || v6 == 1 || v7 == 6;
    v34 = v5;
    v35 = v11;
    selfCopy = self;
    [(SDNearbyAgent *)self idsDeviceArray];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v38 = 0;
      v39 = 0;
      v15 = 0;
      v16 = *v42;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          modelIdentifier = [v18 modelIdentifier];
          GestaltProductTypeStringToDeviceClass();

          if (v18)
          {
            objc_msgSend_operatingSystemVersion(v18);
          }

          if (DeviceOSVersionAtOrLater())
          {
            modelIdentifier2 = [v18 modelIdentifier];
            v21 = [modelIdentifier2 containsString:@"Mac"];

            if (v21)
            {
              ++v15;
            }

            else
            {
              modelIdentifier3 = [v18 modelIdentifier];
              v23 = [modelIdentifier3 containsString:@"iPad"];

              if (v23)
              {
                ++v38;
              }

              else
              {
                modelIdentifier4 = [v18 modelIdentifier];
                v25 = [modelIdentifier4 containsString:@"iPhone"];

                v39 += v25;
              }
            }
          }

          if (DeviceOSVersionAtOrLater())
          {
            modelIdentifier5 = [v18 modelIdentifier];
            v27 = [modelIdentifier5 containsString:@"AppleTV"];

            v14 += v27;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v38 = 0;
      v39 = 0;
      v15 = 0;
    }

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent _allowEnhancedDiscovery]", 30, "Devices of required software version for enhanced discovery; macCount=%d, iPadCount=%d, iPhoneCount=%d, tvCount=%d\n", v15, v38, v39, v14);
    }

    if (v4 != 5 || v15 || v38 || v39)
    {
      if (v36 == 1 || v34 == 3)
      {
        if (v15 | v14)
        {
          v30 = +[AVCaptureDevice continuityCaptureLastUsedDate];
          v28 = selfCopy;
          v29 = v35;
          if (v30)
          {
            v31 = +[NSDate date];
            [v31 timeIntervalSinceDate:v30];
            v33 = v32;

            if (v33 > 3024000.0)
            {
              [(SDNearbyAgent *)selfCopy _unregisterForMagicMountUpdates];
              v29 = 0;
            }

            if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_1002657B0(v29, v30, v33);
            }
          }

          else
          {
            if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_10026581C();
            }

            v29 = 0;
          }
        }

        else
        {
          v28 = selfCopy;
          if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265850();
          }

          v29 = 0;
        }

        if (v28->_inDiscoverySession && (v29 & 1) == 0)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265884();
          }

          v29 = 1;
        }
      }

      else
      {
        v28 = selfCopy;
        v29 = v35;
      }
    }

    else if (dword_100973248 > 40)
    {
      v29 = 0;
      v28 = selfCopy;
    }

    else
    {
      v28 = selfCopy;
      if (dword_100973248 != -1 || _LogCategory_Initialize())
      {
        sub_1002658B8();
      }

      v29 = 0;
    }

    v28->_allowEnhancedDiscovery = v29;

    return v28->_allowEnhancedDiscovery;
  }

  return result;
}

- (BOOL)_bleNearbyInfoAdvertiserLingerIfNeeded
{
  bleNearbyInfoAirDropUsable = self->_bleNearbyInfoAirDropUsable;
  if (bleNearbyInfoAirDropUsable)
  {
    self->_bleNearbyInfoAirDropUsable = 0;
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerStart:@"AirDropUsable"];
  }

  return bleNearbyInfoAirDropUsable;
}

- (void)_bleNearbyInfoAdvertiserEnsureStopped
{
  if (self->_bleNearbyInfoAdvertiser && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002631E4(self);
  }

  [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"StopNearbyInfo"];
  [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser invalidate];
  bleNearbyInfoAdvertiser = self->_bleNearbyInfoAdvertiser;
  self->_bleNearbyInfoAdvertiser = 0;

  self->_bleNearbyInfoAdvertised = 0;
  bleNearbyInfoAdvertiseLingerTimer = self->_bleNearbyInfoAdvertiseLingerTimer;
  if (bleNearbyInfoAdvertiseLingerTimer)
  {
    v6 = bleNearbyInfoAdvertiseLingerTimer;
    dispatch_source_cancel(v6);
    v5 = self->_bleNearbyInfoAdvertiseLingerTimer;
    self->_bleNearbyInfoAdvertiseLingerTimer = 0;
  }
}

- (void)_bleProximityPairingScannerEnsureStarted
{
  selfCopy = self;
  bleProximityPairingScanner = self->_bleProximityPairingScanner;
  if (bleProximityPairingScanner)
  {

    [SDNearbyAgent _bleUpdateScanner:"_bleUpdateScanner:typeFlag:" typeFlag:?];
  }

  else
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10002A858(self, a2, bleProximityPairingScanner);
      }
    }

    v4 = [[SFBLEScanner alloc] initWithType:7];
    v5 = selfCopy->_bleProximityPairingScanner;
    selfCopy->_bleProximityPairingScanner = v4;

    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setChangeFlags:13];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000337C0;
    v9[3] = &unk_1008CE810;
    v9[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002FF28;
    v8[3] = &unk_1008CE810;
    v8[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002FCF8;
    v7[3] = &unk_1008CE878;
    v7[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setDeviceChangedHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10024C0B0;
    v6[3] = &unk_1008CEA50;
    v6[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setScanStateChangedHandler:v6];
    [(SDNearbyAgent *)selfCopy _bleUpdateScanner:selfCopy->_bleProximityPairingScanner typeFlag:2];
    if (selfCopy->_bleProximityRSSILog)
    {
      [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner setRssiLog:1];
    }

    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner activateWithCompletion:&stru_1008D56A8];
  }
}

- (BOOL)_bleProximityPairingScannerShouldScan
{
  if (!self->_bleProximityEnabled || !self->_ddProximityPairingEnabled || [(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    return 0;
  }

  if (self->_ddProximityPairingScreenOff && !self->_systemWillPowerDown)
  {
    return 1;
  }

  statusMonitor = self->_statusMonitor;

  return [(SDStatusMonitor *)statusMonitor screenOn];
}

- (void)_btPipeEnsureStarted
{
  if (!self->_unlockBtPipe)
  {
    v8[7] = v3;
    v8[8] = v4;
    selfCopy = self;
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100264190(self, a2, v2);
      }
    }

    v6 = [[SFBLEPipe alloc] initWithPriority:4];
    unlockBtPipe = selfCopy->_unlockBtPipe;
    selfCopy->_unlockBtPipe = v6;

    [(SFBLEPipe *)selfCopy->_unlockBtPipe setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFBLEPipe *)selfCopy->_unlockBtPipe setIdentifier:@"com.apple.sharing.pautounlock"];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024C134;
    v8[3] = &unk_1008D23C0;
    v8[4] = selfCopy;
    [(SFBLEPipe *)selfCopy->_unlockBtPipe setFrameHandler:v8];
    [(SFBLEPipe *)selfCopy->_unlockBtPipe activate];
  }
}

- (int)_idsContinuityDeviceCount
{
  result = self->_idsContinuityDeviceCountCache;
  if (result < 0)
  {
    if (self->_idsService)
    {
      self->_idsContinuityDeviceCountCache = 0;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
      v5 = [idsDeviceArray countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            if ([*(*(&v9 + 1) + 8 * v8) supportsHandoff])
            {
              ++self->_idsContinuityDeviceCountCache;
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [idsDeviceArray countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }

      return self->_idsContinuityDeviceCountCache;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_bleNearbyInfoAdvertiserEnsureStarted
{
  if (self->_bleNearbyInfoAdvertiser)
  {
    if (self->_bleNearbyInfoAdvertiseReasonChanged)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026315C(self);
      }

      self->_bleNearbyInfoAdvertiseReasonChanged = 0;
    }
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002631A0(self);
    }

    v3 = [[SFBLEAdvertiser alloc] initWithType:16];
    bleNearbyInfoAdvertiser = self->_bleNearbyInfoAdvertiser;
    self->_bleNearbyInfoAdvertiser = v3;

    dispatchQueue = self->_dispatchQueue;
    v6 = self->_bleNearbyInfoAdvertiser;

    [(SFBLEAdvertiser *)v6 setDispatchQueue:dispatchQueue];
  }
}

- (BOOL)_idsShouldAdvertiseNearbyInfo
{
  idsShouldAdvertiseNearbyInfo = self->_idsShouldAdvertiseNearbyInfo;
  if ((idsShouldAdvertiseNearbyInfo & 0x80000000) == 0)
  {
    return idsShouldAdvertiseNearbyInfo > 0;
  }

  self->_idsShouldAdvertiseNearbyInfo = 0;
  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  DeviceClass = GestaltGetDeviceClass();
  v7 = [idsDeviceArray count];
  if (DeviceClass == 6)
  {
    if (v7 < 2)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = idsDeviceArray;
      v15 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
LABEL_19:
        v18 = 0;
        while (1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v8);
          }

          modelIdentifier = [*(*(&v20 + 1) + 8 * v18) modelIdentifier];
          v14 = modelIdentifier;
          if (modelIdentifier)
          {
            if (([modelIdentifier hasPrefix:@"iPhone"] & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if (v16 == ++v18)
          {
            v16 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v16)
            {
              goto LABEL_19;
            }

            goto LABEL_26;
          }
        }
      }

      goto LABEL_26;
    }
  }

  else if (DeviceClass == 1)
  {
    if (v7 < 2)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = idsDeviceArray;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
LABEL_8:
        v12 = 0;
        while (1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          modelIdentifier2 = [*(*(&v24 + 1) + 8 * v12) modelIdentifier];
          v14 = modelIdentifier2;
          if (modelIdentifier2)
          {
            if (([modelIdentifier2 hasPrefix:@"Watch"] & 1) == 0)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v10)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

LABEL_30:
        self->_idsShouldAdvertiseNearbyInfo = 1;

        goto LABEL_31;
      }

LABEL_26:

LABEL_29:
      idsShouldAdvertiseNearbyInfo = self->_idsShouldAdvertiseNearbyInfo;
      return idsShouldAdvertiseNearbyInfo > 0;
    }
  }

  else if (!v7)
  {
    goto LABEL_29;
  }

  self->_idsShouldAdvertiseNearbyInfo = 1;
LABEL_31:

  return 1;
}

- (void)_updateCameraState
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_prefWombatAssumeNotInPocket)
  {
    isDeviceNotInPocket = self->_isDeviceNotInPocket;
    if (![(SDNearbyAgent *)self _isDeviceMountedAndScreenOff]|| !isDeviceNotInPocket && !self->_inDiscoverySession)
    {
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
    v5 = 1;
    v6 = "Usable";
    goto LABEL_9;
  }

  if ([(SDNearbyAgent *)self _isDeviceMountedAndScreenOff])
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = 0;
  v6 = "?";
  v4 = 1;
LABEL_9:
  cameraState = self->_cameraState;
  if (v5 != cameraState)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
LABEL_12:
        v8 = "?";
        if (cameraState == 1)
        {
          v8 = "Usable";
        }

        if (cameraState)
        {
          v9 = v8;
        }

        else
        {
          v9 = "Nearby";
        }

        if (v4)
        {
          v10 = "Nearby";
        }

        else
        {
          v10 = v6;
        }

        LogPrintF(&dword_100973248, "[SDNearbyAgent _updateCameraState]", 30, "Camera state changed %s -> %s\n", v9, v10);
        goto LABEL_22;
      }

      if (_LogCategory_Initialize())
      {
        cameraState = self->_cameraState;
        goto LABEL_12;
      }
    }

LABEL_22:
    self->_cameraState = v5;
    if (v4)
    {
      [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"CameraStateNearby"];
      v11 = 1;
    }

    else
    {
      [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"CameraStateUsable" useCase:131078];
      v11 = 2;
    }

    [(SDNearbyAgent *)self _postNotificationForWombatState:v11];
  }

  [(SDNearbyAgent *)self _update];
}

- (BOOL)_isDeviceMountedAndScreenOff
{
  v3 = self->_prefWombatAssumeLocked || [(CUSystemMonitor *)self->_systemMonitor systemLockState]== 3 || [(CUSystemMonitor *)self->_systemMonitor systemLockState]== 2;
  if (self->_prefWombatAssumeScreenOff)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CUSystemMonitor *)self->_systemMonitor screenOn]^ 1;
  }

  v5 = self->_prefWombatAssumeMounted || self->_isDeviceMounted;
  v6 = "yes";
  if (!self->_prefWombatAssumeNotInPocket)
  {
    if (self->_isDeviceNotInPocket)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }
  }

  inDiscoverySession = self->_inDiscoverySession;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v8 = "no";
    if (v4)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    if (v5)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    if (v3)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (inDiscoverySession)
    {
      v8 = "yes";
    }

    LogPrintF(&dword_100973248, "[SDNearbyAgent _isDeviceMountedAndScreenOff]", 30, "Updating camera state isScreenOff:%s isDeviceMounted:%s isLocked:%s isNotInPocket:%s isInDiscoverySession:%s\n", v9, v10, v11, v6, v8);
  }

  if (v3 || !v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4 | inDiscoverySession;
  }

  return v12 & 1;
}

- (NSString)description
{
  v217 = 0;
  NSAppendPrintF(&v217, "-- SDNearbyAgent --\n");
  v2 = v217;
  v216 = v2;
  Current = CFAbsoluteTimeGetCurrent();
  activityLevel = self->_activityLevel;
  if (activityLevel > 0xE)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1008D60A0[self->_activityLevel];
  }

  v146 = v5;
  startTime = self->_startTime;
  if (self->_activityTimer)
  {
    v7 = "on";
  }

  else
  {
    v7 = "off";
  }

  [(SDNearbyAgent *)self _activityMonitorLastUserEventDelta];
  v9 = v8;
  if (self->_bleNearbyInfoAdvertiseLingerTimer)
  {
    v10 = "on";
  }

  else
  {
    v10 = "off";
  }

  p_statusMonitor = &self->_statusMonitor;
  if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    v12 = "on";
  }

  else
  {
    v12 = "off";
  }

  if ([(SDStatusMonitor *)*p_statusMonitor deviceUIUnlocked])
  {
    v13 = "unlocked";
  }

  else
  {
    v13 = "locked";
  }

  if ([(SDStatusMonitor *)*p_statusMonitor smartCoverIsClosed])
  {
    v14 = "closed";
  }

  else
  {
    v14 = "not closed";
  }

  if ([(SDStatusMonitor *)*p_statusMonitor multipleUsersLoggedIn])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  systemUIFlags = [(SDStatusMonitor *)*p_statusMonitor systemUIFlags];
  pairedWatchWristState = [(SDStatusMonitor *)*p_statusMonitor pairedWatchWristState];
  audioRoutingScore = self->_audioRoutingScore;
  if (audioRoutingScore > 0xF)
  {
    v19 = "?";
  }

  else
  {
    v19 = off_1008D5A20[audioRoutingScore];
  }

  NSAppendPrintF(&v216, "Up %ll{dur}, level %d (%s), timer %s, last user %.2f secs, linger %s, screen %s (%s), cover %s, multiuser %s, sysUI 0x%X, watch %d, FamF 0x%llX, ARS %s", (Current - startTime), activityLevel, v146, v7, v9, v10, v12, v13, v14, v15, systemUIFlags, pairedWatchWristState, self->_familyFlags, v19);
  v20 = v216;

  v21 = objc_autoreleasePoolPush();
  v22 = objc_alloc_init(CUAppleIDClient);
  v23 = [v22 copyMyAppleIDAndReturnError:0];
  v215 = v20;
  NSAppendPrintF(&v215, ", AID '%@'", v23);
  v24 = v215;

  v214 = v24;
  securityLevel = [v22 securityLevel];
  v26 = "?";
  if (securityLevel <= 5)
  {
    v26 = off_1008D59F0[securityLevel];
  }

  NSAppendPrintF(&v214, " (%s)", v26);
  v27 = v214;

  objc_autoreleasePoolPop(v21);
  v28 = objc_autoreleasePoolPush();
  v223 = 0;
  v224 = &v223;
  v225 = 0x2050000000;
  v29 = qword_10098A440;
  v226 = qword_10098A440;
  if (!qword_10098A440)
  {
    v218 = _NSConcreteStackBlock;
    v219 = 3221225472;
    v220 = sub_100261548;
    v221 = &unk_1008CDA20;
    v222 = &v223;
    sub_100261548(&v218);
    v29 = v224[3];
  }

  v30 = v29;
  _Block_object_dispose(&v223, 8);
  defaultStore = [v29 defaultStore];
  activeAccount = [defaultStore activeAccount];

  altDSID = [activeAccount altDSID];
  if (!altDSID)
  {
    v213 = v27;
    accountName = [activeAccount accountName];
LABEL_40:
    accountName2 = accountName;
    goto LABEL_41;
  }

  v223 = 0;
  v224 = &v223;
  v225 = 0x2050000000;
  v34 = qword_10098A450;
  v226 = qword_10098A450;
  if (!qword_10098A450)
  {
    v218 = _NSConcreteStackBlock;
    v219 = 3221225472;
    v220 = sub_1002616E8;
    v221 = &unk_1008CDA20;
    v222 = &v223;
    sub_1002616E8(&v218);
    v34 = v224[3];
  }

  v35 = v34;
  _Block_object_dispose(&v223, 8);
  sharedInstance = [v34 sharedInstance];
  v37 = [sharedInstance authKitAccountWithAltDSID:altDSID];
  if (!v37)
  {

    v213 = v27;
    accountName = [activeAccount accountName];
    goto LABEL_40;
  }

  v38 = [sharedInstance securityLevelForAccount:v37];

  v213 = v27;
  accountName2 = [activeAccount accountName];
  if (v38 <= 2)
  {
    if (v38)
    {
      if (v38 != 1)
      {
        if (v38 == 2)
        {
          v40 = "SA";
          goto LABEL_42;
        }

LABEL_154:
        v40 = "?";
        goto LABEL_42;
      }

      v40 = "PWOnly";
      goto LABEL_42;
    }

LABEL_41:
    v40 = "Unknown";
    goto LABEL_42;
  }

  if (v38 == 3)
  {
    v40 = "HSA1";
    goto LABEL_42;
  }

  if (v38 != 4)
  {
    if (v38 == 5)
    {
      v40 = "Managed";
      goto LABEL_42;
    }

    goto LABEL_154;
  }

  v40 = "HSA2";
LABEL_42:
  NSAppendPrintF(&v213, ", iTunes '%@' (%s)", accountName2, v40);
  v42 = v213;

  objc_autoreleasePoolPop(v28);
  v212 = v42;
  meDeviceFMFDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceFMFDeviceID];
  meDeviceIDSDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];
  meDeviceName = [(CUSystemMonitor *)self->_systemMonitor meDeviceName];
  NSAppendPrintF(&v212, ", MeDev F<%.8@> I<%.8@> '%@'", meDeviceFMFDeviceID, meDeviceIDSDeviceID, meDeviceName);
  v46 = v212;

  v211 = v46;
  NSAppendPrintF(&v211, "\n");
  v47 = v211;

  selfCopy3 = self;
  if (self->_autoUnlockActive)
  {
    v210 = v47;
    NSAppendPrintF(&v210, "AutoUnlocking:         YES\n");
    v49 = v210;

    v47 = v49;
    selfCopy3 = self;
  }

  if (selfCopy3->_boostNearbyInfo)
  {
    v209 = v47;
    NSAppendPrintF(&v209, "Boost Nearby Info:     YES\n");
    v50 = v209;

    v47 = v50;
    selfCopy3 = self;
  }

  if ([(NSMutableDictionary *)selfCopy3->_bleConnections count])
  {
    v208 = v47;
    NSAppendPrintF(&v208, "BLE Connections:       %ld\n", [(NSMutableDictionary *)self->_bleConnections count]);
    v51 = v208;

    v47 = v51;
  }

  if ([(NSMutableSet *)self->_bleDiagnosticModeClients count])
  {
    v207 = v47;
    NSAppendPrintF(&v207, "BLE Diag Clients:      %ld\n", [(NSMutableSet *)self->_bleDiagnosticModeClients count]);
    v52 = v207;

    v47 = v52;
  }

  selfCopy10 = self;
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (bleNearbyActionAdvertiser)
  {
    v206 = v47;
    v55 = "on";
    if (!self->_bleNearbyActionAdvertiseLingerTimer)
    {
      v55 = "off";
    }

    NSAppendPrintF(&v206, "BLE Action Advertiser: %@, linger %s\n", bleNearbyActionAdvertiser, v55);
    v56 = v206;

    v47 = v56;
    selfCopy10 = self;
  }

  bleNearbyActionScanner = selfCopy10->_bleNearbyActionScanner;
  if (bleNearbyActionScanner)
  {
    v205 = v47;
    NSAppendPrintF(&v205, "BLE Action Scanner:    %@\n", bleNearbyActionScanner);
    v58 = v205;

    v47 = v58;
    selfCopy10 = self;
  }

  bleNearbyInfoAdvertiser = selfCopy10->_bleNearbyInfoAdvertiser;
  if (bleNearbyInfoAdvertiser)
  {
    v204 = v47;
    NSAppendPrintF(&v204, "BLE Info Advertiser:   %@, advertiseReason: %@\n", bleNearbyInfoAdvertiser, selfCopy10->_bleNearbyInfoAdvertiseReason);
    v60 = v204;

    v47 = v60;
    selfCopy10 = self;
  }

  bleNearbyInfoScanner = selfCopy10->_bleNearbyInfoScanner;
  if (bleNearbyInfoScanner)
  {
    v203 = v47;
    NSAppendPrintF(&v203, "BLE Info Scanner:      %@\n", bleNearbyInfoScanner);
    v62 = v203;

    v47 = v62;
    selfCopy10 = self;
  }

  bleProximityPairingScanner = selfCopy10->_bleProximityPairingScanner;
  if (bleProximityPairingScanner)
  {
    v202 = v47;
    NSAppendPrintF(&v202, "BLE Prox Scanner:      %@\n", bleProximityPairingScanner);
    v64 = v202;

    v47 = v64;
    selfCopy10 = self;
  }

  if (selfCopy10->_enhancedDiscovery)
  {
    v201 = v47;
    NSAppendPrintF(&v201, "BLE enhanced discovery: assertions: %s\n", "yes");
    v65 = v201;

    v47 = v65;
    selfCopy10 = self;
  }

  v200 = v47;
  _allowEnhancedDiscovery = [(SDNearbyAgent *)selfCopy10 _allowEnhancedDiscovery];
  v67 = "no";
  if (self->_enhancedDiscoveryShouldRun)
  {
    v67 = "yes";
  }

  NSAppendPrintF(&v200, "BLE enhanced discovery:        allowed: %d should run:%s\n", _allowEnhancedDiscovery, v67);
  v68 = v200;

  v199 = v68;
  v69 = "Usable";
  if (self->_cameraState != 1)
  {
    v69 = "?";
  }

  if (self->_cameraState)
  {
    v70 = v69;
  }

  else
  {
    v70 = "Nearby";
  }

  if (self->_isDeviceMounted)
  {
    v71 = "yes";
  }

  else
  {
    v71 = "no";
  }

  if (self->_isDeviceNotInPocket)
  {
    v72 = "yes";
  }

  else
  {
    v72 = "no";
  }

  NSAppendPrintF(&v199, "Camera State: %s MT: %s PK: %s\n", v70, v71, v72);
  v73 = v199;

  selfCopy12 = self;
  unlockBtPipe = self->_unlockBtPipe;
  if (unlockBtPipe)
  {
    v198 = v73;
    NSAppendPrintF(&v198, "BT Pipe:               %@\n", unlockBtPipe);
    v76 = v198;

    v73 = v76;
    selfCopy12 = self;
  }

  v197 = v73;
  NSAppendPrintF(&v197, "Device Discovery:      %ld request(s)", [(NSMutableSet *)selfCopy12->_ddRequests count]);
  v77 = v197;

  selfCopy22 = self;
  if (self->_coreDeviceEnabled)
  {
    v196 = v77;
    NSAppendPrintF(&v196, ", CoreDevice");
    v79 = v196;

    v77 = v79;
    selfCopy22 = self;
  }

  if (selfCopy22->_ddNearbyActionEnabled)
  {
    v195 = v77;
    NSAppendPrintF(&v195, ", Action");
    v80 = v195;

    v77 = v80;
    selfCopy22 = self;
  }

  if (selfCopy22->_ddNearbyActionScreenOff)
  {
    v194 = v77;
    NSAppendPrintF(&v194, ", NAScreenOff");
    v81 = v194;

    v77 = v81;
    selfCopy22 = self;
  }

  if (selfCopy22->_ddNearbyInfoEnabled)
  {
    v193 = v77;
    NSAppendPrintF(&v193, ", Info");
    v82 = v193;

    v77 = v82;
    selfCopy22 = self;
  }

  if (selfCopy22->_ddNearbyInfoScreenOff)
  {
    v192 = v77;
    NSAppendPrintF(&v192, ", NIScreenOff");
    v83 = v192;

    v77 = v83;
    selfCopy22 = self;
  }

  if (selfCopy22->_ddProximityPairingEnabled)
  {
    v191 = v77;
    NSAppendPrintF(&v191, ", Prox");
    v84 = v191;

    v77 = v84;
    selfCopy22 = self;
  }

  if (selfCopy22->_ddProximityPairingScreenOff)
  {
    v190 = v77;
    NSAppendPrintF(&v190, ", PPScreenOff");
    v85 = v190;

    v77 = v85;
    selfCopy22 = self;
  }

  if (selfCopy22->_fitnessPairingEnabled)
  {
    v189 = v77;
    NSAppendPrintF(&v189, ", FitPair");
    v86 = v189;

    v77 = v86;
    selfCopy22 = self;
  }

  if (selfCopy22->_sessionPairingEnabled)
  {
    v188 = v77;
    NSAppendPrintF(&v188, ", SessionPair");
    v87 = v188;

    v77 = v87;
    selfCopy22 = self;
  }

  v187 = v77;
  NSAppendPrintF(&v187, ", %ld Action", [(NSMutableDictionary *)selfCopy22->_ddNearbyActionDevices count]);
  v88 = v187;

  v186 = v88;
  NSAppendPrintF(&v186, ", %ld Info", [(NSMutableDictionary *)self->_ddNearbyInfoDevices count]);
  v89 = v186;

  v185 = v89;
  NSAppendPrintF(&v185, ", %ld Prox", [(NSMutableDictionary *)self->_ddProximityPairingDevices count]);
  v90 = v185;

  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  LODWORD(v221) = 0;
  idDevices = self->_idDevices;
  v184[0] = _NSConcreteStackBlock;
  v184[1] = 3221225472;
  v184[2] = sub_100245418;
  v184[3] = &unk_1008D5500;
  v184[4] = &v218;
  [(NSMutableDictionary *)idDevices enumerateKeysAndObjectsUsingBlock:v184];
  v183 = v90;
  NSAppendPrintF(&v183, ", %u of %ld Identified", *(v219 + 24), [(NSMutableDictionary *)self->_idDevices count]);
  v92 = v183;

  v182 = v92;
  NSAppendPrintF(&v182, "\n");
  v93 = v182;

  v94 = [IDSService alloc];
  v147 = [v94 initWithService:IDSServiceNameiMessage];
  v181 = v93;
  v95 = "on";
  if (!self->_idsService)
  {
    v95 = "off";
  }

  v145 = v95;
  if ([(SDNearbyAgent *)self idsIsSignedIn])
  {
    v96 = "signed in";
  }

  else
  {
    v96 = "not signed in";
  }

  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  v98 = [idsDeviceArray count];
  _idsAppleTVCount = [(SDNearbyAgent *)self _idsAppleTVCount];
  _idsContinuityDeviceCount = [(SDNearbyAgent *)self _idsContinuityDeviceCount];
  _idsHomePodCount = [(SDNearbyAgent *)self _idsHomePodCount];
  if (v147)
  {
    v102 = "on";
  }

  else
  {
    v102 = "off";
  }

  devices = [v147 devices];
  NSAppendPrintF(&v181, "IDS Service:           %s, %s, %ld device(s), %d AppleTV, %d Continuity, %d HomePod, iMessage %s, %ld device(s) ALEncrypted %d\n", v145, v96, v98, _idsAppleTVCount, _idsContinuityDeviceCount, _idsHomePodCount, v102, [devices count], -[SDNearbyAgent _idsShouldEncryptActivityLevel](self, "_idsShouldEncryptActivityLevel"));
  v104 = v181;

  v180 = v104;
  NSAppendPrintF(&v180, "Services:              %ld, %ld sessions, %ld setup sessions\n", [(NSMutableDictionary *)self->_services count], [(NSMutableDictionary *)self->_sessions count], [(NSMutableDictionary *)self->_setupSessions count]);
  v105 = v180;

  systemService = self->_systemService;
  if (systemService)
  {
    v179 = v105;
    NSAppendPrintF(&v179, "SystemService:         %@\n", systemService);
    v107 = v179;

    v105 = v107;
  }

  v178 = v105;
  NSAppendPrintF(&v178, "\n");
  v108 = v178;

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v109 = CFPrefs_CopyKeys();
  v110 = [v109 countByEnumeratingWithState:&v174 objects:v230 count:16];
  if (!v110)
  {
    goto LABEL_118;
  }

  v111 = 0;
  v112 = *v175;
  do
  {
    for (i = 0; i != v110; i = i + 1)
    {
      if (*v175 != v112)
      {
        objc_enumerationMutation(v109);
      }

      v114 = *(*(&v174 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = CFPrefs_CopyTypedValue();
        v173 = v108;
        NSAppendPrintF(&v173, "Pref: '%@' = '%@'\n", v114, v115);
        v116 = v173;

        ++v111;
        v108 = v116;
      }
    }

    v110 = [v109 countByEnumeratingWithState:&v174 objects:v230 count:16];
  }

  while (v110);

  if (v111 >= 1)
  {
    v172 = v108;
    NSAppendPrintF(&v172, "\n");
    v109 = v108;
    v108 = v172;
LABEL_118:
  }

  if ([(NSMutableDictionary *)self->_bleConnections count])
  {
    v171 = v108;
    NSAppendPrintF(&v171, "-- BLE Connections --\n");
    v117 = v171;

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v118 = self->_bleConnections;
    v119 = [(NSMutableDictionary *)v118 countByEnumeratingWithState:&v167 objects:v229 count:16];
    if (v119)
    {
      v120 = *v168;
      do
      {
        v121 = 0;
        v122 = v117;
        do
        {
          if (*v168 != v120)
          {
            objc_enumerationMutation(v118);
          }

          v123 = *(*(&v167 + 1) + 8 * v121);
          v166 = v122;
          v124 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v123];
          NSAppendPrintF(&v166, "%@\n", v124);
          v117 = v166;

          v121 = v121 + 1;
          v122 = v117;
        }

        while (v119 != v121);
        v119 = [(NSMutableDictionary *)v118 countByEnumeratingWithState:&v167 objects:v229 count:16];
      }

      while (v119);
    }

    v165 = v117;
    NSAppendPrintF(&v165, "\n");
    v108 = v165;
  }

  if ([(NSMutableDictionary *)self->_setupSessions count])
  {
    v164 = v108;
    NSAppendPrintF(&v164, "-- Setup Sessions --\n");
    v125 = v164;

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v126 = self->_setupSessions;
    v127 = [(NSMutableDictionary *)v126 countByEnumeratingWithState:&v160 objects:v228 count:16];
    if (v127)
    {
      v128 = *v161;
      do
      {
        v129 = 0;
        v130 = v125;
        do
        {
          if (*v161 != v128)
          {
            objc_enumerationMutation(v126);
          }

          v131 = *(*(&v160 + 1) + 8 * v129);
          v159 = v130;
          v132 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v131];
          NSAppendPrintF(&v159, "%@ -- %@\n", v131, v132);
          v125 = v159;

          v129 = v129 + 1;
          v130 = v125;
        }

        while (v127 != v129);
        v127 = [(NSMutableDictionary *)v126 countByEnumeratingWithState:&v160 objects:v228 count:16];
      }

      while (v127);
    }

    v158 = v125;
    NSAppendPrintF(&v158, "\n");
    v108 = v158;
  }

  if ([(NSMutableDictionary *)self->_sessions count])
  {
    v157 = v108;
    NSAppendPrintF(&v157, "-- Sessions --\n");
    v133 = v157;

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v134 = self->_sessions;
    v135 = [(NSMutableDictionary *)v134 countByEnumeratingWithState:&v153 objects:v227 count:16];
    if (v135)
    {
      v136 = *v154;
      do
      {
        v137 = 0;
        v138 = v133;
        do
        {
          if (*v154 != v136)
          {
            objc_enumerationMutation(v134);
          }

          v139 = *(*(&v153 + 1) + 8 * v137);
          v152 = v138;
          v140 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v139];
          NSAppendPrintF(&v152, "%@ -- %@\n", v139, v140);
          v133 = v152;

          v137 = v137 + 1;
          v138 = v133;
        }

        while (v135 != v137);
        v135 = [(NSMutableDictionary *)v134 countByEnumeratingWithState:&v153 objects:v227 count:16];
      }

      while (v135);
    }

    v151 = v133;
    NSAppendPrintF(&v151, "\n");
    v108 = v151;
  }

  v150 = v108;
  NSAppendPrintF(&v150, "-- Devices --\n");
  v141 = v150;

  v149 = v141;
  [(SDNearbyAgent *)self idsDevicesAppendDescription:&v149];
  v142 = v149;

  v143 = v142;
  _Block_object_dispose(&v218, 8);

  return v143;
}

- (double)_activityMonitorLastUserEventDelta
{
  v2 = CACurrentMediaTime();
  BKSHIDServicesLastUserEventTime();
  return v2 - v3;
}

- (id)idsDeviceArray
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _idsDeviceArrayLocked = [(SDNearbyAgent *)selfCopy _idsDeviceArrayLocked];
  objc_sync_exit(selfCopy);

  return _idsDeviceArrayLocked;
}

- (id)_idsDeviceArrayLocked
{
  idsDeviceArray = self->_idsDeviceArray;
  if (!idsDeviceArray)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (idsDeviceArray = _LogCategory_Initialize(), idsDeviceArray))
      {
        sub_1002660B8(idsDeviceArray, a2, v2);
      }
    }

    devices = [(IDSService *)self->_idsService devices];
    v6 = self->_idsDeviceArray;
    self->_idsDeviceArray = devices;

    idsDeviceArray = self->_idsDeviceArray;
  }

  return idsDeviceArray;
}

- (int)_idsHomePodCount
{
  result = self->_idsHomePodCountCache;
  if (result < 0)
  {
    self->_idsHomePodCountCache = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = v5;
    v7 = *v14;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        modelIdentifier = [v9 modelIdentifier];
        if ([modelIdentifier hasPrefix:@"AudioAccessory"])
        {
        }

        else
        {
          modelIdentifier2 = [v9 modelIdentifier];
          v12 = [modelIdentifier2 hasPrefix:{@"HomePod1, "}];

          if (!v12)
          {
            continue;
          }
        }

        ++self->_idsHomePodCountCache;
      }

      v6 = [idsDeviceArray countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v6)
      {
LABEL_13:

        return self->_idsHomePodCountCache;
      }
    }
  }

  return result;
}

+ (SDNearbyAgent)sharedNearbyAgent
{
  if (qword_10098A430 != -1)
  {
    sub_100261F6C();
  }

  v3 = gSFNearbyAgent;

  return v3;
}

- (void)_systemHasPoweredOn
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FBD0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)idsBluetoothDeviceIDsForRIServers
{
  v14 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  v4 = [idsDeviceArray countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        modelIdentifier = [v8 modelIdentifier];
        if ([modelIdentifier hasPrefix:@"AppleTV"])
        {
        }

        else
        {
          modelIdentifier2 = [v8 modelIdentifier];
          v11 = [(SDNearbyAgent *)self isDeviceValidRIServer:modelIdentifier2];

          if (!v11)
          {
            continue;
          }
        }

        nsuuid = [v8 nsuuid];
        if (nsuuid)
        {
          [v14 addObject:nsuuid];
        }
      }

      v5 = [idsDeviceArray countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v14;
}

- (id)idsDeviceIDsForRIServers
{
  v3 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_idIdentityArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        model = [v9 model];
        v11 = [model hasPrefix:@"AppleTV"];

        if (v11)
        {
          idsDeviceID = [v9 idsDeviceID];
          if (idsDeviceID)
          {
            [v3 addObject:idsDeviceID];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_activityMonitorEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activityCarPlayRegistered)
  {
    self->_activityCarPlayRegistered = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_activityMonitorCarPlayStatusChanged:" name:@"com.apple.sharingd.CarPlayStatusChanged" object:0];
  }

  if (!self->_activityMultipleUsersRegistered)
  {
    self->_activityMultipleUsersRegistered = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_activityMonitorMultipleUsersLoggedInChanged:" name:@"com.apple.sharingd.MultipleUsersLoggedInChanged" object:0];
  }

  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  p_activityLevelNotifyToken = &self->_activityLevelNotifyToken;
  *(p_activityLevelNotifyToken + 5) = 1;
  if (activityLevelNotifyToken == -1)
  {

    notify_register_check("com.apple.sharing.activity-level-changed", p_activityLevelNotifyToken);
  }
}

- (void)_identificationMaintenanceTimer
{
  v3 = mach_absolute_time();
  v4 = SecondsToUpTicks();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [(NSMutableDictionary *)self->_idDevices allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:v10];
        if (![v11 discoveryFlags] && v3 - objc_msgSend(v11, "lastUpdateTicks") >= v4)
        {
          [(NSMutableDictionary *)self->_idDevices removeObjectForKey:v10];
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265F94(v10);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v12 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v12;
    }

    while (v12);
  }

  if (![(NSMutableDictionary *)self->_idDevices count])
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265FD4();
    }

    idMaintenanceTimer = self->_idMaintenanceTimer;
    if (idMaintenanceTimer)
    {
      v14 = idMaintenanceTimer;
      dispatch_source_cancel(v14);
      v15 = self->_idMaintenanceTimer;
      self->_idMaintenanceTimer = 0;
    }
  }
}

- (void)_bleProximityPairingScannerEnsureStopped
{
  if (self->_bleProximityPairingScanner)
  {
    selfCopy = self;
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100264174(self, a2, v2);
      }
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_ddProximityPairingDevices allKeys];
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

          v9 = [(NSMutableDictionary *)selfCopy->_ddProximityPairingDevices objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
          bleDevice = [v9 bleDevice];

          if (bleDevice)
          {
            [(SDNearbyAgent *)selfCopy _deviceDiscoveryBLEDeviceLost:bleDevice type:7];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    [(SFBLEScanner *)selfCopy->_bleProximityPairingScanner invalidate];
    bleProximityPairingScanner = selfCopy->_bleProximityPairingScanner;
    selfCopy->_bleProximityPairingScanner = 0;
  }
}

- (void)_activityMonitorUpdate
{
  v15 = 0;
  [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:&v15 recentUserActivity:0];
  activityTimer = self->_activityTimer;
  if (v15 == 1)
  {
    if (!activityTimer && self->_activityPollSeconds >= 1)
    {
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v5 = self->_activityTimer;
      self->_activityTimer = v4;

      v6 = self->_activityTimer;
      if (!v6)
      {
        v12 = sub_100262DD8();
        [(SDNearbyAgent *)v12 _bleNearbyInfoAdvertiserUpdate];
        return;
      }

      v7 = 1000000000 * self->_activityPollSeconds;
      v8 = dispatch_time(0, v7);
      dispatch_source_set_timer(v6, v8, v7, v7 >> 2);
      v9 = self->_activityTimer;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100248BBC;
      v14[3] = &unk_1008CDEA0;
      v14[4] = self;
      dispatch_source_set_event_handler(v9, v14);
      dispatch_resume(self->_activityTimer);
    }
  }

  else if (activityTimer)
  {
    v10 = activityTimer;
    dispatch_source_cancel(v10);
    v11 = self->_activityTimer;
    self->_activityTimer = 0;
  }

  if ([(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAdvertise])
  {
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStarted];
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdate];
  }

  else
  {
    [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStopped];
  }
}

- (void)_bleNearbyInfoAdvertiserUpdate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleNearbyInfoAdvertiser)
  {
    return;
  }

  if (dword_100973248 <= 9 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263228();
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:0];
  if ([(SDNearbyAgent *)self _idsShouldEncryptActivityLevel]>= 1)
  {
    v4 = [(SDNearbyAgent *)self _bleEncryptActivityLevel:v4];
  }

  v5 = [NSNumber numberWithUnsignedChar:v4];
  [v3 setObject:v5 forKeyedSubscript:@"al"];

  if ([(SDStatusMonitor *)self->_statusMonitor screenStateSupportsAirDrop]&& [(SDStatusMonitor *)self->_statusMonitor currentConsoleUser]&& [(SDStatusMonitor *)self->_statusMonitor discoverableLevel]&& [(SDStatusMonitor *)self->_statusMonitor wirelessEnabled])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"adU"];
    self->_bleNearbyInfoAirDropUsable = 1;
  }

  else
  {
    if (self->_bleNearbyInfoAirDropUsable)
    {
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerStart:@"AirDropUsable"];
    }

    self->_bleNearbyInfoAirDropUsable = 0;
  }

  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAddAudioRoutingScore:v3];
  if (!self->_bleNearbyActionAdvertiseActive)
  {
    [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
    bleAuthTagOverride = self->_bleAuthTagOverride;
    if (bleAuthTagOverride || (bleAuthTagOverride = self->_bleAuthTag) != 0)
    {
      [v3 setObject:bleAuthTagOverride forKeyedSubscript:@"at"];
    }
  }

  [(SDNearbyAgent *)self _bleNearbyInfoAdvertisingUpdateAddCameraState:v3];
  if (self->_shareAudioEnabled && [(SDStatusMonitor *)self->_statusMonitor screenOn]&& ([(CUBluetoothClient *)self->_btConnectedDeviceMonitor statusFlags]& 8) != 0 && [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAddField3])
  {
    v7 = [NSNumber numberWithUnsignedInt:2048];
    [v3 setObject:v7 forKeyedSubscript:@"df"];
  }

  if (self->_enhancedDiscoveryAdvActive)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enD"];
  }

  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserUpdateAddHotspotInfo:v3];
  _idsBluetoothDeviceIDsForLEPipe = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForLEPipe];
  lePipeDevices = [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser lePipeDevices];
  v10 = _idsBluetoothDeviceIDsForLEPipe;
  v11 = v10;
  if (lePipeDevices == v10)
  {

    goto LABEL_33;
  }

  if ((v10 == 0) == (lePipeDevices != 0))
  {

    goto LABEL_32;
  }

  v12 = [lePipeDevices isEqual:v10];

  if ((v12 & 1) == 0)
  {
LABEL_32:
    [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser setLePipeDevices:v11];
  }

LABEL_33:
  v33 = v11;
  if (self->_inDiscoverySession)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"iLagS"];
  }

  v34 = v3;
  unlockAdvertiseEnabled = self->_unlockAdvertiseEnabled;
  unlockAdvertiseWatch = self->_unlockAdvertiseWatch;
  unlockAdvertiseWatchLocked = self->_unlockAdvertiseWatchLocked;
  v35 = byte_1009A0615;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = self->_services;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    advertiseRate = 0;
    v20 = *v37;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)];
        if (([v22 needsAWDL] & 1) == 0 && (objc_msgSend(v22, "needsKeyboard") & 1) == 0 && (objc_msgSend(v22, "needsSetup") & 1) == 0)
        {
          if ([v22 advertiseRate] > advertiseRate)
          {
            advertiseRate = [v22 advertiseRate];
          }

          unlockAdvertiseEnabled |= [v22 autoUnlockEnabled];
          unlockAdvertiseWatch |= [v22 autoUnlockWatch];
          v35 |= [v22 duetSync];
          unlockAdvertiseWatchLocked |= [v22 watchLocked];
        }
      }

      v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v18);
  }

  else
  {
    advertiseRate = 0;
  }

  v23 = v34;
  if (unlockAdvertiseEnabled)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ue"];
  }

  v24 = unlockAdvertiseWatch;
  if (unlockAdvertiseWatch)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"uw"];
  }

  if (unlockAdvertiseWatchLocked)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wl"];
  }

  if (v35)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ds"];
  }

  if ([(CUSystemMonitor *)self->_systemMonitor meDeviceIsMe])
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"meD"];
  }

  if (self->_bleNearbyInfoWiFiP2P)
  {
    manateeAvailable = [(CUSystemMonitor *)self->_systemMonitor manateeAvailable];
    wifiState = [(CUSystemMonitor *)self->_systemMonitor wifiState];
    wifiFlags = [(CUSystemMonitor *)self->_systemMonitor wifiFlags];
    if (_os_feature_enabled_impl())
    {
      if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1000348BC();
      }

      LOBYTE(v28) = 0;
      if (!wifiState)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v28 = (wifiFlags >> 5) & 1;
      if (!wifiState)
      {
LABEL_72:
        v23 = v34;
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263248(wifiState, v28, self, &self->_systemMonitor);
        }

        goto LABEL_75;
      }
    }

    if (wifiState != 10 && (v28 & 1) == 0 && ((self->_bleNearbyActionScanner != 0) & manateeAvailable) == 1)
    {
      v23 = v34;
      [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wp"];
      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_75:
  if (GestaltGetBoolean())
  {
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:@"rgC"];
  }

  if (advertiseRate <= 59 && self->_unlockAdvertiseAggressive || advertiseRate <= 59 && self->_enhancedDiscoveryShouldRun)
  {
    advertiseRate = 60;
  }

  else
  {
    if (self->_cameraState != 1 || advertiseRate >= 40)
    {
      if (self->_unlockAdvertiseBackground)
      {
        v29 = v33;
        if (advertiseRate <= 29)
        {
          v32 = daemon_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            sub_100263350(v32);
          }

          advertiseRate = 30;
        }

        goto LABEL_83;
      }

      if ((unlockAdvertiseEnabled | v24))
      {
        v29 = v33;
        if (advertiseRate > 39)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v29 = v33;
        if ((unlockAdvertiseWatchLocked & (advertiseRate < 40)) == 0)
        {
          if (!advertiseRate)
          {
            advertiseRate = 30;
          }

          goto LABEL_83;
        }
      }

      advertiseRate = 40;
      goto LABEL_83;
    }

    advertiseRate = 40;
  }

  v29 = v33;
LABEL_83:
  v30 = 50;
  if (advertiseRate > 50)
  {
    v30 = advertiseRate;
  }

  if (self->_boostNearbyInfo)
  {
    v31 = v30;
  }

  else
  {
    v31 = advertiseRate;
  }

  if (v31 != [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser advertiseRate])
  {
    [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser setAdvertiseRate:v31];
  }

  [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser setPayloadFields:v23];
  if (!self->_bleNearbyInfoAdvertised)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263394(v23);
    }

    self->_bleNearbyInfoAdvertised = 1;
    [(SFBLEAdvertiser *)self->_bleNearbyInfoAdvertiser activateWithCompletion:&stru_1008D5618];
  }
}

- (void)_bleUpdateAuthTagIfNeeded
{
  if (!self->_bleAuthTag)
  {
    v13[5] = v2;
    v13[6] = v3;
    if (self->_idSelfIdentity)
    {
      v5 = self->_bleAdvertisingAddress;
      if ([(NSData *)v5 length]!= 6)
      {
        bluetoothAddressData = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];

        v5 = bluetoothAddressData;
      }

      if ([(NSData *)v5 length]!= 6)
      {
        goto LABEL_13;
      }

      idSelfIdentity = self->_idSelfIdentity;
      v13[0] = 0;
      v8 = [(RPIdentity *)idSelfIdentity authTagForData:v5 type:2 error:v13];
      v9 = v13[0];
      bleAuthTag = self->_bleAuthTag;
      self->_bleAuthTag = v8;

      v11 = self->_bleAuthTag;
      if (!v11)
      {
        sub_1002645A0(dword_100973248, v9);
        goto LABEL_12;
      }

      if (dword_100973248 <= 30)
      {
        if (dword_100973248 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_11;
          }

          v11 = self->_bleAuthTag;
        }

        LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateAuthTagIfNeeded]", 30, "Updated BLE Auth Tag: <%@>\n", v11);
      }

LABEL_11:
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:@"SDNotificationNameNearbyBLEAuthTagChanged" object:self userInfo:0];

LABEL_12:
LABEL_13:
    }
  }
}

- (id)_idsBluetoothDeviceIDsForLEPipe
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  v5 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9)
        {
          objc_msgSend_operatingSystemVersion(v9);
        }

        modelIdentifier = [v9 modelIdentifier];
        if (([modelIdentifier hasPrefix:@"Mac"] & 1) == 0 && !objc_msgSend(modelIdentifier, "hasPrefix:", @"iMac"))
        {
          [modelIdentifier hasPrefix:@"Watch"];
        }
      }

      v6 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)_bleNearbyInfoAdvertiserShouldAddField3
{
  v3 = +[SDActivityAdvertiser sharedAdvertiser];
  if ([v3 isAdvertising])
  {
    bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;

    if (bleNearbyActionAdvertiser)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

- (void)_bleNearbyInfoScannerEnsureStarted
{
  selfCopy = self;
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  if (bleNearbyInfoScanner)
  {

    [SDNearbyAgent _bleUpdateScanner:"_bleUpdateScanner:typeFlag:" typeFlag:?];
  }

  else
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100035AA0(self, a2, bleNearbyInfoScanner);
      }
    }

    v4 = [[SFBLEScanner alloc] initWithType:16];
    v5 = selfCopy->_bleNearbyInfoScanner;
    selfCopy->_bleNearbyInfoScanner = v4;

    [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDispatchQueue:selfCopy->_dispatchQueue];
    if ([(NSMutableSet *)selfCopy->_caRequests count])
    {
      _idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForSharing];
      [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDeviceFilter:_idsBluetoothDeviceIDsForSharing];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008F7C;
    v10[3] = &unk_1008CE810;
    v10[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDeviceFoundHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024BF84;
    v9[3] = &unk_1008CE810;
    v9[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDeviceLostHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000302B8;
    v8[3] = &unk_1008CE878;
    v8[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDeviceChangedHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024C038;
    v7[3] = &unk_1008CEA50;
    v7[4] = selfCopy;
    [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setScanStateChangedHandler:v7];
    [(SDNearbyAgent *)selfCopy _bleUpdateScanner:selfCopy->_bleNearbyInfoScanner typeFlag:1];
    if (selfCopy->_bleNearbyInfoRSSILog)
    {
      [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setRssiLog:1];
    }

    [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner activateWithCompletion:&stru_1008D5688];
  }
}

- (int)_idsVisionOS2OrHigherCount
{
  result = self->_idsVisionOS2OrHigherCountCache;
  if (result < 0)
  {
    self->_idsVisionOS2OrHigherCountCache = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v13;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        productName = [v9 productName];
        if (![productName isEqualToString:@"xrOS"])
        {
          goto LABEL_12;
        }

        if (!v9)
        {
          v11 = 0;
LABEL_12:

          continue;
        }

        objc_msgSend_operatingSystemVersion(v9);

        if (v11 >= 2)
        {
          ++self->_idsVisionOS2OrHigherCountCache;
        }
      }

      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v6)
      {
LABEL_15:

        return self->_idsVisionOS2OrHigherCountCache;
      }
    }
  }

  return result;
}

- (void)_identificationHandleDiscoveryStop
{
  v2 = 16;
  if (self->_ddNearbyActionEnabled)
  {
    v2 = 0;
  }

  v3 = v2 | !self->_ddNearbyInfoEnabled;
  idDevices = self->_idDevices;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002589E0;
  v5[3] = &unk_1008D5890;
  v5[4] = v3;
  [(NSMutableDictionary *)idDevices enumerateKeysAndObjectsUsingBlock:v5];
}

- (id)sharedNearbyPipe
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = SFDeviceClassCodeGet();
  v5 = v3 == 1 || v3 == 7;
  selfCopy->_btPipeForced = v5;
  if (selfCopy->_activated)
  {
    [(SDNearbyAgent *)selfCopy _btPipeEnsureStarted];
    v6 = selfCopy->_unlockBtPipe;
  }

  else
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent sharedNearbyPipe]", 90, "### Ignoring pipe start before activate\n");
    }

    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (SDNearbyAgent)init
{
  v11.receiver = self;
  v11.super_class = SDNearbyAgent;
  v2 = [(SDNearbyAgent *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityLevelNotifyToken = -1;
    v2->_allowEnhancedDiscovery = -1;
    v2->_caForce = -1;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_familyNotifyToken = -1;
    v3->_idIdentitiesChangedNotifyToken = -1;
    v3->_idsAppleTVCountCache = -1;
    v3->_idsContinuityDeviceCountCache = -1;
    v3->_idsWatchCountCache = -1;
    v3->_homePodModelCodeOverride = -1;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&v3->_idsHasActiveWatchCache = v6;
    *&v3->_idsIsSignedInCache = v6;
    v7 = objc_alloc_init(NSMutableSet);
    enhancedDiscoveryUseCases = v3->_enhancedDiscoveryUseCases;
    v3->_enhancedDiscoveryUseCases = v7;

    v3->_wombatActivityToken = -1;
    [(SDNearbyAgent *)v3 prefillDefaultsForGenuineCheckIfNecessary];
    v9 = v3;
  }

  return v3;
}

- (void)prefillDefaultsForGenuineCheckIfNecessary
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Sharing"];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100261F80(v2);
  }

  v3 = [v2 objectForKey:@"hasDoneGenuineDeviceCheck"];

  if (!v3)
  {
    v24 = 0;
    v4 = [CBDiscovery devicesWithDiscoveryFlags:0x800000 error:&v24];
    v5 = v24;
    v6 = v5;
    if (!v5 || v4)
    {
      v18 = v5;
      v19 = v4;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            if ([v12 deviceFlags])
            {
              if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                sub_10026201C(v12);
              }

              btAddressData = [v12 btAddressData];
              if (btAddressData)
              {
                v14 = CUPrintNSDataAddress();
                uppercaseString = [v14 uppercaseString];

                v16 = [v2 objectForKey:uppercaseString];

                if (!v16)
                {
                  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10026205C(uppercaseString);
                  }

                  [v2 setObject:&off_10090ED30 forKey:uppercaseString];
                }
              }
            }

            else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_10026209C(v12);
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v17 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
          v9 = v17;
        }

        while (v17);
      }

      [v2 setBool:1 forKey:@"hasDoneGenuineDeviceCheck"];
      [v2 synchronize];
      v6 = v18;
      v4 = v19;
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002620DC(v2);
      }
    }

    else if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100261FDC(v6);
    }
  }
}

- (void)setAudioRoutingScore:(int)score
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024581C;
  v4[3] = &unk_1008D5528;
  scoreCopy = score;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setAutoUnlockActive:(BOOL)active
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024599C;
  v4[3] = &unk_1008CF798;
  activeCopy = active;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setBoostNearbyInfo:(BOOL)info
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245AF8;
  v4[3] = &unk_1008CF798;
  infoCopy = info;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setEnhancedDiscovery:(BOOL)discovery
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245C54;
  v4[3] = &unk_1008CF798;
  discoveryCopy = discovery;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setHotspotInfo:(unsigned int)info
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100245E58;
  v4[3] = &unk_1008D5528;
  infoCopy = info;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100245FA0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100262138(v3, v4, v5);
    }
  }

  self->_activated = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_bleWPNearby)
  {
    v6 = +[SFBLEClient sharedClient];
    v7 = [v6 addNearbyDelegate:self];
    bleWPNearby = self->_bleWPNearby;
    self->_bleWPNearby = v7;
  }

  if (!self->_btConnectedDeviceMonitor)
  {
    v9 = objc_alloc_init(CUBluetoothClient);
    btConnectedDeviceMonitor = self->_btConnectedDeviceMonitor;
    self->_btConnectedDeviceMonitor = v9;

    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setDispatchQueue:self->_dispatchQueue];
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setFlags:24];
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setLabel:@"Sharing-CA"];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002467E8;
    v38[3] = &unk_1008D5550;
    v38[4] = self;
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor setDeviceConnectedHandler:v38];
    [(CUBluetoothClient *)self->_btConnectedDeviceMonitor activate];
  }

  if (self->_familyNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002467F4;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.familyFlagsChanged", &self->_familyNotifyToken, dispatchQueue, handler);
    familyNotifyToken = self->_familyNotifyToken;
    state64 = 0;
    notify_get_state(familyNotifyToken, &state64);
    self->_familyFlags = state64;
  }

  if (!self->_statusMonitor)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"_handleAirDropDiscoverableModeChanged:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
    [v13 addObserver:self selector:"_handleAppleIDChanged:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
    [v13 addObserver:self selector:"_handleAppleIDChanged:" name:@"com.apple.sharingd.AppleIDChanged" object:0];
    [v13 addObserver:self selector:"_activityMonitorMediaAccessControlSettingChanged:" name:@"com.apple.sharingd.MediaAccessControlSettingChanged" object:0];
    [v13 addObserver:self selector:"_activityMonitorWatchWristStateChanged:" name:@"com.apple.sharingd.PairedWatchWristStateChanged" object:0];
    [v13 addObserver:self selector:"_activityMonitorScreenStateChanged:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v13 addObserver:self selector:"_activityMonitorUILockStatusChanged:" name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    [v13 addObserver:self selector:"_unlockApproveBluetoothIDsChanged:" name:@"ApproveBluetoothIDsChanged" object:0];
    [v13 addObserver:self selector:"_systemWillSleep" name:@"com.apple.sharingd.SystemWillSleep" object:0];
    [v13 addObserver:self selector:"_systemHasPoweredOn" name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
    [v13 addObserver:self selector:"_btPipeStateChanged:" name:SFNotificationNamePipeConnectionStateChanged object:0];
    [v13 addObserver:self selector:"_smartCoverStatusChanged:" name:@"com.apple.sharingd.SmartCoverClosedChanged" object:0];
    [v13 addObserver:self selector:"_wirelessCriticalChanged:" name:@"com.apple.sharingd.WirelessCriticalChanged" object:0];
    [v13 addObserver:self selector:"_mirroringStateChanged:" name:@"com.apple.sharingd.MirroringStateChanged" object:0];
    v14 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v14;

    self->_activityScreenOn = [(SDStatusMonitor *)self->_statusMonitor screenOn];
    self->_activityUIUnlocked = [(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked];
  }

  if (!self->_systemMonitor)
  {
    v16 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v16;

    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceUseFindMyLocate:1];
    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10024687C;
    v36[3] = &unk_1008CDEA0;
    v36[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setBluetoothAddressChangedHandler:v36];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000329CC;
    v35[3] = &unk_1008CDEA0;
    v35[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setCallChangedHandler:v35];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002468E4;
    v34[3] = &unk_1008CDEA0;
    v34[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10024694C;
    v33[3] = &unk_1008CDEA0;
    v33[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v33];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1002469AC;
    v32[3] = &unk_1008CDEA0;
    v32[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceChangedHandler:v32];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100246A14;
    v31[3] = &unk_1008CDEA0;
    v31[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v31];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100246A88;
    v30[3] = &unk_1008CDEA0;
    v30[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100246B0C;
    v29[3] = &unk_1008CDEA0;
    v29[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenSaverChangedHandler:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100015DEC;
    v28[3] = &unk_1008CDEA0;
    v28[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setSystemLockStateChangedHandler:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100246B74;
    v27[3] = &unk_1008CDEA0;
    v27[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v27];
    v18 = self->_systemMonitor;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100246BDC;
    v26[3] = &unk_1008CDEA0;
    v26[4] = self;
    [(CUSystemMonitor *)v18 activateWithCompletion:v26];
  }

  [(SDNearbyAgent *)self _idsEnsureStarted];
  [(SDNearbyAgent *)self prefsChanged];
  if (!self->_wifiManager)
  {
    v19 = +[CUTWiFiManager sharedInstance];
    wifiManager = self->_wifiManager;
    self->_wifiManager = v19;

    [(CUTWiFiManager *)self->_wifiManager addDelegate:self];
  }

  DeviceClass = GestaltGetDeviceClass();
  if ((DeviceClass == 7 || DeviceClass == 4) && !self->_systemService)
  {
    v22 = objc_alloc_init(SFSystemService);
    systemService = self->_systemService;
    self->_systemService = v22;

    [(SFSystemService *)self->_systemService setDispatchQueue:self->_dispatchQueue];
    [(SFSystemService *)self->_systemService activate];
  }

  [(SDNearbyAgent *)self _registerForMagicMountUpdates];
  v24 = objc_alloc_init(_TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager);
  digitalEngravingManager = self->_digitalEngravingManager;
  self->_digitalEngravingManager = v24;

  [(HeadphoneDigitalEngravingManager *)self->_digitalEngravingManager setFetchEngravingDataHandler:&stru_1008D5590];
  [(SDNearbyAgent *)self _registerForWombatActivityNotification];
  if ([(SDNearbyAgent *)self _onlyRingVisionDeviceWhenDonned])
  {
    [(SDNearbyAgent *)self _registerForDonStateRequest];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246E28;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1002622D8(v3, v4, v5);
    }
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  if (self->_statusMonitor)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.AppleIDChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.MediaAccessControlSettingChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.PairedWatchWristStateChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    [v7 removeObserver:self name:@"ApproveBluetoothIDsChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.SystemWillSleep" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
    [v7 removeObserver:self name:SFNotificationNamePipeConnectionStateChanged object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.SmartCoverClosedChanged" object:0];
    [v7 removeObserver:self name:@"com.apple.sharingd.WirelessCriticalChanged" object:0];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = 0;
  }

  airDropController = self->_airDropController;
  self->_airDropController = 0;

  [(CUBluetoothClient *)self->_btConnectedDeviceMonitor invalidate];
  btConnectedDeviceMonitor = self->_btConnectedDeviceMonitor;
  self->_btConnectedDeviceMonitor = 0;

  [(SDNearbyAgent *)self _activityMonitorEnsureStopped];
  [(SDNearbyAgent *)self _identificationEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyActionAdvertiserEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyActionScannerEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserEnsureStopped];
  [(SDNearbyAgent *)self _bleNearbyInfoScannerEnsureStopped];
  [(SDNearbyAgent *)self _bleProximityPairingScannerEnsureStopped];
  cameraMagicMountManager = self->_cameraMagicMountManager;
  if (cameraMagicMountManager)
  {
    [(CMMagicMountManager *)cameraMagicMountManager stopMagicMountUpdates];
    v12 = self->_cameraMagicMountManager;
    self->_cameraMagicMountManager = 0;
  }

  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = 0;

  cameraConfigChangeTimer = self->_cameraConfigChangeTimer;
  if (cameraConfigChangeTimer)
  {
    v15 = cameraConfigChangeTimer;
    dispatch_source_cancel(v15);
    v16 = self->_cameraConfigChangeTimer;
    self->_cameraConfigChangeTimer = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDNearbyAgent *)selfCopy _btPipeEnsureStopped];
  objc_sync_exit(selfCopy);

  familyNotifyToken = selfCopy->_familyNotifyToken;
  if (familyNotifyToken != -1)
  {
    notify_cancel(familyNotifyToken);
    selfCopy->_familyNotifyToken = -1;
  }

  [(SDNearbyAgent *)selfCopy _idsEnsureStopped];
  [(SDNearbyAgent *)selfCopy _unregisterForWombatActivityNotification];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = selfCopy->_bleConnections;
  v20 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v20)
  {
    v21 = *v48;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v47 + 1) + 8 * i) invalidate];
      }

      v20 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v20);
  }

  [(NSMutableDictionary *)selfCopy->_bleConnections removeAllObjects];
  bleConnections = selfCopy->_bleConnections;
  selfCopy->_bleConnections = 0;

  [(NSMutableSet *)selfCopy->_bleDiagnosticModeClients removeAllObjects];
  bleDiagnosticModeClients = selfCopy->_bleDiagnosticModeClients;
  selfCopy->_bleDiagnosticModeClients = 0;

  v25 = +[SFBLEClient sharedClient];
  [v25 removeNearbyDelegate:selfCopy];

  bleWPNearby = selfCopy->_bleWPNearby;
  selfCopy->_bleWPNearby = 0;

  [(NSMutableSet *)selfCopy->_caRequests removeAllObjects];
  caRequests = selfCopy->_caRequests;
  selfCopy->_caRequests = 0;

  [(NSMutableSet *)selfCopy->_ddRequests removeAllObjects];
  [(NSMutableSet *)selfCopy->_caRequestsNoScans removeAllObjects];
  caRequestsNoScans = selfCopy->_caRequestsNoScans;
  selfCopy->_caRequestsNoScans = 0;

  ddRequests = selfCopy->_ddRequests;
  selfCopy->_ddRequests = 0;

  ddFastScanTimer = selfCopy->_ddFastScanTimer;
  if (ddFastScanTimer)
  {
    v31 = ddFastScanTimer;
    dispatch_source_cancel(v31);
    v32 = selfCopy->_ddFastScanTimer;
    selfCopy->_ddFastScanTimer = 0;
  }

  [(NSMutableDictionary *)selfCopy->_ddNearbyActionDevices removeAllObjects];
  ddNearbyActionDevices = selfCopy->_ddNearbyActionDevices;
  selfCopy->_ddNearbyActionDevices = 0;

  [(NSMutableDictionary *)selfCopy->_ddNearbyInfoDevices removeAllObjects];
  ddNearbyInfoDevices = selfCopy->_ddNearbyInfoDevices;
  selfCopy->_ddNearbyInfoDevices = 0;

  [(NSMutableDictionary *)selfCopy->_ddProximityPairingDevices removeAllObjects];
  ddProximityPairingDevices = selfCopy->_ddProximityPairingDevices;
  selfCopy->_ddProximityPairingDevices = 0;

  [(NSMutableDictionary *)selfCopy->_deliveredDonnedIdentifiers removeAllObjects];
  deliveredDonnedIdentifiers = selfCopy->_deliveredDonnedIdentifiers;
  selfCopy->_deliveredDonnedIdentifiers = 0;

  [(NSMutableDictionary *)selfCopy->_donnedDevices removeAllObjects];
  donnedDevices = selfCopy->_donnedDevices;
  selfCopy->_donnedDevices = 0;

  [(SDNearbyAgent *)selfCopy _cancelDonStateRetryTimers];
  [(NSMutableDictionary *)selfCopy->_donStateRetryTimerDictionary removeAllObjects];
  donStateRetryTimerDictionary = selfCopy->_donStateRetryTimerDictionary;
  selfCopy->_donStateRetryTimerDictionary = 0;

  [(RPCompanionLinkClient *)selfCopy->_receiveDonStateClient invalidate];
  receiveDonStateClient = selfCopy->_receiveDonStateClient;
  selfCopy->_receiveDonStateClient = 0;

  [(NSMutableDictionary *)selfCopy->_services removeAllObjects];
  services = selfCopy->_services;
  selfCopy->_services = 0;

  [(NSMutableDictionary *)selfCopy->_sessions removeAllObjects];
  sessions = selfCopy->_sessions;
  selfCopy->_sessions = 0;

  [(NSMutableDictionary *)selfCopy->_setupSessions removeAllObjects];
  setupSessions = selfCopy->_setupSessions;
  selfCopy->_setupSessions = 0;

  [(SFSystemService *)selfCopy->_systemService invalidate];
  systemService = selfCopy->_systemService;
  selfCopy->_systemService = 0;

  unlockTestClientTimer = selfCopy->_unlockTestClientTimer;
  if (unlockTestClientTimer)
  {
    v45 = unlockTestClientTimer;
    dispatch_source_cancel(v45);
    v46 = selfCopy->_unlockTestClientTimer;
    selfCopy->_unlockTestClientTimer = 0;
  }
}

- (void)_handleAirDropDiscoverableModeChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024743C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleAppleIDChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100247528;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleBluetoothDeviceConnected:(id)connected
{
  dispatchQueue = self->_dispatchQueue;
  connectedCopy = connected;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v6 notifyForNonGenuineDevice:connectedCopy];

  v7 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v7 promptForAdaptiveControlsProxForDevice:connectedCopy];

  v8 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v8 promptForWhatsNewProxForDevice:connectedCopy];

  v9 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v9 promptForSiriNotificationsForDevice:connectedCopy];

  v10 = +[SDProximityPairingAgent sharedProximityPairingAgent];
  [v10 promptForSpatialAudioProfileForDevice:connectedCopy];

  [(HeadphoneDigitalEngravingManager *)self->_digitalEngravingManager deviceDidConnect:connectedCopy];

  [(SDNearbyAgent *)self _update];
}

- (void)prefsChanged
{
  v72 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  Int64 = CFPrefs_GetInt64();
  v4 = 1000;
  if (Int64 < 1000)
  {
    v4 = Int64;
  }

  if (v4 <= 1)
  {
    LODWORD(v4) = 1;
  }

  if (Int64 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  activityPollSeconds = self->_activityPollSeconds;
  if (v5 != activityPollSeconds)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        activityPollSeconds = self->_activityPollSeconds;
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Activity poll seconds: %d -> %d\n", activityPollSeconds, v5);
    }

LABEL_13:
    self->_activityPollSeconds = v5;
  }

  v7 = CFPrefs_GetInt64();
  v8 = 1000;
  if (v7 < 1000)
  {
    v8 = v7;
  }

  v9 = v8 & ~(v8 >> 63);
  activityRecentSeconds = self->_activityRecentSeconds;
  if (v9 != activityRecentSeconds)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        activityRecentSeconds = self->_activityRecentSeconds;
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Activity recent seconds: %d -> %d\n", activityRecentSeconds, v9);
    }

LABEL_21:
    self->_activityRecentSeconds = v9;
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_btPipeEnabled != v11)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026232C();
    }

    self->_btPipeEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_caEnabled != v12)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262384();
    }

    self->_caEnabled = v12;
  }

  v13 = CFPrefs_GetInt64();
  if (v13 < 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13 != 0;
  }

  caForce = self->_caForce;
  if (v14 != caForce)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        caForce = self->_caForce;
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts force: %d -> %d\n", caForce, v14);
    }

LABEL_40:
    self->_caForce = v14;
  }

  v16 = CFPrefs_GetInt64() != 0;
  if (self->_caPhoneCalls != v16)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002623DC();
    }

    self->_caPhoneCalls = v16;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_caPhoneCallsOnlyRingDonnedDevice != v17)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262434();
    }

    self->_caPhoneCallsOnlyRingDonnedDevice = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_caScanIfVeryActive != v18)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026248C();
    }

    self->_caScanIfVeryActive = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_caScanIfHasVisionOS1 != v19)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002624E4();
    }

    self->_caScanIfHasVisionOS1 = v19;
  }

  v20 = CFPrefs_GetInt64() != 0;
  if (self->_caSingleDevice != v20)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026253C();
    }

    self->_caSingleDevice = v20;
  }

  v21 = CFPrefs_GetInt64();
  if (v21 >= 480)
  {
    v22 = 480;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= 1)
  {
    LODWORD(v22) = 1;
  }

  v23 = v22;
  donnedDeviceScanIntervalSeconds = self->_donnedDeviceScanIntervalSeconds;
  if (v22 != donnedDeviceScanIntervalSeconds)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_76;
        }

        donnedDeviceScanIntervalSeconds = self->_donnedDeviceScanIntervalSeconds;
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Donned device scan interval seconds: %d -> %d\n", donnedDeviceScanIntervalSeconds, v23);
    }

LABEL_76:
    self->_donnedDeviceScanIntervalSeconds = v23;
  }

  v25 = CFPrefs_GetInt64() != 0;
  if (self->_idEnabled != v25)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262594();
    }

    self->_idEnabled = v25;
  }

  v26 = CFPrefs_GetInt64() != 0;
  if (self->_ignoreWatchWristLockState != v26)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002625EC();
    }

    self->_ignoreWatchWristLockState = v26;
  }

  v27 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyActionAdvertiseDisabled != v27)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262644();
    }

    self->_bleNearbyActionAdvertiseDisabled = v27;
  }

  v28 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyActionRSSILog != v28)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026269C();
    }

    self->_bleNearbyActionRSSILog = v28;
  }

  v29 = CFPrefs_GetInt64();
  v30 = v29 != 0;
  if (self->_bleNearbyActionScanAlways != v30)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002626F4();
    }

    self->_bleNearbyActionScanAlways = v30;
  }

  v31 = v29 == 0;
  if (self->_bleNearbyActionScanNever != v31)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026274C();
    }

    self->_bleNearbyActionScanNever = v31;
  }

  CFPrefs_GetData();
  v32 = [[NSData alloc] initWithBytes:&v72 length:0];
  bleAuthTagOverride = self->_bleAuthTagOverride;
  v34 = v32;
  v35 = bleAuthTagOverride;
  v36 = v35;
  if (v34 == v35)
  {

    v38 = v34;
LABEL_118:

    goto LABEL_119;
  }

  if ((v34 != 0) == (v35 == 0))
  {

LABEL_113:
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Nearby AuthTag override: %@ -> %@\n", self->_bleAuthTagOverride, v34);
    }

    v39 = v34;
    v38 = self->_bleAuthTagOverride;
    self->_bleAuthTagOverride = v39;
    goto LABEL_118;
  }

  v37 = [(NSData *)v34 isEqual:v35];

  if ((v37 & 1) == 0)
  {
    goto LABEL_113;
  }

LABEL_119:
  v40 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoAdvertiseAlways != v40)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002627A4();
    }

    self->_bleNearbyInfoAdvertiseAlways = v40;
  }

  v41 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoAdvertiseDisabled != v41)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002627FC();
    }

    self->_bleNearbyInfoAdvertiseDisabled = v41;
  }

  CFPrefs_GetDouble();
  if (v42 <= 1000.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 5.0;
  }

  bleNearbyInfoAdvertiseLingerSecs = self->_bleNearbyInfoAdvertiseLingerSecs;
  if (v43 != bleNearbyInfoAdvertiseLingerSecs)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_137;
        }

        bleNearbyInfoAdvertiseLingerSecs = self->_bleNearbyInfoAdvertiseLingerSecs;
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyInfo advertise linger seconds: %.0f -> %.0f\n", bleNearbyInfoAdvertiseLingerSecs, v43);
    }

LABEL_137:
    self->_bleNearbyInfoAdvertiseLingerSecs = v43;
  }

  v45 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoRSSILog != v45)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262854();
    }

    self->_bleNearbyInfoRSSILog = v45;
  }

  v46 = CFPrefs_GetInt64() != 0;
  if (self->_bleNearbyInfoWiFiP2P != v46)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002628AC();
    }

    self->_bleNearbyInfoWiFiP2P = v46;
  }

  v47 = CFPrefs_GetInt64() != 0;
  if (self->_contactHashesEnabled != v47)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262904();
    }

    self->_contactHashesEnabled = v47;
  }

  v48 = CFPrefs_GetInt64() != 0;
  if (self->_logProxAdvFields != v48)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026295C();
    }

    self->_logProxAdvFields = v48;
  }

  v49 = CFPrefs_GetInt64() != 0;
  if (self->_bleProximityEnabled != v49)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002629B4();
    }

    self->_bleProximityEnabled = v49;
  }

  CFDictionaryGetTypeID();
  v50 = CFPrefs_CopyTypedValue();
  bleProximityInfoOverride = self->_bleProximityInfoOverride;
  v52 = v50;
  v53 = bleProximityInfoOverride;
  v54 = v53;
  if (v52 == v53)
  {

    v56 = v52;
LABEL_173:

    goto LABEL_174;
  }

  if ((v52 != 0) == (v53 == 0))
  {

LABEL_169:
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262A0C(v52);
    }

    v57 = v52;
    v56 = self->_bleProximityInfoOverride;
    self->_bleProximityInfoOverride = v57;
    goto LABEL_173;
  }

  v55 = [(NSDictionary *)v52 isEqual:v53];

  if ((v55 & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_174:
  CFDictionaryGetTypeID();
  v58 = CFPrefs_CopyTypedValue();

  if (!v58)
  {
    bleProximityRSSIEstimatorInfo = [(SDNearbyAgent *)self bleProximityRSSIEstimatorInfo];
    if (!bleProximityRSSIEstimatorInfo)
    {
      goto LABEL_178;
    }

    v58 = bleProximityRSSIEstimatorInfo;
  }

  [SFBLEDevice setRSSIEstimatorInfo:v58];

LABEL_178:
  v60 = CFPrefs_GetInt64() != 0;
  if (self->_bleProximityRSSILog != v60)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262A4C();
    }

    self->_bleProximityRSSILog = v60;
  }

  v61 = CFPrefs_GetInt64() != 0;
  if (self->_shareAudioEnabled != v61)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262AA4();
    }

    self->_shareAudioEnabled = v61;
  }

  v62 = CFPrefs_GetInt64() != 0;
  if (self->_homePodIdentifiesAsB520 != v62)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262AFC();
    }

    self->_homePodIdentifiesAsB520 = v62;
  }

  v63 = CFPrefs_GetInt64() != 0;
  if (self->_homePodIdentifiesAsB620 != v63)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262B54();
    }

    self->_homePodIdentifiesAsB620 = v63;
  }

  v64 = CFPrefs_GetInt64();
  homePodModelCodeOverride = self->_homePodModelCodeOverride;
  if (v64 != homePodModelCodeOverride)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_203;
        }

        LODWORD(homePodModelCodeOverride) = self->_homePodModelCodeOverride;
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "HomePod model code override: %d -> %d\n", homePodModelCodeOverride, v64);
    }

LABEL_203:
    self->_homePodModelCodeOverride = v64;
  }

  v66 = CFPrefs_GetInt64() != 0;
  if (self->_isRIClientEnabled != v66)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262BAC();
    }

    self->_isRIClientEnabled = v66;
  }

  v67 = CFPrefs_GetInt64() != 0;
  if (self->_simulateDonStateChanges != v67)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262C04();
    }

    self->_simulateDonStateChanges = v67;
  }

  v68 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeScreenOff != v68)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262C5C();
    }

    self->_prefWombatAssumeScreenOff = v68;
    [(SDNearbyAgent *)self _updateCameraState];
  }

  v69 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeLocked != v69)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262CB4();
    }

    self->_prefWombatAssumeLocked = v69;
    [(SDNearbyAgent *)self _updateCameraState];
  }

  v70 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeMounted != v70)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262D0C();
    }

    self->_prefWombatAssumeMounted = v70;
    [(SDNearbyAgent *)self _updateCameraState];
  }

  v71 = CFPrefs_GetInt64() != 0;
  if (self->_prefWombatAssumeNotInPocket != v71)
  {
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262D64();
    }

    self->_prefWombatAssumeNotInPocket = v71;
    [(SDNearbyAgent *)self _updateCameraState];
  }

  [(SDNearbyAgent *)self _update];
}

- (void)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100248A68;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_useCasesToHexString:(id)string
{
  stringCopy = string;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = "0x%x";
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(stringCopy);
        }

        NSAppendPrintF(&v16, v7, [*(*(&v12 + 1) + 8 * i) unsignedIntValue]);
        v7 = ", 0x%x";
      }

      v5 = [stringCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
      v7 = ", 0x%x";
    }

    while (v5);
  }

  v9 = v16;
  if (!v16)
  {
    v9 = &stru_1008EFBD0;
  }

  v10 = v9;

  return v10;
}

- (unsigned)_activityMonitorCurrentLevelAndNeedsPoll:(BOOL *)poll recentUserActivity:(BOOL *)activity
{
  [(SDNearbyAgent *)self _activityMonitorLastUserEventDelta];
  v8 = v7;
  if (!self->_activityMonitorStarted || [(SDStatusMonitor *)self->_statusMonitor multipleUsersLoggedIn])
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  if ([(CUSystemMonitor *)self->_systemMonitor activeCallCount]>= 1 && (!SFDeviceIsRealityDevice() || [(SDStatusMonitor *)self->_statusMonitor deviceKeyBagUnlockedAndScreenOn]))
  {
    v10 = 0;
    v11 = 14;
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if ([(SDStatusMonitor *)self->_statusMonitor carplayConnected])
  {
    v10 = 0;
    v11 = 13;
    goto LABEL_10;
  }

  if ([(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (v8 <= self->_activityRecentSeconds)
    {
      v11 = 11;
      goto LABEL_34;
    }

    if ([(SDStatusMonitor *)self->_statusMonitor pairedWatchWristState]== 3)
    {
      v11 = 10;
LABEL_34:
      v9 = 1;
      v10 = 1;
      goto LABEL_11;
    }

    if (SFDeviceClassCodeGet() == 3 && [(SDStatusMonitor *)self->_statusMonitor smartCoverIsClosed])
    {
      goto LABEL_42;
    }

    if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
    {
      v9 = 0;
      v10 = 1;
      v11 = 7;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      if (SFDeviceClassCodeGet() == 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }
    }
  }

  else
  {
    if ([(SDStatusMonitor *)self->_statusMonitor pairedWatchWristState]== 3)
    {
      v10 = 0;
      v11 = 10;
      goto LABEL_10;
    }

    if (SFDeviceClassCodeGet() == 3 && [(SDStatusMonitor *)self->_statusMonitor smartCoverIsClosed])
    {
LABEL_42:
      v9 = 0;
      v10 = 0;
      v11 = 2;
      goto LABEL_11;
    }

    v9 = 0;
    v10 = 0;
    if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
    {
      v11 = 7;
    }

    else
    {
      v11 = 3;
    }
  }

LABEL_11:
  activityLevel = self->_activityLevel;
  if (v11 == activityLevel)
  {
    goto LABEL_22;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      activityLevel = self->_activityLevel;
    }

    if (activityLevel > 0xE)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_1008D60A0[activityLevel];
    }

    LogPrintF(&dword_100973248, "[SDNearbyAgent _activityMonitorCurrentLevelAndNeedsPoll:recentUserActivity:]", 40, "Activity level changed %d (%s) -> %d (%s)\n", activityLevel, v13, v11, off_1008D5AA0[v11 - 1]);
  }

LABEL_20:
  self->_activityLevel = v11;
  [(SDNearbyAgent *)self _activityMonitorUpdateUserActive:v9];
  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  if (activityLevelNotifyToken != -1)
  {
    notify_set_state(activityLevelNotifyToken, v11);
    notify_post("com.apple.sharing.activity-level-changed");
  }

LABEL_22:
  if (poll)
  {
    *poll = v10;
  }

  if (activity)
  {
    *activity = v8 <= self->_activityRecentSeconds;
  }

  return v11;
}

- (void)_activityMonitorCarPlayStatusChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100248EF0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorMultipleUsersLoggedInChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100249040;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorScreenStateChanged:(id)changed
{
  screenOn = [(SDStatusMonitor *)self->_statusMonitor screenOn];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002491A8;
  v6[3] = &unk_1008CF798;
  v6[4] = self;
  v7 = screenOn;
  dispatch_async(dispatchQueue, v6);
}

- (void)_activityMonitorUILockStatusChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100249270;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorUpdateUserActive:(BOOL)active
{
  if (self->_activityUserActive != active)
  {
    self->_activityUserActive = active;
    if (!active && self->_bleNearbyInfoAdvertiseLingerSecs > 0.0)
    {
      [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserLingerStart:@"UserActive"];
    }
  }
}

- (void)_activityMonitorMediaAccessControlSettingChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002493C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activityMonitorWatchWristStateChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002494F8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activityStateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024965C;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_bleNearbyActionAdvertiserEnsureStopped
{
  selfCopy = self;
  self->_bleDiagnosticAdvSuppressLogged = 0;
  self->_bleNearbyActionAdvertiseActive = 0;
  if (self->_bleNearbyActionAdvertiser)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100263044(self, a2, v2);
      }
    }
  }

  [(SFBLEAdvertiser *)selfCopy->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = selfCopy->_bleNearbyActionAdvertiser;
  selfCopy->_bleNearbyActionAdvertiser = 0;

  bleNearbyActionAdvertiseLingerTimer = selfCopy->_bleNearbyActionAdvertiseLingerTimer;
  if (bleNearbyActionAdvertiseLingerTimer)
  {
    v7 = bleNearbyActionAdvertiseLingerTimer;
    dispatch_source_cancel(v7);
    v6 = selfCopy->_bleNearbyActionAdvertiseLingerTimer;
    selfCopy->_bleNearbyActionAdvertiseLingerTimer = 0;
  }
}

- (void)_bleNearbyActionScannerEnsureStopped
{
  selfCopy = self;
  if (self->_bleNearbyActionScanner)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100263140(self, a2, v2);
      }
    }
  }

  [(SFBLEScanner *)selfCopy->_bleNearbyActionScanner invalidate];
  bleNearbyActionScanner = selfCopy->_bleNearbyActionScanner;
  selfCopy->_bleNearbyActionScanner = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_bleNearbyActionDevices allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [(NSMutableDictionary *)selfCopy->_bleNearbyActionDevices objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [(SDNearbyAgent *)selfCopy _deviceDiscoveryBLEDeviceLost:v10 type:15];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)selfCopy->_bleNearbyActionDevices removeAllObjects];
  bleNearbyActionDevices = selfCopy->_bleNearbyActionDevices;
  selfCopy->_bleNearbyActionDevices = 0;
}

- (void)_bleNearbyInfoAdvertiserUpdateAdvertiseReason:(id)reason
{
  reasonCopy = reason;
  if (self->_bleNearbyInfoAdvertiseReason != reasonCopy)
  {
    self->_bleNearbyInfoAdvertiseReasonChanged = 1;
    v6 = reasonCopy;
    objc_storeStrong(&self->_bleNearbyInfoAdvertiseReason, reason);
    reasonCopy = v6;
  }
}

- (void)_bleNearbyInfoAdvertiserUpdateAddAudioRoutingScore:(id)score
{
  scoreCopy = score;
  audioRoutingScore = self->_audioRoutingScore;
  if (audioRoutingScore)
  {
    _bleNearbyInfoAdvertiserShouldAddField3 = [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAddField3];
    if (_bleNearbyInfoAdvertiserShouldAddField3)
    {
      v9 = self->_bleAudioRoutingScoreEncryptedData;
      if (v9)
      {
LABEL_4:
        [scoreCopy setObject:v9 forKeyedSubscript:@"ars"];

        goto LABEL_17;
      }

      deviceIRKData = [(RPIdentity *)self->_idSelfIdentity deviceIRKData];
      if ([deviceIRKData length])
      {
        [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
        v11 = self->_bleAuthTag;
        if ([(NSData *)v11 length])
        {
          memset(v14, 0, sizeof(v14));
          [deviceIRKData bytes];
          [deviceIRKData length];
          [(NSData *)v11 bytes];
          [(NSData *)v11 length];
          CryptoHKDF();
          v13 = audioRoutingScore & 7;
          ccchacha20();
          v9 = [NSData _newZeroingDataWithBytes:&v13 length:1, v14];
          bleAudioRoutingScoreEncryptedData = self->_bleAudioRoutingScoreEncryptedData;
          self->_bleAudioRoutingScoreEncryptedData = v9;

          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100263430(audioRoutingScore, v9);
          }

          goto LABEL_4;
        }
      }

      goto LABEL_17;
    }

    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (_bleNearbyInfoAdvertiserShouldAddField3 = _LogCategory_Initialize(), _bleNearbyInfoAdvertiserShouldAddField3))
      {
        sub_100263414(_bleNearbyInfoAdvertiserShouldAddField3, v7, v8);
      }
    }
  }

LABEL_17:
}

- (void)_bleNearbyInfoAdvertiserUpdateAddHotspotInfo:(id)info
{
  infoCopy = info;
  hotspotInfo = self->_hotspotInfo;
  if (!hotspotInfo)
  {
    goto LABEL_16;
  }

  v6 = +[SDActivityAdvertiser sharedAdvertiser];
  isAdvertising = [v6 isAdvertising];

  if (!isAdvertising)
  {
    v11 = self->_bleHotspotEncryptedData;
    if (v11)
    {
LABEL_8:
      [infoCopy setObject:v11 forKeyedSubscript:@"hsi"];

      goto LABEL_16;
    }

    deviceIRKData = [(RPIdentity *)self->_idSelfIdentity deviceIRKData];
    if ([deviceIRKData length])
    {
      [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
      v13 = self->_bleAuthTag;
      if ([(NSData *)v13 length])
      {
        memset(v16, 0, sizeof(v16));
        [deviceIRKData bytes];
        [deviceIRKData length];
        [(NSData *)v13 bytes];
        [(NSData *)v13 length];
        CryptoHKDF();
        v15 = hotspotInfo;
        ccchacha20();
        v11 = [NSData _newZeroingDataWithBytes:&v15 length:1, v16];
        bleHotspotEncryptedData = self->_bleHotspotEncryptedData;
        self->_bleHotspotEncryptedData = v11;

        if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoAdvertiserUpdateAddHotspotInfo:]", 20, "Updated HotspotInfo: 0x%X <%@>\n", hotspotInfo, v11);
        }

        goto LABEL_8;
      }
    }

    goto LABEL_16;
  }

  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      sub_100263480(v8, v9, v10);
    }
  }

LABEL_16:
}

- (void)_bleNearbyInfoAdvertisingUpdateAddCameraState:(id)state
{
  if (self->_cameraState == 1)
  {
    [state setObject:&off_10090C210 forKeyedSubscript:@"camS"];
  }
}

- (unsigned)_bleEncryptActivityLevel:(unsigned __int8)level
{
  levelCopy = level;
  deviceIRKData = [(RPIdentity *)self->_idSelfIdentity deviceIRKData];
  v6 = [deviceIRKData length];
  if (v6)
  {
    [(SDNearbyAgent *)self _bleUpdateAuthTagIfNeeded];
    v9 = [(NSData *)self->_bleAuthTag length];
    if (v9)
    {
      [deviceIRKData bytes];
      [deviceIRKData length];
      [(NSData *)self->_bleAuthTag bytes];
      [(NSData *)self->_bleAuthTag length];
      CryptoHKDF();
      ccchacha20();
      v12 = levelCopy & 0xF;
      if (dword_100973248 <= 20)
      {
        if (dword_100973248 != -1 || (v13 = _LogCategory_Initialize(), v12 = levelCopy & 0xF, v13))
        {
          LogPrintF(&dword_100973248, "[SDNearbyAgent _bleEncryptActivityLevel:]", 20, "NearbyInfo sending activity level, original: 0x%x encrypted:0x%x", levelCopy, v12);
          LOBYTE(v12) = levelCopy & 0xF;
        }
      }

      LOBYTE(levelCopy) = v12;
    }

    else if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_10026349C(v9, v10, v11);
      }
    }
  }

  else if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_1002634B8(v6, v7, v8);
    }
  }

  return levelCopy;
}

- (void)_bleNearbyInfoAdvertiserLingerStart:(id)start
{
  startCopy = start;
  bleNearbyInfoAdvertiseLingerSecs = self->_bleNearbyInfoAdvertiseLingerSecs;
  if (bleNearbyInfoAdvertiseLingerSecs > 0.0)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoAdvertiserLingerStart:]", 30, "NearbyInfo Linger advertise start: %@, %.0f seconds\n", startCopy, *&bleNearbyInfoAdvertiseLingerSecs);
    }

    bleNearbyInfoAdvertiseLingerTimer = self->_bleNearbyInfoAdvertiseLingerTimer;
    if (bleNearbyInfoAdvertiseLingerTimer)
    {
      v7 = bleNearbyInfoAdvertiseLingerTimer;
      dispatch_source_cancel(v7);
      v8 = self->_bleNearbyInfoAdvertiseLingerTimer;
      self->_bleNearbyInfoAdvertiseLingerTimer = 0;
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v10 = self->_bleNearbyInfoAdvertiseLingerTimer;
    self->_bleNearbyInfoAdvertiseLingerTimer = v9;
    v11 = v9;

    CUDispatchTimerSet();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10024A704;
    handler[3] = &unk_1008CE900;
    handler[4] = v11;
    handler[5] = self;
    v13 = startCopy;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_activate(v11);
  }
}

- (void)_bleNearbyInfoReceivedData:(id)data cnx:(id)cnx peer:(id)peer
{
  dataCopy = data;
  cnxCopy = cnx;
  peerCopy = peer;
  v10 = dataCopy;
  bytes = [dataCopy bytes];
  v12 = [dataCopy length];
  v15 = v12;
  if (v12 <= 0)
  {
    if ((sub_10026379C() & 1) == 0)
    {
      dataCopy2 = v39[1];
LABEL_57:
      sub_100263830(dataCopy2);
    }
  }

  else
  {
    v16 = *bytes;
    v17 = 1;
    v18 = 1;
    switch(*bytes)
    {
      case 1u:
        if (dword_100973248 <= 50)
        {
          if (dword_100973248 != -1 || (v12 = _LogCategory_Initialize(), v12))
          {
            sub_100263740(v12, v13, v14);
          }
        }

        break;
      case 2u:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263700(dataCopy);
        }

        dataCopy = [NSMutableData dataWithData:dataCopy, dataCopy];
        if (dataCopy)
        {
          v26 = dataCopy;
          *[dataCopy mutableBytes] = 3;
          [cnxCopy sendData:v26 completion:0];
          goto LABEL_48;
        }

        dataCopy2 = 4294960568;
        goto LABEL_57;
      case 3u:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002636C0(dataCopy);
        }

        break;
      case 5u:
      case 6u:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x1Cu:
      case 0x1Du:
        goto LABEL_5;
      case 7u:
        v23 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];
        peerDevice = [cnxCopy peerDevice];
        [(SDNearbyAgent *)self _unlockReceivedFrameData:v23 peer:peerCopy device:peerDevice];

        break;
      case 8u:
      case 9u:
      case 0xAu:
        if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263670(dataCopy, v16);
        }

        dataCopy2 = [(SDNearbyAgent *)self _bleNearbyInfoReceivedFrameType:v16 src:bytes + 1 end:&v15[bytes] cnx:cnxCopy, dataCopy];
        if (dataCopy2)
        {
          goto LABEL_57;
        }

        break;
      case 0xBu:
        remoteAppServiceUUID = self->_remoteAppServiceUUID;
        if (!remoteAppServiceUUID)
        {
          v28 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F54CD];
          v29 = self->_remoteAppServiceUUID;
          self->_remoteAppServiceUUID = v28;

          remoteAppServiceUUID = self->_remoteAppServiceUUID;
        }

        dataCopy3 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:remoteAppServiceUUID, dataCopy];
        v26 = dataCopy3;
        if (dataCopy3)
        {
          eventMessageHandler = [dataCopy3 eventMessageHandler];

          if (eventMessageHandler)
          {
            v34 = objc_alloc_init(SFEventMessage);
            v35 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];
            [v34 setBodyData:v35];

            eventMessageHandler2 = [v26 eventMessageHandler];
            (eventMessageHandler2)[2](eventMessageHandler2, v34);

            goto LABEL_48;
          }

          if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            v37 = "### BLE Remote app frame with no service event handler\n";
            goto LABEL_66;
          }
        }

        else if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v37 = "### BLE Remote app frame with no service\n";
LABEL_66:
          sub_100263658(v37, v31, v32);
        }

LABEL_48:

        break;
      case 0x15u:
      case 0x17u:
      case 0x40u:
      case 0x41u:
        v18 = 0;
        goto LABEL_5;
      case 0x16u:
      case 0x18u:
      case 0x1Eu:
      case 0x30u:
      case 0x31u:
        v17 = 0;
LABEL_5:
        if (v12 != 1)
        {
          v19 = bytes[1];
          if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100263518(v16, v19, dataCopy, peerCopy);
          }

          v20 = [dataCopy length];
          v21 = [dataCopy subdataWithRange:{2, v20 - 2}];
          if (v17)
          {
            [(SDNearbyAgent *)self serviceReceivedFrameType:v16 serviceType:v19 data:v21 peer:peerCopy];
          }

          if (v18)
          {
            [(SDNearbyAgent *)self sessionReceivedFrameType:v16 serviceType:v19 data:v21 peer:peerCopy];
          }

          break;
        }

        if (sub_1002635B8(*bytes, v39))
        {
          break;
        }

        dataCopy2 = v39[0];
        goto LABEL_57;
      case 0x20u:
        [(SDNearbyAgent *)self _setupHandleCreateSession:cnxCopy data:dataCopy];
        break;
      case 0x21u:
        [(SDNearbyAgent *)self _setupHandleSessionCreated:cnxCopy data:dataCopy];
        break;
      case 0x22u:
      case 0x23u:
      case 0x24u:
        [(SDNearbyAgent *)self _setupHandleSessionEncryptedFrame:dataCopy type:*bytes cnx:cnxCopy];
        break;
      default:
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_10026375C(v16);
        }

        break;
    }
  }
}

- (int)_bleNearbyInfoReceivedFrameType:(unsigned __int8)type src:(const char *)src end:(const char *)end cnx:(id)cnx
{
  typeCopy = type;
  srcCopy = src;
  cnxCopy = cnx;
  v75 = 0;
  if (end - src <= 15)
  {
    v75 = -6750;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002639EC(end - src);
    }

    v24 = 0;
    v22 = 0;
    v69 = 0;
    v10 = 0;
    v66 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v25 = 0;
    v20 = 0;
    goto LABEL_71;
  }

  v68 = [[NSUUID alloc] initWithUUIDBytes:src];
  srcCopy = src + 16;
  if (end - (src + 16) <= 15)
  {
    v75 = -6750;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002639AC(end - (src + 16));
    }

    v22 = 0;
    v69 = 0;
    v10 = 0;
    v66 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v25 = 0;
    v20 = 0;
    v24 = v68;
    goto LABEL_71;
  }

  v69 = [[NSUUID alloc] initWithUUIDBytes:src + 16];
  srcCopy = src + 32;
  v10 = CFBinaryPlistStreamedCreateWithBytesEx2();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    v66 = 0;
LABEL_93:
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v25 = 0;
    v20 = 0;
    v75 = -6756;
    v24 = v68;
    goto LABEL_70;
  }

  v66 = CFBinaryPlistStreamedCreateWithBytesEx2();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    goto LABEL_93;
  }

  switch(typeCopy)
  {
    case 10:
      v11 = objc_alloc_init(SFResponseMessage);
      v14 = 0;
      v12 = 0;
      v13 = v11;
      break;
    case 9:
      v11 = objc_alloc_init(SFRequestMessage);
      v14 = 0;
      v13 = 0;
      v12 = v11;
      break;
    case 8:
      v11 = objc_alloc_init(SFEventMessage);
      v12 = 0;
      v13 = 0;
      v14 = v11;
      break;
    default:
      v59 = FatalErrorF("Bad frame type: %d", typeCopy);
      return [(SDNearbyAgent *)v59 bleNearbyInfoStartConnectionToDevice:v60 owner:v61 connected:v62, v63];
  }

  v15 = v11;
  [v15 setIdentifier:v69];
  v67 = v10;
  [v15 setHeaderFields:v10];
  [v15 setBodyData:v66];
  v16 = objc_alloc_init(SFDevice);
  peerDevice = [cnxCopy peerDevice];
  identifier = [peerDevice identifier];
  [v16 setIdentifier:identifier];

  v65 = v15;
  v19 = v15;
  v20 = v16;
  [v19 setPeerDevice:v16];
  v21 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v68];
  if (!v21)
  {
    uUIDString = [v68 UUIDString];
    v31 = [uUIDString isEqual:@"00000000-0000-0000-0000-000000000000"];

    if (v31)
    {
      v64 = v16;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v32 = self->_sessions;
      v33 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (!v33)
      {
        v22 = 0;
        goto LABEL_63;
      }

      v34 = v33;
      v22 = 0;
      v35 = *v72;
      while (1)
      {
        for (i = 0; i != v34; i = i + 1)
        {
          v37 = v22;
          if (*v72 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v22 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:*(*(&v71 + 1) + 8 * i)];

          if (v14)
          {
            eventMessageHandler = [v22 eventMessageHandler];

            if (eventMessageHandler)
            {
              eventMessageHandler2 = [v22 eventMessageHandler];
              v40 = eventMessageHandler2[2];
LABEL_36:
              v40();

              continue;
            }
          }

          if (v12)
          {
            requestMessageHandler = [v22 requestMessageHandler];

            if (requestMessageHandler)
            {
              eventMessageHandler2 = [v22 requestMessageHandler];
              v40 = eventMessageHandler2[2];
              goto LABEL_36;
            }
          }

          if (v13)
          {
            responseMessageInternalHandler = [v22 responseMessageInternalHandler];

            if (responseMessageInternalHandler)
            {
              eventMessageHandler2 = [v22 responseMessageInternalHandler];
              v40 = eventMessageHandler2[2];
              goto LABEL_36;
            }
          }
        }

        v34 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v71 objects:v77 count:16];
        if (!v34)
        {
LABEL_63:

          v10 = v67;
          v24 = v68;
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
          v20 = v64;
          v25 = v65;
          goto LABEL_71;
        }
      }
    }

    if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026392C(typeCopy);
    }

    v10 = v67;
    v44 = [v67 objectForKeyedSubscript:@"_serviceUUID"];
    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v65;
        if ([v44 length] == 16)
        {
          v45 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v44, "bytes")}];
          if (v45)
          {
            v46 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v45];
            v47 = v46;
            v24 = v68;
            if (!v46)
            {
              v75 = -6720;
              goto LABEL_69;
            }

            if (v14 && ([v46 eventMessageHandler], v48 = objc_claimAutoreleasedReturnValue(), v48, v48))
            {
              eventMessageHandler3 = [v47 eventMessageHandler];
              v50 = eventMessageHandler3[2];
            }

            else if (v12 && ([v47 requestMessageHandler], v51 = objc_claimAutoreleasedReturnValue(), v51, v51))
            {
              eventMessageHandler3 = [v47 requestMessageHandler];
              v50 = eventMessageHandler3[2];
            }

            else
            {
              if (!v13 || ([v47 responseMessageInternalHandler], v52 = objc_claimAutoreleasedReturnValue(), v52, !v52))
              {
                if (dword_100973248 <= 50)
                {
                  v10 = v67;
                  if (dword_100973248 != -1 || _LogCategory_Initialize())
                  {
                    sub_10026396C(v65);
                  }

                  goto LABEL_69;
                }

                goto LABEL_68;
              }

              eventMessageHandler3 = [v47 responseMessageInternalHandler];
              v50 = eventMessageHandler3[2];
            }

            v50();

LABEL_68:
            v10 = v67;
LABEL_69:

            v22 = 0;
LABEL_70:
            p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
            goto LABEL_71;
          }

          v47 = 0;
          v58 = -6700;
        }

        else
        {
          v45 = 0;
          v47 = 0;
          v58 = -6743;
        }

        v75 = v58;
        v24 = v68;
        goto LABEL_69;
      }

      v45 = 0;
      v47 = 0;
      v57 = -6756;
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v57 = -6727;
    }

    v75 = v57;
    v24 = v68;
    v25 = v65;
    goto LABEL_69;
  }

  v22 = v21;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002638AC(typeCopy);
  }

  v10 = v67;
  v24 = v68;
  v25 = v65;
  if (v14 && ([v22 eventMessageHandler], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    eventMessageHandler4 = [v22 eventMessageHandler];
    v28 = eventMessageHandler4[2];
  }

  else if (v12 && ([v22 requestMessageHandler], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    eventMessageHandler4 = [v22 requestMessageHandler];
    v28 = eventMessageHandler4[2];
  }

  else
  {
    if (!v13 || ([v22 responseMessageInternalHandler], v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
    {
      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002638EC(v65);
      }

      goto LABEL_71;
    }

    eventMessageHandler4 = [v22 responseMessageInternalHandler];
    v28 = eventMessageHandler4[2];
  }

  v28();

LABEL_71:
  v53 = v75;
  if (v75)
  {
    v54 = *(p_opt_class_meths + 146);
    if (v54 <= 50)
    {
      if (v54 != -1 || (v55 = _LogCategory_Initialize(), v53 = v75, v55))
      {
        LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoReceivedFrameType:src:end:cnx:]", 50, "### BLE NearbyInfo receive frame failed: %#m\n", v53);
        LODWORD(v53) = v75;
      }
    }
  }

  return v53;
}

- (int)bleNearbyInfoStartConnectionToDevice:(id)device owner:(id)owner connected:(BOOL *)connected
{
  deviceCopy = device;
  ownerCopy = owner;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:deviceCopy];
  if (v10)
  {
    v11 = v10;
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263A2C(ownerCopy);
    }

    [v11 addClient:ownerCopy];
    [v11 setAcceptor:0];
    if (connected)
    {
      *connected = [v11 connectionState] == 1;
    }
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263A8C(ownerCopy);
    }

    v12 = objc_alloc_init(SFBLEDevice);
    [v12 setIdentifier:deviceCopy];
    [v12 setUseBTPipe:0];
    v11 = [[SFBLEConnection alloc] initWithDevice:v12 acceptor:0];
    [v11 setDispatchQueue:self->_dispatchQueue];
    bleConnections = self->_bleConnections;
    if (!bleConnections)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_bleConnections;
      self->_bleConnections = v14;

      bleConnections = self->_bleConnections;
    }

    [(NSMutableDictionary *)bleConnections setObject:v11 forKeyedSubscript:deviceCopy];
    [v11 addClient:ownerCopy];
    [v11 activateDirect];
    if (connected)
    {
      *connected = 0;
    }
  }

  return 0;
}

- (void)bleNearbyInfoStopConnectionToDevice:(id)device owner:(id)owner
{
  deviceCopy = device;
  ownerCopy = owner;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:deviceCopy];
  v8 = v7;
  if (v7 && ([v7 removeClient:ownerCopy] & 1) == 0)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100263AEC(ownerCopy);
    }

    [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:deviceCopy];
    [v8 invalidate];
  }
}

- (int)bleNearbyInfoSendFrameType:(unsigned __int8)type serviceType:(unsigned __int8)serviceType data:(id)data peer:(id)peer isSession:(BOOL)session
{
  sessionCopy = session;
  serviceTypeCopy = serviceType;
  typeCopy = type;
  typeCopy2 = type;
  serviceTypeCopy2 = serviceType;
  dataCopy = data;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (serviceTypeCopy)
  {
    v33 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:peerCopy];
    if (v33)
    {
      v14 = objc_alloc_init(NSMutableData);
      v15 = 1;
      [v14 appendBytes:&typeCopy2 length:1];
      [v14 appendBytes:&serviceTypeCopy2 length:1];
      [v14 appendData:dataCopy];
      v16 = [v14 length];
      if (v16 < 0xEA41)
      {
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10024BEF8;
        v34[3] = &unk_1008D5668;
        v37 = typeCopy2;
        v38 = serviceTypeCopy2;
        v35 = dataCopy;
        v36 = peerCopy;
        [v33 sendData:v14 completion:v34];

        v27 = 0;
      }

      else
      {
        v17 = v16;
        v32 = dataCopy;
        if (sessionCopy)
        {
          v18 = 64;
        }

        else
        {
          v18 = 48;
        }

        if (sessionCopy)
        {
          v19 = 65;
        }

        else
        {
          v19 = 49;
        }

        v30 = v19;
        v31 = v14;
        bytes = [v14 bytes];
        v21 = 0;
        LOBYTE(v57[0]) = 1;
        v29 = v17;
        while (v15 != -1)
        {
          v22 = objc_alloc_init(NSMutableData);

          v54 = v18;
          [v22 appendBytes:&v54 length:1];
          [v22 appendBytes:&serviceTypeCopy2 length:1];
          [v22 appendBytes:v57 length:1];
          [v22 appendBytes:bytes length:59968];
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_10024BDE0;
          v47[3] = &unk_1008D5640;
          v51 = typeCopy2;
          v52 = v57[0];
          v53 = serviceTypeCopy2;
          v21 = v22;
          v48 = v21;
          v23 = v32;
          v49 = v23;
          v24 = peerCopy;
          v50 = v24;
          [v33 sendData:v21 completion:v47];

          bytes += 59968;
          v15 = ++LOBYTE(v57[0]);
          v17 -= 59968;
          if (v17 <= 0xEA40)
          {
            v25 = objc_alloc_init(NSMutableData);

            v46 = v30;
            [v25 appendBytes:&v46 length:1];
            [v25 appendBytes:&serviceTypeCopy2 length:1];
            [v25 appendBytes:v57 length:1];
            [v25 appendBytes:bytes length:v17];
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_10024BE6C;
            v39[3] = &unk_1008D5640;
            v43 = typeCopy2;
            v44 = v57[0];
            v45 = serviceTypeCopy2;
            v40 = v25;
            v41 = v23;
            v42 = v24;
            v26 = v25;
            [v33 sendData:v26 completion:v39];

            v27 = 0;
            goto LABEL_14;
          }
        }

        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100263B4C(v29);
        }

        v27 = -6764;
LABEL_14:
        dataCopy = v32;
      }
    }

    else
    {
      if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100263B8C(typeCopy, serviceTypeCopy, dataCopy, peerCopy);
      }

      v27 = -6753;
    }
  }

  else
  {
    sub_100263C0C(typeCopy, dataCopy, peerCopy, v57);
    v27 = v57[0];
  }

  return v27;
}

- (void)_btPipeEnsureStopped
{
  if (self->_unlockBtPipe)
  {
    selfCopy = self;
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1002641AC(self, a2, v2);
      }
    }

    [(SFBLEPipe *)selfCopy->_unlockBtPipe invalidate];
    unlockBtPipe = selfCopy->_unlockBtPipe;
    selfCopy->_unlockBtPipe = 0;
  }
}

- (void)_btPipeStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:SFNotificationKeyConnectionState];
  integerValue = [v5 integerValue];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (integerValue > 2)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1008D5F08[integerValue];
    }

    v13 = 136315138;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_btPipeStateChanged to %s", &v13, 0xCu);
  }

  if (integerValue == 1)
  {
    getPeerUUID = [(SFBLEPipe *)self->_unlockBtPipe getPeerUUID];
    v10 = objc_alloc_init(SFBLEDevice);
    [v10 setIdentifier:getPeerUUID];
    [v10 setUseBTPipe:1];
    btPipePeer = self->_btPipePeer;
    self->_btPipePeer = v10;

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = getPeerUUID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "connected to BT peer %@", &v13, 0xCu);
    }
  }

  else
  {
    getPeerUUID = self->_btPipePeer;
    self->_btPipePeer = 0;
  }
}

- (void)_btPipeHandleFrameType:(unsigned __int8)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v7 = dataCopy;
  switch(typeCopy)
  {
    case 3:
      v18 = dataCopy;
      getPeerUUID = [(SFBLEPipe *)self->_unlockBtPipe getPeerUUID];
      v14 = self->_btPipePeer;
      identifier = [(SFBLEDevice *)v14 identifier];

      if (getPeerUUID != identifier && dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002641C8(v14);
      }

      [(SDNearbyAgent *)self _unlockReceivedFrameData:v18 peer:getPeerUUID device:v14];

      goto LABEL_19;
    case 2:
      v17 = dataCopy;
      if ([dataCopy length] <= 7)
      {
        dataCopy = sub_100264290(v17);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v11 = v17;
        dataCopy = [v17 bytes];
        v12 = v17;
        if (dword_100973248 <= 50)
        {
          v13 = *dataCopy;
          if (dword_100973248 != -1 || (dataCopy = _LogCategory_Initialize(), v12 = v17, dataCopy))
          {
            dataCopy = sub_100264230(v12, Current - v13);
          }
        }
      }

      break;
    case 1:
      v16 = dataCopy;
      if (dword_100973248 <= 50)
      {
        if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v7 = v16, v8))
        {
          sub_100264314(v7);
          v7 = v16;
        }
      }

      if ([v7 length] > 7)
      {
        getPeerUUID = [v16 subdataWithRange:{0, 8}];
        [(SFBLEPipe *)self->_unlockBtPipe sendFrameType:2 payload:getPeerUUID completion:&stru_1008D56C8];
LABEL_19:

        break;
      }

      dataCopy = sub_100264358(v16);
      break;
    default:
      break;
  }

  _objc_release_x2(dataCopy);
}

- (void)_smartCoverStatusChanged:(id)changed
{
  changedCopy = changed;
  v7 = changedCopy;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (changedCopy = _LogCategory_Initialize(), changedCopy))
    {
      sub_10026441C(changedCopy, v5, v6);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024C6BC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_wirelessCriticalChanged:(id)changed
{
  changedCopy = changed;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264438(self);
  }

  wirelessCritical = [(SDStatusMonitor *)self->_statusMonitor wirelessCritical];
  if (wirelessCritical)
  {
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 != -1 || (wirelessCritical = _LogCategory_Initialize(), wirelessCritical))
      {
        sub_100264490(wirelessCritical, v5, v6);
      }
    }

    [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"WirelessCritical"];
  }
}

- (void)_mirroringStateChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024C800;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_bleAdvertisingAddressChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  bluetoothAddressData = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];
  obj = [bluetoothAddressData copy];

  if (obj)
  {
    bleAdvertisingAddress = self->_bleAdvertisingAddress;
    v5 = obj;
    v6 = bleAdvertisingAddress;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v6)
      {

        goto LABEL_12;
      }

      v8 = [(NSData *)v5 isEqual:v6];

      if (!v8)
      {
LABEL_12:
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002644C8(v5);
        }

        objc_storeStrong(&self->_bleAdvertisingAddress, obj);
        bleAudioRoutingScoreEncryptedData = self->_bleAudioRoutingScoreEncryptedData;
        self->_bleAudioRoutingScoreEncryptedData = 0;

        bleAuthTag = self->_bleAuthTag;
        self->_bleAuthTag = 0;

        bleHotspotEncryptedData = self->_bleHotspotEncryptedData;
        self->_bleHotspotEncryptedData = 0;

        [(SDNearbyAgent *)self _update];
        goto LABEL_16;
      }
    }
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264534(obj);
  }

LABEL_16:
}

- (void)_bleUpdateScanner:(id)scanner typeFlag:(unint64_t)flag
{
  scannerCopy = scanner;
  if (flag)
  {
    v7 = [(NSMutableSet *)self->_caRequests count];
    v8 = 40;
    if (!v7)
    {
      v8 = 0;
    }

    v69 = v8;
  }

  else
  {
    v69 = 0;
  }

  v86 = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = self->_ddRequests;
  v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  selfCopy = self;
  if (!v9)
  {
    v36 = 0;
    v39 = 0;
    v62 = 0;
    v57 = 0;
    v37 = 0;
    v38 = 0;
    v68 = 1;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_61;
  }

  v10 = v9;
  v54 = scannerCopy;
  flagCopy = flag;
  v11 = 0;
  rssiThreshold = 0;
  v66 = 0;
  v67 = 0;
  v12 = 0;
  v62 = 0;
  v59 = 0;
  v13 = *v83;
  v68 = 1;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = 0;
  do
  {
    v14 = 0;
    v61 = v10;
    do
    {
      if (*v83 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v82 + 1) + 8 * v14);
      discoveryFlags = [v15 discoveryFlags];
      if ((discoveryFlags & flag) != 0)
      {
        v17 = discoveryFlags;
        if (self->_activityScreenOn || [v15 overrideScreenOff])
        {
          deviceFilter = [v15 deviceFilter];
          v19 = deviceFilter;
          if (deviceFilter)
          {
            if (![deviceFilter count])
            {
              goto LABEL_53;
            }

            if ((v12 & 1) == 0)
            {
              v20 = v59;
              if (!v59)
              {
                v20 = objc_alloc_init(NSMutableSet);
              }

              v59 = v20;
              [v20 unionSet:v19];
              v21 = 0;
LABEL_23:
              v66 |= (v17 & 0x40) == 0;
              if ((v66 & 1) == 0)
              {
                v86 |= 0x20u;
              }

              trackPeers = [v15 trackPeers];
              v65 = v21;
              if (v19 && trackPeers)
              {
                v23 = v57;
                if (!v57)
                {
                  v23 = objc_alloc_init(NSMutableSet);
                }

                v24 = v11;
                v57 = v23;
                [v23 unionSet:v19];
              }

              else
              {
                v24 = v11;
              }

              changeFlags = [v15 changeFlags];
              if ((changeFlags & 0x10) != 0)
              {
                v26 = 4;
              }

              else
              {
                v26 = (2 * changeFlags) & 4;
              }

              v27 = [v15 rssiThreshold] == 0;
              if ([v15 rssiThreshold] < rssiThreshold)
              {
                rssiThreshold = [v15 rssiThreshold];
              }

              v28 = v13;
              scanCache = [v15 scanCache];
              scanRate = v69;
              if ([v15 scanRate] > v69)
              {
                scanRate = [v15 scanRate];
              }

              if ([v15 scanRateOverride] > scanRate)
              {
                scanRate = [v15 scanRateOverride];
              }

              v69 = scanRate;
              v13 = v28;
              if ([v15 overrideScreenOff])
              {
                overrideScreenOffRescanInterval = [v15 overrideScreenOffRescanInterval];
                v32 = 10;
                if (overrideScreenOffRescanInterval > 10)
                {
                  v32 = overrideScreenOffRescanInterval;
                }

                v33 = v56;
                if (v56 >= v32)
                {
                  v33 = v32;
                }

                v56 = v33;
              }

              v67 |= changeFlags | v26;
              v11 = v27 | v24;
              v68 &= scanCache;
              useCases = [v15 useCases];

              if (useCases)
              {
                useCases2 = [v15 useCases];
                self = selfCopy;
                flag = flagCopy;
                v12 = v65;
                if (!v62)
                {
                  v62 = objc_alloc_init(NSMutableSet);
                }

                v10 = v61;
                if (useCases2)
                {
                  [v62 unionSet:useCases2];
                }
              }

              else
              {
                self = selfCopy;
                flag = flagCopy;
                v10 = v61;
                v12 = v65;
              }

LABEL_53:

              goto LABEL_54;
            }
          }

          else if ((v12 & 1) == 0)
          {

            v59 = 0;
          }

          v21 = 1;
          goto LABEL_23;
        }
      }

LABEL_54:
      v14 = v14 + 1;
    }

    while (v10 != v14);
    v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  }

  while (v10);
  if (v11)
  {
    v36 = 0;
  }

  else
  {
    v36 = rssiThreshold;
  }

  scannerCopy = v54;
  v37 = v59;
  v39 = v66;
  v38 = v67;
  v40 = v56;
LABEL_61:

  enhancedDiscoveryShouldRun = self->_enhancedDiscoveryShouldRun;
  v60 = v37;
  allObjects = [v37 allObjects];
  v43 = 0;
  if (v86 && (v39 & 1) == 0)
  {
    v43 = [[NSData alloc] initWithBytes:&v86 length:1];
  }

  v44 = 30;
  if (v69 > 30)
  {
    v44 = v69;
  }

  if ((flag & enhancedDiscoveryShouldRun) != 0)
  {
    v45 = v38 | 4;
  }

  else
  {
    v45 = v38;
  }

  if ((flag & enhancedDiscoveryShouldRun) != 0)
  {
    v46 = v44;
  }

  else
  {
    v46 = v69;
  }

  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = 20;
  }

  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = 10;
  }

  else
  {
    v48 = v40;
  }

  v49 = [(SDNearbyAgent *)selfCopy _bleUpdateUseCases:v62];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10024CF64;
  v70[3] = &unk_1008D56F0;
  v71 = scannerCopy;
  v72 = allObjects;
  v80 = v45;
  v81 = v68 & 1;
  v77 = v36;
  v78 = v47;
  v79 = v48;
  v73 = v43;
  v74 = v57;
  v75 = v49;
  v76 = selfCopy;
  v50 = v57;
  v51 = v43;
  v52 = allObjects;
  v53 = scannerCopy;
  [v53 performUpdate:v70];
}

- (id)_bleUpdateUseCases:(id)cases
{
  v4 = [cases mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableSet);
  }

  if (([v4 containsObject:&off_10090C228] & 1) == 0)
  {
    [v4 addObject:&off_10090C228];
  }

  if ([(NSMutableSet *)self->_enhancedDiscoveryUseCases count])
  {
    [v4 unionSet:self->_enhancedDiscoveryUseCases];
  }

  if (self->_cameraState == 1 && ([(NSMutableSet *)self->_enhancedDiscoveryUseCases containsObject:&off_10090C240]& 1) == 0)
  {
    [v4 addObject:&off_10090C258];
    [(SDNearbyAgent *)self _postNotificationForWombatState:3];
  }

  return v4;
}

- (id)bleProximityEstimatorForActionType:(unsigned __int8)type device:(id)device
{
  v4 = [(SDNearbyAgent *)self bleProximityInfoForActionType:type device:device];
  if (v4)
  {
    v5 = [SFProximityEstimator proximityEstimatorWithProximityInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)bleProximityEstimatorsResetDeviceClose
{
  allValues = [(NSMutableDictionary *)self->_ddNearbyActionDevices allValues];
  v3 = allValues;
  if (allValues)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = allValues;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          bleDevice = [*(*(&v11 + 1) + 8 * v8) bleDevice];
          if (!bleDevice)
          {
            while (1)
            {
              [NSException raise:@"CUGuardLetNoReturn" format:@"CUGuardLet with no return"];
            }
          }

          v10 = bleDevice;
          [bleDevice setInsideMediumBubble:0];
          [v10 setInsideSmallBubble:0];
          [v10 setCloseProximityEstimatorMedium:0];
          [v10 setCloseProximityEstimatorSmall:0];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (id)bleProximityInfoForActionType:(unsigned __int8)type device:(id)device
{
  v4 = type - 1;
  v5 = @"apay";
  switch(v4)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 14:
    case 15:
    case 17:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 30:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
    case 52:
    case 53:
      goto LABEL_8;
    case 4:
      v5 = @"ws";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 5:
      v5 = @"atvp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 7:
      v5 = @"wps";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 8:
    case 26:
      v5 = @"ioss";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 9:
      v5 = @"rp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 10:
    case 32:
      v5 = @"homepod";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 11:
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 12:
      v5 = @"whas";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 13:
      v5 = @"dtp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 16:
      v5 = @"ded";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 18:
      v5 = @"raf";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 19:
      v5 = @"clp";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 24:
    case 29:
      v5 = @"atvc";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 27:
      v5 = @"asi";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 28:
      v5 = @"fit";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 31:
      v5 = @"aa";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 33:
      v5 = @"compauth";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 35:
      goto LABEL_7;
    case 42:
      v5 = @"aa2";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 49:
      v5 = @"rd";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    case 54:
      v5 = @"aua";
      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
    default:
      if (@"apay" == 90)
      {
LABEL_7:
        v5 = @"dovePeace";
      }

      else
      {
LABEL_8:
        v5 = @"atv";
      }

      return [(SDNearbyAgent *)self bleProximityInfoForType:v5 device:device];
  }
}

- (id)bleProximityInfoForType:(id)type device:(id)device
{
  typeCopy = type;
  deviceCopy = device;
  v8 = self->_bleProximityInfoOverride;
  if (!v8 || ([(SDNearbyAgent *)self bleProximityInfoForType:typeCopy device:deviceCopy allInfo:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    bleProximityInfo = [(SDNearbyAgent *)self bleProximityInfo];
    v9 = [(SDNearbyAgent *)self bleProximityInfoForType:typeCopy device:deviceCopy allInfo:bleProximityInfo];
  }

  return v9;
}

- (id)bleProximityInfoForType:(id)type device:(id)device allInfo:(id)info
{
  typeCopy = type;
  deviceCopy = device;
  infoCopy = info;
  v10 = SFDeviceModel();
  model = [deviceCopy model];
  if (v10 && (+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v10 rangeOfCharacterFromSet:v12], v12, v13 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = [v10 substringToIndex:v13];
    if (model)
    {
LABEL_4:
      v15 = +[NSCharacterSet decimalDigitCharacterSet];
      v16 = [(__CFString *)model rangeOfCharacterFromSet:v15];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(__CFString *)model substringToIndex:v16];
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v14 = 0;
    if (model)
    {
      goto LABEL_4;
    }
  }

  deviceModelCode = [deviceCopy deviceModelCode];
  switch(deviceModelCode)
  {
    case 4u:
      model = @"iPod9,1";
      break;
    case 6u:
      v19 = "B620ish";
      goto LABEL_12;
    case 5u:
      v19 = "B520ish";
LABEL_12:
      model = [NSString stringWithUTF8String:v19];
      break;
    default:
      if ([deviceCopy deviceActionType] == 5)
      {
        bleDevice = [deviceCopy bleDevice];
        name = [bleDevice name];

        if ([name length] < 8)
        {
          model = 0;
        }

        else
        {
          v22 = [name substringWithRange:{7, 1}];
          if ([v22 isEqualToString:@"T"])
          {
            model = @"Watch6,18";
          }

          else
          {
            model = 0;
          }
        }
      }

      else
      {
        model = 0;
      }

      break;
  }

  deviceClassCode = [deviceCopy deviceClassCode];
  if (deviceClassCode)
  {
    if (deviceClassCode > 8)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_1008D5F20[deviceClassCode - 1];
    }

    v17 = [NSString stringWithUTF8String:v24];
LABEL_30:
    v25 = v17;
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_26:
  v25 = 0;
  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (model)
  {
    v26 = [[NSString alloc] initWithFormat:@"%@-%@-%@", typeCopy, v10, model];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }
  }

LABEL_33:
  if (v14 && model)
  {
    v28 = [[NSString alloc] initWithFormat:@"%@-%@-%@", typeCopy, v14, model];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }
  }

  else if (!model)
  {
    goto LABEL_39;
  }

  v29 = [[NSString alloc] initWithFormat:@"%@-*-%@", typeCopy, model];
  CFDictionaryGetTypeID();
  v27 = CFDictionaryGetTypedValue();

  if (v27)
  {
    goto LABEL_54;
  }

LABEL_39:
  if (v10 && v25)
  {
    v30 = [[NSString alloc] initWithFormat:@"%@-%@-%@", typeCopy, v10, v25];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }
  }

  else if (!v10)
  {
    goto LABEL_45;
  }

  v31 = [[NSString alloc] initWithFormat:@"%@-%@-*", typeCopy, v10];
  CFDictionaryGetTypeID();
  v27 = CFDictionaryGetTypedValue();

  if (v27)
  {
    goto LABEL_54;
  }

LABEL_45:
  if (v14 && v25)
  {
    v32 = [[NSString alloc] initWithFormat:@"%@-%@-%@", typeCopy, v14, v25];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }

LABEL_50:
    v33 = [[NSString alloc] initWithFormat:@"%@-*-%@", typeCopy, v25];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();

    if (v27)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v25)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (!v14 || (v34 = [[NSString alloc] initWithFormat:@"%@-%@-*", typeCopy, v14], CFDictionaryGetTypeID(), CFDictionaryGetTypedValue(), v27 = objc_claimAutoreleasedReturnValue(), v34, !v27))
  {
    typeCopy = [[NSString alloc] initWithFormat:@"%@", typeCopy];
    CFDictionaryGetTypeID();
    v27 = CFDictionaryGetTypedValue();
  }

LABEL_54:

  return v27;
}

- (id)bleProximityRSSIEstimatorInfo
{
  [(SDNearbyAgent *)self bleProximityInfo];
  CFDictionaryGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (int64_t)bleProximityRSSIThresholdForType:(int64_t)type device:(id)device
{
  deviceCopy = device;
  v7 = SFDeviceModel();
  model = [deviceCopy model];

  if ((type - 1) > 7)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v9 = *(&off_1008D5F60 + type - 1);
  if (v7 && model)
  {
    v10 = [[NSString alloc] initWithFormat:@"%@-%@-%@", v9, v7, model];
    v11 = [(SDNearbyAgent *)self bleProximityRSSIThreshold:v10];

    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (model)
  {
LABEL_7:
    v12 = [[NSString alloc] initWithFormat:@"%@-%@", v9, model];
    v11 = [(SDNearbyAgent *)self bleProximityRSSIThreshold:v12];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (!v7 || (v13 = [[NSString alloc] initWithFormat:@"%@-%@", v9, v7], v11 = -[SDNearbyAgent bleProximityRSSIThreshold:](self, "bleProximityRSSIThreshold:", v13), v13, !v11))
  {
    v14 = [[NSString alloc] initWithFormat:@"%@", v9];
    v11 = [(SDNearbyAgent *)self bleProximityRSSIThreshold:v14];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  return v11;
}

- (int64_t)bleProximityRSSIThreshold:(id)threshold
{
  thresholdCopy = threshold;
  bleProximityInfo = [(SDNearbyAgent *)self bleProximityInfo];
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  Int64Ranged = CFDictionaryGetInt64Ranged();
  return Int64Ranged;
}

- (unsigned)_bleProximityUpdateDeviceCloseNearbyActionDevice:(id)device
{
  deviceCopy = device;
  bleDevice = [deviceCopy bleDevice];
  model = [deviceCopy model];
  v6 = [model isEqualToString:{@"AudioAccessory5, 1"}];

  if (v6)
  {
    v7 = @"b520ho";
  }

  else
  {
    model2 = [deviceCopy model];
    v9 = [model2 isEqualToString:{@"AudioAccessory6, 1"}];

    if (v9)
    {
      v7 = @"b620ho";
    }

    else
    {
      v7 = @"ho";
    }
  }

  v10 = +[SDNearbyAgent sharedNearbyAgent];
  v11 = [v10 bleProximityInfoForType:v7 device:deviceCopy];

  if (v11)
  {
    closeProximityEstimatorSmall = [bleDevice closeProximityEstimatorSmall];
    if (!closeProximityEstimatorSmall)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      Int64 = CFDictionaryGetInt64();
      v15 = CFDictionaryGetInt64();
      v16 = CFDictionaryGetInt64Ranged();
      v38[0] = @"algo";
      v17 = [NSNumber numberWithInt:Int64Ranged];
      v39[0] = v17;
      v38[1] = @"rssi";
      v18 = [NSNumber numberWithLongLong:Int64];
      v39[1] = v18;
      v38[2] = @"rssiExit";
      v19 = [NSNumber numberWithLongLong:v15];
      v39[2] = v19;
      v38[3] = @"sc";
      v20 = [NSNumber numberWithUnsignedInt:v16];
      v39[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
      closeProximityEstimatorSmall = [SFProximityEstimator proximityEstimatorWithProximityInfo:v21];

      [bleDevice setCloseProximityEstimatorSmall:closeProximityEstimatorSmall];
    }

    v22 = [closeProximityEstimatorSmall updateWithSFBLEDevice:bleDevice];
    closeProximityEstimatorMedium = [bleDevice closeProximityEstimatorMedium];
    if (!closeProximityEstimatorMedium)
    {
      v24 = CFDictionaryGetInt64Ranged();
      v25 = CFDictionaryGetInt64();
      v26 = CFDictionaryGetInt64();
      v27 = CFDictionaryGetInt64Ranged();
      v36[0] = @"algo";
      v35 = v22;
      v28 = [NSNumber numberWithInt:v24];
      v37[0] = v28;
      v36[1] = @"rssi";
      v29 = [NSNumber numberWithLongLong:v25];
      v37[1] = v29;
      v36[2] = @"rssiExit";
      v30 = [NSNumber numberWithLongLong:v26];
      v37[2] = v30;
      v36[3] = @"sc";
      v31 = [NSNumber numberWithUnsignedInt:v27];
      v37[3] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
      closeProximityEstimatorMedium = [SFProximityEstimator proximityEstimatorWithProximityInfo:v32];

      v22 = v35;
      [bleDevice setCloseProximityEstimatorMedium:closeProximityEstimatorMedium];
    }

    v33 = [closeProximityEstimatorMedium updateWithSFBLEDevice:bleDevice] | v22;
  }

  else
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264A5C(deviceCopy);
    }

    v33 = 0;
  }

  return v33;
}

- (unsigned)_bleProximityUpdateNearbyActionDevice:(id)device
{
  deviceCopy = device;
  bleDevice = [deviceCopy bleDevice];
  setupProximityEstimator = [bleDevice setupProximityEstimator];
  if (!setupProximityEstimator)
  {
    v7 = +[SDNearbyAgent sharedNearbyAgent];
    setupProximityEstimator = [v7 bleProximityEstimatorForActionType:objc_msgSend(deviceCopy device:{"deviceActionType"), deviceCopy}];

    if (!setupProximityEstimator)
    {
      v8 = 0;
      goto LABEL_9;
    }

    [bleDevice setSetupProximityEstimator:setupProximityEstimator];
  }

  v8 = [setupProximityEstimator updateWithSFBLEDevice:bleDevice];
  if ((v8 & 2) != 0)
  {
    [deviceCopy setDistance:{objc_msgSend(bleDevice, "distance")}];
  }

  if (([deviceCopy deviceFlags] & 0x200) != 0)
  {
    v8 |= [(SDNearbyAgent *)self _bleProximityUpdateDeviceCloseNearbyActionDevice:deviceCopy];
  }

LABEL_9:

  return v8;
}

- (unsigned)_bleProximityUpdateNearbyInfoDevice:(id)device
{
  deviceCopy = device;
  bleDevice = [deviceCopy bleDevice];
  infoProximityEstimator = [bleDevice infoProximityEstimator];
  if (!infoProximityEstimator)
  {
    v8 = [(SDNearbyAgent *)self bleProximityInfoForType:@"info" device:deviceCopy];
    if (!v8 || ([SFProximityEstimator proximityEstimatorWithProximityInfo:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      infoProximityEstimator = 0;
      v7 = 0;
      goto LABEL_8;
    }

    infoProximityEstimator = v9;
    [bleDevice setInfoProximityEstimator:v9];
  }

  v7 = [infoProximityEstimator updateWithSFBLEDevice:bleDevice];
  if ((v7 & 2) != 0)
  {
    [deviceCopy setDistance:{objc_msgSend(bleDevice, "distance")}];
  }

LABEL_8:

  return v7;
}

- (void)_postNotificationForWombatState:(unsigned int)state
{
  if (dword_1009732B8 == -1)
  {
    notify_register_check("com.apple.sharing.wombat-state", &dword_1009732B8);
  }

  v4 = dword_10098A438;
  if (dword_10098A438 != state)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
LABEL_6:
        if (v4 > 3)
        {
          v5 = "?";
        }

        else
        {
          v5 = off_1008D5FA0[v4];
        }

        if (state > 3)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1008D5FA0[state];
        }

        LogPrintF(&dword_100973248, "[SDNearbyAgent _postNotificationForWombatState:]", 30, "Posting notification for wombat state change: %s -> %s (0x%x)\n", v5, v6, state);
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v4 = dword_10098A438;
        goto LABEL_6;
      }
    }

LABEL_15:
    notify_set_state(dword_1009732B8, state);
    notify_post("com.apple.sharing.wombat-state");
    dword_10098A438 = state;
  }
}

- (void)_registerForMagicMountUpdates
{
  if (self->_cameraMagicMountManager)
  {
    return;
  }

  v15[9] = v2;
  v15[10] = v3;
  DeviceClass = GestaltGetDeviceClass();
  if ((DeviceClass | 2) != 3)
  {
    return;
  }

  v6 = DeviceClass;
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery]< 1)
  {
    return;
  }

  v7 = +[CMMagicMountManager isAvailable];
  if (!v7)
  {
    return;
  }

  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      sub_100264A9C(v7, v8, v9);
    }
  }

  v10 = objc_alloc_init(CMMagicMountManager);
  cameraMagicMountManager = self->_cameraMagicMountManager;
  self->_cameraMagicMountManager = v10;

  v12 = 1;
  [(CMMagicMountManager *)self->_cameraMagicMountManager setMagicMountConfiguration:1];
  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 3)
  {
    v12 = 0;
LABEL_11:
    [(CMMagicMountManager *)self->_cameraMagicMountManager setAPWakesAllowed:v12];
  }

  v13 = self->_cameraMagicMountManager;
  v14 = +[NSOperationQueue mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024EA30;
  v15[3] = &unk_1008D5718;
  v15[4] = self;
  [(CMMagicMountManager *)v13 startMagicMountUpdatesToQueue:v14 withHandler:v15];

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264AB8();
  }
}

- (void)_unregisterForMagicMountUpdates
{
  cameraMagicMountManager = self->_cameraMagicMountManager;
  if (cameraMagicMountManager)
  {
    [(CMMagicMountManager *)cameraMagicMountManager stopMagicMountUpdates];
    v4 = self->_cameraMagicMountManager;
    self->_cameraMagicMountManager = 0;

    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100264B2C(v5, v6, v7);
      }
    }

    brightnessSystemClient = self->_brightnessSystemClient;
    self->_brightnessSystemClient = 0;

    self->_isDeviceMounted = 0;

    [(SDNearbyAgent *)self _updateCameraState];
  }
}

- (void)_cameraStateChanged
{
  if (![(SDNearbyAgent *)self _allowEnhancedDiscovery])
  {
    return;
  }

  if (self->_prefWombatAssumeMounted || self->_isDeviceMounted)
  {
    if (!self->_prefWombatAssumeNotInPocket && !self->_inDiscoverySession)
    {

      [(SDNearbyAgent *)self _checkBrightnessLuxValue];
      return;
    }
  }

  else
  {
    self->_isDeviceNotInPocket = 0;
  }

  [(SDNearbyAgent *)self _updateCameraState];
}

- (void)_useLuxValue
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024ED0C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_checkBrightnessLuxValue
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_brightnessSystemClient)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v3 = qword_10098A460;
    v23 = qword_10098A460;
    if (!qword_10098A460)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100261888;
      v19[3] = &unk_1008CDA20;
      v19[4] = &v20;
      sub_100261888(v19);
      v3 = v21[3];
    }

    v4 = v3;
    _Block_object_dispose(&v20, 8);
    v5 = objc_alloc_init(v3);
    brightnessSystemClient = self->_brightnessSystemClient;
    self->_brightnessSystemClient = v5;

    self->_supportsRearLux = MGGetBoolAnswer();
  }

  __asm { FMOV            V0.2S, #-1.0 }

  *&self->_alsLuxValue = _D0;
  v12 = [NSMutableArray arrayWithObject:@"Lux"];
  v13 = v12;
  if (self->_supportsRearLux)
  {
    [v12 addObject:@"RLuxOutput"];
  }

  [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:&__kCFBooleanTrue forKey:@"ActivateALS"];
  v14 = self->_brightnessSystemClient;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024F0EC;
  v18[3] = &unk_1008CE2A0;
  v18[4] = self;
  [(BrightnessSystemClient *)v14 registerNotificationBlock:v18 forProperties:v13];
  if (self->_supportsRearLux)
  {
    [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:&off_10090C1F8 forKey:@"RLuxSampleWithMaxAge"];
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264B48(v13);
  }

  v15 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"Lux"];
  [v15 floatValue];
  v17 = v16;

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264B88(v17);
  }

  if (v17 >= 0.0)
  {
    self->_alsLuxValue = v17;
    [(SDNearbyAgent *)self _useLuxValue];
  }
}

- (void)_registerForWombatActivityNotification
{
  if (self->_wombatActivityToken == -1)
  {
    handler[5] = v2;
    handler[6] = v3;
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10024F378;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.wombat-activity", &self->_wombatActivityToken, dispatchQueue, handler);
  }
}

- (void)_unregisterForWombatActivityNotification
{
  wombatActivityToken = self->_wombatActivityToken;
  if (wombatActivityToken != -1)
  {
    notify_cancel(wombatActivityToken);
    self->_wombatActivityToken = -1;
  }
}

- (void)_discoverySessionStateChange:(BOOL)change
{
  inDiscoverySession = self->_inDiscoverySession;
  if (inDiscoverySession == change)
  {
    return;
  }

  changeCopy = change;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      v6 = "no";
      if (inDiscoverySession)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (changeCopy)
      {
        v6 = "yes";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent _discoverySessionStateChange:]", 30, "Discovery session state changed %s -> %s\n", v7, v6);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(inDiscoverySession) = self->_inDiscoverySession;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_inDiscoverySession = changeCopy;
  if (SFDeviceClassCodeGet() != 6)
  {

    [(SDNearbyAgent *)self _update];
  }
}

- (void)_cancelDonStateRetryTimers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_donStateRetryTimerDictionary allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_donStateRetryTimerDictionary objectForKeyedSubscript:v8];
        v10 = v9;
        if (v9)
        {
          dispatch_source_cancel(v9);
        }

        [(NSMutableDictionary *)self->_donStateRetryTimerDictionary setObject:0 forKeyedSubscript:v8];
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_deliverDonnedEventToDevice:(id)device allowRetry:(BOOL)retry
{
  deviceCopy = device;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDispatchQueue:self->_dispatchQueue];
  [v7 setUseCase:131100];
  [v7 setDestinationDevice:deviceCopy];
  model = [deviceCopy model];
  v9 = [model containsString:@"Watch"];

  if (v9)
  {
    v10 = 6291712;
  }

  else
  {
    v10 = 12;
  }

  [v7 setControlFlags:v10];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024F7A4;
  v13[3] = &unk_1008D5768;
  retryCopy = retry;
  v14 = deviceCopy;
  v15 = v7;
  selfCopy = self;
  v11 = v7;
  v12 = deviceCopy;
  [v11 activateWithCompletion:v13];
}

- (void)_deliverDonnedEventsStart
{
  if ([(SDNearbyAgent *)self idsIsSignedIn])
  {
    activeDeviceDiscovery = self->_activeDeviceDiscovery;
    if (activeDeviceDiscovery)
    {
      [(RPCompanionLinkClient *)activeDeviceDiscovery invalidate];
    }

    v4 = objc_alloc_init(RPCompanionLinkClient);
    v5 = self->_activeDeviceDiscovery;
    self->_activeDeviceDiscovery = v4;

    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery setControlFlags:2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024FCFC;
    v9[3] = &unk_1008CE210;
    v9[4] = self;
    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024FEA8;
    v8[3] = &unk_1008CE210;
    v8[4] = self;
    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery setDeviceLostHandler:v8];
    v6 = self->_activeDeviceDiscovery;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024FF0C;
    v7[3] = &unk_1008CDF90;
    v7[4] = self;
    [(RPCompanionLinkClient *)v6 activateWithCompletion:v7];
  }
}

- (void)_deliverDoffedEvent
{
  [(SDNearbyAgent *)self _invalidateActiveDeviceDiscoveryIfNeeded];
  deliveredDonnedIdentifiers = self->_deliveredDonnedIdentifiers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100250028;
  v4[3] = &unk_1008D1A70;
  v4[4] = self;
  [(NSMutableDictionary *)deliveredDonnedIdentifiers enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_handleDonStateReceivedRequest:(id)request withOptions:(id)options
{
  requestCopy = request;
  optionsCopy = options;
  if (!self->_donnedDevices)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    donnedDevices = self->_donnedDevices;
    self->_donnedDevices = v7;
  }

  v9 = [optionsCopy objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
  v10 = [[NSUUID alloc] initWithUUIDString:v9];
  v11 = objc_alloc_init(SFDevice);
  [v11 setIdentifier:v10];
  [v11 setIdsIdentifier:v9];
  v12 = [optionsCopy objectForKeyedSubscript:RPOptionSenderModelID];
  [v11 setModel:v12];

  v13 = [optionsCopy objectForKeyedSubscript:RPOptionSenderDeviceName];
  [v11 setName:v13];

  v14 = [requestCopy objectForKeyedSubscript:@"donState"];
  intValue = [v14 intValue];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent _handleDonStateReceivedRequest:withOptions:]", 30, "Received don state: %d from: %@\n", intValue, v9);
  }

  if (intValue == 1)
  {
    [(NSMutableDictionary *)self->_donnedDevices setObject:v11 forKeyedSubscript:v10];
  }

  else if (!intValue)
  {
    [(NSMutableDictionary *)self->_donnedDevices removeObjectForKey:v10];
  }

  [(SDNearbyAgent *)self _handleDonnedDevicesChanged];
}

- (void)_handleRetryTimerForDevice:(id)device
{
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  v5 = [(NSMutableDictionary *)self->_donStateRetryTimerDictionary objectForKeyedSubscript:idsDeviceIdentifier];
  v6 = v5;
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  [(NSMutableDictionary *)self->_donStateRetryTimerDictionary setObject:0 forKeyedSubscript:idsDeviceIdentifier];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264EA8(deviceCopy);
  }

  [(SDNearbyAgent *)self _deliverDonnedEventToDevice:deviceCopy allowRetry:0];
}

- (void)_invalidateActiveDeviceDiscoveryIfNeeded
{
  if (![(NSMutableDictionary *)self->_deliveredDonnedIdentifiers count])
  {
    [(RPCompanionLinkClient *)self->_activeDeviceDiscovery invalidate];
    activeDeviceDiscovery = self->_activeDeviceDiscovery;
    self->_activeDeviceDiscovery = 0;
  }
}

- (void)_performTemporaryScan
{
  if (self->_ignoreWatchWristLockState || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 watchWristState], v17, v18 == 3) && (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "deviceKeyBagLocked"), v19, (v20 & 1) == 0))
  {
    v3 = objc_alloc_init(NSMutableSet);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    allKeys = [(NSMutableDictionary *)self->_donnedDevices allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v5)
    {
      v6 = *v31;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          uUIDString = [*(*(&v30 + 1) + 8 * i) UUIDString];
          [v3 addObject:uUIDString];
        }

        v5 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v5);
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    tempDonDeviceDiscovery = self->_tempDonDeviceDiscovery;
    if (tempDonDeviceDiscovery)
    {
      [(RPCompanionLinkClient *)tempDonDeviceDiscovery invalidate];
      v10 = self->_tempDonDeviceDiscovery;
      self->_tempDonDeviceDiscovery = 0;
    }

    v11 = objc_alloc_init(RPCompanionLinkClient);
    v12 = self->_tempDonDeviceDiscovery;
    self->_tempDonDeviceDiscovery = v11;

    [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setDispatchQueue:self->_dispatchQueue];
    [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setUseCase:131099];
    [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setControlFlags:98306];
    allObjects = [v3 allObjects];
    [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setDeviceFilter:allObjects];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100250AB0;
    v24[3] = &unk_1008D57B8;
    v14 = v3;
    v25 = v14;
    selfCopy = self;
    v27 = v28;
    [(RPCompanionLinkClient *)self->_tempDonDeviceDiscovery setDeviceFoundHandler:v24];
    v15 = self->_tempDonDeviceDiscovery;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100250C04;
    v21[3] = &unk_1008D5808;
    v21[4] = self;
    v16 = v14;
    v22 = v16;
    v23 = v28;
    [(RPCompanionLinkClient *)v15 activateWithCompletion:v21];

    _Block_object_dispose(v28, 8);
  }
}

- (void)_registerForDonStateRequest
{
  if (!self->_receiveDonStateClient)
  {
    v8[7] = v2;
    v8[8] = v3;
    v5 = objc_alloc_init(RPCompanionLinkClient);
    receiveDonStateClient = self->_receiveDonStateClient;
    self->_receiveDonStateClient = v5;

    v7 = self->_receiveDonStateClient;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100251014;
    v8[3] = &unk_1008CF358;
    v8[4] = self;
    [(RPCompanionLinkClient *)v7 registerRequestID:@"com.sharing.donState" options:0 handler:v8];
    [(RPCompanionLinkClient *)self->_receiveDonStateClient activateWithCompletion:&stru_1008D5828];
  }
}

- (void)_startPeriodicScanner
{
  if (!self->_periodicScanTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    periodicScanTimer = self->_periodicScanTimer;
    self->_periodicScanTimer = v5;

    v7 = self->_periodicScanTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100251218;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    SFDispatchTimerSet();
    dispatch_resume(self->_periodicScanTimer);
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026508C(&self->_donnedDeviceScanIntervalSeconds);
    }
  }
}

- (void)_stopPeriodicScanner
{
  tempDonDeviceDiscovery = self->_tempDonDeviceDiscovery;
  if (tempDonDeviceDiscovery)
  {
    [(RPCompanionLinkClient *)tempDonDeviceDiscovery invalidate];
    v4 = self->_tempDonDeviceDiscovery;
    self->_tempDonDeviceDiscovery = 0;
  }

  periodicScanTimer = self->_periodicScanTimer;
  if (periodicScanTimer)
  {
    v6 = periodicScanTimer;
    dispatch_source_cancel(v6);
    v7 = self->_periodicScanTimer;
    self->_periodicScanTimer = 0;

    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1002650D0(v8, v9, v10);
      }
    }
  }
}

- (void)_updateDonState
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
  {

    [(SDNearbyAgent *)self _deliverDonnedEventsStart];
  }

  else
  {

    [(SDNearbyAgent *)self _deliverDoffedEvent];
  }
}

- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (peerCopy)
  {
    v9 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:?];
    if (v9)
    {
      v10 = v9;
      if (errorCopy)
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100973248, "[SDNearbyAgent nearby:didConnectToPeer:transport:error:]", 50, "### Connect to existing %@ failed %@\n", peerCopy, errorCopy);
        }
      }

      else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002650EC(peerCopy);
      }
    }

    else if (errorCopy)
    {
      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100973248, "[SDNearbyAgent nearby:didConnectToPeer:transport:error:]", 50, "### Connect to new %@ failed %@\n", peerCopy, errorCopy);
      }

      v10 = 0;
    }

    else
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026512C(peerCopy);
      }

      v11 = objc_alloc_init(SFBLEDevice);
      [v11 setIdentifier:peerCopy];
      v10 = [[SFBLEConnection alloc] initWithDevice:v11 acceptor:1];
      [v10 setDispatchQueue:self->_dispatchQueue];
      bleConnections = self->_bleConnections;
      if (!bleConnections)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = self->_bleConnections;
        self->_bleConnections = v13;

        bleConnections = self->_bleConnections;
      }

      [(NSMutableDictionary *)bleConnections setObject:v10 forKeyedSubscript:peerCopy];
      [v10 addClient:self];
      [v10 activateDirect];
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = v15;
    if (errorCopy)
    {
      [v15 setObject:errorCopy forKeyedSubscript:@"SDBluetoothNotificationKeyError"];
    }

    [v16 setObject:peerCopy forKeyedSubscript:@"SDBluetoothNotificationKeyPeerIdentifier"];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"SDNotificationNameNearbyBLEConnected" object:self userInfo:v16];
  }

  else
  {
    sub_10026516C(errorCopy);
  }
}

- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent nearby:didDisconnectFromPeer:error:]", 50, "### Disconnect from %@, error %@\n", peerCopy, errorCopy);
    }
  }

  else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002651E8(peerCopy);
  }

  v9 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:peerCopy];
  v10 = v9;
  if (v9 && ([v9 removeClient:self] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:peerCopy];
    [v10 invalidate];
  }

  v50 = v10;
  v53 = errorCopy;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  allKeys = [(NSMutableDictionary *)self->_setupSessions allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v62 + 1) + 8 * i);
        v17 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v16];
        peerIdentifier = [v17 peerIdentifier];
        v19 = [peerIdentifier isEqual:peerCopy];

        if (v19)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100973248, "[SDNearbyAgent nearby:didDisconnectFromPeer:error:]", 30, "Removing session %@ on disconnect from peer %@\n", v16, peerCopy);
          }

          [(NSMutableDictionary *)self->_setupSessions removeObjectForKey:v16];
        }
      }

      v13 = [allKeys countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v13);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = self->_services;
  v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v59;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v58 + 1) + 8 * j)];
        peerDisconnectedHandler = [v24 peerDisconnectedHandler];

        if (peerDisconnectedHandler)
        {
          peerDisconnectedHandler2 = [v24 peerDisconnectedHandler];
          (peerDisconnectedHandler2)[2](peerDisconnectedHandler2, peerCopy, v53);
        }

        errorHandler = [v24 errorHandler];

        if (errorHandler)
        {
          errorHandler2 = [v24 errorHandler];
          v69 = NSLocalizedDescriptionKey;
          v29 = [NSString stringWithUTF8String:DebugGetErrorString()];
          v30 = v29;
          v31 = @"?";
          if (v29)
          {
            v31 = v29;
          }

          v70 = v31;
          v32 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v33 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6753 userInfo:v32];
          (errorHandler2)[2](errorHandler2, v33);
        }
      }

      v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v21);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = self->_sessions;
  v34 = [(NSMutableDictionary *)v52 countByEnumeratingWithState:&v54 objects:v68 count:16];
  v35 = v53;
  if (v34)
  {
    v36 = v34;
    v37 = *v55;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(v52);
        }

        v39 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:*(*(&v54 + 1) + 8 * k)];
        peerDevice = [v39 peerDevice];
        identifier = [peerDevice identifier];

        if ([identifier isEqual:peerCopy])
        {
          v66 = NSLocalizedDescriptionKey;
          v67 = @"kConnectionErr";
          v42 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v43 = [v42 mutableCopy];

          if (v35)
          {
            [v43 setObject:v35 forKeyedSubscript:NSUnderlyingErrorKey];
          }

          v44 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6753 userInfo:v43];
          errorHandler3 = [v39 errorHandler];

          if (errorHandler3)
          {
            errorHandler4 = [v39 errorHandler];
            (errorHandler4)[2](errorHandler4, v44);
          }

          v35 = v53;
        }
      }

      v36 = [(NSMutableDictionary *)v52 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v36);
  }

  v47 = objc_alloc_init(NSMutableDictionary);
  v48 = v47;
  if (v35)
  {
    [v47 setObject:v35 forKeyedSubscript:@"SDBluetoothNotificationKeyError"];
  }

  [v48 setObject:peerCopy forKeyedSubscript:@"SDBluetoothNotificationKeyPeerIdentifier"];
  v49 = +[NSNotificationCenter defaultCenter];
  [v49 postNotificationName:@"SDNotificationNameNearbyBLEDisconnected" object:self userInfo:v48];
}

- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (peerCopy)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265228();
    }

    v10 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:peerCopy];
    if (v10)
    {
      v11 = v10;
      [(SDNearbyAgent *)self _bleNearbyInfoReceivedData:dataCopy cnx:v10 peer:peerCopy];
    }

    else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026527C(peerCopy);
    }
  }

  else
  {
    sub_1002652BC(dword_100973248, v8, v9);
  }
}

- (void)nearbyDidUpdateState:(id)state
{
  dispatchQueue = self->_dispatchQueue;
  stateCopy = state;
  dispatch_assert_queue_V2(dispatchQueue);
  state = [stateCopy state];

  if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265314(state);
  }

  sessions = self->_sessions;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100251EDC;
  v8[3] = &unk_1008D5848;
  v8[4] = state;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v8];
}

- (BOOL)_onlyRingVisionDeviceWhenDonned
{
  if (self->_caPhoneCallsOnlyRingDonnedDevice)
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

- (void)coordinatedAlertRequestStart:(id)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      v5 = sub_100265374(v5, v6, v7);
    }
  }

  if (!self->_caEnabled)
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100265390(v5, v6, v7);
      }
    }

    completionHandler = [startCopy completionHandler];

    v47 = 0;
    v48 = 0;
    v49 = 1;
    if (!completionHandler)
    {
      goto LABEL_42;
    }

LABEL_16:
    completionHandler2 = [startCopy completionHandler];
    completionHandler2[2](completionHandler2, 0, 1, 0);

LABEL_42:
    if ([startCopy type] != 1)
    {
LABEL_45:
      v50[0] = @"eventType";
      v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [startCopy type]);
      v51[0] = v33;
      v50[1] = @"activityLevel";
      v34 = [NSNumber numberWithUnsignedChar:v49];
      v51[1] = v34;
      v51[2] = &off_10090C4B0;
      v50[2] = @"otherDevicesCount";
      v50[3] = @"bestIsMe";
      v51[3] = &__kCFBooleanTrue;
      v50[4] = @"skipScanBcPhoneCall";
      v35 = [NSNumber numberWithBool:v48];
      v51[4] = v35;
      v50[5] = @"skipScanBcVeryActive";
      v36 = [NSNumber numberWithBool:v47];
      v51[5] = v36;
      v50[6] = @"MsgScans";
      v37 = [NSNumber numberWithUnsignedInt:self->_caMessageScans];
      v51[6] = v37;
      v50[7] = @"MsgNoScans";
      v38 = [NSNumber numberWithUnsignedInt:self->_caMessageNoScans];
      v51[7] = v38;
      v39 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:8];
      SFMetricsLog();

      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100973248, "-[SDNearbyAgent coordinatedAlertRequestStart:]", 50, "CA: Start, type %ld, level %d, devices %d, best %d, skipP %d, skipA %d, scans %u, noScans %u", [startCopy type], v49, -1, 1, v48, v47, self->_caMessageScans, self->_caMessageNoScans);
      }

      goto LABEL_116;
    }

    v29 = 0;
    ++self->_caMessageNoScans;
LABEL_44:
    v52[0] = @"noScans";
    v30 = [NSNumber numberWithUnsignedInt:?];
    v52[1] = @"scans";
    v53[0] = v30;
    v31 = [NSNumber numberWithUnsignedInt:self->_caMessageScans];
    v53[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
    SFPowerLogEvent();

    if (v29)
    {
      goto LABEL_116;
    }

    goto LABEL_45;
  }

  DeviceClass = GestaltGetDeviceClass();
  type = [startCopy type];
  if (type != 6 || DeviceClass == 1 || DeviceClass == 100)
  {
    if (self->_caSingleDevice || (v12 = [(SDNearbyAgent *)self idsIsSignedIn], v12) && (v12 = [(SDNearbyAgent *)self _idsContinuityDeviceCount], v12 > 0))
    {
      v15 = 1;
      goto LABEL_28;
    }

    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        sub_1002653AC(v12, v13, v14);
      }
    }

    completionHandler3 = [startCopy completionHandler];

    if (!completionHandler3)
    {
      goto LABEL_27;
    }

    v19 = 1;
LABEL_26:
    completionHandler4 = [startCopy completionHandler];
    completionHandler4[2](completionHandler4, 0, v19, 0);

LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (type = _LogCategory_Initialize(), type))
    {
      sub_1002653C8(type, v10, v11);
    }
  }

  completionHandler5 = [startCopy completionHandler];

  v19 = 0;
  v15 = 0;
  if (completionHandler5)
  {
    goto LABEL_26;
  }

LABEL_28:
  v49 = [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:0];
  if ([(SDNearbyAgent *)self _idsVisionOS2OrHigherCount]< 1)
  {
    caScanIfHasVisionOS1 = 0;
  }

  else if ([(SDNearbyAgent *)self _idsVisionOS1Count])
  {
    caScanIfHasVisionOS1 = self->_caScanIfHasVisionOS1;
  }

  else
  {
    caScanIfHasVisionOS1 = 1;
  }

  IsRealityDevice = [(CUBluetoothClient *)self->_btConnectedDeviceMonitor statusFlags];
  v26 = IsRealityDevice;
  if (caScanIfHasVisionOS1)
  {
    v28 = (IsRealityDevice & 1) == 0 && v49 == 14;
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v28 = 0;
    if (!v15)
    {
LABEL_41:
      v47 = 0;
      v48 = 0;
      goto LABEL_42;
    }
  }

  if (self->_caPhoneCalls)
  {
    goto LABEL_108;
  }

  IsRealityDevice = [startCopy type];
  if (IsRealityDevice != 2)
  {
    goto LABEL_108;
  }

  IsRealityDevice = SFDeviceIsRealityDevice();
  if ((IsRealityDevice & 1) != 0 || (DeviceClass == 6 || (IsRealityDevice = SFIsDevicePhone(), IsRealityDevice)) && (IsRealityDevice = [(SDNearbyAgent *)self _onlyRingVisionDeviceWhenDonned], (IsRealityDevice & 1) == 0))
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (IsRealityDevice = _LogCategory_Initialize(), IsRealityDevice))
      {
        sub_1002654F0(IsRealityDevice, v24, v25);
      }
    }

    goto LABEL_71;
  }

  if (dword_100973248 > 50 || dword_100973248 == -1 && (IsRealityDevice = _LogCategory_Initialize(), !IsRealityDevice))
  {
    if (v28)
    {
      goto LABEL_59;
    }

LABEL_94:
    if (DeviceClass != 6)
    {
      IsRealityDevice = SFIsDevicePhone();
      if (!IsRealityDevice)
      {
        if (!self->_caScanIfVeryActive && v49 >= 0xB && (DeviceClass == 100 || DeviceClass == 3))
        {
          if (dword_100973248 <= 50)
          {
            if (dword_100973248 != -1 || (IsRealityDevice = _LogCategory_Initialize(), IsRealityDevice))
            {
              sub_100265484(IsRealityDevice, v24, v25);
            }
          }

LABEL_120:
          completionHandler6 = [startCopy completionHandler];

          v47 = 1;
          v48 = 0;
          if (!completionHandler6)
          {
            goto LABEL_42;
          }

          goto LABEL_16;
        }

LABEL_108:
        if (self->_caScanIfVeryActive)
        {
          goto LABEL_112;
        }

        if (v49 < 0xB)
        {
          goto LABEL_112;
        }

        if (v28)
        {
          IsRealityDevice = [startCopy type];
          if (IsRealityDevice == 2)
          {
            goto LABEL_112;
          }
        }

        if (dword_100973248 <= 50)
        {
          if (dword_100973248 != -1 || (IsRealityDevice = _LogCategory_Initialize(), IsRealityDevice))
          {
            sub_10026550C(IsRealityDevice, v24, v25);
          }
        }

        goto LABEL_120;
      }
    }

    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (IsRealityDevice = _LogCategory_Initialize(), IsRealityDevice))
      {
        sub_1002654A0(IsRealityDevice, v24, v25);
      }
    }

    goto LABEL_71;
  }

  IsRealityDevice = sub_1002653E4(v28, v49, caScanIfHasVisionOS1, (v26 & 1) == 0);
  if (!v28)
  {
    goto LABEL_94;
  }

LABEL_59:
  IsRealityDevice = [(SDNearbyAgent *)self _onlyRingVisionDeviceWhenDonned];
  if (IsRealityDevice)
  {
    IsRealityDevice = SFIsDevicePhone();
    if ((IsRealityDevice & 1) == 0 && DeviceClass != 3 && DeviceClass != 100 && DeviceClass != 6)
    {
      goto LABEL_108;
    }

    v40 = [(NSMutableDictionary *)self->_donnedDevices count];
    if (v40)
    {
      if (dword_100973248 > 50 || dword_100973248 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_112;
      }

      v41 = "CoordinatedAlert: scanning forced due to donned devices nearby and visionOS 2.0 or above on account\n";
LABEL_81:
      sub_1002654BC(v41, v24, v25);
      goto LABEL_112;
    }

    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (v40 = _LogCategory_Initialize(), v40))
      {
        sub_1002654D4(v40, v24, v25);
      }
    }

LABEL_71:
    completionHandler7 = [startCopy completionHandler];

    v47 = 0;
    v48 = 1;
    if (!completionHandler7)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (DeviceClass != 100 && DeviceClass != 3)
  {
    goto LABEL_108;
  }

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v41 = "CoordinatedAlert: scanning forced on Mac or iPad due to visionOS 2.0 or above on account\n";
    goto LABEL_81;
  }

LABEL_112:
  caRequests = self->_caRequests;
  if (!caRequests)
  {
    v44 = objc_alloc_init(NSMutableSet);
    v45 = self->_caRequests;
    self->_caRequests = v44;

    caRequests = self->_caRequests;
  }

  [(NSMutableSet *)caRequests addObject:startCopy];
  [(SDNearbyAgent *)self _update];
  if ([startCopy type] == 1)
  {
    v47 = 0;
    v48 = 0;
    ++self->_caMessageScans;
    v29 = 1;
    goto LABEL_44;
  }

LABEL_116:
}

- (void)coordinatedAlertRequestFinish:(id)finish
{
  finishCopy = finish;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([finishCopy type] == 1)
  {
    _idsBluetoothDeviceIDsForiMessage = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForiMessage];
  }

  else if ([finishCopy type] == 3)
  {
    _idsBluetoothDeviceIDsForiMessage = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForSMSRelay];
  }

  else if ([finishCopy type] == 4)
  {
    _idsBluetoothDeviceIDsForiMessage = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForAnnouncements];
  }

  else
  {
    if ([finishCopy type] != 6)
    {
LABEL_10:
      _idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForSharing];
      v6 = [NSSet setWithArray:_idsBluetoothDeviceIDsForSharing];

      goto LABEL_11;
    }

    _idsBluetoothDeviceIDsForiMessage = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForOneness];
  }

  v6 = _idsBluetoothDeviceIDsForiMessage;
  if (!_idsBluetoothDeviceIDsForiMessage)
  {
    goto LABEL_10;
  }

LABEL_11:
  v69 = finishCopy;
  v8 = [(SDNearbyAgent *)self _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:0];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = self->_bleNearbyInfoDevices;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  selfCopy = self;
  v80 = v6;
  if (!v9)
  {
    v68 = 0;
    v66 = 1;
    goto LABEL_103;
  }

  v10 = v9;
  v68 = 0;
  v66 = 1;
  v11 = *v90;
  v72 = (v8 - 10);
  v74 = *v90;
  do
  {
    v12 = 0;
    do
    {
      if (*v90 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices objectForKeyedSubscript:*(*(&v89 + 1) + 8 * v12)];
      if ([v13 decryptedActivityLevel] == 16)
      {
        decryptedActivityLevel = 0;
      }

      else
      {
        decryptedActivityLevel = [v13 decryptedActivityLevel];
      }

      identifier = [v13 identifier];
      v16 = identifier;
      if (v80 && (!identifier || ([v80 containsObject:identifier] & 1) == 0))
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265528(v69, v16);
        }

        v18 = 0;
        goto LABEL_74;
      }

      if (decryptedActivityLevel == 14)
      {
        v17 = [(SDNearbyAgent *)self idsDeviceForBluetoothDeviceID:v16 conflictDetected:0];
        v18 = v17;
        if (v17)
        {
          productName = [v17 productName];
          v20 = [productName isEqualToString:@"xrOS"];

          if (v20)
          {
            if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100265598(v16);
            }

            goto LABEL_102;
          }

          v11 = v74;
        }
      }

      else
      {
        v18 = 0;
      }

      if ([v69 type] != 6 || decryptedActivityLevel != v8)
      {
        goto LABEL_49;
      }

      modelIdentifier = [v18 modelIdentifier];
      lowercaseString = [modelIdentifier lowercaseString];

      if (GestaltGetDeviceClass() == 100 && [lowercaseString containsString:@"iphone"])
      {
        v11 = v74;
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v23 = "?";
          if (v8 <= 0xE)
          {
            v23 = off_1008D60A0[v8];
          }

          LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: Oneness phone %@ activity level 0x%02X (%s) equals local mac activity level.\n", v16, decryptedActivityLevel, v23);
        }

        v28 = 0;
        v66 = 0;
      }

      else
      {
        v11 = v74;
        if (GestaltGetDeviceClass() != 1 || ([lowercaseString containsString:@"mac"] & 1) == 0 && !objc_msgSend(lowercaseString, "containsString:", @"imac"))
        {

LABEL_49:
          if (decryptedActivityLevel > 9)
          {
            if (decryptedActivityLevel <= v8)
            {
              if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                v26 = "?";
                if ((decryptedActivityLevel - 10) <= 4)
                {
                  v26 = off_1008D6078[(decryptedActivityLevel - 10)];
                }

                v27 = "?";
                if (v72 <= 4)
                {
                  v27 = off_1008D6078[v72];
                }

                LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: device %@ activity level 0x%02X (%s) is lower than ours 0x%02X (%s)\n", v16, decryptedActivityLevel, v26, v8, v27);
              }
            }

            else
            {
              if (decryptedActivityLevel != 10 || ([(CUBluetoothClient *)selfCopy->_btConnectedDeviceMonitor statusFlags]& 1) == 0)
              {
                if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                {
                  if ((decryptedActivityLevel - 10) > 4)
                  {
                    v30 = "?";
                  }

                  else
                  {
                    v30 = off_1008D6078[(decryptedActivityLevel - 10)];
                  }

                  if (v8 > 0xE)
                  {
                    v31 = "?";
                  }

                  else
                  {
                    v31 = off_1008D60A0[v8];
                  }

                  LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: device %@ activity level 0x%02X (%s) is higher than ours 0x%02X (%s)\n", v16, decryptedActivityLevel, v30, v8, v31);
                }

LABEL_102:

                v66 = 0;
                v68 = 1;
                self = selfCopy;
                v6 = v80;
                goto LABEL_103;
              }

              if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                v25 = "?";
                if (v8 <= 0xE)
                {
                  v25 = off_1008D60A0[v8];
                }

                LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: device %@ activity level 0x%02X (%s) loses over headphones audible, 0x%02X (%s)\n", v16, 10, "Watch", v8, v25);
              }
            }
          }

          else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: device %@ activity level too low: 0x%02X (%s)\n", v16, decryptedActivityLevel, off_1008D6028[decryptedActivityLevel], v63, v64);
          }

          v68 = 1;
LABEL_74:

          self = selfCopy;
          v6 = v80;
          goto LABEL_75;
        }

        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          v24 = "?";
          if (v8 <= 0xE)
          {
            v24 = off_1008D60A0[v8];
          }

          LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: Oneness mac %@ activity level 0x%02X (%s) equals local phone activity level.\n", v16, decryptedActivityLevel, v24);
        }

        v28 = 1;
      }

      v68 = 1;
      self = selfCopy;
      v6 = v80;
      if (!v28)
      {
        goto LABEL_103;
      }

LABEL_75:
      v12 = v12 + 1;
    }

    while (v10 != v12);
    v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v89 objects:v97 count:16];
    v10 = v29;
  }

  while (v29);
LABEL_103:
  v65 = v8;

  v32 = v69;
  if (-[SDNearbyAgent _onlyRingVisionDeviceWhenDonned](self, "_onlyRingVisionDeviceWhenDonned") && [v69 type] == 2)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    allKeys = [(NSMutableDictionary *)self->_donnedDevices allKeys];
    v75 = [allKeys countByEnumeratingWithState:&v85 objects:v96 count:16];
    if (v75)
    {
      v70 = allKeys;
      v71 = 0;
      v73 = *v86;
      do
      {
        v34 = 0;
        do
        {
          if (*v86 != v73)
          {
            objc_enumerationMutation(v70);
          }

          obja = v34;
          v35 = *(*(&v85 + 1) + 8 * v34);
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          allValues = [(NSMutableDictionary *)self->_bleNearbyInfoDevices allValues];
          v37 = [allValues countByEnumeratingWithState:&v81 objects:v95 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v82;
            while (2)
            {
              for (i = 0; i != v38; i = i + 1)
              {
                if (*v82 != v39)
                {
                  objc_enumerationMutation(allValues);
                }

                identifier2 = [*(*(&v81 + 1) + 8 * i) identifier];
                v42 = identifier2;
                if (!v6 || identifier2 && [v6 containsObject:identifier2])
                {
                  v43 = [(SDNearbyAgent *)self idsDeviceForBluetoothDeviceID:v42 conflictDetected:0];
                  v44 = [NSUUID alloc];
                  uniqueID = [v43 uniqueID];
                  v46 = [v44 initWithUUIDString:uniqueID];

                  LODWORD(uniqueID) = [v46 isEqual:v35];
                  v6 = v80;

                  self = selfCopy;
                  if (uniqueID)
                  {

                    goto LABEL_126;
                  }
                }
              }

              v38 = [allValues countByEnumeratingWithState:&v81 objects:v95 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_1002655E8(v35);
          }

          [(NSMutableDictionary *)self->_donnedDevices removeObjectForKey:v35];
          ++v71;
LABEL_126:
          v34 = obja + 1;
        }

        while (obja + 1 != v75);
        v47 = [v70 countByEnumeratingWithState:&v85 objects:v96 count:16];
        v75 = v47;
      }

      while (v47);

      v32 = v69;
      if (v71 >= 1)
      {
        if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265628(&self->_donnedDevices, v71);
        }

        [(SDNearbyAgent *)self _handleDonnedDevicesChanged];
      }
    }

    else
    {
    }
  }

  if (v68)
  {
    v48 = v66;
  }

  else
  {
    v48 = v66;
    if (!-[SDStatusMonitor screenOn](self->_statusMonitor, "screenOn") && [v32 type] == 6 && GestaltGetDeviceClass() == 1)
    {
      if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_10026567C();
      }

      v48 = 0;
    }
  }

  v49 = [(NSMutableDictionary *)self->_bleNearbyInfoDevices count];
  if (!v49 && dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002656B0();
  }

  caForce = self->_caForce;
  if ((caForce & 0x80000000) == 0)
  {
    if (dword_100973248 <= 50)
    {
      if (dword_100973248 != -1 || (v52 = _LogCategory_Initialize(), caForce = self->_caForce, v52))
      {
        if (caForce)
        {
          v51 = "yes";
        }

        else
        {
          v51 = "no";
        }

        LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "*** Forcing Coordinated Alert 'bestIsMe' to %s\n", v51);
        caForce = self->_caForce;
      }
    }

    v48 = caForce != 0;
  }

  [(NSMutableSet *)self->_caRequests removeObject:v32];
  completionHandler = [v32 completionHandler];
  v54 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, 0, v48, 0);
  }

  [(SDNearbyAgent *)self _update];
  v93[0] = @"eventType";
  v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 type]);
  v94[0] = v55;
  v93[1] = @"activityLevel";
  v56 = [NSNumber numberWithUnsignedChar:v65];
  v94[1] = v56;
  v93[2] = @"otherDevicesCount";
  objb = v49;
  [NSNumber numberWithInt:v49];
  v58 = v57 = self;
  v94[2] = v58;
  v93[3] = @"bestIsMe";
  v67 = v48;
  v59 = [NSNumber numberWithBool:v48];
  v94[3] = v59;
  v94[4] = &__kCFBooleanFalse;
  v93[4] = @"skipScanBcPhoneCall";
  v93[5] = @"skipScanBcVeryActive";
  v94[5] = &__kCFBooleanFalse;
  v93[6] = @"MsgScans";
  v60 = [NSNumber numberWithUnsignedInt:v57->_caMessageScans];
  v94[6] = v60;
  v93[7] = @"MsgNoScans";
  v61 = [NSNumber numberWithUnsignedInt:v57->_caMessageNoScans];
  v94[7] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:8];
  SFMetricsLog();

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "-[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CA: Finish, type %ld, level %d, devices %d, best %d, skipP %d, skipA %d, scans %u, noScans %u", [v69 type], v65, objb, v67, 0, 0, selfCopy->_caMessageScans, selfCopy->_caMessageNoScans);
  }
}

- (void)coordinatedAlertRequestCancel:(id)cancel
{
  dispatchQueue = self->_dispatchQueue;
  cancelCopy = cancel;
  dispatch_assert_queue_V2(dispatchQueue);
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_1002656E4(v6, v7, v8);
    }
  }

  [(NSMutableSet *)self->_caRequests removeObject:cancelCopy];
  [(NSMutableSet *)self->_caRequestsNoScans removeObject:cancelCopy];

  [(SDNearbyAgent *)self _update];
}

- (void)_enableEnhancedDiscovery:(id)discovery useCase:(unsigned int)case
{
  v4 = *&case;
  discoveryCopy = discovery;
  if (self->_enhancedDiscoveryShouldRun)
  {
    enhancedDiscoveryUseCases = self->_enhancedDiscoveryUseCases;
    v8 = [NSNumber numberWithUnsignedInt:v4];
    [(NSMutableSet *)enhancedDiscoveryUseCases addObject:v8];

    goto LABEL_225;
  }

  isWifiCritical = [(SDNearbyAgent *)self isWifiCritical];
  if (isWifiCritical)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (isWifiCritical = _LogCategory_Initialize(), isWifiCritical))
      {
        sub_100265700(isWifiCritical, v10, v11);
      }
    }

    goto LABEL_225;
  }

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    if (v4 < 0x20000)
    {
      if (v4 <= 0x20000)
      {
        switch(v4)
        {
          case 65536:
            v12 = "FindMyAction";
            break;
          case 65537:
            v12 = "FindMyBackground";
            break;
          case 65538:
            v12 = "FindMyActionHELE";
            break;
          case 65539:
            v12 = "FindMyBackgroundHELE";
            break;
          case 65540:
            v12 = "FindMyActionTransient";
            break;
          case 65541:
            v12 = "FindMyBackgroundTransient";
            break;
          case 65542:
            v12 = "FindMyActionHELETransient";
            break;
          case 65543:
            v12 = "FindMyBackgroundHELETransient";
            break;
          case 65544:
            v12 = "FindMyNotOptedIn";
            break;
          case 65545:
            v12 = "FindMyOptedIn";
            break;
          case 65546:
            v12 = "FindMySepAlertsEnabled";
            break;
          case 65547:
            v12 = "FindMyTemporaryAggressiveLegacy";
            break;
          case 65548:
            v12 = "FindMyTemporaryLongAggressive";
            break;
          case 65549:
            v12 = "FindMyBTFindingUserInitiated";
            break;
          case 65550:
            v12 = "FindMyHELE";
            break;
          case 65551:
            v12 = "FindMyBeaconOnDemand";
            break;
          case 65552:
            v12 = "FindMyWildTimedScan";
            break;
          case 65553:
            v12 = "FindMyBackgroundLeechScan";
            break;
          case 65554:
            v12 = "FindMySnifferMode";
            break;
          case 65555:
            v12 = "FindMyUnpair";
            break;
          case 65556:
            v12 = "FindMyUnpairHELE";
            break;
          case 65557:
            v12 = "FindMyPlaySound";
            break;
          case 65558:
            v12 = "FindMyPlaySoundHELE";
            break;
          case 65559:
            v12 = "FindMyNotOptedInBeepOnMoveWaking";
            break;
          case 65560:
            v12 = "FindMyUTTransient";
            break;
          case 65561:
            v12 = "FindMyUTHELETransient";
            break;
          case 65562:
            v12 = "FindMyActionExtendedRange";
            break;
          case 65563:
            v12 = "FindMyActionExtendedRangeLE2M";
            break;
          case 65564:
            v12 = "FindMyActionExtendedRangeTransient";
            break;
          case 65565:
            v12 = "FindMyPlaySoundExtendedRange";
            break;
          case 65566:
            v12 = "FindMyPair";
            break;
          case 65567:
            v12 = "FindMyTemporaryAggressiveLegacyExtendedRange";
            break;
          default:
            JUMPOUT(0);
        }
      }

      else
      {
        v12 = "Unspecified";
        switch(v4)
        {
          case 0:
            goto LABEL_222;
          case 1:
            v12 = "HealthKit";
            break;
          case 2:
            v12 = "HomeKit";
            break;
          case 3:
            v12 = "FindMyObjectConnection";
            break;
          case 4:
            v12 = "FindMyObjectConnectionTransient";
            break;
          case 5:
            v12 = "MIDI";
            break;
          case 6:
            v12 = "Continuity";
            break;
          case 7:
            v12 = "InstantHotSpot";
            break;
          case 8:
            v12 = "NearBy";
            break;
          case 9:
            v12 = "Sharing";
            break;
          case 10:
            v12 = "HearingSupport";
            break;
          case 11:
            v12 = "Magnet";
            break;
          case 12:
            v12 = "HID";
            break;
          case 13:
            v12 = "LEA";
            break;
          case 14:
            v12 = "External";
            break;
          case 15:
            v12 = "ExternalMedical";
            break;
          case 16:
            v12 = "ExternalLock";
            break;
          case 17:
            v12 = "ExternalWatch";
            break;
          case 18:
            v12 = "SmartRouting";
            break;
          case 19:
            v12 = "DigitalID";
            break;
          case 20:
            v12 = "DigitalKey";
            break;
          case 21:
            v12 = "DigitalCarKey";
            break;
          case 22:
            v12 = "HeySiri";
            break;
          case 23:
            v12 = "ThirdPartyApp";
            break;
          case 24:
            v12 = "CNJ";
            break;
          default:
            switch(v4)
            {
              case 256:
                v12 = "DevicePresenceDetection";
                break;
              case 257:
                v12 = "AudioBox";
                break;
              case 258:
                v12 = "SIMTransfer";
                break;
              case 259:
                v12 = "ProximityScreenOnLeechScan";
                break;
              case 260:
                v12 = "MacMigrate";
                break;
              case 263:
                v12 = "HIDUARTService";
                break;
              case 264:
                v12 = "AccessibilitySwitchControlPairing";
                break;
              case 265:
                v12 = "BaseBandFastConnect";
                break;
              case 266:
                v12 = "SafetyAlerts";
                break;
              case 267:
                v12 = "LECarPlay";
                break;
              case 268:
                v12 = "TCCBluetooth";
                break;
              case 269:
                v12 = "AOPBufferLeech";
                break;
              case 270:
                v12 = "HighPriorityScanWiFi";
                break;
              default:
                goto LABEL_221;
            }

            break;
        }
      }

      goto LABEL_222;
    }

    if (v4 > 0x80000)
    {
      if (v4 < 0x100000)
      {
        if (v4 <= 851968)
        {
          if (v4 >= 655360)
          {
            if (v4 <= 720896)
            {
              if (v4 == 655360)
              {
                v12 = "AccessDigitalHomeKey";
                goto LABEL_222;
              }

              if (v4 == 720896)
              {
                v12 = "SoftwareUpdateBTWake";
                goto LABEL_222;
              }
            }

            else
            {
              switch(v4)
              {
                case 0xB0001:
                  v12 = "SofrwareUpdateOutboxControllerAuth";
                  goto LABEL_222;
                case 0xC0000:
                  v12 = "ProxControlDeviceClose";
                  goto LABEL_222;
                case 0xD0000:
                  v12 = "DCTProtocolTelephony";
                  goto LABEL_222;
              }
            }
          }

          else
          {
            if (v4 <= 524290)
            {
              if (v4 == 524289)
              {
                v12 = "ADPDBuffer";
              }

              else
              {
                v12 = "MicroLocation";
              }

              goto LABEL_222;
            }

            switch(v4)
            {
              case 0x80003:
                v12 = "MicroLocationLeech";
                goto LABEL_222;
              case 0x90000:
                v12 = "FindNearbyRemote";
                goto LABEL_222;
              case 0x90001:
                v12 = "FindNearbyPencil";
                goto LABEL_222;
            }
          }
        }

        else if (v4 <= 983041)
        {
          if (v4 <= 917504)
          {
            if (v4 == 851969)
            {
              v12 = "DCTProtocolDataAndTelephony";
              goto LABEL_222;
            }

            if (v4 == 917504)
            {
              v12 = "NearbyFaceTime";
              goto LABEL_222;
            }
          }

          else
          {
            switch(v4)
            {
              case 0xE0001:
                v12 = "NearbyFaceTimeData";
                goto LABEL_222;
              case 0xF0000:
                v12 = "SOSBeaconPartA";
                goto LABEL_222;
              case 0xF0001:
                v12 = "SOSBeaconPartB";
                goto LABEL_222;
            }
          }
        }

        else
        {
          if (v4 <= 983044)
          {
            if (v4 == 983042)
            {
              v12 = "SOSBeaconPrecisionFindResponse";
            }

            else if (v4 == 983043)
            {
              v12 = "SOSBeaconPrecisionFindRequest";
            }

            else
            {
              v12 = "SOSBeaconScan";
            }

            goto LABEL_222;
          }

          switch(v4)
          {
            case 0xF0005:
              v12 = "SOSBeaconActivateScan";
              goto LABEL_222;
            case 0xF0006:
              v12 = "SOSBeaconActivateAdvA";
              goto LABEL_222;
            case 0xF0007:
              v12 = "SOSBeaconActivateAdvB";
              goto LABEL_222;
          }
        }
      }

      else
      {
        if (v4 > 2147418111)
        {
          switch(v4)
          {
            case 2147418112:
              v12 = "InternalTestNoLockScan";
              break;
            case 2147418113:
              v12 = "InternalTestNoScreenOffScan";
              break;
            case 2147418114:
              v12 = "InternalTestScanWithNoDups";
              break;
            case 2147418115:
              v12 = "InternalTestScanWithDups";
              break;
            case 2147418116:
              v12 = "InternalTestScanFor20Seconds";
              break;
            case 2147418117:
              v12 = "InternalTestActiveScan";
              break;
            case 2147418118:
              v12 = "InternalTestUUIDScan";
              break;
            case 2147418119:
              v12 = "InternalTestScanFor10ClockSeconds";
              break;
            case 2147418120:
              v12 = "InternalTestScanBoost";
              break;
            case 2147418121:
              v12 = "InternalTestDiscoveryScanWithMRC";
              break;
            case 2147418122:
              v12 = "InternalTestAdvWithHigherPower";
              break;
            case 2147418123:
              v12 = "InternalTestScanLowDutyCycleMCOnly";
              break;
            case 2147418124:
              v12 = "InternalTestUUIDScanWithMinRSSI";
              break;
            case 2147418125:
              v12 = "InternalTestUUIDScanWithMinRSSIMediumLow";
              break;
            case 2147418126:
              v12 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
              break;
            case 2147418127:
              v12 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
              break;
            case 2147418128:
              v12 = "InternalTestAdvWithHigherPowerServiceDataS2";
              break;
            case 2147418129:
              v12 = "InternalTestAdvWithHigherPowerServiceDataS8";
              break;
            case 2147418130:
              v12 = "InternalTestDiscoveryScanCodedPHY";
              break;
            default:
              goto LABEL_221;
          }

          goto LABEL_222;
        }

        switch(v4)
        {
          case 0x100000:
            v12 = "DOS";
            goto LABEL_222;
          case 0x100001:
            v12 = "DOD";
            goto LABEL_222;
          case 0x110000:
            v12 = "ProximityServiceDeviceSetup";
            goto LABEL_222;
        }
      }
    }

    else
    {
      if (v4 < 196608)
      {
        switch(v4)
        {
          case 131072:
            v12 = "SharingDefault";
            break;
          case 131073:
            v12 = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            v12 = "SharingSiriWatchAuth";
            break;
          case 131075:
            v12 = "SharingMacAutoUnlock";
            break;
          case 131076:
            v12 = "SharingEDTScreenOn";
            break;
          case 131077:
            v12 = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            v12 = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            v12 = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            v12 = "SharingWombatBackground";
            break;
          case 131081:
            v12 = "SharingUniversalControl";
            break;
          case 131082:
            v12 = "SharingPeopleProximity";
            break;
          case 131083:
            v12 = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            v12 = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            v12 = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            v12 = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            v12 = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            v12 = "SharingOYAutoUnlock";
            break;
          case 131090:
            v12 = "SharingAirDrop";
            break;
          case 131091:
            v12 = "SharingNearbyInvitationHost";
            break;
          case 131092:
            v12 = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            v12 = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            v12 = "SharingAirDropTempIdentity";
            break;
          case 131095:
            v12 = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            v12 = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            v12 = "SharingCountryCodeUpdate";
            break;
          case 131098:
            v12 = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            v12 = "SharingVisionProDiscovery";
            break;
          case 131100:
            v12 = "SharingVisionProStateChange";
            break;
          case 131101:
            v12 = "SharingContinuityScreen";
            break;
          case 131102:
            v12 = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            v12 = "SharingHomePodSetup";
            break;
          default:
            goto LABEL_221;
        }

        goto LABEL_222;
      }

      if (v4 > 393218)
      {
        if (v4 > 458752)
        {
          switch(v4)
          {
            case 0x70001:
              v12 = "PrecisionFindingFindee";
              goto LABEL_222;
            case 0x70002:
              v12 = "SpatialHandoffHome";
              goto LABEL_222;
            case 0x80000:
              v12 = "ADPD";
              goto LABEL_222;
          }
        }

        else
        {
          switch(v4)
          {
            case 0x60003:
              v12 = "AppleIDSignIn";
              goto LABEL_222;
            case 0x60004:
              v12 = "AppleIDSignInSettings";
              goto LABEL_222;
            case 0x70000:
              v12 = "PrecisionFindingFinder";
              goto LABEL_222;
          }
        }
      }

      else
      {
        if (v4 >= 393216)
        {
          if (v4 == 393216)
          {
            v12 = "CaptiveNetworkJoin";
          }

          else if (v4 == 393217)
          {
            v12 = "UseCaseSIMTransfer";
          }

          else
          {
            v12 = "MacSetup";
          }

          goto LABEL_222;
        }

        switch(v4)
        {
          case 0x30000:
            v12 = "DigitalIDTSA";
            goto LABEL_222;
          case 0x40000:
            v12 = "DigitalCarKeyThirdParty";
            goto LABEL_222;
          case 0x50000:
            v12 = "RapportThirdParty";
LABEL_222:
            LogPrintF(&dword_100973248, "[SDNearbyAgent _enableEnhancedDiscovery:useCase:]", 30, "Enable enhanced discovery for reason '%@' use case '%s' (0x%x)\n", discoveryCopy, v12, v4);
            goto LABEL_223;
        }
      }
    }

LABEL_221:
    v12 = "?";
    goto LABEL_222;
  }

LABEL_223:
  self->_enhancedDiscoveryShouldRun = 1;
  self->_enhancedDiscoveryAdvActive = 1;
  v13 = self->_enhancedDiscoveryUseCases;
  v14 = [NSNumber numberWithUnsignedInt:v4];
  [(NSMutableSet *)v13 addObject:v14];

  v22[0] = discoveryCopy;
  v21[0] = @"Reason";
  v21[1] = @"Enabled";
  v15 = [NSNumber numberWithBool:self->_enhancedDiscoveryShouldRun];
  v22[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  SFPowerLogEvent();

  if (!self->_enhancedDiscoveryTimer)
  {
    v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    enhancedDiscoveryTimer = self->_enhancedDiscoveryTimer;
    self->_enhancedDiscoveryTimer = v17;

    v19 = self->_enhancedDiscoveryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100254378;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v19, handler);
    SFDispatchTimerSet();
    dispatch_resume(self->_enhancedDiscoveryTimer);
  }

LABEL_225:
}

- (void)_disableEnhancedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  if (self->_enhancedDiscoveryShouldRun)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_10026571C(discoveryCopy);
    }

    self->_enhancedDiscoveryShouldRun = 0;
    self->_enhancedDiscoveryAdvActive = 0;
    [(NSMutableSet *)self->_enhancedDiscoveryUseCases removeAllObjects];
    enhancedDiscoveryTimer = self->_enhancedDiscoveryTimer;
    if (enhancedDiscoveryTimer)
    {
      v6 = enhancedDiscoveryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_enhancedDiscoveryTimer;
      self->_enhancedDiscoveryTimer = 0;
    }

    v10[1] = @"Enabled";
    v11[0] = discoveryCopy;
    v10[0] = @"Reason";
    v8 = [NSNumber numberWithBool:self->_enhancedDiscoveryShouldRun];
    v11[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    SFPowerLogEvent();
  }
}

- (void)_enhancedDiscoveryScreenChange:(BOOL)change
{
  changeCopy = change;
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery])
  {
    if (changeCopy)
    {
      _activityMonitorLastUserEventDelta = [(SDNearbyAgent *)self _activityMonitorLastUserEventDelta];
      v9 = v8;
      v10 = v8 < 5.0 && v8 > 0.0;
      if (dword_100973248 <= 20)
      {
        if (dword_100973248 != -1 || (_activityMonitorLastUserEventDelta = _LogCategory_Initialize(), _activityMonitorLastUserEventDelta))
        {
          v11 = "no";
          if (v10)
          {
            v11 = "yes";
          }

          _activityMonitorLastUserEventDelta = LogPrintF(&dword_100973248, "[SDNearbyAgent _enhancedDiscoveryScreenChange:]", 20, "Checking user interaction last user=%.2f, within leeway=%s\n", v9, v11);
        }
      }

      if (v10)
      {
        wirelessCritical = [(SDStatusMonitor *)self->_statusMonitor wirelessCritical];
        if (wirelessCritical)
        {
          if (dword_100973248 <= 40)
          {
            if (dword_100973248 != -1 || (wirelessCritical = _LogCategory_Initialize(), wirelessCritical))
            {
              sub_100265794(wirelessCritical, v13, v14);
            }
          }
        }

        else
        {
          _bleNearbyInfoAdvertiserShouldAdvertise = [(SDNearbyAgent *)self _bleNearbyInfoAdvertiserShouldAdvertise];
          if (_bleNearbyInfoAdvertiserShouldAdvertise)
          {

            [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"UserInitiatedScreenOn" useCase:131076];
          }

          else if (dword_100973248 <= 40)
          {
            if (dword_100973248 != -1 || (_bleNearbyInfoAdvertiserShouldAdvertise = _LogCategory_Initialize(), _bleNearbyInfoAdvertiserShouldAdvertise))
            {
              sub_100265778(_bleNearbyInfoAdvertiserShouldAdvertise, v16, v17);
            }
          }
        }
      }

      else if (dword_100973248 <= 40)
      {
        if (dword_100973248 != -1 || (_activityMonitorLastUserEventDelta = _LogCategory_Initialize(), _activityMonitorLastUserEventDelta))
        {
          sub_10026575C(_activityMonitorLastUserEventDelta, v6, v7);
        }
      }
    }

    else
    {

      [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"ScreenOff"];
    }
  }
}

- (void)_checkConditionsForEnhancedDiscovery
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_allowEnhancedDiscovery = -1;
  if ([(SDNearbyAgent *)self _allowEnhancedDiscovery]< 1)
  {

    [(SDNearbyAgent *)self _unregisterForMagicMountUpdates];
  }

  else
  {

    [(SDNearbyAgent *)self _registerForMagicMountUpdates];
  }
}

- (void)_notifyCameraConfigChange
{
  v3 = +[AVCaptureDevice continuityCaptureLastUsedDate];
  v6 = v3;
  if (!v3)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1002658EC(v3, v4, v5);
      }
    }

    v7 = +[NSDistributedNotificationCenter defaultCenter];
    [v7 postNotificationName:@"ContinuityCaptureNotificationOnBoardingComplete" object:@"YES" userInfo:0 deliverImmediately:1];

    if (!self->_cameraConfigChangeTimer)
    {
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      cameraConfigChangeTimer = self->_cameraConfigChangeTimer;
      self->_cameraConfigChangeTimer = v8;

      v10 = self->_cameraConfigChangeTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100254884;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v10, handler);
      SFDispatchTimerSet();
      dispatch_resume(self->_cameraConfigChangeTimer);
    }
  }
}

- (void)_enhancedDiscoveryTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDNearbyAgent *)self _disableEnhancedDiscovery:@"TimerFired"];

  [(SDNearbyAgent *)self _update];
}

- (BOOL)_deviceCanTriggerEnhancedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  if (!self->_enhancedDiscoveryShouldRun && -[SDNearbyAgent _allowEnhancedDiscovery](self, "_allowEnhancedDiscovery") && !-[SDNearbyAgent isWifiCritical](self, "isWifiCritical") && [discoveryCopy enhancedDiscovery] && objc_msgSend(discoveryCopy, "paired"))
  {
    v5 = SFDeviceModel();
    model = [discoveryCopy model];
    if ([model containsString:@"iPhone"])
    {
      if (([v5 containsString:@"iPhone"] & 1) == 0)
      {
        v7 = [v5 containsString:@"Mac"];

        if ((v7 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }
    }

    else
    {
      model2 = [discoveryCopy model];
      if (([model2 containsString:@"Mac"] & 1) == 0)
      {

        goto LABEL_21;
      }

      if (![v5 containsString:@"iPhone"])
      {
        v14 = [v5 containsString:@"Mac"];

        if ((v14 & 1) == 0)
        {
LABEL_21:
          model3 = [discoveryCopy model];
          if ([model3 containsString:@"iPad"])
          {
            if (([v5 containsString:@"iPad"] & 1) == 0)
            {
              v12 = [v5 containsString:@"Mac"];

              if ((v12 & 1) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_29;
            }
          }

          else
          {
            model4 = [discoveryCopy model];
            if (([model4 containsString:@"Mac"] & 1) == 0)
            {

LABEL_37:
              v8 = 0;
              goto LABEL_33;
            }

            if (![v5 containsString:@"iPad"])
            {
              v15 = [v5 containsString:@"Mac"];

              if ((v15 & 1) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_29;
            }
          }

LABEL_29:
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265908(discoveryCopy);
          }

LABEL_32:
          v8 = 1;
LABEL_33:

          goto LABEL_11;
        }

LABEL_16:
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265948(discoveryCopy);
        }

        goto LABEL_32;
      }
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)deviceDiscoveryRequestStart:(id)start
{
  startCopy = start;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100254C68;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_deviceDiscoveryRequestStart:(id)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_100265988(v5, v6, v7);
    }
  }

  ddRequests = self->_ddRequests;
  if (!ddRequests)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_ddRequests;
    self->_ddRequests = v9;

    ddRequests = self->_ddRequests;
  }

  [(NSMutableSet *)ddRequests addObject:startCopy];
  if (([startCopy discoveryFlags] & 0x20) != 0)
  {
    idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)self idsBluetoothDeviceIDsForSharing];
LABEL_14:
    v11 = idsBluetoothDeviceIDsForSharing;
    [startCopy setDeviceFilter:idsBluetoothDeviceIDsForSharing];
    goto LABEL_15;
  }

  if (([startCopy discoveryFlags] & 0x100000) != 0)
  {
    idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForMe];
    goto LABEL_14;
  }

  if (([startCopy discoveryFlags] & 0x200000) != 0)
  {
    idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForHomePods];
    goto LABEL_14;
  }

  if (([startCopy discoveryFlags] & 0x1000000) == 0)
  {
    goto LABEL_16;
  }

  v11 = +[SDAutoUnlockTransport sharedTransport];
  approveBluetoothIDs = [v11 approveBluetoothIDs];
  [startCopy setDeviceFilter:approveBluetoothIDs];

LABEL_15:
LABEL_16:
  selfCopy = self;
  if (([startCopy discoveryFlags] & 0x10) != 0)
  {
    scanState = [(SFBLEScanner *)self->_bleNearbyActionScanner scanState];
    self->_ddNearbyActionEnabled = 1;
    if ([startCopy overrideScreenOff])
    {
      self->_ddNearbyActionScreenOff = 1;
    }

    deviceFoundHandler = [startCopy deviceFoundHandler];

    if (!deviceFoundHandler)
    {
      goto LABEL_35;
    }

    v16 = 440;
    goto LABEL_34;
  }

  if ([startCopy discoveryFlags])
  {
    scanState = [(SFBLEScanner *)self->_bleNearbyInfoScanner scanState];
    self->_ddNearbyInfoEnabled = 1;
    if ([startCopy overrideScreenOff])
    {
      self->_ddNearbyInfoScreenOff = 1;
    }

    deviceFoundHandler = [startCopy deviceFoundHandler];

    if (!deviceFoundHandler)
    {
      goto LABEL_35;
    }

    v16 = 456;
    goto LABEL_34;
  }

  if (([startCopy discoveryFlags] & 2) == 0)
  {
    deviceFoundHandler = 0;
    goto LABEL_38;
  }

  scanState = [(SFBLEScanner *)self->_bleProximityPairingScanner scanState];
  if (![startCopy rssiThreshold])
  {
    [startCopy setRssiThreshold:-60];
  }

  self->_ddProximityPairingEnabled = 1;
  if ([startCopy overrideScreenOff])
  {
    self->_ddProximityPairingScreenOff = 1;
  }

  deviceFoundHandler = [startCopy deviceFoundHandler];

  if (deviceFoundHandler)
  {
    v16 = 472;
LABEL_34:
    deviceFoundHandler = *(&self->super.isa + v16);
  }

LABEL_35:
  if (scanState)
  {
    scanStateChangedHandler = [startCopy scanStateChangedHandler];

    if (scanStateChangedHandler)
    {
      scanStateChangedHandler2 = [startCopy scanStateChangedHandler];
      (scanStateChangedHandler2)[2](scanStateChangedHandler2, scanState);
    }
  }

LABEL_38:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = deviceFoundHandler;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      v23 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        v25 = [v19 objectForKeyedSubscript:v24];
        if (v25)
        {
          deviceFilter = [startCopy deviceFilter];
          if (!deviceFilter || (v27 = deviceFilter, [startCopy deviceFilter], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "containsObject:", v24), v28, v27, v29))
          {
            if ([startCopy rssiThreshold] && (objc_msgSend(v25, "bleDevice"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "rssi"), v32 = objc_msgSend(startCopy, "rssiThreshold"), v30, v31 < v32))
            {
              if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_100973248, "[SDNearbyAgent _deviceDiscoveryRequestStart:]", 10, "Skip reporting device found %@ with low RSSI to %@\n", v25, startCopy);
              }
            }

            else
            {
              deviceFoundHandler2 = [startCopy deviceFoundHandler];
              (deviceFoundHandler2)[2](deviceFoundHandler2, v25);
            }
          }
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v34 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v21 = v34;
    }

    while (v34);
  }

  if ([startCopy fastScanMode] == 1)
  {
    [(SDNearbyAgent *)selfCopy _deviceDiscoveryFastScanStart:startCopy device:0 reason:@"Start"];
  }

  [(SDNearbyAgent *)selfCopy _update];
}

- (void)deviceDiscoveryRequestStop:(id)stop
{
  stopCopy = stop;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1002659A4(v5, v6, v7);
    }
  }

  [(NSMutableSet *)self->_ddRequests removeObject:stopCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_ddRequests;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {

    LOBYTE(v15) = 0;
    v14 = 0;
    LOBYTE(v13) = 0;
    v20 = 0;
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v24 = stopCopy;
  selfCopy = self;
  v11 = 0;
  v12 = 0;
  v26 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *v28;
  do
  {
    v17 = v8;
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v27 + 1) + 8 * i);
      if (([v19 discoveryFlags] & 0x10) != 0)
      {
        v12 |= [v19 overrideScreenOff];
        v11 = 1;
      }

      if ([v19 discoveryFlags])
      {
        v13 |= [v19 overrideScreenOff];
        v26 = 1;
      }

      if (([v19 discoveryFlags] & 2) != 0)
      {
        v15 |= [v19 overrideScreenOff];
        v14 = 1;
      }
    }

    v8 = v17;
    v10 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    stopCopy = v24;
    self = selfCopy;
    v20 = v26;
LABEL_22:
    self->_ddNearbyActionEnabled = 0;
    [(NSMutableDictionary *)self->_ddNearbyActionDevices removeAllObjects];
    ddNearbyActionDevices = self->_ddNearbyActionDevices;
    self->_ddNearbyActionDevices = 0;

    self->_ddNearbyActionScreenOff = v12 & 1;
    if (v20)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  stopCopy = v24;
  self = selfCopy;
  selfCopy->_ddNearbyActionScreenOff = v12 & 1;
  if ((v26 & 1) == 0)
  {
LABEL_23:
    self->_ddNearbyInfoEnabled = 0;
    [(NSMutableDictionary *)self->_ddNearbyInfoDevices removeAllObjects];
    ddNearbyInfoDevices = self->_ddNearbyInfoDevices;
    self->_ddNearbyInfoDevices = 0;
  }

LABEL_24:
  self->_ddNearbyInfoScreenOff = v13 & 1;
  if ((v14 & 1) == 0)
  {
    self->_ddProximityPairingEnabled = 0;
    [(NSMutableDictionary *)self->_ddProximityPairingDevices removeAllObjects];
    ddProximityPairingDevices = self->_ddProximityPairingDevices;
    self->_ddProximityPairingDevices = 0;
  }

  self->_ddProximityPairingScreenOff = v15 & 1;
  [(SDNearbyAgent *)self _identificationHandleDiscoveryStop];
  [(SDNearbyAgent *)self _update];
}

- (void)deviceDiscoveryRequestUpdate:(id)update
{
  updateCopy = update;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100255448;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)deviceDiscoveryFastScanTrigger:(id)trigger reason:(id)reason
{
  dispatchQueue = self->_dispatchQueue;
  reasonCopy = reason;
  triggerCopy = trigger;
  dispatch_assert_queue_V2(dispatchQueue);
  [(SDNearbyAgent *)self _deviceDiscoveryFastScanStart:triggerCopy device:0 reason:reasonCopy];
}

- (void)deviceDiscoveryFastScanCancel:(id)cancel reason:(id)reason
{
  dispatchQueue = self->_dispatchQueue;
  reasonCopy = reason;
  cancelCopy = cancel;
  dispatch_assert_queue_V2(dispatchQueue);
  [cancelCopy setFastScanMode:0];
  [(SDNearbyAgent *)self _deviceDiscoveryFastScanStop:cancelCopy reset:1 reason:reasonCopy];
}

- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery reason:(id)reason
{
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _allowEnhancedDiscovery = [(SDNearbyAgent *)self _allowEnhancedDiscovery];
  if (_allowEnhancedDiscovery)
  {
    if (dword_100973248 <= 60)
    {
      if (dword_100973248 != -1 || (_allowEnhancedDiscovery = _LogCategory_Initialize(), _allowEnhancedDiscovery))
      {
        sub_1002659C0(_allowEnhancedDiscovery, v6, v7);
      }
    }

    [(SDNearbyAgent *)self _enableEnhancedDiscovery:reasonCopy useCase:0];
    [(SDNearbyAgent *)self _update];
  }

  else if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (_allowEnhancedDiscovery = _LogCategory_Initialize(), _allowEnhancedDiscovery))
    {
      sub_1002659DC(_allowEnhancedDiscovery, v6, v7);
    }
  }
}

- (void)deviceDiscoveryTriggerEnhancedDiscovery:(id)discovery reason:(id)reason useCase:(unsigned int)case
{
  v5 = *&case;
  discoveryCopy = discovery;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _allowEnhancedDiscovery = [(SDNearbyAgent *)self _allowEnhancedDiscovery];
  if (_allowEnhancedDiscovery)
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002659F8();
    }

    [(SDNearbyAgent *)self _enableEnhancedDiscovery:reasonCopy useCase:v5];
    [(SDNearbyAgent *)self _update];
  }

  else if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (_allowEnhancedDiscovery = _LogCategory_Initialize(), _allowEnhancedDiscovery))
    {
      sub_100265A8C(_allowEnhancedDiscovery, v10, v11);
    }
  }
}

- (void)_deviceDiscoveryFastScanEvaluate:(id)evaluate device:(id)device
{
  evaluateCopy = evaluate;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activityScreenOn && self->_activityUIUnlocked && [evaluateCopy fastScanMode] == 2)
  {
    if ([evaluateCopy rssiThreshold])
    {
      bleDevice = [deviceCopy bleDevice];
      if ([bleDevice rssi])
      {
        bleDevice2 = [deviceCopy bleDevice];
        rssi = [bleDevice2 rssi];
        rssiThreshold = [evaluateCopy rssiThreshold];

        if (rssi < rssiThreshold)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    discoveryFlags = [evaluateCopy discoveryFlags];
    if (discoveryFlags & 0x20000) != 0 && ([deviceCopy needsAWDL])
    {
      v12 = @"MatchAWDL";
      goto LABEL_25;
    }

    if (discoveryFlags & 0x40) != 0 && ([deviceCopy needsKeyboardOnly])
    {
      v12 = @"MatchKeyboard";
      goto LABEL_25;
    }

    if ((discoveryFlags & 2) != 0)
    {
      v12 = @"MatchProx";
      goto LABEL_25;
    }

    if ((discoveryFlags & 0xE01FF80) != 0 && [deviceCopy needsSetup])
    {
      deviceActionType = [deviceCopy deviceActionType];
      if (deviceActionType > 19)
      {
        if (deviceActionType <= 32)
        {
          if (deviceActionType == 20)
          {
            v14 = 0x4000;
            goto LABEL_50;
          }

          if (deviceActionType == 21)
          {
            v14 = 0x8000;
            goto LABEL_50;
          }
        }

        else
        {
          switch(deviceActionType)
          {
            case '!':
              v14 = 0x2000000;
              goto LABEL_50;
            case '$':
              v14 = 0x4000000;
              goto LABEL_50;
            case 'Z':
              v14 = 0x8000000;
              goto LABEL_50;
          }
        }
      }

      else if (deviceActionType <= 8)
      {
        if (deviceActionType == 1)
        {
          v14 = 128;
          goto LABEL_50;
        }

        if (deviceActionType == 8)
        {
          v14 = 2048;
          goto LABEL_50;
        }
      }

      else
      {
        switch(deviceActionType)
        {
          case 9:
            v14 = 512;
            goto LABEL_50;
          case 11:
            v14 = 256;
            goto LABEL_50;
          case 13:
            v14 = 1024;
LABEL_50:
            if ((v14 & discoveryFlags) == 0)
            {
              goto LABEL_26;
            }

            v12 = @"MatchSetup";
LABEL_25:
            [(SDNearbyAgent *)self _deviceDiscoveryFastScanStart:evaluateCopy device:deviceCopy reason:v12];
            goto LABEL_26;
        }
      }

      v14 = 0;
      goto LABEL_50;
    }

    if ((discoveryFlags & 0x800000) != 0 && ([deviceCopy deviceFlags] & 0x200) != 0)
    {
      v12 = @"MatchClose";
      goto LABEL_25;
    }
  }

LABEL_26:
}

- (void)_deviceDiscoveryFastScanStart:(id)start device:(id)device reason:(id)reason
{
  startCopy = start;
  deviceCopy = device;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  activityScreenOn = self->_activityScreenOn;
  if (activityScreenOn && self->_activityUIUnlocked)
  {
    mach_absolute_time();
    v12 = UpTicksToSeconds();
    if (v12 > 0x63)
    {
      if (![startCopy scanRateOverride])
      {
        if (deviceCopy)
        {
          if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100265AA8(deviceCopy);
          }
        }

        else if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100265B10(reasonCopy);
        }

        [startCopy setScanRateOverride:50];
        [(SDNearbyAgent *)self _update];
      }

      if (!self->_ddFastScanTimer)
      {
        v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        ddFastScanTimer = self->_ddFastScanTimer;
        self->_ddFastScanTimer = v16;

        v18 = self->_ddFastScanTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100255FA0;
        handler[3] = &unk_1008CE900;
        handler[4] = self;
        v20 = startCopy;
        v21 = reasonCopy;
        dispatch_source_set_event_handler(v18, handler);
        SFDispatchTimerSet();
        dispatch_resume(self->_ddFastScanTimer);
      }
    }

    else if (!deviceCopy && dword_100973248 <= 30)
    {
      v13 = v12;
      if (dword_100973248 != -1 || _LogCategory_Initialize())
      {
        sub_100265B50(v13);
      }
    }
  }

  else if (!deviceCopy && dword_100973248 <= 30)
  {
    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      LOBYTE(activityScreenOn) = self->_activityScreenOn;
    }

    if (activityScreenOn)
    {
      v14 = "on";
    }

    else
    {
      v14 = "off";
    }

    if (self->_activityUIUnlocked)
    {
      v15 = "yes";
    }

    else
    {
      v15 = "no";
    }

    LogPrintF(&dword_100973248, "[SDNearbyAgent _deviceDiscoveryFastScanStart:device:reason:]", 30, "Fast scan start ignored for UI state (screen %s, unlocked %s)\n", v14, v15);
  }

LABEL_33:
}

- (void)_deviceDiscoveryFastScanStop:(id)stop reset:(BOOL)reset reason:(id)reason
{
  resetCopy = reset;
  stopCopy = stop;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([stopCopy scanRateOverride])
  {
    v10 = resetCopy;
  }

  else
  {
    v10 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_ddRequests;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {

    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v23;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      if ([v17 scanRateOverride])
      {
        [v17 setScanRateOverride:0];
        v14 = 1;
      }
    }

    v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);

  if ((v14 & 1) == 0)
  {
LABEL_20:
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265B94(reasonCopy);
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_18:
  v18 = mach_absolute_time();
LABEL_22:
  self->_ddFastScanLastEndTicks = v18;
LABEL_23:
  ddFastScanTimer = self->_ddFastScanTimer;
  if (ddFastScanTimer)
  {
    v20 = ddFastScanTimer;
    dispatch_source_cancel(v20);
    v21 = self->_ddFastScanTimer;
    self->_ddFastScanTimer = 0;
  }

  [(SDNearbyAgent *)self _update];
}

- (void)_deviceDiscoveryBLEDeviceFound:(id)found type:(int64_t)type
{
  foundCopy = found;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v42 = foundCopy;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v7 = objc_alloc_init(SFDevice);
    [v7 updateWithBLEDevice:foundCopy];
    _idsBluetoothDeviceIDsForMe = [(SDNearbyAgent *)self _idsBluetoothDeviceIDsForMe];
    if ([_idsBluetoothDeviceIDsForMe containsObject:identifier])
    {
      if (([v7 autoUnlockEnabled] & 1) != 0 || (objc_msgSend(v7, "model"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"Watch"), v8, (v9 & 1) == 0))
      {
        [v7 setDeviceFlags:{objc_msgSend(v7, "deviceFlags") | 1}];
      }
    }

    if (type == 7)
    {
      ddProximityPairingDevices = self->_ddProximityPairingDevices;
      if (!ddProximityPairingDevices)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = self->_ddProximityPairingDevices;
        self->_ddProximityPairingDevices = v21;

        ddProximityPairingDevices = self->_ddProximityPairingDevices;
      }

      v40 = ddProximityPairingDevices;
      v16 = 2;
    }

    else
    {
      selfCopy3 = self;
      if (type == 16)
      {
        [(SDNearbyAgent *)self _bleProximityUpdateNearbyInfoDevice:v7];
        [(SDNearbyAgent *)self _identificationHandleDeviceFound:v7 flags:1];
        ddNearbyInfoDevices = self->_ddNearbyInfoDevices;
        if (!ddNearbyInfoDevices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_ddNearbyInfoDevices;
          self->_ddNearbyInfoDevices = v18;

          ddNearbyInfoDevices = self->_ddNearbyInfoDevices;
        }

        v40 = ddNearbyInfoDevices;
        if ([(SDNearbyAgent *)self _deviceCanTriggerEnhancedDiscovery:v7])
        {
          [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"IncomingAdv" useCase:131086];
          self->_enhancedDiscoveryAdvActive = 0;
          [(SDNearbyAgent *)self update];
        }

        v16 = 1;
      }

      else
      {
        if (type != 15)
        {
LABEL_55:

          goto LABEL_56;
        }

        if ([v7 deviceActionType] == 10)
        {
          idsIdentifier = [v7 idsIdentifier];
          v12 = [idsIdentifier length];

          selfCopy3 = self;
          if (!v12)
          {
            [(SDNearbyAgent *)self idsAddCachedIDSIdentifierToDevice:v7];
          }
        }

        [(SDNearbyAgent *)selfCopy3 _bleProximityUpdateNearbyActionDevice:v7];
        [(SDNearbyAgent *)selfCopy3 _identificationHandleDeviceFound:v7 flags:16];
        ddNearbyActionDevices = selfCopy3->_ddNearbyActionDevices;
        if (!ddNearbyActionDevices)
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          v15 = selfCopy3->_ddNearbyActionDevices;
          selfCopy3->_ddNearbyActionDevices = v14;

          ddNearbyActionDevices = selfCopy3->_ddNearbyActionDevices;
        }

        v40 = ddNearbyActionDevices;
        v16 = 16;
      }
    }

    rapportIdentifier = [v7 rapportIdentifier];
    v24 = rapportIdentifier;
    if (rapportIdentifier)
    {
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = sub_100249B98;
      v56 = sub_100249BA8;
      v57 = 0;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100256830;
      v49[3] = &unk_1008D5870;
      v49[4] = rapportIdentifier;
      v50 = identifier;
      v51 = &v52;
      [(NSMutableDictionary *)v40 enumerateKeysAndObjectsUsingBlock:v49];
      v25 = v53[5];
      if (v25 && ([v25 paired] & 1) == 0 && (objc_msgSend(v53[5], "deviceFlags") & 0x8000) == 0)
      {
        bleDevice = [v53[5] bleDevice];
        [v53[5] setIsBLEDeviceReplaced:1];
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100973248, "[SDNearbyAgent _deviceDiscoveryBLEDeviceFound:type:]", 30, "Replace old device: %s, %@ -> %@\n", off_1008D6118[type - 7], v53[5], v7);
        }

        [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:bleDevice type:type];
      }

      _Block_object_dispose(&v52, 8);
    }

    [(NSMutableDictionary *)v40 setObject:v7 forKeyedSubscript:identifier];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = self->_ddRequests;
    v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v28)
    {
      v29 = *v46;
      do
      {
        v30 = 0;
        do
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v45 + 1) + 8 * v30);
          if (([v31 discoveryFlags] & v16) != 0)
          {
            deviceFilter = [v31 deviceFilter];
            if (!deviceFilter || ([v31 deviceFilter], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "containsObject:", identifier), v33, deviceFilter, v34))
            {
              if ([v31 rssiThreshold] && (objc_msgSend(v7, "bleDevice"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "rssi"), LODWORD(v36) = v36 < objc_msgSend(v31, "rssiThreshold"), v35, v36))
              {
                if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_100973248, "[SDNearbyAgent _deviceDiscoveryBLEDeviceFound:type:]", 10, "Skip reporting device found %@ with low RSSI to %@\n", v7, v31);
                }
              }

              else
              {
                deviceFoundHandler = [v31 deviceFoundHandler];

                if (deviceFoundHandler)
                {
                  deviceFoundHandler2 = [v31 deviceFoundHandler];
                  (deviceFoundHandler2)[2](deviceFoundHandler2, v7);
                }

                [(SDNearbyAgent *)selfCopy _deviceDiscoveryFastScanEvaluate:v31 device:v7];
              }
            }
          }

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v39 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v45 objects:v58 count:16];
        v28 = v39;
      }

      while (v39);
    }

    goto LABEL_55;
  }

LABEL_56:
}

- (void)_deviceDiscoveryBLEDeviceLost:(id)lost type:(int64_t)type
{
  identifier = [lost identifier];
  if (identifier)
  {
    if (type == 7)
    {
      v14 = [(NSMutableDictionary *)self->_ddProximityPairingDevices objectForKeyedSubscript:identifier];
      if (!v14)
      {
        goto LABEL_23;
      }

      v8 = v14;
      [(NSMutableDictionary *)self->_ddProximityPairingDevices removeObjectForKey:identifier];
      v9 = 2;
    }

    else
    {
      if (type == 16)
      {
        v13 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:identifier];
        if (!v13)
        {
          goto LABEL_23;
        }

        v8 = v13;
        [(NSMutableDictionary *)self->_ddNearbyInfoDevices removeObjectForKey:identifier];
        v9 = 1;
        selfCopy2 = self;
        v11 = v8;
        v12 = 1;
      }

      else
      {
        if (type != 15)
        {
          goto LABEL_23;
        }

        v7 = [(NSMutableDictionary *)self->_ddNearbyActionDevices objectForKeyedSubscript:identifier];
        if (!v7)
        {
          goto LABEL_23;
        }

        v8 = v7;
        [(NSMutableDictionary *)self->_ddNearbyActionDevices removeObjectForKey:identifier];
        v9 = 16;
        selfCopy2 = self;
        v11 = v8;
        v12 = 16;
      }

      [(SDNearbyAgent *)selfCopy2 _identificationHandleDeviceLost:v11 flags:v12];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = self->_ddRequests;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          if (([v20 discoveryFlags] & v9) != 0)
          {
            deviceLostHandler = [v20 deviceLostHandler];

            if (deviceLostHandler)
            {
              deviceLostHandler2 = [v20 deviceLostHandler];
              (deviceLostHandler2)[2](deviceLostHandler2, v8);
            }
          }
        }

        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

LABEL_23:
}

- (void)_deviceDiscoveryBLEDeviceChanged:(id)changed type:(int64_t)type changes:(unsigned int)changes
{
  v40 = *&changes;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [changedCopy identifier];
  if (identifier)
  {
    switch(type)
    {
      case 7:
        v17 = [(NSMutableDictionary *)self->_ddProximityPairingDevices objectForKeyedSubscript:identifier];
        if (!v17)
        {
          goto LABEL_43;
        }

        v37 = changedCopy;
        v38 = v17;
        [v17 updateWithBLEDevice:changedCopy];
        v16 = 2;
        break;
      case 16:
        v14 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:identifier];
        if (!v14)
        {
          goto LABEL_43;
        }

        v15 = v14;
        [v14 updateWithBLEDevice:changedCopy];
        LODWORD(v40) = [(SDNearbyAgent *)self _bleProximityUpdateNearbyInfoDevice:v15]| v40;
        v16 = 1;
        [(SDNearbyAgent *)self _identificationHandleDeviceFound:v15 flags:1];
        v37 = changedCopy;
        v38 = v15;
        if ([(SDNearbyAgent *)self _deviceCanTriggerEnhancedDiscovery:v15])
        {
          [(SDNearbyAgent *)self _enableEnhancedDiscovery:@"IncomingAdv" useCase:131086];
          self->_enhancedDiscoveryAdvActive = 0;
          [(SDNearbyAgent *)self update];
          v16 = 1;
        }

        break;
      case 15:
        v8 = [(NSMutableDictionary *)self->_ddNearbyActionDevices objectForKeyedSubscript:identifier];
        if (!v8)
        {
          goto LABEL_43;
        }

        v9 = v8;
        deviceActionType = [v8 deviceActionType];
        [v9 updateWithBLEDevice:changedCopy];
        deviceActionType2 = [v9 deviceActionType];
        if (deviceActionType2 != deviceActionType)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            v12 = sub_100256F3C(deviceActionType);
            v13 = sub_100256F3C(deviceActionType2);
            LogPrintF(&dword_100973248, "[SDNearbyAgent _deviceDiscoveryBLEDeviceChanged:type:changes:]", 30, "BLE action type changed: %s -> %s, cflags %#{flags}, %@\n", v12, v13, v40, &unk_1007F54DE, changedCopy);
          }

          bleDevice = [v9 bleDevice];
          [bleDevice setSetupProximityEstimator:0];
          [bleDevice setTriggered:0];
        }

        if (deviceActionType2 == 10)
        {
          idsIdentifier = [v9 idsIdentifier];
          v20 = [idsIdentifier length];

          if (!v20)
          {
            [(SDNearbyAgent *)self idsAddCachedIDSIdentifierToDevice:v9];
          }
        }

        LODWORD(v40) = [(SDNearbyAgent *)self _bleProximityUpdateNearbyActionDevice:v9]| v40;
        v37 = changedCopy;
        v38 = v9;
        v16 = 16;
        if (v40)
        {
          [(SDNearbyAgent *)self _identificationHandleDeviceFound:v9 flags:16];
        }

        break;
      default:
        goto LABEL_43;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    selfCopy = self;
    v22 = self->_ddRequests;
    v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v41 + 1) + 8 * i);
          if (([v27 discoveryFlags] & v16) != 0)
          {
            deviceFilter = [v27 deviceFilter];
            if (!deviceFilter || (v29 = deviceFilter, [v27 deviceFilter], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "containsObject:", identifier), v30, v29, v31))
            {
              changeFlags = [v27 changeFlags];
              if (([v27 discoveryFlags] & 1) != 0 && objc_msgSend(v27, "rssiChangeDetection"))
              {
                changeFlags |= 4u;
              }

              v33 = changeFlags & v40;
              if (changeFlags == -1 || v33 != 0)
              {
                deviceChangedHandler = [v27 deviceChangedHandler];

                if (deviceChangedHandler)
                {
                  deviceChangedHandler2 = [v27 deviceChangedHandler];
                  (deviceChangedHandler2)[2](deviceChangedHandler2, v38, v33);
                }

                [(SDNearbyAgent *)selfCopy _deviceDiscoveryFastScanEvaluate:v27 device:v38];
              }
            }
          }
        }

        v24 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v24);
    }

    changedCopy = v37;
  }

LABEL_43:
}

- (void)_deviceDiscoveryBLEScanStateChanged:(int64_t)changed type:(int64_t)type
{
  switch(type)
  {
    case 7:
      v5 = 2;
      break;
    case 15:
      v5 = 16;
      break;
    case 16:
      v5 = 1;
      break;
    default:
      return;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_ddRequests;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 discoveryFlags] & v5) != 0)
        {
          scanStateChangedHandler = [v11 scanStateChangedHandler];

          if (scanStateChangedHandler)
          {
            scanStateChangedHandler2 = [v11 scanStateChangedHandler];
            scanStateChangedHandler2[2](scanStateChangedHandler2, changed);
          }
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)diagnosticBLEModeStart:(id)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_100265BD4(v4, v5, v6);
    }
  }

  bleDiagnosticModeClients = self->_bleDiagnosticModeClients;
  if (!bleDiagnosticModeClients)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_bleDiagnosticModeClients;
    self->_bleDiagnosticModeClients = v8;

    bleDiagnosticModeClients = self->_bleDiagnosticModeClients;
  }

  [(NSMutableSet *)bleDiagnosticModeClients addObject:startCopy];
  [(SDNearbyAgent *)self _update];
}

- (void)diagnosticBLEModeStop:(id)stop
{
  stopCopy = stop;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_100265BF0(v4, v5, v6);
    }
  }

  [(NSMutableSet *)self->_bleDiagnosticModeClients removeObject:stopCopy];
  [(SDNearbyAgent *)self _update];
}

- (void)diagnosticMockChanged:(id)changed
{
  changedCopy = changed;
  v6 = changedCopy;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), changedCopy = v6, v5))
    {
      sub_100265C0C(changedCopy);
      changedCopy = v6;
    }
  }

  [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceChanged:changedCopy type:15 changes:0];
}

- (void)diagnosticMockFound:(id)found
{
  foundCopy = found;
  v6 = foundCopy;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), foundCopy = v6, v5))
    {
      sub_100265C4C(foundCopy);
      foundCopy = v6;
    }
  }

  [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceFound:foundCopy type:15];
}

- (void)diagnosticMockLost:(id)lost
{
  lostCopy = lost;
  v6 = lostCopy;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), lostCopy = v6, v5))
    {
      sub_100265C8C(lostCopy);
      lostCopy = v6;
    }
  }

  [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceLost:lostCopy type:15];
}

- (void)_identificationCheckFlagsAndACL
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_idIdentityArray;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (!v2)
  {
    v27 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_35;
  }

  v4 = v2;
  v27 = 0;
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = *v30;
  do
  {
    v8 = 0;
    do
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      if (([v9 featureFlags] & 4) != 0)
      {
        v10 = *(p_opt_class_meths + 146);
        if (v10 <= 30 && (v10 != -1 || _LogCategory_Initialize()))
        {
          sub_100265CCC(v9);
        }

        BYTE4(v27) = 1;
      }

      if (v6)
      {
        goto LABEL_12;
      }

      if ([v9 type] == 13)
      {
        v11 = *(p_opt_class_meths + 146);
        if (v11 <= 30 && (v11 != -1 || _LogCategory_Initialize()))
        {
          sub_100265D0C(v9);
        }

LABEL_12:
        v6 = 1;
        goto LABEL_19;
      }

      v6 = 0;
LABEL_19:
      if (objc_opt_respondsToSelector())
      {
        v12 = [v9 performSelector:"acl"];

        if (v12)
        {
          v13 = p_opt_class_meths;
          v14 = [v12 objectForKeyedSubscript:@"com.apple.developer"];
          bOOLValue = [v14 BOOLValue];

          if (bOOLValue)
          {
            p_opt_class_meths = v13;
            v16 = *(v13 + 146);
            if (v16 <= 30 && (v16 != -1 || _LogCategory_Initialize()))
            {
              sub_100265D4C(v9);
            }

            LOBYTE(v27) = 1;
            v5 = v12;
          }

          else
          {
            v5 = v12;
            p_opt_class_meths = v13;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      v8 = v8 + 1;
    }

    while (v4 != v8);
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v4 = v17;
  }

  while (v17);
LABEL_35:

  v18 = BYTE4(v27) & 1;
  fitnessPairingEnabled = self->_fitnessPairingEnabled;
  if (fitnessPairingEnabled != v18)
  {
    v20 = *(p_opt_class_meths + 146);
    if (v20 <= 30)
    {
      if (v20 != -1)
      {
        goto LABEL_38;
      }

      if (_LogCategory_Initialize())
      {
        fitnessPairingEnabled = self->_fitnessPairingEnabled;
LABEL_38:
        LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationCheckFlagsAndACL]", 30, "fitness pairing changed from %d to %d", fitnessPairingEnabled, v18);
      }
    }

    self->_fitnessPairingEnabled = v18;
  }

  sessionPairingEnabled = self->_sessionPairingEnabled;
  if (sessionPairingEnabled != v6)
  {
    v22 = *(p_opt_class_meths + 146);
    if (v22 <= 30)
    {
      if (v22 != -1)
      {
        goto LABEL_44;
      }

      if (_LogCategory_Initialize())
      {
        sessionPairingEnabled = self->_sessionPairingEnabled;
LABEL_44:
        LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationCheckFlagsAndACL]", 30, "session pairing changed from %d to %d", sessionPairingEnabled, v6);
      }
    }

    self->_sessionPairingEnabled = v6;
  }

  v23 = v27 & 1;
  coreDeviceEnabled = self->_coreDeviceEnabled;
  if (coreDeviceEnabled != v23)
  {
    v25 = *(p_opt_class_meths + 146);
    if (v25 <= 30)
    {
      if (v25 != -1)
      {
        goto LABEL_50;
      }

      if (_LogCategory_Initialize())
      {
        coreDeviceEnabled = self->_coreDeviceEnabled;
LABEL_50:
        LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationCheckFlagsAndACL]", 30, "CoreDevice changed from %d to %d", coreDeviceEnabled, v23);
      }
    }

    self->_coreDeviceEnabled = v23;
  }
}

- (void)_identificationEnsureStopped
{
  idIdentitiesChangedNotifyToken = self->_idIdentitiesChangedNotifyToken;
  if (idIdentitiesChangedNotifyToken != -1)
  {
    if (dword_100973248 > 30)
    {
      goto LABEL_6;
    }

    if (dword_100973248 != -1 || (idIdentitiesChangedNotifyToken = _LogCategory_Initialize(), idIdentitiesChangedNotifyToken))
    {
      sub_100265DE0(idIdentitiesChangedNotifyToken, a2, v2);
    }

    LODWORD(idIdentitiesChangedNotifyToken) = self->_idIdentitiesChangedNotifyToken;
    if (idIdentitiesChangedNotifyToken != -1)
    {
LABEL_6:
      notify_cancel(idIdentitiesChangedNotifyToken);
      self->_idIdentitiesChangedNotifyToken = -1;
    }
  }

  idMaintenanceTimer = self->_idMaintenanceTimer;
  if (idMaintenanceTimer)
  {
    v6 = idMaintenanceTimer;
    dispatch_source_cancel(v6);
    v7 = self->_idMaintenanceTimer;
    self->_idMaintenanceTimer = 0;
  }

  [(NSMutableDictionary *)self->_idDevices removeAllObjects];
  idDevices = self->_idDevices;
  self->_idDevices = 0;
}

- (void)_identificationGetIdentities
{
  selfCopy = self;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100265DFC(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(RPClient);
  [v4 setDispatchQueue:selfCopy->_dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002579A4;
  v6[3] = &unk_1008CF0C8;
  v6[4] = selfCopy;
  v7 = v4;
  v5 = v4;
  [v5 getIdentitiesWithFlags:28075 completion:v6];
}

- (id)idsDeviceIDsForFamily
{
  v3 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_idIdentityArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 type] == 4 || objc_msgSend(v9, "type") == 2)
        {
          model = [v9 model];
          v11 = [model hasPrefix:@"AppleTV"];

          if (v11)
          {
            idsDeviceID = [v9 idsDeviceID];
            if (idsDeviceID)
            {
              v13 = idsDeviceID;
              [v3 addObject:idsDeviceID];
            }
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_identificationHandleDeviceFound:(id)found flags:(unint64_t)flags
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (!identifier)
  {
    goto LABEL_94;
  }

  bleDevice = [foundCopy bleDevice];
  v8 = objc_msgSend_advertisementFields(bleDevice);
  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:identifier];
  if (v10)
  {
    idsIdentifier = v10;
    authTag = [(SDBLEIdentifiedDevice *)v10 authTag];
    v13 = v9;
    v14 = v9;
    v15 = authTag;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if ((v14 != 0) != (v15 == 0))
      {
        v17 = [v14 isEqual:v15];

        if (v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(SDBLEIdentifiedDevice *)idsIdentifier setAuthTag:v14];
      CFDataGetTypeID();
      [(SDBLEIdentifiedDevice *)idsIdentifier setBtAddr:CFDictionaryGetTypedValue()];
    }

LABEL_14:
    v9 = v13;
LABEL_15:
    [(SDNearbyAgent *)self _identificationIdentifyDevice:idsIdentifier sfDevice:foundCopy];
    identity = [(SDBLEIdentifiedDevice *)idsIdentifier identity];
    [(SDBLEIdentifiedDevice *)idsIdentifier setDiscoveryFlags:[(SDBLEIdentifiedDevice *)idsIdentifier discoveryFlags]| flags];
    goto LABEL_42;
  }

  if (![foundCopy paired])
  {
    p_idDevices = &self->_idDevices;
    if ([(NSMutableDictionary *)self->_idDevices count]> 0x257)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100265EC8(&self->_idDevices, foundCopy);
      }

      identity = 0;
LABEL_25:
      idsIdentifier = 0;
      goto LABEL_42;
    }

    idsIdentifier = objc_alloc_init(SDBLEIdentifiedDevice);
    [(SDBLEIdentifiedDevice *)idsIdentifier setAuthTag:v9];
    CFDataGetTypeID();
    [(SDBLEIdentifiedDevice *)idsIdentifier setBtAddr:CFDictionaryGetTypedValue()];
    [(SDBLEIdentifiedDevice *)idsIdentifier setIdentifier:identifier];
    v21 = *p_idDevices;
    if (!*p_idDevices)
    {
      v22 = objc_alloc_init(NSMutableDictionary);
      v23 = *p_idDevices;
      *p_idDevices = v22;

      v21 = *p_idDevices;
    }

    [(NSMutableDictionary *)v21 setObject:idsIdentifier forKeyedSubscript:identifier];
    if (idsIdentifier)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  rpIdentity = [bleDevice rpIdentity];
  if (rpIdentity)
  {
    identity = rpIdentity;
LABEL_10:
    [foundCopy updateWithRPIdentity:identity];
    goto LABEL_25;
  }

  idsIdentifier = [foundCopy idsIdentifier];
  if (!idsIdentifier)
  {
LABEL_37:
    identity = 0;
    goto LABEL_42;
  }

  v55 = v9;
  v56 = v8;
  v57 = bleDevice;
  v58 = identifier;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v24 = self->_idIdentityArray;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v64;
LABEL_29:
    v28 = 0;
    while (1)
    {
      if (*v64 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v63 + 1) + 8 * v28);
      if ([v29 type] == 2)
      {
        idsDeviceID = [v29 idsDeviceID];
        v31 = [idsDeviceID isEqual:idsIdentifier];

        if (v31)
        {
          break;
        }
      }

      if (v26 == ++v28)
      {
        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v63 objects:v67 count:16];
        if (v26)
        {
          goto LABEL_29;
        }

        goto LABEL_36;
      }
    }

    identity = v29;
    bleDevice = v57;
    [v57 setRpIdentity:identity];

    if (identity)
    {
      identifier = v58;
      v9 = v55;
      v8 = v56;
      goto LABEL_10;
    }

    idsIdentifier = 0;
    identifier = v58;
  }

  else
  {
LABEL_36:

    identity = 0;
    idsIdentifier = 0;
    bleDevice = v57;
    identifier = v58;
  }

  v9 = v55;
  v8 = v56;
LABEL_42:
  [foundCopy setAudioRoutingScore:0];
  if (v9)
  {
    v32 = identity == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (!v32)
  {
    CFDataGetTypeID();
    v34 = CFDictionaryGetTypedValue();
    if (v34)
    {
      [(SDNearbyAgent *)self _identificationDecryptAudioRoutingScoreData:v34 device:foundCopy authTag:v9 identity:identity];
    }
  }

  if ((flags & 0x10) != 0 && self->_contactHashesEnabled && [foundCopy deviceActionType] == 8)
  {
    CFDataGetTypeID();
    v35 = CFDictionaryGetTypedValue();
    if ([v35 length] >= 9)
    {
      [(SDStatusMonitor *)self->_statusMonitor contactIdentifierForMediumHashes:v35];
      v59 = identifier;
      v36 = bleDevice;
      v37 = v9;
      v39 = v38 = v8;
      [foundCopy setContactIdentifier:v39];

      v8 = v38;
      v9 = v37;
      bleDevice = v36;
      identifier = v59;
    }
  }

  [foundCopy setHotspotInfo:0];
  if (v33)
  {
    CFDataGetTypeID();
    v40 = CFDictionaryGetTypedValue();
    if (v40)
    {
      [(SDNearbyAgent *)self _identificationDecryptHotspotData:v40 device:foundCopy authTag:v9 identity:identity];
    }
  }

  v62 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  _idsShouldEncryptActivityLevel = [(SDNearbyAgent *)self _idsShouldEncryptActivityLevel];
  v43 = 0;
  if (_idsShouldEncryptActivityLevel < 1)
  {
    [bleDevice setDecryptedActivityLevel:Int64Ranged];
    goto LABEL_83;
  }

  if (v9 && identity)
  {
    v44 = [(SDNearbyAgent *)self _identificationDecryptActivityLevel:Int64Ranged device:foundCopy authTag:v9 identity:identity];
    [bleDevice setDecryptedActivityLevel:v44];
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265F1C(v44);
    }

    goto LABEL_83;
  }

  v45 = v9;
  if (v9)
  {
    v46 = 30;
  }

  else
  {
    v46 = 90;
  }

  if (v46 >= dword_100973248)
  {
    if (dword_100973248 != -1)
    {
LABEL_75:
      v47 = "no";
      if (v45)
      {
        v48 = "yes";
      }

      else
      {
        v48 = "no";
      }

      if (identity)
      {
        v47 = "yes";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationHandleDeviceFound:flags:]", v46, "### Unable to decrypt activity level with authTag %s identity %s error %d for device %@\n", v48, v47, v43, foundCopy);
      goto LABEL_82;
    }

    if (_LogCategory_Initialize())
    {
      v43 = v62;
      goto LABEL_75;
    }
  }

LABEL_82:
  [bleDevice setDecryptedActivityLevel:16];
  v9 = v45;
LABEL_83:
  if ((flags & 0x10) != 0 && [foundCopy deviceActionType] == 8)
  {
    CFDataGetTypeID();
    v49 = CFDictionaryGetTypedValue();
    if ([v49 length] == 3)
    {
      [(SDStatusMonitor *)self->_statusMonitor wifiSSIDForSSIDHash:v49];
      v51 = v50 = v8;
      [foundCopy setRequestSSID:v51];

      v8 = v50;
    }
  }

  if (!self->_idMaintenanceTimer)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265F60();
    }

    v52 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    idMaintenanceTimer = self->_idMaintenanceTimer;
    self->_idMaintenanceTimer = v52;

    v54 = self->_idMaintenanceTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100258930;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v54, handler);
    SFDispatchTimerSet();
    dispatch_resume(self->_idMaintenanceTimer);
  }

LABEL_94:
}

- (void)_identificationHandleDeviceLost:(id)lost flags:(unint64_t)flags
{
  identifier = [lost identifier];
  if (identifier)
  {
    v11 = identifier;
    v7 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:identifier];
    v8 = v7;
    if (v7)
    {
      discoveryFlags = [v7 discoveryFlags];
      v10 = discoveryFlags & ~flags;
      if (v10 != discoveryFlags)
      {
        [v8 setDiscoveryFlags:v10];
        if (!v10)
        {
          [v8 setLastUpdateTicks:mach_absolute_time()];
        }
      }
    }

    identifier = v11;
  }
}

- (void)_identificationReIdentify
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDNearbyAgent *)self _identificationReIdentifySameAccountDevices:self->_ddNearbyActionDevices type:15];
  [(SDNearbyAgent *)self _identificationReIdentifySameAccountDevices:self->_ddNearbyInfoDevices type:16];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_idDevices allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_idDevices objectForKeyedSubscript:v8];
        if (!v9)
        {
          while (1)
          {
            [NSException raise:@"CUGuardLetNoReturn" format:@"CUGuardLet with no return"];
          }
        }

        v10 = v9;
        v11 = [(NSMutableDictionary *)self->_ddNearbyActionDevices objectForKeyedSubscript:v8];
        v12 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:v8];
        if (v11 && [(SDNearbyAgent *)self _identificationIdentifyDevice:v10 sfDevice:v11])
        {
          bleDevice = [v11 bleDevice];
          if (bleDevice)
          {
            [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceChanged:bleDevice type:15 changes:1];
          }
        }

        if (v12 && [(SDNearbyAgent *)self _identificationIdentifyDevice:v10 sfDevice:v12])
        {
          bleDevice2 = [v12 bleDevice];
          if (bleDevice2)
          {
            [(SDNearbyAgent *)self _deviceDiscoveryBLEDeviceChanged:bleDevice2 type:16 changes:1];
          }
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_identificationReIdentifySameAccountDevices:(id)devices type:(int64_t)type
{
  devicesCopy = devices;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [devicesCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v24 = *v35;
    v25 = devicesCopy;
    do
    {
      v9 = 0;
      v26 = v7;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [devicesCopy objectForKeyedSubscript:*(*(&v34 + 1) + 8 * v9)];
        if (![v10 paired])
        {
          goto LABEL_30;
        }

        idsIdentifier = [v10 idsIdentifier];
        if (!idsIdentifier)
        {
          goto LABEL_29;
        }

        bleDevice = [v10 bleDevice];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = selfCopy->_idIdentityArray;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (!v13)
        {
          goto LABEL_28;
        }

        v14 = v13;
        v15 = *v31;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            if ([v17 type] == 2)
            {
              idsDeviceID = [v17 idsDeviceID];
              v19 = [idsDeviceID isEqual:idsIdentifier];

              if (v19)
              {
                rpIdentity = [bleDevice rpIdentity];
                v21 = rpIdentity;
                if (rpIdentity)
                {
                  v22 = [rpIdentity compareWithRPIdentity:v17];
                  [bleDevice setRpIdentity:v17];
                  if (!v22)
                  {
LABEL_27:

                    goto LABEL_28;
                  }
                }

                else
                {
                  [bleDevice setRpIdentity:v17];
                }

                if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationReIdentifySameAccountDevices:type:]", 30, "Identification identified device: %@, %@, %@\n", v10, bleDevice, v17);
                }

                [(SDNearbyAgent *)selfCopy _deviceDiscoveryBLEDeviceChanged:bleDevice type:type changes:1];
                goto LABEL_27;
              }
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_28:

        v8 = v24;
        devicesCopy = v25;
        v7 = v26;
LABEL_29:

LABEL_30:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }
}

- (BOOL)_identificationIdentifyDevice:(id)device sfDevice:(id)sfDevice
{
  deviceCopy = device;
  sfDeviceCopy = sfDevice;
  authTag = [deviceCopy authTag];
  if (!authTag)
  {
    v19 = 0;
    goto LABEL_26;
  }

  btAddr = [deviceCopy btAddr];
  if (!btAddr)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v23 = deviceCopy;
  deviceFlags = [sfDeviceCopy deviceFlags];
  [sfDeviceCopy setDeviceFlags:{objc_msgSend(sfDeviceCopy, "deviceFlags") & 0xFFFE2BB9}];
  v22 = mach_absolute_time();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_idIdentityArray;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v25;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v24 + 1) + 8 * i);
      if ([v16 verifyAuthTag:authTag data:btAddr type:2 error:0])
      {
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100266008(v23, v22, v16);
          if (v13)
          {
            goto LABEL_13;
          }
        }

        else if (v13)
        {
LABEL_13:
          contactID = [v13 contactID];

          if (!contactID)
          {
            contactID2 = [v16 contactID];
            [v13 setContactID:contactID2];
          }

          goto LABEL_17;
        }

        v13 = v16;
        [v23 setIdentity:v13];
LABEL_17:
        [sfDeviceCopy updateWithRPIdentity:v16];
        continue;
      }
    }

    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v12);
LABEL_24:

  v19 = (([sfDeviceCopy deviceFlags] ^ deviceFlags) & 0x1D446) != 0;
  deviceCopy = v23;
LABEL_25:

LABEL_26:
  return v19;
}

- (void)_identificationDecryptAudioRoutingScoreData:(id)data device:(id)device authTag:(id)tag identity:(id)identity
{
  dataCopy = data;
  deviceCopy = device;
  tagCopy = tag;
  deviceIRKData = [identity deviceIRKData];
  if ([deviceIRKData length])
  {
    v13 = tagCopy;
    if ([v13 length])
    {
      memset(v14, 0, sizeof(v14));
      [deviceIRKData bytes];
      [deviceIRKData length];
      [v13 bytes];
      [v13 length];
      CryptoHKDF();
      if ([dataCopy length])
      {
        [dataCopy bytes];
        ccchacha20();
        [deviceCopy setAudioRoutingScore:0];
      }
    }
  }
}

- (void)_identificationDecryptHotspotData:(id)data device:(id)device authTag:(id)tag identity:(id)identity
{
  dataCopy = data;
  deviceCopy = device;
  tagCopy = tag;
  deviceIRKData = [identity deviceIRKData];
  if ([deviceIRKData length])
  {
    v13 = tagCopy;
    if ([v13 length])
    {
      memset(v14, 0, sizeof(v14));
      [deviceIRKData bytes];
      [deviceIRKData length];
      [v13 bytes];
      [v13 length];
      CryptoHKDF();
      if ([dataCopy length])
      {
        [dataCopy bytes];
        ccchacha20();
        [deviceCopy setHotspotInfo:256];
      }
    }
  }
}

- (unsigned)_identificationDecryptActivityLevel:(unsigned __int8)level device:(id)device authTag:(id)tag identity:(id)identity
{
  tagCopy = tag;
  deviceIRKData = [identity deviceIRKData];
  if ([deviceIRKData length])
  {
    v9 = tagCopy;
    if ([v9 length])
    {
      [deviceIRKData bytes];
      [deviceIRKData length];
      [v9 bytes];
      [v9 length];
      CryptoHKDF();
      ccchacha20();
    }
  }

  return 0;
}

- (void)_idsEnsureStarted
{
  if (!self->_idsService)
  {
    selfCopy = self;
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100266080(self, a2, v2);
      }
    }

    v5 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.nearby"];
    idsService = selfCopy->_idsService;
    selfCopy->_idsService = v5;

    v7 = selfCopy->_idsService;
    dispatchQueue = selfCopy->_dispatchQueue;

    [(IDSService *)v7 addDelegate:selfCopy queue:dispatchQueue];
  }
}

- (void)_idsEnsureStopped
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsBluetoothDevicesArray = selfCopy->_idsBluetoothDevicesArray;
  selfCopy->_idsBluetoothDevicesArray = 0;

  idsBluetoothDevicesSet = selfCopy->_idsBluetoothDevicesSet;
  selfCopy->_idsBluetoothDevicesSet = 0;

  idsBluetoothDeviceIDsForLEPipe = selfCopy->_idsBluetoothDeviceIDsForLEPipe;
  selfCopy->_idsBluetoothDeviceIDsForLEPipe = 0;

  idsBluetoothDeviceIDsForMe = selfCopy->_idsBluetoothDeviceIDsForMe;
  selfCopy->_idsBluetoothDeviceIDsForMe = 0;

  idsDeviceBTDictionary = selfCopy->_idsDeviceBTDictionary;
  selfCopy->_idsDeviceBTDictionary = 0;

  idsDeviceCountBTDictionary = selfCopy->_idsDeviceCountBTDictionary;
  selfCopy->_idsDeviceCountBTDictionary = 0;

  objc_sync_exit(selfCopy);
  if (selfCopy->_idsService)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_10026609C(v9, v10, v11);
      }
    }

    [(IDSService *)selfCopy->_idsService removeDelegate:selfCopy];
    idsService = selfCopy->_idsService;
    selfCopy->_idsService = 0;
  }
}

- (void)idsAddCachedIDSIdentifier:(id)identifier device:(id)device
{
  identifierCopy = identifier;
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mach_absolute_time();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_idsBTtoIDSInfoMap allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)selfCopy->_idsBTtoIDSInfoMap objectForKeyedSubscript:v11];
        CFDictionaryGetInt64();
        if (UpTicksToSeconds() >= 0x385)
        {
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100973248, "[SDNearbyAgent idsAddCachedIDSIdentifier:device:]", 30, "Remove old IDS cache entry: %@ : %##@\n", v11, v12);
          }

          [(NSMutableDictionary *)selfCopy->_idsBTtoIDSInfoMap setObject:0 forKeyedSubscript:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  identifier = [deviceCopy identifier];
  if (identifier)
  {
    if (!selfCopy->_idsBTtoIDSInfoMap)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      idsBTtoIDSInfoMap = selfCopy->_idsBTtoIDSInfoMap;
      selfCopy->_idsBTtoIDSInfoMap = v14;
    }

    v24[0] = @"addTicks";
    v16 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    v24[1] = @"idsID";
    v25[0] = v16;
    v25[1] = identifierCopy;
    v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent idsAddCachedIDSIdentifier:device:]", 30, "Add IDS cache entry: %@ : %##@\n", identifier, v17);
    }

    [(NSMutableDictionary *)selfCopy->_idsBTtoIDSInfoMap setObject:v17 forKeyedSubscript:identifier];
  }

  else if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent idsAddCachedIDSIdentifier:device:]", 90, "### No BT UUID for %@\n", identifierCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)idsAddCachedIDSIdentifierToDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsIdentifier = [deviceCopy idsIdentifier];

  if (!idsIdentifier)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      v7 = [(NSMutableDictionary *)selfCopy->_idsBTtoIDSInfoMap objectForKeyedSubscript:identifier];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKeyedSubscript:@"idsID"];
        if (v9)
        {
          [deviceCopy setIdsIdentifier:v9];
          if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100973248, "[SDNearbyAgent idsAddCachedIDSIdentifierToDevice:]", 30, "Found IDS cache entry for device: %@\n", deviceCopy);
          }
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_idsBluetoothDeviceIDsForHomePods
{
  v3 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  v5 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        modelIdentifier = [v9 modelIdentifier];
        v11 = [modelIdentifier hasPrefix:@"AudioAccessory"];

        if (v11)
        {
          nsuuid = [v9 nsuuid];
          if (nsuuid)
          {
            [v3 addObject:nsuuid];
          }
        }
      }

      v6 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_idsBluetoothDeviceIDsForiMessage
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [IDSService alloc];
  v4 = [v3 initWithService:IDSServiceNameiMessage];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  devices = [v4 devices];
  v6 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(devices);
        }

        nsuuid = [*(*(&v12 + 1) + 8 * i) nsuuid];
        if (nsuuid)
        {
          [v2 addObject:nsuuid];
        }
      }

      v7 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)idsBluetoothDeviceIDsForLEPipe
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsBluetoothDeviceIDsForLEPipe = selfCopy->_idsBluetoothDeviceIDsForLEPipe;
  if (!idsBluetoothDeviceIDsForLEPipe)
  {
    _idsBluetoothDeviceIDsForLEPipe = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForLEPipe];
    v5 = selfCopy->_idsBluetoothDeviceIDsForLEPipe;
    selfCopy->_idsBluetoothDeviceIDsForLEPipe = _idsBluetoothDeviceIDsForLEPipe;

    idsBluetoothDeviceIDsForLEPipe = selfCopy->_idsBluetoothDeviceIDsForLEPipe;
  }

  v6 = idsBluetoothDeviceIDsForLEPipe;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)_idsBluetoothDeviceIDsForOneness
{
  v33 = objc_alloc_init(NSMutableSet);
  v3 = objc_alloc_init(NSMutableSet);
  if (GestaltGetDeviceClass() == 1)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v5)
    {
      v6 = v5;
      selfCopy = self;
      v7 = *v43;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          modelIdentifier = [v9 modelIdentifier];
          lowercaseString = [modelIdentifier lowercaseString];

          if (([lowercaseString containsString:@"mac"] & 1) != 0 || objc_msgSend(lowercaseString, "containsString:", @"imac"))
          {
            uniqueID = [v9 uniqueID];
            [v3 addObject:uniqueID];
          }
        }

        v6 = [idsDeviceArray countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v6);
      self = selfCopy;
    }
  }

  else
  {
    if (GestaltGetDeviceClass() != 100)
    {
      goto LABEL_25;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v13 = [idsDeviceArray countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      selfCopy2 = self;
      v16 = *v39;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          v18 = *(*(&v38 + 1) + 8 * j);
          modelIdentifier2 = [v18 modelIdentifier];
          lowercaseString2 = [modelIdentifier2 lowercaseString];

          if ([lowercaseString2 containsString:@"iphone"])
          {
            uniqueID2 = [v18 uniqueID];
            [v3 addObject:uniqueID2];
          }
        }

        v14 = [idsDeviceArray countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v14);
      self = selfCopy2;
    }
  }

LABEL_25:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  idsDeviceArray2 = [(SDNearbyAgent *)self idsDeviceArray];
  v23 = [idsDeviceArray2 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(idsDeviceArray2);
        }

        v27 = *(*(&v34 + 1) + 8 * k);
        uniqueID3 = [v27 uniqueID];
        v29 = [v3 containsObject:uniqueID3];

        if (v29)
        {
          nsuuid = [v27 nsuuid];
          if (nsuuid)
          {
            [v33 addObject:nsuuid];
          }
        }
      }

      v24 = [idsDeviceArray2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v24);
  }

  return v33;
}

- (id)idsBluetoothDeviceIDsForWatches
{
  v3 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  v5 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        modelIdentifier = [v9 modelIdentifier];
        v11 = [modelIdentifier hasPrefix:@"Watch"];

        if (v11)
        {
          nsuuid = [v9 nsuuid];
          if (nsuuid)
          {
            [v3 addObject:nsuuid];
          }
        }
      }

      v6 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_idsBluetoothDeviceIDsForSharing
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _idsBluetoothDeviceIDsForSharingLocked = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForSharingLocked];
  objc_sync_exit(selfCopy);

  return _idsBluetoothDeviceIDsForSharingLocked;
}

- (id)_idsBluetoothDeviceIDsForSharingLocked
{
  idsBluetoothDevicesArray = self->_idsBluetoothDevicesArray;
  if (!idsBluetoothDevicesArray)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v6 = [idsDeviceArray countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          nsuuid = [*(*(&v13 + 1) + 8 * v9) nsuuid];
          if (nsuuid)
          {
            [(NSArray *)v4 addObject:nsuuid];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [idsDeviceArray countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = self->_idsBluetoothDevicesArray;
    self->_idsBluetoothDevicesArray = v4;

    idsBluetoothDevicesArray = self->_idsBluetoothDevicesArray;
  }

  return idsBluetoothDevicesArray;
}

- (id)_idsBluetoothDeviceIDsForSMSRelay
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [IDSService alloc];
  v4 = [v3 initWithService:IDSServiceNameSMSRelay];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [v4 devices];
  v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 supportsSMSRelay] & 1) != 0 || objc_msgSend(v10, "supportsMMSRelay"))
        {
          nsuuid = [v10 nsuuid];
          if (nsuuid)
          {
            [v2 addObject:nsuuid];
          }
        }
      }

      v7 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)_idsBluetoothDeviceIDsForAnnouncements
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100249B98;
  v17 = sub_100249BA8;
  v18 = objc_alloc_init(NSMutableSet);
  v2 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v3 = qword_10098A470;
  v23 = qword_10098A470;
  if (!qword_10098A470)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100261A28;
    v19[3] = &unk_1008CDA20;
    v19[4] = &v20;
    sub_100261A28(v19);
    v3 = v21[3];
  }

  v4 = v3;
  _Block_object_dispose(&v20, 8);
  v5 = objc_alloc_init(v3);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10025AA68;
  v10[3] = &unk_1008D58B8;
  v12 = &v13;
  v6 = v2;
  v11 = v6;
  [v5 getScanningDeviceCandidates:v10];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)idsDeviceForBluetoothDeviceID:(id)d conflictDetected:(BOOL *)detected
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceBTDictionary = selfCopy->_idsDeviceBTDictionary;
  if (!idsDeviceBTDictionary)
  {
    v26 = dCopy;
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = objc_alloc_init(NSMutableDictionary);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)selfCopy idsDeviceArray];
    v11 = [idsDeviceArray countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          nsuuid = [v14 nsuuid];
          if (nsuuid)
          {
            [(NSDictionary *)v8 setObject:v14 forKeyedSubscript:nsuuid];
            v16 = [NSNumber numberWithUnsignedInt:CFDictionaryGetInt64Ranged() + 1];
            [(NSDictionary *)v9 setObject:v16 forKeyedSubscript:nsuuid];
          }
        }

        v11 = [idsDeviceArray countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v17 = selfCopy->_idsDeviceBTDictionary;
    selfCopy->_idsDeviceBTDictionary = v8;
    v18 = v8;

    idsDeviceCountBTDictionary = selfCopy->_idsDeviceCountBTDictionary;
    selfCopy->_idsDeviceCountBTDictionary = v9;

    idsDeviceBTDictionary = selfCopy->_idsDeviceBTDictionary;
    dCopy = v26;
  }

  v20 = [(NSDictionary *)idsDeviceBTDictionary objectForKeyedSubscript:dCopy];
  v21 = dCopy;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v23 = (Int64Ranged & 0xFFFFFFFE) == 0 || v20 == 0;
  v24 = !v23;
  if (!v23 && dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent idsDeviceForBluetoothDeviceID:conflictDetected:]", 30, "Multiple (%ld) IDS devices are associated with BT ID %@. Picking %@, some info may be inaccurate", Int64Ranged, v21, v20);
  }

  if (detected)
  {
    *detected = v24;
  }

  objc_sync_exit(selfCopy);

  return v20;
}

- (void)idsDevicesAppendDescription:(id *)description
{
  bytes = [(NSData *)self->_bleAdvertisingAddress bytes];
  v6 = IDSCopyLocalDeviceUniqueID();
  v7 = SFDeviceModel();
  NSAppendPrintF(description, "Local BT Addr %.6a, Local IDS UniqueID: %@ (%@)\n", bytes, v6, v7);

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
  v56 = [idsDeviceArray countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v56)
  {
    v54 = *v70;
    v53 = IDSServiceNameiMessage;
    v52 = IDSServiceNameSMSRelay;
    descriptionCopy = description;
    v55 = idsDeviceArray;
    do
    {
      v9 = 0;
      do
      {
        if (*v70 != v54)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v60 = v9;
        v10 = *(*(&v69 + 1) + 8 * v9);
        name = [v10 name];
        uniqueIDOverride = [v10 uniqueIDOverride];
        modelIdentifier = [v10 modelIdentifier];
        productBuildVersion = [v10 productBuildVersion];
        nsuuid = [v10 nsuuid];
        NSAppendPrintF(description, "%''@, %@, %@, %@, BT=%@", name, uniqueIDOverride, modelIdentifier, productBuildVersion, nsuuid);

        nsuuid2 = [v10 nsuuid];

        if (nsuuid2)
        {
          v17 = [[IDSService alloc] initWithService:v53];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v57 = v17;
          devices = [v17 devices];
          v19 = [devices countByEnumeratingWithState:&v65 objects:v74 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v66;
            while (2)
            {
              for (i = 0; i != v20; i = i + 1)
              {
                if (*v66 != v21)
                {
                  objc_enumerationMutation(devices);
                }

                v23 = *(*(&v65 + 1) + 8 * i);
                uniqueIDOverride2 = [v10 uniqueIDOverride];
                if (uniqueIDOverride2)
                {
                  v25 = uniqueIDOverride2;
                  uniqueIDOverride3 = [v23 uniqueIDOverride];
                  uniqueIDOverride4 = [v10 uniqueIDOverride];
                  v28 = [uniqueIDOverride3 isEqual:uniqueIDOverride4];

                  if (!v28)
                  {
                    continue;
                  }
                }

                nsuuid3 = [v10 nsuuid];
                if (nsuuid3)
                {
                  v30 = nsuuid3;
                  nsuuid4 = [v23 nsuuid];
                  nsuuid5 = [v10 nsuuid];
                  v33 = [nsuuid4 isEqual:nsuuid5];

                  if ((v33 & 1) == 0)
                  {
                    continue;
                  }
                }

                description = descriptionCopy;
                NSAppendPrintF(descriptionCopy, ", iMessage");
                goto LABEL_20;
              }

              v20 = [devices countByEnumeratingWithState:&v65 objects:v74 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          description = descriptionCopy;
        }

LABEL_20:
        nsuuid6 = [v10 nsuuid];

        if (nsuuid6)
        {
          v35 = [[IDSService alloc] initWithService:v52];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v58 = v35;
          devices2 = [v35 devices];
          v37 = [devices2 countByEnumeratingWithState:&v61 objects:v73 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v62;
            while (2)
            {
              for (j = 0; j != v38; j = j + 1)
              {
                if (*v62 != v39)
                {
                  objc_enumerationMutation(devices2);
                }

                v41 = *(*(&v61 + 1) + 8 * j);
                if (([v41 supportsSMSRelay] & 1) != 0 || objc_msgSend(v41, "supportsMMSRelay"))
                {
                  uniqueIDOverride5 = [v10 uniqueIDOverride];
                  if (!uniqueIDOverride5 || (v43 = uniqueIDOverride5, [v41 uniqueIDOverride], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "uniqueIDOverride"), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v44, "isEqual:", v45), v45, v44, v43, v46))
                  {
                    nsuuid7 = [v10 nsuuid];
                    if (!nsuuid7 || (v48 = nsuuid7, [v41 nsuuid], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "nsuuid"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v49, "isEqual:", v50), v50, v49, v48, (v51 & 1) != 0))
                    {

                      description = descriptionCopy;
                      NSAppendPrintF(descriptionCopy, ", SMS");
                      goto LABEL_36;
                    }
                  }
                }
              }

              v38 = [devices2 countByEnumeratingWithState:&v61 objects:v73 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          description = descriptionCopy;
        }

LABEL_36:
        if ([v10 isActive])
        {
          NSAppendPrintF(description, ", Active");
        }

        idsDeviceArray = v55;
        if ([v10 isConnected])
        {
          NSAppendPrintF(description, ", Connected");
        }

        if ([v10 isLocallyPaired])
        {
          NSAppendPrintF(description, ", Paired");
        }

        NSAppendPrintF(description, "\n");
        v9 = v60 + 1;
      }

      while ((v60 + 1) != v56);
      v56 = [v55 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v56);
  }

  else
  {

    NSAppendPrintF(description, "No devices registered\n");
  }
}

- (BOOL)_idsHasActiveWatch
{
  if (self->_idsHasActiveWatchCache < 0)
  {
    self->_idsHasActiveWatchCache = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v4 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if ([v8 isLocallyPaired])
          {
            if ([v8 isActive] && (objc_msgSend(v8, "isConnected") & 1) != 0 || objc_msgSend(v8, "isConnected") && (objc_msgSend(v8, "productBuildVersion"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "compare:options:", @"14S", 65), v9, (v10 & 0x8000000000000000) != 0))
            {
              self->_idsHasActiveWatchCache = 1;
              goto LABEL_16;
            }
          }
        }

        v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return self->_idsHasActiveWatchCache != 0;
}

- (int)_idsVisionOS1Count
{
  result = self->_idsVisionOS1CountCache;
  if (result < 0)
  {
    self->_idsVisionOS1CountCache = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v13;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        productName = [v9 productName];
        if (![productName isEqualToString:@"xrOS"])
        {
          goto LABEL_12;
        }

        if (!v9)
        {
          v11 = 0;
LABEL_12:

          continue;
        }

        objc_msgSend_operatingSystemVersion(v9);

        if (v11 == 1)
        {
          ++self->_idsVisionOS1CountCache;
        }
      }

      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v6)
      {
LABEL_15:

        return self->_idsVisionOS1CountCache;
      }
    }
  }

  return result;
}

- (int)_idsMacCount
{
  result = self->_idsMacCountCache;
  if (result < 0)
  {
    self->_idsMacCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          modelIdentifier = [*(*(&v11 + 1) + 8 * v8) modelIdentifier];
          v10 = [modelIdentifier containsString:@"Mac"];

          if (v10)
          {
            ++self->_idsMacCountCache;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return self->_idsMacCountCache;
  }

  return result;
}

- (void)_idsMeDeviceChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsBluetoothDeviceIDsForMe = selfCopy->_idsBluetoothDeviceIDsForMe;
  selfCopy->_idsBluetoothDeviceIDsForMe = 0;

  objc_sync_exit(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = selfCopy->_ddRequests;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 discoveryFlags] & 0x100000) != 0)
        {
          _idsBluetoothDeviceIDsForMe = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForMe];
          [v10 setDeviceFilter:_idsBluetoothDeviceIDsForMe];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(SDNearbyAgent *)selfCopy _update];
}

- (int)_idsWatchCount
{
  result = self->_idsWatchCountCache;
  if (result < 0)
  {
    self->_idsWatchCountCache = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    idsDeviceArray = [(SDNearbyAgent *)self idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(idsDeviceArray);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          modelIdentifier = [v9 modelIdentifier];
          v11 = [modelIdentifier containsString:@"Watch"];

          if (v11)
          {
            modelIdentifier2 = [v9 modelIdentifier];
            GestaltProductTypeStringToDeviceClass();
            if (v9)
            {
              objc_msgSend_operatingSystemVersion(v9);
              objc_msgSend_operatingSystemVersion(v9);
              objc_msgSend_operatingSystemVersion(v9);
            }

            LODWORD(v14) = 10100;
            v13 = DeviceOSVersionAtOrLaterEx();

            if (v13)
            {
              ++selfCopy->_idsWatchCountCache;
            }
          }
        }

        v6 = [idsDeviceArray countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    return selfCopy->_idsWatchCountCache;
  }

  return result;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent service:account:identifier:didSendWithSuccess:error:context:]", 20, "IDS service %@, account %@, identifier %@, success %d, error %@, context @\n", serviceCopy, accountCopy, identifierCopy, successCopy, errorCopy, contextCopy);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent service:account:identifier:hasBeenDeliveredWithContext:]", 20, "IDS service %@, account %@, identifier %@, context @\n", serviceCopy, accountCopy, identifierCopy, contextCopy);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent service:account:incomingMessage:fromID:context:]", 20, "IDS service %@, account %@, message %@, fromID %@, context %@\n", serviceCopy, accountCopy, messageCopy, dCopy, contextCopy);
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent service:activeAccountsChanged:]", 30, "IDS service %@ activeAccountsChanged %@\n", serviceCopy, changedCopy);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_idsIsSignedInCache = -1;
  objc_sync_exit(selfCopy);

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"SDNotificationNameIDSAccountsChanged" object:selfCopy];

  [(SDNearbyAgent *)selfCopy service:serviceCopy devicesChanged:0];
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent service:connectedDevicesChanged:]", 20, "IDS service %@ connectedDevicesChanged %@\n", serviceCopy, changedCopy);
  }

  self->_idsHasActiveWatchCache = -1;
  [(SDNearbyAgent *)self _update];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266130(changedCopy);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsBluetoothDevicesArray = selfCopy->_idsBluetoothDevicesArray;
  selfCopy->_idsBluetoothDevicesArray = 0;

  idsBluetoothDevicesSet = selfCopy->_idsBluetoothDevicesSet;
  selfCopy->_idsBluetoothDevicesSet = 0;

  idsBluetoothDeviceIDsForLEPipe = selfCopy->_idsBluetoothDeviceIDsForLEPipe;
  selfCopy->_idsBluetoothDeviceIDsForLEPipe = 0;

  idsBluetoothDeviceIDsForMe = selfCopy->_idsBluetoothDeviceIDsForMe;
  selfCopy->_idsBluetoothDeviceIDsForMe = 0;

  objc_storeStrong(&selfCopy->_idsDeviceArray, changed);
  idsDeviceBTDictionary = selfCopy->_idsDeviceBTDictionary;
  selfCopy->_idsDeviceBTDictionary = 0;

  idsDeviceCountBTDictionary = selfCopy->_idsDeviceCountBTDictionary;
  selfCopy->_idsDeviceCountBTDictionary = 0;

  selfCopy->_idsIsSignedInCache = -1;
  objc_sync_exit(selfCopy);

  selfCopy->_allowEnhancedDiscovery = -1;
  selfCopy->_idsAppleTVCountCache = -1;
  selfCopy->_idsContinuityDeviceCountCache = -1;
  selfCopy->_idsMacCountCache = -1;
  *&selfCopy->_idsShouldAdvertiseNearbyInfo = -1;
  selfCopy->_idsWatchCountCache = -1;
  *&selfCopy->_idsHasActiveWatchCache = -1;
  *&selfCopy->_idsVisionOS1CountCache = -1;
  if (selfCopy->_bleNearbyInfoScanner)
  {
    if ([(NSMutableSet *)selfCopy->_caRequests count])
    {
      _idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForSharing];
      [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDeviceFilter:_idsBluetoothDeviceIDsForSharing];
    }

    else
    {
      [(SFBLEScanner *)selfCopy->_bleNearbyInfoScanner setDeviceFilter:0];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = selfCopy->_ddRequests;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        if (([v20 discoveryFlags] & 0x20) != 0)
        {
          idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)selfCopy idsBluetoothDeviceIDsForSharing];
LABEL_21:
          v22 = idsBluetoothDeviceIDsForSharing;
          [v20 setDeviceFilter:idsBluetoothDeviceIDsForSharing];

          continue;
        }

        if (([v20 discoveryFlags] & 0x100000) != 0)
        {
          idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForMe];
          goto LABEL_21;
        }

        if (([v20 discoveryFlags] & 0x200000) != 0)
        {
          idsBluetoothDeviceIDsForSharing = [(SDNearbyAgent *)selfCopy _idsBluetoothDeviceIDsForHomePods];
          goto LABEL_21;
        }

        if (([v20 discoveryFlags] & 0x1000000) != 0)
        {
          [(SDNearbyAgent *)selfCopy _unlockDeviceFilterChangedForRequest:v20];
        }
      }

      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  [(SDNearbyAgent *)selfCopy _registerForMagicMountUpdates];
  [(SDNearbyAgent *)selfCopy _update];
  v23 = +[NSNotificationCenter defaultCenter];
  [v23 postNotificationName:@"SDNotificationNameIDSDevicesChanged" object:selfCopy];
}

- (BOOL)isDeviceValidRIServer:(id)server
{
  if (self->_isRIClientEnabled)
  {
    return [server hasPrefix:@"iProd"];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTempAuthTagKnown:(id)known bluetoothAddressData:(id)data
{
  knownCopy = known;
  dataCopy = data;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_idIdentityArray;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) verifyAuthTag:knownCopy data:dataCopy type:2 error:{0, v13}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (int)serviceStart:(id)start
{
  startCopy = start;
  serviceUUID = [startCopy serviceUUID];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266174(startCopy);
    if (serviceUUID)
    {
      goto LABEL_5;
    }

LABEL_48:
    self = 4294960551;
    goto LABEL_52;
  }

  if (!serviceUUID)
  {
    goto LABEL_48;
  }

LABEL_5:
  v6 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:serviceUUID];

  if (!v6)
  {
    if ([startCopy needsSetup] && ((v7 = objc_msgSend(startCopy, "deviceActionType"), v7 == 11) || v7 == 33 || objc_msgSend(startCopy, "deviceActionType") == 9 || objc_msgSend(startCopy, "deviceActionType") == 10 || objc_msgSend(startCopy, "deviceActionType") == 36 || objc_msgSend(startCopy, "deviceActionType") == 90 || objc_msgSend(startCopy, "deviceActionType") == 1) || objc_msgSend(startCopy, "deviceActionType") == 19 || objc_msgSend(startCopy, "deviceActionType") == 22)
    {
      if (![startCopy deviceClassCode])
      {
        [startCopy setDeviceClassCode:SFDeviceClassCodeGet()];
      }

      deviceColorCode = [startCopy deviceColorCode];
      if (deviceColorCode == SFDeviceColorCodeUnknown)
      {
        [startCopy setDeviceColorCode:SFDeviceColorCodeGet()];
      }

      if (![startCopy deviceModelCode])
      {
        [startCopy setDeviceModelCode:SFDeviceModelCodeGet()];
      }

      if (self->_homePodIdentifiesAsB520)
      {
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002661B4(startCopy);
        }

        [startCopy setDeviceModelCode:5];
      }

      if (self->_homePodIdentifiesAsB620)
      {
        if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002661F4(startCopy);
        }

        [startCopy setDeviceModelCode:6];
      }

      homePodModelCodeOverride = self->_homePodModelCodeOverride;
      if (homePodModelCodeOverride < 0)
      {
        goto LABEL_43;
      }

      if (dword_100973248 <= 30)
      {
        if (dword_100973248 != -1 || (v12 = _LogCategory_Initialize(), homePodModelCodeOverride = self->_homePodModelCodeOverride, v12))
        {
          LogPrintF(&dword_100973248, "[SDNearbyAgent serviceStart:]", 30, "Forcing this device to identify with model code %d\n", homePodModelCodeOverride);
          homePodModelCodeOverride = self->_homePodModelCodeOverride;
        }
      }
    }

    else
    {
      identifier = [startCopy identifier];
      v11 = SFServiceIdentifierProxHandoff;

      if (identifier != v11)
      {
        goto LABEL_43;
      }

      if (![startCopy deviceClassCode])
      {
        [startCopy setDeviceClassCode:SFDeviceClassCodeGet()];
      }

      if ([startCopy deviceModelCode])
      {
        goto LABEL_43;
      }

      LOBYTE(homePodModelCodeOverride) = SFDeviceModelCodeGet();
    }

    [startCopy setDeviceModelCode:homePodModelCodeOverride];
LABEL_43:
    services = self->_services;
    if (!services)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_services;
      self->_services = v14;

      services = self->_services;
    }

    [(NSMutableDictionary *)services setObject:startCopy forKeyedSubscript:serviceUUID];
    [(SDNearbyAgent *)self _update];
    LODWORD(self) = 0;
    goto LABEL_46;
  }

  self = 4294960575;
LABEL_52:
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266234(self);
  }

LABEL_46:

  return self;
}

- (void)serviceStop:(id)stop
{
  stopCopy = stop;
  serviceUUID = [stopCopy serviceUUID];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266274(stopCopy);
    if (serviceUUID)
    {
      goto LABEL_5;
    }
  }

  else if (serviceUUID)
  {
LABEL_5:
    [(NSMutableDictionary *)self->_services removeObjectForKey:serviceUUID];
    [(SDNearbyAgent *)self _update];
    goto LABEL_6;
  }

  sub_1002662B4();
LABEL_6:
}

- (void)serviceReceivedFrameType:(unsigned __int8)type serviceType:(unsigned __int8)serviceType data:(id)data peer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  services = self->_services;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025C9D4;
  v15[3] = &unk_1008D58E0;
  serviceTypeCopy = serviceType;
  typeCopy = type;
  v16 = dataCopy;
  v17 = peerCopy;
  v13 = peerCopy;
  v14 = dataCopy;
  [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)serviceSendRequest:(id)request service:(id)service
{
  requestCopy = request;
  serviceCopy = service;
  v8 = [(SDNearbyAgent *)self _sendMessage:requestCopy frameType:9 service:serviceCopy session:0];
  if (v8)
  {
    v9 = v8;
    responseMessageInternalHandler = [serviceCopy responseMessageInternalHandler];

    if (responseMessageInternalHandler)
    {
      if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266328(requestCopy, serviceCopy);
      }

      v11 = [[SFResponseMessage alloc] initWithRequestMessage:requestCopy];
      v15 = @"error";
      v12 = [NSNumber numberWithInt:v9];
      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v11 setHeaderFields:v13];

      responseMessageInternalHandler2 = [serviceCopy responseMessageInternalHandler];
      (responseMessageInternalHandler2)[2](responseMessageInternalHandler2, v11);
    }
  }
}

- (int)sessionStart:(id)start
{
  startCopy = start;
  peerDevice = [startCopy peerDevice];
  identifier = [peerDevice identifier];
  identifier2 = [startCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002663A4(startCopy, identifier2);
  }

  v8 = 0;
  v9 = 4294960588;
  if (!identifier || !identifier2)
  {
    goto LABEL_37;
  }

  v10 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:identifier2];

  if (v10)
  {
    v8 = 0;
    v9 = 4294960575;
    goto LABEL_37;
  }

  if ([(NSMutableDictionary *)self->_sessions count]> 0x7F)
  {
    v8 = 0;
    v9 = 4294960532;
    goto LABEL_37;
  }

  v11 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier];
  if (v11)
  {
    v8 = v11;
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266410(startCopy);
    }

    [v8 addClient:startCopy];
    [v8 setAcceptor:0];
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266450(startCopy);
    }

    bleDevice = [peerDevice bleDevice];
    if (!bleDevice)
    {
      bleDevice = objc_alloc_init(SFBLEDevice);
      [bleDevice setIdentifier:identifier];
    }

    v8 = [[SFBLEConnection alloc] initWithDevice:bleDevice acceptor:0];
    [v8 setDispatchQueue:self->_dispatchQueue];
    [v8 setSessionFlags:{objc_msgSend(startCopy, "sessionFlags")}];
    if ([startCopy serviceType] == 4)
    {
      [v8 setUseCase:131103];
    }

    bleConnections = self->_bleConnections;
    if (!bleConnections)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_bleConnections;
      self->_bleConnections = v14;

      bleConnections = self->_bleConnections;
    }

    [(NSMutableDictionary *)bleConnections setObject:v8 forKeyedSubscript:identifier];
    [v8 addClient:startCopy];
    [v8 activateDirect];
  }

  if (![startCopy serviceType])
  {
    v27 = 0;
    v28 = 0;
    serviceUUID = [startCopy serviceUUID];
    [serviceUUID getUUIDBytes:&v27];

    if (v27 == 0x10000001000000 && v28 == 0xDF80FBF31F000080)
    {
      v26 = [(SDNearbyAgent *)self _setupSendCreateSession:startCopy cnx:v8];
      if (v26)
      {
        v9 = v26;
LABEL_37:
        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_100266490(v9);
        }

        goto LABEL_34;
      }
    }
  }

  state = [self->_bleWPNearby state];
  if (state)
  {
    v19 = state;
    bluetoothStateChangedHandler = [startCopy bluetoothStateChangedHandler];

    if (bluetoothStateChangedHandler)
    {
      bluetoothStateChangedHandler2 = [startCopy bluetoothStateChangedHandler];
      (bluetoothStateChangedHandler2)[2](bluetoothStateChangedHandler2, v19);
    }
  }

  sessions = self->_sessions;
  if (!sessions)
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = self->_sessions;
    self->_sessions = v23;

    sessions = self->_sessions;
  }

  [(NSMutableDictionary *)sessions setObject:startCopy forKeyedSubscript:identifier2];
  [(SDNearbyAgent *)self _update];
  LODWORD(v9) = 0;
LABEL_34:

  return v9;
}

- (void)sessionStop:(id)stop
{
  stopCopy = stop;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  peerDevice = [stopCopy peerDevice];
  identifier = [peerDevice identifier];

  if (identifier)
  {
    v6 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier];
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent sessionStop:]", 30, "Session stop: %@, peer %@, connection %@\n", stopCopy, identifier, v6);
    }

    if (v6 && ([v6 removeClient:stopCopy] & 1) == 0)
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002664D0(stopCopy);
      }

      [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:identifier];
      [v6 invalidate];
    }
  }

  else if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266510(stopCopy);
  }

  identifier2 = [stopCopy identifier];

  if (identifier2)
  {
    [(NSMutableDictionary *)self->_sessions removeObjectForKey:identifier2];
  }

  [(SDNearbyAgent *)self _update];
}

- (void)sessionReceivedFrameType:(unsigned __int8)type serviceType:(unsigned __int8)serviceType data:(id)data peer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  sessions = self->_sessions;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025D290;
  v15[3] = &unk_1008D5908;
  serviceTypeCopy = serviceType;
  typeCopy = type;
  v16 = peerCopy;
  v17 = dataCopy;
  v13 = dataCopy;
  v14 = peerCopy;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)sessionSendEvent:(id)event session:(id)session
{
  eventCopy = event;
  sessionCopy = session;
  serviceUUID = [sessionCopy serviceUUID];
  v23 = 0;
  v24 = 0;
  if (serviceUUID)
  {
    v9 = serviceUUID;
    [serviceUUID getUUIDBytes:&v23];
    v10 = v23 == 0x10000006000000 && v24 == 0xDF80FBF31F000080;
    v11 = !v10;

    if (!v11)
    {
      peerDevice = [sessionCopy peerDevice];
      identifier = [peerDevice identifier];

      if (identifier)
      {
        v14 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier];
        if (v14)
        {
          v15 = v14;
          headerFields = [eventCopy headerFields];

          if (!headerFields)
          {
            bodyData = [eventCopy bodyData];
            if ([bodyData length])
            {
              v18 = objc_alloc_init(NSMutableData);
              v22 = 11;
              [v18 appendBytes:&v22 length:1];
              [v18 appendData:bodyData];
              v19[0] = _NSConcreteStackBlock;
              v19[1] = 3221225472;
              v19[2] = sub_10025D654;
              v19[3] = &unk_1008CF250;
              bodyData = bodyData;
              v20 = bodyData;
              v21 = identifier;
              [v15 sendData:v18 completion:v19];
            }

            else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100266584();
            }

            goto LABEL_15;
          }

          if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100266550();
          }

LABEL_25:
          bodyData = 0;
LABEL_15:

          goto LABEL_16;
        }

        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_1002665B8(identifier);
        }
      }

      else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_1002665F8();
      }

      v15 = 0;
      goto LABEL_25;
    }
  }

  [(SDNearbyAgent *)self _sendMessage:eventCopy frameType:8 service:0 session:sessionCopy];
LABEL_16:
}

- (void)sessionSendRequest:(id)request session:(id)session
{
  requestCopy = request;
  sessionCopy = session;
  v8 = [(SDNearbyAgent *)self _sendMessage:requestCopy frameType:9 service:0 session:sessionCopy];
  if (v8)
  {
    v9 = v8;
    responseMessageInternalHandler = [sessionCopy responseMessageInternalHandler];

    if (responseMessageInternalHandler)
    {
      if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266688(requestCopy, sessionCopy);
      }

      v11 = [[SFResponseMessage alloc] initWithRequestMessage:requestCopy];
      v15 = @"error";
      v12 = [NSNumber numberWithInt:v9];
      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v11 setHeaderFields:v13];

      responseMessageInternalHandler2 = [sessionCopy responseMessageInternalHandler];
      (responseMessageInternalHandler2)[2](responseMessageInternalHandler2, v11);
    }
  }
}

- (int)_sendMessage:(id)message frameType:(unsigned __int8)type service:(id)service session:(id)session
{
  messageCopy = message;
  typeCopy = type;
  serviceCopy = service;
  sessionCopy = session;
  v65 = messageCopy;
  identifier = [messageCopy identifier];
  v76 = 0;
  v81 = 0;
  v82 = 0;
  v80[0] = 0;
  v80[1] = 0;
  if ([(NSMutableDictionary *)self->_bleConnections count])
  {
    if (sessionCopy)
    {
      peerDevice = [sessionCopy peerDevice];
      identifier2 = [peerDevice identifier];

      identifier3 = [sessionCopy identifier];
      v17 = sessionCopy;
    }

    else
    {
      peerDevice2 = [v65 peerDevice];
      identifier2 = [peerDevice2 identifier];

      if (!identifier2)
      {
        allValues = [(NSMutableDictionary *)self->_bleConnections allValues];
        firstObject = [allValues firstObject];
        peerDevice3 = [firstObject peerDevice];
        identifier2 = [peerDevice3 identifier];
      }

      identifier3 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F5651];
      v17 = serviceCopy;
    }

    serviceUUID = [v17 serviceUUID];
    v25 = serviceUUID;
    if (identifier2)
    {
      v26 = objc_alloc_init(NSMutableData);
      [v26 appendBytes:&typeCopy length:1];
      if (identifier3)
      {
        [identifier3 getUUIDBytes:v80];
        [v26 appendBytes:v80 length:16];
        if (identifier)
        {
          [identifier getUUIDBytes:v80];
          [v26 appendBytes:v80 length:16];
          headerFields = [v65 headerFields];
          if (headerFields)
          {
            v28 = headerFields;
          }

          else
          {
            v28 = &__NSDictionary0__struct;
          }

          v29 = [v28 mutableCopy];
          if (v25)
          {
            v64 = identifier3;
            v61 = v28;
            v30 = sessionCopy;
            v31 = identifier;
            v32 = serviceCopy;
            v33 = v26;
            [v25 getUUIDBytes:&v81];
            v34 = [NSData dataWithBytes:&v81 length:16];
            [v29 setObject:v34 forKeyedSubscript:@"_serviceUUID"];

            v62 = v29;
            Data = CFBinaryPlistStreamedCreateDataEx();
            v26 = v33;
            [v33 appendData:Data];
            bodyData = [v65 bodyData];
            if (!bodyData)
            {
              bodyData = +[NSData data];
            }

            v60 = bodyData;
            v37 = CFBinaryPlistStreamedCreateDataEx();

            v63 = v37;
            [v33 appendData:v37];
            if (v81 == 0x10000001000000 && v82 == 0xDF80FBF31F000080)
            {
              v48 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier2];
              if (v48)
              {
                mutableBytes = [v33 mutableBytes];
                serviceCopy = v32;
                if (typeCopy - 8 <= 2)
                {
                  *mutableBytes = typeCopy + 26;
                }

                sessionCopy = v30;
                v76 = [(SDNearbyAgent *)self _setupSendData:v26 sessionIdentifier:v64 cnx:v48 clientSession:v30];
                identifier = v31;
              }

              else
              {
                sub_1002667C4(&v76);
                serviceCopy = v32;
                identifier = v31;
                sessionCopy = v30;
              }

              v28 = v61;
              v29 = v62;
              identifier3 = v64;
            }

            else
            {
              v59 = v25;
              deviceIDs = [v65 deviceIDs];
              v40 = deviceIDs;
              if (deviceIDs)
              {
                v58 = v32;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v41 = [deviceIDs countByEnumeratingWithState:&v72 objects:v79 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v73;
                  do
                  {
                    v44 = 0;
                    do
                    {
                      v45 = identifier2;
                      if (*v73 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      identifier2 = *(*(&v72 + 1) + 8 * v44);

                      v46 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier2];
                      if (v46)
                      {
                        v69[0] = _NSConcreteStackBlock;
                        v69[1] = 3221225472;
                        v69[2] = sub_10025E0F4;
                        v69[3] = &unk_1008CF250;
                        v70 = identifier2;
                        v71 = v65;
                        [v46 sendData:v33 completion:v69];
                      }

                      else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
                      {
                        sub_100266704(identifier2);
                      }

                      v44 = v44 + 1;
                    }

                    while (v42 != v44);
                    v47 = [v40 countByEnumeratingWithState:&v72 objects:v79 count:16];
                    v42 = v47;
                  }

                  while (v47);
                }

                identifier2 = 0;
                sessionCopy = v30;
                identifier = v31;
                identifier3 = v64;
                v26 = v33;
                serviceCopy = v58;
              }

              else
              {
                v50 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier2];
                if (v50)
                {
                  v51 = v50;
                  v66[0] = _NSConcreteStackBlock;
                  v66[1] = 3221225472;
                  v66[2] = sub_10025E17C;
                  v66[3] = &unk_1008CF250;
                  identifier2 = identifier2;
                  v67 = identifier2;
                  v68 = v65;
                  [v51 sendData:v33 completion:v66];
                }

                else
                {
                  sub_100266744(&v76, identifier2, &v78);
                  identifier2 = v78;
                }

                serviceCopy = v32;
                identifier = v31;
                sessionCopy = v30;
                identifier3 = v64;
              }

              v25 = v59;
              v28 = v61;
              v29 = v62;
            }

            v52 = v60;
          }

          else
          {
            v76 = -6708;
            if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
            {
              sub_100266834();
            }

            v63 = 0;
            v52 = 0;
            v25 = 0;
          }
        }

        else
        {
          v76 = -6708;
          if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
          {
            sub_100266868();
          }

          v29 = 0;
          v63 = 0;
          v52 = 0;
          v28 = 0;
        }
      }

      else
      {
        v76 = -6708;
        if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
        {
          sub_10026689C();
        }

        v29 = 0;
        v63 = 0;
        v52 = 0;
        v28 = 0;
        identifier3 = 0;
      }
    }

    else
    {
      v76 = 0;
      if (dword_100973248 <= 20)
      {
        if (dword_100973248 != -1 || (serviceUUID = _LogCategory_Initialize(), serviceUUID))
        {
          sub_1002668D0(serviceUUID, v23, v24);
        }
      }

      v29 = 0;
      v63 = 0;
      v52 = 0;
      v28 = 0;
      v26 = 0;
      identifier2 = 0;
    }
  }

  else
  {
    v29 = 0;
    v63 = 0;
    v52 = 0;
    v28 = 0;
    v26 = 0;
    v25 = 0;
    identifier3 = 0;
    identifier2 = 0;
    v76 = 0;
  }

  v53 = v76;
  if (v76)
  {
    if (dword_100973248 <= 60)
    {
      if (dword_100973248 != -1 || (v54 = v52, v55 = _LogCategory_Initialize(), v52 = v54, v53 = v76, v55))
      {
        v57 = v53;
        v53 = v52;
        LogPrintF(&dword_100973248, "[SDNearbyAgent _sendMessage:frameType:service:session:]", 60, "### Send message failed: %#m\n", v57);
        v52 = v53;
        LODWORD(v53) = v76;
      }
    }
  }

  return v53;
}

- (int)_setupHandleCreateSession:(id)session data:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266984(sessionCopy, dataCopy);
  }

  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v10 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F5640];
  if (!v10)
  {
    v11 = 0;
LABEL_18:
    bytes = 4294960596;
    goto LABEL_21;
  }

  v11 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v10];
  if (!v11)
  {
    bytes = 4294960569;
    goto LABEL_21;
  }

  if (v9 > 16)
  {
    if (v9 < 0x31)
    {
      bytes = 4294960553;
      goto LABEL_21;
    }

    v12 = [[NSUUID alloc] initWithUUIDBytes:bytes + 1];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v12];
      if (!v14)
      {
        v14 = objc_alloc_init(SDSession);
        [(SDSession *)v14 setIdentifier:v13];
        peerDevice = [sessionCopy peerDevice];
        identifier = [peerDevice identifier];
        [(SDSession *)v14 setPeerIdentifier:identifier];

        setupSessions = self->_setupSessions;
        if (!setupSessions)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_setupSessions;
          self->_setupSessions = v18;

          setupSessions = self->_setupSessions;
        }

        [(NSMutableDictionary *)setupSessions setObject:v14 forKeyedSubscript:v13];
      }

      [(SDSession *)v14 setSessionCreated:1];
      RandomBytes();
      cccurve25519_make_pub();
      cccurve25519();
      CryptoHKDF();
      v20 = [NSData dataWithBytes:v25 length:32, v25];
      [(SDSession *)v14 setReadKey:v20];

      [(SDSession *)v14 setReadNonce:0];
      CryptoHKDF();
      v21 = [NSData dataWithBytes:v25 length:32, v25];
      [(SDSession *)v14 setWriteKey:v21];

      [(SDSession *)v14 setWriteNonce:0];
      v22 = objc_alloc_init(NSMutableData);
      v24 = 33;
      [v22 appendBytes:&v24 length:1];
      [v22 appendBytes:bytes + 1 length:16];
      [v22 appendBytes:v26 length:32];
      [sessionCopy sendData:v22 completion:0];

      LODWORD(bytes) = 0;
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  bytes = 4294960588;
LABEL_21:
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266A00(bytes);
  }

LABEL_14:

  return bytes;
}

- (int)_setupHandleSessionEncryptedFrame:(id)frame type:(unsigned __int8)type cnx:(id)cnx
{
  typeCopy = type;
  frameCopy = frame;
  cnxCopy = cnx;
  bytes = [frameCopy bytes];
  v11 = [frameCopy length];
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266A40(typeCopy, cnxCopy, frameCopy);
  }

  if (v11 <= 16)
  {
    v18 = 0;
    v15 = 0;
    v13 = 0;
    v21 = 4294960588;
  }

  else
  {
    v12 = v11 - 33;
    if (v11 < 0x21)
    {
      v18 = 0;
      v15 = 0;
      v13 = 0;
      v21 = 4294960553;
    }

    else
    {
      v13 = [[NSUUID alloc] initWithUUIDBytes:bytes + 1];
      if (v13)
      {
        v14 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v14;
          selfCopy = self;
          v24 = typeCopy;
          readKey = [v14 readKey];
          bytes2 = [readKey bytes];

          if (bytes2)
          {
            [v15 readNonce];
            v18 = [[NSMutableData alloc] initWithLength:v11 - 33];
            mutableBytes = [v18 mutableBytes];
            v20 = chacha20_poly1305_decrypt_all_96x32();
            if (v20)
            {
              v21 = v20;
              LOBYTE(typeCopy) = v24;
            }

            else
            {
              [v15 setReadNonce:{objc_msgSend(v15, "readNonce") + 1}];
              LOBYTE(typeCopy) = v24;
              v21 = [(SDNearbyAgent *)selfCopy _setupHandleSessionMessageType:v24 src:mutableBytes end:&mutableBytes[v12] cnx:cnxCopy session:v15];
              if (!v21)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            v18 = 0;
            v21 = 4294960551;
            LOBYTE(typeCopy) = v24;
          }
        }

        else
        {
          if (dword_100973248 > 60)
          {
            v18 = 0;
            v15 = 0;
            LODWORD(v21) = -6727;
            goto LABEL_15;
          }

          if (dword_100973248 != -1 || _LogCategory_Initialize())
          {
            sub_100266AD4(v13);
          }

          v18 = 0;
          v15 = 0;
          v21 = 4294960569;
        }
      }

      else
      {
        v18 = 0;
        v15 = 0;
        v21 = 4294960596;
      }
    }
  }

  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266B14(typeCopy, cnxCopy, v21);
  }

LABEL_15:

  return v21;
}

- (int)_setupHandleSessionMessageType:(unsigned __int8)type src:(const char *)src end:(const char *)end cnx:(id)cnx session:(id)session
{
  typeCopy = type;
  cnxCopy = cnx;
  sessionCopy = session;
  v54 = 0;
  if (end - src <= 15)
  {
    v54 = -6750;
    if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100266C18(end - src);
    }

    v12 = 0;
    v50 = 0;
    v15 = 0;
    v19 = 0;
    v18 = 0;
    v31 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_35;
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:src];
  v13 = CFBinaryPlistStreamedCreateWithBytesEx2();
  v50 = v13;
  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
LABEL_60:
    v19 = 0;
    v18 = 0;
    v31 = 0;
    v20 = 0;
    v22 = 0;
    v26 = 0;
    v54 = -6756;
    goto LABEL_36;
  }

  v15 = CFBinaryPlistStreamedCreateWithBytesEx2();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  switch(typeCopy)
  {
    case '$':
      selfCopy3 = self;
      v17 = objc_alloc_init(SFResponseMessage);
      v19 = 0;
      v18 = 0;
      v51 = v17;
      break;
    case '#':
      selfCopy3 = self;
      v17 = objc_alloc_init(SFRequestMessage);
      v19 = 0;
      v51 = 0;
      v18 = v17;
      break;
    case '""':
      selfCopy3 = self;
      v17 = objc_alloc_init(SFEventMessage);
      v18 = 0;
      v51 = 0;
      v19 = v17;
      break;
    default:
      v46 = FatalErrorF("Bad frame type: %d", typeCopy);
      return [(SDNearbyAgent *)v46 _setupSendCreateSession:v47 cnx:v48, v49];
  }

  v20 = v17;
  v21 = v12;
  [v20 setIdentifier:v12];
  [v20 setHeaderFields:v14];
  [v20 setBodyData:v15];
  v22 = objc_alloc_init(SFDevice);
  peerDevice = [cnxCopy peerDevice];
  identifier = [peerDevice identifier];
  [v22 setIdentifier:identifier];

  [v20 setPeerDevice:v22];
  clientSession = [sessionCopy clientSession];
  if (!clientSession)
  {
    v32 = [[NSUUID alloc] initWithUUIDBytes:&unk_1007F5640];
    if (v32)
    {
      v33 = [(NSMutableDictionary *)selfCopy3->_services objectForKeyedSubscript:v32];
      v34 = v33;
      if (v33)
      {
        if (v19 && ([v33 eventMessageHandler], v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
        {
          eventMessageHandler = [v34 eventMessageHandler];
          v37 = eventMessageHandler[2];
        }

        else
        {
          if (!v18 || ([v34 requestMessageHandler], v40 = objc_claimAutoreleasedReturnValue(), v40, !v40))
          {
            if (v51)
            {
              responseMessageInternalHandler = [v34 responseMessageInternalHandler];

              if (responseMessageInternalHandler)
              {
                responseMessageInternalHandler2 = [v34 responseMessageInternalHandler];
                v31 = v51;
                (responseMessageInternalHandler2)[2](responseMessageInternalHandler2, v51);

                v12 = v21;
                goto LABEL_34;
              }
            }

            if (dword_100973248 <= 60)
            {
              v12 = v21;
              if (dword_100973248 != -1 || _LogCategory_Initialize())
              {
                sub_100266BD8(v20);
              }

              goto LABEL_33;
            }

LABEL_32:
            v12 = v21;
LABEL_33:
            v31 = v51;
LABEL_34:

LABEL_35:
            v26 = 0;
            goto LABEL_36;
          }

          eventMessageHandler = [v34 requestMessageHandler];
          v37 = eventMessageHandler[2];
        }

        v37();

        goto LABEL_32;
      }

      v45 = -6727;
    }

    else
    {
      v34 = 0;
      v45 = -6700;
    }

    v54 = v45;
    goto LABEL_32;
  }

  v26 = clientSession;
  if (v19 && ([clientSession eventMessageHandler], v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    eventMessageHandler2 = [v26 eventMessageHandler];
    (eventMessageHandler2)[2](eventMessageHandler2, v19);

    v12 = v21;
  }

  else
  {
    v12 = v21;
    if (!v18 || ([v26 requestMessageHandler], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
    {
      v31 = v51;
      if (v51 && ([v26 responseMessageInternalHandler], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
      {
        responseMessageInternalHandler3 = [v26 responseMessageInternalHandler];
        (responseMessageInternalHandler3)[2](responseMessageInternalHandler3, v51);
      }

      else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266B98(v20);
      }

      goto LABEL_36;
    }

    requestMessageHandler = [v26 requestMessageHandler];
    (requestMessageHandler)[2](requestMessageHandler, v18);
  }

  v31 = v51;
LABEL_36:
  v41 = v54;
  if (v54)
  {
    if (dword_100973248 <= 60)
    {
      if (dword_100973248 != -1 || (v41 = v54, _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100973248, "[SDNearbyAgent _setupHandleSessionMessageType:src:end:cnx:session:]", 60, "### BLE SetupRecvMsg failed: %#m\n", v41);
        LODWORD(v41) = v54;
      }
    }
  }

  return v41;
}

- (int)_setupSendCreateSession:(id)session cnx:(id)cnx
{
  sessionCopy = session;
  cnxCopy = cnx;
  identifier = [sessionCopy identifier];
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266C58(identifier);
  }

  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21[0] = 0;
  v21[1] = 0;
  if (identifier)
  {
    v9 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:identifier];
    if (!v9)
    {
      v9 = objc_alloc_init(SDSession);
      [(SDSession *)v9 setIdentifier:identifier];
      peerDevice = [cnxCopy peerDevice];
      identifier2 = [peerDevice identifier];
      [(SDSession *)v9 setPeerIdentifier:identifier2];

      setupSessions = self->_setupSessions;
      if (!setupSessions)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = self->_setupSessions;
        self->_setupSessions = v13;

        setupSessions = self->_setupSessions;
      }

      [(NSMutableDictionary *)setupSessions setObject:v9 forKeyedSubscript:identifier];
    }

    [(SDSession *)v9 setClientSession:sessionCopy];
    RandomBytes();
    cccurve25519_make_pub();
    v15 = [NSData dataWithBytes:v22 length:32];
    [(SDSession *)v9 setDhSecretKey:v15];

    v16 = objc_alloc_init(NSMutableData);
    v19 = 32;
    [v16 appendBytes:&v19 length:1];
    [identifier getUUIDBytes:v21];
    [v16 appendBytes:v21 length:16];
    [v16 appendBytes:v23 length:32];
    [cnxCopy sendData:v16 completion:0];

    v17 = 0;
  }

  else
  {
    sub_100266C98(&v20);
    v17 = v20;
  }

  return v17;
}

- (int)_setupSendData:(id)data sessionIdentifier:(id)identifier cnx:(id)cnx clientSession:(id)session
{
  dataCopy = data;
  identifierCopy = identifier;
  cnxCopy = cnx;
  sessionCopy = session;
  v34[0] = 0;
  v34[1] = 0;
  v14 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:identifierCopy];
  if (v14 || (-[NSMutableDictionary allValues](self->_setupSessions, "allValues"), v30 = objc_claimAutoreleasedReturnValue(), [v30 firstObject], v14 = objc_claimAutoreleasedReturnValue(), v30, !sessionCopy) || v14)
  {
LABEL_2:
    if ([v14 sessionCreated])
    {
      writeKey = [v14 writeKey];
      bytes = [writeKey bytes];

      if (!bytes)
      {
        v28 = 4294960551;
        goto LABEL_23;
      }

      v35 = 0;
      writeNonce = [v14 writeNonce];
      [v14 setWriteNonce:{objc_msgSend(v14, "writeNonce") + 1}];
      if ([dataCopy length] < 0x11)
      {
        v28 = 4294960553;
        goto LABEL_23;
      }

      v17 = [dataCopy mutableCopy];
      mutableBytes = [v17 mutableBytes];
      [v17 length];
      if (*(mutableBytes + 1) == 0)
      {
        [v14 identifier];
        v33 = dataCopy;
        v19 = identifierCopy;
        v20 = cnxCopy;
        v22 = v21 = sessionCopy;
        [v22 getUUIDBytes:mutableBytes + 1];

        sessionCopy = v21;
        cnxCopy = v20;
        identifierCopy = v19;
        dataCopy = v33;
      }

      chacha20_poly1305_encrypt_all_96x32();
      [v17 appendBytes:v34 length:16];
      [cnxCopy sendData:v17 completion:0];
    }

    else
    {
      sendDataQueue = [v14 sendDataQueue];
      v24 = [sendDataQueue count];

      if (v24 > 0x7F)
      {
        v28 = 4294960532;
        goto LABEL_23;
      }

      sendDataQueue2 = [v14 sendDataQueue];

      if (!sendDataQueue2)
      {
        v26 = objc_alloc_init(NSMutableArray);
        [v14 setSendDataQueue:v26];
      }

      sendDataQueue3 = [v14 sendDataQueue];
      [sendDataQueue3 addObject:dataCopy];

      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266D60(v14);
      }
    }

    LODWORD(v28) = 0;
    goto LABEL_15;
  }

  v31 = sessionCopy;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266D20(identifierCopy);
  }

  v28 = [(SDNearbyAgent *)self _setupSendCreateSession:v31 cnx:cnxCopy];
  if (v28)
  {
    goto LABEL_22;
  }

  v32 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:identifierCopy];
  if (v32)
  {
    v14 = v32;

    goto LABEL_2;
  }

  sub_100266DC4(&v35);
  v28 = v35;
LABEL_22:

  v14 = 0;
LABEL_23:
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266E3C(v28);
  }

LABEL_15:

  return v28;
}

- (void)startUnlockBLEConnectionWithDevice:(id)device encrypted:(BOOL)encrypted
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025F570;
  block[3] = &unk_1008CF940;
  block[4] = self;
  v10 = deviceCopy;
  encryptedCopy = encrypted;
  v8 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_startUnlockBLEConnectionWithDevice:(id)device encrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v7 = identifier;
    v8 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier];
    if (v8)
    {
      v11 = v8;
      if (dword_100973248 <= 30)
      {
        if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          sub_100266E7C(v8, v9, v10);
        }
      }

      [v11 addClient:self];
      [v11 setAcceptor:0];
    }

    else
    {
      if (dword_100973248 <= 30)
      {
        if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          sub_100266E98(v8, v9, v10);
        }
      }

      v11 = [[SFBLEConnection alloc] initWithDevice:deviceCopy acceptor:0];
      [v11 setBleEncrypted:encryptedCopy];
      [v11 setDispatchQueue:self->_dispatchQueue];
      [v11 setLatencyCritical:1];
      [v11 setUseCase:131075];
      idsBluetoothDeviceIDsForLEPipe = [(SDNearbyAgent *)self idsBluetoothDeviceIDsForLEPipe];
      if ([idsBluetoothDeviceIDsForLEPipe containsObject:v7])
      {
        [v11 setLePipeCapable:1];
      }

      bleConnections = self->_bleConnections;
      if (!bleConnections)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = self->_bleConnections;
        self->_bleConnections = v14;

        bleConnections = self->_bleConnections;
      }

      [(NSMutableDictionary *)bleConnections setObject:v11 forKeyedSubscript:v7];
      [v11 addClient:self];
      [v11 activateDirect];
    }
  }

  else
  {
    v16 = sub_100266EB4();
    [(SDNearbyAgent *)v16 stopUnlockBLEConnectionWithDevice:v17, v18];
  }
}

- (void)stopUnlockBLEConnectionWithDevice:(id)device
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025F7D4;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_stopUnlockBLEConnectionWithDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = identifier;
    v6 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:identifier];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 removeClient:self];
      if ((v8 & 1) == 0)
      {
        if (dword_100973248 <= 30)
        {
          if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v8))
          {
            sub_100266ECC(v8, v9, v10);
          }
        }

        [(NSMutableDictionary *)self->_bleConnections removeObjectForKey:v5];
        [v7 invalidate];
      }
    }
  }

  else
  {
    v11 = sub_100266EE8();
    [(SDNearbyAgent *)v11 sendUnlockData:v12 toBLEDevice:v13 completion:v14, v15];
  }
}

- (void)sendUnlockData:(id)data toBLEDevice:(id)device completion:(id)completion
{
  dataCopy = data;
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025F99C;
  v15[3] = &unk_1008CFB48;
  v15[4] = self;
  v16 = dataCopy;
  v17 = deviceCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = deviceCopy;
  v14 = dataCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_sendUnlockData:(id)data toBLEDevice:(id)device direct:(BOOL)direct completion:(id)completion
{
  directCopy = direct;
  dataCopy = data;
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v14 = identifier;
    if (self->_unlockBtPipe && [deviceCopy useBTPipe])
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100266F00(dataCopy);
      }

      unlockBtPipe = self->_unlockBtPipe;
      if (directCopy)
      {
        [(SFBLEPipe *)unlockBtPipe sendFrameTypeDirect:3 payload:dataCopy completion:completionCopy];
      }

      else
      {
        [(SFBLEPipe *)unlockBtPipe sendFrameType:3 payload:dataCopy completion:completionCopy];
      }
    }

    else
    {
      v16 = [(NSMutableDictionary *)self->_bleConnections objectForKeyedSubscript:v14];
      if (v16)
      {
        v24 = 7;
        v17 = [NSMutableData dataWithBytes:&v24 length:1];
        [v17 appendData:dataCopy];
        if (directCopy)
        {
          [v16 sendDataDirect:v17 completion:completionCopy];
        }

        else
        {
          [v16 sendData:v17 completion:completionCopy];
        }
      }

      else
      {
        v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6745 userInfo:0];
        completionCopy[2](completionCopy, v18);
      }
    }
  }

  else
  {
    v19 = sub_100266F50();
    [(SDNearbyAgent *)v19 _unlockReceivedFrameData:v20 peer:v21 device:v22, v23];
  }
}

- (void)_unlockReceivedFrameData:(id)data peer:(id)peer device:(id)device
{
  dataCopy = data;
  peerCopy = peer;
  deviceCopy = device;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266F68(dataCopy, peerCopy);
  }

  services = self->_services;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10025FD1C;
  v16[3] = &unk_1008D5930;
  v17 = dataCopy;
  v18 = peerCopy;
  v12 = peerCopy;
  v13 = dataCopy;
  [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v16];
  v14 = +[NSNotificationCenter defaultCenter];
  v19[0] = @"SDNearbyAgentNotificationInfoKeyBLEDevice";
  v19[1] = @"SDNearbyAgentNotificationInfoKeyBLEData";
  v20[0] = deviceCopy;
  v20[1] = v13;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v14 postNotificationName:@"SDNearbyAgentNotificationUnlockBLEDataReceived" object:self userInfo:v15];
}

- (void)_unlockApproveBluetoothIDsChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025FE34;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_unlockDeviceFilterChangedForRequest:(id)request
{
  requestCopy = request;
  deviceFilter = [requestCopy deviceFilter];
  v6 = +[SDAutoUnlockTransport sharedTransport];
  approveBluetoothIDs = [v6 approveBluetoothIDs];
  [requestCopy setDeviceFilter:approveBluetoothIDs];

  deviceFilter2 = [requestCopy deviceFilter];

  if (!deviceFilter2)
  {
    v9 = objc_opt_new();
    [requestCopy setDeviceFilter:v9];
  }

  deviceFilter3 = [requestCopy deviceFilter];
  deviceLostHandler = [requestCopy deviceLostHandler];

  if (deviceLostHandler)
  {
    v12 = [NSMutableSet setWithSet:deviceFilter];
    [v12 minusSet:deviceFilter3];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        v17 = 0;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v17)];
          if (v18)
          {
            deviceLostHandler2 = [requestCopy deviceLostHandler];
            (deviceLostHandler2)[2](deviceLostHandler2, v18);
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v15);
    }
  }

  deviceFoundHandler = [requestCopy deviceFoundHandler];

  if (deviceFoundHandler)
  {
    v21 = [NSMutableSet setWithSet:deviceFilter3];
    [v21 minusSet:deviceFilter];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(NSMutableDictionary *)self->_ddNearbyInfoDevices objectForKeyedSubscript:*(*(&v29 + 1) + 8 * v26), v29];
          if (v27)
          {
            deviceFoundHandler2 = [requestCopy deviceFoundHandler];
            (deviceFoundHandler2)[2](deviceFoundHandler2, v27);
          }

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v24);
    }
  }
}

- (void)unlockUpdateAdvertising:(unsigned int)advertising mask:(unsigned int)mask
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002602CC;
  v5[3] = &unk_1008CFD30;
  advertisingCopy = advertising;
  maskCopy = mask;
  v5[4] = self;
  dispatch_async(dispatchQueue, v5);
}

- (void)unlockStartTestClientWithDevice:(id)device
{
  deviceCopy = device;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100266FFC(deviceCopy);
  }

  [(SDNearbyAgent *)self startUnlockBLEConnectionWithDevice:deviceCopy encrypted:1];
  unlockTestClientTimer = self->_unlockTestClientTimer;
  if (unlockTestClientTimer)
  {
    v6 = unlockTestClientTimer;
    dispatch_source_cancel(v6);
    v7 = self->_unlockTestClientTimer;
    self->_unlockTestClientTimer = 0;
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_unlockTestClientTimer;
  self->_unlockTestClientTimer = v8;

  v10 = self->_unlockTestClientTimer;
  v11 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v10, v11, 0x3B9ACA00uLL, 0xEE6B280uLL);
  v12 = self->_unlockTestClientTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002605FC;
  handler[3] = &unk_1008CE028;
  handler[4] = self;
  v13 = deviceCopy;
  v19 = v13;
  dispatch_source_set_event_handler(v12, handler);
  v14 = self->_unlockTestClientTimer;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002606E8;
  v16[3] = &unk_1008CE028;
  v16[4] = self;
  v17 = v13;
  v15 = v13;
  dispatch_source_set_cancel_handler(v14, v16);
  dispatch_resume(self->_unlockTestClientTimer);
}

- (void)unlockStopTestClient
{
  selfCopy = self;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1002670A8(self, a2, v2);
    }
  }

  unlockTestClientTimer = selfCopy->_unlockTestClientTimer;
  if (unlockTestClientTimer)
  {
    v6 = unlockTestClientTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_unlockTestClientTimer;
    selfCopy->_unlockTestClientTimer = 0;
  }
}

- (void)unlockStartTestServer
{
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1002670C4(self, a2, v2);
    }
  }
}

- (void)unlockStopTestServer
{
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1002670E0(self, a2, v2);
    }
  }
}

- (void)_systemWillSleep
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260920;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)hasAdHocPairings
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_idIdentityArray;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        if ([*(*(&v7 + 1) + 8 * i) type] == 15)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (NSArray)adHocPairedDeviceIdentities
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_idIdentityArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 type] == 15)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)cutWiFiManagerLinkDidChange:(id)change context:(id)context
{
  changeCopy = change;
  contextCopy = context;
  v10 = contextCopy;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (contextCopy = _LogCategory_Initialize(), contextCopy))
    {
      sub_1002670FC(contextCopy, v8, v9);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260C40;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)testPipePing
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260CBC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_testPipePing
{
  if (self->_unlockBtPipe)
  {
    selfCopy = self;
    v6 = [[NSMutableData alloc] initWithLength:8];
    v4 = v6;
    mutableBytes = [v6 mutableBytes];
    *mutableBytes = CFAbsoluteTimeGetCurrent();
    [(SFBLEPipe *)selfCopy->_unlockBtPipe sendFrameType:1 payload:v6 completion:&stru_1008D5970];
  }

  else if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100267118(self, a2, v2);
    }
  }
}

- (int)_setupHandleSessionCreated:(id)created data:(id)data
{
  createdCopy = created;
  dataCopy = data;
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    peerDevice = [createdCopy peerDevice];
    identifier = [peerDevice identifier];
    LogPrintF(&dword_100973248, "[SDNearbyAgent _setupHandleSessionCreated:data:]", 50, "BLE SetupSessionCreated received from %@: %'.32@\n", identifier, dataCopy);
  }

  memset(v26, 0, sizeof(v26));
  if (v9 <= 16)
  {
    v12 = 0;
    v14 = 0;
    v24 = -6708;
  }

  else if (v9 < 0x31)
  {
    v12 = 0;
    v14 = 0;
    v24 = -6743;
  }

  else
  {
    v12 = [[NSUUID alloc] initWithUUIDBytes:bytes + 1];
    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_setupSessions objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        dhSecretKey = [v13 dhSecretKey];
        bytes2 = [dhSecretKey bytes];

        if (bytes2)
        {
          cccurve25519();
          CryptoHKDF();
          v17 = [NSData dataWithBytes:v26 length:32, v26];
          [v14 setReadKey:v17];

          [v14 setReadNonce:0];
          CryptoHKDF();
          v18 = [NSData dataWithBytes:v26 length:32, v26];
          [v14 setWriteKey:v18];

          [v14 setWriteNonce:0];
          [v14 setSessionCreated:1];
          while (1)
          {
            sendDataQueue = [v14 sendDataQueue];
            v20 = [sendDataQueue count];

            if (!v20)
            {
              break;
            }

            sendDataQueue2 = [v14 sendDataQueue];
            firstObject = [sendDataQueue2 firstObject];

            sendDataQueue3 = [v14 sendDataQueue];
            [sendDataQueue3 removeObjectAtIndex:0];

            [(SDNearbyAgent *)self _setupSendData:firstObject sessionIdentifier:v12 cnx:createdCopy clientSession:0];
          }

          v24 = 0;
        }

        else
        {
          v24 = -6745;
        }
      }

      else
      {
        v24 = -6727;
      }
    }

    else
    {
      v14 = 0;
      v24 = -6700;
    }
  }

  return v24;
}

@end