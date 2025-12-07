@interface BTSmartRoutingDaemon
+ (id)sharedBTSmartRoutingDaemon;
- (BOOL)_arbitrationTimeout:(id)timeout withScore:(int)score;
- (BOOL)_checkValidBatteryValue:(id)value;
- (BOOL)_deviceSupportsHijackV2:(id)v2 withDevice:(id)device;
- (BOOL)_getForceDisconnectBit:(id)bit;
- (BOOL)_inCaseLidClosed:(id)closed;
- (BOOL)_inEarConnectedCheck:(id)check;
- (BOOL)_inEarNearbyCheck:(id)check;
- (BOOL)_isAllWxEnabledInEarDetection;
- (BOOL)_isAnyConnectedWxInEarCheck;
- (BOOL)_isAnyUSBAudioDevicePluggedIn;
- (BOOL)_isAnyWxStream;
- (BOOL)_isDevicePairedCheck:(id)check;
- (BOOL)_isEligibleForPreemptiveBanner:(BOOL)banner firstPreemptiveBanner:(BOOL)preemptiveBanner inEarState:(BOOL)state srDeviceCount:(unint64_t)count audioState:(int64_t)audioState inAddress:(id)address;
- (BOOL)_isEligibleForPreemptiveBannerUponUnlock:(id)unlock;
- (BOOL)_isEligibleForTipiV2:(id)v2 firstDeviceTipiScore:(int)score secondDeviceTipiScore:(int)tipiScore currentDeviceScore:(int)deviceScore sourceDeviceCount:(unsigned int)count isOnDemandConnect:(BOOL)connect address:(id)address lastConnectedHost:(id)self0;
- (BOOL)_isInEarDetectionDisabled:(id)disabled;
- (BOOL)_isInEarToOutOfEar:(id)ear;
- (BOOL)_isInHijackBlockingMode;
- (BOOL)_isInTipi;
- (BOOL)_isMagnetConnectedDeviceforConnectionCheck:(id)check;
- (BOOL)_isMagnetConnectedDeviceforTipiHealingCheck:(id)check;
- (BOOL)_isManualConnection:(id)connection;
- (BOOL)_isMyAddress:(id)address;
- (BOOL)_isOtherTipiDeviceBeforeTrain:(id)train withIOS:(unsigned int)s withMacOS:(unsigned int)oS withWatchOS:(unsigned int)watchOS otherTipiDeviceIsWatch:(BOOL)watch;
- (BOOL)_isPhoneCall:(id)call;
- (BOOL)_isSmartRoutingCapableDevice:(id)device;
- (BOOL)_isUSBPluggedIn:(id)in;
- (BOOL)_isWxPaired:(id)paired;
- (BOOL)_lastConnectIsWatchCheck:(id)check;
- (BOOL)_shouldDelayRouteToSpeaker:(id)speaker;
- (BOOL)_showPreemptiveBannerIfNeeded:(id)needed inEarState:(BOOL)state audioState:(int64_t)audioState wxAddress:(id)address;
- (BOOL)_smartRoutingShowBanner:(int)banner withDevice:(id)device andDeviceAddress:(id)address andProductID:(unsigned int)d andCentralContentItemTxt:(id)txt andTimeout:(double)timeout andDeviceType:(unsigned int)type;
- (BOOL)_supportsPhoneWatchTipi:(unsigned int)tipi;
- (BOOL)_supportsSR:(id)r andProductID:(unsigned int)d;
- (BOOL)_supportsTipi:(id)tipi;
- (BOOL)_tipiHealingHijackTimerStart:(id)start withScore:(int)score;
- (BOOL)_verifyWxConnectedRouted:(id)routed;
- (BOOL)allowHijackWithAudioScore:(unsigned int)score hijackRoute:(id)route hijackDeniedReason:(id *)reason;
- (BOOL)isInAnyTipi;
- (BTSmartRoutingDaemon)init;
- (double)_lowestBatteryInfoForCBDevice:(id)device;
- (double)_lowestBatteryInfoForSFDevice:(id)device;
- (id)_bluetoothProductIDToLocalizationString:(unsigned int)string withActionButton:(BOOL)button;
- (id)_connectedHRMEnabledDevice;
- (id)_descriptionWithLevel:(int)level;
- (id)_findActiveWxDevice;
- (id)_getActiveNearbyWxAdress;
- (id)_getAllUSBAudioDeviceBtAddresses;
- (id)_getCurrentBTRouteAddress;
- (id)_getCurrentRoute;
- (id)_getEligibleNearbyWxDevice:(id *)device companionNeedsToBeIdle:(BOOL)idle isStreamingFromCompanion:(BOOL *)companion;
- (id)_getIDSDeviceFromBtAddress:(id)address;
- (id)_getIDSDeviceFromWxLastConnectedHost:(id)host;
- (id)_getInEarSrWxDevice;
- (id)_getJsonStringFromDictionary:(id)dictionary;
- (id)_getWxChipVersion:(unsigned int)version;
- (id)_getWxFWVersion:(id)version;
- (id)_hrmEnabledDeviceEligibleToRoute;
- (id)_lowestBatteryForDeviceWithAddress:(id)address;
- (id)_myBluetoothAddressString;
- (id)_nearbyHRMDeviceEligibleToConnectTo;
- (id)_nearbyHRMEnabledDevice;
- (id)_nearbyMacAddressTranslate:(id)translate;
- (id)_productColorAssetLookup:(unsigned int)lookup andAddress:(id)address;
- (id)_queryLocalAudioCategory;
- (id)_routedHRMEnabledDevice;
- (id)_selectHRMCapableDeviceFromDiscoveredDevices;
- (id)_sourceModelNameFromModelIdentifier:(id)identifier;
- (id)_verifyWxConnectedBTAddress:(id)address withVersion:(id)version;
- (id)descriptionWithLevel:(int)level;
- (int)_getInEarStateFromCbDevice:(id)device;
- (int)_nearbyDeviceType:(id)type;
- (int64_t)_getRssiNearby:(id)nearby;
- (unsigned)_getWxColorCode:(id)code;
- (unsigned)_getWxProductID:(id)d;
- (void)_TUMonitorEnsureStarted;
- (void)_TUMonitorEnsureStopped;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activate;
- (void)_activityMonitorEnsureStarted;
- (void)_activityMonitorEnsureStopped;
- (void)_anyPairedDeviceSupportsSmartRouting;
- (void)_budSwapDetectionStartTimer:(id)timer;
- (void)_cacheBudswapInfo:(id)info;
- (void)_callMonitorEnsureStarted;
- (void)_callMonitorEnsureStopped;
- (void)_cancelInUseBannerForCallTimer;
- (void)_cancelPairingTimer;
- (void)_cancelRingtoneTimer;
- (void)_cancelStemClickResumeTimer;
- (void)_cancelStemClickTransaction;
- (void)_cancelTriangleRecoveryTimer;
- (void)_checkIfHRMDeviceElectionHasFinished;
- (void)_checkIfPairedCompanionDeviceSupportsSmartRouting;
- (void)_checkStemClickResponse;
- (void)_checkTriangleRecovery;
- (void)_clearAllDisconnectTicks;
- (void)_connectToHeadphone:(id)headphone;
- (void)_connectToHeadphoneWithAddress:(id)address;
- (void)_connectToUSBDevice:(id)device isUserInitiate:(BOOL)initiate;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_connectedDeviceMonitorEnsureStarted;
- (void)_connectedDeviceMonitorEnsureStopped;
- (void)_constructAndSendTipiScoreMessageToWx:(id)wx withScore:(int)score;
- (void)_dataRelayAddRequestedDataTypesForServer:(id)server;
- (void)_dataRelayClientMonitorEnsureStarted;
- (void)_dataRelayRemoveRequestedDataTypesForServer:(id)server;
- (void)_determineHRMCapabilityOfDevice:(id)device;
- (void)_disconnectOtherTipiDevice:(id)device;
- (void)_disconnectReason:(id)reason reason:(unint64_t)smartRoutingDisconnectReason;
- (void)_dismissAnyPairingBanner;
- (void)_evaluateNearbyDevice;
- (void)_evaluateNearbyHRMDevice:(id)device;
- (void)_evaluateTemporaryOverride:(id)override;
- (void)_evaluatorEnsureStarted;
- (void)_evaluatorEnsureStopped;
- (void)_evaluatorRun;
- (void)_evaluatorRunForUSBDevice:(id)device trigger:(int)trigger;
- (void)_evaluatorRunInUseBanner:(id)banner;
- (void)_evaluatorRunTipiElection:(id)election nearbyInfoDevicesMap:(id)map localScore:(int)score;
- (void)_generateEvaluatorError:(id)error errorReason:(id *)reason;
- (void)_handleCallStateChange:(id)change;
- (void)_handleDataRelayStartForWorkout;
- (void)_handleFitnessPlusDRServerTeardown;
- (void)_handleHRMSessionChanged:(BOOL)changed;
- (void)_handleHighestAudioCategoryChange:(id)change;
- (void)_handleHijackBlockingwithDevice:(id)device;
- (void)_handleMediaPauseStateChanged;
- (void)_handleMediaPlayStateChange:(id)change;
- (void)_handleMediaServerConnectionDied:(id)died;
- (void)_handlePairedWatchStatusDidChange;
- (void)_handleProactiveRoutingRouteCheck:(id)check;
- (void)_handleSmartRoutingDisabled:(id)disabled;
- (void)_handleStemClickGestureReceived:(id)received;
- (void)_handleTUCallStateChange:(id)change;
- (void)_handleTipiScoreUpdate:(int)update;
- (void)_handleTriangleRecoveryInitiated:(id)initiated;
- (void)_handleWorkoutSessionStart;
- (void)_handleWorkoutSessionStop;
- (void)_hijackBackoffReset:(id)reset withReason:(id)reason;
- (void)_hijackBlockingModeChangedFromClient:(id)client mode:(BOOL)mode completion:(id)completion;
- (void)_iPhoneScreenOnPowerEvent;
- (void)_initializeConnectionToDevice:(id)device;
- (void)_logConnectionBackoffReason:(id)reason wxAddress:(id)address;
- (void)_logEvalError:(id)error;
- (void)_logEvalWxError:(id)error withError:(id)withError;
- (void)_logPreemptiveBannerEvalError:(id)error;
- (void)_mediaRouteDiscoveryStarted;
- (void)_mediaRouteDiscoveryStopped;
- (void)_mediaRouteHijackResponse:(int)response wxAddress:(id)address andAudioResponseID:(id)d andAllowedToHijack:(BOOL)hijack withReason:(id)reason;
- (void)_mediaRouteHijackResponseHandlerFor:(id)for allowedToHijack:(BOOL)hijack withReason:(id)reason;
- (void)_mediaRouteHijackWithAudioScore:(int)score wxAddress:(id)address andAudioResponseID:(id)d;
- (void)_mediaRouteMonitorActiveAudioRouteChanged:(id)changed;
- (void)_mediaRouteMonitorActivityLevelUpdate:(id)update;
- (void)_mediaRouteMonitorEnsureStarted;
- (void)_mediaRouteMonitorEnsureStopped;
- (void)_mediaRouteMonitorSpeakRoute;
- (void)_nearbyDeviceInfoCheck;
- (void)_nearbyDeviceInfoTriangleRecoveryTimer;
- (void)_nearbyInfoActivityChanged;
- (void)_nearbyInfoActivityCriticalStart;
- (void)_nearbyInfoActivityDelayCheck:(unint64_t)check;
- (void)_nearbyInfoDeviceFound:(id)found;
- (void)_nearbyInfoDeviceLost:(id)lost;
- (void)_nearbyInfoDiscoveryEnsureStarted;
- (void)_nearbyInfoDiscoveryEnsureStopped;
- (void)_nearbyInfoSetAudioRoutingScore;
- (void)_nearbyWxChanged:(id)changed;
- (void)_notifyOtherTipiCallState:(int)state;
- (void)_notifyOtherTipiDeviceTipiScoreChanged:(int)changed andNewScore:(int)score;
- (void)_otherTipiDeviceTipiScoreChanged:(id)changed withOptions:(id)options;
- (void)_pairedDeviceMonitorEnsureStarted;
- (void)_pairedDeviceMonitorEnsureStopped;
- (void)_pipeEnsureStarted;
- (void)_pipeEnsureStopped;
- (void)_postNotification:(const char *)notification;
- (void)_powerLogSmartIncomingConnection;
- (void)_powerLogSmartRoutingScanStarted:(unsigned __int8)started;
- (void)_powerLogSmartRoutingScanStopped:(unsigned __int8)stopped;
- (void)_powerMonitorEnsureStarted;
- (void)_powerMonitorEnsureStopped;
- (void)_powerMonitorScreenLockChanged;
- (void)_prefsChanged;
- (void)_prewarmAudioAccessoriesForFitnessWorkout;
- (void)_proactivelyTakeOwnership;
- (void)_proactivelyTakeOwnershipOfDevice:(id)device;
- (void)_receivedAudioCategory:(id)category withOptions:(id)options;
- (void)_receivedRelinquishOwnership:(id)ownership wxAddress:(id)address;
- (void)_recordStemClickToResponseDelay;
- (void)_relayConduitMessageEnsureStarted;
- (void)_relayConduitMessageReceived:(id)received andSourceDevice:(id)device messageType:(unsigned __int8)type messageData:(id)data;
- (void)_relayConduitMessageSend:(unsigned __int8)send withOptions:(id)options andWxAddress:(id)address andOtherAddress:(id)otherAddress;
- (void)_relayConduitMessageStartTimer:(id)timer withOptions:(id)options;
- (void)_removeTiPiState:(id)state;
- (void)_resetInUserBannerShown;
- (void)_resetStemClickTransaction;
- (void)_respondRoutingRequest:(id)request withResponseHandler:(id)handler wxAddress:(id)address;
- (void)_runUSBAudioRoutingPolicy:(id)policy;
- (void)_sendAudioCategory:(id)category withAudioCategory:(id)audioCategory;
- (void)_sendAudioCategoryToAllTipiDevices;
- (void)_sendAudioScoreChanged:(BOOL)changed;
- (void)_sendIntendedRouteInfoUpdateToWx:(id)wx withIntendedRoutingStatus:(BOOL)status;
- (void)_sendNowPlayingInfoUpdateToWx:(id)wx withMessage:(id)message withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address;
- (void)_sendNowPlayingTemporaryOverrideIfNeeded:(BOOL)needed;
- (void)_sendRouteReversedTipiEventForTipsSupport;
- (void)_sendTipiHealingRequest:(id)request andOtherTipiAddress:(id)address;
- (void)_sendTipiScoreUpdateToWx;
- (void)_setAutoRoute:(id)route withAutoRoute:(BOOL)autoRoute;
- (void)_setConnectedBannerTick:(unint64_t)tick;
- (void)_setDisconnectTick:(unint64_t)tick forWxAddress:(id)address;
- (void)_setHighPriorityTag:(id)tag withHighPriority:(BOOL)priority;
- (void)_setIsFirstConnentionAfterSREnable:(BOOL)enable forDevice:(id)device;
- (void)_setIsHiddenProperty:(id)property withIsHidden:(BOOL)hidden;
- (void)_setManualRouteFlag:(id)flag withManualRoute:(BOOL)route;
- (void)_setOtherTipiDeviceBTAddress:(id)address andName:(id)name sourceVersion:(id)version withResult:(id)result;
- (void)_setOwnership:(id)ownership withHijackRequest:(id)request withOwnership:(BOOL)withOwnership;
- (void)_setPhase1ConnectConfig:(id)config andType:(int)type;
- (void)_setPipeMessageStats:(unint64_t)stats;
- (void)_setTipiAndRoutedStateFlags:(unsigned int)flags forAddress:(id)address;
- (void)_setTipiAndRoutedStateFlags:(unsigned int)flags forDevice:(id)device;
- (void)_setTipiElectionReceivedLePipe:(id)pipe;
- (void)_setTipiElectionType:(BOOL)type withDevice:(id)device;
- (void)_setTotalCountIDSDevices:(id)devices;
- (void)_showLowBatteryBannerForWorkoutIfNeededForDevice:(id)device;
- (void)_showPreemptiveConnectedBanner:(id)banner;
- (void)_showSplitterBlockingAlert;
- (void)_sigTermReceived;
- (void)_smartRoutingAddRoute:(id)route;
- (void)_smartRoutingAddWxMapDevice:(id)device routingAction:(int)action otherAddress:(id)address otherName:(id)name otherSourceVersion:(id)version isRoutingInitialized:(BOOL)initialized newWx:(BOOL)wx;
- (void)_smartRoutingAddWxMapDeviceFromConnectedDevice:(id)device;
- (void)_smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler;
- (void)_smartRoutingChangeRoute:(id)route;
- (void)_smartRoutingConnectToEligibleHeadset:(id)headset;
- (void)_smartRoutingConnectionCompleted:(id)completed;
- (void)_smartRoutingControllerEnsureStarted;
- (void)_smartRoutingControllerEnsureStopped;
- (void)_smartRoutingLowerRateScan;
- (void)_smartRoutingModeCheck:(id)check;
- (void)_smartRoutingRouteCompleted:(__CFError *)completed withUUID:(id)d;
- (void)_startAudioStateSnapshotTimer;
- (void)_startEffectiveUnlockedAfterBootTimer:(unint64_t)timer;
- (void)_startHighActivityLevelTimer:(unint64_t)timer;
- (void)_startHijackMetricSubmission:(int64_t)submission wxAddress:(id)address version:(id)version;
- (void)_startIdleActivityScoreTimer:(unint64_t)timer;
- (void)_startInUseBannerTimer;
- (void)_startIncomingCallHijackTimer:(unint64_t)timer;
- (void)_startLEPipeConnect:(id)connect;
- (void)_startManualRouteChangeDetectionTimer:(id)timer;
- (void)_startNowPlayingTemporaryOverrideTimer:(unint64_t)timer;
- (void)_startPhoneOwnershipTimer:(unint64_t)timer;
- (void)_startPlaybackTimer;
- (void)_startRingtoneTimer;
- (void)_startRouteChangeDetectionTimer:(id)timer andAnswer:(int64_t)answer;
- (void)_startRouteCheckTimer:(id)timer andType:(int)type;
- (void)_startStemClickResumeTimer;
- (void)_startStemClickTransaction;
- (void)_startStemClickTransactionTimer;
- (void)_startTipiHealing:(id)healing withLastConnect:(id)connect;
- (void)_startWxDiscoveryForWorkout;
- (void)_startWxDiscoveryForWorkoutTimer:(unint64_t)timer;
- (void)_statsEnsureStarted;
- (void)_stopAudioStateSnapshotTimer:(BOOL)timer;
- (void)_submitConnectionMetric:(id)metric andError:(id)error;
- (void)_submitHijackBlockMetric:(id)metric withReason:(id)reason;
- (void)_submitManualConnectionMetric:(id)metric;
- (void)_submitManualRouteDetectionMetric:(id)metric;
- (void)_submitMetric:(id)metric;
- (void)_submitMetricNearby:(unsigned int)nearby;
- (void)_submitMetricTipiHealingforDevice:(id)device withDuration:(double)duration andLegacy:(BOOL)legacy;
- (void)_submitNearbyDeviceMetric:(unsigned int)metric;
- (void)_submitNonSRConnectionMetric:(id)metric;
- (void)_submitRouteChangeDetectionMetric:(id)metric andAnswer:(int64_t)answer;
- (void)_submitRouteCheckMetric:(id)metric andType:(int)type;
- (void)_submitStemGestureMetric:(id)metric;
- (void)_submitUSBAudioDeviceMetric:(id)metric;
- (void)_systemStatePushRequired;
- (void)_systemStateUpdateRequired;
- (void)_systemUIMonitorEnsureStarted;
- (void)_systemUIMonitorEnsureStopped;
- (void)_takeOwnershipFromWatchForDevice:(id)device;
- (void)_takeOwnershipOnPhone:(BOOL)phone;
- (void)_tipiHealing:(id)healing withDevice:(id)device;
- (void)_tipiHealingAttempt;
- (void)_tipiHealingCompleteCheckTimerForDevice:(id)device;
- (void)_tipiHealingHijackTimerReset;
- (void)_tipiHealingStartTimer:(id)timer;
- (void)_tipihHealingV2Handling:(id)handling;
- (void)_triggerTipiTableUpdate:(id)update;
- (void)_update;
- (void)_updateAccessoryID:(id)d connectionDeviceAddresses:(id)addresses completion:(id)completion;
- (void)_updateAudioRoute:(int)route withUUID:(id)d;
- (void)_updateLocalAudioCategory:(id)category;
- (void)_updateNearbyDeviceState:(id)state withAddress:(id)address withEasyPairing:(BOOL)pairing withState:(int)withState;
- (void)_updateNowPlayingInfoForConnectedWx:(id)wx withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address;
- (void)_updateOtherTipiBuildVersion:(id)version;
- (void)_updateOtherTipiDevice:(id)device otherAddress:(id)address otherName:(id)name otherVersion:(id)version withResult:(id)result;
- (void)_updateOtherTipiDevicewithAudioCategory:(id)category otherAddress:(id)address otherName:(id)name otherVersion:(id)version;
- (void)_updateRoutingActionForManuallyRoute;
- (void)_updateSRDiscoveredDeviceForBluetoothStateChanged:(int64_t)changed;
- (void)_updateSRDiscoveredDeviceForCBDeviceChanged:(id)changed connectionStatus:(unsigned __int8)status;
- (void)_updateSRDiscoveredDeviceForCBDiscoveryChanged;
- (void)_updateSRDiscoveredDeviceForNearbyWxChanged:(id)changed isNearby:(BOOL)nearby;
- (void)_updateSRDiscoveredDeviceForPairStateChange:(id)change isPaired:(BOOL)paired;
- (void)_updateUSBDeviceForBluetoothStateChange:(int64_t)change;
- (void)_updateUSBDeviceForPairStateChange:(id)change paired:(BOOL)paired;
- (void)_watchHintingRecovery;
- (void)_watchMediaControl;
- (void)_watchRecoveryStartTimer;
- (void)_workoutObserverEnsureStarted;
- (void)_workoutObserverEnsureStopped;
- (void)_workoutStateChanged;
- (void)_wxDeviceFound:(id)found;
- (void)_wxDeviceLost:(id)lost;
- (void)_wxDiscoveryEnsureStarted;
- (void)_wxDiscoveryEnsureStopped;
- (void)_wxDiscoveryWatchRecoveryEnsureStarted;
- (void)_wxDiscoveryWatchRecoveryEnsureStopped;
- (void)_wxDiscoveryWatchRecoveryFoundDevice:(id)device;
- (void)_wxDiscoveryWatchRecoveryLostDevice:(id)device;
- (void)activate;
- (void)activeHRMDeviceUpdateToDeviceWithAddress:(id)address;
- (void)activeHRMDeviceUpdateWithPushRequired:(BOOL)required;
- (void)areHeadphonesNearbyAndEligibleToPlay:(id)play;
- (void)clearCacheForBluetoothOff;
- (void)dataRelayAddAvailableDataTypesWithDevice:(id)device;
- (void)dataRelayAddAvailableDataTypesWithDiscoveredDevice:(id)device;
- (void)dataRelayRemoveAvailableDataTypesWithDevice:(id)device;
- (void)dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:(id)device;
- (void)disconnectReason:(id)reason reason:(unint64_t)a4;
- (void)getHijackAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote;
- (void)getHijackedAwayAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote;
- (void)getLocalAudioInfofromSnapshot:(int *)snapshot appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote;
- (void)getSmartRoutingStateForDeviceAddress:(id)address;
- (void)handleHealthKitDataWritePropertyToggled:(id)toggled;
- (void)hijackBlockingModeChangedFromClient:(id)client mode:(BOOL)mode completion:(id)completion;
- (void)invalidate;
- (void)logConnectionBackoffReason:(id)reason wxAddress:(id)address;
- (void)prewarmAudioAccessoriesForFitnessWorkout;
- (void)smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler;
- (void)smartRoutingChangeRoute:(id)route;
- (void)submitHijackMetric:(id)metric withV1:(BOOL)v1;
- (void)submitRouteActivityMetric:(id)metric activity:(id)activity;
- (void)systemStatePushRequired;
- (void)systemStateUpdateRequired;
- (void)updateCurrentAudioSnapshot;
- (void)usbDeviceFound:(id)found;
- (void)usbDeviceLost:(id)lost;
- (void)watchMediaControl;
@end

@implementation BTSmartRoutingDaemon

- (void)_update
{
  effectiveScreenLocked = self->_effectiveScreenLocked;
  p_powerMonitor = &self->_powerMonitor;
  if ([(CUSystemMonitor *)self->_powerMonitor screenActive])
  {
    v5 = [(CUSystemMonitor *)*p_powerMonitor screenLocked]& effectiveScreenLocked;
  }

  else
  {
    v5 = 1;
  }

  if (self->_effectiveScreenLocked != v5)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E41D8();
    }

    self->_effectiveScreenLocked = v5;
    if (v5)
    {
      [(BTSmartRoutingDaemon *)self _nearbyInfoActivityChanged];
      [(BTSmartRoutingDaemon *)self _resetInUserBannerShown];
      _getActiveNearbyWxAdress = [(BTSmartRoutingDaemon *)self _getActiveNearbyWxAdress];
      v7 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:_getActiveNearbyWxAdress];
      mach_absolute_time();
      [v7 inUseBannerBackoffTick];
      UpTicksToSecondsF();
      if (v8 < 1.5)
      {
        [v7 _setInUseBannerBackoffReason:0];
        [(SRStats *)self->_stats setBannerAction:@"ScreenLocked"];
      }

      [v7 _setNearbyPrevInEar:{objc_msgSend(v7, "nearbyInEar")}];

      [(BTSmartRoutingDaemon *)self _powerMonitorScreenLockChanged];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _powerMonitorScreenLockChanged];
      [(BTSmartRoutingDaemon *)self _iPhoneScreenOnPowerEvent];
      if (self->_prefSmartRoutingEnabledPhase3)
      {
        [(BTSmartRoutingDaemon *)self _startHighActivityLevelTimer:1];
        [(SRStats *)self->_stats setProactiveRoutingTrigger:@"Unlock"];
      }
    }

    v9 = +[SRConnectionManager sharedSRConnectionManager];
    [v9 screenLockStateChanged:v5];
  }

  prefSmartRoutingEnabledPhase3 = self->_prefSmartRoutingEnabledPhase3;
  if (prefSmartRoutingEnabledPhase3)
  {
    if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
    {
      [(BTSmartRoutingDaemon *)self _pipeEnsureStarted];
      [(BTSmartRoutingDaemon *)self _TUMonitorEnsureStarted];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _pipeEnsureStopped];
      [(BTSmartRoutingDaemon *)self _TUMonitorEnsureStopped];
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _pipeEnsureStopped];
    [(BTSmartRoutingDaemon *)self _TUMonitorEnsureStopped];
    if (!self->_watchRecoveryEnabled)
    {
LABEL_24:
      [(BTSmartRoutingDaemon *)self _activityMonitorEnsureStopped];
      if (!prefSmartRoutingEnabledPhase3)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }
  }

  if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    goto LABEL_24;
  }

  [(BTSmartRoutingDaemon *)self _activityMonitorEnsureStarted];
  if (!prefSmartRoutingEnabledPhase3)
  {
LABEL_23:
    [(BTSmartRoutingDaemon *)self _callMonitorEnsureStopped];
    goto LABEL_30;
  }

LABEL_25:
  if (([(CUSystemMonitor *)*p_powerMonitor firstUnlocked]& 1) != 0)
  {
    [(BTSmartRoutingDaemon *)self _callMonitorEnsureStarted];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _callMonitorEnsureStopped];
  }

  if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _evaluatorEnsureStarted];
    goto LABEL_31;
  }

LABEL_30:
  [(BTSmartRoutingDaemon *)self _evaluatorEnsureStopped];
LABEL_31:
  if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _aaControllerEnsureStarted];
    if (prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _aaControllerEnsureStopped];
    if (prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_36;
    }
  }

  if (!self->_prefSpeakRoute)
  {
LABEL_38:
    [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStopped];
    goto LABEL_39;
  }

LABEL_36:
  if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    goto LABEL_38;
  }

  [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStarted];
LABEL_39:
  if (!self->_watchRecoveryEnabled || ![(CUSystemMonitor *)*p_powerMonitor firstUnlocked]|| self->_sleeping)
  {
    if (!prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  v11 = [(NSMutableDictionary *)self->_watchWxDevices count];
  if (!v11 && prefSmartRoutingEnabledPhase3)
  {
LABEL_43:
    if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked]|| self->_sleeping)
    {
      goto LABEL_52;
    }

    v11 = [(NSMutableDictionary *)self->_wxDevices count];
  }

  if (v11 && ([(CUSystemMonitor *)*p_powerMonitor screenActive]|| ![(CUSystemMonitor *)*p_powerMonitor screenLocked]|| self->_screenLockedLingerTimer || [(CUSystemMonitor *)self->_callMonitor activeCallCount]))
  {
    [(BTSmartRoutingDaemon *)self _nearbyInfoDiscoveryEnsureStarted];
    goto LABEL_53;
  }

LABEL_52:
  [(BTSmartRoutingDaemon *)self _nearbyInfoDiscoveryEnsureStopped];
LABEL_53:
  if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _pairedDeviceMonitorEnsureStarted];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _pairedDeviceMonitorEnsureStopped];
  }

  [(BTSmartRoutingDaemon *)self _powerMonitorEnsureStarted];
  if (self->_prefSmartRoutingEnabledPhase3 && [(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _relayConduitMessageEnsureStarted];
    if (!prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_63;
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _relayConduitMessageEnsureStopped];
    if (!prefSmartRoutingEnabledPhase3)
    {
LABEL_63:
      v12 = 0;
      goto LABEL_64;
    }
  }

  if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    goto LABEL_63;
  }

  v12 = !self->_sleeping;
LABEL_64:
  if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
  {
    if (v12)
    {
      goto LABEL_68;
    }

LABEL_82:
    [(BTSmartRoutingDaemon *)self _wxDiscoveryEnsureStopped];
    goto LABEL_83;
  }

  sub_100004DFC();
  if (!v12)
  {
    goto LABEL_82;
  }

LABEL_68:
  if (![(CUSystemMonitor *)*p_powerMonitor screenActive]&& [(CUSystemMonitor *)*p_powerMonitor screenLocked]&& !self->_screenLockedLingerTimer && ![(CUSystemMonitor *)self->_callMonitor activeCallCount]&& (GestaltGetDeviceClass() == 1 && (![(SRSourceDevice *)self->_sourceDevice DRServerIsATV]|| ![(SRWorkoutObserver *)self->_workoutObserver workoutActive]) || GestaltGetDeviceClass() != 1))
  {
    goto LABEL_82;
  }

  [(BTSmartRoutingDaemon *)self _wxDiscoveryEnsureStarted];
LABEL_83:
  if (self->_watchRecoveryEnabled && [(CUSystemMonitor *)*p_powerMonitor firstUnlocked]&& !self->_sleeping)
  {
    [(BTSmartRoutingDaemon *)self _wxDiscoveryWatchRecoveryEnsureStarted];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _wxDiscoveryWatchRecoveryEnsureStopped];
  }

  if (self->_prefSmartRoutingConnectionManager)
  {

    [(BTSmartRoutingDaemon *)self _evaluateNearbyDevice];
  }

  else
  {

    [(BTSmartRoutingDaemon *)self _evaluatorRun];
  }
}

- (void)_pipeEnsureStopped
{
  smartRoutingPipe = self->_smartRoutingPipe;
  if (smartRoutingPipe)
  {
    [(SRLEPipe *)smartRoutingPipe invalidate];
    v4 = self->_smartRoutingPipe;
    self->_smartRoutingPipe = 0;
  }
}

- (void)_TUMonitorEnsureStopped
{
  if (self->_tuCallCenter)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E8B0C(self, a2, v2);
      }
    }

    tuCallCenter = selfCopy->_tuCallCenter;
    selfCopy->_tuCallCenter = 0;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:selfCopy name:TUCallCenterCallStatusChangedNotification object:0];
    [v5 removeObserver:selfCopy name:TUCallCenterVideoCallStatusChangedNotification object:0];
  }
}

- (void)_activityMonitorEnsureStopped
{
  selfCopy = self;
  if (self->_activityLevelNotifyToken != -1)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E651C(self, a2, v2);
      }
    }

    selfCopy->_activityLevel = 0;
    [(BTSmartRoutingDaemon *)selfCopy _nearbyInfoSetAudioRoutingScore];
    activityLevelNotifyToken = selfCopy->_activityLevelNotifyToken;
    if (activityLevelNotifyToken != -1)
    {
      notify_cancel(activityLevelNotifyToken);
      selfCopy->_activityLevelNotifyToken = -1;
    }
  }

  [(BTSmartRoutingDaemon *)selfCopy _smartRoutingControllerEnsureStopped];
}

- (void)_smartRoutingControllerEnsureStopped
{
  smartRoutingController = self->_smartRoutingController;
  if (smartRoutingController)
  {
    [(CBController *)smartRoutingController invalidate];
    v4 = self->_smartRoutingController;
    self->_smartRoutingController = 0;
  }
}

- (void)_callMonitorEnsureStopped
{
  [(CUSystemMonitor *)self->_callMonitor invalidate];
  callMonitor = self->_callMonitor;
  self->_callMonitor = 0;
}

- (void)_evaluatorEnsureStopped
{
  selfCopy = self;
  if (self->_evaluatorCoalescer)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E4648(self, a2, v2);
      }
    }
  }

  [(CUCoalescer *)selfCopy->_evaluatorCoalescer invalidate];
  evaluatorCoalescer = selfCopy->_evaluatorCoalescer;
  selfCopy->_evaluatorCoalescer = 0;

  connectDevice = selfCopy->_connectDevice;
  selfCopy->_connectDevice = 0;

  [(CBConnection *)selfCopy->_connectSession invalidate];
  connectSession = selfCopy->_connectSession;
  selfCopy->_connectSession = 0;

  smartRoutingLowerScanRateTimer = selfCopy->_smartRoutingLowerScanRateTimer;
  if (smartRoutingLowerScanRateTimer)
  {
    v9 = smartRoutingLowerScanRateTimer;
    dispatch_source_cancel(v9);
    v8 = selfCopy->_smartRoutingLowerScanRateTimer;
    selfCopy->_smartRoutingLowerScanRateTimer = 0;
  }
}

- (void)_connectedDeviceMonitorEnsureStarted
{
  if (!self->_connectedDiscovery)
  {
    v14[5] = v6;
    v14[6] = v5;
    v14[11] = v3;
    v14[12] = v4;
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E6554(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    connectedDiscovery = selfCopy->_connectedDiscovery;
    selfCopy->_connectedDiscovery = v8;
    v10 = v8;

    [(CBDiscovery *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBDiscovery *)v10 setLabel:@"SmartRouting"];
    [(CBDiscovery *)v10 setDiscoveryFlags:[(CBDiscovery *)v10 discoveryFlags]| 0x80000200000];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004D9B8;
    v14[3] = &unk_1002B6858;
    v14[4] = selfCopy;
    [(CBDiscovery *)v10 setDeviceFoundHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004D9C4;
    v13[3] = &unk_1002B6880;
    v13[4] = selfCopy;
    [(CBDiscovery *)v10 setBluetoothStateChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004DAF0;
    v12[3] = &unk_1002B6858;
    v12[4] = selfCopy;
    [(CBDiscovery *)v10 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004DAFC;
    v11[3] = &unk_1002B68A8;
    v11[4] = selfCopy;
    v11[5] = v10;
    [(CBDiscovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B8188];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D45C;
    v6[3] = &unk_1002B68A8;
    v4 = v5;
    v7 = v4;
    selfCopy = self;
    [(AAController *)v4 activateWithCompletion:v6];
  }
}

- (void)_mediaRouteMonitorEnsureStopped
{
  if (self->_mediaRouteMonitorObservingActiveAudioRoute)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E6B4C(self, a2, v2);
      }
    }

    selfCopy->_mediaRouteMonitorObservingActiveAudioRoute = 0;
    selfCopy->_activityLevelMediaPlaying = 0;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:selfCopy name:kMRMediaRemotePickableRoutesDidChangeNotification object:0];
    [v5 removeObserver:selfCopy name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:0];
    [v5 removeObserver:selfCopy name:AVSystemController_ServerConnectionDiedNotification object:0];
    [v5 removeObserver:selfCopy name:@"MRAVOutputContextOutputDevicesDidChangeNotification" object:MRAVOutputContextGetSharedSystemAudioContext()];
  }
}

- (void)_nearbyInfoDiscoveryEnsureStopped
{
  if (self->_nearbyInfoDiscovery)
  {
    v3 = [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStopped:16];
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001E7274(v3, v4, v5);
      }
    }

    [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery invalidate];
    nearbyInfoDiscovery = self->_nearbyInfoDiscovery;
    self->_nearbyInfoDiscovery = 0;

    self->_prefSmartRoutingForcedDisconnectionTicks = 0;
    if (self->_tipiElectionInProgress)
    {
      self->_tipiElectionInProgress = 0;
    }

    tipiHealingTimer = self->_tipiHealingTimer;
    if (tipiHealingTimer)
    {
      v8 = tipiHealingTimer;
      dispatch_source_cancel(v8);
      v9 = self->_tipiHealingTimer;
      self->_tipiHealingTimer = 0;
    }

    if (self->_prefSmartRoutingWatchTriangleMagnet)
    {
      nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
      if (nearbyInfoDevicesTriangleRecoveryTimer)
      {
        v11 = nearbyInfoDevicesTriangleRecoveryTimer;
        dispatch_source_cancel(v11);
        v12 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
        self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
      }
    }

    prefSmartRoutingForcedDisconnectionStartTimer = self->_prefSmartRoutingForcedDisconnectionStartTimer;
    if (prefSmartRoutingForcedDisconnectionStartTimer)
    {
      v14 = prefSmartRoutingForcedDisconnectionStartTimer;
      dispatch_source_cancel(v14);
      v15 = self->_prefSmartRoutingForcedDisconnectionStartTimer;
      self->_prefSmartRoutingForcedDisconnectionStartTimer = 0;
    }

    nearbyInfoDevices = self->_nearbyInfoDevices;
    if (nearbyInfoDevices)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      allValues = [(NSMutableDictionary *)nearbyInfoDevices allValues];
      v18 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(allValues);
            }

            [(BTSmartRoutingDaemon *)self _nearbyInfoDeviceLost:*(*(&v23 + 1) + 8 * i)];
          }

          v19 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v19);
      }

      v22 = self->_nearbyInfoDevices;
      self->_nearbyInfoDevices = 0;
    }
  }
}

- (void)_pairedDeviceMonitorEnsureStarted
{
  if (!self->_pairedDiscovery)
  {
    v13[6] = v6;
    v13[7] = v5;
    v13[12] = v3;
    v13[13] = v4;
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E760C(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    pairedDiscovery = selfCopy->_pairedDiscovery;
    selfCopy->_pairedDiscovery = v8;
    v10 = v8;

    [(CBDiscovery *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBDiscovery *)v10 setLabel:@"SmartRouting"];
    [(CBDiscovery *)v10 setDiscoveryFlags:[(CBDiscovery *)v10 discoveryFlags]| 0x80000800000];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000536D0;
    v13[3] = &unk_1002B6DA8;
    v13[4] = selfCopy;
    v13[5] = v10;
    [(CBDiscovery *)v10 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005378C;
    v12[3] = &unk_1002B6DA8;
    v12[4] = selfCopy;
    v12[5] = v10;
    [(CBDiscovery *)v10 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100053848;
    v11[3] = &unk_1002B68A8;
    v11[4] = selfCopy;
    v11[5] = v10;
    [(CBDiscovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_powerMonitorEnsureStarted
{
  selfCopy = self;
  if (!self->_powerMonitor)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E7744(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(CUSystemMonitor);
    powerMonitor = selfCopy->_powerMonitor;
    selfCopy->_powerMonitor = v4;
    v6 = v4;

    [(CUSystemMonitor *)v6 setDispatchQueue:selfCopy->_dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100053B38;
    v12[3] = &unk_1002B6D18;
    v12[4] = v6;
    v12[5] = selfCopy;
    v7 = objc_retainBlock(v12);
    [(CUSystemMonitor *)v6 setScreenOnChangedHandler:v7];
    [(CUSystemMonitor *)v6 setScreenLockedChangedHandler:v7];
    [(CUSystemMonitor *)v6 setScreenStateChangedHandler:v7];
    [(CUSystemMonitor *)v6 setFirstUnlockHandler:v7];
    [(CUSystemMonitor *)v6 setPrimaryAppleIDChangedHandler:v7];
    [(CUSystemMonitor *)v6 setScreenLockedChangedHandler:v7];
    [(CUSystemMonitor *)v6 activateWithCompletion:v7];
  }

  if (!selfCopy->_sleepWakeMonitor)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7760();
    }

    v8 = objc_alloc_init(CUSleepWakeMonitor);
    sleepWakeMonitor = selfCopy->_sleepWakeMonitor;
    selfCopy->_sleepWakeMonitor = v8;
    v10 = v8;

    [(CUSleepWakeMonitor *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUSleepWakeMonitor *)v10 setLabel:@"SmartRouting"];
    selfCopy->_sleeping = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003A18;
    v11[3] = &unk_1002B84A0;
    v11[4] = v10;
    v11[5] = selfCopy;
    [(CUSleepWakeMonitor *)v10 setSleepWakeHandler:v11];
    [(CUSleepWakeMonitor *)v10 activateWithCompletion:0];
  }
}

- (void)_wxDiscoveryEnsureStopped
{
  if (self->_wxDiscovery)
  {
    wxWorkoutDiscoveryTimer = self->_wxWorkoutDiscoveryTimer;
    v5 = dword_1002F6778;
    if (wxWorkoutDiscoveryTimer)
    {
      sub_1001E85A0(dword_1002F6778, a2, v2);
    }

    else
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1001E85F8(v5, a2, v2);
        }
      }

      [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStopped:7];
      [(SFDeviceDiscovery *)self->_wxDiscovery invalidate];
      wxDiscovery = self->_wxDiscovery;
      self->_wxDiscovery = 0;

      wxDevices = self->_wxDevices;
      if (wxDevices)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        allValues = [(NSMutableDictionary *)wxDevices allValues];
        v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
                objc_enumerationMutation(allValues);
              }

              [(BTSmartRoutingDaemon *)self _wxDeviceLost:*(*(&v14 + 1) + 8 * i)];
            }

            v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v10);
        }

        v13 = self->_wxDevices;
        self->_wxDevices = 0;
      }
    }
  }
}

- (void)_wxDiscoveryWatchRecoveryEnsureStopped
{
  if (self->_wxDiscoveryWatchRecovery)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E8630(self, a2, v2);
      }
    }

    [(BTSmartRoutingDaemon *)selfCopy _powerLogSmartRoutingScanStopped:7];
    [(CUBLEScanner *)selfCopy->_wxDiscoveryWatchRecovery invalidate];
    wxDiscoveryWatchRecovery = selfCopy->_wxDiscoveryWatchRecovery;
    selfCopy->_wxDiscoveryWatchRecovery = 0;

    watchWxDevices = selfCopy->_watchWxDevices;
    if (watchWxDevices)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      allValues = [(NSMutableDictionary *)watchWxDevices allValues];
      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(allValues);
            }

            [(BTSmartRoutingDaemon *)selfCopy _wxDiscoveryWatchRecoveryLostDevice:*(*(&v12 + 1) + 8 * i)];
          }

          v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      v11 = selfCopy->_watchWxDevices;
      selfCopy->_watchWxDevices = 0;
    }
  }
}

- (void)_evaluateNearbyDevice
{
  v3 = +[SRConnectionManager sharedSRConnectionManager];
  evaluateNearbyDevicesForConnection = [v3 evaluateNearbyDevicesForConnection];

  v5 = evaluateNearbyDevicesForConnection;
  if (evaluateNearbyDevicesForConnection)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v6 = _LogCategory_Initialize(), v5 = evaluateNearbyDevicesForConnection, v6))
      {
        sub_100005B80(v5);
      }
    }

    v4 = [(BTSmartRoutingDaemon *)self _initializeConnectionToDevice:evaluateNearbyDevicesForConnection];
    v5 = evaluateNearbyDevicesForConnection;
  }

  _objc_release_x1(v4, v5);
}

- (void)clearCacheForBluetoothOff
{
  [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortDisconnected"];
  connectedDevices = self->_connectedDevices;
  if (connectedDevices)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    allValues = [(NSMutableDictionary *)connectedDevices allValues];
    v5 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v39;
      do
      {
        v8 = 0;
        do
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [(BTSmartRoutingDaemon *)self _connectedDeviceLost:*(*(&v38 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v6);
    }

    v9 = self->_connectedDevices;
    self->_connectedDevices = 0;
  }

  [(BTSmartRoutingDaemon *)self _clearAllDisconnectTicks];
  if (self->_connectTicks)
  {
    self->_connectTicks = 0;
  }

  if (self->_tipiSetupTicks)
  {
    self->_tipiSetupTicks = 0;
  }

  uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
  if (uiSmartRoutingBanner)
  {
    [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
    v11 = self->_uiSmartRoutingBanner;
    self->_uiSmartRoutingBanner = 0;
  }

  if (self->_tipiElectionInProgress)
  {
    self->_tipiElectionInProgress = 0;
  }

  [(BTSmartRoutingDaemon *)self _setTipiElectionReceivedLePipe:&stru_1002C1358];
  tipiHealingTimer = self->_tipiHealingTimer;
  if (tipiHealingTimer)
  {
    v13 = tipiHealingTimer;
    dispatch_source_cancel(v13);
    v14 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = 0;
  }

  smartRoutingManualDisconnectionList = self->_smartRoutingManualDisconnectionList;
  if (smartRoutingManualDisconnectionList)
  {
    [(NSMutableArray *)smartRoutingManualDisconnectionList removeAllObjects];
    v16 = self->_smartRoutingManualDisconnectionList;
  }

  else
  {
    v16 = 0;
  }

  self->_smartRoutingManualDisconnectionList = 0;

  srBudswapDeviceMap = self->_srBudswapDeviceMap;
  if (srBudswapDeviceMap)
  {
    [(NSMutableDictionary *)srBudswapDeviceMap removeAllObjects];
    v18 = self->_srBudswapDeviceMap;
  }

  else
  {
    v18 = 0;
  }

  self->_srBudswapDeviceMap = 0;

  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  if (smartRoutingWxDeviceMap)
  {
    [(NSMutableDictionary *)smartRoutingWxDeviceMap removeAllObjects];
    v20 = self->_smartRoutingWxDeviceMap;
  }

  else
  {
    v20 = 0;
  }

  self->_smartRoutingWxDeviceMap = 0;

  smartRoutingBackOffMap = self->_smartRoutingBackOffMap;
  if (smartRoutingBackOffMap)
  {
    [(NSMutableDictionary *)smartRoutingBackOffMap removeAllObjects];
    v22 = self->_smartRoutingBackOffMap;
  }

  else
  {
    v22 = 0;
  }

  self->_smartRoutingBackOffMap = 0;

  isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];

  if (isFirstConnectionAfterSREnable)
  {
    isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
    [isFirstConnectionAfterSREnable2 removeAllObjects];
  }

  [(SRSourceDevice *)self->_sourceDevice setIsFirstConnectionAfterSREnable:0];
  highActivityLevelTimer = self->_highActivityLevelTimer;
  if (highActivityLevelTimer)
  {
    v26 = highActivityLevelTimer;
    dispatch_source_cancel(v26);
    v27 = self->_highActivityLevelTimer;
    self->_highActivityLevelTimer = 0;
  }

  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  if (phoneOwnershipTimer)
  {
    v29 = phoneOwnershipTimer;
    dispatch_source_cancel(v29);
    v30 = self->_phoneOwnershipTimer;
    self->_phoneOwnershipTimer = 0;
  }

  idleActivityScoreTimer = self->_idleActivityScoreTimer;
  if (idleActivityScoreTimer)
  {
    v32 = idleActivityScoreTimer;
    dispatch_source_cancel(v32);
    v33 = self->_idleActivityScoreTimer;
    self->_idleActivityScoreTimer = 0;
  }

  temporaryOverrideTimer = self->_temporaryOverrideTimer;
  if (temporaryOverrideTimer)
  {
    v35 = temporaryOverrideTimer;
    dispatch_source_cancel(v35);
    v36 = self->_temporaryOverrideTimer;
    self->_temporaryOverrideTimer = 0;
  }

  phase1ConnectConfig = self->_phase1ConnectConfig;
  self->_phase1ConnectConfig = 0;

  [(SRSourceDevice *)self->_sourceDevice setAudioRoute:1];
  [(NSMutableDictionary *)self->_srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B8A58];
}

- (void)_clearAllDisconnectTicks
{
  disconnectTicksMap = self->_disconnectTicksMap;
  if (disconnectTicksMap)
  {
    [(NSMutableDictionary *)disconnectTicksMap removeAllObjects];
    v4 = self->_disconnectTicksMap;
  }

  else
  {
    v4 = 0;
  }

  self->_disconnectTicksMap = 0;

  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;

  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B86D8];
}

+ (id)sharedBTSmartRoutingDaemon
{
  if (qword_1002FA0B8 != -1)
  {
    sub_1001E3410();
  }

  v3 = qword_1002FA0B0;

  return v3;
}

- (BTSmartRoutingDaemon)init
{
  v14.receiver = self;
  v14.super_class = BTSmartRoutingDaemon;
  v2 = [(BTSmartRoutingDaemon *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityLevel = 0;
    v2->_activityLevelDeltaInSeconds = 25;
    v2->_activityLevelNotifyToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("BTSmartRouting", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("BTSmartRoutingAVSys", v7);
    dispatchQueueAVSys = v3->_dispatchQueueAVSys;
    v3->_dispatchQueueAVSys = v8;

    v3->_forcedDisconnectionRSSI = -60;
    v10 = GestaltCopyAnswer();
    myModel = v3->_myModel;
    v3->_myModel = v10;

    v3->_ownershipToken = -1;
    v3->_prefsChangedNotifyToken = -1;
    v3->_prefSmartRoutingForcedDisconnectionStartSeconds = 1.0;
    v3->_ringerStateToken = -1;
    v3->_splitterStateOnToken = -1;
    v3->_smartRoutingDisconnectToken = -1;
    v3->_cbDaemonNotifyToken = -1;
    v3->_tipiElectionPhase1 = 0;
    v12 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100003918;
  v12 = sub_100003838;
  v13 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DED8;
  block[3] = &unk_1002B7D78;
  block[4] = self;
  block[5] = &v8;
  levelCopy = level;
  dispatch_sync(dispatchQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)_descriptionWithLevel:(int)level
{
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_100003918;
  v96 = sub_100003838;
  v97 = 0;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd"];
  v69 = self->_myAddress;
  obj = v93[5];
  activityLevel = self->_activityLevel;
  if (activityLevel > 0xE)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B8DF8[activityLevel];
  }

  score = self->_score;
  if (score > 0xF)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1002B8F50[score];
  }

  if (self->_prefSmartRoutingEnabledPhase3)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (self->_sleeping)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  sleepWakeState = self->_sleepWakeState;
  v58 = v4;
  location = (v93 + 5);
  v67 = v8;
  v68 = v6;
  v65 = v10;
  v66 = v9;
  if (sleepWakeState > 29)
  {
    if (sleepWakeState == 30)
    {
      v12 = "FullWake";
      goto LABEL_27;
    }

    if (sleepWakeState != 40)
    {
      if (sleepWakeState == 50)
      {
        v12 = "PowerOff";
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v12 = "Restart";
  }

  else
  {
    if (!sleepWakeState)
    {
      v12 = "Unknown";
      goto LABEL_27;
    }

    if (sleepWakeState != 10)
    {
      if (sleepWakeState == 20)
      {
        v12 = "DarkWake";
        goto LABEL_27;
      }

LABEL_24:
      v12 = "?";
      goto LABEL_27;
    }

    v12 = "Sleep";
  }

LABEL_27:
  v63 = v12;
  activeCallCount = [(CUSystemMonitor *)self->_callMonitor activeCallCount];
  activityLevelMediaPlaying = self->_activityLevelMediaPlaying;
  isBTRoute = self->_isBTRoute;
  isSpeakerRoute = self->_isSpeakerRoute;
  isBuiltInReceiverRoute = self->_isBuiltInReceiverRoute;
  pairedDeviceSupportsSmartRouting = self->_pairedDeviceSupportsSmartRouting;
  isHSA2Account = self->_isHSA2Account;
  ringerState = self->_ringerState;
  prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
  totalCloudDeviceCount = self->_totalCloudDeviceCount;
  isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
  v20 = isFirstConnectionAfterSREnable;
  if (ringerState)
  {
    v21 = "yes";
  }

  else
  {
    v21 = "no";
  }

  if (isHSA2Account)
  {
    v22 = "yes";
  }

  else
  {
    v22 = "no";
  }

  if (pairedDeviceSupportsSmartRouting)
  {
    v23 = "yes";
  }

  else
  {
    v23 = "no";
  }

  if (isBuiltInReceiverRoute)
  {
    v24 = "yes";
  }

  else
  {
    v24 = "no";
  }

  if (isSpeakerRoute)
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  if (isBTRoute)
  {
    v26 = "yes";
  }

  else
  {
    v26 = "no";
  }

  if (activityLevelMediaPlaying)
  {
    v27 = "yes";
  }

  else
  {
    v27 = "no";
  }

  if (activeCallCount <= 0)
  {
    v28 = "no";
  }

  else
  {
    v28 = "yes";
  }

  NSAppendPrintF_safe(&obj, "-- BTSmartRouting: Addr %@ AcLv %s, Score %s, Phase3 %s, Sleeping %s (%s), Call %s StreamPlayback %s isRouteBT %s isRouteSpeaker %s isRouteInBandReceiver %s PairedDeviceSRFlagFound %s isHSA2Enabled %s TotaliCloudDevicesFound %d RingerState %s BlockHijackWindowinSeconds %llu isFirstConnectionAfterSREnable %@ last SR active Date %@--\n", v69, v68, v67, v66, v65, v63, v28, v27, v26, v25, v24, v23, v22, totalCloudDeviceCount, v21, prefSmartRoutingBlockHijackWindowinSeconds, isFirstConnectionAfterSREnable, @"n/a");
  objc_storeStrong(location, obj);

  v29 = self->_uiSmartRoutingBanner;
  v30 = v29;
  if (v29)
  {
    v31 = (v93 + 5);
    v90 = v93[5];
    NSAppendPrintF(&v90, "Banner: Routing: %@\n", v29);
    objc_storeStrong(v31, v90);
  }

  v32 = self->_uiNoteSessionSmartRouting;
  v33 = v32;
  if (v32)
  {
    v34 = (v93 + 5);
    v89 = v93[5];
    NSAppendPrintF(&v89, "UINote: Routing: %@\n", v32);
    objc_storeStrong(v34, v89);
  }

  v35 = (v93 + 5);
  v88 = v93[5];
  NSAppendPrintF(&v88, "\n");
  objc_storeStrong(v35, v88);
  v36 = (v93 + 5);
  v87 = v93[5];
  NSAppendPrintF(&v87, "Connected: %d, %@\n", [(NSMutableDictionary *)self->_connectedDevices count], self->_connectedDiscovery);
  objc_storeStrong(v36, v87);
  connectedDevices = self->_connectedDevices;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10003E72C;
  v86[3] = &unk_1002B7DA0;
  v86[4] = &v92;
  [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v86];
  v38 = (v93 + 5);
  v85 = v93[5];
  NSAppendPrintF(&v85, "\n");
  objc_storeStrong(v38, v85);
  v39 = (v93 + 5);
  v84 = v93[5];
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  NSAppendPrintF(&v84, "Paired: %d, %@\n", [discoveredDevices count], self->_pairedDiscovery);
  objc_storeStrong(v39, v84);

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  discoveredDevices2 = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v42 = [discoveredDevices2 countByEnumeratingWithState:&v80 objects:v98 count:16];
  if (v42)
  {
    v43 = *v81;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v81 != v43)
        {
          objc_enumerationMutation(discoveredDevices2);
        }

        v45 = *(*(&v80 + 1) + 8 * i);
        v46 = (v93 + 5);
        v79 = v93[5];
        NSAppendPrintF(&v79, "    %@\n", v45);
        objc_storeStrong(v46, v79);
      }

      v42 = [discoveredDevices2 countByEnumeratingWithState:&v80 objects:v98 count:16];
    }

    while (v42);
  }

  v47 = (v93 + 5);
  v78 = v93[5];
  NSAppendPrintF(&v78, "\n");
  objc_storeStrong(v47, v78);
  v48 = (v93 + 5);
  v77 = v93[5];
  NSAppendPrintF(&v77, "NearbyInfo: %d, %@\n", [(NSMutableDictionary *)self->_nearbyInfoDevices count], self->_nearbyInfoDiscovery);
  objc_storeStrong(v48, v77);
  nearbyInfoDevices = self->_nearbyInfoDevices;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10003E77C;
  v76[3] = &unk_1002B7DC8;
  v76[4] = &v92;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v76];
  v50 = (v93 + 5);
  v75 = v93[5];
  NSAppendPrintF(&v75, "\n");
  objc_storeStrong(v50, v75);
  v51 = (v93 + 5);
  v74 = v93[5];
  NSAppendPrintF(&v74, "-- SmartRouting Devices: %d, --\n", [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]);
  objc_storeStrong(v51, v74);
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10003E7E4;
  v73[3] = &unk_1002B7DF0;
  v73[4] = &v92;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v73];
  v53 = (v93 + 5);
  v72 = v93[5];
  NSAppendPrintF(&v72, "Wx: %d, %@\n", [(NSMutableDictionary *)self->_wxDevices count], self->_wxDiscovery);
  objc_storeStrong(v53, v72);
  wxDevices = self->_wxDevices;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10003EB44;
  v71[3] = &unk_1002B7DC8;
  v71[4] = &v92;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v71];
  v55 = (v93 + 5);
  v70 = v93[5];
  NSAppendPrintF(&v70, "\n");
  objc_storeStrong(v55, v70);
  v56 = v93[5];

  _Block_object_dispose(&v92, 8);

  return v56;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EC20;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  self->_smartRoutingCapable = 1;
  v3 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  aaDeviceManagerDaemon = self->_aaDeviceManagerDaemon;
  self->_aaDeviceManagerDaemon = v3;

  v5 = +[AALowBatteryAlertDaemon sharedAALowBatteryAlertDaemon];
  aaLowBatteryAlertDaemon = self->_aaLowBatteryAlertDaemon;
  self->_aaLowBatteryAlertDaemon = v5;

  v7 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  aaPairedDeviceDaemon = self->_aaPairedDeviceDaemon;
  self->_aaPairedDeviceDaemon = v7;

  v9 = +[AANearbyDeviceManagerDaemon sharedAANearbyDeviceManagerDaemon];
  aaNearbyDeviceManagerDaemon = self->_aaNearbyDeviceManagerDaemon;
  self->_aaNearbyDeviceManagerDaemon = v9;

  v11 = +[AAServicesDaemon sharedAAServicesDaemon];
  aaServicesDaemon = self->_aaServicesDaemon;
  self->_aaServicesDaemon = v11;

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3440();
  }

  v13 = +[SRConnectionManager sharedSRConnectionManager];
  [v13 setSmartRoutingDaemon:self];

  [(BTSmartRoutingDaemon *)self _connectedDeviceMonitorEnsureStarted];
  if (!self->_sourceDevice)
  {
    v14 = objc_alloc_init(SRSourceDevice);
    sourceDevice = self->_sourceDevice;
    self->_sourceDevice = v14;
  }

  if (!self->_srDiscoveredDeviceMap)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
    self->_srDiscoveredDeviceMap = v16;
  }

  [(BTSmartRoutingDaemon *)self _statsEnsureStarted];
  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003F394;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  [(BTSmartRoutingDaemon *)self _prefsChanged];
  if (!self->_sigTermSource)
  {
    v19 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, self->_dispatchQueue);
    sigTermSource = self->_sigTermSource;
    self->_sigTermSource = v19;

    v21 = self->_sigTermSource;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10003F3FC;
    v44[3] = &unk_1002B6880;
    v44[4] = self;
    dispatch_source_set_event_handler(v21, v44);
    dispatch_activate(self->_sigTermSource);
  }

  v22 = +[CBIDSManager sharedInstance];
  self->_totalCloudDeviceCount = [v22 totalCloudDeviceCount];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"_setTotalCountIDSDevices:" name:@"BTTotalIDSDeviceCountChanged" object:0];
  self->_secondsBetweenConnectBanner = 300.0;
  if (!self->_localDeviceAudioCategory)
  {
    _queryLocalAudioCategory = [(BTSmartRoutingDaemon *)self _queryLocalAudioCategory];
    [(BTSmartRoutingDaemon *)self _updateLocalAudioCategory:_queryLocalAudioCategory];
  }

  v25 = +[NSDistributedNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"_handleStemClickGestureReceived:" name:@"com.apple.BTavrcp.CommandReceived" object:0];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3480();
  }

  v26 = +[NSDistributedNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"_handleTriangleRecoveryInitiated:" name:@"com.apple.BTServer.TriangleRecoveryInitiated" object:0];

  if (GestaltGetDeviceClass() == 1)
  {
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:self selector:"_handlePairedWatchStatusDidChange" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:self selector:"_handlePairedWatchStatusDidChange" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    [(BTSmartRoutingDaemon *)self _handlePairedWatchStatusDidChange];
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:self selector:"_checkIfPairedCompanionDeviceSupportsSmartRouting" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    [(BTSmartRoutingDaemon *)self _checkIfPairedCompanionDeviceSupportsSmartRouting];
  }

  if (GestaltGetDeviceClass() == 6)
  {
    self->_pairedCompanionDeviceSupportsSmartRouting = 1;
  }

  [(BTSmartRoutingDaemon *)self _workoutObserverEnsureStarted];
  if (_os_feature_enabled_impl() && !self->_nowPlayingObserver)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E34B4();
    }

    v30 = objc_alloc_init(SRNowPlayingObserver);
    nowPlayingObserver = self->_nowPlayingObserver;
    self->_nowPlayingObserver = v30;

    [(SRNowPlayingObserver *)self->_nowPlayingObserver activate];
  }

  [(BTSmartRoutingDaemon *)self _systemUIMonitorEnsureStarted];
  if (_os_feature_enabled_impl())
  {
    [(BTSmartRoutingDaemon *)self _dataRelayClientMonitorEnsureStarted];
  }

  v32 = self->_dispatchQueue;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10003F404;
  v43[3] = &unk_1002B6DF0;
  v43[4] = self;
  notify_register_dispatch("com.apple.bluetooth.daemonStarted", &self->_cbDaemonNotifyToken, v32, v43);
  v33 = self->_dispatchQueue;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10003F518;
  v42[3] = &unk_1002B6DF0;
  v42[4] = self;
  notify_register_dispatch("com.apple.bluetooth.SmartRoutingDisconnectReason", &self->_smartRoutingDisconnectToken, v33, v42);
  v34 = self->_dispatchQueue;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10003F8C0;
  v41[3] = &unk_1002B6DF0;
  v41[4] = self;
  notify_register_dispatch("com.apple.BluetoothServices.AudioRoutingOwnershipTaken", &self->_ownershipToken, v34, v41);
  if (self->_ringerStateToken == -1)
  {
    v35 = self->_dispatchQueue;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10003FBF8;
    v40[3] = &unk_1002B6DF0;
    v40[4] = self;
    notify_register_dispatch("com.apple.springboard.ringerstate", &self->_ringerStateToken, v35, v40);
  }

  if (self->_splitterStateOnToken == -1)
  {
    v36 = self->_dispatchQueue;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10003FC88;
    v39[3] = &unk_1002B6DF0;
    v39[4] = self;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", &self->_splitterStateOnToken, v36, v39);
  }

  v37 = self->_dispatchQueue;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10003FD60;
  v38[3] = &unk_1002B6DF0;
  v38[4] = self;
  notify_register_dispatch("com.apple.bluetooth.magnet", &self->_magnetStateToken, v37, v38);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FE74;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_myBluetoothAddressString
{
  p_myAddress = &self->_myAddress;
  myAddress = self->_myAddress;
  if (!myAddress || -[NSString length](myAddress, "length") != 17 || !strcmp([*p_myAddress UTF8String], "00:00:00:00:00:00"))
  {
    v4 = [CBController controllerInfoAndReturnError:0];
    hardwareAddressData = [v4 hardwareAddressData];
    v6 = CUPrintNSDataAddress();
    v7 = *p_myAddress;
    *p_myAddress = v6;

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3860();
    }
  }

  v8 = *p_myAddress;

  return v8;
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingConnectionAlert != v3)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E38A0();
    }

    self->_prefSmartRoutingConnectionAlert = v3;
  }

  v4 = _os_feature_enabled_impl();
  if (self->_prefSmartRoutingWatchAutomaticSwitching != v4)
  {
    v5 = v4;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E38F8();
    }

    self->_prefSmartRoutingWatchAutomaticSwitching = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  v7 = v6;
  if (self->_prefSmartRoutingEnabledPhase3 != v7)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3950();
    }

    self->_prefSmartRoutingEnabledPhase3 = v6;
    [(BTSmartRoutingDaemon *)self setIsSREnabled:v6];
    [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdateWithPushRequired:1];
    v8 = +[SRConnectionManager sharedSRConnectionManager];
    [v8 smartRoutingCapableStateChanged:v7];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E39A8();
  }

  if (self->_totalCloudDeviceCount > 1 || self->_pairedDeviceContainsCompanionWatch)
  {
    LODWORD(v7) = v7 || self->_isHSA2Account;
  }

  if (self->_smartRoutingCapable != v7 || !self->_isFirstUpdated)
  {
    self->_smartRoutingCapable = v7;
    self->_isFirstUpdated = 1;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
LABEL_26:
        v9 = "no";
        if (v7)
        {
          v9 = "yes";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "Sending smartRoutingCapable %s", v9);
        goto LABEL_30;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(v7) = self->_smartRoutingCapable;
        goto LABEL_26;
      }
    }

LABEL_30:
    v10 = +[CloudXPCService sharedInstance];
    v59 = @"srCapable";
    v11 = [NSNumber numberWithBool:self->_smartRoutingCapable];
    v60 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    [v10 sendCloudKitMsg:@"smartRoutingCapable" args:v12];
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNoBackOffTimers != v13)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3A2C();
    }

    self->_prefSmartRoutingNoBackOffTimers = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingPipeEnabled != v14)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3A84();
    }

    self->_prefSmartRoutingPipeEnabled = v14;
  }

  Int64 = CFPrefs_GetInt64();
  prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
  if (Int64 != prefSmartRoutingBlockHijackWindowinSeconds)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_46;
        }

        prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingHijackBlocking: %d -> %d", prefSmartRoutingBlockHijackWindowinSeconds, LODWORD(Int64));
    }

LABEL_46:
    self->_prefSmartRoutingBlockHijackWindowinSeconds = Int64;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingTipiElection != v17)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3ADC();
    }

    self->_prefSmartRoutingTipiElection = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingTipiHealingv2 != v18)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3B34();
    }

    self->_prefSmartRoutingTipiHealingv2 = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForcedDisconnection != v19)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3B8C();
    }

    self->_prefSmartRoutingForcedDisconnection = v19;
  }

  CFPrefs_GetDouble();
  prefSmartRoutingForcedDisconnectionStartSeconds = self->_prefSmartRoutingForcedDisconnectionStartSeconds;
  v22 = v21;
  if (v21 != prefSmartRoutingForcedDisconnectionStartSeconds)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_67;
        }

        prefSmartRoutingForcedDisconnectionStartSeconds = self->_prefSmartRoutingForcedDisconnectionStartSeconds;
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "forceDisconnectStartSeconds: %f -> %f", prefSmartRoutingForcedDisconnectionStartSeconds, v22);
    }

LABEL_67:
    self->_prefSmartRoutingForcedDisconnectionStartSeconds = v22;
  }

  v23 = CFPrefs_GetInt64();
  if ((v23 - 1000) >= 0xFFFFFFFFFFFFF831 && v23 != 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = -60;
  }

  forcedDisconnectionRSSI = self->_forcedDisconnectionRSSI;
  if (v26 != forcedDisconnectionRSSI)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_82;
        }

        LODWORD(forcedDisconnectionRSSI) = self->_forcedDisconnectionRSSI;
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingForcedDisconnectionRSSI: %d -> %lld", forcedDisconnectionRSSI, v26);
    }

LABEL_82:
    self->_forcedDisconnectionRSSI = v26;
  }

  v28 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNoNearbyFallBack != v28)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3BE4();
    }

    self->_prefSmartRoutingNoNearbyFallBack = v28;
  }

  v29 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingEligible != v29)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3C3C();
    }

    self->_prefSmartRoutingEligible = v29;
  }

  v30 = CFPrefs_GetInt64() != 0;
  if (self->_prefSpeakRoute != v30)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3C94();
    }

    self->_prefSpeakRoute = v30;
  }

  v31 = CFPrefs_GetInt64() != 0;
  if (self->_prefRouteIndicationEnable != v31)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3CEC();
    }

    self->_prefRouteIndicationEnable = v31;
  }

  v32 = CFPrefs_GetInt64() != 0;
  if (self->_prefProactiveOwnershipArbitration != v32)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3D44();
    }

    self->_prefProactiveOwnershipArbitration = v32;
  }

  v33 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNoAutoRouteMac != v33)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3D9C();
    }

    self->_prefSmartRoutingNoAutoRouteMac = v33;
  }

  v34 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForceRejectLePipe != v34)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3DF4();
    }

    self->_prefSmartRoutingForceRejectLePipe = v34;
  }

  v35 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForceTipiv2 != v35)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3E4C();
    }

    self->_prefSmartRoutingForceTipiv2 = v35;
  }

  v36 = _os_feature_enabled_impl();
  prefSmartRoutingPreemptiveConnectedBanner = self->_prefSmartRoutingPreemptiveConnectedBanner;
  if (prefSmartRoutingPreemptiveConnectedBanner != v36)
  {
    v38 = v36;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
LABEL_126:
        v39 = "no";
        if (prefSmartRoutingPreemptiveConnectedBanner)
        {
          v40 = "yes";
        }

        else
        {
          v40 = "no";
        }

        if (v38)
        {
          v39 = "yes";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "Preemptive Connected Banner: %s -> %s", v40, v39);
        goto LABEL_133;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefSmartRoutingPreemptiveConnectedBanner) = self->_prefSmartRoutingPreemptiveConnectedBanner;
        goto LABEL_126;
      }
    }

LABEL_133:
    self->_prefSmartRoutingPreemptiveConnectedBanner = v38;
  }

  v41 = (_os_feature_enabled_impl() & 1) != 0 || CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingMacAutomaticSwitching != v41)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3EA4();
    }

    self->_prefSmartRoutingMacAutomaticSwitching = v41;
  }

  v42 = (_os_feature_enabled_impl() & 1) != 0 || CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingMacMxAudioScore != v42)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3EFC();
    }

    self->_prefSmartRoutingMacMxAudioScore = v42;
  }

  v43 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForcedHijackv2 != v43)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3F54();
    }

    self->_prefSmartRoutingForcedHijackv2 = v43;
  }

  v44 = CFPrefs_GetInt64();
  prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
  if (v44 != prefSmartRoutingWatchTriangleMagnet)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_160;
        }

        prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "Watch triangle with Magnet: %d -> %d", prefSmartRoutingWatchTriangleMagnet, v44);
    }

LABEL_160:
    self->_prefSmartRoutingWatchTriangleMagnet = v44;
  }

  CFPrefs_GetDouble();
  v47 = v46;
  prefConnectionDelaySeconds = self->_prefConnectionDelaySeconds;
  if (v47 == prefConnectionDelaySeconds)
  {
    goto LABEL_167;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_166;
      }

      prefConnectionDelaySeconds = self->_prefConnectionDelaySeconds;
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "ConnectionDelaySeconds: %.0f -> %.0f", prefConnectionDelaySeconds, v47);
  }

LABEL_166:
  self->_prefConnectionDelaySeconds = v47;
LABEL_167:
  v49 = _os_feature_enabled_impl();
  if (self->_prefSmartRoutingPrioritizedCall != v49)
  {
    v50 = v49;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3FAC();
    }

    self->_prefSmartRoutingPrioritizedCall = v50;
  }

  v51 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingPrioritizedCallMuteMac != v51)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4004();
    }

    self->_prefSmartRoutingPrioritizedCallMuteMac = v51;
  }

  v52 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingInUseBanner != v52)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E405C();
    }

    self->_prefSmartRoutingInUseBanner = v52;
  }

  v53 = CFPrefs_GetInt64();
  prefSmartRoutingInUseBannerTimeout = self->_prefSmartRoutingInUseBannerTimeout;
  if (v53 != prefSmartRoutingInUseBannerTimeout)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_187;
        }

        prefSmartRoutingInUseBannerTimeout = self->_prefSmartRoutingInUseBannerTimeout;
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "In-Use banner timeout: %d -> %d", prefSmartRoutingInUseBannerTimeout, v53);
    }

LABEL_187:
    self->_prefSmartRoutingInUseBannerTimeout = v53;
  }

  v55 = _os_feature_enabled_impl();
  if (self->_prefSmartRoutingUSBAudioDevice != v55)
  {
    v56 = v55;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E40B4();
    }

    self->_prefSmartRoutingUSBAudioDevice = v56;
  }

  v57 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingConnectionManager != v57)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E410C();
    }

    self->_prefSmartRoutingConnectionManager = v57;
  }

  v58 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNowPlayingTemporaryOverride != v58)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4164();
    }

    self->_prefSmartRoutingNowPlayingTemporaryOverride = v58;
  }

  [(BTSmartRoutingDaemon *)self _update];
}

- (void)_sigTermReceived
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E41BC(self, a2, v2);
    }
  }

  [(BTSmartRoutingDaemon *)selfCopy _stopAudioStateSnapshotTimer:1];

  xpc_transaction_exit_clean();
}

- (id)_getEligibleNearbyWxDevice:(id *)device companionNeedsToBeIdle:(BOOL)idle isStreamingFromCompanion:(BOOL *)companion
{
  eligibleHeadset = self->_eligibleHeadset;
  self->_eligibleHeadset = 0;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003918;
  v19 = sub_100003838;
  v20 = 0;
  wxDevices = self->_wxDevices;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DCC54;
  v13[3] = &unk_1002B7E40;
  v13[4] = self;
  v13[5] = &v15;
  v13[6] = companion;
  idleCopy = idle;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v13];
  *device = v16[5];
  v11 = self->_eligibleHeadset;
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (void)_generateEvaluatorError:(id)error errorReason:(id *)reason
{
  errorCopy = error;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4230(errorCopy);
  }

  v6 = [NSError alloc];
  v8 = @"Error Reason";
  v9 = errorCopy;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  *reason = [v6 initWithDomain:@"BTSmartRoutingDaemon" code:0 userInfo:v7];
}

- (void)areHeadphonesNearbyAndEligibleToPlay:(id)play
{
  playCopy = play;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004175C;
  v7[3] = &unk_1002B6948;
  v7[4] = self;
  v8 = playCopy;
  v6 = playCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_evaluateNearbyHRMDevice:(id)device
{
  deviceCopy = device;
  v4 = +[SRConnectionManager sharedSRConnectionManager];
  v5 = [v4 evaluateNearbyHRMDeviceForConnection:deviceCopy];

  if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1001E42DC(deviceCopy);
  if (v5)
  {
LABEL_5:
    self->_forcedHRMConnectionInProgress = 1;
    [(BTSmartRoutingDaemon *)self _initializeConnectionToDevice:deviceCopy];
  }

LABEL_6:
}

- (void)_connectToHeadphone:(id)headphone
{
  headphoneCopy = headphone;
  btAddress = [headphoneCopy btAddress];
  nearbyWxDevice = [headphoneCopy nearbyWxDevice];
  identifier = [nearbyWxDevice identifier];
  uUIDString = [identifier UUIDString];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4370(headphoneCopy, btAddress);
  }

  nearbyWxDevice2 = [headphoneCopy nearbyWxDevice];
  connectDevice = self->_connectDevice;
  self->_connectDevice = nearbyWxDevice2;

  v11 = objc_alloc_init(CBDevice);
  [v11 setIdentifier:btAddress];
  [headphoneCopy setConnectTick:mach_absolute_time()];
  v12 = mach_absolute_time();
  v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  [v13 setLastConnectionTicks:v12];

  v14 = objc_alloc_init(CBConnection);
  objc_storeStrong(&self->_connectSession, v14);
  [v14 setConnectionFlags:2];
  evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];

  if (!evalWxMap)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [(SRSourceDevice *)self->_sourceDevice setEvalWxMap:v16];
  }

  evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  v18 = [evalWxMap2 objectForKeyedSubscript:btAddress];

  if (!v18)
  {
    v18 = objc_alloc_init(SRWxInfo);
  }

  v19 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  -[SRWxInfo setLastConnectTicks:](v18, "setLastConnectTicks:", [v19 lastConnectionTicks]);

  evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  [evalWxMap3 setObject:v18 forKeyedSubscript:btAddress];

  v21 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
  otherTipiDeviceBTAddress = [v21 otherTipiDeviceBTAddress];

  if (otherTipiDeviceBTAddress)
  {
    [v14 setConnectionFlags:{objc_msgSend(v14, "connectionFlags") | 8}];
  }

  [v14 setServiceFlags:0xFFFFFFFFLL];
  [v14 setPeerDevice:v11];
  [v14 setDispatchQueue:self->_dispatchQueue];
  [v14 setConnectTimeoutSeconds:20.0];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100003918;
  v35[4] = sub_100003838;
  identifier2 = [v21 identifier];
  v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_connectDispatchTimer, v23);
  handler = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100042084;
  v29 = &unk_1002B7E90;
  v30 = v14;
  selfCopy = self;
  v24 = btAddress;
  v32 = v24;
  v34 = v35;
  v25 = v18;
  v33 = v25;
  dispatch_source_set_event_handler(v23, &handler);
  CUDispatchTimerSet();
  dispatch_activate(v23);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectToHeadphone:]", 30, "Connection Fired in %ll{dur}", self->_prefConnectionDelaySeconds, handler, v27, v28, v29, v30, selfCopy, v32);
  }

  self->_prefSpeakRouteConnection = 1;

  _Block_object_dispose(v35, 8);
}

- (void)_initializeConnectionToDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy tipiConnectType] == 7 || objc_msgSend(deviceCopy, "tipiConnectType") == 4 || objc_msgSend(deviceCopy, "tipiConnectType") == 3 || objc_msgSend(deviceCopy, "tipiConnectType") == 2 || objc_msgSend(deviceCopy, "tipiConnectType") == 10)
  {
    tipiConnectType = [deviceCopy tipiConnectType];
    if (tipiConnectType == 3)
    {
      [(SRLEPipe *)self->_smartRoutingPipe invalidate];
      btAddress = [deviceCopy btAddress];
      [(BTSmartRoutingDaemon *)self _setPhase1ConnectConfig:btAddress andType:3];

      v6 = 2;
    }

    else
    {
      if ([deviceCopy tipiConnectType] == 2)
      {
        self->_forcedConnection = 1;
      }

      v6 = 3;
    }

    self->_tipiElectionInProgress = 1;
    nearbyWxDevice = [deviceCopy nearbyWxDevice];
    eligibleHeadset = self->_eligibleHeadset;
    self->_eligibleHeadset = nearbyWxDevice;

    nearbyWxDevice2 = [deviceCopy nearbyWxDevice];
    LOBYTE(v13) = 1;
    [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:nearbyWxDevice2 routingAction:v6 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:tipiConnectType == 3 newWx:v13];

    [(BTSmartRoutingDaemon *)self _showPreemptiveConnectedBanner:deviceCopy];
    [(BTSmartRoutingDaemon *)self _connectToHeadphone:deviceCopy];
  }

  else if ([deviceCopy tipiConnectType] == 6)
  {
    self->_tipiElectionInProgress = 1;
    nearbyWxDevice3 = [deviceCopy nearbyWxDevice];
    v11 = self->_eligibleHeadset;
    self->_eligibleHeadset = nearbyWxDevice3;

    nearbyWxDevice4 = [deviceCopy nearbyWxDevice];
    LOBYTE(v13) = 1;
    [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:nearbyWxDevice4 routingAction:3 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:1 newWx:v13];

    [(BTSmartRoutingDaemon *)self _startLEPipeConnect:deviceCopy];
  }
}

- (void)_startLEPipeConnect:(id)connect
{
  connectCopy = connect;
  nearbyLEPipeSourceDevice = [connectCopy nearbyLEPipeSourceDevice];
  idsIdentifier = [nearbyLEPipeSourceDevice idsIdentifier];
  btAddress = [connectCopy btAddress];
  smartRoutingPipe = self->_smartRoutingPipe;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042650;
  v12[3] = &unk_1002B7EB8;
  v13 = nearbyLEPipeSourceDevice;
  selfCopy = self;
  v15 = connectCopy;
  v16 = btAddress;
  v9 = btAddress;
  v10 = connectCopy;
  v11 = nearbyLEPipeSourceDevice;
  [(SRLEPipe *)smartRoutingPipe pipeSendRouteRequestToSFDevice:idsIdentifier andWxHeadset:v9 newPipe:1 connectionResult:0 completion:v12];
}

- (void)_showPreemptiveConnectedBanner:(id)banner
{
  bannerCopy = banner;
  btAddress = [bannerCopy btAddress];
  if (self->_prefSmartRoutingPreemptiveConnectedBanner)
  {
    v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
    if (v5)
    {
      v6 = v5;
      v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
      deviceName = [v7 deviceName];

      if (!deviceName)
      {
        v9 = +[CloudXPCService sharedInstance];
        deviceManager = [v9 deviceManager];
        v11 = [deviceManager fetchDeviceSyncWithAddress:btAddress];
        nickname = [v11 nickname];
        v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
        [v13 setDeviceName:nickname];
      }
    }

    nearbyWxDevice = [bannerCopy nearbyWxDevice];
    identifier = [nearbyWxDevice identifier];
    uUIDString = [identifier UUIDString];

    v17 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
    audioState = [v17 audioState];

    v19 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:btAddress];
    v20 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
    v21 = [(BTSmartRoutingDaemon *)self _showPreemptiveBannerIfNeeded:v20 inEarState:v19 audioState:audioState wxAddress:btAddress];
    if (v21)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v21 = _LogCategory_Initialize(), v21))
        {
          sub_1001E4610(v21, v22, v23);
        }
      }
    }
  }
}

- (void)_evaluatorEnsureStarted
{
  if (!self->_evaluatorCoalescer)
  {
    v11[6] = v6;
    v11[7] = v5;
    v11[12] = v3;
    v11[13] = v4;
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E462C(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CUCoalescer);
    evaluatorCoalescer = selfCopy->_evaluatorCoalescer;
    selfCopy->_evaluatorCoalescer = v8;
    v10 = v8;

    [(CUCoalescer *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUCoalescer *)v10 setMinDelay:0.05];
    [(CUCoalescer *)v10 setMaxDelay:0.1];
    [(CUCoalescer *)v10 setLeeway:0.05];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100042D08;
    v11[3] = &unk_1002B6D18;
    v11[4] = v10;
    v11[5] = selfCopy;
    [(CUCoalescer *)v10 setActionHandler:v11];
  }
}

- (void)_evaluatorRun
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4664(self);
  }

  bluetoothState = [(CBDiscovery *)self->_connectedDiscovery bluetoothState];
  if (bluetoothState)
  {
    v4 = bluetoothState == 5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = bluetoothState;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E47C4(v5);
    }

    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortDisconnected"];
    connectedDevices = self->_connectedDevices;
    if (connectedDevices)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      allValues = [(NSMutableDictionary *)connectedDevices allValues];
      v10 = [allValues countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v10)
      {
        v11 = *v59;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v59 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            [(BTSmartRoutingDaemon *)self _connectedDeviceLost:*(*(&v58 + 1) + 8 * i)];
          }

          v10 = [allValues countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v10);
      }

      v13 = self->_connectedDevices;
      self->_connectedDevices = 0;
    }

    disconnectTicksMap = self->_disconnectTicksMap;
    if (disconnectTicksMap)
    {
      [(NSMutableDictionary *)disconnectTicksMap removeAllObjects];
      v15 = self->_disconnectTicksMap;
    }

    else
    {
      v15 = 0;
    }

    self->_disconnectTicksMap = 0;

    if (self->_connectTicks)
    {
      self->_connectTicks = 0;
    }

    if (self->_tipiSetupTicks)
    {
      self->_tipiSetupTicks = 0;
    }

    uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
    if (uiSmartRoutingBanner)
    {
      [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
      v17 = self->_uiSmartRoutingBanner;
      self->_uiSmartRoutingBanner = 0;
    }

    if (self->_tipiElectionInProgress)
    {
      self->_tipiElectionInProgress = 0;
    }

    [(BTSmartRoutingDaemon *)self _setTipiElectionReceivedLePipe:&stru_1002C1358];
    tipiHealingTimer = self->_tipiHealingTimer;
    if (tipiHealingTimer)
    {
      v19 = tipiHealingTimer;
      dispatch_source_cancel(v19);
      v20 = self->_tipiHealingTimer;
      self->_tipiHealingTimer = 0;
    }

    smartRoutingManualDisconnectionList = self->_smartRoutingManualDisconnectionList;
    if (smartRoutingManualDisconnectionList)
    {
      [(NSMutableArray *)smartRoutingManualDisconnectionList removeAllObjects];
      v22 = self->_smartRoutingManualDisconnectionList;
    }

    else
    {
      v22 = 0;
    }

    self->_smartRoutingManualDisconnectionList = 0;

    srBudswapDeviceMap = self->_srBudswapDeviceMap;
    if (srBudswapDeviceMap)
    {
      [(NSMutableDictionary *)srBudswapDeviceMap removeAllObjects];
      v24 = self->_srBudswapDeviceMap;
    }

    else
    {
      v24 = 0;
    }

    self->_srBudswapDeviceMap = 0;

    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    if (smartRoutingWxDeviceMap)
    {
      [(NSMutableDictionary *)smartRoutingWxDeviceMap removeAllObjects];
      v26 = self->_smartRoutingWxDeviceMap;
    }

    else
    {
      v26 = 0;
    }

    self->_smartRoutingWxDeviceMap = 0;

    smartRoutingBackOffMap = self->_smartRoutingBackOffMap;
    if (smartRoutingBackOffMap)
    {
      [(NSMutableDictionary *)smartRoutingBackOffMap removeAllObjects];
      v28 = self->_smartRoutingBackOffMap;
    }

    else
    {
      v28 = 0;
    }

    self->_smartRoutingBackOffMap = 0;

    isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];

    if (isFirstConnectionAfterSREnable)
    {
      isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
      [isFirstConnectionAfterSREnable2 removeAllObjects];
    }

    [(SRSourceDevice *)self->_sourceDevice setIsFirstConnectionAfterSREnable:0];
    highActivityLevelTimer = self->_highActivityLevelTimer;
    if (highActivityLevelTimer)
    {
      v32 = highActivityLevelTimer;
      dispatch_source_cancel(v32);
      v33 = self->_highActivityLevelTimer;
      self->_highActivityLevelTimer = 0;
    }

    phoneOwnershipTimer = self->_phoneOwnershipTimer;
    if (phoneOwnershipTimer)
    {
      v35 = phoneOwnershipTimer;
      dispatch_source_cancel(v35);
      v36 = self->_phoneOwnershipTimer;
      self->_phoneOwnershipTimer = 0;
    }

    idleActivityScoreTimer = self->_idleActivityScoreTimer;
    if (idleActivityScoreTimer)
    {
      v38 = idleActivityScoreTimer;
      dispatch_source_cancel(v38);
      v39 = self->_idleActivityScoreTimer;
      self->_idleActivityScoreTimer = 0;
    }

    phase1ConnectConfig = self->_phase1ConnectConfig;
    self->_phase1ConnectConfig = 0;

    [(SRSourceDevice *)self->_sourceDevice setAudioRoute:1];
    if (v5 > 0xA)
    {
      v41 = "?";
    }

    else
    {
      v41 = off_1002B8BF8[v5];
    }

    v42 = [NSString stringWithUTF8String:v41];
    v43 = [NSString stringWithFormat:@"Bluetooth unsupported state: %@", v42];
    [(BTSmartRoutingDaemon *)self _logEvalError:v43];

    return;
  }

  if (!self->_prefSmartRoutingEnabledPhase3)
  {
    return;
  }

  if (!self->_connectSession)
  {
    if (self->_connectTicks)
    {
      mach_absolute_time();
      v6 = UpTicksToSeconds();
      if (v6 <= 0x1DF)
      {
        if (dword_1002F6778 <= 30)
        {
          v45 = v6;
          if (dword_1002F6778 != -1 || _LogCategory_Initialize())
          {
            sub_1001E477C(v45);
          }
        }

        v44 = @"Too soon since last connection";
        goto LABEL_74;
      }
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_100003918;
    v56 = sub_100003838;
    v57 = 0;
    self->_connected3rdPartyDevice = 0;
    v7 = self->_connectedDevices;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100043540;
    v51[3] = &unk_1002B7EE0;
    v51[4] = self;
    v51[5] = &v52;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v51];
    if (self->_connected3rdPartyDevice && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRun]", 30, "Evaluator: already connected to 3rd party device, allowing SR device to connect");
    }

    if (v53[5] && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRun]", 30, "Evaluator: already connected to SR device, allowing another SR connection.");
    }

    if ([(CUSystemMonitor *)self->_callMonitor connectedCallCount]>= 1 && GestaltGetDeviceClass() == 1)
    {
      if (([(CUSystemMonitor *)self->_callMonitor callFlags]== 1 || [(CUSystemMonitor *)self->_callMonitor callFlags]== 2) && !self->_isBuiltInReceiverRoute && !self->_isSpeakerRoute)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          callFlags = [(CUSystemMonitor *)self->_callMonitor callFlags];
          v47 = "FTaudio";
          if (callFlags == 1)
          {
            v47 = "telephony call";
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRun]", 30, "Evaluator: skip, current route not builtInReceiver or speakeroniPhone during %s", v47);
        }

        callFlags2 = [(CUSystemMonitor *)self->_callMonitor callFlags];
        v49 = @"FTaudio";
        if (callFlags2 == 1)
        {
          v49 = @"telephony call";
        }

        v50 = [NSString stringWithFormat:@"current route not builtInReceiver or speakeroniPhone during %@", v49];
        [(BTSmartRoutingDaemon *)self _logEvalError:v50];
      }

      else
      {
        if (([(CUSystemMonitor *)self->_callMonitor callFlags]& 4) == 0 || self->_isSpeakerRoute)
        {
          goto LABEL_94;
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRun]", 30, "Evaluator: skip, current route not speaker during FT Video");
        }

        [(BTSmartRoutingDaemon *)self _logEvalError:@"Current route not speaker during FT Video"];
      }

      _Block_object_dispose(&v52, 8);

      return;
    }

LABEL_94:
    [(BTSmartRoutingDaemon *)self _evaluatorRunTipiElection:self->_wxDevices nearbyInfoDevicesMap:self->_nearbyInfoDevices localScore:self->_score];
    _Block_object_dispose(&v52, 8);

    return;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4738(self);
  }

  v44 = @"Already connecting to headset";
LABEL_74:

  [(BTSmartRoutingDaemon *)self _logEvalError:v44];
}

- (void)_evaluatorRunInUseBanner:(id)banner
{
  bannerCopy = banner;
  v7 = bannerCopy;
  v77 = bannerCopy;
  if (!bannerCopy)
  {
    bannerCopy = [(BTSmartRoutingDaemon *)self _getActiveNearbyWxAdress];
    v7 = bannerCopy;
  }

  if (self->_prefSmartRoutingInUseBanner)
  {
    if (v7)
    {
      if (!self->_effectiveScreenLocked)
      {
        v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v7];
        inUseBannerBackoffReason = [v8 inUseBannerBackoffReason];

        if (inUseBannerBackoffReason)
        {
          sub_1001E4888(v8);
          goto LABEL_95;
        }

        inUseBannerShown = [v8 inUseBannerShown];
        if (inUseBannerShown)
        {
          sub_1001E4B10(inUseBannerShown, v11, v12);
          goto LABEL_95;
        }

        connectionState = [v8 connectionState];
        if (connectionState)
        {
          sub_1001E4930(connectionState, v14, v15);
          goto LABEL_95;
        }

        nearbyConnectedSourceCount = [v8 nearbyConnectedSourceCount];
        if (!nearbyConnectedSourceCount)
        {
          sub_1001E4AB0(nearbyConnectedSourceCount, v17, v18);
          goto LABEL_95;
        }

        nearbyIsMeLastRoute = [v8 nearbyIsMeLastRoute];
        if (nearbyIsMeLastRoute)
        {
          sub_1001E4A50(nearbyIsMeLastRoute, v20, v21);
          goto LABEL_95;
        }

        v22 = [(BTSmartRoutingDaemon *)self _supportsTipi:v7];
        if ((v22 & 1) == 0)
        {
          sub_1001E4990(v22, v23, v24);
          goto LABEL_95;
        }

        isUSBPlugIn = [v8 isUSBPlugIn];
        if (isUSBPlugIn)
        {
          sub_1001E49F0(isUSBPlugIn, v26, v27);
          goto LABEL_95;
        }

        nearbyPrevInEar = [v8 nearbyPrevInEar];
        nearbyInEar = [v8 nearbyInEar];
        nearbyLastRouteHost = [v8 nearbyLastRouteHost];
        if (nearbyLastRouteHost)
        {
          v30 = [(BTSmartRoutingDaemon *)self _isDevicePairedCheck:nearbyLastRouteHost];
        }

        else
        {
          v30 = 0;
        }

        nearbyiCloudSignIn = [v8 nearbyiCloudSignIn];
        nearbyName = [v8 nearbyName];
        nearbyProductID = [v8 nearbyProductID];
        v73 = objc_msgSend_nearbyOutOfCaseTime(v8);
        v70 = nearbyiCloudSignIn;
        v71 = v30;
        v33 = v30 | nearbyiCloudSignIn;
        mach_absolute_time();
        [(SRSourceDevice *)self->_sourceDevice callStartTicks];
        UpTicksToSecondsF();
        v35 = v34;
        mach_absolute_time();
        [v8 nearbyUSBPluggedInTick];
        v36 = UpTicksToSeconds();
        mach_absolute_time();
        v37 = [(NSMutableDictionary *)self->_disconnectTicksMap objectForKeyedSubscript:v7];
        [v37 unsignedLongLongValue];
        v38 = UpTicksToSeconds();

        nearbyUSBPluggedIn = [v8 nearbyUSBPluggedIn];
        v72 = v36;
        v42 = v36 > 7 || v38 > 7 || nearbyUSBPluggedIn != 1;
        v76 = v42;
        callMap = [(SRSourceDevice *)self->_sourceDevice callMap];
        v44 = [callMap count];

        if ((v33 & 1) != 0 || [v8 nearbyStreamState] || nearbyInEar != 1)
        {
          v45 = nearbyProductID;
          v47 = nearbyProductID != 8223 || nearbyInEar != 1;
          if (!v47 && !v76 && v44)
          {
            v48 = @"B515cUSBConnected-call";
LABEL_53:
            v75 = v48;
            v49 = 1;
            goto LABEL_54;
          }

          if ((v33 & (v44 == 0)) != 0)
          {
LABEL_94:

LABEL_95:
            goto LABEL_96;
          }

          v49 = 0;
          v75 = 0;
LABEL_54:
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            v69 = [(BTSmartRoutingDaemon *)self _getWxChipVersion:v45];
            if (v49)
            {
              v51 = "yes";
            }

            else
            {
              v51 = "no";
            }

            v67 = v51;
            bannerTrigger = [(SRStats *)self->_stats bannerTrigger];
            if (nearbyInEar > 7)
            {
              v52 = "?";
            }

            else
            {
              v52 = off_1002B8E70[nearbyInEar];
            }

            v66 = v52;
            if (nearbyPrevInEar > 7)
            {
              v53 = "?";
            }

            else
            {
              v53 = off_1002B8E70[nearbyPrevInEar];
            }

            nearbyStreamState = [v8 nearbyStreamState];
            if (nearbyStreamState > 3)
            {
              v55 = "?";
            }

            else
            {
              v55 = off_1002B8ED0[nearbyStreamState];
            }

            if (v33)
            {
              v56 = "no";
            }

            else
            {
              v56 = "yes";
            }

            if (v71)
            {
              v57 = "yes";
            }

            else
            {
              v57 = "no";
            }

            if (v70)
            {
              v58 = "yes";
            }

            else
            {
              v58 = "no";
            }

            if ((v73 & 0xFC) != 0)
            {
              v59 = "?";
            }

            else
            {
              v59 = off_1002B90D8[v73 & 3];
            }

            if (v76)
            {
              v60 = "no";
            }

            else
            {
              v60 = "yes";
            }

            if (v44)
            {
              v61 = "yes";
            }

            else
            {
              v61 = "no";
            }

            v45 = nearbyProductID;
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", 30, "Evaluator: InUseBanner, wx %@ addr %@ shouldShow %s trigger %@ inEarSt %s prevInEarSt %s streamState %s isLastHost3rdParty %s isLastHostPaired %s name %@ productID %u iCloudSignedIn %s outOfCaseTime %s timeout %d callStart %.2fs secondsSinceNearbyUSBPlugInUpdate %llu nbUSBConnected %s call %s", v69, v7, v67, bannerTrigger, v66, v53, v55, v56, v57, nearbyName, nearbyProductID, v58, v59, self->_prefSmartRoutingInUseBannerTimeout, *&v35, v72, v60, v61);

            if ((v49 & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          else if (!v49)
          {
            goto LABEL_94;
          }

          if ([(__CFString *)v75 isEqualToString:@"B515cUSBConnected-call"])
          {
            nearbyLastRouteHost2 = [v8 nearbyLastRouteHost];
            v63 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromWxLastConnectedHost:nearbyLastRouteHost2];

            modelIdentifier = [v63 modelIdentifier];
            v65 = [(BTSmartRoutingDaemon *)self _sourceModelNameFromModelIdentifier:modelIdentifier];
          }

          else
          {
            v65 = 0;
          }

          [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:3 withDevice:nearbyName andDeviceAddress:v7 andProductID:v45 andCentralContentItemTxt:v65 andTimeout:0 andDeviceType:20.0];
          [v8 _setInUseBannerShown:1];
          [(SRStats *)self->_stats setBannerTrigger:v75];

          goto LABEL_94;
        }

        v49 = 0;
        v75 = 0;
        v45 = nearbyProductID;
        v50 = nearbyProductID - 8202;
        if ((nearbyProductID - 8202) <= 0x25)
        {
          if (((1 << v50) & 0x200020033FLL) != 0)
          {
            if (nearbyPrevInEar != 2)
            {
              v75 = 0;
              v49 = 0;
              goto LABEL_48;
            }
          }

          else
          {
            if (((1 << v50) & 0x645A8400) == 0)
            {
              goto LABEL_48;
            }

            if (self->_prefSmartRoutingInUseBannerTimeout <= v73)
            {
              v49 = 0;
              v75 = 0;
              if (nearbyProductID != 8223 || nearbyPrevInEar != 2)
              {
                goto LABEL_48;
              }
            }
          }

          v49 = 1;
          v75 = @"3rdPartyHeadset-Unlock";
        }

LABEL_48:
        if (v50 <= 0x25 && (((1 << v50) & 0x200020033FLL) != 0 || ((1 << v50) & 0x645A8400) != 0) && v35 < 1.5)
        {
          v48 = @"3rdPartyHeadset-PhoneCall";
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      sub_1001E4B70(bannerCopy, v5, v6);
    }

    else
    {
      sub_1001E4BD0(bannerCopy, v5, v6);
    }
  }

  else
  {
    sub_1001E4828(bannerCopy, v5, v6);
  }

LABEL_96:
}

- (void)_evaluatorRunTipiElection:(id)election nearbyInfoDevicesMap:(id)map localScore:(int)score
{
  electionCopy = election;
  mapCopy = map;
  v12 = mapCopy;
  if (score > 1 || self->_playbackStart || (mapCopy = [(NSNumber *)self->_localDeviceAudioCategory intValue], mapCopy > 300))
  {
    if (self->_tipiElectionInProgress && !self->_callConnected && !self->_playbackStart)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (mapCopy = _LogCategory_Initialize(), mapCopy))
        {
          sub_1001E4C4C(mapCopy, v10, v11);
        }
      }

      v13 = @"Tipi election already in progress back off";
      goto LABEL_36;
    }

    self->_tipiElectionThroughLEPipe = 0;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2020000000;
    v66 = 0;
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = sub_100003918;
    v63[4] = sub_100003838;
    v64 = 0;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000446C8;
    v61[3] = &unk_1002B7F08;
    scoreCopy = score;
    v61[4] = v65;
    v61[5] = v63;
    [v12 enumerateKeysAndObjectsUsingBlock:v61];
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_100003918;
    v59 = sub_100003838;
    v60 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100044828;
    v49[3] = &unk_1002B7F58;
    scoreCopy2 = score;
    v49[4] = self;
    v49[5] = &v55;
    v49[6] = v65;
    v49[7] = &v51;
    [electionCopy enumerateKeysAndObjectsUsingBlock:v49];
    v14 = v56;
    if (v56[5] && self->_tipiElectionPhase1)
    {
      *(v52 + 24) = 1;
    }

    self->_tipiElectionPhase1 = 0;
    v15 = v14[5];
    if (!v15)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Evaluator: skip, no eligible headset.");
      }

      self->_callConnected = 0;
      self->_playbackStart = 0;
      [(BTSmartRoutingDaemon *)self _logEvalError:@"No eligible headset"];
      goto LABEL_88;
    }

    if (self->_eligibleHeadsetTicks)
    {
      mach_absolute_time();
      v16 = UpTicksToSeconds();
      if (v16 < 0x78)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Evaluator: skip tipi selection, too soon, %ll{dur} remaining", 120 - v16);
        }

        goto LABEL_88;
      }

      v15 = v56[5];
    }

    bleDevice = [v15 bleDevice];
    bluetoothAddress = [bleDevice bluetoothAddress];

    if ([bluetoothAddress length] == 6)
    {
      v19 = NSPrintF("%.6a", COERCE_DOUBLE([bluetoothAddress bytes]));
    }

    else
    {
      v19 = 0;
    }

    phase1ConnectConfig = self->_phase1ConnectConfig;
    if (phase1ConnectConfig && dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        phase1ConnectConfig = self->_phase1ConnectConfig;
      }

      address = [(SRConnectConfig *)phase1ConnectConfig address];
      type = [(SRConnectConfig *)self->_phase1ConnectConfig type];
      if (type > 0xA)
      {
        v23 = "?";
      }

      else
      {
        v23 = off_1002B8FD0[type];
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Evaluator: Phase1Config Wx %@ type %s", address, v23);
    }

LABEL_43:
    v24 = v56[5];
    if (self->_tipiElectionThroughLEPipe)
    {
      if (v24)
      {
        if (!self->_phase1ConnectConfig)
        {
          idsIdentifier = [(SFDevice *)self->_lePipeDevice idsIdentifier];
          if (v19)
          {
            v26 = [(NSMutableDictionary *)self->_smartRoutingBackOffMap objectForKeyedSubscript:v19];
            v27 = [v26 containsString:idsIdentifier];

            if (v27)
            {
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Evaluator: skip headset connected to source that disabled SR");
              }
            }

            else
            {
              self->_tipiElectionInProgress = 1;
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Evaluator: Tipi election won with headset %@", v56[5]);
              }

              objc_storeStrong(&self->_eligibleHeadset, v56[5]);
              LOBYTE(v47) = 1;
              [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:self->_eligibleHeadset routingAction:3 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:1 newWx:v47];
              [(SRStats *)self->_stats setPipeStartTime:mach_absolute_time()];
              smartRoutingPipe = self->_smartRoutingPipe;
              v48[0] = _NSConcreteStackBlock;
              v48[1] = 3221225472;
              v48[2] = sub_100046308;
              v48[3] = &unk_1002B7F80;
              v48[4] = self;
              v48[5] = v19;
              v48[6] = &v55;
              [(SRLEPipe *)smartRoutingPipe pipeSendRouteRequestToSFDevice:idsIdentifier andWxHeadset:v19 newPipe:1 connectionResult:0 completion:v48];
            }
          }

          else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 90, "Evaluator: Unable to get address from eligible headset");
          }

          goto LABEL_87;
        }

LABEL_52:
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_56;
            }

            v24 = v56[5];
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Evaluator: Phase 1, Tipi election won with headset %@", v24);
        }

LABEL_56:
        [(SRStats *)self->_stats setPipeStartTime:0];
        objc_storeStrong(&self->_eligibleHeadset, v56[5]);
        self->_tipiElectionInProgress = 1;
        _isOnDemandConnectInProgress = [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
        if (_isOnDemandConnectInProgress)
        {
          [(SRLEPipe *)self->_smartRoutingPipe invalidate];
          v29 = 2;
        }

        else
        {
          v29 = 3;
        }

        LOBYTE(v47) = 1;
        [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:self->_eligibleHeadset routingAction:v29 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:_isOnDemandConnectInProgress newWx:v47];
        if (self->_forcedConnection)
        {
          if (v19)
          {
            v30 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v19];

            if (v30)
            {
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Backing off from Tipi healing due to ongoing FD!");
              }

              v31 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v19];
              [v31 setTipiHealingBackoff:1];
            }
          }
        }

        if (self->_prefSmartRoutingPreemptiveConnectedBanner)
        {
          v32 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v19];
          if (v32)
          {
            v33 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v19];
            deviceName = [v33 deviceName];

            if (!deviceName)
            {
              v35 = +[CloudXPCService sharedInstance];
              deviceManager = [v35 deviceManager];
              v37 = [deviceManager fetchDeviceSyncWithAddress:v19];
              nickname = [v37 nickname];
              v39 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v19];
              [v39 setDeviceName:nickname];
            }
          }

          identifier = [v56[5] identifier];
          uUIDString = [identifier UUIDString];

          v42 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
          audioState = [v42 audioState];

          v44 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:v19];
          v45 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
          if ([(BTSmartRoutingDaemon *)self _showPreemptiveBannerIfNeeded:v45 inEarState:v44 audioState:audioState wxAddress:v19]&& dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]", 30, "Smart Routing posting preemptive connected banner!");
          }
        }

        [(BTSmartRoutingDaemon *)self _smartRoutingConnectToEligibleHeadset:self->_eligibleHeadset];
      }
    }

    else if (v24)
    {
      goto LABEL_52;
    }

LABEL_87:

LABEL_88:
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);

    _Block_object_dispose(v63, 8);
    _Block_object_dispose(v65, 8);
    goto LABEL_89;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (mapCopy = _LogCategory_Initialize(), mapCopy))
    {
      sub_1001E4C30(mapCopy, v10, v11);
    }
  }

  v13 = @"Tipi score below low";
LABEL_36:
  [(BTSmartRoutingDaemon *)self _logEvalError:v13];
LABEL_89:
}

- (void)_evaluateTemporaryOverride:(id)override
{
  overrideCopy = override;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000467BC;
  v7[3] = &unk_1002B7FA8;
  v8 = overrideCopy;
  selfCopy = self;
  v6 = overrideCopy;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_resetInUserBannerShown
{
  if (self->_prefSmartRoutingInUseBanner)
  {
    [(NSMutableDictionary *)self->_srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B7FE8];
  }
}

- (void)_smartRoutingAddWxMapDevice:(id)device routingAction:(int)action otherAddress:(id)address otherName:(id)name otherSourceVersion:(id)version isRoutingInitialized:(BOOL)initialized newWx:(BOOL)wx
{
  initializedCopy = initialized;
  deviceCopy = device;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v18 = objc_alloc_init(SRWxDevice);
  bleDevice = [deviceCopy bleDevice];
  bluetoothAddress = [bleDevice bluetoothAddress];

  v21 = [bluetoothAddress length];
  if (v21 == 6 && (NSPrintF("%.6a", COERCE_DOUBLE([bluetoothAddress bytes])), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = v21;
    v66 = initializedCopy;
    actionCopy = action;
    bleDevice2 = [deviceCopy bleDevice];
    advertisementFields = [bleDevice2 advertisementFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if ([(BTSmartRoutingDaemon *)self _supportsSR:v24 andProductID:Int64Ranged])
    {
      v28 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v24];

      if (!v28 || wx)
      {
        v30 = actionCopy;
        if (wx)
        {
          v31 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v24];

          if (v31)
          {
            if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              sub_1001E55FC(v24);
            }

            [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:0 forKeyedSubscript:v24];
          }
        }

        identifier = [deviceCopy identifier];
        uUIDString = [identifier UUIDString];

        v65 = uUIDString;
        v34 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
        isInEar = [v34 isInEar];

        if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          if (actionCopy > 5)
          {
            v36 = "?";
          }

          else
          {
            v36 = off_1002B90F8[actionCopy];
          }

          v37 = "no";
          if (v66)
          {
            v38 = "yes";
          }

          else
          {
            v38 = "no";
          }

          if (wx)
          {
            v39 = "yes";
          }

          else
          {
            v39 = "no";
          }

          if (isInEar)
          {
            v37 = "yes";
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDevice:routingAction:otherAddress:otherName:otherSourceVersion:isRoutingInitialized:newWx:]", 50, "Creating SR WX device %@ with action %s otherAddress %@ otherName %@ routingInitialized %s newWx %s inEar %s, Tipi connection!", v24, v36, addressCopy, nameCopy, v38, v39, v37);
        }

        v64 = isInEar;
        v40 = [(NSString *)self->_budSwapAddress isEqualToString:v24];
        if (v40)
        {
          if (dword_1002F6778 <= 50)
          {
            if (dword_1002F6778 != -1 || (v40 = _LogCategory_Initialize(), v40))
            {
              sub_1001E563C(v40, v41, v42);
            }
          }

          if (self->_hfpBudswapDetected)
          {
            self->_hfpBudswapDetected = 0;
          }

          v63 = versionCopy;
          v43 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v24];
          if (!v43)
          {
            v43 = objc_alloc_init(SRBudswapDevice);
          }

          [(SRBudswapDevice *)v43 setReconnectionState:1];
          otherTipiDeviceBTAddress = [(SRBudswapDevice *)v43 otherTipiDeviceBTAddress];

          if (otherTipiDeviceBTAddress)
          {
            otherTipiDeviceBTAddress2 = [(SRBudswapDevice *)v43 otherTipiDeviceBTAddress];
            otherTipiDeviceBTName = [(SRBudswapDevice *)v43 otherTipiDeviceBTName];
            otherTipiDeviceVersion = [(SRBudswapDevice *)v43 otherTipiDeviceVersion];
            [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:v24 otherAddress:otherTipiDeviceBTAddress2 otherName:otherTipiDeviceBTName otherVersion:otherTipiDeviceVersion];
          }

          budSwapAddress = self->_budSwapAddress;
          self->_budSwapAddress = 0;

          [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v43 forKeyedSubscript:v24];
          budSwapTimer = self->_budSwapTimer;
          if (budSwapTimer)
          {
            v50 = budSwapTimer;
            dispatch_source_cancel(v50);
            v51 = self->_budSwapTimer;
            self->_budSwapTimer = 0;
          }

          v30 = actionCopy;
          versionCopy = v63;
        }

        [(SRWxDevice *)v18 setDeviceAddress:v24];
        [(SRWxDevice *)v18 setDeviceVersion:0];
        [(SRWxDevice *)v18 setOtherTipiAudioCategory:0];
        [(SRWxDevice *)v18 setHijackBackoffTicks:0];
        [(SRWxDevice *)v18 setRouted:v30 == 1];
        [(SRWxDevice *)v18 setConnected:0];
        name = [deviceCopy name];
        [(SRWxDevice *)v18 setDeviceName:name];

        identifier2 = [deviceCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        [(SRWxDevice *)v18 setConduitDeviceID:uUIDString2];

        identifier3 = [deviceCopy identifier];
        uUIDString3 = [identifier3 UUIDString];
        [(SRWxDevice *)v18 setIdentifier:uUIDString3];

        bleDevice3 = [deviceCopy bleDevice];
        advertisementFields2 = [bleDevice3 advertisementFields];
        [(SRWxDevice *)v18 setProductID:CFDictionaryGetInt64Ranged()];

        [(SRWxDevice *)v18 setInEar:v64];
        [(SRWxDevice *)v18 setIsTipiHealingV2Eligible:0];
        [(SRWxDevice *)v18 setIsRoutingActionInitialized:v66];
        [(SRWxDevice *)v18 setTipitableUpdated:0];
        [(SRWxDevice *)v18 setRoutingAction:v30];
        [(SRWxDevice *)v18 setOtherTipiDeviceInfo:addressCopy andName:nameCopy andVersion:versionCopy];
        [(BTSmartRoutingDaemon *)self _lowestBatteryInfoForSFDevice:deviceCopy];
        [(SRWxDevice *)v18 setLowestBudBatteryInfo:?];
        if (v64)
        {
          v59 = 1;
        }

        else
        {
          v59 = 3;
        }

        [(SRWxDevice *)v18 setRoutingUI:v59];
        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        if (!smartRoutingWxDeviceMap)
        {
          v61 = objc_alloc_init(NSMutableDictionary);
          v62 = self->_smartRoutingWxDeviceMap;
          self->_smartRoutingWxDeviceMap = v61;

          smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        }

        [(NSMutableDictionary *)smartRoutingWxDeviceMap setObject:v18 forKeyedSubscript:v24];
        self->_autoRoutingTicks = mach_absolute_time();
        v29 = v65;
      }

      else
      {
        v29 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v24];
        [v29 setOtherTipiDeviceInfo:addressCopy andName:nameCopy andVersion:versionCopy];
      }

      if ([(SRWxDevice *)v18 routingAction]== 2)
      {
        ++self->_autoRoutingSingle;
      }

      else
      {
        ++self->_autoRoutingTipi;
      }
    }

    else
    {
      sub_1001E5588();
      v24 = v69;
    }
  }

  else
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v21 = _LogCategory_Initialize(), v21))
      {
        sub_1001E5658(v21, v22, v23);
      }
    }

    v24 = 0;
  }
}

- (void)_smartRoutingAddWxMapDeviceFromConnectedDevice:(id)device
{
  deviceCopy = device;
  if (!self->_smartRoutingWxDeviceMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    self->_smartRoutingWxDeviceMap = v5;
  }

  btAddressData = [deviceCopy btAddressData];
  v8 = CUPrintNSDataAddress();

  v9 = -[BTSmartRoutingDaemon _supportsSR:andProductID:](self, "_supportsSR:andProductID:", v8, [deviceCopy productID]);
  if (v9)
  {
    if (v8)
    {
      v12 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v8];

      if (!v12)
      {
        audioDestination = [(SRSourceDevice *)self->_sourceDevice audioDestination];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", 30, "Creating SR WX device with address %@ from CONNECTED event. Current audio route %@", v8, audioDestination);
        }

        self->_smartRoutingDisconnectReason = 0;
        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        v52 = 0;
        v14 = objc_alloc_init(SRWxDevice);
        if ([(NSString *)self->_budSwapAddress isEqualToString:v8])
        {
          *(v50 + 24) = 1;
          if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", 50, "Marking the reconnection state as isConnected - _srBudswapDeviceMap");
          }

          v15 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v8];
          if (!v15)
          {
            v15 = objc_alloc_init(SRBudswapDevice);
          }

          [(SRBudswapDevice *)v15 setReconnectionState:1];
          if (self->_hfpBudswapDetected)
          {
            self->_hfpBudswapDetected = 0;
          }

          otherTipiDeviceBTAddress = [(SRBudswapDevice *)v15 otherTipiDeviceBTAddress];

          if (otherTipiDeviceBTAddress)
          {
            otherTipiDeviceBTAddress2 = [(SRBudswapDevice *)v15 otherTipiDeviceBTAddress];
            otherTipiDeviceBTName = [(SRBudswapDevice *)v15 otherTipiDeviceBTName];
            otherTipiDeviceVersion = [(SRBudswapDevice *)v15 otherTipiDeviceVersion];
            [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:v8 otherAddress:otherTipiDeviceBTAddress2 otherName:otherTipiDeviceBTName otherVersion:otherTipiDeviceVersion];
          }

          budSwapAddress = self->_budSwapAddress;
          self->_budSwapAddress = 0;

          budSwapTimer = self->_budSwapTimer;
          if (budSwapTimer)
          {
            v22 = budSwapTimer;
            dispatch_source_cancel(v22);
            v23 = self->_budSwapTimer;
            self->_budSwapTimer = 0;
          }

          [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v15 forKeyedSubscript:v8];
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", 30, "SmartRouting budswap re-connection, set routing appropriately");
          }
        }

        if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count])
        {
          v24 = self->_smartRoutingWxDeviceMap;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100047754;
          v48[3] = &unk_1002B7DF0;
          v48[4] = &v49;
          [(NSMutableDictionary *)v24 enumerateKeysAndObjectsUsingBlock:v48];
        }

        v25 = -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [deviceCopy productID]) || objc_msgSend(deviceCopy, "primaryPlacement") == 1 || objc_msgSend(deviceCopy, "secondaryPlacement") == 1;
        [(SRWxDevice *)v14 setDeviceAddress:v8];
        [(SRWxDevice *)v14 setDeviceVersion:0];
        [(SRWxDevice *)v14 setHijackBackoffTicks:0];
        [(SRWxDevice *)v14 setConnected:1];
        name = [deviceCopy name];
        [(SRWxDevice *)v14 setDeviceName:name];

        identifier = [deviceCopy identifier];
        [(SRWxDevice *)v14 setConduitDeviceID:identifier];

        -[SRWxDevice setProductID:](v14, "setProductID:", [deviceCopy productID]);
        identifier2 = [deviceCopy identifier];
        [(SRWxDevice *)v14 setIdentifier:identifier2];

        [(SRWxDevice *)v14 setInEar:v25];
        -[SRWxDevice setInEarDisabled:](v14, "setInEarDisabled:", [deviceCopy primaryPlacement] == 7);
        [(SRWxDevice *)v14 setIsTipiHealingV2Eligible:0];
        [(SRWxDevice *)v14 setOtherTipiAudioCategory:0];
        [(BTSmartRoutingDaemon *)self _lowestBatteryInfoForCBDevice:deviceCopy];
        [(SRWxDevice *)v14 setLowestBudBatteryInfo:?];
        [(SRWxDevice *)v14 setIsRoutingActionInitialized:[(NSString *)self->_budSwapAddress isEqualToString:v8]];
        [(SRWxDevice *)v14 setTipitableUpdated:0];
        v29 = [deviceCopy audioStreamState] >= 2 && -[NSNumber intValue](self->_localDeviceAudioCategory, "intValue") < 101;
        v30 = [(NSString *)self->_triangleRecoveryInitiatedAddress isEqualToString:v8];
        v31 = *(v50 + 24);
        deviceFlags = [deviceCopy deviceFlags];
        v33 = deviceFlags;
        if ((v31 | (v29 | v30)))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        if ((*&deviceFlags & 0x400000) != 0)
        {
          v35 = 1;
        }

        else
        {
          v35 = v34;
        }

        [(SRWxDevice *)v14 setRoutingAction:v35];
        if (v25)
        {
          v36 = 1;
        }

        else
        {
          v36 = 3;
        }

        [(SRWxDevice *)v14 setRoutingUI:v36];
        [(SRWxDevice *)v14 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];
        [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:v14 forKeyedSubscript:v8];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          routingAction = [(SRWxDevice *)v14 routingAction];
          if (routingAction > 5)
          {
            v38 = "?";
          }

          else
          {
            v38 = off_1002B90F8[routingAction];
          }

          v39 = "yes";
          if (*(v50 + 24))
          {
            v40 = "yes";
          }

          else
          {
            v40 = "no";
          }

          if (v29)
          {
            v41 = "yes";
          }

          else
          {
            v41 = "no";
          }

          if ((*&v33 & 0x400000) != 0)
          {
            v42 = "yes";
          }

          else
          {
            v42 = "no";
          }

          if (!v30)
          {
            v39 = "no";
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", 30, "Setting RoutingAction %s isTiPiDevice %s isStreamingFromOtherSource %s isBudswap %s manual %s isTriangleRecoveryInitiatedAddress %s localAudio %@", v38, v40, v41, "no", v42, v39, self->_localDeviceAudioCategory);
        }

        self->_autoRoutingTicks = mach_absolute_time();
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          routingAction2 = [(SRWxDevice *)v14 routingAction];
          if (routingAction2 > 5)
          {
            v44 = "?";
          }

          else
          {
            v44 = off_1002B90F8[routingAction2];
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", 30, "Current device route decision is %s", v44);
        }

        if (self->_prefSmartRoutingEnabledPhase3 && !self->_tipiElectionInProgress && [(BTSmartRoutingDaemon *)self _aacpConnectedCheck:deviceCopy])
        {
          [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
        }

        if ([(NSMutableArray *)self->_smartRoutingManualDisconnectionList containsObject:v8])
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", 30, "Remove Wx from manual disconnect list");
          }

          [(NSMutableArray *)self->_smartRoutingManualDisconnectionList removeObject:v8];
        }

        v45 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v8];
        [v45 setIsManualDisconnectLastTime:0];
        routingAction3 = [(SRWxDevice *)v14 routingAction];
        v47 = 144;
        if (routingAction3 == 2)
        {
          v47 = 128;
        }

        ++*(&self->super.isa + v47);

        _Block_object_dispose(&v49, 8);
      }
    }

    else if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_1001E56D4(v9, v10, v11);
      }
    }
  }

  else
  {
    sub_1001E5674(v9, v10, v11);
  }
}

- (BOOL)_smartRoutingShowBanner:(int)banner withDevice:(id)device andDeviceAddress:(id)address andProductID:(unsigned int)d andCentralContentItemTxt:(id)txt andTimeout:(double)timeout andDeviceType:(unsigned int)type
{
  v12 = *&d;
  deviceCopy = device;
  addressCopy = address;
  txtCopy = txt;
  v19 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy];
  v20 = [(BTSmartRoutingDaemon *)self _inEarConnectedCheck:addressCopy];
  if ([(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v12])
  {
    v20 = 1;
  }

  else if (![v19 primaryPlacement] && !objc_msgSend(v19, "secondaryPlacement"))
  {
    v20 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:addressCopy];
  }

  if (![(CUSystemMonitor *)self->_powerMonitor screenActive]|| self->_systemUIProxCardPresent || ((v20 ^ 1) & 1) != 0 || self->_effectiveScreenLocked)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E57A4(&self->_powerMonitor, self, v20);
    }

    if ([(CUSystemMonitor *)self->_powerMonitor screenActive])
    {
      v21 = !self->_effectiveScreenLocked;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    if (type)
    {
      v22 = @"Speaker";
      if (type == 20)
      {
        v22 = @"Headset";
      }

      v23 = v22;
    }

    else
    {
      if (v12 == 8228)
      {
        v24 = 8212;
      }

      else
      {
        v24 = v12;
      }

      if ((v24 & 0xFFFFFFFD) == 0x2019 || v24 == 8222 || v24 == 8224)
      {
        v27 = 8217;
      }

      else
      {
        v27 = v24;
      }

      v23 = [(BTSmartRoutingDaemon *)self _productColorAssetLookup:v27 andAddress:addressCopy];
    }

    v28 = v23;
    v29 = [(BTSmartRoutingDaemon *)self _lowestBatteryForDeviceWithAddress:addressCopy];
    v30 = v29;
    if (v29)
    {
      [v29 level];
      v32 = v31;
    }

    else
    {
      v32 = 0.0;
    }

    v33 = objc_alloc_init(BTBannerUISession);
    objc_storeStrong(&self->_uiSmartRoutingBanner, v33);
    if (deviceCopy)
    {
      v34 = deviceCopy;
    }

    else
    {
      v34 = &stru_1002C1358;
    }

    [v33 setCenterContentText:v34];
    [v33 setCenterContentItemsText:txtCopy];
    [v33 setDispatchQueue:self->_dispatchQueue];
    [v33 setLeadingAccessoryImageName:v28];
    [v33 setTimeoutSeconds:timeout];
    [v33 setBatteryLevelInfo:v32];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5730(banner, v33);
    }

    if ((banner - 3) <= 2)
    {
      [v33 setTrailingAccessoryText:*(&off_1002B8AF0 + (banner - 3))];
    }

    v35 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:addressCopy];
    if ([v35 isUSBPlugIn])
    {
      [v33 setBannerType:4];
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    bannerCopy = banner;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100047BF4;
    v37[3] = &unk_1002B8010;
    v37[4] = v33;
    v37[5] = self;
    bannerCopy2 = banner;
    v39 = &v41;
    v38 = addressCopy;
    [v33 setActionHandler:v37];
    if (*(v42 + 6) == 1)
    {
      [(BTSmartRoutingDaemon *)self _setConnectedBannerTick:mach_absolute_time()];
    }

    [v33 activate];

    _Block_object_dispose(&v41, 8);
    v21 = 1;
  }

  return v21;
}

- (id)_lowestBatteryForDeviceWithAddress:(id)address
{
  addressCopy = address;
  v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
  v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy];
  identifier = [v5 identifier];
  if (identifier || ([v6 identifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = identifier;
    v9 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    v10 = [v9 deviceWithIdentifier:v8];

    if (!v10)
    {
      sub_1001E5A3C(v8, &v42);
      v29 = v42;
      goto LABEL_38;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    batteries = [v10 batteries];
    v12 = [batteries countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = v10;
      v37 = v6;
      v14 = v5;
      v15 = addressCopy;
      v16 = 0;
      v17 = *v39;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(batteries);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          if (([v19 isCaseBattery] & 1) == 0)
          {
            if (!v16 || ([v16 level], v21 = v20, objc_msgSend(v19, "level"), v21 >= v22))
            {
              v23 = v19;

              v16 = v23;
            }
          }
        }

        v13 = [batteries countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);

      addressCopy = v15;
      v5 = v14;
      v10 = v36;
      v6 = v37;
      if (v16)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E593C(v16);
        }

        v24 = v16;
        goto LABEL_26;
      }
    }

    else
    {
    }

    [v5 lowestBudBatteryInfo];
    if (v25 == 0.0)
    {
      v30 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:v8];
      [v30 lowestBudBatteryInfo];
      if (v31 == 0.0)
      {
        if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E597C(v8);
        }

        v29 = 0;
      }

      else
      {
        v32 = [AABattery alloc];
        [v30 lowestBudBatteryInfo];
        v34 = [v32 initWithLevel:objc_msgSend(v30 productID:"productID") state:1 type:{4, v33}];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E59BC(v34);
        }

        v29 = v34;
      }

      goto LABEL_37;
    }

    v26 = [AABattery alloc];
    [v5 lowestBudBatteryInfo];
    v28 = [v26 initWithLevel:objc_msgSend(v5 productID:"productID") state:1 type:{4, v27}];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E59FC(v28);
    }

    v24 = v28;
LABEL_26:
    v29 = v24;
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  sub_1001E5AC0(addressCopy, &v42);
  v29 = v42;
LABEL_39:

  return v29;
}

- (void)_smartRoutingConnectionCompleted:(id)completed
{
  completedCopy = completed;
  bleDevice = [(SFDevice *)self->_eligibleHeadset bleDevice];
  bluetoothAddress = [bleDevice bluetoothAddress];

  if ([bluetoothAddress length] == 6)
  {
    v7 = NSPrintF("%.6a", COERCE_DOUBLE([bluetoothAddress bytes]));
  }

  else
  {
    v7 = 0;
  }

  bleDevice2 = [(SFDevice *)self->_eligibleHeadset bleDevice];
  advertisementFields = [bleDevice2 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E5B44();
  }

  connectDevice = self->_connectDevice;
  if (connectDevice)
  {
    self->_connectDevice = 0;
  }

  connectSession = self->_connectSession;
  if (connectSession)
  {
    [(CBConnection *)connectSession invalidate];
    v13 = self->_connectSession;
    self->_connectSession = 0;
  }

  if (!self->_disconnectTicksMap)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    disconnectTicksMap = self->_disconnectTicksMap;
    self->_disconnectTicksMap = v14;
  }

  if (v7)
  {
    [(BTSmartRoutingDaemon *)self _setDisconnectTick:0 forWxAddress:v7];
  }

  self->_connectTicks = 0;
  self->_eligibleHeadsetTicks = 0;
  if (!completedCopy)
  {
    if (!self->_prefSmartRoutingEnabledPhase3 || !self->_tipiElectionInProgress)
    {
      goto LABEL_66;
    }

    v16 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
    otherTipiDeviceVersion = [v16 otherTipiDeviceVersion];
    [otherTipiDeviceVersion doubleValue];
    v19 = v18;

    if (v19 >= 1.2)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v20 = _LogCategory_Initialize(), v20))
        {
          sub_1001E5BEC(v20, v21, v22);
        }
      }

      idsIdentifier = [(SFDevice *)self->_lePipeDevice idsIdentifier];
      if (self->_prefSmartRoutingConnectionManager)
      {
        v31 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v7];
        nearbyLEPipeSourceDevice = [v31 nearbyLEPipeSourceDevice];
        idsIdentifier2 = [nearbyLEPipeSourceDevice idsIdentifier];

        idsIdentifier = idsIdentifier2;
      }

      smartRoutingPipe = self->_smartRoutingPipe;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100048EE4;
      v59[3] = &unk_1002B68A8;
      v59[4] = self;
      v59[5] = v7;
      [(SRLEPipe *)smartRoutingPipe pipeSendRouteRequestToSFDevice:idsIdentifier andWxHeadset:v7 newPipe:0 connectionResult:@"connectionResultSuccess" completion:v59];
    }

    else if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v20 = _LogCategory_Initialize(), v20))
      {
        sub_1001E5C08(v20, v21, v22);
      }
    }

    if (v7)
    {
      v35 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v7];

      if (v35)
      {
        v36 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
        [v36 setConnected:1];
      }

      v37 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v7];
      if (v37)
      {
        v38 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v7];
        if ([v38 primaryPlacement] == 1)
        {
          v39 = 1;
        }

        else
        {
          v45 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v7];
          v39 = [v45 secondaryPlacement] == 1;
        }
      }

      else
      {
        v39 = 0;
      }

      v46 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
      if ([v46 routingAction] == 3)
      {
        v47 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v7];
        [v47 reconnectionState];
      }
    }

    else
    {
      v39 = 0;
    }

    identifier = [(SFDevice *)self->_eligibleHeadset identifier];
    uUIDString = [identifier UUIDString];

    if (!v39)
    {
      goto LABEL_65;
    }

    name = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
    if ([name routingAction] == 1)
    {
      v51 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v7];
      reconnectionState = [v51 reconnectionState];

      if (reconnectionState == 1)
      {
        goto LABEL_65;
      }

      v53 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
      preemptiveBannerShown = [v53 preemptiveBannerShown];

      if (preemptiveBannerShown)
      {
        goto LABEL_65;
      }

      name = [(SFDevice *)self->_eligibleHeadset name];
      [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:1 withDevice:name andDeviceAddress:v7 andProductID:Int64Ranged andCentralContentItemTxt:@"Connected" andTimeout:0 andDeviceType:4.0];
    }

LABEL_65:
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100049028;
    v58[3] = &unk_1002B7FA8;
    v58[4] = v7;
    v58[5] = self;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v58];

    goto LABEL_66;
  }

  if (self->_prefSmartRoutingNoBackOffTimers)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingConnectToEligibleHeadset:self->_eligibleHeadset];
    goto LABEL_70;
  }

  if (self->_prefSmartRoutingEnabledPhase3 && self->_tipiElectionInProgress)
  {
    v23 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
    otherTipiDeviceVersion2 = [v23 otherTipiDeviceVersion];
    [otherTipiDeviceVersion2 doubleValue];
    v26 = v25;

    if (v26 >= 1.2)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v27 = _LogCategory_Initialize(), v27))
        {
          sub_1001E5BB4(v27, v28, v29);
        }
      }

      idsIdentifier3 = [(SFDevice *)self->_lePipeDevice idsIdentifier];
      if (self->_prefSmartRoutingConnectionManager)
      {
        v41 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v7];
        nearbyLEPipeSourceDevice2 = [v41 nearbyLEPipeSourceDevice];
        idsIdentifier4 = [nearbyLEPipeSourceDevice2 idsIdentifier];

        idsIdentifier3 = idsIdentifier4;
      }

      v44 = self->_smartRoutingPipe;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100048DD8;
      v60[3] = &unk_1002B68A8;
      v60[4] = self;
      v60[5] = v7;
      [(SRLEPipe *)v44 pipeSendRouteRequestToSFDevice:idsIdentifier3 andWxHeadset:v7 newPipe:0 connectionResult:@"connectionResultError" completion:v60];
    }

    else if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v27 = _LogCategory_Initialize(), v27))
      {
        sub_1001E5BD0(v27, v28, v29);
      }
    }

    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortDisconnected"];
  }

LABEL_66:
  self->_tipiElectionInProgress = 0;
  eligibleHeadset = self->_eligibleHeadset;
  self->_eligibleHeadset = 0;

  [(BTSmartRoutingDaemon *)self _submitConnectionMetric:v7 andError:completedCopy];
  if (completedCopy)
  {
    self->_forcedConnection = 0;
    phase1ConnectConfig = self->_phase1ConnectConfig;
    self->_phase1ConnectConfig = 0;

    if (v7)
    {
      [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:0 forKeyedSubscript:v7];
    }
  }

  [(BTSmartRoutingDaemon *)self _submitNearbyDeviceMetric:Int64Ranged];
LABEL_70:
}

- (void)_smartRoutingConnectToEligibleHeadset:(id)headset
{
  headsetCopy = headset;
  bleDevice = [headsetCopy bleDevice];
  bluetoothAddress = [bleDevice bluetoothAddress];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100003918;
  v38 = sub_100003838;
  v8 = [bluetoothAddress length];
  v9 = 0;
  if (v8 == 6)
  {
    v9 = NSPrintF("%.6a", COERCE_DOUBLE([bluetoothAddress bytes]));
  }

  v39 = v9;
  identifier = [headsetCopy identifier];
  uUIDString = [identifier UUIDString];

  mach_absolute_time();
  v12 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:v35[5]];
  [v12 lastWxAdvTicks];
  v13 = UpTicksToMilliseconds();

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingConnectToEligibleHeadset:]", 30, "Evaluator: connect start: %@, %@, last wx adv is seen %llums", v35[5], headsetCopy, v13);
  }

  objc_storeStrong(&self->_connectDevice, headset);
  v14 = objc_alloc_init(CBDevice);
  [v14 setIdentifier:v35[5]];
  v15 = mach_absolute_time();
  v16 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  [v16 setLastConnectionTicks:v15];

  v17 = objc_alloc_init(CBConnection);
  objc_storeStrong(&self->_connectSession, v17);
  [v17 setConnectionFlags:2];
  evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];

  if (!evalWxMap)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    [(SRSourceDevice *)self->_sourceDevice setEvalWxMap:v19];
  }

  evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  v21 = [evalWxMap2 objectForKeyedSubscript:v35[5]];

  if (!v21)
  {
    v21 = objc_alloc_init(SRWxInfo);
  }

  v22 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  -[SRWxInfo setLastConnectTicks:](v21, "setLastConnectTicks:", [v22 lastConnectionTicks]);

  evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  [evalWxMap3 setObject:v21 forKeyedSubscript:v35[5]];

  v24 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v35[5]];
  otherTipiDeviceBTAddress = [v24 otherTipiDeviceBTAddress];

  if (otherTipiDeviceBTAddress)
  {
    [v17 setConnectionFlags:{objc_msgSend(v17, "connectionFlags") | 8}];
  }

  [v17 setServiceFlags:0xFFFFFFFFLL];
  [v17 setPeerDevice:v14];
  [v17 setDispatchQueue:self->_dispatchQueue];
  [v17 setConnectTimeoutSeconds:20.0];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100003918;
  v32[4] = sub_100003838;
  identifier2 = [v24 identifier];
  v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_connectDispatchTimer, v26);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100049730;
  handler[3] = &unk_1002B80A0;
  handler[4] = v17;
  handler[5] = self;
  v30 = &v34;
  v31 = v32;
  v27 = v21;
  v29 = v27;
  dispatch_source_set_event_handler(v26, handler);
  CUDispatchTimerSet();
  dispatch_activate(v26);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingConnectToEligibleHeadset:]", 30, "Connection Fired in %ll{dur}", self->_prefConnectionDelaySeconds);
  }

  self->_prefSpeakRouteConnection = 1;

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);
}

- (void)_respondRoutingRequest:(id)request withResponseHandler:(id)handler wxAddress:(id)address
{
  requestCopy = request;
  handlerCopy = handler;
  addressCopy = address;
  v12 = addressCopy;
  if (handlerCopy)
  {
    if (requestCopy)
    {
      if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5CCC(requestCopy);
      }

      [(BTSmartRoutingDaemon *)self _tipiHealingHijackTimerReset];
      handlerCopy[2](handlerCopy, requestCopy);
      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v12];
        [v13 setAudioRoutingResponse:0];
        [v13 setAudioRoutingClientID:0];
      }
    }

    else
    {
      sub_1001E5D90(dword_1002F6778, 0, v11);
    }
  }

  else
  {
    sub_1001E5DE8(addressCopy, v10, v11);
  }
}

- (void)hijackBlockingModeChangedFromClient:(id)client mode:(BOOL)mode completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100049B90;
  v13[3] = &unk_1002B7AF0;
  v13[4] = self;
  v14 = clientCopy;
  modeCopy = mode;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = clientCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_hijackBlockingModeChangedFromClient:(id)client mode:(BOOL)mode completion:(id)completion
{
  modeCopy = mode;
  clientCopy = client;
  completionCopy = completion;
  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E5E48(clientCopy);
  }

  appBundleID = [clientCopy appBundleID];

  if (appBundleID)
  {
    sourceDevice = self->_sourceDevice;
    appBundleID2 = [clientCopy appBundleID];
    [(SRSourceDevice *)sourceDevice updateHijackBlockingClientWithBundleID:appBundleID2 mode:modeCopy];

    completionCopy[2](completionCopy, 0);
    [(BTSmartRoutingDaemon *)self _sendAudioCategoryToAllTipiDevices];
  }

  else
  {
    if (dword_1002F6778 <= 50)
    {
      if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_1001E5EC8(v10, v11, v12);
      }
    }

    v15 = [NSError alloc];
    v16 = [v15 initWithDomain:off_1002F6770 code:1 userInfo:0];
    (completionCopy)[2](completionCopy, v16);
  }
}

- (void)smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049DD8;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v46 = objc_alloc_init(BTAudioRoutingResponse);
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_100003918;
  v76 = sub_100003838;
  deviceAddress = [requestCopy deviceAddress];
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_100003918;
  v70[4] = sub_100003838;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_100003918;
  v68[4] = sub_100003838;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_100003918;
  v66[4] = sub_100003838;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100003918;
  v64 = sub_100003838;
  v44 = requestCopy;
  options = [requestCopy options];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v8 = @"Not set";
  if (TypedValue)
  {
    v8 = TypedValue;
  }

  v65 = v8;

  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    deviceAddress2 = [requestCopy deviceAddress];
    audioScore = [v44 audioScore];
    [v44 flags];
    v11 = CUPrintFlags32();
    appBundleID = [v44 appBundleID];
    clientID = [v44 clientID];
    v14 = @"NULL";
    if (appBundleID)
    {
      v14 = appBundleID;
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]", 50, "Routing request Wx %@ score %d flag %@ app %@ CID 0x%X category %@", deviceAddress2, audioScore, v11, v14, clientID, v61[5]);
  }

  if (([v44 flags] & 0x10) != 0)
  {
    [v46 setAction:5];
    [v46 setReason:@"Connecting"];
    [v46 setClientID:{objc_msgSend(v44, "clientID")}];
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10004A834;
    v59[3] = &unk_1002B7DF0;
    v59[4] = &v72;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v59];
    v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v73[5]];
    identifier = [v18 identifier];

    [v46 setDeviceAddress:v73[5]];
    v20 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    if ([v20 productID])
    {
      v21 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
      v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"BTHeadphones76,%u", [v21 productID]);
    }

    else
    {
      v42 = &stru_1002C1358;
    }

    v83[0] = v42;
    v82[0] = @"RouteModel";
    v82[1] = @"RouteName";
    v27 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    name = [v27 name];
    v29 = name;
    v30 = @"Airpods";
    if (name)
    {
      v30 = name;
    }

    v83[1] = v30;
    v82[2] = @"RouteUID";
    v31 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    address = [v31 address];
    v33 = address;
    if (address)
    {
      v34 = address;
    }

    else
    {
      v34 = &stru_1002C1358;
    }

    v83[2] = v34;
    v82[3] = @"BatteryLeft";
    v35 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    [v35 batteryLeft];
    v36 = [NSNumber numberWithDouble:?];
    v83[3] = v36;
    v82[4] = @"BatteryRight";
    v37 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    [v37 batteryRight];
    v38 = [NSNumber numberWithDouble:?];
    v83[4] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:5];
    [v46 setWxInfo:v39];

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      wxInfo = [v46 wxInfo];
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]", 30, "[Preemptive] nearby wx info %@", wxInfo);
    }

    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v46 withResponseHandler:handlerCopy wxAddress:v73[5]];
    *(v79 + 24) = 1;
  }

  else if (v73[5] || (v15 = self->_smartRoutingWxDeviceMap, v58[0] = _NSConcreteStackBlock, v58[1] = 3221225472, v58[2] = sub_10004A86C, v58[3] = &unk_1002B80C8, v58[4] = self, v58[5] = &v72, v58[6] = v70, v58[7] = v68, v58[8] = v66, [(NSMutableDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v58], v73[5]))
  {
    if (_os_feature_enabled_impl())
    {
      v16 = ([v44 flags] >> 5) & 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    v22 = self->_smartRoutingWxDeviceMap;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10004A9B0;
    v47[3] = &unk_1002B80F0;
    v52 = &v72;
    v23 = v44;
    v48 = v23;
    selfCopy = self;
    v50 = v46;
    v24 = handlerCopy;
    v51 = v24;
    v53 = &v78;
    v54 = &v60;
    v55 = v66;
    v56 = v70;
    v57 = v16;
    [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v47];
    if ((v79[3] & 1) == 0)
    {
      budSwapAddress = self->_budSwapAddress;
      deviceAddress3 = [v23 deviceAddress];
      LODWORD(budSwapAddress) = [(NSString *)budSwapAddress isEqualToString:deviceAddress3];

      if (budSwapAddress)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]", 30, "Hijack: Budswap reconnect in progress. Respond DontRoute before Wx connected. Budswap Wx %@", self->_budSwapAddress);
        }

        [v46 setAction:3];
        [v46 setDeviceAddress:0];
        v41 = @"Budswap reconnect will happen soon";
      }

      else
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]", 30, "Hijack: respond MX to route if we don't find any SR Wx");
        }

        [v46 setAction:2];
        [v46 setDeviceAddress:0];
        v41 = @"Not tipi device";
      }

      [v46 setReason:v41];
      [v46 setClientID:{objc_msgSend(v23, "clientID")}];
      [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v46 withResponseHandler:v24 wxAddress:v73[5]];
    }
  }

  else
  {
    [v46 setAction:3];
    [v46 setDeviceAddress:0];
    [v46 setReason:{@"Tipi device, do not route, not inEar and/or inEar is not disabled."}];
    [v46 setClientID:{objc_msgSend(v44, "clientID")}];
    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v46 withResponseHandler:handlerCopy wxAddress:v73[5]];
  }

  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);
}

- (void)_submitNearbyDeviceMetric:(unsigned int)metric
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  nearbyInfoDevices = self->_nearbyInfoDevices;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004C0C0;
  v16[3] = &unk_1002B8118;
  v16[4] = &v41;
  v16[5] = &v37;
  v16[6] = &v33;
  v16[7] = &v29;
  v16[8] = &v25;
  v16[9] = &v21;
  v16[10] = &v17;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v16];
  v45[0] = @"iPhoneNearby";
  v5 = [NSNumber numberWithUnsignedInt:*(v42 + 6)];
  v46[0] = v5;
  v45[1] = @"iPadNearby";
  v6 = [NSNumber numberWithUnsignedInt:*(v38 + 6)];
  v46[1] = v6;
  v45[2] = @"iPodNearby";
  v7 = [NSNumber numberWithUnsignedInt:*(v34 + 6)];
  v46[2] = v7;
  v45[3] = @"macNearby";
  v8 = [NSNumber numberWithUnsignedInt:*(v30 + 6)];
  v46[3] = v8;
  v45[4] = @"watchNearby";
  v9 = [NSNumber numberWithUnsignedInt:*(v26 + 6)];
  v46[4] = v9;
  v45[5] = @"appleTvNearby";
  v10 = [NSNumber numberWithUnsignedInt:*(v22 + 6)];
  v46[5] = v10;
  v45[6] = @"homePodNearby";
  v11 = [NSNumber numberWithUnsignedInt:*(v18 + 6)];
  v46[6] = v11;
  v45[7] = @"totalNearby";
  v12 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
  v46[7] = v12;
  v45[8] = @"wxPD";
  v13 = [NSNumber numberWithUnsignedInt:metric];
  v46[8] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:9];
  CUMetricsLogEx();

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
}

- (void)submitHijackMetric:(id)metric withV1:(BOOL)v1
{
  if (metric)
  {
    v6 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:?];
    if (v1)
    {
      v7 = @"V1";
    }

    else
    {
      [(SRStats *)self->_stats setHijackContinuousTimeoutCount:0];
      [(SRStats *)self->_stats setHijackRelaySent:0];
      [(SRStats *)self->_stats setHijackRoundTripTime:0];
      v7 = @"V2";
    }

    hijackAnswer = [(SRStats *)self->_stats hijackAnswer];
    v9 = hijackAnswer;
    if (hijackAnswer)
    {
      v10 = hijackAnswer;
    }

    else
    {
      v10 = @"NA";
    }

    v11 = v10;

    v12 = v11;
    v36 = v11;
    if ([(__CFString *)v11 isEqualToString:@"Backoff"])
    {
      v13 = @"All";
    }

    else
    {
      v13 = v7;
    }

    v39[0] = @"askForHijack";
    v38 = [NSNumber numberWithBool:[(SRStats *)self->_stats hijackRelaySent]];
    v40[0] = v38;
    v39[1] = @"audioScore";
    v37 = [NSNumber numberWithInt:[(SRStats *)self->_stats hijackScore]];
    v40[1] = v37;
    v39[2] = @"otherTipiDeviceScore";
    v35 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 otherTipiAudioCategory]);
    v40[2] = v35;
    v39[3] = @"otherTipiDevicePlayingApp";
    otherTipiDevicePlayingApp = [v6 otherTipiDevicePlayingApp];
    v15 = otherTipiDevicePlayingApp;
    if (otherTipiDevicePlayingApp)
    {
      v16 = otherTipiDevicePlayingApp;
    }

    else
    {
      v16 = @"NA";
    }

    v40[3] = v16;
    v40[4] = v12;
    v39[4] = @"hijackAnswer";
    v39[5] = @"hijackVersion";
    v40[5] = v13;
    v39[6] = @"hijackContinousCount";
    v34 = [NSNumber numberWithUnsignedLongLong:[(SRStats *)self->_stats hijackContinuousTimeoutCount]];
    v40[6] = v34;
    v39[7] = @"hijackRoundTripTime";
    v17 = [NSNumber numberWithUnsignedLongLong:[(SRStats *)self->_stats hijackRoundTripTime]];
    v40[7] = v17;
    v39[8] = @"playingApp";
    hijackPlayingApp = [(SRStats *)self->_stats hijackPlayingApp];
    v19 = hijackPlayingApp;
    if (hijackPlayingApp)
    {
      v20 = hijackPlayingApp;
    }

    else
    {
      v20 = &stru_1002C1358;
    }

    v40[8] = v20;
    v39[9] = @"playingCategory";
    hijackPlayingCategory = [(SRStats *)self->_stats hijackPlayingCategory];
    v22 = hijackPlayingCategory;
    if (hijackPlayingCategory)
    {
      v23 = hijackPlayingCategory;
    }

    else
    {
      v23 = &stru_1002C1358;
    }

    v40[9] = v23;
    v39[10] = @"theOtherTipiDevice";
    otherTipiDeviceBTName = [v6 otherTipiDeviceBTName];
    v25 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v26 = otherTipiDeviceBTName;
    }

    else
    {
      v26 = &stru_1002C1358;
    }

    v40[10] = v26;
    v39[11] = @"wxPD";
    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 productID]);
    v40[11] = v27;
    v39[12] = @"wxStreamState";
    wxStreamState = [(SRStats *)self->_stats wxStreamState];
    v32 = v6;
    v29 = wxStreamState;
    if (wxStreamState)
    {
      v30 = wxStreamState;
    }

    else
    {
      v30 = &stru_1002C1358;
    }

    v40[12] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:13, v32];
    CUMetricsLogEx();

    [(SRStats *)self->_stats setHijackRoundTripTime:0];
  }
}

- (void)submitRouteActivityMetric:(id)metric activity:(id)activity
{
  metricCopy = metric;
  activityCopy = activity;
  if (metricCopy)
  {
    v54 = 0;
    v53 = 0;
    v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    if ([activityCopy isEqualToString:@"Manual_Route"])
    {
      manualRouteDestination = [(SRStats *)self->_stats manualRouteDestination];
      v10 = [manualRouteDestination isEqualToString:@"Non-BT"];

      if (v10)
      {
        _findActiveWxDevice = [(BTSmartRoutingDaemon *)self _findActiveWxDevice];

        v12 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:_findActiveWxDevice];

        v8 = v12;
        metricCopy = _findActiveWxDevice;
      }
    }

    v13 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
    v14 = v13;
    v15 = @"Unknown";
    if (v8)
    {
      if (v13)
      {
        v16 = [(BTSmartRoutingDaemon *)self _deviceSupportsHijackV2:v13 withDevice:v8];
        v15 = @"V1";
        if (v16)
        {
          v15 = @"V2";
        }
      }
    }

    v17 = v15;
    v45 = v14;
    v46 = metricCopy;
    if ([activityCopy isEqualToString:@"Hijack_Away"])
    {
      v51 = &stru_1002C1358;
      v52 = &stru_1002C1358;
      v18 = &v52;
      v19 = &v51;
      [(BTSmartRoutingDaemon *)self getHijackedAwayAudioInfo:&v54 appCount:&v54 + 4 playingApp:&v52 route:&v51 remote:&v53];
    }

    else if ([activityCopy hasPrefix:@"Hijack_"])
    {
      v49 = &stru_1002C1358;
      v50 = &stru_1002C1358;
      v18 = &v50;
      v19 = &v49;
      [(BTSmartRoutingDaemon *)self getHijackAudioInfo:&v54 appCount:&v54 + 4 playingApp:&v50 route:&v49 remote:&v53];
    }

    else
    {
      if (([activityCopy isEqualToString:@"Remote_Manual_Route"] & 1) == 0 && (objc_msgSend(activityCopy, "hasPrefix:", @"Manual_Route") & 1) == 0 && !objc_msgSend(activityCopy, "isEqualToString:", @"Reverse"))
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E62B8(activityCopy);
        }

        v38 = &stru_1002C1358;
        v35 = &stru_1002C1358;
        goto LABEL_32;
      }

      v47 = &stru_1002C1358;
      v48 = &stru_1002C1358;
      v18 = &v48;
      v19 = &v47;
      [(BTSmartRoutingDaemon *)self getLocalAudioInfofromSnapshot:&v54 appCount:&v54 + 4 playingApp:&v48 route:&v47 remote:&v53];
    }

    v42 = *v18;
    v39 = *v19;
    v55[0] = @"Activity";
    v55[1] = @"BundleID";
    v56[0] = activityCopy;
    v56[1] = v42;
    v55[2] = @"DestinationRoute";
    manualRouteDestination2 = [(SRStats *)self->_stats manualRouteDestination];
    v21 = manualRouteDestination2;
    if (manualRouteDestination2)
    {
      v22 = manualRouteDestination2;
    }

    else
    {
      v22 = @"NA";
    }

    v56[2] = v22;
    v56[3] = v17;
    v55[3] = @"HijackVersion";
    v55[4] = @"InTipi";
    otherTipiDeviceBTAddress = [v8 otherTipiDeviceBTAddress];
    v23 = @"YES";
    if (!otherTipiDeviceBTAddress)
    {
      v23 = @"NO";
    }

    v56[4] = v23;
    v55[5] = @"LocalScore";
    v44 = activityCopy;
    v40 = [NSNumber numberWithInt:v54];
    v56[5] = v40;
    v55[6] = @"ManualRouteInputOutput";
    manualRouteInputOutput = [(SRStats *)self->_stats manualRouteInputOutput];
    v43 = v17;
    v25 = manualRouteInputOutput;
    if (manualRouteInputOutput)
    {
      v26 = manualRouteInputOutput;
    }

    else
    {
      v26 = @"NA";
    }

    v56[6] = v26;
    v55[7] = @"ManualRouteUISource";
    manualRouteUISource = [(SRStats *)self->_stats manualRouteUISource];
    v28 = manualRouteUISource;
    if (manualRouteUISource)
    {
      v29 = manualRouteUISource;
    }

    else
    {
      v29 = @"NA";
    }

    v56[7] = v29;
    v55[8] = @"NumOfApps";
    v30 = [NSNumber numberWithInt:HIDWORD(v54)];
    v56[8] = v30;
    v55[9] = @"OtherTipiDeviceModel";
    otherTipiDeviceBTName = [v8 otherTipiDeviceBTName];
    v32 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v33 = otherTipiDeviceBTName;
    }

    else
    {
      v33 = @"NA";
    }

    v56[9] = v33;
    v55[10] = @"RemoteScore";
    v34 = [NSNumber numberWithInt:v53];
    v35 = v39;
    v56[10] = v34;
    v56[11] = v39;
    v55[11] = @"Route";
    v55[12] = @"ProductID";
    v36 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 productID]);
    v56[12] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:13];
    CUMetricsLogEx();

    activityCopy = v44;
    v38 = v42;

    v17 = v43;
    v14 = v45;
    metricCopy = v46;
LABEL_32:
  }
}

- (void)_smartRoutingAddRoute:(id)route
{
  routeCopy = route;
  if (![(__CFArray *)self->_mediaRemoteOutputDevices count])
  {
    goto LABEL_12;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->_mediaRemoteOutputDevices, v5);
    if (ValueAtIndex)
    {
      break;
    }

LABEL_6:
    if (++v5 >= [(__CFArray *)self->_mediaRemoteOutputDevices count])
    {
      goto LABEL_12;
    }
  }

  v7 = ValueAtIndex;
  v8 = MRAVOutputDeviceCopyUniqueIdentifier();
  if (![routeCopy containsString:v8])
  {

    goto LABEL_6;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E62F8(v7);
  }

  self->_routeChangeInProgress = 1;
  MRAVOutputContextGetSharedAudioPresentationContext();
  v9 = routeCopy;
  MRAVOutputContextAddOutputDevice();

LABEL_12:
}

- (void)smartRoutingChangeRoute:(id)route
{
  routeCopy = route;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004CD00;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = routeCopy;
  v6 = routeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_smartRoutingChangeRoute:(id)route
{
  routeCopy = route;
  if (![(__CFArray *)self->_mediaRemoteOutputDevices count])
  {
    goto LABEL_12;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->_mediaRemoteOutputDevices, v5);
    if (ValueAtIndex)
    {
      break;
    }

LABEL_6:
    if (++v5 >= [(__CFArray *)self->_mediaRemoteOutputDevices count])
    {
      goto LABEL_12;
    }
  }

  v7 = ValueAtIndex;
  v8 = MRAVOutputDeviceCopyUniqueIdentifier();
  if (![routeCopy containsString:v8])
  {

    goto LABEL_6;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6338(v7);
  }

  self->_routeChangeInProgress = 1;
  MRAVOutputContextGetSharedAudioPresentationContext();
  v9 = routeCopy;
  MRAVOutputContextSetOutputDevice();

LABEL_12:
}

- (void)_smartRoutingRouteCompleted:(__CFError *)completed withUUID:(id)d
{
  dCopy = d;
  if (completed)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6378(completed);
    }
  }

  else
  {
    if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E63B8(dCopy);
    }

    if (self->_proactiveRoutingInProgress)
    {
      self->_proactiveRoutingInProgress = 0;
      self->_routeChangeDueToProactiveRouting = 1;
      if (GestaltGetDeviceClass() == 1)
      {
        [(BTSmartRoutingDaemon *)self _evaluateTemporaryOverride:dCopy];
      }
    }

    else if (self->_prefSmartRoutingEnabledPhase3 && (([dCopy containsString:@"-tacl"] & 1) != 0 || objc_msgSend(dCopy, "containsString:", @"-tsco")))
    {
      smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10004D040;
      v10[3] = &unk_1002B7FA8;
      v11 = dCopy;
      selfCopy = self;
      [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      v8 = self->_smartRoutingWxDeviceMap;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D11C;
      v9[3] = &unk_1002B8168;
      v9[4] = self;
      [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v9];
    }
  }
}

- (void)_smartRoutingLowerRateScan
{
  v3 = dispatch_time(0, 10000000000);
  smartRoutingLowerScanRateTimer = self->_smartRoutingLowerScanRateTimer;
  if (smartRoutingLowerScanRateTimer)
  {

    dispatch_source_set_timer(smartRoutingLowerScanRateTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v6 = self->_smartRoutingLowerScanRateTimer;
    self->_smartRoutingLowerScanRateTimer = v5;

    v7 = self->_smartRoutingLowerScanRateTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004D390;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_source_set_timer(self->_smartRoutingLowerScanRateTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_smartRoutingLowerScanRateTimer);
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)_activityMonitorEnsureStarted
{
  p_activityLevelNotifyToken = &self->_activityLevelNotifyToken;
  if (self->_activityLevelNotifyToken == -1)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E6470(self, a2, v2);
      }
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004D684;
    v7[3] = &unk_1002B6DF0;
    v7[4] = selfCopy;
    notify_register_dispatch("com.apple.sharing.activity-level-changed", p_activityLevelNotifyToken, dispatchQueue, v7);
    activityLevelNotifyToken = selfCopy->_activityLevelNotifyToken;
    state64 = 0;
    notify_get_state(activityLevelNotifyToken, &state64);
    selfCopy->_activityLevel = state64;
    [(BTSmartRoutingDaemon *)selfCopy _nearbyInfoActivityChanged];
    [(BTSmartRoutingDaemon *)selfCopy _nearbyInfoSetAudioRoutingScore];
  }
}

- (void)_callMonitorEnsureStarted
{
  if (!self->_callMonitor)
  {
    v9[10] = v2;
    v9[11] = v3;
    v5 = objc_alloc_init(CUSystemMonitor);
    callMonitor = self->_callMonitor;
    self->_callMonitor = v5;
    v7 = v5;

    [(CUSystemMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004D81C;
    v9[3] = &unk_1002B6D18;
    v9[4] = v7;
    v9[5] = self;
    v8 = objc_retainBlock(v9);
    [(CUSystemMonitor *)v7 setCallChangedHandler:v8];
    [(CUSystemMonitor *)v7 activateWithCompletion:v8];
  }
}

- (void)_connectedDeviceMonitorEnsureStopped
{
  if (self->_connectedDiscovery)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E66F4(self, a2, v2);
      }
    }

    [(CBDiscovery *)selfCopy->_connectedDiscovery invalidate];
    connectedDiscovery = selfCopy->_connectedDiscovery;
    selfCopy->_connectedDiscovery = 0;
  }
}

- (void)_constructAndSendTipiScoreMessageToWx:(id)wx withScore:(int)score
{
  wxCopy = wx;
  smartRoutingController = self->_smartRoutingController;
  if (!smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    smartRoutingController = self->_smartRoutingController;
  }

  v8 = smartRoutingController;
  btAddress = [wxCopy btAddress];
  v10 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:btAddress];
  v11 = v10;
  v12 = &stru_1002C1358;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if ([(BTSmartRoutingDaemon *)self _wxFwSupportsTipiScore:v13])
  {
    v29 = 2;
    aaDevice = [wxCopy aaDevice];
    heartRateMonitorCapability = [aaDevice heartRateMonitorCapability];

    workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
    workoutActive = [workoutObserver workoutActive];
    if (score == 7 || !workoutActive)
    {
    }

    else
    {

      if (heartRateMonitorCapability)
      {
        goto LABEL_18;
      }
    }

    v18 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:btAddress];
    mode = [v18 mode];

    if (mode != 1 || [wxCopy isUSBPlugIn])
    {
      score = 8;
    }

    if (_os_feature_enabled_impl())
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    BYTE2(v29) = v20;
    HIBYTE(v29) = score;
    v21 = [NSData dataWithBytes:&v29 length:4];
    v22 = objc_alloc_init(CBDevice);
    [v22 setIdentifier:btAddress];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10004DFB8;
    v23[3] = &unk_1002B81F0;
    v24 = btAddress;
    scoreCopy = score;
    v28 = mode;
    v25 = wxCopy;
    v26 = v21;
    [(CBController *)v8 sendSmartRoutingInformation:v21 device:v22 completionHandler:v23];
  }

LABEL_18:
}

- (void)_dataRelayClientMonitorEnsureStarted
{
  if (!self->_dataRelayClientMonitorStarted)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E6848(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(DRClientManager);
    dataRelayClientMonitor = selfCopy->_dataRelayClientMonitor;
    selfCopy->_dataRelayClientMonitor = v4;
    v6 = v4;

    selfCopy->_dataRelayClientMonitorStarted = 1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004E19C;
    v10[3] = &unk_1002B8240;
    v10[4] = selfCopy;
    v7 = objc_retainBlock(v10);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004E52C;
    v9[3] = &unk_1002B8240;
    v9[4] = selfCopy;
    v8 = objc_retainBlock(v9);
    [(DRClientManager *)selfCopy->_dataRelayClientMonitor setServerFoundHandler:v7];
    [(DRClientManager *)selfCopy->_dataRelayClientMonitor setServerLostHandler:v8];
  }
}

- (void)_dataRelayAddRequestedDataTypesForServer:(id)server
{
  serverCopy = server;
  if ([(SRWorkoutObserver *)self->_workoutObserver workoutActive])
  {
    v5 = [serverCopy availableDataTypes] & 3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004E888;
    v6[3] = &unk_1002B8288;
    v7 = serverCopy;
    v8 = v5;
    [v7 addRequestedDataTypes:v5 completion:v6];
  }
}

- (void)_dataRelayRemoveRequestedDataTypesForServer:(id)server
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004EA48;
  v4[3] = &unk_1002B8288;
  serverCopy = server;
  v6 = [serverCopy availableDataTypes] & 3;
  v3 = serverCopy;
  [v3 removeRequestedDataTypes:v6 completion:v4];
}

- (void)_mediaRouteDiscoveryStarted
{
  if (!self->_discoverySession)
  {
    block[7] = v3;
    block[8] = v4;
    selfCopy = self;
    if (!self->_discoverySessionInitializing)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001E6AF8(self, a2, v2);
        }
      }

      selfCopy->_discoverySessionInitializing = 1;
      dispatchQueueAVSys = selfCopy->_dispatchQueueAVSys;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004EC40;
      block[3] = &unk_1002B6880;
      block[4] = selfCopy;
      dispatch_async(dispatchQueueAVSys, block);
    }
  }
}

- (void)_mediaRouteDiscoveryStopped
{
  selfCopy = self;
  discoverySessionToken = self->_discoverySessionToken;
  self->_discoverySessionToken = 0;
  discoverySession = self->_discoverySession;
  self->_discoverySession = 0;
  if (discoverySession)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E6B14(self, a2, v2);
      }
    }

    dispatchQueueAVSys = selfCopy->_dispatchQueueAVSys;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004EF14;
    v8[3] = &unk_1002B8340;
    v8[4] = discoverySession;
    v8[5] = discoverySessionToken;
    dispatch_async(dispatchQueueAVSys, v8);
  }

  mediaRemoteOutputDevices = selfCopy->_mediaRemoteOutputDevices;
  if (mediaRemoteOutputDevices)
  {
    CFRelease(mediaRemoteOutputDevices);
  }

  selfCopy->_mediaRemoteOutputDevices = 0;
}

- (void)_mediaRouteMonitorEnsureStarted
{
  if (!self->_mediaRouteMonitorObservingActiveAudioRoute)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E6B30(self, a2, v2);
      }
    }

    if (selfCopy->_prefSmartRoutingEnabledPhase3)
    {
      selfCopy->_mediaRouteMonitorObservingActiveAudioRoute = 1;
      v4 = +[AVSystemController sharedAVSystemController];
      v5 = +[NSNotificationCenter defaultCenter];
      v6 = [NSArray arrayWithObjects:AVSystemController_SomeSessionIsPlayingDidChangeNotification, AVSystemController_NowPlayingAppIsPlayingDidChangeNotification, AVSystemController_CallIsActiveDidChangeNotification, AVSystemController_HighestArbitrationPriorityForTipiDidChangeNotification, 0];
      [v4 setAttribute:v6 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
      [v5 removeObserver:selfCopy name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v4];
      [v5 removeObserver:selfCopy name:AVSystemController_ServerConnectionDiedNotification object:v4];
      [v5 removeObserver:selfCopy name:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:v4];
      [v5 removeObserver:selfCopy name:AVSystemController_CallIsActiveDidChangeNotification object:v4];
      [v5 removeObserver:selfCopy name:AVSystemController_HighestArbitrationPriorityForTipiDidChangeNotification object:v4];
      [v5 removeObserver:selfCopy name:@"CdSignalAudioInterruptedChanged" object:0];
      [v5 addObserver:selfCopy selector:"_mediaRouteMonitorActivityLevelUpdate:" name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v4];
      [v5 addObserver:selfCopy selector:"_handleMediaServerConnectionDied:" name:AVSystemController_ServerConnectionDiedNotification object:v4];
      [v5 addObserver:selfCopy selector:"_handleMediaPlayStateChange:" name:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:v4];
      [v5 addObserver:selfCopy selector:"_handleCallStateChange:" name:AVSystemController_CallIsActiveDidChangeNotification object:v4];
      [v5 addObserver:selfCopy selector:"_handleHighestAudioCategoryChange:" name:AVSystemController_HighestArbitrationPriorityForTipiDidChangeNotification object:v4];
      [v5 addObserver:selfCopy selector:"_handleMediaPauseStateChanged" name:@"CdSignalAudioInterruptedChanged" object:0];
      _queryLocalAudioCategory = [(BTSmartRoutingDaemon *)selfCopy _queryLocalAudioCategory];
      [(BTSmartRoutingDaemon *)selfCopy _updateLocalAudioCategory:_queryLocalAudioCategory];
      dispatchQueueAVSys = selfCopy->_dispatchQueueAVSys;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004F250;
      block[3] = &unk_1002B6880;
      block[4] = selfCopy;
      dispatch_async(dispatchQueueAVSys, block);
    }
  }
}

- (void)_mediaRouteMonitorActiveAudioRouteChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F394;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_mediaRouteMonitorSpeakRoute
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E6ED0(self, a2, v2);
    }
  }

  v4 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.BTUserNotifications.bundle"];
  if (!v4)
  {
    v6 = GestaltCopyAnswer();
    goto LABEL_8;
  }

  v5 = CULocalizedStringEx();
  v6 = GestaltCopyAnswer();
  if (!v5)
  {
LABEL_8:
    v7 = @"?";
    goto LABEL_9;
  }

  v7 = [NSString stringWithFormat:v5, v6];

LABEL_9:
  v8 = objc_alloc_init(CUVoiceSession);
  [v8 setDispatchQueue:selfCopy->_dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100050408;
  v9[3] = &unk_1002B6A38;
  v9[4] = v8;
  [v8 speakText:v7 flags:0 completion:v9];
}

- (void)_mediaRouteMonitorActivityLevelUpdate:(id)update
{
  dispatchQueueAVSys = self->_dispatchQueueAVSys;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050500;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueueAVSys, block);
}

- (void)_mediaRouteHijackResponseHandlerFor:(id)for allowedToHijack:(BOOL)hijack withReason:(id)reason
{
  hijackCopy = hijack;
  forCopy = for;
  reasonCopy = reason;
  v9 = objc_alloc_init(BTAudioRoutingResponse);
  v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:forCopy];
  v13 = v10;
  if (hijackCopy)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_1001E6FA0(v10, v11, v12);
      }
    }

    v14 = 1;
    [v9 setAction:1];
    [v9 setDeviceAddress:forCopy];
    [v9 setReason:@"Tipi device hijack was successful"];
    self->_autoRoutingResponseTicks = mach_absolute_time();
  }

  else
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_1001E6F84(v10, v11, v12);
      }
    }

    v15 = 3;
    [v9 setAction:3];
    [v9 setDeviceAddress:0];
    [v9 setReason:reasonCopy];
    reason = [v9 reason];
    v17 = [reason isEqualToString:@"Backoff"];

    if (v17)
    {
      v15 = 4;
      [v9 setAction:4];
    }

    reason2 = [v9 reason];
    v19 = [reason2 isEqualToString:@"Ambiguity"];

    if (v19)
    {
      v14 = 2;
    }

    else
    {
      v14 = v15;
    }
  }

  [v9 setClientID:{objc_msgSend(v13, "audioRoutingClientID")}];
  audioRoutingResponse = [v13 audioRoutingResponse];

  if (audioRoutingResponse)
  {
    audioRoutingResponse2 = [v13 audioRoutingResponse];
    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v9 withResponseHandler:audioRoutingResponse2 wxAddress:forCopy];
  }

  if (hijackCopy)
  {
    otherTipiDeviceBTAddress = [v13 otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      v23 = objc_alloc_init(NSMutableDictionary);
      [v23 setObject:&__kCFBooleanTrue forKey:@"audioRoutingSetOwnershipToFalse"];
      [v23 setObject:@"Hijackv2" forKey:@"reason"];
      v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 otherTipiAudioCategory]);
      [v23 setObject:v24 forKey:@"localscore"];

      v25 = [NSNumber numberWithInt:[(SRStats *)self->_stats hijackScore]];
      [v23 setObject:v25 forKey:@"audioRoutingScore"];

      v26 = [NSNumber numberWithInt:[(SRStats *)self->_stats hijackScore]];
      [v23 setObject:v26 forKey:@"remotescore"];

      if ([v13 otherTipiAudioCategory] >= 0xC9)
      {
        [v23 setObject:&__kCFBooleanTrue forKey:@"SmartRoutingKeyShowNearbyUI"];
      }

      otherTipiDeviceBTAddress2 = [v13 otherTipiDeviceBTAddress];
      [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v23 andWxAddress:forCopy andOtherAddress:otherTipiDeviceBTAddress2];
    }

    mach_absolute_time();
    v28 = UpTicksToSeconds();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6FBC(v13, v28);
    }

    if (([v13 routed] & 1) != 0 || self->_showBannerConnectedLastTicks && self->_secondsBetweenConnectBanner > v28)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E7020(v13, v28);
      }
    }

    else
    {
      deviceName = [v13 deviceName];
      deviceAddress = [v13 deviceAddress];
      v31 = deviceAddress;
      if (deviceAddress)
      {
        v32 = deviceAddress;
      }

      else
      {
        v32 = @"?";
      }

      -[BTSmartRoutingDaemon _smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:](self, "_smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:", 1, deviceName, v32, [v13 productID], @"Connected", 0, 4.0);
    }
  }

  [(BTSmartRoutingDaemon *)self _startHijackMetricSubmission:v14 wxAddress:forCopy version:@"V2"];
}

- (void)_mediaRouteHijackResponse:(int)response wxAddress:(id)address andAudioResponseID:(id)d andAllowedToHijack:(BOOL)hijack withReason:(id)reason
{
  hijackCopy = hijack;
  v10 = *&response;
  addressCopy = address;
  dCopy = d;
  reasonCopy = reason;
  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:dCopy forKey:@"audioRoutingRequestID"];
  [v14 setObject:self->_localDeviceAudioCategory forKey:@"remotescore"];
  if (hijackCopy)
  {
    if (self->_audioScoreOtherTipiDevice != v10)
    {
      self->_audioScoreOtherTipiDevice = v10;
    }

    if (dword_1002F6778 <= 30)
    {
      audioScoreOtherTipiDevice = v10;
      if (dword_1002F6778 != -1)
      {
LABEL_6:
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackResponse:wxAddress:andAudioResponseID:andAllowedToHijack:withReason:]", 30, "Allowed hijacking for address %@, now set ownership to false with score %u", addressCopy, audioScoreOtherTipiDevice);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
        goto LABEL_6;
      }
    }

LABEL_11:
    self->_autoRoutingTicks = mach_absolute_time();
    v16 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
    deviceVersion = [v16 deviceVersion];

    v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
    otherTipiDeviceVersion = [v18 otherTipiDeviceVersion];
    [otherTipiDeviceVersion doubleValue];
    v47 = deviceVersion;
    v21 = v20 < 1.2 || [@"3E725" compare:deviceVersion options:64] == 1;
    p_smartRoutingWxDeviceMap = &self->_smartRoutingWxDeviceMap;

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7098(v21, &self->_smartRoutingWxDeviceMap, addressCopy, v47);
      if (!v21)
      {
LABEL_19:
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E713C(addressCopy);
        }

        v23 = [NSNumber numberWithInt:1];
        [v14 setObject:v23 forKey:@"audioRoutingHijackAnswer"];

        if (self->_score > 3 || [(CUSystemMonitor *)self->_callMonitor activeCallCount]>= 1)
        {
          v24 = [(NSMutableDictionary *)*p_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
          routed = [v24 routed];

          if (routed)
          {
            v26 = [(NSMutableDictionary *)*p_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
            otherTipiDeviceIsWatch = [v26 otherTipiDeviceIsWatch];

            if ((otherTipiDeviceIsWatch & 1) == 0)
            {
              trailingAccessoryText = [(BTBannerUISession *)self->_uiSmartRoutingBanner trailingAccessoryText];
              v29 = [trailingAccessoryText containsString:@"Reverse"];

              if ((v29 & 1) == 0)
              {
                v46 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
                deviceName = [v46 deviceName];
                v45 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
                deviceAddress = [v45 deviceAddress];
                v44 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
                productID = [v44 productID];
                v30 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
                otherTipiDeviceBTName = [v30 otherTipiDeviceBTName];
                v32 = [NSString stringWithFormat:@"%@", otherTipiDeviceBTName];
                [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:5 withDevice:deviceName andDeviceAddress:deviceAddress andProductID:productID andCentralContentItemTxt:v32 andTimeout:0 andDeviceType:20.0];
              }
            }
          }
        }

        [(BTSmartRoutingDaemon *)self _setManualRouteFlag:addressCopy withManualRoute:0];
        v33 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
        routed2 = [v33 routed];

        if (routed2)
        {
          [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v14 andWxAddress:addressCopy andOtherAddress:0];
          [(SRStats *)self->_stats setHijackAwayRemoteScore:v10];
          [(SRStats *)self->_stats setHijackAwayLocalScore:[(NSNumber *)self->_localDeviceAudioCategory intValue]];
          falseRouteCheckReason = [(SRStats *)self->_stats falseRouteCheckReason];

          if (!falseRouteCheckReason)
          {
            [(SRStats *)self->_stats setFalseRouteCheckReason:@"Hijacked_Away"];
          }

          [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:@"Hijack_Away"];
          [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:8];
          v36 = v47;
        }

        else
        {
          v37 = [(NSMutableDictionary *)*p_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
          routed3 = [v37 routed];

          v36 = v47;
          if ((routed3 & 1) == 0)
          {
            [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v14 andWxAddress:addressCopy andOtherAddress:0];
          }
        }

        goto LABEL_40;
      }
    }

    else if (!v21)
    {
      goto LABEL_19;
    }

    [(BTSmartRoutingDaemon *)self _setOwnership:addressCopy withHijackRequest:dCopy withOwnership:0];
    goto LABEL_19;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackResponse:wxAddress:andAudioResponseID:andAllowedToHijack:withReason:]", 30, "Hijacking is not allowed with address %@ with reason %@", addressCopy, reasonCopy);
  }

  if ([reasonCopy isEqual:@"LowerPriority"])
  {
    v39 = [NSNumber numberWithInt:3];
    [v14 setObject:v39 forKey:@"audioRoutingHijackAnswer"];

    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v14 andWxAddress:addressCopy andOtherAddress:0];
  }

  if ([reasonCopy isEqual:@"AmbiguousPriority"])
  {
    v40 = [NSNumber numberWithInt:2];
    [v14 setObject:v40 forKey:@"audioRoutingHijackAnswer"];

    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v14 andWxAddress:addressCopy andOtherAddress:0];
  }

LABEL_40:
}

- (void)_mediaRouteHijackWithAudioScore:(int)score wxAddress:(id)address andAudioResponseID:(id)d
{
  v6 = *&score;
  addressCopy = address;
  dCopy = d;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100003918;
  v35[4] = sub_100003838;
  v36 = 0;
  if (!dCopy)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 90, "No valid audioResponseID found");
    }

    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setObject:0 forKey:@"audioRoutingRequestID"];
    v13 = [NSNumber numberWithInt:3];
    [v12 setObject:v13 forKey:@"audioRoutingHijackAnswer"];

    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v12 andWxAddress:addressCopy andOtherAddress:0];
    goto LABEL_28;
  }

  if (!addressCopy)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 90, "No valid Wx address passed for hijacking request");
    }

    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setObject:dCopy forKey:@"audioRoutingRequestID"];
    v19 = [NSNumber numberWithInt:3];
    [v12 setObject:v19 forKey:@"audioRoutingHijackAnswer"];

    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v12 andWxAddress:0 andOtherAddress:0];
LABEL_28:

    goto LABEL_47;
  }

  v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
  otherTipiDeviceBTAddress = [v10 otherTipiDeviceBTAddress];

  if (otherTipiDeviceBTAddress)
  {
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 50, "Received request to hijack audio for Wx %@ audioID %@ and audioScore %u", addressCopy, dCopy, v6);
    }

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    if (!self->_prefSmartRoutingBlockHijackWindowinSeconds)
    {
      goto LABEL_45;
    }

    v14 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
    if ([v14 hijackBackoffTicks])
    {
      hijackBackOffInitiator = self->_hijackBackOffInitiator;

      if (!hijackBackOffInitiator)
      {
LABEL_45:
        dispatchQueueAVSys = self->_dispatchQueueAVSys;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100051828;
        block[3] = &unk_1002B8400;
        v30 = v33;
        v32 = v6;
        v31 = v35;
        v27 = addressCopy;
        selfCopy = self;
        v29 = dCopy;
        dispatch_async(dispatchQueueAVSys, block);

        v14 = v27;
LABEL_46:

        _Block_object_dispose(v33, 8);
        goto LABEL_47;
      }

      v16 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
      v17 = -[BTSmartRoutingDaemon _checkTickswithinWindow:withWindow:](self, "_checkTickswithinWindow:withWindow:", [v16 hijackBackoffTicks], self->_prefSmartRoutingBlockHijackWindowinSeconds);

      v14 = objc_alloc_init(NSMutableDictionary);
      if (v17 >= 1)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v18 = UpTicksToSeconds();
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 30, "###Hijackblocking: Hijack request from remote, device %@ hijack block with %ll{dur} remaining with ticks %lld", addressCopy, v18, v17);
        }

        v22 = [NSNumber numberWithUnsignedLongLong:v17];
        [v14 setObject:v22 forKey:@"hijackBackoffTicks"];
        [v14 setObject:dCopy forKey:@"audioRoutingRequestID"];
        v23 = [NSNumber numberWithInt:4];
        [v14 setObject:v23 forKey:@"audioRoutingHijackAnswer"];

        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v14 andWxAddress:addressCopy andOtherAddress:0];
        goto LABEL_46;
      }

      if (v17 + SecondsToUpTicks())
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          SecondsToUpTicks();
          v20 = UpTicksToSeconds();
          v21 = SecondsToUpTicks();
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 30, "###Hijackblocking: Tick has exhausted but timer has not fired yet. Tick expires less than 1s, remaining %ll{dur}, ticks %lld", v20, v21 + v17);
        }

        [v14 setObject:dCopy forKey:@"audioRoutingRequestID"];
        v24 = [NSNumber numberWithInt:4];
        [v14 setObject:v24 forKey:@"audioRoutingHijackAnswer"];

        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v14 andWxAddress:addressCopy andOtherAddress:0];
        goto LABEL_46;
      }

      [(BTSmartRoutingDaemon *)self _hijackBackoffReset:addressCopy withReason:@"tickerExhausted"];
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 90, "###Hijackblocking: Tick has exhausted but timer has not fired yet. Tick expires more than 1s. Cancel hijackblocking");
      }
    }

    goto LABEL_45;
  }

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:]", 90, "Wrong state please file radar under 'Smart Routing|All'. We are not in Tipi with Wx address %@", addressCopy);
  }

  if (!self->_tipiElectionInProgress)
  {
    [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
  }

LABEL_47:
  _Block_object_dispose(v35, 8);
}

- (void)_updateRoutingActionForManuallyRoute
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000519DC;
  v3[3] = &unk_1002B8168;
  v3[4] = self;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_nearbyInfoDiscoveryEnsureStarted
{
  if (!self->_nearbyInfoDiscovery)
  {
    v17[6] = v6;
    v17[7] = v5;
    v17[14] = v3;
    v17[15] = v4;
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E71FC(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(SFDeviceDiscovery);
    nearbyInfoDiscovery = selfCopy->_nearbyInfoDiscovery;
    selfCopy->_nearbyInfoDiscovery = v8;

    [(SFDeviceDiscovery *)v8 setChangeFlags:9];
    [(SFDeviceDiscovery *)v8 setDiscoveryFlags:33];
    [(SFDeviceDiscovery *)v8 setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFDeviceDiscovery *)v8 setPurpose:@"SmartRouting"];
    [(SFDeviceDiscovery *)v8 setScanRate:20];
    [(SFDeviceDiscovery *)v8 setRssiThreshold:-75];
    if (selfCopy->_prefSmartRoutingEnabledPhase3 && GestaltGetDeviceClass() != 6)
    {
      [(SFDeviceDiscovery *)v8 setOverrideScreenOff:1];
    }

    [(BTSmartRoutingDaemon *)selfCopy _powerLogSmartRoutingScanStarted:16];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100051E98;
    v17[3] = &unk_1002B8428;
    v17[4] = selfCopy;
    v17[5] = v8;
    [(SFDeviceDiscovery *)v8 setDeviceFoundHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100051EBC;
    v16[3] = &unk_1002B8428;
    v16[4] = selfCopy;
    v16[5] = v8;
    [(SFDeviceDiscovery *)v8 setDeviceLostHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100051EE0;
    v15[3] = &unk_1002B8450;
    v15[4] = selfCopy;
    v15[5] = v8;
    [(SFDeviceDiscovery *)v8 setDeviceChangedHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100051F04;
    v14[3] = &unk_1002B68A8;
    v14[4] = selfCopy;
    v14[5] = v8;
    [(SFDeviceDiscovery *)v8 activateWithCompletion:v14];
    selfCopy->_prefSmartRoutingForcedDisconnectionTicks = mach_absolute_time();
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
    prefSmartRoutingForcedDisconnectionStartTimer = selfCopy->_prefSmartRoutingForcedDisconnectionStartTimer;
    selfCopy->_prefSmartRoutingForcedDisconnectionStartTimer = v10;
    v12 = v10;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100051FAC;
    v13[3] = &unk_1002B6D18;
    v13[4] = v12;
    v13[5] = selfCopy;
    dispatch_source_set_event_handler(v12, v13);
    CUDispatchTimerSet();
    dispatch_activate(v12);
    [(BTSmartRoutingDaemon *)selfCopy _nearbyInfoSetAudioRoutingScore];
  }
}

- (BOOL)_checkValidBatteryValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy batteryType] == 2 || objc_msgSend(valueCopy, "batteryType") == 3 || objc_msgSend(valueCopy, "batteryType") == 4;

  return v4;
}

- (BOOL)_isSmartRoutingCapableDevice:(id)device
{
  model = [device model];
  if ([model containsString:@"Mac"] & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"iPhone") & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"Watch") & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"iPod"))
  {
    v4 = 1;
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7290(model);
    }

    v4 = 0;
  }

  return v4;
}

- (void)_cancelStemClickTransaction
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E72D0(self, a2, v2);
    }
  }

  stemClickTransactionTimer = selfCopy->_stemClickTransactionTimer;
  if (stemClickTransactionTimer)
  {
    v5 = stemClickTransactionTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_stemClickTransactionTimer;
    selfCopy->_stemClickTransactionTimer = 0;
  }

  _getCurrentRoute = [(BTSmartRoutingDaemon *)selfCopy _getCurrentRoute];
  if ([_getCurrentRoute isEqualToString:@"Bluetooth"])
  {
    _getCurrentBTRouteAddress = [(BTSmartRoutingDaemon *)selfCopy _getCurrentBTRouteAddress];
  }

  else
  {
    _getCurrentBTRouteAddress = 0;
  }

  [(BTSmartRoutingDaemon *)selfCopy _submitStemGestureMetric:_getCurrentBTRouteAddress];
}

- (void)_cancelStemClickResumeTimer
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E72EC(self, a2, v2);
    }
  }

  stemClickResumeTimer = selfCopy->_stemClickResumeTimer;
  if (stemClickResumeTimer)
  {
    v6 = stemClickResumeTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_stemClickResumeTimer;
    selfCopy->_stemClickResumeTimer = 0;
  }
}

- (void)_checkStemClickResponse
{
  v3 = [(NSNumber *)self->_localDeviceAudioCategory intValue]> 100;
  stats = self->_stats;

  [(SRStats *)stats setStemClickResumeResultedInPlayback:v3];
}

- (void)_startStemClickResumeTimer
{
  stemClickResumeTimer = self->_stemClickResumeTimer;
  if (stemClickResumeTimer)
  {
    v4 = stemClickResumeTimer;
    dispatch_source_cancel(v4);
    v5 = self->_stemClickResumeTimer;
    self->_stemClickResumeTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_stemClickResumeTimer;
  self->_stemClickResumeTimer = v6;

  [(SRStats *)self->_stats setLastStemClickResumeTick:mach_absolute_time()];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100052484;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7308();
  }

  CUDispatchTimerSet();
  dispatch_activate(v6);
}

- (void)_resetStemClickTransaction
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E7368(self, a2, v2);
    }
  }

  [(BTSmartRoutingDaemon *)selfCopy _cancelStemClickTransaction];

  [(BTSmartRoutingDaemon *)selfCopy _startStemClickTransaction];
}

- (void)_startStemClickTransaction
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E7384(self, a2, v2);
    }
  }

  [(BTSmartRoutingDaemon *)selfCopy _startStemClickTransactionTimer];
}

- (void)_startStemClickTransactionTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_stemClickTransactionTimer, v3);
  [(SRStats *)self->_stats setStemClicksInTransaction:([(SRStats *)self->_stats stemClicksInTransaction]+ 1)];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000526E8;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E73A0();
  }

  CUDispatchTimerSet();
  dispatch_activate(v3);
}

- (void)_recordStemClickToResponseDelay
{
  mach_absolute_time();
  [(SRStats *)self->_stats lastStemClickResumeTick];
  v3 = UpTicksToMilliseconds();
  stats = self->_stats;

  [(SRStats *)stats setStemClickToResponseDelay:v3];
}

- (void)_checkTriangleRecovery
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  nearbyInfoDevices = self->_nearbyInfoDevices;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052964;
  v12[3] = &unk_1002B7DC8;
  v12[4] = &v13;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v12];
  isInAnyTipi = [(BTSmartRoutingDaemon *)self isInAnyTipi];
  _isAnyUSBAudioDevicePluggedIn = [(BTSmartRoutingDaemon *)self _isAnyUSBAudioDevicePluggedIn];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v6 = *(v14 + 24);
    magnetConnected = [(SRSourceDevice *)self->_sourceDevice magnetConnected];
    v8 = "no";
    if (v6)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    if (magnetConnected)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    if (isInAnyTipi)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (_isAnyUSBAudioDevicePluggedIn)
    {
      v8 = "yes";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _checkTriangleRecovery]", 30, "TriangleRecovery: SrDeviceNearby %s magnet %s inAnyTipi %s timeout %d isAnyUSBPluggedIn %s", v9, v10, v11, self->_prefSmartRoutingWatchTriangleMagnet, v8);
  }

  if (((*(v14 + 24) | isInAnyTipi) & 1) != 0 || _isAnyUSBAudioDevicePluggedIn & 1 | ![(SRSourceDevice *)self->_sourceDevice magnetConnected])
  {
    [(BTSmartRoutingDaemon *)self _cancelTriangleRecoveryTimer];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _nearbyDeviceInfoTriangleRecoveryTimer];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)_cancelTriangleRecoveryTimer
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E7400(self, a2, v2);
    }
  }

  nearbyInfoDevicesTriangleRecoveryTimer = selfCopy->_nearbyInfoDevicesTriangleRecoveryTimer;
  if (nearbyInfoDevicesTriangleRecoveryTimer)
  {
    v6 = nearbyInfoDevicesTriangleRecoveryTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_nearbyInfoDevicesTriangleRecoveryTimer;
    selfCopy->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
  }
}

- (void)_connectToHeadphoneWithAddress:(id)address
{
  addressCopy = address;
  v7 = addressCopy;
  if (addressCopy)
  {
    v8 = objc_alloc_init(CBDevice);
    [v8 setIdentifier:v7];
    v9 = objc_alloc_init(CBConnection);
    [v9 setPeerDevice:v8];
    [v9 setDispatchQueue:self->_dispatchQueue];
    [v9 setConnectionFlags:2];
    [v9 setServiceFlags:0xFFFFFFFFLL];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E741C(v7);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100052C84;
    v10[3] = &unk_1002B68A8;
    v11 = v7;
    v12 = v9;
    [v9 activateWithCompletion:v10];
  }

  else if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (addressCopy = _LogCategory_Initialize(), addressCopy))
    {
      sub_1001E745C(addressCopy, v5, v6);
    }
  }
}

- (void)_nearbyInfoSetAudioRoutingScore
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7478(self);
  }

  v3 = objc_alloc_init(SFClient);
  if ([(CBDiscovery *)self->_connectedDiscovery bluetoothState]== 5)
  {
    score = self->_score;
  }

  else
  {
    score = 0;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100052E18;
  v5[3] = &unk_1002B68A8;
  v5[4] = v3;
  v5[5] = self;
  [v3 setAudioRoutingScore:score completion:v5];
  [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
}

- (void)_nearbyInfoActivityChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    score = self->_score;
    if (score > 0xF)
    {
      v4 = "?";
    }

    else
    {
      v4 = off_1002B8F50[score];
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoActivityChanged]", 30, "NearbyInfoActivityChanged: AL %d, current score is %d (%s)", self->_activityLevel, self->_score, v4);
  }

  if (self->_activityLevelTicks)
  {
    mach_absolute_time();
    activityLevelDeltaInSeconds = self->_activityLevelDeltaInSeconds + UpTicksToSeconds();
    self->_activityLevelDeltaInSeconds = activityLevelDeltaInSeconds;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
LABEL_12:
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoActivityChanged]", 30, "NearbyInfoActivityChanged: activity evaluation ALDS %ll{dur}, AL %d", activityLevelDeltaInSeconds, self->_activityLevel);
        goto LABEL_14;
      }

      if (_LogCategory_Initialize())
      {
        activityLevelDeltaInSeconds = self->_activityLevelDeltaInSeconds;
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  activityLevel = self->_activityLevel;
  if (activityLevel <= 9)
  {
    if (activityLevel == 3)
    {
      if (self->_activityLevelMediaPlaying)
      {
        v13 = 4;
LABEL_43:
        *(v33 + 6) = v13;
        goto LABEL_44;
      }

      v14 = self->_activityLevelDeltaInSeconds;
      if (v14 <= 0x19)
      {
        if (v14 != 25)
        {
          goto LABEL_44;
        }

        *(v33 + 6) = 2;
        if (!self->_activityLevelTicks)
        {
          self->_activityLevelTicks = mach_absolute_time();
        }

        activityLevelDelayTimer = self->_activityLevelDelayTimer;
        if (activityLevelDelayTimer)
        {
          v25 = activityLevelDelayTimer;
          dispatch_source_cancel(v25);
          v26 = self->_activityLevelDelayTimer;
          self->_activityLevelDelayTimer = 0;
        }

        v12 = 25;
        goto LABEL_71;
      }

LABEL_42:
      v13 = 1;
      goto LABEL_43;
    }

    if (activityLevel != 7)
    {
      goto LABEL_44;
    }

LABEL_28:
    v8 = self->_activityLevelDeltaInSeconds;
    if (v8 <= 0x1DF && self->_screenActive)
    {
      if (v8 != 25 && v8)
      {
        goto LABEL_44;
      }

      if (!self->_activityLevelTicks)
      {
        self->_activityLevelTicks = mach_absolute_time();
      }

      *(v33 + 6) = 2;
      v9 = self->_activityLevelDelayTimer;
      if (v9)
      {
        v10 = v9;
        dispatch_source_cancel(v10);
        v11 = self->_activityLevelDelayTimer;
        self->_activityLevelDelayTimer = 0;
      }

      if (self->_screenActive)
      {
        v12 = 480;
      }

      else
      {
        v12 = 25;
      }

LABEL_71:
      [(BTSmartRoutingDaemon *)self _nearbyInfoActivityDelayCheck:v12];
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (activityLevel == 10)
  {
    goto LABEL_28;
  }

  if (activityLevel == 11 || activityLevel == 14)
  {
    self->_activityLevelDeltaInSeconds = 25;
    self->_activityLevelTicks = 0;
    if (self->_activityCriticalTimer)
    {
      v7 = 7;
    }

    else
    {
      v7 = 6;
    }

    *(v33 + 6) = v7;
    if ([(SFDeviceDiscovery *)self->_nearbyInfoDiscovery scanRate]!= 40)
    {
      [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery setScanRate:40];
    }

    if ([(SFDeviceDiscovery *)self->_wxDiscovery scanRate]!= 40)
    {
      [(SFDeviceDiscovery *)self->_wxDiscovery setScanRate:40];
    }

    [(BTSmartRoutingDaemon *)self _smartRoutingLowerRateScan];
  }

LABEL_44:
  v15 = self->_activityLevelMediaPlaying || [(CUSystemMonitor *)self->_callMonitor activeCallCount]> 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100053400;
  v30[3] = &unk_1002B8478;
  v31 = v15;
  v30[4] = self;
  v30[5] = &v32;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v30];
  v17 = *(v33 + 6);
  if (v17)
  {
    v18 = self->_score;
    if (v17 != v18)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v20 = _LogCategory_Initialize(), v18 = self->_score, v20))
        {
          if (v18 > 0xF)
          {
            v19 = "?";
          }

          else
          {
            v19 = off_1002B8F50[v18];
          }

          v21 = *(v33 + 6);
          if (v21 > 0xF)
          {
            v22 = "?";
          }

          else
          {
            v22 = off_1002B8F50[v21];
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoActivityChanged]", 30, "NearbyInfoActivityChanged: audio routing score has changed %d (%s) -> %d (%s)\n", v18, v19, *(v33 + 6), v22);
          v18 = self->_score;
        }
      }

      self->_score = *(v33 + 6);
      [(BTSmartRoutingDaemon *)self _nearbyInfoSetAudioRoutingScore];
      v23 = +[SRConnectionManager sharedSRConnectionManager];
      [v23 tipiScoreChanged:*(v33 + 6)];

      [(CUCoalescer *)self->_evaluatorCoalescer trigger];
      if (self->_prefProactiveOwnershipArbitration)
      {
        [(BTSmartRoutingDaemon *)self _notifyOtherTipiDeviceTipiScoreChanged:v18 andNewScore:self->_score];
        if (*(v33 + 6) == 1 && !self->_cdDeviceIdentifier)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoActivityChanged]", 30, "ProactiveRouting: Start idle tick");
          }

          if (self->_overrideMessageSent)
          {
            [(BTSmartRoutingDaemon *)self _sendNowPlayingTemporaryOverrideIfNeeded:0];
          }

          self->_startIdleTicks = mach_absolute_time();
          highActivityLevelTimer = self->_highActivityLevelTimer;
          if (highActivityLevelTimer)
          {
            v28 = highActivityLevelTimer;
            dispatch_source_cancel(v28);
            v29 = self->_highActivityLevelTimer;
            self->_highActivityLevelTimer = 0;
          }
        }

        else
        {
          self->_startIdleTicks = 0;
        }
      }
    }
  }

  _Block_object_dispose(&v32, 8);
}

- (void)_nearbyInfoActivityCriticalStart
{
  v3 = self->_activityCriticalTimer;
  if (v3)
  {
    v4 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7584();
    }

    CUDispatchTimerSet();
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E75C8();
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    activityCriticalTimer = self->_activityCriticalTimer;
    self->_activityCriticalTimer = v5;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000535E0;
    v7[3] = &unk_1002B6D18;
    v4 = v5;
    v8 = v4;
    selfCopy = self;
    dispatch_source_set_event_handler(v4, v7);
    CUDispatchTimerSet();
    dispatch_activate(v4);
  }
}

- (void)_pairedDeviceMonitorEnsureStopped
{
  if (self->_pairedDiscovery)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E76E8(self, a2, v2);
      }
    }

    [(CBDiscovery *)selfCopy->_pairedDiscovery invalidate];
    pairedDiscovery = selfCopy->_pairedDiscovery;
    selfCopy->_pairedDiscovery = 0;
  }
}

- (void)_nearbyInfoActivityDelayCheck:(unint64_t)check
{
  v5 = dispatch_time(0, 1000000000 * check);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7704(check);
  }

  activityLevelDelayTimer = self->_activityLevelDelayTimer;
  if (activityLevelDelayTimer)
  {

    dispatch_source_set_timer(activityLevelDelayTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v8 = self->_activityLevelDelayTimer;
    self->_activityLevelDelayTimer = v7;

    v9 = self->_activityLevelDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100053AD4;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(self->_activityLevelDelayTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_activityLevelDelayTimer);
  }
}

- (void)_pipeEnsureStarted
{
  if (!self->_smartRoutingPipe)
  {
    v4 = objc_alloc_init(SRLEPipe);
    smartRoutingPipe = self->_smartRoutingPipe;
    self->_smartRoutingPipe = v4;

    v6 = self->_smartRoutingPipe;
    dispatchQueue = self->_dispatchQueue;

    [(SRLEPipe *)v6 activateWithDispatch:dispatchQueue];
  }
}

- (void)_powerMonitorEnsureStopped
{
  selfCopy = self;
  if (self->_powerMonitor)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E78C8(self, a2, v2);
      }
    }

    [(CUSystemMonitor *)selfCopy->_powerMonitor invalidate];
    powerMonitor = selfCopy->_powerMonitor;
    selfCopy->_powerMonitor = 0;
  }

  screenLockedLingerTimer = selfCopy->_screenLockedLingerTimer;
  if (screenLockedLingerTimer)
  {
    v6 = screenLockedLingerTimer;
    dispatch_source_cancel(v6);
    v7 = selfCopy->_screenLockedLingerTimer;
    selfCopy->_screenLockedLingerTimer = 0;
  }

  sleepWakeMonitor = selfCopy->_sleepWakeMonitor;
  if (sleepWakeMonitor)
  {
    [(CUSleepWakeMonitor *)sleepWakeMonitor invalidate];
    v9 = selfCopy->_sleepWakeMonitor;
    selfCopy->_sleepWakeMonitor = 0;

    selfCopy->_sleeping = 0;
    selfCopy->_sleepWakeState = 0;
  }
}

- (void)_powerMonitorScreenLockChanged
{
  if (self->_powerMonitor)
  {
    selfCopy = self;
    screenLockedLingerTimer = self->_screenLockedLingerTimer;
    if (self->_effectiveScreenLocked)
    {
      if (!screenLockedLingerTimer)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7900();
        }

        v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
        v6 = selfCopy->_screenLockedLingerTimer;
        selfCopy->_screenLockedLingerTimer = v5;
        v7 = v5;

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100054044;
        handler[3] = &unk_1002B6880;
        handler[4] = selfCopy;
        dispatch_source_set_event_handler(v7, handler);
        CUDispatchTimerSet();
        dispatch_activate(v7);
LABEL_16:
      }
    }

    else if (screenLockedLingerTimer)
    {
      if (dword_1002F6778 >= 31)
      {
        v7 = screenLockedLingerTimer;
      }

      else
      {
        if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001E78E4(self, a2, v2);
        }

        v7 = selfCopy->_screenLockedLingerTimer;
        if (!v7)
        {
          goto LABEL_17;
        }
      }

      dispatch_source_cancel(v7);
      v8 = selfCopy->_screenLockedLingerTimer;
      selfCopy->_screenLockedLingerTimer = 0;

      goto LABEL_16;
    }

LABEL_17:
    [(BTSmartRoutingDaemon *)selfCopy _update];
  }
}

- (void)_relayConduitMessageEnsureStarted
{
  smartRoutingController = self->_smartRoutingController;
  if (!smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    smartRoutingController = self->_smartRoutingController;
  }

  v4 = smartRoutingController;
  v5 = v4;
  if (!self->_relayConduitMessageEnsureStarted)
  {
    self->_relayConduitMessageEnsureStarted = 1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000542C4;
    v11[3] = &unk_1002B84C8;
    v11[4] = self;
    [(CBController *)v4 setRelayMessageHandler:v11];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7960();
    }

    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000543D0;
    v10[3] = &unk_1002B8168;
    v10[4] = self;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000543DC;
    v9[3] = &unk_1002B6858;
    v9[4] = self;
    [(CBController *)v5 setTipiChangedHandler:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100054B60;
    v7[3] = &unk_1002B6A38;
    v8 = v5;
    [(CBController *)v8 activateWithCompletion:v7];
  }
}

- (void)_relayConduitMessageSend:(unsigned __int8)send withOptions:(id)options andWxAddress:(id)address andOtherAddress:(id)otherAddress
{
  sendCopy = send;
  optionsCopy = options;
  addressCopy = address;
  otherAddressCopy = otherAddress;
  v15 = otherAddressCopy;
  if (self->_smartRoutingController)
  {
    v36 = 0;
    Data = OPACKEncoderCreateData();
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100003918;
    v34 = sub_100003838;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100003918;
    v28 = sub_100003838;
    v29 = 0;
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100054F60;
    v18[3] = &unk_1002B84F0;
    v19 = addressCopy;
    v22 = &v24;
    v23 = &v30;
    v20 = v15;
    v21 = optionsCopy;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v18];
    if (v25[5])
    {
      if (v31[5])
      {
        [CBController sendRelayMessageType:"sendRelayMessageType:messageData:conduitDevice:destinationDevice:completionHandler:" messageData:sendCopy conduitDevice:Data destinationDevice:? completionHandler:?];
      }

      else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageSend:withOptions:andWxAddress:andOtherAddress:]", 90, "Other tipi device address not found");
      }
    }

    else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageSend:withOptions:andWxAddress:andOtherAddress:]", 90, "Wx headset not found not able to relay the message");
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (otherAddressCopy = _LogCategory_Initialize(), otherAddressCopy))
    {
      sub_1001E7C38(otherAddressCopy, v13, v14);
    }
  }
}

- (void)_relayConduitMessageReceived:(id)received andSourceDevice:(id)device messageType:(unsigned __int8)type messageData:(id)data
{
  typeCopy = type;
  receivedCopy = received;
  deviceCopy = device;
  dataCopy = data;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7D38(dataCopy);
  }

  btAddressData = [receivedCopy btAddressData];
  v13 = CUPrintNSDataAddress();

  v105 = 0;
  if (v13)
  {
    if (typeCopy)
    {
      if (typeCopy == 1)
      {
        v17 = OPACKDecodeData();
        if (!v17)
        {
LABEL_54:

          goto LABEL_55;
        }

        if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7D94(v17);
        }

        v18 = [v17 objectForKey:@"audioRoutingHijackRequest"];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = [v17 objectForKey:@"audioRoutingScore"];
          v21 = [v17 objectForKey:@"audioRoutingRequestID"];
          if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E7DD4(self, v13, v20);
          }

          -[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:](self, "_mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:", [v20 intValue], v13, v21);

          goto LABEL_47;
        }

        v22 = [v17 objectForKey:@"audioRoutingHijackAnswer"];
        v23 = v22 == 0;

        if (!v23)
        {
          if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E7E58();
          }

          v82 = [v17 objectForKeyedSubscript:@"remotescore"];
          [(SRStats *)self->_stats setHijackActiveRemoteScore:0xFFFFFFFFLL];
          if (v82)
          {
            -[SRStats setHijackActiveRemoteScore:](self->_stats, "setHijackActiveRemoteScore:", [v82 intValue]);
          }

          [(BTSmartRoutingDaemon *)self _setHighPriorityTag:v13 withHighPriority:0];
          v28 = [v17 objectForKey:@"audioRoutingRequestID"];
          smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = sub_100056090;
          v100[3] = &unk_1002B8538;
          v101 = v13;
          v102 = v28;
          v103 = v17;
          selfCopy = self;
          [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v100];

          goto LABEL_47;
        }

        v24 = [v17 objectForKey:@"callState"];
        v25 = v24 == 0;

        if (!v25)
        {
LABEL_47:
          v30 = [v17 objectForKey:@"hijackBackoffTicks"];
          v31 = v30 == 0;

          if (!v31)
          {
            v32 = [v17 objectForKey:@"hijackBackoffTicks"];
            v33 = v32;
            if (self->_prefSmartRoutingBlockHijackWindowinSeconds && v32)
            {
              if ([v32 unsignedLongLongValue])
              {
                unsignedLongLongValue = [v33 unsignedLongLongValue];
                v34 = mach_absolute_time();
                v35 = SecondsToUpTicks();
                v36 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
                [v36 setHijackBackoffTicks:&unsignedLongLongValue[v34 - v35]];

                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E7F00();
                }
              }

              else
              {
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E7F7C();
                }

                v37 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
                hijackBackoffTicks = [v37 hijackBackoffTicks];

                if (hijackBackoffTicks)
                {
                  [(BTSmartRoutingDaemon *)self _hijackBackoffReset:v13 withReason:@"relayTimerZero"];
                }
              }
            }
          }

          goto LABEL_54;
        }

        v26 = [v17 objectForKey:@"audioRoutingSetOwnershipToFalse"];
        v27 = v26 == 0;

        if (!v27)
        {
          [(BTSmartRoutingDaemon *)self _receivedRelinquishOwnership:v17 wxAddress:v13];
          goto LABEL_47;
        }

        v39 = [v17 objectForKey:@"tipiHealingAttempt"];
        v40 = v39 == 0;

        if (!v40)
        {
          CFStringGetTypeID();
          v75 = CFDictionaryGetTypedValue();
          CFStringGetTypeID();
          v74 = CFDictionaryGetTypedValue();
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]", 30, "Tipi healing attempt from remote side, send an ACK. otherSideHasRoute %@ allowPreferOnMac %@", v75, v74);
          }

          CFStringGetTypeID();
          v84 = CFDictionaryGetTypedValue();
          CFStringGetTypeID();
          v78 = CFDictionaryGetTypedValue();
          v80 = NSDictionaryGetNSNumber();
          v46 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
          [v46 setOtherTipiDeviceInfo:v84 andName:v78 andVersion:v80];

          v47 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
          [v47 setIsRoutingActionInitialized:1];

          if (self->_activityLevelMediaPlaying || [(CUSystemMonitor *)self->_callMonitor activeCallCount]> 0)
          {
            v48 = 1;
          }

          else
          {
            v48 = [(NSString *)self->_cdDeviceIdentifier isEqualToString:v13];
          }

          v106[0] = @"tipiHealingAck";
          _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
          v50 = _myBluetoothAddressString;
          v51 = &stru_1002C1358;
          if (_myBluetoothAddressString)
          {
            v51 = _myBluetoothAddressString;
          }

          myModel = self->_myModel;
          v107[0] = v51;
          v107[1] = myModel;
          v106[1] = @"tipiHealingName";
          v106[2] = @"version";
          v106[3] = @"tipiHealingStreaming";
          v53 = @"NO";
          if (v48)
          {
            v53 = @"YES";
          }

          v107[2] = &off_1002CB618;
          v107[3] = v53;
          v77 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:4];

          [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v77 andWxAddress:v13 andOtherAddress:0];
          self->_tipiElectionInProgress = 0;
          v54 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
          otherTipiDeviceBTAddress = [v54 otherTipiDeviceBTAddress];

          [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:v13 withAddress:otherTipiDeviceBTAddress withEasyPairing:0 withState:1];
          v96 = 0;
          v97 = &v96;
          v98 = 0x2020000000;
          v99 = 0;
          v55 = self->_smartRoutingWxDeviceMap;
          v91[0] = _NSConcreteStackBlock;
          v91[1] = 3221225472;
          v91[2] = sub_100056520;
          v91[3] = &unk_1002B8560;
          v92 = v13;
          selfCopy2 = self;
          v94 = &v96;
          v95 = v48 & 1;
          [(NSMutableDictionary *)v55 enumerateKeysAndObjectsUsingBlock:v91];
          if (*(v97 + 24) == 1)
          {
            [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
          }

          _Block_object_dispose(&v96, 8);
          goto LABEL_47;
        }

        v41 = [v17 objectForKey:@"tipiHealingAck"];
        if (!v41 || (-[NSMutableDictionary objectForKeyedSubscript:](self->_smartRoutingWxDeviceMap, "objectForKeyedSubscript:", v13), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 isTipiHealingV2Eligible], v42, v41, (v43 & 1) != 0))
        {
          v44 = [v17 objectForKey:@"nearbyAudioScore"];
          v45 = v44 == 0;

          if (v45)
          {
            v58 = [v17 objectForKey:@"otherDeviceAudioCategory"];
            v59 = v58 == 0;

            if (v59)
            {
              v60 = [v17 objectForKey:@"disableSmartRouting"];
              v61 = v60 == 0;

              if (!v61)
              {
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E7ECC();
                }

                [(BTSmartRoutingDaemon *)self _disconnectOtherTipiDevice:v13];
              }
            }

            else
            {
              [(BTSmartRoutingDaemon *)self _receivedAudioCategory:v13 withOptions:v17];
            }
          }

          else
          {
            [(BTSmartRoutingDaemon *)self _otherTipiDeviceTipiScoreChanged:v13 withOptions:v17];
          }

          goto LABEL_47;
        }

        v56 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
        CFStringGetTypeID();
        v57 = CFDictionaryGetTypedValue();
        CFStringGetTypeID();
        v81 = CFDictionaryGetTypedValue();
        v85 = NSDictionaryGetNSNumber();
        [v56 setOtherTipiDeviceInfo:v57 andName:v81 andVersion:v85];
        CFStringGetTypeID();
        v79 = CFDictionaryGetTypedValue();
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7E8C(v79);
        }

        [v56 setIsRoutingActionInitialized:1];
        v62 = [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:v13];

        if (v62)
        {
          mach_absolute_time();
          v63 = [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:v13];
          [v63 thV2Ticks];
          UpTicksToSecondsF();
          v65 = v64;

          [(BTSmartRoutingDaemon *)self _submitMetricTipiHealingforDevice:v56 withDuration:1 andLegacy:v65];
        }

        self->_tipiElectionInProgress = 0;
        [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:v13 withAddress:v57 withEasyPairing:0 withState:1];
        tipiHealingTimer = self->_tipiHealingTimer;
        if (tipiHealingTimer)
        {
          v67 = tipiHealingTimer;
          dispatch_source_cancel(v67);
          v68 = self->_tipiHealingTimer;
          self->_tipiHealingTimer = 0;
        }

        v96 = 0;
        v97 = &v96;
        v98 = 0x2020000000;
        v99 = 0;
        otherTipiDeviceVersion = [v56 otherTipiDeviceVersion];
        [otherTipiDeviceVersion doubleValue];
        if (v70 < 1.2)
        {
        }

        else
        {
          otherTipiDeviceVersion2 = [v56 otherTipiDeviceVersion];
          v72 = otherTipiDeviceVersion2 == 0;

          if (!v72)
          {
            if (-[BTSmartRoutingDaemon _isManualConnection:](self, "_isManualConnection:", v13) && ([v56 ignoreManualConnect] & 1) == 0)
            {
              if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]", 40, "Manually connected, route to iOS!");
              }

              [v56 setRoutingAction:1];
              [(BTSmartRoutingDaemon *)self _setOwnership:v13 withHijackRequest:0 withOwnership:1];
              [(BTSmartRoutingDaemon *)self _sendIntendedRouteInfoUpdateToWx:receivedCopy withIntendedRoutingStatus:1];
            }

            else
            {
              if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]", 40, "Tipi 1.2 new healing behavior... iOS we shouldn't route, set ownership to false");
              }

              [v56 setRoutingAction:3];
              [(BTSmartRoutingDaemon *)self _setOwnership:v13 withHijackRequest:0 withOwnership:0];
            }

            *(v97 + 24) = 1;
LABEL_122:
            [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
LABEL_123:
            _Block_object_dispose(&v96, 8);

            goto LABEL_47;
          }
        }

        if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]", 40, "Tipi healing legacy behavior");
        }

        v73 = self->_smartRoutingWxDeviceMap;
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10005679C;
        v87[3] = &unk_1002B8588;
        v88 = v13;
        selfCopy3 = self;
        v90 = &v96;
        [(NSMutableDictionary *)v73 enumerateKeysAndObjectsUsingBlock:v87];

        if ((v97[3] & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }

      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (v14 = _LogCategory_Initialize(), v14))
        {
          sub_1001E7FB0(v14, v15, v16);
        }
      }
    }

    else if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v14 = _LogCategory_Initialize(), v14))
      {
        sub_1001E7D78(v14, v15, v16);
      }
    }
  }

  else if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (v14 = _LogCategory_Initialize(), v14))
    {
      sub_1001E7FCC(v14, v15, v16);
    }
  }

LABEL_55:
}

- (BOOL)_shouldDelayRouteToSpeaker:(id)speaker
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  speakerCopy = speaker;
  v6 = [(NSMutableDictionary *)smartRoutingWxDeviceMap objectForKeyedSubscript:speakerCopy];
  v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:speakerCopy];

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8250(v6, v7);
  }

  v8 = [v6 audioRoutingScore] == 201 && objc_msgSend(v6, "otherTipiAudioCategory") != 501 && (objc_msgSend(v6, "otherTipiAudioCategory") || objc_msgSend(v7, "audioStreamState") != 3);

  return v8;
}

- (void)_smartRoutingControllerEnsureStarted
{
  v3 = self->_smartRoutingController;
  if (!v3)
  {
    obj = objc_alloc_init(CBController);
    [obj setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_smartRoutingController, obj);
    v3 = obj;
  }
}

- (void)_updateAccessoryID:(id)d connectionDeviceAddresses:(id)addresses completion:(id)completion
{
  dCopy = d;
  addressesCopy = addresses;
  smartRoutingController = self->_smartRoutingController;
  if (!smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    smartRoutingController = self->_smartRoutingController;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056B98;
  v11[3] = &unk_1002B6A38;
  v11[4] = self;
  v10 = smartRoutingController;
  [(CBController *)v10 modifyDevice:dCopy connectionPriorityDevices:addressesCopy timeoutSeconds:v11 completionHandler:4.0];
}

- (void)_updateNearbyDeviceState:(id)state withAddress:(id)address withEasyPairing:(BOOL)pairing withState:(int)withState
{
  pairingCopy = pairing;
  stateCopy = state;
  addressCopy = address;
  v11 = addressCopy;
  if (withState == 3)
  {

    v11 = @"FF:FF:FF:FF:FF:FF";
  }

  if (stateCopy && v11)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      if (withState > 3)
      {
        v12 = "?";
      }

      else
      {
        v12 = off_1002B8BB0[withState];
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateNearbyDeviceState:withAddress:withEasyPairing:withState:]", 30, "NearbyDevice State updated to %s with Wx address %@ and nearbyAddress %@", v12, stateCopy, v11);
    }

    v15 = objc_alloc_init(CBDevice);
    [v15 setIdentifier:stateCopy];
    v16 = objc_alloc_init(CBDevice);
    [v16 setIdentifier:v11];
    if (pairingCopy)
    {
      v17 = 0;
    }

    else
    {
      v17 = 16;
    }

    [(CBController *)self->_smartRoutingController modifyDevice:v15 peerSourceDevice:v16 peerSourceState:withState requestFlags:v17 completionHandler:&stru_1002B85A8];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v13 = &stru_1002C1358;
    if (stateCopy)
    {
      v14 = stateCopy;
    }

    else
    {
      v14 = &stru_1002C1358;
    }

    if (v11)
    {
      v13 = v11;
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateNearbyDeviceState:withAddress:withEasyPairing:withState:]", 90, "NearbyDevice State update failed wxAddress %@ nearbyAddress %@", v14, v13);
  }
}

- (void)_systemUIMonitorEnsureStarted
{
  if (!self->_systemUIMonitor)
  {
    v9[7] = v3;
    v9[8] = v4;
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E83A0(self, a2, v2);
      }
    }

    v6 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100002EF0;
    v9[3] = &unk_1002B7B90;
    v9[4] = selfCopy;
    [v6 setTransitionHandler:v9];
    v7 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v6];
    systemUIMonitor = selfCopy->_systemUIMonitor;
    selfCopy->_systemUIMonitor = v7;
  }
}

- (void)_systemUIMonitorEnsureStopped
{
  if (self->_systemUIMonitor)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E8414(self, a2, v2);
      }
    }

    [(FBSDisplayLayoutMonitor *)selfCopy->_systemUIMonitor invalidate];
    systemUIMonitor = selfCopy->_systemUIMonitor;
    selfCopy->_systemUIMonitor = 0;
  }
}

- (void)_workoutObserverEnsureStarted
{
  workoutObserver = self->_workoutObserver;
  if (!workoutObserver)
  {
    v4 = objc_alloc_init(SRWorkoutObserver);
    v5 = self->_workoutObserver;
    self->_workoutObserver = v4;

    workoutObserver = self->_workoutObserver;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005723C;
  v6[3] = &unk_1002B6880;
  v6[4] = self;
  [(SRWorkoutObserver *)workoutObserver setWorkoutStateChangedHandler:v6];
}

- (void)_workoutObserverEnsureStopped
{
  workoutObserver = self->_workoutObserver;
  self->_workoutObserver = 0;
  _objc_release_x1(self, workoutObserver);
}

- (void)_wxDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wxDiscovery = self->_wxDiscovery;
  if (wxDiscovery)
  {
    if (self->_prefSmartRoutingEnabledPhase3)
    {
      v6 = GestaltGetDeviceClass() != 6;
      if (v6 == [(SFDeviceDiscovery *)self->_wxDiscovery overrideScreenOff])
      {
        return;
      }
    }

    else
    {
      if (([wxDiscovery overrideScreenOff] & 1) == 0)
      {
        return;
      }

      v6 = 0;
    }

    v10 = self->_wxDiscovery;

    [(SFDeviceDiscovery *)v10 setOverrideScreenOff:v6];
  }

  else
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (wxDiscovery = _LogCategory_Initialize(), wxDiscovery))
      {
        sub_1001E8544(wxDiscovery, v3, v4);
      }
    }

    v7 = objc_alloc_init(SFDeviceDiscovery);
    [v7 setChangeFlags:9];
    [v7 setDiscoveryFlags:2];
    [v7 setDispatchQueue:self->_dispatchQueue];
    [v7 setPurpose:@"SmartRouting"];
    [v7 setScanRate:20];
    if (self->_prefSmartRoutingEnabledPhase3)
    {
      [v7 setOverrideScreenOff:1];
    }

    v8 = self->_wxDiscovery;
    self->_wxDiscovery = v7;
    v9 = v7;

    [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStarted:7];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000577A4;
    v15[3] = &unk_1002B8428;
    v15[4] = self;
    v15[5] = v9;
    [v9 setDeviceFoundHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000577C8;
    v14[3] = &unk_1002B8428;
    v14[4] = self;
    v14[5] = v9;
    [v9 setDeviceLostHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000577EC;
    v13[3] = &unk_1002B8450;
    v13[4] = self;
    v13[5] = v9;
    [v9 setDeviceChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100057810;
    v12[3] = &unk_1002B6D18;
    v12[4] = self;
    v12[5] = v9;
    [v9 setInvalidationHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005782C;
    v11[3] = &unk_1002B68A8;
    v11[4] = self;
    v11[5] = v9;
    [v9 activateWithCompletion:v11];
  }
}

- (void)_wxDiscoveryWatchRecoveryEnsureStarted
{
  if (!self->_wxDiscoveryWatchRecovery)
  {
    v13[5] = v6;
    v13[6] = v5;
    v13[11] = v3;
    v13[12] = v4;
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E8614(self, a2, v2);
      }
    }

    [(BTSmartRoutingDaemon *)selfCopy _powerLogSmartRoutingScanStarted:7];
    v8 = objc_alloc_init(CUBLEScanner);
    wxDiscoveryWatchRecovery = selfCopy->_wxDiscoveryWatchRecovery;
    selfCopy->_wxDiscoveryWatchRecovery = v8;
    v10 = v8;

    [(CUBLEScanner *)v10 setChangeFlags:16];
    [(CUBLEScanner *)v10 setScanFlags:16];
    [(CUBLEScanner *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUBLEScanner *)v10 setLabel:@"SmartRouting"];
    [(CUBLEScanner *)v10 setScanRate:50];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100057AAC;
    v13[3] = &unk_1002B85F8;
    v13[4] = selfCopy;
    [(CUBLEScanner *)v10 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100057AB8;
    v12[3] = &unk_1002B85F8;
    v12[4] = selfCopy;
    [(CUBLEScanner *)v10 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100057AC4;
    v11[3] = &unk_1002B6D18;
    v11[4] = v10;
    v11[5] = selfCopy;
    [(CUBLEScanner *)v10 setInvalidationHandler:v11];
    [(CUBLEScanner *)v10 activate];
  }
}

- (void)_setConnectedBannerTick:(unint64_t)tick
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E864C(tick);
  }

  self->_showBannerConnectedLastTicks = tick;
}

- (id)_getAllUSBAudioDeviceBtAddresses
{
  v3 = objc_alloc_init(NSMutableArray);
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057C8C;
  v7[3] = &unk_1002B8368;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)_runUSBAudioRoutingPolicy:(id)policy
{
  policyCopy = policy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003918;
  v18 = sub_100003838;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100057F70;
  v13[3] = &unk_1002B6C00;
  v13[4] = &v14;
  v5 = objc_retainBlock(v13);
  if (!policyCopy)
  {
    v7 = v15[5];
    v15[5] = @"missing wx address";
    goto LABEL_11;
  }

  v6 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:policyCopy];
  v7 = v6;
  if (v6)
  {
    if ([v6 isUSBPlugIn])
    {
      if ([v7 connectionState] != 2)
      {
        v8 = [(BTSmartRoutingDaemon *)self _isWxPaired:policyCopy];
        if ([(SRSourceDevice *)self->_sourceDevice bluetoothState]== 4)
        {
          v9 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v9 usbDeviceEnableAirPlaneMode:policyCopy];

          v10 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v10 usbDeviceUnHideDevice:policyCopy];
        }

        else
        {
          v11 = +[AudioDeviceManager sharedAudioDeviceManager];
          if (v8)
          {
            [v11 usbDeviceDisableAirPlaneMode:policyCopy];

            v10 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v10 usbDeviceHideDevice:policyCopy];
          }

          else
          {
            [v11 usbDeviceEnableAirPlaneMode:policyCopy];

            v10 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v10 usbDeviceUnHideDevice:policyCopy];
          }
        }

        goto LABEL_10;
      }

      v12 = @"already BT connected";
    }

    else
    {
      v12 = @"not USB plug-in";
    }
  }

  else
  {
    v12 = @"missing srDisDevice";
  }

  v10 = v15[5];
  v15[5] = v12;
LABEL_10:

LABEL_11:
  (v5[2])(v5);

  _Block_object_dispose(&v14, 8);
}

- (void)_updateUSBDeviceForPairStateChange:(id)change paired:(BOOL)paired
{
  pairedCopy = paired;
  changeCopy = change;
  if (self->_prefSmartRoutingUSBAudioDevice)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100003918;
    v25 = sub_100003838;
    v26 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000582E4;
    v20[3] = &unk_1002B6C00;
    v20[4] = &v21;
    v7 = objc_retainBlock(v20);
    btAddressData = [changeCopy btAddressData];
    v9 = CUPrintNSDataAddress();

    if (v9)
    {
      v10 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v9];
      if ([v10 isUSBPlugIn])
      {
        v11 = pairedCopy & ~[v10 isPaired];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          isUSBPlugIn = [v10 isUSBPlugIn];
          v13 = "no";
          if (pairedCopy)
          {
            v14 = "yes";
          }

          else
          {
            v14 = "no";
          }

          if (isUSBPlugIn)
          {
            v15 = "yes";
          }

          else
          {
            v15 = "no";
          }

          if (v11)
          {
            v13 = "yes";
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateUSBDeviceForPairStateChange:paired:]", 30, "USBDevice: Pair state change %@ paired %s usbPlugin %s newPair %s", v9, v14, v15, v13);
        }

        if (pairedCopy)
        {
          if (v11)
          {
            v16 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v16 usbDeviceDisableAirPlaneMode:v9];

            v17 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v17 usbDeviceHideDevice:v9];

            [(BTSmartRoutingDaemon *)self _evaluatorRunForUSBDevice:v9 trigger:4];
          }
        }

        else
        {
          v18 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v18 usbDeviceEnableAirPlaneMode:v9];

          v19 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v19 usbDeviceUnHideDevice:v9];
        }
      }
    }

    else
    {
      v10 = v22[5];
      v22[5] = @"btAddress is null";
    }

    (v7[2])(v7);
    _Block_object_dispose(&v21, 8);
  }
}

- (void)_updateUSBDeviceForBluetoothStateChange:(int64_t)change
{
  if (self->_prefSmartRoutingUSBAudioDevice && [(SRSourceDevice *)self->_sourceDevice bluetoothStatePrev]!= change)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _getAllUSBAudioDeviceBtAddresses = [(BTSmartRoutingDaemon *)self _getAllUSBAudioDeviceBtAddresses];
    v6 = [_getAllUSBAudioDeviceBtAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = v6;
    v8 = *v15;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_getAllUSBAudioDeviceBtAddresses);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v11 = "?";
          if (change <= 0xA)
          {
            v11 = off_1002B8BF8[change];
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateUSBDeviceForBluetoothStateChange:]", 30, "USBDevice: Bluetooth state change %s usbDevice %@", v11, v10);
        }

        switch(change)
        {
          case 4:
            goto LABEL_19;
          case 10:
            if ([(SRSourceDevice *)self->_sourceDevice bluetoothStatePrev]!= 5)
            {
              continue;
            }

LABEL_19:
            v12 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v12 usbDeviceEnableAirPlaneMode:v10];

            v13 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v13 usbDeviceUnHideDevice:v10];

            continue;
          case 5:
            [(BTSmartRoutingDaemon *)self _evaluatorRunForUSBDevice:v10 trigger:1];
            break;
        }
      }

      v7 = [_getAllUSBAudioDeviceBtAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
LABEL_22:

        return;
      }
    }
  }
}

- (void)usbDeviceFound:(id)found
{
  foundCopy = found;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058620;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = foundCopy;
  v6 = foundCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)usbDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058A5C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_evaluatorRunForUSBDevice:(id)device trigger:(int)trigger
{
  deviceCopy = device;
  if (self->_prefSmartRoutingUSBAudioDevice)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8714(trigger, deviceCopy);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100003918;
    v28 = sub_100003838;
    v29 = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000590B4;
    v23[3] = &unk_1002B6C00;
    v23[4] = &v24;
    v7 = objc_retainBlock(v23);
    if (deviceCopy)
    {
      if ([(SRSourceDevice *)self->_sourceDevice bluetoothState]!= 4)
      {
        v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceCopy];
        if ([v8 connectionState] == 2)
        {
          v17 = v25;
          v18 = v25[5];
          v19 = @"Wx is BT connected already";
        }

        else
        {
          if ([v8 isUSBPlugIn])
          {
            v9 = [(BTSmartRoutingDaemon *)self _isWxPaired:deviceCopy];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100059150;
            v21[3] = &unk_1002B8620;
            v22 = v9;
            v21[4] = self;
            v10 = objc_retainBlock(v21);
            v11 = v10;
            if (trigger == 1 || trigger == 4)
            {
              bluetoothState = [(SRSourceDevice *)self->_sourceDevice bluetoothState];
              v13 = @"BT is off";
              if (bluetoothState == 5)
              {
                v13 = @"Wx not paired";
              }

              if (((bluetoothState == 5) & v9) != 0)
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (trigger == 2)
              {
                (v10[2])(v10, deviceCopy);
LABEL_23:

LABEL_24:
                (v7[2])(v7);

                _Block_object_dispose(&v24, 8);
                goto LABEL_25;
              }

              if ([v8 nearbyIsMeLastRoute])
              {
                if (([(NSMutableArray *)self->_smartRoutingManualDisconnectionList containsObject:deviceCopy]& 1) != 0)
                {
                  v13 = @"Manually disconnect previously";
                }

                else
                {
                  bluetoothState2 = [(SRSourceDevice *)self->_sourceDevice bluetoothState];
                  v13 = @"BT is off";
                  if (bluetoothState2 == 5)
                  {
                    v13 = @"Wx not paired";
                  }

                  if (((bluetoothState2 == 5) & v9) == 1)
                  {
LABEL_22:
                    [(BTSmartRoutingDaemon *)self _connectToUSBDevice:deviceCopy isUserInitiate:0];
                    goto LABEL_23;
                  }
                }
              }

              else
              {
                v13 = @"Not last routed device";
              }
            }

            v20 = v25[5];
            v25[5] = v13;

            goto LABEL_23;
          }

          v17 = v25;
          v18 = v25[5];
          v19 = @"Wx not USB plug in";
        }

        v17[5] = v19;

        goto LABEL_24;
      }

      v15 = v25;
      v8 = v25[5];
      v16 = @"BT off";
    }

    else
    {
      v15 = v25;
      v8 = v25[5];
      v16 = @"Missing wx address";
    }

    v15[5] = v16;
    goto LABEL_24;
  }

LABEL_25:
}

- (void)_dismissAnyPairingBanner
{
  v3 = [NSString stringWithUTF8String:"Pairing"];
  uiNoteSessionSmartRouting = self->_uiNoteSessionSmartRouting;
  if (uiNoteSessionSmartRouting)
  {
    v8 = v3;
    identifier = [(CUUserNotificationSession *)uiNoteSessionSmartRouting identifier];
    v6 = [identifier isEqualToString:v8];

    v3 = v8;
    if (v6)
    {
      [(CUUserNotificationSession *)self->_uiNoteSessionSmartRouting invalidate];
      v7 = self->_uiNoteSessionSmartRouting;
      self->_uiNoteSessionSmartRouting = 0;

      v3 = v8;
    }
  }

  _objc_release_x1(uiNoteSessionSmartRouting, v3);
}

- (void)_cancelPairingTimer
{
  pairingTimer = self->_pairingTimer;
  if (!pairingTimer)
  {
    return;
  }

  selfCopy = self;
  if (dword_1002F6778 >= 31)
  {
    v5 = pairingTimer;
LABEL_8:
    v7 = v5;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_pairingTimer;
    selfCopy->_pairingTimer = 0;

    return;
  }

  if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
  {
    sub_1001E8774(self, a2, v2);
  }

  v5 = selfCopy->_pairingTimer;
  if (v5)
  {
    goto LABEL_8;
  }
}

- (void)_connectToUSBDevice:(id)device isUserInitiate:(BOOL)initiate
{
  initiateCopy = initiate;
  deviceCopy = device;
  v9 = deviceCopy;
  if (self->_prefSmartRoutingUSBAudioDevice)
  {
    if (deviceCopy)
    {
      v10 = +[AudioDeviceManager sharedAudioDeviceManager];
      [v10 usbDeviceDisableAirPlaneMode:v9];

      v11 = +[AudioDeviceManager sharedAudioDeviceManager];
      [v11 usbDeviceHideDevice:v9];

      v12 = objc_alloc_init(CBDevice);
      [v12 setIdentifier:v9];
      v13 = objc_alloc_init(CBConnection);
      [v13 setPeerDevice:v12];
      [v13 setDispatchQueue:self->_dispatchQueue];
      [v13 setConnectionFlags:2];
      if (initiateCopy)
      {
        [v13 setConnectionFlags:{objc_msgSend(v13, "connectionFlags") | 0x30}];
      }

      [v13 setServiceFlags:0xFFFFFFFFLL];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v14 = "no";
        if (initiateCopy)
        {
          v14 = "yes";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectToUSBDevice:isUserInitiate:]", 30, "Evaluator: connect start USBDevice %@ isPairing %s", v9, v14);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000594D0;
      v15[3] = &unk_1002B8648;
      v16 = v9;
      v17 = v13;
      selfCopy = self;
      v19 = initiateCopy;
      [v13 activateWithCompletion:v15];
    }

    else if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), deviceCopy))
      {
        sub_1001E8790(deviceCopy, v7, v8);
      }
    }
  }
}

- (BOOL)_isInHijackBlockingMode
{
  if (self->_splitterStateOn || self->_hijackBackOffInitiator)
  {
    return 1;
  }

  hijackBlockingClientSet = [(SRSourceDevice *)self->_sourceDevice hijackBlockingClientSet];
  v2 = [hijackBlockingClientSet count] != 0;

  return v2;
}

- (void)getLocalAudioInfofromSnapshot:(int *)snapshot appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote
{
  snapshotLocalDeviceAudioScore = [(SRStats *)self->_stats snapshotLocalDeviceAudioScore];
  if (snapshotLocalDeviceAudioScore)
  {
    snapshotLocalDeviceAudioScore2 = [(SRStats *)self->_stats snapshotLocalDeviceAudioScore];
    *snapshot = [snapshotLocalDeviceAudioScore2 intValue];
  }

  else
  {
    *snapshot = -1;
  }

  snapshotLocalNumOfApps = [(SRStats *)self->_stats snapshotLocalNumOfApps];
  if (snapshotLocalNumOfApps)
  {
    snapshotLocalNumOfApps2 = [(SRStats *)self->_stats snapshotLocalNumOfApps];
    *count = [snapshotLocalNumOfApps2 intValue];
  }

  else
  {
    *count = 0;
  }

  snapshotLocalPlayingApp = [(SRStats *)self->_stats snapshotLocalPlayingApp];
  if (snapshotLocalPlayingApp)
  {
    snapshotLocalPlayingApp2 = [(SRStats *)self->_stats snapshotLocalPlayingApp];
    *app = snapshotLocalPlayingApp2;
  }

  else
  {
    *app = @"NA";
  }

  snapshotLocalRoute = [(SRStats *)self->_stats snapshotLocalRoute];
  if (snapshotLocalRoute)
  {
    snapshotLocalRoute2 = [(SRStats *)self->_stats snapshotLocalRoute];
    *route = snapshotLocalRoute2;
  }

  else
  {
    *route = @"NA";
  }

  snapshotRemoteDeviceAudioScore = [(SRStats *)self->_stats snapshotRemoteDeviceAudioScore];
  if (snapshotRemoteDeviceAudioScore)
  {
    v23 = snapshotRemoteDeviceAudioScore;
    snapshotRemoteDeviceAudioScore2 = [(SRStats *)self->_stats snapshotRemoteDeviceAudioScore];
    *remote = [snapshotRemoteDeviceAudioScore2 intValue];

    snapshotRemoteDeviceAudioScore = v23;
  }

  else
  {
    *remote = -1;
  }
}

- (void)getHijackAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote
{
  snapshotLocalNumOfApps = [(SRStats *)self->_stats snapshotLocalNumOfApps];
  if (snapshotLocalNumOfApps)
  {
    snapshotLocalNumOfApps2 = [(SRStats *)self->_stats snapshotLocalNumOfApps];
    *count = [snapshotLocalNumOfApps2 intValue];
  }

  else
  {
    *count = 0;
  }

  *info = [(SRStats *)self->_stats hijackScore];
  audioRoute = [(SRSourceDevice *)self->_sourceDevice audioRoute];
  if (audioRoute > 4)
  {
    v16 = "?";
  }

  else
  {
    v16 = off_1002B9148[audioRoute];
  }

  v17 = [NSString stringWithUTF8String:v16];
  *route = [NSString stringWithFormat:@"%@", v17];

  hijackPlayingApp = [(SRStats *)self->_stats hijackPlayingApp];
  if (hijackPlayingApp)
  {
    hijackPlayingApp2 = [(SRStats *)self->_stats hijackPlayingApp];
    *app = hijackPlayingApp2;
  }

  else
  {
    *app = @"NA";
  }

  *remote = [(SRStats *)self->_stats hijackActiveRemoteScore];
  [(SRStats *)self->_stats setManualRouteDestination:@"NA"];
  [(SRStats *)self->_stats setManualRouteInputOutput:@"NA"];
  stats = self->_stats;

  [(SRStats *)stats setManualRouteUISource:@"NA"];
}

- (void)getHijackedAwayAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote
{
  snapshotLocalNumOfApps = [(SRStats *)self->_stats snapshotLocalNumOfApps];
  if (snapshotLocalNumOfApps)
  {
    snapshotLocalNumOfApps2 = [(SRStats *)self->_stats snapshotLocalNumOfApps];
    *count = [snapshotLocalNumOfApps2 intValue];
  }

  else
  {
    *count = 0;
  }

  *info = [(SRStats *)self->_stats hijackAwayLocalScore];
  audioRoute = [(SRSourceDevice *)self->_sourceDevice audioRoute];
  if (audioRoute > 4)
  {
    v16 = "?";
  }

  else
  {
    v16 = off_1002B9148[audioRoute];
  }

  v17 = [NSString stringWithUTF8String:v16];
  *route = [NSString stringWithFormat:@"%@", v17];

  snapshotLocalPlayingApp = [(SRStats *)self->_stats snapshotLocalPlayingApp];
  if (snapshotLocalPlayingApp)
  {
    snapshotLocalPlayingApp2 = [(SRStats *)self->_stats snapshotLocalPlayingApp];
    *app = snapshotLocalPlayingApp2;
  }

  else
  {
    *app = @"NA";
  }

  *remote = [(SRStats *)self->_stats hijackAwayRemoteScore];
  [(SRStats *)self->_stats setManualRouteDestination:@"NA"];
  [(SRStats *)self->_stats setManualRouteInputOutput:@"NA"];
  stats = self->_stats;

  [(SRStats *)stats setManualRouteUISource:@"NA"];
}

- (void)_startHijackMetricSubmission:(int64_t)submission wxAddress:(id)address version:(id)version
{
  addressCopy = address;
  versionCopy = version;
  mach_absolute_time();
  [(SRStats *)self->_stats hijackInputTick];
  v9 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRStats *)self->_stats hijackAmbientTick];
  v10 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRStats *)self->_stats hijackMediaTick];
  v11 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRStats *)self->_stats hijackCallTick];
  v12 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRSourceDevice *)self->_sourceDevice predictiveRouteTicks];
  v13 = UpTicksToSeconds();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startHijackMetricSubmission:wxAddress:version:]", 30, "HijackStats: Version %@ lastMediaSubmission %us lastCallSubmission %us lastAmbientSubmission %us lastsInputSubmission %us lastPredictiveRoute %us", versionCopy, v11, v12, v10, v9, v13);
  }

  if (v13 >= 3)
  {
    if ([(SRStats *)self->_stats hijackScore]== 200)
    {
      if (v9 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackInputTick:mach_absolute_time()];
    }

    if ([(SRStats *)self->_stats hijackScore]== 201)
    {
      if (v10 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackAmbientTick:mach_absolute_time()];
    }

    else if ([(SRStats *)self->_stats hijackScore]== 301)
    {
      if (v11 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackMediaTick:mach_absolute_time()];
    }

    else if ([(SRStats *)self->_stats hijackScore]== 501)
    {
      if (v12 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackCallTick:mach_absolute_time()];
    }

    v14 = "?";
    v15 = @"NA";
    if (submission > 2)
    {
      v17 = "Rejected";
      v18 = @"Hijack_Rejected";
      if (submission == 4)
      {
        v15 = @"Hijack_Backoff";
        v14 = "Backoff";
      }

      v16 = submission == 3;
    }

    else
    {
      if (submission == 1)
      {
        reverseRouteReason = [(SRStats *)self->_stats reverseRouteReason];

        if (!reverseRouteReason)
        {
          [(SRStats *)self->_stats setReverseRouteReason:@"Hijack"];
        }

        v20 = "Accepted";
        v19 = @"Hijack_Accepted";
        goto LABEL_30;
      }

      v16 = submission == 2;
      v17 = "Ambiguity";
      v18 = @"Hijack_Ambiguity";
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    if (v16)
    {
      v20 = v17;
    }

    else
    {
      v20 = v14;
    }

LABEL_30:
    v21 = [NSString stringWithUTF8String:v20];
    [(SRStats *)self->_stats setHijackAnswer:v21];

    [(SRStats *)self->_stats setHijackVersion:@"V2"];
    -[BTSmartRoutingDaemon submitHijackMetric:withV1:](self, "submitHijackMetric:withV1:", addressCopy, [versionCopy isEqualToString:@"V1"]);
    [(BTSmartRoutingDaemon *)self _startRouteChangeDetectionTimer:addressCopy andAnswer:submission];
    [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:5];
    [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:6];
    [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:v19];
  }

LABEL_31:
}

- (void)_statsEnsureStarted
{
  selfCopy = self;
  if (!self->_stats)
  {
    v4 = objc_alloc_init(SRStats);
    stats = selfCopy->_stats;
    selfCopy->_stats = v4;
  }

  if (!selfCopy->_smartRoutingWxStatsMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    smartRoutingWxStatsMap = selfCopy->_smartRoutingWxStatsMap;
    selfCopy->_smartRoutingWxStatsMap = v6;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E87C8(self, a2, v2);
    }
  }
}

- (void)_submitManualConnectionMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    score = self->_score;
    if (score > 0xF)
    {
      v6 = "?";
    }

    else
    {
      v6 = off_1002B8F50[score];
    }

    v7 = [NSString stringWithUTF8String:v6];
    audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
    if (audioScoreOtherTipiDevice > 0xF)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1002B8F50[audioScoreOtherTipiDevice];
    }

    v59 = [NSString stringWithUTF8String:v9];
    v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    routingAction = [v10 routingAction];
    if (routingAction > 5)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1002B90F8[routingAction];
    }

    v58 = [NSString stringWithUTF8String:v12];
    mach_absolute_time();
    v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:metricCopy];
    [v13 lastConnectionTicks];
    v14 = UpTicksToMilliseconds();

    otherTipiDeviceBTName = [v10 otherTipiDeviceBTName];
    v16 = otherTipiDeviceBTName;
    v17 = @"NA";
    if (otherTipiDeviceBTName)
    {
      v17 = otherTipiDeviceBTName;
    }

    v57 = v17;

    v18 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1002C1358;
    }

    v55 = v20;

    v56 = v10;
    if ([(SRSourceDevice *)self->_sourceDevice evalTicks])
    {
      mach_absolute_time();
      [(SRSourceDevice *)self->_sourceDevice evalTicks];
      v21 = UpTicksToMilliseconds();
    }

    else
    {
      v21 = -1;
    }

    evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v23 = [evalWxMap objectForKeyedSubscript:metricCopy];

    evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v25 = [evalWxMap2 objectForKeyedSubscript:metricCopy];
    if ([v25 lastEvalTicks])
    {
      mach_absolute_time();
      [v23 lastEvalTicks];
      v26 = UpTicksToMilliseconds();
    }

    else
    {
      v26 = -1;
    }

    if ([v23 lastConnectTicks])
    {
      mach_absolute_time();
      [v23 lastConnectTicks];
      v27 = UpTicksToSeconds();
    }

    else
    {
      v27 = -1;
    }

    v53 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
    nearbyUSBPluggedIn = [v53 nearbyUSBPluggedIn];
    v29 = &off_1002CB6A8;
    if (nearbyUSBPluggedIn == 1)
    {
      v29 = &off_1002CB6D8;
    }

    v60[0] = @"audioScore";
    v60[1] = @"disconnectionReason";
    v61[0] = v7;
    v61[1] = v29;
    v60[2] = @"forceConnect";
    v54 = v7;
    v52 = [NSNumber numberWithBool:self->_forcedConnection];
    v61[2] = v52;
    v60[3] = @"lastConnectSecond";
    v51 = [NSNumber numberWithLongLong:v27];
    v61[3] = v51;
    v60[4] = @"lastConnectResult";
    lastConnectResult = [v23 lastConnectResult];
    v50 = lastConnectResult;
    if (lastConnectResult)
    {
      v31 = lastConnectResult;
    }

    else
    {
      v31 = &stru_1002C1358;
    }

    v61[4] = v31;
    v60[5] = @"lastEvalSourceResult";
    evalResult = [(SRSourceDevice *)self->_sourceDevice evalResult];
    v49 = evalResult;
    if (evalResult)
    {
      v33 = evalResult;
    }

    else
    {
      v33 = &stru_1002C1358;
    }

    v61[5] = v33;
    v60[6] = @"lastEvalSourceMS";
    v48 = [NSNumber numberWithLongLong:v21];
    v61[6] = v48;
    v60[7] = @"lastEvalWxResult";
    evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v46 = [evalWxMap3 objectForKeyedSubscript:metricCopy];
    lastEvalResult = [v46 lastEvalResult];
    v35 = lastEvalResult;
    if (lastEvalResult)
    {
      v36 = lastEvalResult;
    }

    else
    {
      v36 = &stru_1002C1358;
    }

    v61[7] = v36;
    v60[8] = @"lastEvalWxMS";
    v45 = [NSNumber numberWithLongLong:v26];
    v61[8] = v45;
    v60[9] = @"nearbyDeviceCount";
    v44 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
    v61[9] = v44;
    v60[10] = @"nearbyWxCount";
    v37 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_wxDevices count]];
    v61[10] = v37;
    v61[11] = v59;
    v60[11] = @"peerAudioScore";
    v60[12] = @"peerConnectTime";
    v61[12] = &off_1002CB6C0;
    v61[13] = v57;
    v60[13] = @"peerModel";
    v60[14] = @"peerConnectTry";
    v61[14] = &off_1002CB6C0;
    v61[15] = v58;
    v60[15] = @"routingAction";
    v60[16] = @"tipiConnect";
    otherTipiDeviceBTAddress = [v56 otherTipiDeviceBTAddress];
    v39 = @"Yes";
    if (!otherTipiDeviceBTAddress)
    {
      v39 = @"No";
    }

    v61[16] = v39;
    v60[17] = @"wxConnectTime";
    v40 = [NSNumber numberWithUnsignedLongLong:v14];
    v61[17] = v40;
    v60[18] = @"wxProductID";
    v41 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v56 productID]);
    v61[18] = v41;
    v60[19] = @"srCapable";
    v42 = [NSNumber numberWithBool:self->_prefSmartRoutingEnabledPhase3];
    v61[19] = v42;
    v61[20] = &off_1002CB6D8;
    v60[20] = @"wxConnectTry";
    v60[21] = @"wxBuildVersion";
    v61[21] = v55;
    v43 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:22];
    CUMetricsLogEx();
  }
}

- (void)_submitConnectionMetric:(id)metric andError:(id)error
{
  metricCopy = metric;
  errorCopy = error;
  v89 = metricCopy;
  if (metricCopy)
  {
    score = self->_score;
    if (score > 0xF)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1002B8F50[score];
    }

    v84 = [NSString stringWithUTF8String:v8];
    audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
    if (audioScoreOtherTipiDevice > 0xF)
    {
      v10 = "?";
    }

    else
    {
      v10 = off_1002B8F50[audioScoreOtherTipiDevice];
    }

    v81 = [NSString stringWithUTF8String:v10];
    v88 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    identifier = [v88 identifier];
    routingAction = [v88 routingAction];
    if (routingAction > 5)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1002B90F8[routingAction];
    }

    v77 = [NSString stringWithUTF8String:v12];
    mach_absolute_time();
    v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    [v13 lastConnectionTicks];
    v14 = UpTicksToMilliseconds();

    otherTipiDeviceBTName = [v88 otherTipiDeviceBTName];
    v16 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v17 = otherTipiDeviceBTName;
    }

    else
    {
      v17 = @"NA";
    }

    v78 = v17;

    v18 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    preemptiveBannerShown = [v18 preemptiveBannerShown];

    if (preemptiveBannerShown)
    {
      mach_absolute_time();
      v20 = UpTicksToMilliseconds();
      if (v20 >> 5 >= 0x271)
      {
        v20 = UpTicksToMilliseconds();
      }

      *&self->_preemptiveBannerBlockedTicks = 0u;
      if (self->_preemptiveBannerConnectionInProgress)
      {
        self->_preemptiveBannerConnectionInProgress = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v68 = CUPrintNSError();
    _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
    v21 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:v89];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1002C1358;
    }

    v67 = v23;

    onDemandCategory = [(SRStats *)self->_stats onDemandCategory];
    v25 = onDemandCategory;
    if (onDemandCategory)
    {
      v26 = onDemandCategory;
    }

    else
    {
      v26 = @"NA";
    }

    v80 = v26;

    if ([(SRStats *)self->_stats pipeStartTime])
    {
      mach_absolute_time();
      [(SRStats *)self->_stats pipeStartTime];
      v64 = UpTicksToMilliseconds();
    }

    else
    {
      v64 = 0;
    }

    firstPipeMessageRTT = [(SRStats *)self->_stats firstPipeMessageRTT];
    v60 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:v89];
    _isOnDemandConnectInProgress = [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
    _isConnectionTipiv2 = [(BTSmartRoutingDaemon *)self _isConnectionTipiv2];
    v86 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v89];
    tipiConnectType = [v86 tipiConnectType];
    if (tipiConnectType > 0xA)
    {
      v30 = "?";
    }

    else
    {
      v30 = off_1002B8FD0[tipiConnectType];
    }

    v73 = [NSString stringWithUTF8String:v30];
    v85 = [(BTSmartRoutingDaemon *)self _inCaseLidClosed:v89];
    v31 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    preemptiveBannerShown2 = [v31 preemptiveBannerShown];

    v32 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    sourceCount = [v32 sourceCount];

    if (v85)
    {
      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (v33 = _LogCategory_Initialize(), v33))
        {
          sub_1001E87E4(v33, v34, v35);
        }
      }
    }

    if (_isConnectionTipiv2)
    {
      phase1ConnectConfig = self->_phase1ConnectConfig;
      self->_phase1ConnectConfig = 0;
    }

    if (v86)
    {
      isUSBPlugIn = [v86 isUSBPlugIn];
      v38 = &off_1002CB6F0;
      if (isUSBPlugIn)
      {
        v38 = &off_1002CB6D8;
      }
    }

    else
    {
      v38 = &off_1002CB6A8;
    }

    v71 = v38;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    nearbyInfoDevices = self->_nearbyInfoDevices;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10005AFDC;
    v91[3] = &unk_1002B7DC8;
    v91[4] = &v92;
    [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v91];
    v40 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];

    if (v40)
    {
      v41 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
      audioState = [v41 audioState];
      if (audioState > 3)
      {
        v43 = "?";
      }

      else
      {
        v43 = off_1002B8ED0[audioState];
      }

      v63 = [NSString stringWithUTF8String:v43];

      v44 = v14;
    }

    else
    {
      v44 = v14;
      v63 = @"Unknown";
    }

    if ([v86 nearbyUSBPluggedIn] == 1)
    {
      v45 = &off_1002CB6D8;
    }

    else
    {
      v45 = &off_1002CB6A8;
    }

    v96[0] = @"audioScore";
    v96[1] = @"disconnectionReason";
    v97[0] = v84;
    v97[1] = v45;
    v96[2] = @"firstPipeMessageRTT";
    v83 = [NSNumber numberWithUnsignedLongLong:firstPipeMessageRTT];
    v97[2] = v83;
    v96[3] = @"forceConnect";
    v82 = [NSNumber numberWithBool:self->_forcedConnection];
    v97[3] = v82;
    v96[4] = @"localAudioScore";
    localAudioScore = [(SRStats *)self->_stats localAudioScore];
    v76 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [localAudioScore intValue]);
    v97[4] = v76;
    v96[5] = @"nearbyDeviceCount";
    v75 = [NSNumber numberWithUnsignedInt:*(v93 + 6)];
    v97[5] = v75;
    v96[6] = @"nearbyWxCount";
    v72 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_wxDevices count]];
    v97[6] = v72;
    v97[7] = v80;
    v96[7] = @"onDemandCategory";
    v96[8] = @"onDemandConnect";
    v70 = [NSNumber numberWithBool:_isOnDemandConnectInProgress];
    v97[8] = v70;
    v96[9] = @"setupSupportsTipiv2";
    v66 = [NSNumber numberWithBool:[(SRStats *)self->_stats setupSupportsTipiv2]];
    v97[9] = v66;
    v97[10] = v81;
    v96[10] = @"peerAudioScore";
    v96[11] = @"peerModel";
    v97[11] = v78;
    v96[12] = @"pipeToConnectionCompleteTime";
    v65 = [NSNumber numberWithUnsignedLongLong:v64];
    v97[12] = v65;
    v96[13] = @"preemptiveBannerFailureReason";
    evalPreemptiveBannerResult = [(SRSourceDevice *)self->_sourceDevice evalPreemptiveBannerResult];
    v47 = evalPreemptiveBannerResult;
    if (evalPreemptiveBannerResult)
    {
      v48 = evalPreemptiveBannerResult;
    }

    else
    {
      v48 = &stru_1002C1358;
    }

    if (preemptiveBannerShown2)
    {
      v49 = @"Yes";
    }

    else
    {
      v49 = @"No";
    }

    v97[13] = v48;
    v97[14] = v49;
    v96[14] = @"preemptiveBannerShown";
    v96[15] = @"preemptiveBannerTime";
    if (v20)
    {
      v50 = [NSNumber numberWithUnsignedLongLong:v20];
    }

    else
    {
      v50 = @"Not initialized";
    }

    v62 = v50;
    v97[15] = v50;
    v97[16] = v77;
    v96[16] = @"routingAction";
    v96[17] = @"systemAudioRoute";
    v97[17] = _getCurrentRoute;
    v96[18] = @"tipiConnect";
    otherTipiDeviceBTAddress = [v88 otherTipiDeviceBTAddress];
    if (otherTipiDeviceBTAddress)
    {
      v52 = @"Yes";
    }

    else
    {
      v52 = @"No";
    }

    v97[18] = v52;
    v97[19] = v73;
    v96[19] = @"tipiConnectType";
    v96[20] = @"usbState";
    v97[20] = v71;
    v96[21] = @"wxConnectTime";
    v53 = [NSNumber numberWithUnsignedLongLong:v44];
    v97[21] = v53;
    v96[22] = @"wxProductID";
    v54 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v88 productID]);
    v97[22] = v54;
    v97[23] = v68;
    v96[23] = @"wxConnectResult";
    v96[24] = @"wxConnectResult2";
    v97[24] = v68;
    v97[25] = v67;
    v96[25] = @"wxBuildVersion";
    v96[26] = @"wxInEar";
    v55 = [NSNumber numberWithBool:v60];
    v97[26] = v55;
    v96[27] = @"wxInCasewithLidClosed";
    v56 = [NSNumber numberWithBool:v85];
    v97[27] = v56;
    v96[28] = @"wxSourceCount";
    v57 = [NSNumber numberWithUnsignedChar:sourceCount];
    v96[29] = @"wxStreamState";
    v97[28] = v57;
    v97[29] = v63;
    v58 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:30];
    CUMetricsLogEx();

    if (v20)
    {
    }

    if (errorCopy)
    {
      [(SRStats *)self->_stats setOnDemandCategory:0];
    }

    _Block_object_dispose(&v92, 8);
  }
}

- (void)_submitHijackBlockMetric:(id)metric withReason:(id)reason
{
  metricCopy = metric;
  reasonCopy = reason;
  v8 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  v10 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
  v11 = v10;
  v12 = &stru_1002C1358;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  callConnected = [(SRStats *)self->_stats mediaPlaying]|| [(SRStats *)self->_stats callConnected];
  mach_absolute_time();
  v15 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
  [v15 hijackBackoffTicks];
  v16 = UpTicksToSeconds() + self->_prefSmartRoutingBlockHijackWindowinSeconds * self->_hijackBackoffCount;

  v22[0] = @"initiator";
  v17 = [NSNumber numberWithBool:self->_hijackBackOffInitiator];
  v23[0] = v17;
  v22[1] = @"isPlaying";
  v18 = [NSNumber numberWithBool:callConnected];
  v23[1] = v18;
  v23[2] = _getCurrentRoute;
  v22[2] = @"route";
  v22[3] = @"terminateReason";
  v23[3] = reasonCopy;
  v22[4] = @"blockTimeSeconds";
  v19 = [NSNumber numberWithUnsignedLongLong:v16];
  v23[4] = v19;
  v23[5] = v13;
  v22[5] = @"wxBuildVersion";
  v22[6] = @"wxProductID";
  v20 = [NSNumber numberWithUnsignedInt:v8];
  v23[6] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:7];
  CUMetricsLogEx();
}

- (void)_submitRouteCheckMetric:(id)metric andType:(int)type
{
  metricCopy = metric;
  v9 = metricCopy;
  if (metricCopy)
  {
    v88 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];
    audioRoute = [(SRSourceDevice *)self->_sourceDevice audioRoute];
    if (audioRoute > 4)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1002B9148[audioRoute];
    }

    v102 = [NSString stringWithUTF8String:v11];
    v12 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v9];

    onDemandCategory = [(SRStats *)self->_stats onDemandCategory];
    v14 = onDemandCategory;
    if (onDemandCategory)
    {
      v15 = onDemandCategory;
    }

    else
    {
      v15 = @"NA";
    }

    v16 = v15;

    v17 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:v9];
    v18 = v17;
    v19 = &stru_1002C1358;
    if (v17)
    {
      v19 = v17;
    }

    v101 = v19;

    v20 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v9];
    intValue = [(NSNumber *)self->_localDeviceAudioCategory intValue];
    if (type > 0xE)
    {
      v21 = "?";
    }

    else
    {
      v21 = off_1002B9028[type];
    }

    v100 = [NSString stringWithUTF8String:v21];
    otherTipiDeviceBTName = [v20 otherTipiDeviceBTName];
    v23 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v24 = otherTipiDeviceBTName;
    }

    else
    {
      v24 = @"NA";
    }

    v104 = v24;

    bluetoothState = [(SRSourceDevice *)self->_sourceDevice bluetoothState];
    if (bluetoothState > 0xA)
    {
      v26 = "?";
    }

    else
    {
      v26 = off_1002B8BF8[bluetoothState];
    }

    v99 = [NSString stringWithUTF8String:v26];
    v27 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v9];
    v87 = v27;
    if (v27)
    {
      audioStreamState = [v27 audioStreamState];
      if (audioStreamState > 3)
      {
        v29 = "?";
      }

      else
      {
        v29 = off_1002B9128[audioStreamState];
      }

      v98 = [NSString stringWithUTF8String:v29];
    }

    else
    {
      v98 = @"NA";
    }

    falseRouteCheckReason = [(SRStats *)self->_stats falseRouteCheckReason];
    hijackVersion = [(SRStats *)self->_stats hijackVersion];
    v31 = hijackVersion;
    if (hijackVersion)
    {
      v32 = hijackVersion;
    }

    else
    {
      v32 = @"NA";
    }

    v33 = v32;

    hijackAnswer = [(SRStats *)self->_stats hijackAnswer];
    v35 = hijackAnswer;
    if (hijackAnswer)
    {
      v36 = hijackAnswer;
    }

    else
    {
      v36 = @"NA";
    }

    v97 = v36;

    v37 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v9];
    v103 = v20;
    v86 = v37;
    if (v12 && v20)
    {
      inEar = [v20 inEar];
    }

    else
    {
      if (v12)
      {
        v96 = @"NA";
        goto LABEL_44;
      }

      inEar = [v37 nearbyInEar] == 1;
    }

    v39 = @"NO";
    if (inEar)
    {
      v39 = @"YES";
    }

    v96 = v39;
LABEL_44:
    v40 = 0;
    hijackScore = 0;
    v92 = v9;
    if (type > 11)
    {
      if (type == 13)
      {

        v43 = objc_alloc_init(NSMutableDictionary);
        bannerAction = [(SRStats *)self->_stats bannerAction];
        v45 = v33;
        v46 = bannerAction;
        if (bannerAction)
        {
          v47 = bannerAction;
        }

        else
        {
          v47 = @"NA";
        }

        [v43 setObject:v47 forKeyedSubscript:@"BannerAction"];

        bannerTrigger = [(SRStats *)self->_stats bannerTrigger];
        v49 = bannerTrigger;
        if (bannerTrigger)
        {
          v50 = bannerTrigger;
        }

        else
        {
          v50 = @"NA";
        }

        [v43 setObject:v50 forKeyedSubscript:@"BannerTrigger"];

        v51 = [(BTSmartRoutingDaemon *)self _getJsonStringFromDictionary:v43];

        bannerTrigger2 = [(SRStats *)self->_stats bannerTrigger];
        v53 = bannerTrigger2;
        if (bannerTrigger2)
        {
          v54 = bannerTrigger2;
        }

        else
        {
          v54 = @"NA";
        }

        v95 = v54;

        bannerAction2 = [(SRStats *)self->_stats bannerAction];
        v56 = bannerAction2;
        if (bannerAction2)
        {
          v57 = bannerAction2;
        }

        else
        {
          v57 = @"NA";
        }

        v94 = v57;

        hijackScore = 0;
        v40 = 0;
        v104 = @"NA";
        falseRouteCheckReason = v51;
        v33 = v45;
        goto LABEL_71;
      }

      if (type == 12)
      {
        if (v103 && [v103 otherTipiDeviceIdleTick])
        {
          mach_absolute_time();
          [v103 otherTipiDeviceIdleTick];
          hijackScore = 0;
          v40 = UpTicksToSeconds() - 25;
        }

        else
        {
          hijackScore = 0;
          v40 = 0;
        }

        v94 = @"NA";
        v95 = @"NA";
        goto LABEL_71;
      }
    }

    else
    {
      if ((type - 5) < 2)
      {
        hijackScore = [(SRStats *)self->_stats hijackScore];
        v40 = 0;
LABEL_54:
        v94 = @"NA";
        v95 = @"NA";
LABEL_71:
        typeCopy = type;
        if ([(__CFString *)v97 isEqualToString:@"Backoff"])
        {

          v93 = @"All";
        }

        else
        {
          v93 = v33;
        }

        v106[0] = @"ActivePlayingApp";
        activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
        v85 = activePlayingApp;
        if (activePlayingApp)
        {
          v59 = activePlayingApp;
        }

        else
        {
          v59 = @"NA";
        }

        v107[0] = v59;
        v107[1] = v94;
        v106[1] = @"BannerAction";
        v106[2] = @"BluetoothState";
        v107[2] = v99;
        v106[3] = @"HijackAnswer";
        hijackAnswer2 = [(SRStats *)self->_stats hijackAnswer];
        v84 = hijackAnswer2;
        if (hijackAnswer2)
        {
          v61 = hijackAnswer2;
        }

        else
        {
          v61 = @"NA";
        }

        v107[3] = v61;
        v106[4] = @"HijackScore";
        v83 = [NSNumber numberWithInt:hijackScore];
        v107[4] = v83;
        v106[5] = @"HijackVersion";
        hijackVersion2 = [(SRStats *)self->_stats hijackVersion];
        v63 = hijackVersion2;
        if (hijackVersion2)
        {
          v64 = hijackVersion2;
        }

        else
        {
          v64 = @"NA";
        }

        v107[5] = v64;
        v107[6] = v96;
        v106[6] = @"InEar";
        v106[7] = @"IsConnected";
        v82 = [NSNumber numberWithBool:v12 != 0];
        v107[7] = v82;
        v106[8] = @"IsPlaying";
        v81 = [NSNumber numberWithBool:intValue > 100];
        v107[8] = v81;
        v106[9] = @"LocalAudioCategory";
        v65 = [NSNumber numberWithInt:[(NSNumber *)self->_localDeviceAudioCategory intValue]];
        v107[9] = v65;
        v107[10] = v16;
        v91 = v16;
        v106[10] = @"OnDemandCategory";
        v106[11] = @"OtherTipiDevice";
        v107[11] = v104;
        v106[12] = @"OtherTipiDeviceIdleTime";
        v66 = [NSNumber numberWithUnsignedLongLong:v40];
        v107[12] = v66;
        v106[13] = @"OtherTipiAudioCategory";
        v67 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v103 otherTipiAudioCategory]);
        v107[13] = v67;
        v106[14] = @"OtherTipiDevicePlayingApp";
        otherTipiDevicePlayingApp = [v103 otherTipiDevicePlayingApp];
        v69 = otherTipiDevicePlayingApp;
        if (otherTipiDevicePlayingApp)
        {
          v70 = otherTipiDevicePlayingApp;
        }

        else
        {
          v70 = @"NA";
        }

        v107[14] = v70;
        v106[15] = @"ProactiveRoutingTrigger";
        proactiveRoutingTrigger = [(SRStats *)self->_stats proactiveRoutingTrigger];
        v72 = proactiveRoutingTrigger;
        if (proactiveRoutingTrigger)
        {
          v73 = proactiveRoutingTrigger;
        }

        else
        {
          v73 = @"NA";
        }

        v107[15] = v73;
        v106[16] = @"ProactiveRoutingWxRSSI";
        v74 = [NSNumber numberWithInt:[(SRStats *)self->_stats proactiveRoutingWxRSSI]];
        v75 = v74;
        v76 = falseRouteCheckReason;
        if (!falseRouteCheckReason)
        {
          v76 = @"NA";
        }

        v107[16] = v74;
        v107[17] = v76;
        v106[17] = @"Reason";
        v106[18] = @"Route";
        v107[18] = v102;
        v107[19] = v95;
        v106[19] = @"Trigger";
        v106[20] = @"Type";
        v107[20] = v100;
        v107[21] = v101;
        v106[21] = @"WxBuildVersion";
        v106[22] = @"WxProductID";
        v77 = [NSNumber numberWithUnsignedInt:v88];
        v106[23] = @"WxStreamState";
        v107[22] = v77;
        v107[23] = v98;
        v78 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:24];
        CUMetricsLogEx();

        [(SRStats *)self->_stats setProactiveRoutingTrigger:&stru_1002C1358];
        if (typeCopy == 6)
        {
          [(SRStats *)self->_stats setHijackAnswer:0];
          v9 = v92;
          v79 = v93;
          v80 = v86;
        }

        else
        {
          v9 = v92;
          v79 = v93;
          v80 = v86;
          if (typeCopy == 10)
          {
            [(SRStats *)self->_stats setOnDemandCategory:0];
          }
        }

        goto LABEL_96;
      }

      if (type == 8)
      {
        reverseRouteReason = [(SRStats *)self->_stats reverseRouteReason];

        hijackScore = 0;
        v40 = 0;
        falseRouteCheckReason = reverseRouteReason;
        goto LABEL_54;
      }
    }

    v94 = @"NA";
    v95 = @"NA";
    goto LABEL_71;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (metricCopy = _LogCategory_Initialize(), metricCopy))
    {
      sub_1001E8800(metricCopy, v7, v8);
    }
  }

LABEL_96:
}

- (void)_submitStemGestureMetric:(id)metric
{
  metricCopy = metric;
  v5 = self->_localDeviceAudioCategory;
  v25 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  v6 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
  v7 = v6;
  v8 = &stru_1002C1358;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = &off_1002CB6C0;
  if (metricCopy)
  {
    v11 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
    v12 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v11 nearbyConnectedSourceCount]);
    v13 = [(NSMutableDictionary *)self->_firstStemClickTime objectForKey:metricCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &off_1002CB6C0;
    }

    v10 = v15;
  }

  else
  {
    v12 = &off_1002CB6A8;
  }

  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = &off_1002CB6A8;
  }

  v26[0] = @"localAudioScore";
  v26[1] = @"nearbyDeviceCount";
  v27[0] = v16;
  v27[1] = v25;
  if (self->_effectiveScreenLocked)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v27[2] = v17;
  v26[2] = @"screenLocked";
  v26[3] = @"playbackResumed";
  if ([(SRStats *)self->_stats stemClickResumeResultedInPlayback])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v27[3] = v18;
  v26[4] = @"playbackPaused";
  if ([(SRStats *)self->_stats stemClickPlaybackPaused])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v27[4] = v19;
  v26[5] = @"stemClicks";
  v20 = [NSNumber numberWithUnsignedChar:[(SRStats *)self->_stats stemClicksInTransaction]];
  v27[5] = v20;
  v26[6] = @"stemClickToResumeLatency";
  v21 = [NSNumber numberWithUnsignedLongLong:[(SRStats *)self->_stats stemClickToResponseDelay]];
  v27[6] = v21;
  v27[7] = _getCurrentRoute;
  v26[7] = @"systemAudioRoute";
  v26[8] = @"wxBuildVersion";
  v27[8] = v9;
  v27[9] = v12;
  v26[9] = @"wxSourceCount";
  v26[10] = @"firstClickAfterConnect";
  v27[10] = v10;
  v26[11] = @"tempOverride";
  v22 = [NSNumber numberWithBool:self->_overrideMessageSent];
  v27[11] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:12];
  CUMetricsLogEx();

  [(SRStats *)self->_stats setStemClickResumeResultedInPlayback:0];
  [(SRStats *)self->_stats setStemClickPlaybackPaused:0];
  [(SRStats *)self->_stats setStemClickToResponseDelay:0];
  if (metricCopy)
  {
    [(NSMutableDictionary *)self->_firstStemClickTime setObject:&off_1002CB6C0 forKeyedSubscript:metricCopy];
  }
}

- (void)_submitUSBAudioDeviceMetric:(id)metric
{
  metricCopy = metric;
  v30 = self->_localDeviceAudioCategory;
  v34 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
  v33 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_wxDevices count]];
  v32 = [NSNumber numberWithInteger:[(SRSourceDevice *)self->_sourceDevice bluetoothState]];
  v31 = [NSNumber numberWithInt:[(SRSourceDevice *)self->_sourceDevice audioRoute]];
  if (self->_effectiveScreenLocked)
  {
    v5 = &off_1002CB6D8;
  }

  else
  {
    v5 = &off_1002CB6F0;
  }

  v29 = v5;
  v6 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usbProductID]);
  stringValue = [v7 stringValue];

  v27 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v6 connectionState]);
  v8 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
  v9 = v8;
  v10 = &stru_1002C1358;
  if (v8)
  {
    v10 = v8;
  }

  v26 = v10;

  nearbyInEar = [v6 nearbyInEar];
  v12 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v6 nearbyConnectedSourceCount]);
  nearbyStreamState = [v6 nearbyStreamState];
  if (nearbyStreamState > 3)
  {
    v14 = "?";
  }

  else
  {
    v14 = off_1002B8ED0[nearbyStreamState];
  }

  v25 = [NSString stringWithUTF8String:v14];
  if ([(BTSmartRoutingDaemon *)self _isWxPaired:metricCopy])
  {
    v15 = &off_1002CB6D8;
  }

  else
  {
    v15 = &off_1002CB6F0;
  }

  v16 = v15;
  if ([(SRSourceDevice *)self->_sourceDevice bluetoothState]== 4)
  {

    v16 = &off_1002CB6A8;
  }

  v17 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
  otherTipiDeviceBTName = [v17 otherTipiDeviceBTName];
  v19 = otherTipiDeviceBTName;
  v20 = @"NA";
  if (otherTipiDeviceBTName)
  {
    v20 = otherTipiDeviceBTName;
  }

  v21 = v20;

  [v12 intValue];
  v35[0] = @"localAudioScore";
  v35[1] = @"nearbyDeviceCount";
  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = &off_1002CB6A8;
  }

  v36[0] = v22;
  v36[1] = v34;
  v35[2] = @"nearbyWxCount";
  v35[3] = @"peerModel";
  v36[2] = v33;
  v36[3] = v21;
  v35[4] = @"sourceBluetoothState";
  v35[5] = @"sourceCurrentActiveRoute";
  v36[4] = v32;
  v36[5] = v31;
  v35[6] = @"sourceScreenState";
  v35[7] = @"wxBuildVersion";
  v36[6] = v29;
  v36[7] = v26;
  v36[8] = v27;
  v35[8] = @"wxConnectionState";
  v35[9] = @"wxInEar";
  v23 = [NSNumber numberWithBool:nearbyInEar == 1];
  v36[9] = v23;
  v36[10] = v16;
  v35[10] = @"wxPairState";
  v35[11] = @"wxProductID";
  v36[11] = stringValue;
  v36[12] = v12;
  v35[12] = @"wxSourceCount";
  v35[13] = @"wxStreamState";
  v36[13] = v25;
  v24 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:14];

  CUMetricsLogEx();
}

- (void)updateCurrentAudioSnapshot
{
  v3 = [NSNumber numberWithInt:1];
  [(SRStats *)self->_stats setSnapshotLocalNumOfApps:v3];

  activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
  [(SRStats *)self->_stats setSnapshotLocalPlayingApp:activePlayingApp];

  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  [(SRStats *)self->_stats setSnapshotLocalRoute:_getCurrentRoute];

  [(SRStats *)self->_stats setSnapshotLocalDeviceAudioScore:self->_localDeviceAudioCategory];
  v6 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  [(SRStats *)self->_stats setSnapshotRemoteDeviceAudioScore:v6];

  _findActiveWxDevice = [(BTSmartRoutingDaemon *)self _findActiveWxDevice];
  v12 = _findActiveWxDevice;
  if (_findActiveWxDevice)
  {
    v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:_findActiveWxDevice];
    v9 = v8;
    if (v8)
    {
      v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 otherTipiAudioCategory]);
      [(SRStats *)self->_stats setSnapshotRemoteDeviceAudioScore:v10];
    }

    _findActiveWxDevice = v12;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v11 = _LogCategory_Initialize(), _findActiveWxDevice = v12, v11))
    {
      sub_1001E881C(&self->_sourceDevice, &self->_stats);
      _findActiveWxDevice = v12;
    }
  }
}

- (void)_updateSRDiscoveredDeviceForBluetoothStateChanged:(int64_t)changed
{
  if (changed != 5)
  {
    [(NSMutableDictionary *)self->_srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B8668];
  }
}

- (void)_updateSRDiscoveredDeviceForCBDiscoveryChanged
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v4 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(discoveredDevices);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        btAddressData = [v8 btAddressData];
        v10 = CUPrintNSDataAddress();

        deviceFlags = [v8 deviceFlags];
        if (v10)
        {
          v12 = deviceFlags;
          v13 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v10];

          if (v13)
          {
            v14 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v10];
            [v14 setIsSRCapable:(v12 >> 4) & 1];
          }
        }
      }

      v5 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_updateSRDiscoveredDeviceForPairStateChange:(id)change isPaired:(BOOL)paired
{
  pairedCopy = paired;
  changeCopy = change;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003918;
  v17 = sub_100003838;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005C8FC;
  v12[3] = &unk_1002B6C00;
  v12[4] = &v13;
  v7 = objc_retainBlock(v12);
  btAddressData = [changeCopy btAddressData];
  v9 = CUPrintNSDataAddress();

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      [v10 setIsPaired:pairedCopy];
    }
  }

  else
  {
    v11 = v14[5];
    v14[5] = @"btAddress is null";
  }

  (v7[2])(v7);
  _Block_object_dispose(&v13, 8);
}

- (void)_cancelInUseBannerForCallTimer
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E8920(self, a2, v2);
    }
  }

  inUseBannerTimer = selfCopy->_inUseBannerTimer;
  if (inUseBannerTimer)
  {
    v6 = inUseBannerTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_inUseBannerTimer;
    selfCopy->_inUseBannerTimer = 0;
  }
}

- (void)_cancelRingtoneTimer
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001E893C(self, a2, v2);
    }
  }

  ringtoneTimer = selfCopy->_ringtoneTimer;
  if (ringtoneTimer)
  {
    v6 = ringtoneTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_ringtoneTimer;
    selfCopy->_ringtoneTimer = 0;
  }
}

- (BOOL)_isPhoneCall:(id)call
{
  callCopy = call;
  conferenceCall = [callCopy conferenceCall];
  if (conferenceCall && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E89D4(callCopy);
  }

  return conferenceCall ^ 1;
}

- (void)_notifyOtherTipiCallState:(int)state
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D7BC;
  v4[3] = &unk_1002B8690;
  stateCopy = state;
  v4[4] = self;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_startInUseBannerTimer
{
  [(BTSmartRoutingDaemon *)self _cancelInUseBannerForCallTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_inUseBannerTimer, v3);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005D9CC;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8A30();
  }

  CUDispatchTimerSet();
  dispatch_activate(v3);
}

- (void)_startRingtoneTimer
{
  [(BTSmartRoutingDaemon *)self _cancelRingtoneTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_ringtoneTimer, v3);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005DB40;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8A90();
  }

  CUDispatchTimerSet();
  dispatch_activate(v3);
}

- (void)_TUMonitorEnsureStarted
{
  if (!self->_tuCallCenter)
  {
    selfCopy = self;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001E8AF0(self, a2, v2);
      }
    }

    v5 = +[TUCallCenter sharedInstance];
    tuCallCenter = selfCopy->_tuCallCenter;
    selfCopy->_tuCallCenter = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:selfCopy selector:"_handleTUCallStateChange:" name:TUCallCenterCallStatusChangedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:selfCopy selector:"_handleTUCallStateChange:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  }
}

- (void)activeHRMDeviceUpdateToDeviceWithAddress:(id)address
{
  addressCopy = address;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8B28(addressCopy);
  }

  v4 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:addressCopy];
  v5 = v4;
  if (!v4)
  {
    sub_1001E8C44(addressCopy);
    goto LABEL_37;
  }

  if ([v4 connectionState] == 2)
  {
    v6 = [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:addressCopy];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8BA8(v6);
    }

    goto LABEL_19;
  }

  identifier = [v5 identifier];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8B68(identifier);
    if (identifier)
    {
      goto LABEL_14;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (!identifier)
  {
    goto LABEL_17;
  }

LABEL_14:
  v6 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:identifier];
LABEL_18:

LABEL_19:
  if (v6)
  {
    healthKitDataWriteAllowed = [v6 healthKitDataWriteAllowed];
    v9 = healthKitDataWriteAllowed == 1;
    if ([v6 productID] == 8221)
    {
      heartRateMonitorEnabled = [v6 heartRateMonitorEnabled];
      v9 = healthKitDataWriteAllowed == 1 && heartRateMonitorEnabled == 1;
    }

    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier2 = [activeHRMDevice identifier];
    identifier3 = [v5 identifier];
    v15 = identifier2;
    v16 = identifier3;
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      if ((v15 != 0) != (v16 == 0))
      {
        v9 &= [v15 isEqual:v16] ^ 1;
      }

      if (v9)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E8BE8(v5);
        }

        [(SRSourceDevice *)self->_sourceDevice setActiveHRMDevice:v5];
        [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v6 withSREnabled:1];
      }
    }

    self->_specificHRMDeviceChosenForFitnessPlus = 1;
  }

LABEL_37:
}

- (void)activeHRMDeviceUpdateWithPushRequired:(BOOL)required
{
  requiredCopy = required;
  isSREnabled = [(BTSmartRoutingDaemon *)self isSREnabled];
  if (!self->_splitterStateOn)
  {
    _routedHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _routedHRMEnabledDevice];
    if (_routedHRMEnabledDevice || ([(BTSmartRoutingDaemon *)self _connectedHRMEnabledDevice], (_routedHRMEnabledDevice = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier = _routedHRMEnabledDevice;
      deviceAddress = [_routedHRMEnabledDevice deviceAddress];
      v20 = [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:deviceAddress];
      if (v20)
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceAddress];
        if (self->_pendingActiveHRMUpdate)
        {
          self->_pendingActiveHRMUpdate = 0;
        }
      }

      else
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = 0;
        self->_pendingActiveHRMUpdate = 1;
      }
    }

    else
    {
      _nearbyHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _nearbyHRMEnabledDevice];
      if (_nearbyHRMEnabledDevice)
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = _nearbyHRMEnabledDevice;
      }

      else
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = [(BTSmartRoutingDaemon *)self _selectHRMCapableDeviceFromDiscoveredDevices];
        isSREnabled = (_selectHRMCapableDeviceFromDiscoveredDevices == 0) & isSREnabled;
      }

      identifier = [_selectHRMCapableDeviceFromDiscoveredDevices identifier];
      if (identifier)
      {
        v20 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:identifier];
      }

      else
      {
        v20 = 0;
      }
    }

    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier2 = [activeHRMDevice identifier];
    identifier3 = [_selectHRMCapableDeviceFromDiscoveredDevices identifier];
    v13 = identifier2;
    v14 = identifier3;
    v15 = v14;
    if (v13 == v14)
    {

      goto LABEL_21;
    }

    if ((v13 != 0) == (v14 == 0))
    {
    }

    else
    {
      v16 = [v13 isEqual:v14];

      if (v16)
      {
        goto LABEL_21;
      }
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8CC0(_selectHRMCapableDeviceFromDiscoveredDevices);
    }

    self->_specificHRMDeviceChosenForFitnessPlus = 0;
    [(SRSourceDevice *)self->_sourceDevice setActiveHRMDevice:_selectHRMCapableDeviceFromDiscoveredDevices];
    [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v20 withSREnabled:isSREnabled];
LABEL_21:

    if (!requiredCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:0 withSREnabled:[(BTSmartRoutingDaemon *)self isSREnabled]];
  v20 = 0;
  if (requiredCopy)
  {
LABEL_22:
    [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v20 withSREnabled:isSREnabled];
  }

LABEL_23:
  workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  if (workoutActive)
  {
    [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:1];
  }
}

- (void)_anyPairedDeviceSupportsSmartRouting
{
  v3 = GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 6;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v5 = [discoveredDevices countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v52;
    v9 = "%.6a";
    v49 = discoveredDevices;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        if (([v11 deviceFlags] & 0x10) != 0 || v3 && -[BTSmartRoutingDaemon _supportsPhoneWatchTipi:](self, "_supportsPhoneWatchTipi:", objc_msgSend(v11, "productID")))
        {
          btAddressData = [v11 btAddressData];
          if ([btAddressData length] == 6)
          {
            v13 = NSPrintF(v9, [btAddressData bytes]);
            if (v13)
            {
              v14 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v13];
              if (v14)
              {
                v15 = v14;
                v16 = v3;
                v17 = v9;
                v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];

                if (!v18)
                {
                  v19 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v13];
                  [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDeviceFromConnectedDevice:v19];
                  [(BTSmartRoutingDaemon *)self _triggerTipiTableUpdate:v13];
                }

                v9 = v17;
                v3 = v16;
                discoveredDevices = v49;
              }
            }
          }

          else
          {
            v13 = 0;
          }

          v7 = 1;
        }
      }

      v6 = [discoveredDevices countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v20 = +[SRConnectionManager sharedSRConnectionManager];
  discoveredDevices2 = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  [v20 pairedDeviceCountChanged:{objc_msgSend(discoveredDevices2, "count")}];

  if (self->_pairedDeviceSupportsSmartRouting != (v7 & 1))
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8D3C();
    }

    self->_pairedDeviceSupportsSmartRouting = v7 & 1;
    if ((v7 & 1) == 0)
    {
      smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10005E6F4;
      v50[3] = &unk_1002B8168;
      v50[4] = self;
      [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v50];
      uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
      if (uiSmartRoutingBanner)
      {
        [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
        v24 = self->_uiSmartRoutingBanner;
        self->_uiSmartRoutingBanner = 0;
      }

      [(BTSmartRoutingDaemon *)self _clearAllDisconnectTicks];
      self->_connectTicks = 0;
      self->_tipiSetupTicks = 0;
      if (self->_tipiElectionInProgress)
      {
        self->_tipiElectionInProgress = 0;
      }

      [(BTSmartRoutingDaemon *)self _setTipiElectionReceivedLePipe:&stru_1002C1358];
      tipiHealingTimer = self->_tipiHealingTimer;
      if (tipiHealingTimer)
      {
        v26 = tipiHealingTimer;
        dispatch_source_cancel(v26);
        v27 = self->_tipiHealingTimer;
        self->_tipiHealingTimer = 0;
      }

      smartRoutingManualDisconnectionList = self->_smartRoutingManualDisconnectionList;
      if (smartRoutingManualDisconnectionList)
      {
        [(NSMutableArray *)smartRoutingManualDisconnectionList removeAllObjects];
        v29 = self->_smartRoutingManualDisconnectionList;
      }

      else
      {
        v29 = 0;
      }

      self->_smartRoutingManualDisconnectionList = 0;

      srBudswapDeviceMap = self->_srBudswapDeviceMap;
      if (srBudswapDeviceMap)
      {
        [(NSMutableDictionary *)srBudswapDeviceMap removeAllObjects];
        v31 = self->_srBudswapDeviceMap;
      }

      else
      {
        v31 = 0;
      }

      self->_srBudswapDeviceMap = 0;

      v32 = self->_smartRoutingWxDeviceMap;
      if (v32)
      {
        [(NSMutableDictionary *)v32 removeAllObjects];
        v33 = self->_smartRoutingWxDeviceMap;
      }

      else
      {
        v33 = 0;
      }

      self->_smartRoutingWxDeviceMap = 0;

      smartRoutingBackOffMap = self->_smartRoutingBackOffMap;
      if (smartRoutingBackOffMap)
      {
        [(NSMutableDictionary *)smartRoutingBackOffMap removeAllObjects];
        v35 = self->_smartRoutingBackOffMap;
      }

      else
      {
        v35 = 0;
      }

      self->_smartRoutingBackOffMap = 0;

      highActivityLevelTimer = self->_highActivityLevelTimer;
      if (highActivityLevelTimer)
      {
        v37 = highActivityLevelTimer;
        dispatch_source_cancel(v37);
        v38 = self->_highActivityLevelTimer;
        self->_highActivityLevelTimer = 0;
      }

      phoneOwnershipTimer = self->_phoneOwnershipTimer;
      if (phoneOwnershipTimer)
      {
        v40 = phoneOwnershipTimer;
        dispatch_source_cancel(v40);
        v41 = self->_phoneOwnershipTimer;
        self->_phoneOwnershipTimer = 0;
      }

      idleActivityScoreTimer = self->_idleActivityScoreTimer;
      if (idleActivityScoreTimer)
      {
        v43 = idleActivityScoreTimer;
        dispatch_source_cancel(v43);
        v44 = self->_idleActivityScoreTimer;
        self->_idleActivityScoreTimer = 0;
      }

      temporaryOverrideTimer = self->_temporaryOverrideTimer;
      if (temporaryOverrideTimer)
      {
        v46 = temporaryOverrideTimer;
        dispatch_source_cancel(v46);
        v47 = self->_temporaryOverrideTimer;
        self->_temporaryOverrideTimer = 0;
      }

      phase1ConnectConfig = self->_phase1ConnectConfig;
      self->_phase1ConnectConfig = 0;
    }

    [(BTSmartRoutingDaemon *)self _prefsChanged];
  }
}

- (BOOL)allowHijackWithAudioScore:(unsigned int)score hijackRoute:(id)route hijackDeniedReason:(id *)reason
{
  v6 = *&score;
  routeCopy = route;
  v9 = &dword_1002F6000;
  if (v6 <= 0xC7)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8DC4();
    }

    LOBYTE(v10) = 0;
    goto LABEL_79;
  }

  v11 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:routeCopy];
  audioStreamState = [v11 audioStreamState];

  v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:routeCopy];
  otherTipiAudioCategory = [v13 otherTipiAudioCategory];
  [(SRStats *)self->_stats setHijackActiveRemoteScore:otherTipiAudioCategory];
  otherTipiDeviceIsWatch = [v13 otherTipiDeviceIsWatch];
  if (!routeCopy)
  {
    v10 = 0;
    v19 = @"WxAddress is NULL";
    goto LABEL_67;
  }

  v10 = otherTipiDeviceIsWatch;
  v16 = audioStreamState;
  v17 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:routeCopy];
  otherTipiDeviceBTAddress = [v17 otherTipiDeviceBTAddress];

  if (!otherTipiDeviceBTAddress)
  {
    v10 = 0;
    *reason = @"Other Tipi device does not exist";
    LODWORD(audioStreamState) = v16;
    goto LABEL_54;
  }

  LODWORD(audioStreamState) = v16;
  if (v6 != 401)
  {
    if (otherTipiAudioCategory)
    {
      v10 = otherTipiAudioCategory <= v6;
      if (otherTipiAudioCategory > v6)
      {
        v20 = [NSString stringWithFormat:@"Rejected, Remote Category %u > Local Category %u, audio streaming state %d", otherTipiAudioCategory, v6, v16];
        *reason = v20;
      }

      else
      {
        *reason = @"Allowed";
      }

      DeviceClass = [v13 otherTipiDeviceMajorBuildVersion];
      if (self->_prefSmartRoutingPrioritizedCall)
      {
        v24 = DeviceClass;
        DeviceClass = GestaltGetDeviceClass();
        v25 = 0;
        if (v6 == 501 && DeviceClass == 1)
        {
          callMap = [(SRSourceDevice *)self->_sourceDevice callMap];
          if ([callMap count])
          {
            otherTipiDeviceBTName = [v13 otherTipiDeviceBTName];
            v26 = [otherTipiDeviceBTName isEqualToString:@"Mac"];
            if (v24 > 14)
            {
              v25 = v26;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
        {
          v28 = "no";
          if (v25)
          {
            v28 = "yes";
          }

          v43 = v28;
          callMap2 = [(SRSourceDevice *)self->_sourceDevice callMap];
          v41 = [callMap2 count];
          otherTipiDeviceBTName2 = [v13 otherTipiDeviceBTName];
          otherTipiDeviceMajorBuildVersion = [v13 otherTipiDeviceMajorBuildVersion];
          otherTipiDeviceMinorBuildVersion = [v13 otherTipiDeviceMinorBuildVersion];
          v31 = "no";
          if (self->_prefSmartRoutingPrioritizedCall)
          {
            v31 = "yes";
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon allowHijackWithAudioScore:hijackRoute:hijackDeniedReason:]", 30, "[Hijackv2] local %u vs remote %u isPhoneCallHijack %s CallCount %d otherTipi %@ %d.%d prioritizedCall %s", v6, otherTipiAudioCategory, v43, v41, otherTipiDeviceBTName2, otherTipiDeviceMajorBuildVersion, otherTipiDeviceMinorBuildVersion, v31);
        }
      }

      v34 = v6 != 501 || otherTipiAudioCategory != 501 || otherTipiAudioCategory > v6;
      if (((v34 | v25) & 1) == 0)
      {
        DeviceClass = [NSString stringWithUTF8String:"Ambiguity"];
        v10 = 0;
        *reason = DeviceClass;
      }

      LODWORD(audioStreamState) = v16;
      if ((v25 & 1) == 0)
      {
        if (v16 == 3)
        {
          v9 = &dword_1002F6000;
          switch(otherTipiAudioCategory)
          {
            case 0x79:
              goto LABEL_68;
            case 0x1F5:
              goto LABEL_68;
            case 0x321:
              goto LABEL_68;
          }

          DeviceClass = [(SRSourceDevice *)self->_sourceDevice incomingCallRingtone];
          if (DeviceClass)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v9 = &dword_1002F6000;
          if (audioStreamState != 2 || otherTipiAudioCategory != 501)
          {
            goto LABEL_68;
          }
        }

        v35 = v9[478];
        if (v35 <= 30)
        {
          if (v35 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
          {
            sub_1001E8DA8(DeviceClass, v22, v23);
          }
        }

LABEL_66:
        v10 = 0;
        v19 = @"Fall back to legacy hijack";
        goto LABEL_67;
      }
    }

    else
    {
      v10 = 0;
      *reason = @"Fall back to legacy hijack";
    }

LABEL_54:
    v9 = &dword_1002F6000;
    goto LABEL_68;
  }

  v9 = &dword_1002F6000;
  if (v10)
  {
    if (otherTipiAudioCategory)
    {
      if (otherTipiAudioCategory > 0x190)
      {
        v27 = [NSString stringWithFormat:@"Rejected, Remote Category %u >= Local Category %u", otherTipiAudioCategory, 401];
        *reason = v27;

        v10 = 0;
      }

      else
      {
        *reason = @"Allowed";
        v10 = 1;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v19 = @"3rd Party ringtone shall not hijack non-watch tipi device";
LABEL_67:
  *reason = v19;
LABEL_68:
  v36 = v9[478];
  if (v36 <= 30 && (v36 != -1 || _LogCategory_Initialize()))
  {
    v37 = "no";
    if (v10)
    {
      v37 = "yes";
    }

    if (audioStreamState > 3)
    {
      v38 = "?";
    }

    else
    {
      v38 = off_1002B9128[audioStreamState];
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon allowHijackWithAudioScore:hijackRoute:hijackDeniedReason:]", 30, "[Hijackv2] Allow hijack=%s, Local audio category=%u, Remote audio category=%u, wx stream state=%s, Deny reason=%@", v37, v6, otherTipiAudioCategory, v38, *reason);
  }

LABEL_79:
  return v10;
}

- (id)_bluetoothProductIDToLocalizationString:(unsigned int)string withActionButton:(BOOL)button
{
  v4 = string - 2;
  if (string - 8194 > 0x2D)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x20145A977A0BLL) != 0)
  {
    v5 = @"CONNECTED_EARBUDS";
LABEL_4:
    v6 = @"CONNECT";
    goto LABEL_7;
  }

  if (((1 << v4) & 0x820200594) == 0)
  {
LABEL_10:
    v5 = @"CONNECTED";
    goto LABEL_4;
  }

  v5 = @"CONNECTED_OVEREAR_HEADPHONES";
  v6 = @"CONNECT_OVEREAR_HEADPHONES";
LABEL_7:
  if (button)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (void)_budSwapDetectionStartTimer:(id)timer
{
  timerCopy = timer;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8E08();
  }

  v5 = dispatch_time(0, 20000000000);
  budSwapTimer = self->_budSwapTimer;
  if (budSwapTimer)
  {
    dispatch_source_set_timer(budSwapTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v8 = self->_budSwapTimer;
    self->_budSwapTimer = v7;

    v9 = self->_budSwapTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005EF30;
    handler[3] = &unk_1002B86B8;
    handler[4] = self;
    v12 = 20;
    v11 = timerCopy;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(self->_budSwapTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_budSwapTimer);
  }
}

- (void)_cacheBudswapInfo:(id)info
{
  infoCopy = info;
  srBudswapDeviceMap = self->_srBudswapDeviceMap;
  v15 = infoCopy;
  if (!srBudswapDeviceMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_srBudswapDeviceMap;
    self->_srBudswapDeviceMap = v6;

    infoCopy = v15;
    srBudswapDeviceMap = self->_srBudswapDeviceMap;
  }

  v8 = [(NSMutableDictionary *)srBudswapDeviceMap objectForKeyedSubscript:infoCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(SRBudswapDevice);
  }

  [(SRBudswapDevice *)v8 setReconnectionState:0];
  v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v15];
  v10 = v9;
  if (v9)
  {
    otherTipiDeviceBTAddress = [v9 otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      otherTipiDeviceBTAddress2 = [v10 otherTipiDeviceBTAddress];
      otherTipiDeviceBTName = [v10 otherTipiDeviceBTName];
      otherTipiDeviceVersion = [v10 otherTipiDeviceVersion];
      [(SRBudswapDevice *)v8 cacheInfo:v15 andAddress:otherTipiDeviceBTAddress2 andName:otherTipiDeviceBTName andVersion:otherTipiDeviceVersion];
    }
  }

  [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v8 forKeyedSubscript:v15];
}

- (void)_checkIfHRMDeviceElectionHasFinished
{
  if (self->_forcedHRMConnectionInProgress)
  {
    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];

    if (activeHRMDevice)
    {
      activeHRMDevice2 = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
      identifier = [activeHRMDevice2 identifier];

      [(BTSmartRoutingDaemon *)self _showLowBatteryBannerForWorkoutIfNeededForDevice:identifier];
      self->_forcedHRMConnectionInProgress = 0;
    }
  }
}

- (void)_checkIfPairedCompanionDeviceSupportsSmartRouting
{
  NRRegistry = self->_NRRegistry;
  if (!NRRegistry)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = self->_NRRegistry;
    self->_NRRegistry = v4;

    NRRegistry = self->_NRRegistry;
  }

  getActivePairedDevice = [(NRPairedDeviceRegistry *)NRRegistry getActivePairedDevice];
  v7 = getActivePairedDevice;
  v9 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    self->_pairedCompanionDeviceSupportsSmartRouting = 1;
    v8 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
    if (GestaltGetDeviceClass() == 1 && [v8 compare:@"11.0" options:64] == -1)
    {
      self->_pairedCompanionDeviceSupportsSmartRouting = 0;
    }

    v7 = v9;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (getActivePairedDevice = _LogCategory_Initialize(), v7 = v9, getActivePairedDevice))
    {
      getActivePairedDevice = sub_1001E8E90();
      v7 = v9;
    }
  }

  _objc_release_x1(getActivePairedDevice, v7);
}

- (void)_disconnectOtherTipiDevice:(id)device
{
  if (device)
  {
    deviceCopy = device;
    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    v8[0] = _myBluetoothAddressString;
    v8[1] = @"FF:FF:FF:FF:FF:FF";
    v6 = [NSArray arrayWithObjects:v8 count:2];
    v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:deviceCopy];

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8EE4(v6);
    }

    [(BTSmartRoutingDaemon *)self _updateAccessoryID:v7 connectionDeviceAddresses:v6 completion:&stru_1002B86F8];
  }
}

- (void)disconnectReason:(id)reason reason:(unint64_t)a4
{
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F538;
  block[3] = &unk_1002B86B8;
  block[4] = self;
  v10 = reasonCopy;
  v11 = a4;
  v8 = reasonCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_disconnectReason:(id)reason reason:(unint64_t)smartRoutingDisconnectReason
{
  reasonCopy = reason;
  v7 = reasonCopy;
  self->_smartRoutingDisconnectReason = smartRoutingDisconnectReason;
  if (dword_1002F6778 <= 30)
  {
    v8 = reasonCopy;
    if (dword_1002F6778 != -1)
    {
LABEL_3:
      reasonCopy = LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _disconnectReason:reason:]", 30, "Smart Routing disconnect reason %llu", smartRoutingDisconnectReason);
      v7 = v8;
      goto LABEL_5;
    }

    reasonCopy = _LogCategory_Initialize();
    v7 = v8;
    if (reasonCopy)
    {
      smartRoutingDisconnectReason = self->_smartRoutingDisconnectReason;
      goto LABEL_3;
    }
  }

LABEL_5:

  _objc_release_x1(reasonCopy, v7);
}

- (id)_findActiveWxDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005F840;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_isAnyUSBAudioDevicePluggedIn
{
  _getAllUSBAudioDeviceBtAddresses = [(BTSmartRoutingDaemon *)self _getAllUSBAudioDeviceBtAddresses];
  v3 = [_getAllUSBAudioDeviceBtAddresses count] != 0;

  return v3;
}

- (BOOL)_isDevicePairedCheck:(id)check
{
  checkCopy = check;
  if (checkCopy)
  {
    if (self->_prefSmartRoutingWatchAutomaticSwitching && [(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforConnectionCheck:checkCopy])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromWxLastConnectedHost:checkCopy];
      v5 = v6 != 0;
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E91A8();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isMagnetConnectedDeviceforTipiHealingCheck:(id)check
{
  checkCopy = check;
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  if (!self->_NRRegistry)
  {
    objc_storeStrong(&self->_NRRegistry, v5);
  }

  getActivePairedDevice = [v5 getActivePairedDevice];
  v7 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    v8 = [getActivePairedDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
    v9 = [v7 valueForProperty:NRDevicePropertyUDID];
    v10 = [v7 valueForProperty:NRDevicePropertyName];
    v11 = [v7 valueForProperty:NRDevicePropertySystemBuildVersion];
    v12 = [v7 valueForProperty:NRDevicePropertyMarketingProductName];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _isMagnetConnectedDeviceforTipiHealingCheck:]", 30, "TipiTableEvent: current magnet paired device is %@ %@ (%@) %@ %@, the other tipi address is (%@)", v9, v10, v8, v11, v12, checkCopy);
    }

    if (v8)
    {
      v13 = [v8 caseInsensitiveCompare:checkCopy] == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isMagnetConnectedDeviceforConnectionCheck:(id)check
{
  checkCopy = check;
  if (checkCopy)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v4 getActivePairedDevice];
    v6 = getActivePairedDevice;
    if (getActivePairedDevice)
    {
      v7 = [getActivePairedDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
      [v7 UTF8String];
      v8 = NSDataWithHex();
      bytes = [v8 bytes];
      if (bytes)
      {
        bytes2 = [checkCopy bytes];
        if (*bytes2 == *(bytes + 3) && *(bytes2 + 2) == bytes[5])
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _isMagnetConnectedDeviceforConnectionCheck:]", 30, "Evaluator: comparing phone - watch addresses, Wx: %@, Addr: %@ ", checkCopy, v8);
          }

          LOBYTE(bytes) = 1;
        }

        else
        {
          LOBYTE(bytes) = 0;
        }
      }
    }

    else
    {
      LOBYTE(bytes) = 0;
    }
  }

  else
  {
    LOBYTE(bytes) = 0;
  }

  return bytes;
}

- (BOOL)_isWxPaired:(id)paired
{
  pairedCopy = paired;
  if (pairedCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v6 = [discoveredDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(discoveredDevices);
          }

          btAddressData = [*(*(&v12 + 1) + 8 * i) btAddressData];
          v10 = CUPrintNSDataAddress();

          if (v10 && ([pairedCopy isEqualToString:v10] & 1) != 0)
          {

            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [discoveredDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_getActiveNearbyWxAdress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100060014;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_getCurrentBTRouteAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000601C0;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_getCurrentRoute
{
  if (self->_isBTRoute)
  {
    return @"Bluetooth";
  }

  if (self->_isSpeakerRoute)
  {
    return @"Speaker";
  }

  if (self->_isBuiltInReceiverRoute)
  {
    return @"Receiver";
  }

  return @"NA";
}

- (BOOL)_getForceDisconnectBit:(id)bit
{
  bitCopy = bit;
  if (bitCopy)
  {
    v5 = [(NSMutableDictionary *)self->_wxDevices objectForKeyedSubscript:bitCopy];
    v6 = v5;
    if (v5)
    {
      bleDevice = [v5 bleDevice];
      advertisementFields = [bleDevice advertisementFields];

      v9 = CFDictionaryGetInt64() != 0;
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E91F8(bitCopy);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_getIDSDeviceFromBtAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v4 = +[CBIDSManager sharedInstance];
    v5 = [v4 idsDeviceForBTAddress:addressCopy];
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9238();
    }

    v5 = 0;
  }

  return v5;
}

- (int)_getInEarStateFromCbDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy primaryPlacement] || objc_msgSend(deviceCopy, "secondaryPlacement"))
  {
    if (-[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [deviceCopy productID]) || objc_msgSend(deviceCopy, "primaryPlacement") == 1 || objc_msgSend(deviceCopy, "secondaryPlacement") == 1 || objc_msgSend(deviceCopy, "primaryPlacement") == 4 || objc_msgSend(deviceCopy, "secondaryPlacement") == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 1;
      if ([deviceCopy primaryPlacement] != 7)
      {
        if ([deviceCopy secondaryPlacement] == 7)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getInEarSrWxDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000605EC;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_getIDSDeviceFromWxLastConnectedHost:(id)host
{
  hostCopy = host;
  if (hostCopy)
  {
    v4 = +[CBIDSManager sharedInstance];
    idsDevices = [v4 idsDevices];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = idsDevices;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = +[CBIDSManager sharedInstance];
          uniqueID = [v10 uniqueID];
          v13 = [v11 publicAddressForIDSDevice:uniqueID];

          if (v13)
          {
            [v13 UTF8String];
            v14 = NSDataWithHex();
            bytes = [v14 bytes];
            if (bytes)
            {
              v16 = bytes;
              bytes2 = [hostCopy bytes];
              if (*bytes2 == *(v16 + 3) && *(bytes2 + 2) == v16[5])
              {
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E9278(v10);
                }

                v7 = v10;

                goto LABEL_22;
              }
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getJsonStringFromDictionary:(id)dictionary
{
  v3 = [NSJSONSerialization dataWithJSONObject:dictionary options:1 error:0];
  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  return v4;
}

- (int64_t)_getRssiNearby:(id)nearby
{
  nearbyCopy = nearby;
  if (nearbyCopy)
  {
    v5 = [(NSMutableDictionary *)self->_wxDevices objectForKeyedSubscript:nearbyCopy];
    v6 = v5;
    if (v5)
    {
      bleDevice = [v5 bleDevice];
      rssi = [bleDevice rssi];
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E92D0(nearbyCopy);
      }

      rssi = 0;
    }
  }

  else
  {
    rssi = 0;
  }

  return rssi;
}

- (void)getSmartRoutingStateForDeviceAddress:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060A60;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(dispatchQueue, v7);
}

- (id)_getWxChipVersion:(unsigned int)version
{
  if (version - 8194 > 0x2D)
  {
    return @"NA";
  }

  else
  {
    return *(&off_1002B8C88 + version - 8194);
  }
}

- (unsigned)_getWxColorCode:(id)code
{
  codeCopy = code;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  wxDevices = self->_wxDevices;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100060D64;
  v16[3] = &unk_1002B87A8;
  v6 = codeCopy;
  v17 = v6;
  v18 = &v19;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v16];
  v7 = v20;
  if (*(v20 + 24) == 255)
  {
    connectedDevices = self->_connectedDevices;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100060EDC;
    v13[3] = &unk_1002B7EE0;
    v14 = v6;
    v15 = &v19;
    [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v13];

    v7 = v20;
  }

  if (self->_prefSmartRoutingUSBAudioDevice && *(v7 + 24) == 255)
  {
    v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v6];
    usbcColorCode = [v9 usbcColorCode];
    *(v20 + 24) = usbcColorCode;
    if (dword_1002F6778 <= 50)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        usbcColorCode = *(v20 + 24);
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _getWxColorCode:]", 50, "Found color %d from usbc ColorCode", usbcColorCode);
    }

LABEL_9:

    v7 = v20;
  }

  v11 = *(v7 + 24);

  _Block_object_dispose(&v19, 8);
  return v11;
}

- (id)_getWxFWVersion:(id)version
{
  versionCopy = version;
  wxFirmwareCache = self->_wxFirmwareCache;
  if (!wxFirmwareCache)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_wxFirmwareCache;
    self->_wxFirmwareCache = v6;

    wxFirmwareCache = self->_wxFirmwareCache;
  }

  v8 = [(NSMutableDictionary *)wxFirmwareCache objectForKeyedSubscript:versionCopy];

  if (v8)
  {
    firmwareVersion2 = [(NSMutableDictionary *)self->_wxFirmwareCache objectForKeyedSubscript:versionCopy];
  }

  else
  {
    [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          btAddressData = [v15 btAddressData];
          v17 = CUPrintNSDataAddress();

          if (versionCopy)
          {
            if (v17)
            {
              if ([versionCopy isEqualToString:v17])
              {
                firmwareVersion = [v15 firmwareVersion];
                v19 = [firmwareVersion isEqualToString:@"0.0.1"];

                if ((v19 & 1) == 0)
                {
                  firmwareVersion2 = [v15 firmwareVersion];
                  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _getWxFWVersion:]", 30, "Airpods fw version is %@, pairing record %@", firmwareVersion2, v15, v21);
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    firmwareVersion2 = 0;
LABEL_22:
  }

  return firmwareVersion2;
}

- (unsigned)_getWxProductID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          btAddressData = [v9 btAddressData];
          v11 = CUPrintNSDataAddress();

          if (v11 && ([dCopy isEqualToString:v11] & 1) != 0)
          {
            LODWORD(v6) = [v9 productID];

            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (void)_handleTipiScoreUpdate:(int)update
{
  score = self->_score;
  if (score == update)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      score = self->_score;
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTipiScoreUpdate:]", 30, "Tipi score changed from %d -> %d ", score, update);
  }

LABEL_6:
  self->_score = update;

  [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
}

- (void)_handleCallStateChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000614C8;
  v7[3] = &unk_1002B6D18;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleMediaPlayStateChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006170C;
  v7[3] = &unk_1002B6D18;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleMediaPauseStateChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006197C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleHighestAudioCategoryChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061C10;
  v7[3] = &unk_1002B6D18;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)handleHealthKitDataWritePropertyToggled:(id)toggled
{
  toggledCopy = toggled;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061E50;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = toggledCopy;
  v6 = toggledCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleFitnessPlusDRServerTeardown
{
  dataRelayAvailableServerSet = self->_dataRelayAvailableServerSet;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100061F28;
  v3[3] = &unk_1002B85D0;
  v3[4] = self;
  [(NSMutableDictionary *)dataRelayAvailableServerSet enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_determineHRMCapabilityOfDevice:(id)device
{
  btAddress = [device btAddress];
  v4 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithBluetoothAddress:?];
  heartRateMonitorCapability = [v4 heartRateMonitorCapability];
  healthKitDataWriteAllowed = [v4 healthKitDataWriteAllowed];
  v7 = healthKitDataWriteAllowed == 1;
  if ([v4 productID] == 8221)
  {
    heartRateMonitorEnabled = [v4 heartRateMonitorEnabled];
    v7 = healthKitDataWriteAllowed == 1 && heartRateMonitorEnabled == 1;
  }

  v10 = (heartRateMonitorCapability == 2) & v7;
  v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
  v12 = v11;
  if (v11)
  {
    [v11 setIsHRMCapable:v10];
  }

  else if (v10 & 1 | !self->_specificHRMDeviceChosenForFitnessPlus)
  {
    if (!self->_specificHRMDeviceChosenForFitnessPlus)
    {
      [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _handleFitnessPlusDRServerTeardown];
  }
}

- (void)_handleHRMSessionChanged:(BOOL)changed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062170;
  v4[3] = &unk_1002B67F0;
  changedCopy = changed;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)_handleMediaServerConnectionDied:(id)died
{
  [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStopped];

  [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStarted];
}

- (void)_handleHijackBlockingwithDevice:(id)device
{
  deviceCopy = device;
  if (self->_prefSmartRoutingBlockHijackWindowinSeconds)
  {
    hijackBackOffTimer = self->_hijackBackOffTimer;
    if (hijackBackOffTimer)
    {
      v6 = hijackBackOffTimer;
      dispatch_source_cancel(v6);
      v7 = self->_hijackBackOffTimer;
      self->_hijackBackOffTimer = 0;
    }

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v9 = self->_hijackBackOffTimer;
    self->_hijackBackOffTimer = v8;

    self->_hijackBackoffCount = 0;
    v10 = self->_hijackBackOffTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10006247C;
    handler[3] = &unk_1002B6CF0;
    handler[4] = v8;
    handler[5] = self;
    v11 = deviceCopy;
    v16 = v11;
    dispatch_source_set_event_handler(v10, handler);
    v12 = dispatch_time(0x8000000000000000, 1000000000 * self->_prefSmartRoutingBlockHijackWindowinSeconds);
    dispatch_source_set_timer(self->_hijackBackOffTimer, v12, 1000000000 * self->_prefSmartRoutingBlockHijackWindowinSeconds, 0x3B9ACA00uLL);
    dispatch_activate(self->_hijackBackOffTimer);
    v13 = mach_absolute_time();
    v14 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v11];
    [v14 setHijackBackoffTicks:v13];

    self->_hijackBackOffInitiator = 1;
    [(BTSmartRoutingDaemon *)self _updateLocalAudioCategory:self->_localDeviceAudioCategory];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E95B8();
    }
  }
}

- (void)_handlePairedWatchStatusDidChange
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062708;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_takeOwnershipOnPhone:(BOOL)phone
{
  phoneCopy = phone;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003918;
  v15 = sub_100003838;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062994;
  v10[3] = &unk_1002B6ED8;
  v10[4] = self;
  v10[5] = &v11;
  v5 = objc_retainBlock(v10);
  if (phoneCopy && ([(BTSmartRoutingDaemon *)self workoutWx], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _hrmEnabledDeviceEligibleToRoute];
  }

  else
  {
    _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _getInEarSrWxDevice];
  }

  v8 = _hrmEnabledDeviceEligibleToRoute;
  if (_hrmEnabledDeviceEligibleToRoute)
  {
    if ([_hrmEnabledDeviceEligibleToRoute otherTipiDeviceIsWatch])
    {
      [(BTSmartRoutingDaemon *)self _takeOwnershipFromWatchForDevice:v8];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v8];
    }
  }

  else
  {
    v9 = v12[5];
    v12[5] = @"Couldn't find inEar Wx";
  }

  (v5[2])(v5);
  _Block_object_dispose(&v11, 8);
}

- (void)_takeOwnershipFromWatchForDevice:(id)device
{
  deviceCopy = device;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100003918;
  v22 = sub_100003838;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100062DA4;
  v17[3] = &unk_1002B6ED8;
  v17[4] = self;
  v17[5] = &v18;
  v5 = objc_retainBlock(v17);
  if ([deviceCopy proactiveRoutingBackoff])
  {
    deviceAddress = v19[5];
    v19[5] = @"Proactive Routing backoff is in effect!";
    goto LABEL_12;
  }

  deviceAddress = [deviceCopy deviceAddress];
  v7 = [[NSString alloc] initWithFormat:@"Already routed: %@", deviceAddress];
  if ([deviceCopy routed])
  {
    v12 = v19;
    v13 = v7;
LABEL_19:
    v7 = v13;
    v15 = v12[5];
    v12[5] = v13;
    goto LABEL_20;
  }

  if ([deviceCopy otherTipiDeviceIsWatch])
  {
    otherTipiDeviceBTAddress = [deviceCopy otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      otherTipiAudioCategory = [deviceCopy otherTipiAudioCategory];
      v10 = [[NSString alloc] initWithFormat:@"The other Tipi device is streaming, audioCategory %u", objc_msgSend(deviceCopy, "otherTipiAudioCategory")];

      if (otherTipiAudioCategory < 0x65)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _takeOwnershipFromWatchForDevice:]", 30, "TakeOwnershipFromWatchForDevice: Taking the route");
        }

        self->_proactiveRoutingInProgress = 1;
        v11 = [NSString stringWithFormat:@"%@%@", deviceAddress, @"-tacl"];
        [(BTSmartRoutingDaemon *)self _smartRoutingChangeRoute:v11];

        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:&off_1002CBDB0 andWxAddress:deviceAddress andOtherAddress:0];
        [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:deviceAddress andType:12];
        goto LABEL_11;
      }

      v12 = v19;
      v13 = v10;
      goto LABEL_19;
    }

    v14 = v19;
    v15 = v19[5];
    v16 = @"Not in Tipi";
  }

  else
  {
    v14 = v19;
    v15 = v19[5];
    v16 = @"Other tipi device is not watch";
  }

  v14[5] = v16;
LABEL_20:

  v10 = v7;
LABEL_11:

LABEL_12:
  (v5[2])(v5);

  _Block_object_dispose(&v18, 8);
}

- (void)_handleProactiveRoutingRouteCheck:(id)check
{
  checkCopy = check;
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  if (([_getCurrentRoute isEqualToString:@"Bluetooth"] & 1) == 0)
  {
    v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:checkCopy];
    if (v5)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleProactiveRoutingRouteCheck:]", 30, "ProactiveRouting: Backoff proactive routing for %@ current route %@", checkCopy, _getCurrentRoute);
      }

      [v5 setProactiveRoutingBackoff:1];
    }
  }
}

- (void)_handleSmartRoutingDisabled:(id)disabled
{
  disabledCopy = disabled;
  if (disabledCopy)
  {
    v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:disabledCopy];
    if (v5)
    {
      [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
      _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
      otherTipiDeviceBTAddress = [v5 otherTipiDeviceBTAddress];
      v8 = [(NSMutableDictionary *)self->_connectedDevicesInEarCache objectForKeyedSubscript:disabledCopy];
      bOOLValue = [v8 BOOLValue];

      v10 = [(BTSmartRoutingDaemon *)self _isOtherTipiDeviceBeforeTrain:otherTipiDeviceBTAddress withIOS:16 withMacOS:13 withWatchOS:0 otherTipiDeviceIsWatch:0];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9740(v5, bOOLValue, v10, otherTipiDeviceBTAddress);
      }

      otherTipiDeviceIsWatch = [v5 otherTipiDeviceIsWatch];
      if (otherTipiDeviceIsWatch)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (otherTipiDeviceIsWatch = _LogCategory_Initialize(), otherTipiDeviceIsWatch))
          {
            sub_1001E97E8(otherTipiDeviceIsWatch, v12, v13);
          }
        }
      }

      else
      {
        routed = [v5 routed];
        if (routed & 1 | ((bOOLValue & 1) == 0) | v10 & 1)
        {
          [(BTSmartRoutingDaemon *)self _disconnectOtherTipiDevice:disabledCopy];
        }

        else
        {
          if (dword_1002F6778 <= 30)
          {
            if (dword_1002F6778 != -1 || (routed = _LogCategory_Initialize(), routed))
            {
              sub_1001E97CC(routed, v15, v16);
            }
          }

          v21 = @"disableSmartRouting";
          v22 = _myBluetoothAddressString;
          v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          otherTipiDeviceBTAddress2 = [v5 otherTipiDeviceBTAddress];
          [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v17 andWxAddress:disabledCopy andOtherAddress:otherTipiDeviceBTAddress2];

          isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];

          if (!isFirstConnectionAfterSREnable)
          {
            v20 = objc_alloc_init(NSMutableDictionary);
            [(SRSourceDevice *)self->_sourceDevice setIsFirstConnectionAfterSREnable:v20];
          }

          [(BTSmartRoutingDaemon *)self _setIsFirstConnentionAfterSREnable:1 forDevice:disabledCopy];
        }
      }
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9804(disabledCopy);
    }
  }
}

- (void)_handleTriangleRecoveryInitiated:(id)initiated
{
  initiatedCopy = initiated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000632C4;
  v7[3] = &unk_1002B6D18;
  v8 = initiatedCopy;
  selfCopy = self;
  v6 = initiatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleDataRelayStartForWorkout
{
  _connectedHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _connectedHRMEnabledDevice];
  if (_connectedHRMEnabledDevice)
  {
    v3 = _connectedHRMEnabledDevice;
    [_connectedHRMEnabledDevice checkDataRelayServerPublishEligibility];
    _connectedHRMEnabledDevice = v3;
  }
}

- (void)_handleWorkoutSessionStart
{
  [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:1];
  if (GestaltGetDeviceClass() == 1 || (DeviceClass = GestaltGetDeviceClass(), DeviceClass == 3))
  {
    [(BTSmartRoutingDaemon *)self _routedHRMEnabledDevice];
    if (objc_claimAutoreleasedReturnValue())
    {
      sub_1001E9914();
      v11 = v23;
      goto LABEL_33;
    }

    _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _hrmEnabledDeviceEligibleToRoute];
    if (!_hrmEnabledDeviceEligibleToRoute)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (_hrmEnabledDeviceEligibleToRoute = _LogCategory_Initialize(), _hrmEnabledDeviceEligibleToRoute))
        {
          sub_1001E9A40(_hrmEnabledDeviceEligibleToRoute, v7, v8);
        }
      }

      [(BTSmartRoutingDaemon *)self _handleDataRelayStartForWorkout];
      v11 = 0;
      goto LABEL_33;
    }

    v9 = _hrmEnabledDeviceEligibleToRoute;
    v21 = _hrmEnabledDeviceEligibleToRoute;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v9 = v21, v10))
      {
        sub_1001E9988(v9);
        v9 = v21;
      }
    }

    if ([v9 otherTipiDeviceIsWatch])
    {
      [(BTSmartRoutingDaemon *)self _takeOwnershipFromWatchForDevice:v22];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v22];
    }

    deviceAddress = [v22 deviceAddress];
    v13 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceAddress];
    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier = [activeHRMDevice identifier];
    identifier2 = [v13 identifier];
    v17 = identifier;
    v18 = identifier2;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if ((v17 != 0) == (v18 == 0))
      {
      }

      else
      {
        v20 = [v17 isEqual:v18];

        if (v20)
        {
          goto LABEL_32;
        }
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E99E4(v13);
      }

      [(SRSourceDevice *)self->_sourceDevice setActiveHRMDevice:v13];
      activeHRMDevice = [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:deviceAddress];
      [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:activeHRMDevice withSREnabled:[(BTSmartRoutingDaemon *)self isSREnabled]];
    }

LABEL_32:
    v11 = v22;
LABEL_33:

    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
    {
      sub_1001E98F8(DeviceClass, v4, v5);
    }
  }

  [(BTSmartRoutingDaemon *)self _startWxDiscoveryForWorkout];

  [(BTSmartRoutingDaemon *)self _handleDataRelayStartForWorkout];
}

- (void)_handleWorkoutSessionStop
{
  [(BTSmartRoutingDaemon *)self setWorkoutWx:0];

  [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:0];
}

- (void)_hijackBackoffReset:(id)reset withReason:(id)reason
{
  resetCopy = reset;
  reasonCopy = reason;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _hijackBackoffReset:withReason:]", 30, "Hijackblocking: Reset hijackBackOffTimer for wx %@ with reason %@", resetCopy, reasonCopy);
  }

  [(BTSmartRoutingDaemon *)self _submitHijackBlockMetric:resetCopy withReason:reasonCopy];
  hijackBackOffTimer = self->_hijackBackOffTimer;
  if (hijackBackOffTimer)
  {
    v8 = hijackBackOffTimer;
    dispatch_source_cancel(v8);
    v9 = self->_hijackBackOffTimer;
    self->_hijackBackOffTimer = 0;
  }

  v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:resetCopy];
  [v10 setHijackBackoffTicks:0];

  self->_hijackBackOffInitiator = 0;
  [(BTSmartRoutingDaemon *)self _sendAudioCategory:resetCopy withAudioCategory:self->_localDeviceAudioCategory];
  if (![reasonCopy isEqualToString:@"wxDisconnected"] || objc_msgSend(reasonCopy, "isEqualToString:", @"wxDisconnected") && -[NSMutableDictionary count](self->_connectedDevices, "count"))
  {
    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  }
}

- (BOOL)_isAnyWxStream
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100063AB4;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isEligibleForTipiV2:(id)v2 firstDeviceTipiScore:(int)score secondDeviceTipiScore:(int)tipiScore currentDeviceScore:(int)deviceScore sourceDeviceCount:(unsigned int)count isOnDemandConnect:(BOOL)connect address:(id)address lastConnectedHost:(id)self0
{
  connectCopy = connect;
  v2Copy = v2;
  addressCopy = address;
  hostCopy = host;
  v19 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:addressCopy];
  v20 = v19;
  if (v19)
  {
    countCopy = count;
    address = [v19 address];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      if (score > 0xF)
      {
        v22 = "?";
      }

      else
      {
        v22 = off_1002B8F50[score];
      }

      v38 = v22;
      if (tipiScore > 0xF)
      {
        v24 = "?";
      }

      else
      {
        v24 = off_1002B8F50[tipiScore];
      }

      v37 = v24;
      v40 = hostCopy;
      tipiScoreCopy = tipiScore;
      if (deviceScore > 0xF)
      {
        v25 = "?";
      }

      else
      {
        v25 = off_1002B8F50[deviceScore];
      }

      v36 = v25;
      isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
      v27 = [isFirstConnectionAfterSREnable objectForKeyedSubscript:address];
      if (connectCopy)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      audioState = [v20 audioState];
      if (audioState > 3)
      {
        v30 = "?";
      }

      else
      {
        v30 = off_1002B8ED0[audioState];
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _isEligibleForTipiV2:firstDeviceTipiScore:secondDeviceTipiScore:currentDeviceScore:sourceDeviceCount:isOnDemandConnect:address:lastConnectedHost:]", 30, "Evaluator: Evaluating Tipi2.0 eligibility: address %@, identifier %@, fwVersion %@, tipiScore1 %s, tipiScore2 %s, inScore %s, first connection after SR enable %@, connectForCallA2DP %s, wx streaming state %s", address, addressCopy, v2Copy, v38, v37, v36, v27, v28, v30);

      hostCopy = v40;
      tipiScore = tipiScoreCopy;
      if (connectCopy)
      {
        goto LABEL_38;
      }
    }

    else if (connectCopy)
    {
      goto LABEL_38;
    }

    tipiScoreCopy2 = tipiScore;
    isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
    v33 = [isFirstConnectionAfterSREnable2 objectForKey:address];

    if (!v33)
    {
      if (v2Copy && [@"5A187" compare:v2Copy options:64] == -1 && -[BTSmartRoutingDaemon _isForceTipiv2](self, "_isForceTipiv2"))
      {
        if (countCopy == 1)
        {
          v23 = (score - 1) < 7;
          if (score == 12)
          {
            v23 = [v20 outOfCaseTime] <= 2 && objc_msgSend(v20, "audioState") == 0;
          }

          if (GestaltGetDeviceClass() == 1)
          {
            v23 |= [(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforConnectionCheck:hostCopy];
          }
        }

        else
        {
          v23 = 0;
          if ((score - 1) <= 6 && countCopy == 2)
          {
            v23 = tipiScoreCopy2 == 9 || (tipiScoreCopy2 - 1) < 7;
          }
        }

        goto LABEL_39;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9A5C();
      }
    }

LABEL_38:
    v23 = 0;
LABEL_39:

    goto LABEL_40;
  }

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E9AB4(addressCopy);
  }

  v23 = 0;
LABEL_40:

  return v23 & 1;
}

- (BOOL)_isEligibleForPreemptiveBanner:(BOOL)banner firstPreemptiveBanner:(BOOL)preemptiveBanner inEarState:(BOOL)state srDeviceCount:(unint64_t)count audioState:(int64_t)audioState inAddress:(id)address
{
  preemptiveBannerCopy = preemptiveBanner;
  addressCopy = address;
  if (banner || preemptiveBannerCopy)
  {
    v19 = @"Preemptive Banner shown already";
    goto LABEL_14;
  }

  v14 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy];

  if (v14)
  {
    v19 = @"Device already connected";
    goto LABEL_14;
  }

  if ([(NSNumber *)self->_localDeviceAudioCategory intValue]>= 201 && ![(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress])
  {
    sub_1001E9AF4(&self->_localDeviceAudioCategory, self);
    goto LABEL_15;
  }

  if (self->_playbackStart && !self->_playbackStartTimer)
  {
    v19 = @"Playback start timer has expired";
LABEL_14:
    [(BTSmartRoutingDaemon *)self _logPreemptiveBannerEvalError:v19];
LABEL_15:
    v17 = 0;
    goto LABEL_12;
  }

  if (!state)
  {
    v19 = @"inEar state is NO";
    goto LABEL_14;
  }

  if (audioState >= 2)
  {
    sub_1001E9B68(audioState);
    goto LABEL_15;
  }

  v15 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:addressCopy];
  reconnectionState = [v15 reconnectionState];

  if (reconnectionState == 1)
  {
    v19 = @"Budswap reconnection";
    goto LABEL_14;
  }

  v17 = 1;
LABEL_12:

  return v17;
}

- (BOOL)_isInEarToOutOfEar:(id)ear
{
  earCopy = ear;
  btAddressData = [earCopy btAddressData];
  v6 = CUPrintNSDataAddress();

  v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v6];
  v8 = -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [v7 productID]);

  v9 = (v8 & 1) == 0 && -[BTSmartRoutingDaemon _inEarConnectedCheck:](self, "_inEarConnectedCheck:", v6) && [earCopy primaryPlacement] != 1 && objc_msgSend(earCopy, "secondaryPlacement") != 1;
  return v9;
}

- (BOOL)isInAnyTipi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000641A8;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isInTipi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000643F4;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_inEarConnectedCheck:(id)check
{
  checkCopy = check;
  p_connectedDevices = &self->_connectedDevices;
  v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:checkCopy];

  if (v6)
  {
    v10 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:checkCopy];
    if (-[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [v10 productID]))
    {
      v11 = 1;
    }

    else
    {
      v12 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
      if ([v12 primaryPlacement] == 1)
      {
        v11 = 1;
      }

      else
      {
        v13 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
        if ([v13 secondaryPlacement] == 1)
        {
          v11 = 1;
        }

        else
        {
          v14 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
          if ([v14 primaryPlacement] == 7)
          {
            v11 = 1;
          }

          else
          {
            v15 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
            v11 = [v15 secondaryPlacement] == 7;
          }
        }
      }
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9C08();
    }
  }

  else
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_1001E9CF4(v7, v8, v9);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)_inEarNearbyCheck:(id)check
{
  checkCopy = check;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  wxDevices = self->_wxDevices;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100064784;
  v12 = &unk_1002B87D0;
  v6 = checkCopy;
  v13 = v6;
  selfCopy = self;
  v15 = &v21;
  v16 = &v17;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:&v9];
  if ((v18[3] & 1) == 0 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _inEarNearbyCheck:]", 90, "SmartRouting have not found nearby Wx device, assume routing is NO", v9, v10, v11, v12);
  }

  v7 = *(v22 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v7;
}

- (BOOL)_isAnyConnectedWxInEarCheck
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectedDevices = self->_connectedDevices;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064A30;
  v5[3] = &unk_1002B7EE0;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isAllWxEnabledInEarDetection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064BC0;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_connectedHRMEnabledDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064D0C;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_nearbyHRMEnabledDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064ED0;
  v5[3] = &unk_1002B87F8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_nearbyHRMDeviceEligibleToConnectTo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E1F34;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_hrmEnabledDeviceEligibleToRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100065160;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_routedHRMEnabledDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100003918;
  v11 = sub_100003838;
  v12 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006534C;
  v6[3] = &unk_1002B7DF0;
  v6[4] = &v7;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v6];
  [(BTSmartRoutingDaemon *)self setWorkoutWx:v8[5]];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_selectHRMCapableDeviceFromDiscoveredDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E2000;
  v5[3] = &unk_1002B87F8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_isInEarDetectionDisabled:(id)disabled
{
  disabledCopy = disabled;
  v5 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:disabledCopy];
  v6 = v5;
  if (v5 && (-[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [v5 productID]) || objc_msgSend(v6, "primaryPlacement") == 7 || objc_msgSend(v6, "secondaryPlacement") == 7))
  {
    if (dword_1002F6778 > 30)
    {
      v7 = 1;
    }

    else
    {
      if (dword_1002F6778 == -1)
      {
        v7 = 1;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }
      }

      else
      {
        v7 = 1;
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _isInEarDetectionDisabled:]", 30, "Device %@ IED disabled", disabledCopy);
    }
  }

  else if (dword_1002F6778 > 30)
  {
    v7 = 0;
  }

  else
  {
    if (dword_1002F6778 == -1)
    {
      v7 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0;
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _isInEarDetectionDisabled:]", 30, "Device %@ IED enabled", disabledCopy);
  }

LABEL_18:

  return v7;
}

- (BOOL)_isManualConnection:(id)connection
{
  v3 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:connection];
  v4 = v3;
  if (v3)
  {
    v5 = ([v3 deviceFlags] >> 18) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isMyAddress:(id)address
{
  addressCopy = address;
  v7 = addressCopy;
  if (addressCopy)
  {
    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    [_myBluetoothAddressString UTF8String];
    v9 = NSDataWithHex();
    v10 = [v9 length];
    if (v10 == 6)
    {
      bytes = [v9 bytes];
      bytes2 = [v7 bytes];
      v16 = *bytes2 == *(bytes + 3) && *(bytes2 + 2) == bytes[5];
    }

    else
    {
      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          sub_1001E9F68(v10, v11, v12);
        }
      }

      v16 = 0;
    }
  }

  else
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (addressCopy = _LogCategory_Initialize(), addressCopy))
      {
        sub_1001E9F84(addressCopy, v5, v6);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)_isOtherTipiDeviceBeforeTrain:(id)train withIOS:(unsigned int)s withMacOS:(unsigned int)oS withWatchOS:(unsigned int)watchOS otherTipiDeviceIsWatch:(BOOL)watch
{
  watchCopy = watch;
  trainCopy = train;
  if (GestaltGetDeviceClass() == 6 || GestaltGetDeviceClass() == 1 && watchCopy)
  {
    NRRegistry = self->_NRRegistry;
    if (!NRRegistry)
    {
      v14 = +[NRPairedDeviceRegistry sharedInstance];
      v15 = self->_NRRegistry;
      self->_NRRegistry = v14;

      NRRegistry = self->_NRRegistry;
    }

    getActivePairedDevice = [(NRPairedDeviceRegistry *)NRRegistry getActivePairedDevice];
    v17 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
    v18 = [v17 componentsSeparatedByString:@"."];
    v19 = [v18 objectAtIndex:0];
    integerValue = [v19 integerValue];

    v21 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemName];
    v22 = [v21 isEqualToString:@"iPhone OS"];
    if (integerValue < s)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    LODWORD(v24) = v23 | [v21 isEqualToString:@"Watch OS"] & (integerValue < watchOS);

    goto LABEL_10;
  }

  if (!trainCopy)
  {
LABEL_26:
    LOBYTE(v24) = 0;
    goto LABEL_11;
  }

  v24 = +[CBIDSManager sharedInstance];
  getActivePairedDevice = [v24 idsDeviceForBTAddress:trainCopy];

  LOBYTE(v24) = getActivePairedDevice != 0;
  if (!getActivePairedDevice)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v26 = _LogCategory_Initialize(), v26))
      {
        sub_1001E9FA0(v26, v27, v28);
      }
    }

    goto LABEL_10;
  }

  productName = [getActivePairedDevice productName];
  if ([productName isEqualToString:@"iPhone OS"])
  {
    objc_msgSend_operatingSystemVersion(getActivePairedDevice);
    v30 = v34 < s;
  }

  else
  {
    v30 = 0;
  }

  modelIdentifier = [getActivePairedDevice modelIdentifier];
  if ([modelIdentifier containsString:@"Mac"])
  {
    objc_msgSend_operatingSystemVersion(getActivePairedDevice);
    v32 = v33 < oS;
  }

  else
  {
    v32 = 0;
  }

  if (!v30 && !v32)
  {

    goto LABEL_26;
  }

LABEL_10:

LABEL_11:
  return v24;
}

- (BOOL)_isUSBPluggedIn:(id)in
{
  inCopy = in;
  v7 = inCopy;
  if (inCopy)
  {
    v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:inCopy];
    isUSBPlugIn = [v8 isUSBPlugIn];
  }

  else
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (inCopy = _LogCategory_Initialize(), inCopy))
      {
        sub_1001E9FBC(inCopy, v5, v6);
      }
    }

    isUSBPlugIn = 0;
  }

  return isUSBPlugIn;
}

- (void)_iPhoneScreenOnPowerEvent
{
  [(BTSmartRoutingDaemon *)self _update];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E9FD8(self);
  }

  trailingAccessoryText = [(BTBannerUISession *)self->_uiSmartRoutingBanner trailingAccessoryText];
  v4 = [trailingAccessoryText isEqualToString:@"Reverse"];

  if (v4)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001EA050(v5, v6, v7);
      }
    }

    goto LABEL_33;
  }

  centerContentItemsText = [(BTBannerUISession *)self->_uiSmartRoutingBanner centerContentItemsText];
  v9 = [centerContentItemsText isEqualToString:@"Connected"];

  if (!v9)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_100003918;
    v43 = sub_100003838;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100003918;
    v37 = sub_100003838;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100065F48;
    v28[3] = &unk_1002B7E18;
    v28[4] = self;
    v28[5] = &v39;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v28];
    if (!v40[5] || (-[NSMutableDictionary objectForKeyedSubscript:](self->_smartRoutingWxDeviceMap, "objectForKeyedSubscript:"), v14 = objc_claimAutoreleasedReturnValue(), [v14 deviceName], v15 = objc_claimAutoreleasedReturnValue(), v16 = v34[5], v34[5] = v15, v16, v14, -[NSMutableDictionary objectForKeyedSubscript:](self->_smartRoutingWxDeviceMap, "objectForKeyedSubscript:", v40[5]), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "productID"), *(v30 + 6) = v18, v17, (v19 = v40[5]) == 0))
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _iPhoneScreenOnPowerEvent]", 30, "No inEar SR device");
      }

      connectedDevices = self->_connectedDevices;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100066098;
      v27[3] = &unk_1002B8820;
      v27[4] = self;
      v27[5] = &v39;
      v27[6] = &v33;
      v27[7] = &v29;
      [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v27];
      v19 = v40[5];
    }

    v21 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v19];
    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = [(BTSmartRoutingDaemon *)self _isEligibleForPreemptiveBannerUponUnlock:v40[5]];
    }

    if (!v40[5] || !v22)
    {
      goto LABEL_32;
    }

    v23 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:?];
    if ([v23 hijackBackoffTicks])
    {
      isBTRoute = self->_isBTRoute;

      if (!isBTRoute)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    dispatchQueueAVSys = self->_dispatchQueueAVSys;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000661E4;
    v26[3] = &unk_1002B8848;
    v26[4] = self;
    v26[5] = &v39;
    v26[6] = &v33;
    v26[7] = &v29;
    dispatch_async(dispatchQueueAVSys, v26);
LABEL_32:
    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
    goto LABEL_33;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
    {
      sub_1001EA034(v10, v11, v12);
    }
  }

LABEL_33:
  if (self->_routeChangeDueToProactiveRouting && !self->_temporaryOverrideTimer)
  {
    [(BTSmartRoutingDaemon *)self _sendNowPlayingTemporaryOverrideIfNeeded:1];
  }

  if (!self->_uiSmartRoutingBanner && self->_prefSmartRoutingInUseBanner)
  {
    [(BTSmartRoutingDaemon *)self _evaluatorRunInUseBanner:0];
  }
}

- (BOOL)_lastConnectIsWatchCheck:(id)check
{
  checkCopy = check;
  v5 = checkCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (checkCopy)
  {
    nearbyInfoDevices = self->_nearbyInfoDevices;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000665C4;
    v9[3] = &unk_1002B87A8;
    v10 = checkCopy;
    v11 = &v12;
    [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

- (void)logConnectionBackoffReason:(id)reason wxAddress:(id)address
{
  reasonCopy = reason;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000667F4;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = reasonCopy;
  v13 = addressCopy;
  v9 = addressCopy;
  v10 = reasonCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_logConnectionBackoffReason:(id)reason wxAddress:(id)address
{
  if (address)
  {
    [(BTSmartRoutingDaemon *)self _logEvalWxError:address withError:reason];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _logEvalError:reason];
  }
}

- (void)_logEvalError:(id)error
{
  [(SRSourceDevice *)self->_sourceDevice setEvalResult:error];
  v4 = mach_absolute_time();
  sourceDevice = self->_sourceDevice;

  [(SRSourceDevice *)sourceDevice setEvalTicks:v4];
}

- (void)_logPreemptiveBannerEvalError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), errorCopy = v6, v5))
    {
      sub_1001EA1A4(errorCopy);
      errorCopy = v6;
    }
  }

  [(SRSourceDevice *)self->_sourceDevice setEvalPreemptiveBannerResult:errorCopy];
}

- (void)_logEvalWxError:(id)error withError:(id)withError
{
  errorCopy = error;
  withErrorCopy = withError;
  if (errorCopy)
  {
    evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];

    if (!evalWxMap)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      [(SRSourceDevice *)self->_sourceDevice setEvalWxMap:v8];
    }

    evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v10 = [evalWxMap2 objectForKeyedSubscript:errorCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(SRWxInfo);
    }

    [(SRWxInfo *)v10 setLastEvalResult:withErrorCopy];
    [(SRWxInfo *)v10 setLastEvalTicks:mach_absolute_time()];
    evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    [evalWxMap3 setObject:v10 forKeyedSubscript:errorCopy];
  }
}

- (double)_lowestBatteryInfoForCBDevice:(id)device
{
  deviceCopy = device;
  if (-[BTSmartRoutingDaemon _bluetoothProductIDNoUTP:](self, "_bluetoothProductIDNoUTP:", [deviceCopy productID]))
  {
    [deviceCopy batteryLevelMain];
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      [deviceCopy batteryLevelMain];
      v7 = v6;
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA2A4(v7);
      }
    }

    goto LABEL_32;
  }

  [deviceCopy batteryLevelLeft];
  if (v8 != 0.0)
  {
    [deviceCopy batteryLevelRight];
    if (v9 != 0.0)
    {
      [deviceCopy batteryLevelLeft];
      v11 = v10;
      [deviceCopy batteryLevelRight];
      if (v11 > v12)
      {
        [deviceCopy batteryLevelRight];
        v7 = v13;
        if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        goto LABEL_13;
      }

      [deviceCopy batteryLevelLeft];
      v7 = v18;
      if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

LABEL_24:
      sub_1001EA224(v7);
      goto LABEL_32;
    }
  }

  [deviceCopy batteryLevelRight];
  if (v14 != 0.0)
  {
    [deviceCopy batteryLevelRight];
    v7 = v15;
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_32;
    }

LABEL_13:
    sub_1001EA264(v7);
    goto LABEL_32;
  }

  [deviceCopy batteryLevelLeft];
  if (v16 != 0.0)
  {
    [deviceCopy batteryLevelLeft];
    v7 = v17;
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v7 = 0.0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA1E4();
  }

LABEL_32:

  return v7;
}

- (double)_lowestBatteryInfoForSFDevice:(id)device
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  batteryInfo = [device batteryInfo];
  v5 = [batteryInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = 1.1;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(batteryInfo);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        [v10 batteryLevel];
        v12 = v11;
        if ([(BTSmartRoutingDaemon *)self _checkValidBatteryValue:v10])
        {
          v13 = v12 < v8;
        }

        else
        {
          v13 = 0;
        }

        if (v13 && v12 != 0.0)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EA2E4(v10, v12);
          }

          v8 = v12;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v14 = [batteryInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
  }

  else
  {
    v8 = 1.1;
  }

  return v8;
}

- (void)_nearbyDeviceInfoTriangleRecoveryTimer
{
  v3 = dispatch_time(0, 120000000000);
  prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
  if (prefSmartRoutingWatchTriangleMagnet)
  {
    v3 = dispatch_time(0x8000000000000000, 1000000000 * prefSmartRoutingWatchTriangleMagnet);
    v7 = v3;
  }

  else
  {
    v7 = v3;
    LODWORD(prefSmartRoutingWatchTriangleMagnet) = 120;
  }

  if (self->_nearbyInfoDevicesTriangleRecoveryTimer)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001EA35C(v3, v4, v5);
      }
    }
  }

  else
  {
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    self->_nearbyInfoDevicesTriangleRecoveryTimer = v8;

    v10 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100066F54;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA378(prefSmartRoutingWatchTriangleMagnet);
    }

    dispatch_source_set_timer(self->_nearbyInfoDevicesTriangleRecoveryTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_nearbyInfoDevicesTriangleRecoveryTimer);
  }
}

- (void)_nearbyDeviceInfoCheck
{
  if (self->_nearbyInfoDiscovery && !self->_tipiElectionInProgress)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if ([(NSMutableDictionary *)self->_nearbyInfoDevices count]== 1)
    {
      nearbyInfoDevices = self->_nearbyInfoDevices;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000672C0;
      v9[3] = &unk_1002B7DC8;
      v9[4] = &v10;
      [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
    }

    if (*(v11 + 24) == 1)
    {
      smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100067368;
      v8[3] = &unk_1002B8168;
      v8[4] = self;
      [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v8];
    }

    nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    if (nearbyInfoDevicesTriangleRecoveryTimer)
    {
      v6 = nearbyInfoDevicesTriangleRecoveryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
      self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (id)_nearbyMacAddressTranslate:(id)translate
{
  translateCopy = translate;
  v6 = translateCopy;
  if (translateCopy)
  {
    v7 = translateCopy;
    v8 = +[CBIDSManager sharedInstance];
    v9 = [v8 publicAddressForIDSDevice:v7];

    if (v9)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA47C(v9);
      }

      [v9 UTF8String];
      v10 = NSDataWithHex();
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA4BC();
      }
    }

    else
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA4FC(v7);
      }

      v11 = 0;
    }
  }

  else
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (translateCopy = _LogCategory_Initialize(), translateCopy))
      {
        sub_1001EA53C(translateCopy, v4, v5);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (int)_nearbyDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy containsString:@"iPhone"])
  {
    v4 = 1;
  }

  else if ([typeCopy containsString:@"iPad"])
  {
    v4 = 2;
  }

  else if ([typeCopy containsString:@"Mac"])
  {
    v4 = 3;
  }

  else if ([typeCopy containsString:@"Watch"])
  {
    v4 = 4;
  }

  else if ([typeCopy containsString:@"iPod"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_notifyOtherTipiDeviceTipiScoreChanged:(int)changed andNewScore:(int)score
{
  if (self->_prefProactiveOwnershipArbitration)
  {
    v7 = score | changed;
    if (!(score | changed))
    {
      goto LABEL_9;
    }

    if ([(BTSmartRoutingDaemon *)self _isInTipi])
    {
      nearbyDeviceNotificationTimer = self->_nearbyDeviceNotificationTimer;
      if (nearbyDeviceNotificationTimer)
      {
        v9 = nearbyDeviceNotificationTimer;
        dispatch_source_cancel(v9);
        v10 = self->_nearbyDeviceNotificationTimer;
        self->_nearbyDeviceNotificationTimer = 0;
      }

      if ((score - 1) < 2 || (changed - 1) <= 1)
      {
LABEL_9:

        [(BTSmartRoutingDaemon *)self _sendAudioScoreChanged:v7 == 0];
      }
    }
  }
}

- (void)_otherTipiDeviceTipiScoreChanged:(id)changed withOptions:(id)options
{
  optionsCopy = options;
  if (self->_prefProactiveOwnershipArbitration)
  {
    v23 = optionsCopy;
    v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:changed];
    v8 = NSDictionaryGetNSNumber();
    intValue = [v8 intValue];

    otherTipiDeviceAudioScore = [v7 otherTipiDeviceAudioScore];
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v12 = [v23 objectForKey:@"newTipi"];

    otherTipiDeviceBTAddress = [v7 otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA558(otherTipiDeviceAudioScore, intValue, v12 == 0, v11);
      }

      [v7 setOtherTipiDeviceAudioScore:intValue];
      if (intValue == 1)
      {
        if (otherTipiDeviceAudioScore != 1)
        {
          v14 = NSDictionaryGetNSNumber();
          intValue2 = [v14 intValue];

          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EA650(v7, self, intValue2);
          }

          v16 = mach_absolute_time();
          [v7 setOtherTipiDeviceIdleTick:v16 - SecondsToUpTicks()];
          if (v12)
          {
            [(BTSmartRoutingDaemon *)self _startHighActivityLevelTimer:1];
            [(SRStats *)self->_stats setProactiveRoutingTrigger:@"Tipi connection"];
          }
        }
      }

      else if (intValue >= 3)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EA5EC(intValue);
        }

        highActivityLevelTimer = self->_highActivityLevelTimer;
        if (highActivityLevelTimer)
        {
          v18 = highActivityLevelTimer;
          dispatch_source_cancel(v18);
          v19 = self->_highActivityLevelTimer;
          self->_highActivityLevelTimer = 0;
        }

        temporaryOverrideTimer = self->_temporaryOverrideTimer;
        if (temporaryOverrideTimer)
        {
          v21 = temporaryOverrideTimer;
          dispatch_source_cancel(v21);
          v22 = self->_temporaryOverrideTimer;
          self->_temporaryOverrideTimer = 0;
        }
      }
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA6E8(v11);
    }

    optionsCopy = v23;
  }
}

- (void)_postNotification:(const char *)notification
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA728(notification);
  }

  notify_post(notification);
}

- (void)_powerLogSmartRoutingScanStarted:(unsigned __int8)started
{
  if (self->_prefSmartRoutingEnabledPhase3)
  {
    startedCopy = started;
    Current = CFAbsoluteTimeGetCurrent();
    v9[0] = @"ScanStart";
    v8[0] = @"kEventType";
    v8[1] = @"kScanType";
    v5 = [NSNumber numberWithUnsignedChar:startedCopy];
    v9[1] = v5;
    v8[2] = @"timestamp";
    v6 = [NSNumber numberWithDouble:Current];
    v9[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

    PLLogRegisteredEvent();
  }
}

- (void)_powerLogSmartRoutingScanStopped:(unsigned __int8)stopped
{
  if (self->_prefSmartRoutingEnabledPhase3)
  {
    stoppedCopy = stopped;
    Current = CFAbsoluteTimeGetCurrent();
    v9[0] = @"ScanStop";
    v8[0] = @"kEventType";
    v8[1] = @"kScanType";
    v5 = [NSNumber numberWithUnsignedChar:stoppedCopy];
    v9[1] = v5;
    v8[2] = @"timestamp";
    v6 = [NSNumber numberWithDouble:Current];
    v9[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

    PLLogRegisteredEvent();
  }
}

- (void)_powerLogSmartIncomingConnection
{
  if (self->_prefSmartRoutingEnabledPhase3)
  {
    v4[0] = @"kIncomingLEPipe";
    v4[1] = @"timestamp";
    v5[0] = &__kCFBooleanTrue;
    v2 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    v5[1] = v2;
    v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

    PLLogRegisteredEvent();
  }
}

- (void)prewarmAudioAccessoriesForFitnessWorkout
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067DE0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_prewarmAudioAccessoriesForFitnessWorkout
{
  [(BTSmartRoutingDaemon *)self _routedHRMEnabledDevice];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_1001EA768();
LABEL_15:
    _nearbyHRMDeviceEligibleToConnectTo = v8;
    goto LABEL_10;
  }

  _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _hrmEnabledDeviceEligibleToRoute];
  if (_hrmEnabledDeviceEligibleToRoute)
  {
    v7 = _hrmEnabledDeviceEligibleToRoute;
    if ([_hrmEnabledDeviceEligibleToRoute otherTipiDeviceIsWatch])
    {
      [(BTSmartRoutingDaemon *)self _takeOwnershipFromWatchForDevice:v7];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v7];
    }

    _nearbyHRMDeviceEligibleToConnectTo = v7;
    goto LABEL_10;
  }

  activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];

  if (activeHRMDevice)
  {
    sub_1001EA7DC(&v8);
    goto LABEL_15;
  }

  _nearbyHRMDeviceEligibleToConnectTo = [(BTSmartRoutingDaemon *)self _nearbyHRMDeviceEligibleToConnectTo];
  if (_nearbyHRMDeviceEligibleToConnectTo)
  {
    v6 = _nearbyHRMDeviceEligibleToConnectTo;
    [(BTSmartRoutingDaemon *)self _evaluateNearbyHRMDevice:_nearbyHRMDeviceEligibleToConnectTo];

    _nearbyHRMDeviceEligibleToConnectTo = 0;
  }

LABEL_10:
}

- (void)_proactivelyTakeOwnership
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003918;
  v17 = sub_100003838;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000680E8;
  v12[3] = &unk_1002B6ED8;
  v12[4] = self;
  v12[5] = &v13;
  v3 = objc_retainBlock(v12);
  _getInEarSrWxDevice = [(BTSmartRoutingDaemon *)self _getInEarSrWxDevice];
  v5 = _getInEarSrWxDevice;
  if (!_getInEarSrWxDevice)
  {
    v8 = v14[5];
    v14[5] = @"Couldn't find inEar Wx";
    goto LABEL_9;
  }

  v6 = [_getInEarSrWxDevice otherTipiDeviceAudioScore] != 1 && objc_msgSend(v5, "otherTipiDeviceAudioScore") != 2 || objc_msgSend(v5, "otherTipiDeviceIdleTick") == 0;
  v7 = [[NSString alloc] initWithFormat:@"The other Tipi device is not idle, audioScore %d idleTick %llu", objc_msgSend(v5, "otherTipiDeviceAudioScore"), objc_msgSend(v5, "otherTipiDeviceIdleTick")];
  v8 = v7;
  if (v6)
  {
    v9 = v14;
    v10 = v7;
    v11 = v9[5];
    v9[5] = v10;
LABEL_13:

    goto LABEL_9;
  }

  if (self->_score <= 5)
  {
    v11 = v14[5];
    v14[5] = @"Audio score is not high";
    goto LABEL_13;
  }

  [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v5];
LABEL_9:

  (v3[2])(v3);
  _Block_object_dispose(&v13, 8);
}

- (void)_proactivelyTakeOwnershipOfDevice:(id)device
{
  deviceCopy = device;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100003918;
  v30 = sub_100003838;
  v31 = 0;
  deviceAddress = [deviceCopy deviceAddress];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100068644;
  v25[3] = &unk_1002B8870;
  v25[5] = self;
  v25[6] = &v26;
  v25[4] = deviceAddress;
  v6 = objc_retainBlock(v25);
  v24 = v6;
  v7 = [[NSString alloc] initWithFormat:@"Already has ownership: %@", deviceAddress];
  if ([deviceCopy hasOwnership])
  {
    v21 = v27;
    v22 = v7;
LABEL_30:
    v7 = v22;
    identifier = v21[5];
    v21[5] = v22;
    goto LABEL_26;
  }

  otherTipiDeviceBTAddress = [deviceCopy otherTipiDeviceBTAddress];

  if (!otherTipiDeviceBTAddress)
  {
    identifier = v27[5];
    v27[5] = @"Not in Tipi";
    goto LABEL_26;
  }

  otherTipiAudioCategory = [deviceCopy otherTipiAudioCategory];
  v10 = [[NSString alloc] initWithFormat:@"The other Tipi device is streaming, audioCategory %u", objc_msgSend(deviceCopy, "otherTipiAudioCategory")];

  if (otherTipiAudioCategory >= 0x65)
  {
    v21 = v27;
    v22 = v10;
    goto LABEL_30;
  }

  identifier = [deviceCopy identifier];
  v12 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:deviceAddress];
  v13 = [(BTSmartRoutingDaemon *)self _getRssiNearby:identifier];
  mach_absolute_time();
  [deviceCopy otherTipiDeviceIdleTick];
  v14 = UpTicksToSeconds();
  v23 = v10;
  if (identifier)
  {
    v15 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    audioState = [v15 audioState];

    v17 = audioState == 0;
  }

  else
  {
    v17 = 1;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    audioStreamState = [v12 audioStreamState];
    if (audioStreamState > 3)
    {
      v19 = "?";
    }

    else
    {
      v19 = off_1002B9128[audioStreamState];
    }

    LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _proactivelyTakeOwnershipOfDevice:]", 30, "ProactiveRouting: Wx %@ StreamState %s otherTipiDeviceIdle %llus, wxRssiConnected %d wxRssiNearby %d ", deviceAddress, v19, v14, [v12 rssi], v13);
  }

  if ([v12 audioStreamState] != 1)
  {
    if ([v12 audioStreamState] != 0 || !v17 || v13 <= -70)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _proactivelyTakeOwnershipOfDevice:]", 30, "ProactiveRouting: Taking the route");
    }

    self->_proactiveRoutingInProgress = 1;
    v20 = [NSString stringWithFormat:@"%@%@", deviceAddress, @"-tacl"];
    [(BTSmartRoutingDaemon *)self _smartRoutingChangeRoute:v20];

    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:&off_1002CBDD8 andWxAddress:deviceAddress andOtherAddress:0];
    -[SRStats setProactiveRoutingWxRSSI:](self->_stats, "setProactiveRoutingWxRSSI:", [v12 rssi]);
    [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:deviceAddress andType:12];
    goto LABEL_25;
  }

  if (v13 >= -69)
  {
    goto LABEL_20;
  }

LABEL_25:

  v7 = v23;
  v6 = v24;
LABEL_26:

  (v6[2])(v6);
  _Block_object_dispose(&v26, 8);
}

- (id)_productColorAssetLookup:(unsigned int)lookup andAddress:(id)address
{
  v4 = *&lookup;
  addressCopy = address;
  wxAssetCache = self->_wxAssetCache;
  if (!wxAssetCache)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_wxAssetCache;
    self->_wxAssetCache = v8;

    wxAssetCache = self->_wxAssetCache;
  }

  v10 = [(NSMutableDictionary *)wxAssetCache objectForKeyedSubscript:addressCopy];
  if (v10)
  {
    v11 = v10;
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _productColorAssetLookup:andAddress:]", 50, "%@ banner asset found in cache %@", addressCopy, v11);
    }
  }

  else
  {
    v11 = [AAAssetHelper bluetoothProductIDToAsset:v4 withColor:[(BTSmartRoutingDaemon *)self _getWxColorCode:addressCopy] isCase:0];
    [(NSMutableDictionary *)self->_wxAssetCache setObject:v11 forKeyedSubscript:addressCopy];
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _productColorAssetLookup:andAddress:]", 50, "%@ new banner asset, caching it now %@", addressCopy, v11);
    }
  }

  v12 = v11;

  return v12;
}

- (id)_queryLocalAudioCategory
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_HighestArbitrationPriorityForTipiAttribute];
  v4 = [v3 objectForKeyedSubscript:AVSystemController_HighestArbitrationPriorityForTipi_AudioScore];
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA850(v4);
  }

  return v4;
}

- (void)_receivedRelinquishOwnership:(id)ownership wxAddress:(id)address
{
  ownershipCopy = ownership;
  addressCopy = address;
  v7 = [ownershipCopy objectForKeyedSubscript:@"reason"];
  v10 = v7;
  v11 = &dword_1002F6000;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || (v7 = _LogCategory_Initialize(), v7)))
  {
    v7 = sub_1001EA890(v10);
    if (addressCopy)
    {
LABEL_5:
      v12 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
      v15 = v12;
      if (!v12)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (v12 = _LogCategory_Initialize(), v12))
          {
            sub_1001EA908(v12, v13, v14);
          }
        }

        goto LABEL_85;
      }

      v16 = [ownershipCopy objectForKey:@"audioRoutingScore"];
      audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
      if (audioScoreOtherTipiDevice != [v16 intValue])
      {
        self->_audioScoreOtherTipiDevice = [v16 intValue];
      }

      identifier = [ownershipCopy objectForKey:@"localscore"];
      intValue = [identifier intValue];

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v20 = "yes";
        if (!self->_activityLevelMediaPlaying)
        {
          if ([(CUSystemMonitor *)self->_callMonitor activeCallCount]<= 0)
          {
            v20 = "no";
          }

          else
          {
            v20 = "yes";
          }
        }

        score = self->_score;
        v61 = v16;
        if (score > 0xF)
        {
          v22 = "?";
        }

        else
        {
          v22 = off_1002B8F50[score];
        }

        v23 = self->_audioScoreOtherTipiDevice;
        if ([v15 routed])
        {
          v24 = "yes";
        }

        else
        {
          v24 = "no";
        }

        identifier = [(CUUserNotificationSession *)self->_uiNoteSessionSmartRouting identifier];
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _receivedRelinquishOwnership:wxAddress:]", 30, "ReceivedOwnershipLost: Reason %@ hijackedScoreFromRemote %u activeAudio %s localTipiScore %s OtherTipiDeviceScore %u wxRouteState %s bannerType %@", v10, intValue, v20, v22, v23, v24, identifier);

        v16 = v61;
        v11 = &dword_1002F6000;
      }

      [(BTSmartRoutingDaemon *)self _setOwnership:addressCopy withHijackRequest:0 withOwnership:0];
      phoneOwnershipTimer = self->_phoneOwnershipTimer;
      if (phoneOwnershipTimer)
      {
        intValue = phoneOwnershipTimer;
        dispatch_source_cancel(intValue);
        v26 = self->_phoneOwnershipTimer;
        self->_phoneOwnershipTimer = 0;
      }

      if (![v15 routed])
      {
LABEL_53:
        uiNoteSessionSmartRouting = self->_uiNoteSessionSmartRouting;
        if (uiNoteSessionSmartRouting)
        {
          identifier2 = [(CUUserNotificationSession *)uiNoteSessionSmartRouting identifier];
          v39 = [identifier2 isEqualToString:@"ReverseRoute"];

          v40 = [v10 isEqualToString:@"AutoResume"];
          if (v40)
          {
            if (v39)
            {
              goto LABEL_84;
            }

LABEL_58:
            v43 = v16;
            v44 = v11[478];
            if (v44 <= 30)
            {
              if (v44 != -1 || (v40 = _LogCategory_Initialize(), v40))
              {
                sub_1001EA8EC(v40, v41, v42);
              }
            }

            deviceName = [v15 deviceName];
            deviceAddress = [v15 deviceAddress];
            productID = [v15 productID];
            otherTipiDeviceBTName = [v15 otherTipiDeviceBTName];
            v49 = [NSString stringWithFormat:@"%@", otherTipiDeviceBTName];
            [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:5 withDevice:deviceName andDeviceAddress:deviceAddress andProductID:productID andCentralContentItemTxt:v49 andTimeout:0 andDeviceType:20.0];

            v16 = v43;
            goto LABEL_84;
          }
        }

        else
        {
          v40 = [v10 isEqualToString:@"AutoResume"];
          if (v40)
          {
            goto LABEL_58;
          }
        }

        if ([v10 isEqualToString:@"Hijackv2"])
        {
          v50 = [ownershipCopy objectForKeyedSubscript:@"localscore"];
          v51 = v11[478];
          if (v51 <= 30 && (v51 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _receivedRelinquishOwnership:wxAddress:]", 30, "ReceivedOwnershipLost: Hijackv2 localScore %@ remoteHijackScore %@", v50, v16);
          }

          [(SRStats *)self->_stats setHijackAwayLocalScore:0xFFFFFFFFLL];
          [(SRStats *)self->_stats setHijackAwayRemoteScore:0xFFFFFFFFLL];
          if (v50)
          {
            -[SRStats setHijackAwayLocalScore:](self->_stats, "setHijackAwayLocalScore:", [v50 intValue]);
          }

          if (v16)
          {
            -[SRStats setHijackAwayRemoteScore:](self->_stats, "setHijackAwayRemoteScore:", [v16 intValue]);
          }

          [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:@"Hijack_Away"];
          falseRouteCheckReason = [(SRStats *)self->_stats falseRouteCheckReason];

          if (!falseRouteCheckReason)
          {
            [(SRStats *)self->_stats setFalseRouteCheckReason:@"Hijacked_Away"];
          }

          [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:8];

          goto LABEL_84;
        }

        if ([v10 isEqualToString:@"ManualRoute"])
        {
          [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:@"Remote_Manual_Route"];
          [v15 setOtherTipiManuallyRouteTicks:mach_absolute_time()];
          falseRouteCheckReason2 = [(SRStats *)self->_stats falseRouteCheckReason];

          if (falseRouteCheckReason2)
          {
LABEL_84:

LABEL_85:
            goto LABEL_86;
          }

          stats = self->_stats;
          v54 = @"Remote_Manual_Route";
        }

        else
        {
          v55 = [v10 isEqualToString:@"ReverseBannerTapped"];
          if (!v55)
          {
            goto LABEL_84;
          }

          v58 = v11[478];
          if (v58 <= 30)
          {
            if (v58 != -1 || (v55 = _LogCategory_Initialize(), v55))
            {
              sub_1001EA8D0(v55, v56, v57);
            }
          }

          [v15 setHijackBackoffTicks:mach_absolute_time()];
          self->_hijackBackOffInitiator = 0;
          [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
          falseRouteCheckReason3 = [(SRStats *)self->_stats falseRouteCheckReason];

          if (falseRouteCheckReason3)
          {
            goto LABEL_84;
          }

          stats = self->_stats;
          v54 = @"Remote_reverse_banner_tapped";
        }

        [(SRStats *)stats setFalseRouteCheckReason:v54];
        goto LABEL_84;
      }

      v27 = self->_audioScoreOtherTipiDevice;
      if (v27 <= 0)
      {
        v29 = [ownershipCopy objectForKey:@"audioRoutingShowReverseUI"];
        if (v29)
        {
          intValue = v29;
          v28 = 0;
        }

        else
        {
          v30 = [ownershipCopy objectForKey:@"SmartRoutingKeyShowNearbyUI"];
          if (!v30)
          {
            goto LABEL_52;
          }

          identifier = v30;
          intValue = 0;
          v28 = 1;
        }
      }

      else
      {
        v28 = 0;
      }

      if (self->_score <= 3 && [(CUSystemMonitor *)self->_callMonitor activeCallCount]< 1)
      {
        v31 = 0;
        if (v28)
        {
LABEL_44:

          if (v27 >= 1)
          {
            goto LABEL_45;
          }

LABEL_49:

          if (v31)
          {
            goto LABEL_50;
          }

LABEL_52:
          [v15 setRouted:0];
          [v15 setRoutingAction:3];
          [(BTSmartRoutingDaemon *)self _setManualRouteFlag:addressCopy withManualRoute:0];
          v11 = &dword_1002F6000;
          goto LABEL_53;
        }
      }

      else
      {
        v31 = [v16 intValue] != 200;
        if (v28)
        {
          goto LABEL_44;
        }
      }

      if (v27 > 0)
      {
LABEL_45:
        if (!v31)
        {
          goto LABEL_52;
        }

LABEL_50:
        if (([v15 otherTipiDeviceIsWatch] & 1) == 0)
        {
          deviceName2 = [v15 deviceName];
          deviceAddress2 = [v15 deviceAddress];
          productID2 = [v15 productID];
          otherTipiDeviceBTName2 = [v15 otherTipiDeviceBTName];
          v36 = [NSString stringWithFormat:@"%@", otherTipiDeviceBTName2];
          [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:5 withDevice:deviceName2 andDeviceAddress:deviceAddress2 andProductID:productID2 andCentralContentItemTxt:v36 andTimeout:0 andDeviceType:20.0];
        }

        goto LABEL_52;
      }

      goto LABEL_49;
    }
  }

  else if (addressCopy)
  {
    goto LABEL_5;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      sub_1001EA924(v7, v8, v9);
    }
  }

LABEL_86:
}

- (void)_removeTiPiState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  v18 = stateCopy;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (stateCopy = _LogCategory_Initialize(), v6 = v18, stateCopy))
    {
      sub_1001EA940(stateCopy, v6, v5);
      v6 = v18;
    }
  }

  v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v6];
  audioRoutingResponse = [v7 audioRoutingResponse];

  if (audioRoutingResponse)
  {
    v9 = objc_alloc_init(BTAudioRoutingResponse);
    [v9 setAction:1];
    [v9 setDeviceAddress:v18];
    [v9 setReason:@"Tipi device should be routed"];
    [v9 setClientID:{objc_msgSend(v7, "audioRoutingClientID")}];
    audioRoutingResponse2 = [v7 audioRoutingResponse];
    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v9 withResponseHandler:audioRoutingResponse2 wxAddress:v18];
  }

  if ([v7 isHRMCapable])
  {
    [(BTSmartRoutingDaemon *)self dataRelayRemoveAvailableDataTypesWithDevice:v7];
  }

  [v7 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];
  [v7 setOtherTipiIDSIdentifier:0];
  [v7 setOtherTipiAudioCategory:0];
  [v7 setOtherTipiDeviceIsStreamingAudio:0];
  [v7 setOtherTipiDeviceIsWatch:0];
  [v7 setOtherTipiDeviceDRCompatible:0];
  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  if (phoneOwnershipTimer)
  {
    v12 = phoneOwnershipTimer;
    dispatch_source_cancel(v12);
    v13 = self->_phoneOwnershipTimer;
    self->_phoneOwnershipTimer = 0;
  }

  temporaryOverrideTimer = self->_temporaryOverrideTimer;
  if (temporaryOverrideTimer)
  {
    v15 = temporaryOverrideTimer;
    dispatch_source_cancel(v15);
    v16 = self->_temporaryOverrideTimer;
    self->_temporaryOverrideTimer = 0;
  }

  if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]== 1)
  {
    if (self->_pairedCompanionDeviceSupportsSmartRouting)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [v7 setRoutingAction:v17];
    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  }

  if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]== 1)
  {
    [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:v18 withAddress:&stru_1002C1358 withEasyPairing:0 withState:3];
  }
}

- (void)_relayConduitMessageStartTimer:(id)timer withOptions:(id)options
{
  timerCopy = timer;
  optionsCopy = options;
  v8 = dispatch_time(0, 3500000000);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100003918;
  v21 = sub_100003838;
  v22 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:timerCopy];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  [v18[5] setConduitMessageTimer:v9];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000694D8;
  handler[3] = &unk_1002B8898;
  handler[4] = self;
  v13 = timerCopy;
  v14 = optionsCopy;
  v15 = &v17;
  v16 = 0x400C000000000000;
  v10 = optionsCopy;
  v11 = timerCopy;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_source_set_timer(v9, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v9);

  _Block_object_dispose(&v17, 8);
}

- (void)_setOwnership:(id)ownership withHijackRequest:(id)request withOwnership:(BOOL)withOwnership
{
  withOwnershipCopy = withOwnership;
  ownershipCopy = ownership;
  requestCopy = request;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v10 = "no";
    if (withOwnershipCopy)
    {
      v10 = "yes";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setOwnership:withHijackRequest:withOwnership:]", 30, "Setting ownership for Wx %@ %s", ownershipCopy, v10);
  }

  v11 = objc_alloc_init(CBDeviceSettings);
  v12 = v11;
  if (withOwnershipCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v11 setRelinquishAudioRoute:v13];
  v14 = objc_alloc_init(CBDevice);
  [v14 setIdentifier:ownershipCopy];
  smartRoutingController = self->_smartRoutingController;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000699E0;
  v18[3] = &unk_1002B6D60;
  v19 = requestCopy;
  selfCopy = self;
  v21 = ownershipCopy;
  v16 = ownershipCopy;
  v17 = requestCopy;
  [(CBController *)smartRoutingController modifyDevice:v14 settings:v12 completion:v18];
}

- (void)_sendAudioCategory:(id)category withAudioCategory:(id)audioCategory
{
  categoryCopy = category;
  audioCategoryCopy = audioCategory;
  v10 = audioCategoryCopy;
  if (audioCategoryCopy)
  {
    v11 = audioCategoryCopy;
    v12 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
    otherTipiDeviceIsWatch = [v12 otherTipiDeviceIsWatch];

    intValue = [v11 intValue];
    if ([(SRSourceDevice *)self->_sourceDevice incomingCallRingtone])
    {
      intValue2 = [(NSNumber *)self->_localDeviceAudioCategory intValue];
      if (![(BTSmartRoutingDaemon *)self _isInHijackBlockingMode])
      {
        v16 = intValue2 > 500;
        if (intValue == 401)
        {
          v16 = otherTipiDeviceIsWatch;
        }

        if (v16)
        {
          goto LABEL_17;
        }

LABEL_15:
        v17 = &off_1002CB750;
        goto LABEL_16;
      }
    }

    else if (![(BTSmartRoutingDaemon *)self _isInHijackBlockingMode])
    {
      if ((intValue != 401) | otherTipiDeviceIsWatch & 1)
      {
LABEL_17:
        if (self->_activityLevelMediaPlaying)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"YES";
          if ([(CUSystemMonitor *)self->_callMonitor activeCallCount]<= 0 && !self->_cdDeviceIdentifier)
          {
            v18 = @"NO";
          }
        }

        _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
        v20 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
        otherTipiDeviceBTAddress = [v20 otherTipiDeviceBTAddress];

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _sendAudioCategory:withAudioCategory:]", 30, "[Hijackv2] Send audio category through relay message via %@ to device %@ with score %d", categoryCopy, otherTipiDeviceBTAddress, [v11 integerValue]);
        }

        v27[0] = @"btAddress";
        v27[1] = @"btName";
        myModel = self->_myModel;
        v28[0] = _myBluetoothAddressString;
        v28[1] = myModel;
        v27[2] = @"hostStreamingState";
        v27[3] = @"otherDeviceAudioCategory";
        v28[2] = v18;
        v28[3] = v11;
        v27[4] = @"playingApp";
        activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
        v24 = activePlayingApp;
        v25 = @"NA";
        if (activePlayingApp)
        {
          v25 = activePlayingApp;
        }

        v28[4] = v25;
        v26 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];

        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v26 andWxAddress:categoryCopy andOtherAddress:otherTipiDeviceBTAddress];
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v17 = &off_1002CB738;
LABEL_16:

    v11 = v17;
    goto LABEL_17;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (audioCategoryCopy = _LogCategory_Initialize(), audioCategoryCopy))
    {
      sub_1001EAA90(audioCategoryCopy, v8, v9);
    }
  }

LABEL_29:
}

- (void)_sendAudioCategoryToAllTipiDevices
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100069E84;
  v3[3] = &unk_1002B8168;
  v3[4] = self;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_sendTipiHealingRequest:(id)request andOtherTipiAddress:(id)address
{
  requestCopy = request;
  addressCopy = address;
  v10 = addressCopy;
  if (self->_tipiElectionInProgress)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (addressCopy = _LogCategory_Initialize(), addressCopy))
      {
        sub_1001EAAC8(addressCopy, v8, v9);
      }
    }
  }

  else
  {
    self->_tipiElectionInProgress = 1;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (addressCopy = _LogCategory_Initialize(), addressCopy))
      {
        sub_1001EAAAC(addressCopy, v8, v9);
      }
    }

    [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:requestCopy withAddress:v10 withEasyPairing:0 withState:1];
    v11 = @"YES";
    if (!self->_activityLevelMediaPlaying)
    {
      if ([(CUSystemMonitor *)self->_callMonitor activeCallCount]<= 0)
      {
        v11 = @"NO";
      }

      else
      {
        v11 = @"YES";
      }
    }

    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    v17[0] = @"tipiHealingAttempt";
    v17[1] = @"tipiHealingName";
    myModel = self->_myModel;
    v18[0] = _myBluetoothAddressString;
    v18[1] = myModel;
    v17[2] = @"version";
    v17[3] = @"tipiHealingStreaming";
    v18[2] = &off_1002CB618;
    v18[3] = v11;
    v17[4] = @"tipiHealingPreferMac";
    v14 = [(BTSmartRoutingDaemon *)self _isManualConnection:requestCopy];
    v15 = @"Don't route for manual connection";
    if (!v14)
    {
      v15 = @"YES";
    }

    v18[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v16 andWxAddress:requestCopy andOtherAddress:v10];
    [(BTSmartRoutingDaemon *)self _tipiHealingStartTimer:requestCopy];
  }
}

- (void)_sendRouteReversedTipiEventForTipsSupport
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[BMStreams discoverabilitySignal];
  source = [v3 source];
  v5 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:@"com.apple.bluetooth.audio-reversed" bundleID:@"com.apple.cloudpaird" context:0];
  [source sendEvent:v5];

  objc_autoreleasePoolPop(v2);
}

- (void)_sendAudioScoreChanged:(BOOL)changed
{
  if (self->_startIdleTicks)
  {
    mach_absolute_time();
    v5 = UpTicksToSeconds();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EAAE4(v5);
    }
  }

  else
  {
    v5 = 0;
  }

  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A294;
  v7[3] = &unk_1002B88C0;
  v7[4] = self;
  v7[5] = v5;
  changedCopy = changed;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_sendIntendedRouteInfoUpdateToWx:(id)wx withIntendedRoutingStatus:(BOOL)status
{
  wxCopy = wx;
  if (_os_feature_enabled_impl())
  {
    if (!self->_smartRoutingController)
    {
      [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    }

    v12 = 4;
    statusCopy = status;
    v7 = [NSData dataWithBytes:&v12 length:3];
    smartRoutingController = self->_smartRoutingController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006A560;
    v9[3] = &unk_1002B68A8;
    v10 = wxCopy;
    v11 = v7;
    [(CBController *)smartRoutingController sendSmartRoutingInformation:v7 device:v10 completionHandler:v9];
  }
}

- (void)_sendTipiScoreUpdateToWx
{
  if (self->_isActiveHRMSession)
  {
    sub_1001EAC7C(self, a2, v2);
  }

  else
  {
    srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10006A670;
    v4[3] = &unk_1002B8368;
    v4[4] = self;
    [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)_sendNowPlayingInfoUpdateToWx:(id)wx withMessage:(id)message withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address
{
  var5 = message.var5;
  v9 = *&message.var0;
  wxCopy = wx;
  addressCopy = address;
  if (!self->_smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
  }

  v21 = v9;
  v22 = var5;
  v23 = WORD2(var5);
  if (addressCopy)
  {
    if ([addressCopy isEqualToString:wxCopy])
    {
      target = 1;
    }

    else
    {
      target = 2;
    }
  }

  BYTE3(v21) = target;
  v13 = [NSData dataWithBytes:&v21 length:14];
  v14 = objc_alloc_init(CBDevice);
  [v14 setIdentifier:wxCopy];
  smartRoutingController = self->_smartRoutingController;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006A7D8;
  v18[3] = &unk_1002B68A8;
  v19 = wxCopy;
  v20 = v13;
  v16 = v13;
  v17 = wxCopy;
  [(CBController *)smartRoutingController sendSmartRoutingInformation:v16 device:v14 completionHandler:v18];
}

- (void)_setAutoRoute:(id)route withAutoRoute:(BOOL)autoRoute
{
  autoRouteCopy = autoRoute;
  routeCopy = route;
  v7 = objc_alloc_init(CBDeviceSettings);
  v8 = v7;
  if (autoRouteCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setAllowsAutoRoute:v9];
  v10 = objc_alloc_init(CBDevice);
  [v10 setIdentifier:routeCopy];

  smartRoutingController = self->_smartRoutingController;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006A9C8;
  v12[3] = &unk_1002B6A38;
  v12[4] = self;
  [(CBController *)smartRoutingController modifyDevice:v10 settings:v8 completion:v12];
}

- (void)_setDisconnectTick:(unint64_t)tick forWxAddress:(id)address
{
  addressCopy = address;
  if (!self->_disconnectTicksMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    disconnectTicksMap = self->_disconnectTicksMap;
    self->_disconnectTicksMap = v6;
  }

  v8 = [NSNumber numberWithUnsignedLongLong:tick];
  [(NSMutableDictionary *)self->_disconnectTicksMap setObject:v8 forKeyedSubscript:addressCopy];

  v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:addressCopy];
  v10 = v9;
  if (v9)
  {
    [v9 setDisconnectionBackoffTick:tick];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EAE0C(addressCopy);
  }
}

- (void)_setIsHiddenProperty:(id)property withIsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  propertyCopy = property;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (hiddenCopy)
    {
      v6 = "yes";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setIsHiddenProperty:withIsHidden:]", 30, "Setting isHidden for Wx %@ %s", propertyCopy, v6);
  }

  v7 = objc_alloc_init(CBDeviceSettings);
  v8 = v7;
  if (hiddenCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v7 setAudioRouteHidden:v9];
  v10 = objc_alloc_init(CBDevice);
  [v10 setIdentifier:propertyCopy];
  [(CBController *)self->_smartRoutingController modifyDevice:v10 settings:v8 completion:&stru_1002B88E0];
}

- (void)_setHighPriorityTag:(id)tag withHighPriority:(BOOL)priority
{
  tagCopy = tag;
  v7 = objc_alloc_init(CBDeviceSettings);
  v8 = v7;
  if (priority)
  {
    v9 = 80;
LABEL_5:
    [v7 setAclPriority:v9];
    goto LABEL_6;
  }

  if (self->_highPriorityTagSent)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v10 = objc_alloc_init(CBDevice);
  [v10 setIdentifier:tagCopy];

  smartRoutingController = self->_smartRoutingController;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006ADE4;
  v12[3] = &unk_1002B6A38;
  v12[4] = self;
  [(CBController *)smartRoutingController modifyDevice:v10 settings:v8 completion:v12];
}

- (void)_setManualRouteFlag:(id)flag withManualRoute:(BOOL)route
{
  routeCopy = route;
  flagCopy = flag;
  v6 = objc_alloc_init(CBDeviceSettings);
  [v6 setDeviceFlagsMask:0x400000];
  [v6 setDeviceFlagsValue:routeCopy];
  v7 = objc_alloc_init(CBDevice);
  [v7 setIdentifier:flagCopy];
  v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:flagCopy];
  if ([v8 manuallyRouted])
  {
    [v8 setManualRouteChangeInProgress:1];
  }

  v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:flagCopy];
  [v9 setManuallyRouted:0];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EAECC();
  }

  [(CBController *)self->_smartRoutingController modifyDevice:v7 settings:v6 completion:&stru_1002B8900];
}

- (void)_setOtherTipiDeviceBTAddress:(id)address andName:(id)name sourceVersion:(id)version withResult:(id)result
{
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  resultCopy = result;
  v13 = resultCopy;
  if (self->_eligibleHeadset)
  {
    if (resultCopy)
    {
      bleDevice = [(SFDevice *)self->_eligibleHeadset bleDevice];
      bluetoothAddress = [bleDevice bluetoothAddress];

      if ([bluetoothAddress length] == 6)
      {
        v16 = NSPrintF("%.6a", COERCE_DOUBLE([bluetoothAddress bytes]));
        if (v16)
        {
          v17 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v16];
          if (v17)
          {
          }

          else if (![(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress])
          {
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              sub_1001EAF5C(v16);
            }

            [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:0 forKeyedSubscript:v16];
          }
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
      [BTSmartRoutingDaemon _smartRoutingAddWxMapDevice:"_smartRoutingAddWxMapDevice:routingAction:otherAddress:otherName:otherSourceVersion:isRoutingInitialized:newWx:" routingAction:v18 otherAddress:? otherName:? otherSourceVersion:? isRoutingInitialized:? newWx:?];
      [(BTSmartRoutingDaemon *)self _smartRoutingConnectToEligibleHeadset:self->_eligibleHeadset];
    }
  }
}

- (void)_setPhase1ConnectConfig:(id)config andType:(int)type
{
  v4 = *&type;
  configCopy = config;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EAF9C(v4, configCopy);
  }

  phase1ConnectConfig = self->_phase1ConnectConfig;
  if (!phase1ConnectConfig)
  {
    v7 = objc_alloc_init(SRConnectConfig);
    v8 = self->_phase1ConnectConfig;
    self->_phase1ConnectConfig = v7;

    phase1ConnectConfig = self->_phase1ConnectConfig;
  }

  [(SRConnectConfig *)phase1ConnectConfig setAddress:configCopy];
  [(SRConnectConfig *)self->_phase1ConnectConfig setType:v4];
}

- (void)_setTipiAndRoutedStateFlags:(unsigned int)flags forDevice:(id)device
{
  v4 = *&flags;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  [deviceCopy setTipiAndRoutedState:v4];

  [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon smartRoutingStateUpdated:v4 ForDeviceIdentifier:identifier];
}

- (void)_setTipiAndRoutedStateFlags:(unsigned int)flags forAddress:(id)address
{
  v4 = *&flags;
  addressCopy = address;
  v6 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    identifier = [v6 identifier];
    [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon smartRoutingStateUpdated:v4 ForDeviceIdentifier:identifier];
  }

  else
  {
    sub_1001EAFFC(addressCopy);
  }
}

- (void)_setIsFirstConnentionAfterSREnable:(BOOL)enable forDevice:(id)device
{
  enableCopy = enable;
  deviceCopy = device;
  v7 = deviceCopy;
  if (deviceCopy)
  {
    v14 = deviceCopy;
    v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceCopy];
    p_sourceDevice = &self->_sourceDevice;
    isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
    v11 = isFirstConnectionAfterSREnable;
    if (enableCopy)
    {
      [isFirstConnectionAfterSREnable setValue:@"YES" forKey:v14];

      [v8 setIsFirstConnectionAfterSREnable:1];
      if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      sub_1001EB0FC();
      isFirstConnectionAfterSREnable2 = v15;
    }

    else
    {
      v13 = [isFirstConnectionAfterSREnable objectForKey:v14];

      if (!v13)
      {
LABEL_13:

        v7 = v14;
        goto LABEL_14;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EB078(p_sourceDevice, v14);
      }

      [v8 setIsFirstConnectionAfterSREnable:0];
      isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)*p_sourceDevice isFirstConnectionAfterSREnable];
      [isFirstConnectionAfterSREnable2 removeObjectForKey:v14];
    }

    goto LABEL_13;
  }

LABEL_14:

  _objc_release_x1(deviceCopy, v7);
}

- (void)_setTipiElectionReceivedLePipe:(id)pipe
{
  pipeCopy = pipe;
  if ([pipeCopy isEqualToString:&stru_1002C1358])
  {
    v4 = 0;
  }

  else
  {
    v4 = pipeCopy;
  }

  objc_storeStrong(&self->_tipiElectionReceivedLePipe, v4);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB17C();
  }
}

- (void)_setTotalCountIDSDevices:(id)devices
{
  devicesCopy = devices;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B648;
  v7[3] = &unk_1002B6D18;
  v8 = devicesCopy;
  selfCopy = self;
  v6 = devicesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)_showPreemptiveBannerIfNeeded:(id)needed inEarState:(BOOL)state audioState:(int64_t)audioState wxAddress:(id)address
{
  stateCopy = state;
  neededCopy = needed;
  addressCopy = address;
  if (!self->_prefSmartRoutingPreemptiveConnectedBanner || !-[BTSmartRoutingDaemon _isEligibleForPreemptiveBanner:firstPreemptiveBanner:inEarState:srDeviceCount:audioState:inAddress:](self, "_isEligibleForPreemptiveBanner:firstPreemptiveBanner:inEarState:srDeviceCount:audioState:inAddress:", [neededCopy preemptiveBannerShown], objc_msgSend(neededCopy, "firstPreemptiveBannerShown"), stateCopy, -[NSMutableDictionary count](self->_smartRoutingWxDeviceMap, "count"), audioState, addressCopy))
  {
    v17 = 0;
    goto LABEL_10;
  }

  v12 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
  deviceName = [v12 deviceName];
  if (addressCopy)
  {
    v14 = addressCopy;
  }

  else
  {
    v14 = @"?";
  }

  v15 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
  v16 = -[BTSmartRoutingDaemon _smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:](self, "_smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:", 1, deviceName, v14, [v15 productID], @"Connected", 0, 4.0);

  if (!self->_preemptiveBannerBlockedTicks)
  {
    [(SRStats *)self->_stats setLocalAudioScore:self->_localDeviceAudioCategory];
    self->_preemptiveBannerShownTicks = mach_absolute_time();
    self->_preemptiveBannerConnectionInProgress = 1;
    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortChanged"];
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_12:
    v17 = 0;
    self->_preemptiveBannerBlockedTicks = mach_absolute_time();
    goto LABEL_10;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_8:
  self->_preemptiveBannerBlockedTicks = 0;
  v17 = 1;
  [neededCopy setPreemptiveBannerShown:1];
  [neededCopy setFirstPreemptiveBannerShown:1];
LABEL_10:

  return v17;
}

- (void)_showLowBatteryBannerForWorkoutIfNeededForDevice:(id)device
{
  deviceCopy = device;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _showLowBatteryBannerForWorkoutIfNeededForDevice:]", 30, "Checking if we need to show a banner for the workout device");
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003918;
  v18 = sub_100003838;
  v19 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006BB78;
  v10[3] = &unk_1002B8928;
  v6 = deviceCopy;
  v11 = v6;
  v12 = &v14;
  v13 = &v20;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v21 + 24) == 1)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      btAddress = [v15[5] btAddress];
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _showLowBatteryBannerForWorkoutIfNeededForDevice:]", 30, "Low battery banner for %@ has been shown already", btAddress);
    }
  }

  else
  {
    aaLowBatteryAlertDaemon = self->_aaLowBatteryAlertDaemon;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006BC24;
    v9[3] = &unk_1002B8978;
    v9[4] = self;
    v9[5] = &v14;
    [(AALowBatteryAlertDaemon *)aaLowBatteryAlertDaemon showLowBatteryBannerIfNeededForDevice:v6 withType:0 completion:v9];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)_showSplitterBlockingAlert
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001EB1BC(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(AAUIAlert);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006BD90;
  v5[3] = &unk_1002B6A38;
  v5[4] = selfCopy;
  [(AAUIAlert *)v4 deliverAlertWithHeaderKey:0 messageKey:@"SPLITTER_BLOCKING_BODY_FORMAT" defaultButtonKey:@"OK" alternativeButtonKey:0 andCompletion:v5];
}

- (void)_smartRoutingModeCheck:(id)check
{
  checkCopy = check;
  btAddressData = [checkCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB1F4(checkCopy, v5);
  }

  v6 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];
    mode = [(SRModeDevice *)v7 mode];
    if ([checkCopy smartRoutingMode] != mode)
    {
      if (mode == 2)
      {
        if ([checkCopy smartRoutingMode] == 1)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EB2A4(v5);
          }

          [(SRModeDevice *)v7 setMode:1];
          [(SRModeDevice *)v7 setEnableCount:[(SRModeDevice *)v7 enableCount]+ 1];
          [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
        }
      }

      else if (mode == 1)
      {
        if ([checkCopy smartRoutingMode] == 2)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EB264(v5);
          }

          [(SRModeDevice *)v7 setMode:2];
          [(SRModeDevice *)v7 setDisableCount:[(SRModeDevice *)v7 disableCount]+ 1];
          [(BTSmartRoutingDaemon *)self _handleSmartRoutingDisabled:v5];
        }
      }

      else if (!mode && [checkCopy smartRoutingMode])
      {
        smartRoutingMode = [checkCopy smartRoutingMode];
        v10 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];
        [v10 setMode:smartRoutingMode];
      }
    }
  }

  else
  {
    v7 = objc_alloc_init(SRModeDevice);
    -[SRModeDevice setMode:](v7, "setMode:", [checkCopy smartRoutingMode]);
    [(SRModeDevice *)v7 setEnableCount:0];
    [(SRModeDevice *)v7 setDisableCount:0];
    connectedDevicesSrModeCache = self->_connectedDevicesSrModeCache;
    if (!connectedDevicesSrModeCache)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = self->_connectedDevicesSrModeCache;
      self->_connectedDevicesSrModeCache = v12;

      connectedDevicesSrModeCache = self->_connectedDevicesSrModeCache;
    }

    [(NSMutableDictionary *)connectedDevicesSrModeCache setObject:v7 forKeyedSubscript:v5];
  }
}

- (void)_startIdleActivityScoreTimer:(unint64_t)timer
{
  timerCopy = timer;
  idleActivityScoreTimer = self->_idleActivityScoreTimer;
  if (idleActivityScoreTimer)
  {
    v6 = idleActivityScoreTimer;
    dispatch_source_cancel(v6);
    v7 = self->_idleActivityScoreTimer;
    self->_idleActivityScoreTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB2E4(timerCopy);
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_idleActivityScoreTimer;
  self->_idleActivityScoreTimer = v8;
  v10 = v8;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006C210;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  CUDispatchTimerSet();
  dispatch_activate(v10);
}

- (void)_startIncomingCallHijackTimer:(unint64_t)timer
{
  timerCopy = timer;
  incomingCallHijackTimer = self->_incomingCallHijackTimer;
  if (incomingCallHijackTimer)
  {
    v6 = incomingCallHijackTimer;
    dispatch_source_cancel(v6);
    v7 = self->_incomingCallHijackTimer;
    self->_incomingCallHijackTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB340(timerCopy);
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_incomingCallHijackTimer;
  self->_incomingCallHijackTimer = v8;
  v10 = v8;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006C3F4;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  CUDispatchTimerSet();
  dispatch_activate(v10);
}

- (void)_startNowPlayingTemporaryOverrideTimer:(unint64_t)timer
{
  timerCopy = timer;
  temporaryOverrideTimer = self->_temporaryOverrideTimer;
  if (temporaryOverrideTimer)
  {
    v6 = temporaryOverrideTimer;
    dispatch_source_cancel(v6);
    v7 = self->_temporaryOverrideTimer;
    self->_temporaryOverrideTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB39C(timerCopy);
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_temporaryOverrideTimer;
  self->_temporaryOverrideTimer = v8;
  v10 = v8;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006C5CC;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  CUDispatchTimerSet();
  dispatch_activate(v10);
}

- (void)_startHighActivityLevelTimer:(unint64_t)timer
{
  _getInEarSrWxDevice = [(BTSmartRoutingDaemon *)self _getInEarSrWxDevice];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB3F8(_getInEarSrWxDevice);
  }

  if ([_getInEarSrWxDevice proactiveRoutingBackoff])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB4C0(_getInEarSrWxDevice);
    }
  }

  else if (_getInEarSrWxDevice && !self->_highActivityLevelTimer)
  {
    if ([_getInEarSrWxDevice otherTipiDeviceAudioScore] == 1 || objc_msgSend(_getInEarSrWxDevice, "otherTipiDeviceAudioScore") == 2)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EB480(timer);
      }

      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      highActivityLevelTimer = self->_highActivityLevelTimer;
      self->_highActivityLevelTimer = v6;
      v8 = v6;

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10006C874;
      v9[3] = &unk_1002B82D0;
      v9[4] = self;
      v9[5] = timer;
      dispatch_source_set_event_handler(v8, v9);
      CUDispatchTimerSet();
      dispatch_activate(v8);
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB438(_getInEarSrWxDevice);
    }
  }
}

- (void)_startEffectiveUnlockedAfterBootTimer:(unint64_t)timer
{
  timerCopy = timer;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB538(timerCopy);
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  effectiveUnlockedAfterBootTimer = self->_effectiveUnlockedAfterBootTimer;
  self->_effectiveUnlockedAfterBootTimer = v5;
  v7 = v5;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006CA44;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  CUDispatchTimerSet();
  dispatch_activate(v7);
}

- (void)_startPhoneOwnershipTimer:(unint64_t)timer
{
  timerCopy = timer;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB594(timerCopy);
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  self->_phoneOwnershipTimer = v5;
  v7 = v5;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006CBDC;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  CUDispatchTimerSet();
  dispatch_activate(v7);
}

- (void)_startAudioStateSnapshotTimer
{
  if (!self->_audioStateSnapshotTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if ([(NSMutableDictionary *)self->_wxDevices count]|| [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count])
    {
      if ([(CUSystemMonitor *)self->_powerMonitor screenActive])
      {
        audioStateSnapshotTimer = self->_audioStateSnapshotTimer;
        if (audioStateSnapshotTimer)
        {
          v6 = audioStateSnapshotTimer;
          dispatch_source_cancel(v6);
          v7 = self->_audioStateSnapshotTimer;
          self->_audioStateSnapshotTimer = 0;
        }

        v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        v9 = self->_audioStateSnapshotTimer;
        self->_audioStateSnapshotTimer = v8;

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10006CE10;
        handler[3] = &unk_1002B6880;
        handler[4] = self;
        dispatch_source_set_event_handler(v8, handler);
        if (v8)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EB5D4(&self->_wxDevices);
          }

          CUDispatchTimerSet();
          dispatch_activate(v8);
        }

        else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EB61C();
        }
      }
    }
  }
}

- (void)_stopAudioStateSnapshotTimer:(BOOL)timer
{
  timerCopy = timer;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB650(self, timerCopy);
  }

  if ([(NSMutableDictionary *)self->_wxDevices count])
  {
    v5 = !timerCopy;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    audioStateSnapshotTimer = self->_audioStateSnapshotTimer;
    if (audioStateSnapshotTimer)
    {
      v7 = audioStateSnapshotTimer;
      dispatch_source_cancel(v7);
      v8 = self->_audioStateSnapshotTimer;
      self->_audioStateSnapshotTimer = 0;
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB6A8(&self->_wxDevices, timerCopy);
    }
  }
}

- (void)_startManualRouteChangeDetectionTimer:(id)timer
{
  timerCopy = timer;
  manualRouteChangeDetectionTimer = [(SRStats *)self->_stats manualRouteChangeDetectionTimer];
  v6 = manualRouteChangeDetectionTimer;
  if (manualRouteChangeDetectionTimer)
  {
    dispatch_source_cancel(manualRouteChangeDetectionTimer);
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  [(SRStats *)self->_stats setManualRouteChangeDetectionTimer:v7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006CFF8;
  v9[3] = &unk_1002B6D18;
  v9[4] = self;
  v10 = timerCopy;
  v8 = timerCopy;
  dispatch_source_set_event_handler(v7, v9);
  CUDispatchTimerSet();
  dispatch_activate(v7);
}

- (void)_startPlaybackTimer
{
  playbackStartTimer = self->_playbackStartTimer;
  if (playbackStartTimer)
  {
    v4 = playbackStartTimer;
    dispatch_source_cancel(v4);
    v5 = self->_playbackStartTimer;
    self->_playbackStartTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_playbackStartTimer;
  self->_playbackStartTimer = v6;
  v8 = v6;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006D174;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_activate(v8);
}

- (void)_startRouteChangeDetectionTimer:(id)timer andAnswer:(int64_t)answer
{
  timerCopy = timer;
  routeChangeDetectionTimer = self->_routeChangeDetectionTimer;
  if (routeChangeDetectionTimer)
  {
    v8 = routeChangeDetectionTimer;
    dispatch_source_cancel(v8);
    v9 = self->_routeChangeDetectionTimer;
    self->_routeChangeDetectionTimer = 0;
  }

  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v11 = self->_routeChangeDetectionTimer;
  self->_routeChangeDetectionTimer = v10;
  v12 = v10;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006D2FC;
  handler[3] = &unk_1002B86B8;
  handler[4] = self;
  v15 = timerCopy;
  answerCopy = answer;
  v13 = timerCopy;
  dispatch_source_set_event_handler(v12, handler);
  CUDispatchTimerSet();
  dispatch_activate(v12);
}

- (void)_startRouteCheckTimer:(id)timer andType:(int)type
{
  timerCopy = timer;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v8 = 0.0;
  if (type > 7)
  {
    if (type <= 9)
    {
      if (type == 8)
      {
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckHijackAwayTimer];
        [(SRStats *)self->_stats setFalseRouteCheckHijackAwayTimer:v7];
        [(SRStats *)self->_stats setReverseRouteReason:0];
        goto LABEL_27;
      }

      falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats routeCheckOnDemandTimer];
      [(SRStats *)self->_stats setRouteCheckOnDemandTimer:v7];
      goto LABEL_23;
    }

    switch(type)
    {
      case 10:
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckOnDemandTimer];
        [(SRStats *)self->_stats setFalseRouteCheckOnDemandTimer:v7];
        break;
      case 12:
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckProactiveRoutingTimer];
        [(SRStats *)self->_stats setFalseRouteCheckProactiveRoutingTimer:v7];
        break;
      case 13:
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats routeCheckInUseBannerTimer];
        [(SRStats *)self->_stats setRouteCheckInUseBannerTimer:v7];
        goto LABEL_23;
      default:
        goto LABEL_29;
    }
  }

  else
  {
    if (type <= 3)
    {
      if (type == 1)
      {
        routeCheckOwnLostTimer = [(SRStats *)self->_stats routeCheckOwnLostTimer];
        [(SRStats *)self->_stats setRouteCheckOwnLostTimer:v7];
      }

      else if (type != 2)
      {
        goto LABEL_29;
      }

      falseRouteCheckOwnLostTimer = [(SRStats *)self->_stats falseRouteCheckOwnLostTimer];
      [(SRStats *)self->_stats setFalseRouteCheckOwnLostTimer:v7];
    }

    else if (type != 4)
    {
      if (type != 5)
      {
        if (type != 6)
        {
          goto LABEL_29;
        }

        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckHijackTimer];
        [(SRStats *)self->_stats setFalseRouteCheckHijackTimer:v7];
        goto LABEL_26;
      }

      falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats routeCheckHijackTimer];
      [(SRStats *)self->_stats setRouteCheckHijackTimer:v7];
LABEL_23:
      v8 = 5.0;
      if (!falseRouteCheckHijackAwayTimer)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckForceDisconnectTimer];
    [(SRStats *)self->_stats setFalseRouteCheckForceDisconnectTimer:v7];
  }

LABEL_26:
  [(SRStats *)self->_stats setFalseRouteCheckReason:0];
LABEL_27:
  v8 = 25.0;
  if (falseRouteCheckHijackAwayTimer)
  {
LABEL_28:
    dispatch_source_cancel(falseRouteCheckHijackAwayTimer);
  }

LABEL_29:
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB700(type, self, timerCopy, v8);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006D694;
  handler[3] = &unk_1002B7208;
  typeCopy = type;
  handler[4] = self;
  v14 = timerCopy;
  v12 = timerCopy;
  dispatch_source_set_event_handler(v7, handler);
  CUDispatchTimerSet();
  dispatch_activate(v7);
}

- (void)_startTipiHealing:(id)healing withLastConnect:(id)connect
{
  healingCopy = healing;
  connectCopy = connect;
  v9 = connectCopy;
  if (!connectCopy)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (connectCopy = _LogCategory_Initialize(), connectCopy))
      {
        sub_1001EB7A4(connectCopy, v7, v8);
      }
    }

    goto LABEL_51;
  }

  v10 = [(BTSmartRoutingDaemon *)self _isMyAddress:connectCopy];
  if (v10)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_1001EB788(v10, v11, v12);
      }
    }

    goto LABEL_51;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100003918;
  v52 = sub_100003838;
  v53 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v14 = [discoveredDevices countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v14)
  {
    goto LABEL_47;
  }

  v15 = *v45;
  obj = discoveredDevices;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v44 + 1) + 8 * i);
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        idsDeviceID = [v17 idsDeviceID];
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]", 30, "Evaluator: Tipi healing PD %@ idsId %@", v17, idsDeviceID);
      }

      btAddressData = [v17 btAddressData];
      v20 = btAddressData;
      bytes = [btAddressData bytes];
      v22 = CUPrintNSDataAddress();
      idsDeviceID2 = [v17 idsDeviceID];
      v24 = [(BTSmartRoutingDaemon *)selfCopy _nearbyMacAddressTranslate:idsDeviceID2];

      v25 = v24;
      bytes2 = [v24 bytes];
      v27 = CUPrintNSDataAddress();
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]", 30, "Evaluator: Tipi healing comparing, Wx lastConnect: %@, PdAddr %@ transAddr %@", v9, v22, v27);
      }

      if (btAddressData && ((v28 = v9, v29 = [v9 bytes], *v29 == *(bytes + 3)) ? (v30 = *(v29 + 2) == bytes[5]) : (v30 = 0), v31 = v22, v30) || v24 && ((v32 = v9, v33 = objc_msgSend(v9, "bytes"), *v33 == *(bytes2 + 3)) ? (v34 = *(v33 + 2) == bytes2[5]) : (v34 = 0), v31 = v27, v34))
      {
        objc_storeStrong(v49 + 5, v31);
      }

      v35 = v49[5];
      if (v35)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_46;
            }

            v35 = v49[5];
          }

          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]", 30, "Evaluator: Tipi healing found via PD %@", v35);
        }

LABEL_46:

        discoveredDevices = obj;
        goto LABEL_47;
      }
    }

    discoveredDevices = obj;
    v14 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_47:

  if (v49[5] || (nearbyInfoDevices = selfCopy->_nearbyInfoDevices, v41[0] = _NSConcreteStackBlock, v41[1] = 3221225472, v41[2] = sub_10006DC5C, v41[3] = &unk_1002B89A0, v41[4] = selfCopy, v37 = v9, v42 = v37, v43 = &v48, [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v41], v42, v49[5]))
  {
    [(BTSmartRoutingDaemon *)selfCopy _sendTipiHealingRequest:healingCopy andOtherTipiAddress:?];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]", 90, "Evaluator: Tipi healing address not found for %@", v37);
  }

  _Block_object_dispose(&v48, 8);

LABEL_51:
}

- (void)_startWxDiscoveryForWorkout
{
  if (self->_prefSmartRoutingEnabledPhase3)
  {
    if (self->_wxDiscovery)
    {
      sub_1001EB8C4(self);
    }

    else
    {
      isBTRoute = self->_isBTRoute;
      v5 = dword_1002F6778;
      if (isBTRoute)
      {
        sub_1001EB968(dword_1002F6778, a2, v2);
      }

      else
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v5))
          {
            sub_1001EB94C(v5, a2, v2);
          }
        }

        [(BTSmartRoutingDaemon *)self _wxDiscoveryEnsureStarted];

        [(BTSmartRoutingDaemon *)self _startWxDiscoveryForWorkoutTimer:60];
      }
    }
  }

  else
  {
    sub_1001EB864(self, a2, v2);
  }
}

- (void)_startWxDiscoveryForWorkoutTimer:(unint64_t)timer
{
  timerCopy = timer;
  wxWorkoutDiscoveryTimer = self->_wxWorkoutDiscoveryTimer;
  if (wxWorkoutDiscoveryTimer)
  {
    v6 = wxWorkoutDiscoveryTimer;
    dispatch_source_cancel(v6);
    v7 = self->_wxWorkoutDiscoveryTimer;
    self->_wxWorkoutDiscoveryTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB9C0(timerCopy);
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v9 = self->_wxWorkoutDiscoveryTimer;
  self->_wxWorkoutDiscoveryTimer = v8;
  v10 = v8;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006E140;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  CUDispatchTimerSet();
  dispatch_activate(v10);
}

- (void)_submitMetric:(id)metric
{
  p_fakeHfpSessionCount = &self->_fakeHfpSessionCount;
  metricCopy = metric;
  v59[0] = @"nearbyAction";
  v51 = [NSNumber numberWithInt:self->_nearbyBannerActionCount];
  v60[0] = v51;
  v59[1] = @"nearbyIgnored";
  v5 = [NSNumber numberWithInt:self->_nearbyBannerTimeoutCount];
  v60[1] = v5;
  v59[2] = @"connectIgnored";
  v6 = [NSNumber numberWithInt:self->_connectedBannerTimeoutCount];
  v60[2] = v6;
  v59[3] = @"connectDismissed";
  v7 = [NSNumber numberWithInt:self->_connectedBannerDismissedCount];
  v60[3] = v7;
  v59[4] = @"reverseAudioIgnored";
  v8 = [NSNumber numberWithInt:self->_reverseBannerTimeoutCount];
  v60[4] = v8;
  v59[5] = @"reverseAudioAction";
  v9 = [NSNumber numberWithInt:self->_reverseBannerActionCount];
  v60[5] = v9;
  v59[6] = @"wxPD";
  v47 = metricCopy;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [metricCopy productID]);
  v60[6] = v10;
  v59[7] = @"wxBuildVersion";
  firmwareVersion = [metricCopy firmwareVersion];
  v12 = firmwareVersion;
  v13 = &stru_1002C1358;
  if (firmwareVersion)
  {
    v13 = firmwareVersion;
  }

  v60[7] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:8];
  CUMetricsLogEx();

  v57[0] = @"nearbyRouting";
  v52 = [NSNumber numberWithInt:self->_nearbyBannerRouting];
  v58[0] = v52;
  v57[1] = @"autoRoutingSingle";
  v49 = [NSNumber numberWithInt:self->_autoRoutingSingle];
  v58[1] = v49;
  v57[2] = @"autoRoutingTipi";
  v48 = [NSNumber numberWithInt:self->_autoRoutingTipi];
  v58[2] = v48;
  v57[3] = @"autoRoutingHijack";
  v46 = [NSNumber numberWithInt:self->_autoRoutingHijack];
  v58[3] = v46;
  v57[4] = @"autoRoutingHijackError";
  v15 = [NSNumber numberWithInt:self->_autoRoutingHijackError];
  v58[4] = v15;
  v57[5] = @"reverseRouting";
  v16 = [NSNumber numberWithInt:self->_reverseRoutingCount];
  v58[5] = v16;
  v57[6] = @"routingManual";
  v17 = [NSNumber numberWithInt:self->_routingManualCount];
  v58[6] = v17;
  v57[7] = @"wxPD";
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v47 productID]);
  v58[7] = v18;
  v57[8] = @"fakeHfpSession";
  v19 = [NSNumber numberWithInt:self->_fakeHfpSessionCount];
  v58[8] = v19;
  v57[9] = @"fakeHfpSessionReject";
  v20 = [NSNumber numberWithInt:self->_fakeHfpSessionRejectCount];
  v58[9] = v20;
  v57[10] = @"wxBuildVersion";
  firmwareVersion2 = [v47 firmwareVersion];
  v22 = firmwareVersion2;
  v23 = &stru_1002C1358;
  if (firmwareVersion2)
  {
    v23 = firmwareVersion2;
  }

  v58[10] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:11];
  CUMetricsLogEx();

  v25 = v47;
  btAddressData = [v47 btAddressData];
  v27 = CUPrintNSDataAddress();

  if (v27)
  {
    v28 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    mode = [v28 mode];
    if (mode > 2)
    {
      v30 = "?";
    }

    else
    {
      v30 = off_1002B90A0[mode];
    }

    v31 = [NSString stringWithUTF8String:v30];

    v32 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    mode2 = [v32 mode];

    if (mode2 == 1)
    {
      v34 = 1;
    }

    else
    {
      v35 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
      mode3 = [v35 mode];

      if (mode3 == 2)
      {
        v34 = 4294957297;
      }

      else
      {
        v34 = 0;
      }
    }

    v55[0] = @"enableSR";
    v53 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    v50 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v53 enableCount]);
    v56[0] = v50;
    v55[1] = @"disableSR";
    v37 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v37 disableCount]);
    v56[1] = v38;
    v56[2] = v31;
    v55[2] = @"mode";
    v55[3] = @"modeOffset";
    v39 = [NSNumber numberWithInt:v34];
    v56[3] = v39;
    v55[4] = @"srCapable";
    v40 = [NSNumber numberWithBool:self->_prefSmartRoutingEnabledPhase3];
    v56[4] = v40;
    v55[5] = @"wxBuildVersion";
    firmwareVersion3 = [v47 firmwareVersion];
    v42 = firmwareVersion3;
    v43 = &stru_1002C1358;
    if (firmwareVersion3)
    {
      v43 = firmwareVersion3;
    }

    v56[5] = v43;
    v55[6] = @"wxPD";
    v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v47 productID]);
    v56[6] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:7];
    CUMetricsLogEx();

    v25 = v47;
  }

  *(p_fakeHfpSessionCount + 20) = 0;
  *&self->_connectedBannerDismissedCount = 0;
  *&self->_reverseBannerActionCount = 0;
  self->_nearbyBannerRouting = 0;
  self->_autoRoutingSingle = 0;
  *&self->_autoRoutingTipi = 0;
  self->_autoRoutingHijackError = 0;
  self->_reverseRoutingCount = 0;
  self->_routingManualCount = 0;
  *p_fakeHfpSessionCount = 0;
}

- (void)_submitMetricNearby:(unsigned int)nearby
{
  nearByStats = self->_nearByStats;
  if (nearByStats)
  {
    v5 = *&nearby;
    v11[0] = @"noNB";
    v6 = [NSNumber numberWithUnsignedInt:[(SRNearbyStats *)nearByStats noNearbyDeviceFoundCount]];
    v12[0] = v6;
    v11[1] = @"nbTp";
    v7 = [NSNumber numberWithUnsignedInt:[(SRNearbyStats *)self->_nearByStats nearbyDeviceNoTipiScoreCount]];
    v12[1] = v7;
    v11[2] = @"wxPD";
    v8 = [NSNumber numberWithUnsignedInt:v5];
    v12[2] = v8;
    v11[3] = @"FDBT";
    v9 = [NSNumber numberWithUnsignedInt:[(SRNearbyStats *)self->_nearByStats SRConnectedSetCount]];
    v12[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    CUMetricsLogEx();

    [(SRNearbyStats *)self->_nearByStats setNoNearbyDeviceFoundCount:0];
    [(SRNearbyStats *)self->_nearByStats setNearbyDeviceNoTipiScoreCount:0];
    [(SRNearbyStats *)self->_nearByStats setSRConnectedSetCount:0];
    [(SRNearbyStats *)self->_nearByStats setMinRSSIHeadset:0];
  }
}

- (void)_submitMetricTipiHealingforDevice:(id)device withDuration:(double)duration andLegacy:(BOOL)legacy
{
  legacyCopy = legacy;
  deviceCopy = device;
  deviceAddress = [deviceCopy deviceAddress];
  v9 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:?];
  v10 = v9;
  v11 = &stru_1002C1358;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  otherTipiDeviceBTName = [deviceCopy otherTipiDeviceBTName];
  v14 = otherTipiDeviceBTName;
  v15 = @"Null";
  if (otherTipiDeviceBTName)
  {
    v15 = otherTipiDeviceBTName;
  }

  v16 = v15;

  LODWORD(v17) = vcvtpd_s64_f64(duration);
  v18 = [NSNumber numberWithInt:v17];
  v19 = [NSNumber numberWithInt:(duration * 1000.0)];
  if (duration > 10.0 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v20 = "yes";
    if (legacyCopy)
    {
      v20 = "no";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _submitMetricTipiHealingforDevice:withDuration:andLegacy:]", 90, "### Tipi healing duration %@ is larger than 10s, isV2 %s", v18, v20);
  }

  callConnected = [(SRStats *)self->_stats mediaPlaying]|| [(SRStats *)self->_stats callConnected];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v22 = "yes";
    if (legacyCopy)
    {
      v23 = "no";
    }

    else
    {
      v23 = "yes";
    }

    if (!callConnected)
    {
      v22 = "no";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _submitMetricTipiHealingforDevice:withDuration:andLegacy:]", 30, "Submit TiPiHealing stats, duration: %@s, TH V2: %s, audio playing: %s", v18, v23, v22);
  }

  v30[0] = @"Thv2";
  v24 = [NSNumber numberWithInt:!legacyCopy];
  v31[0] = v24;
  v31[1] = v18;
  v30[1] = @"duration";
  v30[2] = @"durationMS";
  v31[2] = v19;
  v30[3] = @"isPlaying";
  v25 = [NSNumber numberWithInt:callConnected];
  v31[3] = v25;
  v31[4] = v16;
  v30[4] = @"otherTiPiDevice";
  v30[5] = @"tipiV2Eligible";
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy isTipiHealingV2Eligible]);
  v31[5] = v26;
  v31[6] = v12;
  v30[6] = @"wxBuildVersion";
  v30[7] = @"wxPD";
  v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [deviceCopy productID]);
  v31[7] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:8];
  CUMetricsLogEx();
}

- (void)_submitManualRouteDetectionMetric:(id)metric
{
  metricCopy = metric;
  v5 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  v7 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];

  v8 = &stru_1002C1358;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  mach_absolute_time();
  v10 = UpTicksToSeconds();
  v11 = [_getCurrentRoute containsString:@"Speaker"];
  if (v11)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        sub_1001EBA1C(v11, v12, v13);
      }
    }
  }

  v19[0] = _getCurrentRoute;
  v18[0] = @"route";
  v18[1] = @"srCapable";
  v14 = [NSNumber numberWithBool:self->_prefSmartRoutingEnabledPhase3];
  v19[1] = v14;
  v18[2] = @"wxProductID";
  v15 = [NSNumber numberWithUnsignedInt:v5];
  v19[2] = v15;
  v18[3] = @"timeSinceLastHijack";
  v16 = [NSNumber numberWithUnsignedLongLong:v10];
  v18[4] = @"wxFWVersion";
  v19[3] = v16;
  v19[4] = v9;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

  CUMetricsLogEx();
}

- (void)_submitRouteChangeDetectionMetric:(id)metric andAnswer:(int64_t)answer
{
  if ((answer - 1) > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B90B8[answer - 1];
  }

  metricCopy = metric;
  v7 = [NSString stringWithUTF8String:v5];
  v8 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];

  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _submitRouteChangeDetectionMetric:andAnswer:]", 30, "Route check after hijack %@ for %ds current route %@", v7, 5, _getCurrentRoute);
  }

  v12[0] = @"hijackAnswer";
  v12[1] = @"route";
  v13[0] = v7;
  v13[1] = _getCurrentRoute;
  v12[2] = @"wxProductID";
  v10 = [NSNumber numberWithUnsignedInt:v8];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  CUMetricsLogEx();
}

- (BOOL)_supportsSR:(id)r andProductID:(unsigned int)d
{
  v4 = *&d;
  if ([(BTSmartRoutingDaemon *)self _supportsTipi:r])
  {
    return 1;
  }

  if (GestaltGetDeviceClass() != 1 && GestaltGetDeviceClass() != 6)
  {
    return 0;
  }

  return [(BTSmartRoutingDaemon *)self _supportsPhoneWatchTipi:v4];
}

- (BOOL)_supportsTipi:(id)tipi
{
  tipiCopy = tipi;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        btAddressData = [v11 btAddressData];
        v13 = CUPrintNSDataAddress();

        if (tipiCopy && v13 && [tipiCopy isEqualToString:v13])
        {
          v8 |= ([v11 deviceFlags] >> 4) & 1;
        }
      }

      v7 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)_supportsPhoneWatchTipi:(unsigned int)tipi
{
  v3 = tipi - 8194;
  if (tipi - 8194 <= 0xE)
  {
    v4 = 0x3F64u >> (tipi - 2);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  v5 = v3 > 0x2D;
  v6 = (1 << v3) & 0x20647A877F9BLL;
  if (v5 || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8 & 1;
}

- (void)_setTipiElectionType:(BOOL)type withDevice:(id)device
{
  typeCopy = type;
  deviceCopy = device;
  v12 = deviceCopy;
  if (typeCopy)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), deviceCopy))
      {
        sub_1001EBA54(deviceCopy, v7, v8);
      }
    }

    self->_tipiElectionThroughLEPipe = 0;
    lePipeDevice = self->_lePipeDevice;
    self->_lePipeDevice = 0;
  }

  else
  {
    v10 = deviceCopy;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), v10 = v12, deviceCopy))
      {
        sub_1001EBA38(deviceCopy, v10, v8);
        v10 = v12;
      }
    }

    self->_tipiElectionThroughLEPipe = 1;
    v11 = v10;
    lePipeDevice = self->_lePipeDevice;
    self->_lePipeDevice = v11;
  }
}

- (void)systemStatePushRequired
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F4FC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_systemStatePushRequired
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001EBA70(self, a2, v2);
    }
  }

  [(AAServicesDaemon *)selfCopy->_aaServicesDaemon reportSiriHijackElgibilityUpdated:[(SRSourceDevice *)selfCopy->_sourceDevice isSystemEligibleForSiriHijack]];
  activeHRMDevice = [(SRSourceDevice *)selfCopy->_sourceDevice activeHRMDevice];
  if (activeHRMDevice && (specificHRMDeviceChosenForFitnessPlus = selfCopy->_specificHRMDeviceChosenForFitnessPlus, activeHRMDevice, specificHRMDeviceChosenForFitnessPlus))
  {
    activeHRMDevice2 = [(SRSourceDevice *)selfCopy->_sourceDevice activeHRMDevice];
    identifier = [activeHRMDevice2 identifier];

    v7 = [(AAPairedDeviceDaemon *)selfCopy->_aaPairedDeviceDaemon deviceWithIdentifier:identifier];
    [(AAServicesDaemon *)selfCopy->_aaServicesDaemon reportActiveHRMDeviceUpdated:v7 withSREnabled:1];
  }

  else
  {

    [(BTSmartRoutingDaemon *)selfCopy activeHRMDeviceUpdateWithPushRequired:1];
  }
}

- (void)systemStateUpdateRequired
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F690;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_systemStateUpdateRequired
{
  if (_os_feature_enabled_impl())
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006F7A0;
    v5[3] = &unk_1002B7E18;
    v5[4] = self;
    v5[5] = &v6;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
    isSystemEligibleForSiriHijack = [(SRSourceDevice *)self->_sourceDevice isSystemEligibleForSiriHijack];
    if (*(v7 + 24) != isSystemEligibleForSiriHijack)
    {
      [(SRSourceDevice *)self->_sourceDevice setIsSystemEligibleForSiriHijack:?];
      [(AAServicesDaemon *)self->_aaServicesDaemon reportSiriHijackElgibilityUpdated:[(SRSourceDevice *)self->_sourceDevice isSystemEligibleForSiriHijack]];
    }

    _Block_object_dispose(&v6, 8);
  }
}

- (id)_sourceModelNameFromModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = @"Mac";
  if (([identifierCopy containsString:@"Mac"] & 1) == 0)
  {
    v4 = @"iPad";
    if (([identifierCopy hasPrefix:@"iPad"] & 1) == 0)
    {
      v4 = @"iPhone";
      if (([identifierCopy hasPrefix:@"iPhone"] & 1) == 0)
      {
        v4 = @"Watch";
        if (([identifierCopy hasPrefix:@"Watch"] & 1) == 0)
        {
          v4 = @"AppleTV";
          if (([identifierCopy hasPrefix:@"AppleTV"] & 1) == 0)
          {
            v4 = @"RealityDevice";
            if (![identifierCopy hasPrefix:@"RealityDevice"])
            {
              v4 = &stru_1002C1358;
            }
          }
        }
      }
    }
  }

  return v4;
}

- (void)_tipiHealingAttempt
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003918;
  v18 = sub_100003838;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100003918;
  v12 = sub_100003838;
  v13 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006FB8C;
  v7[3] = &unk_1002B89C8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v14;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v7];
  if (v9[5])
  {
    if (v15[5])
    {
      if ([(BTSmartRoutingDaemon *)self _lastConnectIsWatchCheck:?])
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v4 = "Evaluator: Skip tipi healing, lastConnected device address is Watch";
LABEL_14:
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealingAttempt]", 30, v4);
        }
      }

      else
      {
        v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v9[5]];
        tipiHealingBackoff = [v5 tipiHealingBackoff];

        if (tipiHealingBackoff)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            v4 = "Tipi healing backoff for ongoing FD";
            goto LABEL_14;
          }
        }

        else
        {
          [(BTSmartRoutingDaemon *)self _startTipiHealing:v9[5] withLastConnect:v15[5]];
        }
      }
    }

    else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealingAttempt]", 90, "Unable to heal Tipi, lastConnected device address is not valid.");
    }
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

- (void)_tipiHealing:(id)healing withDevice:(id)device
{
  healingCopy = healing;
  deviceCopy = device;
  v8 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:healingCopy];
  v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:healingCopy];
  if ([@"5A187" compare:v8 options:64] != 1)
  {
    if ([(NSString *)self->_triangleRecoveryInitiatedAddress isEqualToString:healingCopy])
    {
      triangleRecoveryInitiatedAddress = self->_triangleRecoveryInitiatedAddress;
      self->_triangleRecoveryInitiatedAddress = 0;
    }

    if (self->_prefSmartRoutingWatchAutomaticSwitching && [(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforTipiHealingCheck:deviceCopy])
    {
      if (!self->_pairedCompanionDeviceSupportsSmartRouting)
      {
        goto LABEL_79;
      }

      getActivePairedDevice = [(NRPairedDeviceRegistry *)self->_NRRegistry getActivePairedDevice];
      v12 = [getActivePairedDevice valueForProperty:NRDevicePropertyProductType];
      v13 = [(__CFString *)v12 hasPrefix:@"Watch"];
      v14 = @"iPhone";
      if (v13)
      {
        v14 = @"Watch";
      }

      v15 = v14;
      [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:healingCopy otherAddress:deviceCopy otherName:v15 otherVersion:&off_1002CB618];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealing:withDevice:]", 30, "TipiTableEvent: the other device is magnet paired device; Tipi healing attempt succeeded! Booyaaa!!! update the other tipi address %@, name %@, TiPi Version %@", deviceCopy, v15, &off_1002CB618);
      }

      if (GestaltGetDeviceClass() == 1)
      {
        [v9 setOtherTipiDeviceIsWatch:1];
      }

      [v9 setOtherTipiIDSIdentifier:@"RPDestinationIdentifierPairedCompanion"];
      [(BTSmartRoutingDaemon *)self _tipihHealingV2Handling:healingCopy];

      goto LABEL_77;
    }

    v16 = +[CBIDSManager sharedInstance];
    getActivePairedDevice = [v16 idsDeviceForBTAddress:deviceCopy];

    if (!getActivePairedDevice)
    {
LABEL_78:

      goto LABEL_79;
    }

    productName = [getActivePairedDevice productName];
    if ([productName isEqualToString:@"iPhone OS"])
    {
      objc_msgSend_operatingSystemVersion(getActivePairedDevice);
      if (v53 <= 15)
      {

        goto LABEL_22;
      }
    }

    modelIdentifier = [getActivePairedDevice modelIdentifier];
    if ([modelIdentifier containsString:@"Mac"])
    {
      objc_msgSend_operatingSystemVersion(getActivePairedDevice);

      if (v52 <= 12)
      {
LABEL_22:
        [v9 setIsTipiHealingV2Eligible:0];
        if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EBC50();
        }

        [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
        goto LABEL_78;
      }
    }

    else
    {
    }

    productName2 = [getActivePairedDevice productName];
    v20 = [productName2 hasPrefix:@"Watch"];

    if (v20)
    {
      if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBC1C();
      }

      goto LABEL_78;
    }

    modelIdentifier2 = [getActivePairedDevice modelIdentifier];
    v22 = [modelIdentifier2 hasPrefix:@"AppleTV"];

    if (v22)
    {
      if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBBE8();
      }

      goto LABEL_78;
    }

    if ([v9 tipiHealingBackoff])
    {
      if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBBB4();
      }

      goto LABEL_78;
    }

    nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    if (nearbyInfoDevicesTriangleRecoveryTimer)
    {
      v24 = nearbyInfoDevicesTriangleRecoveryTimer;
      dispatch_source_cancel(v24);
      v25 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
      self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
    }

    tipiHealingTimer = self->_tipiHealingTimer;
    if (!tipiHealingTimer)
    {
LABEL_58:
      modelIdentifier3 = [getActivePairedDevice modelIdentifier];
      v12 = @"Mac";
      if (([modelIdentifier3 containsString:@"Mac"] & 1) == 0)
      {
        modelIdentifier4 = [getActivePairedDevice modelIdentifier];
        v31 = [modelIdentifier4 hasPrefix:@"iPad"];
        v32 = @"iPhone";
        if (v31)
        {
          v32 = @"iPad";
        }

        v12 = v32;
      }

      modelIdentifier5 = [getActivePairedDevice modelIdentifier];
      v44 = [modelIdentifier5 containsString:@"Mac"];

      v34 = +[CBIDSManager sharedInstance];
      v35 = [v34 idsDeviceForBTAddress:deviceCopy];
      uniqueID = [v35 uniqueID];

      productName3 = [getActivePairedDevice productName];
      if ([productName3 isEqualToString:@"iPhone OS"])
      {
        objc_msgSend_operatingSystemVersion(getActivePairedDevice);
        if (v51 >= 17)
        {

          v37 = &dword_1002F6000;
LABEL_67:
          v39 = &off_1002CB618;
          goto LABEL_70;
        }
      }

      modelIdentifier6 = [getActivePairedDevice modelIdentifier];
      if ([modelIdentifier6 containsString:@"Mac"])
      {
        objc_msgSend_operatingSystemVersion(getActivePairedDevice);

        v37 = &dword_1002F6000;
        if (v50 >= 14)
        {
          goto LABEL_67;
        }

        v39 = &off_1002CB628;
      }

      else
      {

        v39 = &off_1002CB628;
        v37 = &dword_1002F6000;
      }

LABEL_70:
      [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:healingCopy otherAddress:deviceCopy otherName:v12 otherVersion:v39];
      [v9 setOtherTipiDeviceDRCompatible:{-[BTSmartRoutingDaemon _isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:](self, "_isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:", deviceCopy, 19, 16, 0, 0) ^ 1}];
      objc_msgSend_operatingSystemVersion(getActivePairedDevice);
      objc_msgSend_operatingSystemVersion(getActivePairedDevice);
      [v9 setOtherTipiDeviceBuildVersion:v49 andMinorBuildVersion:v48];
      v40 = uniqueID;
      [v9 setOtherTipiIDSIdentifier:uniqueID];
      v41 = v37[478];
      if (v41 <= 30 && (v41 != -1 || _LogCategory_Initialize()))
      {
        productName4 = [getActivePairedDevice productName];
        objc_msgSend_operatingSystemVersion(getActivePairedDevice);
        objc_msgSend_operatingSystemVersion(getActivePairedDevice);
        v43 = "no";
        if (v44)
        {
          v43 = "yes";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealing:withDevice:]", 30, "TipiTableEvent: Tipi healing attempt succeeded! Booyaaa!!! update the other tipi address %@, name %@, TiPi Version %@, model %@ build %d.%d, otherIsMac %s", deviceCopy, v12, v39, productName4, v47, v46, v43);

        v40 = uniqueID;
      }

      [(BTSmartRoutingDaemon *)self _tipihHealingV2Handling:healingCopy];

LABEL_77:
      goto LABEL_78;
    }

    if (dword_1002F6778 >= 31)
    {
      v27 = tipiHealingTimer;
    }

    else
    {
      if (dword_1002F6778 != -1 || _LogCategory_Initialize())
      {
        sub_1001EBB80();
      }

      v27 = self->_tipiHealingTimer;
      if (!v27)
      {
        goto LABEL_57;
      }
    }

    dispatch_source_cancel(v27);
    v28 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = 0;

LABEL_57:
    self->_tipiElectionInProgress = 0;
    goto LABEL_58;
  }

  [v9 setIsTipiHealingV2Eligible:0];
  if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBC84(v8);
  }

  [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
LABEL_79:
}

- (void)_tipihHealingV2Handling:(id)handling
{
  handlingCopy = handling;
  [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:handlingCopy];
  v6 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:handlingCopy];
  if (self->_activityLevelMediaPlaying || [(CUSystemMonitor *)self->_callMonitor activeCallCount]> 0)
  {
    v60 = 1;
  }

  else
  {
    v60 = [(NSString *)self->_cdDeviceIdentifier isEqualToString:handlingCopy];
  }

  identifier = [v5 identifier];
  v7 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:?];
  zeroSourceLastRouteHost = [v7 zeroSourceLastRouteHost];

  v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:handlingCopy];
  v10 = [(BTSmartRoutingDaemon *)self _isMyAddress:zeroSourceLastRouteHost];
  v11 = "no";
  if (v10)
  {
    if (objc_msgSend_nearbyOutOfCaseTime(v9))
    {
      v11 = "no";
    }

    else
    {
      v11 = "yes";
    }
  }

  v58 = v11;
  userConnectedState = [v9 userConnectedState];
  v12 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:handlingCopy];
  if ([v12 audioStreamState])
  {
    v13 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:handlingCopy];
    if ([v13 audioStreamState] <= 1)
    {
      v14 = "no";
    }

    else
    {
      v14 = "yes";
    }

    v57 = v14;
  }

  else
  {
    v57 = "yes";
  }

  if ([(BTSmartRoutingDaemon *)self _isMyAddress:zeroSourceLastRouteHost]&& !objc_msgSend_nearbyOutOfCaseTime(v9))
  {
    v15 = [v5 otherTipiDeviceLastPlay] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v55 = zeroSourceLastRouteHost;
    v56 = v6;
    if (self->_isBTRoute)
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    if (v60)
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    v53 = v17;
    v54 = v16;
    if ([v5 lastPlay])
    {
      v18 = "yes";
    }

    else
    {
      v18 = "no";
    }

    v52 = v18;
    if ([v5 otherTipiDeviceLastPlay])
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    v51 = v19;
    v20 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:handlingCopy];
    if (v20)
    {
      v21 = "yes";
    }

    else
    {
      v21 = "no";
    }

    if (userConnectedState)
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    v23 = objc_msgSend_nearbyOutOfCaseTime(v9);
    if (v23 > 3)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_1002B90D8[v23];
    }

    if (v15)
    {
      v25 = "yes";
    }

    else
    {
      v25 = "no";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipihHealingV2Handling:]", 30, "TipiTableEvent: isBTRoute %s streaming %s isLastRoute %s isLastPlay %s otherLastPlay %s audioState %s budswap %s UserConnected %s outofCaseTime %s isLastRoutedBeforeOutOfCase %s", v54, v53, v58, v52, v51, v57, v21, v22, v24, v25);

    zeroSourceLastRouteHost = v55;
    v6 = v56;
  }

  if ((self->_isBTRoute & v60 | v15) & 1) != 0 || self->_callConnected || ((self->_splitterStateOn | userConnectedState))
  {
    [v5 setRoutingAction:1];
    if (userConnectedState)
    {
      v26 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:handlingCopy];
      [v26 _setUserConnectedState:0];
    }
  }

  else
  {
    [v5 setRoutingAction:3];
  }

  v27 = [v5 setIsTipiHealingV2Eligible:1];
  nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
  if (nearbyInfoDevicesTriangleRecoveryTimer)
  {
    v31 = nearbyInfoDevicesTriangleRecoveryTimer;
    dispatch_source_cancel(v31);
    v32 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
  }

  tipiHealingTimer = self->_tipiHealingTimer;
  if (tipiHealingTimer)
  {
    if (dword_1002F6778 >= 31)
    {
      v34 = tipiHealingTimer;
    }

    else
    {
      if (dword_1002F6778 != -1 || (v27 = _LogCategory_Initialize(), v27))
      {
        sub_1001EBCCC(v27, v28, v29);
      }

      v34 = self->_tipiHealingTimer;
      if (!v34)
      {
        goto LABEL_64;
      }
    }

    dispatch_source_cancel(v34);
    v35 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = 0;

LABEL_64:
    self->_tipiElectionInProgress = 0;
  }

  [(BTSmartRoutingDaemon *)self _notifyOtherTipiDeviceTipiScoreChanged:0 andNewScore:0];
  [v5 setIsRoutingActionInitialized:1];
  if (self->_tipiHealingHijackTimer)
  {
    v36 = [(BTSmartRoutingDaemon *)self _deviceSupportsHijackV2:v6 withDevice:v5];
    if ((v36 & 1) == 0)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v36 = _LogCategory_Initialize(), v36))
        {
          sub_1001EBCE8(v36, v37, v38);
        }
      }

      [(BTSmartRoutingDaemon *)self _tipiHealingCompleteCheckTimerForDevice:v5];
    }
  }

  if (([v5 tipitableUpdated] & 1) == 0)
  {
    v39 = zeroSourceLastRouteHost;
    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    otherTipiDeviceBTAddress = [v5 otherTipiDeviceBTAddress];
    if ([v5 routingAction] == 1)
    {
      v67 = _myBluetoothAddressString;
      v42 = &v67;
      v43 = otherTipiDeviceBTAddress;
    }

    else
    {
      v66 = otherTipiDeviceBTAddress;
      v42 = &v66;
      v43 = _myBluetoothAddressString;
    }

    v42[1] = v43;
    v44 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
    v45 = [(BTSmartRoutingDaemon *)self _verifyWxConnectedBTAddress:handlingCopy withVersion:&off_1002CB6F0];
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipihHealingV2Handling:]", 90, "TipiTableEvent: update wx Tipi table for Wx %@, addresses %@", handlingCopy, v44);
    }

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100070CB0;
    v62[3] = &unk_1002B6D60;
    v63 = handlingCopy;
    v64 = v44;
    v65 = v5;
    [(BTSmartRoutingDaemon *)self _updateAccessoryID:v45 connectionDeviceAddresses:v44 completion:v62];

    zeroSourceLastRouteHost = v39;
  }

  v46 = [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:handlingCopy];

  if (v46)
  {
    mach_absolute_time();
    [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:handlingCopy];
    v48 = v47 = zeroSourceLastRouteHost;
    [v48 thV2Ticks];
    UpTicksToSecondsF();
    v50 = v49;

    zeroSourceLastRouteHost = v47;
    [(BTSmartRoutingDaemon *)self _submitMetricTipiHealingforDevice:v5 withDuration:0 andLegacy:v50];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBD04(v5);
  }
}

- (void)_tipiHealingStartTimer:(id)timer
{
  v4 = dispatch_time(0, 10000000000);
  tipiHealingTimer = self->_tipiHealingTimer;
  if (tipiHealingTimer)
  {

    dispatch_source_set_timer(tipiHealingTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v7 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = v6;

    v8 = self->_tipiHealingTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100070E5C;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(self->_tipiHealingTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_tipiHealingTimer);
  }
}

- (void)_triggerTipiTableUpdate:(id)update
{
  updateCopy = update;
  v6 = updateCopy;
  if (updateCopy)
  {
    v8 = updateCopy;
    v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:?];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBDCC(self, v7);
    }

    [(AAController *)self->_aaController sendGetTipiTableMessageToDestinationIdentifier:v8 completionHandler:&stru_1002B89E8];

    goto LABEL_6;
  }

  if (dword_1002F6778 <= 90)
  {
    v8 = 0;
    if (dword_1002F6778 != -1 || (updateCopy = _LogCategory_Initialize(), v6 = 0, updateCopy))
    {
      sub_1001EBE34(updateCopy, v5, v6);
LABEL_6:
      v6 = v8;
    }
  }
}

- (BOOL)_deviceSupportsHijackV2:(id)v2 withDevice:(id)device
{
  deviceCopy = device;
  if ([@"5E135" compare:v2 options:64] == 1)
  {
    v6 = 0;
  }

  else
  {
    otherTipiDeviceVersion = [deviceCopy otherTipiDeviceVersion];
    v6 = [otherTipiDeviceVersion intValue] > 1;
  }

  return v6;
}

- (BOOL)_tipiHealingHijackTimerStart:(id)start withScore:(int)score
{
  startCopy = start;
  v8 = self->_tipiHealingHijackTimer;
  v11 = v8;
  if (v8)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001EBE90(v8, v9, v10);
      }
    }

    v12 = v11;
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBEAC();
    }

    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    tipiHealingHijackTimer = self->_tipiHealingHijackTimer;
    self->_tipiHealingHijackTimer = v12;

    objc_storeStrong(&self->_tipiHealingHijackTimerAddress, start);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10007122C;
    handler[3] = &unk_1002B7208;
    handler[4] = self;
    v16 = startCopy;
    scoreCopy = score;
    dispatch_source_set_event_handler(v12, handler);
    CUDispatchTimerSet();
    dispatch_activate(v12);
  }

  return v11 == 0;
}

- (void)_tipiHealingHijackTimerReset
{
  selfCopy = self;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001EBF0C(self, a2, v2);
    }
  }

  tipiHealingHijackTimer = selfCopy->_tipiHealingHijackTimer;
  if (tipiHealingHijackTimer)
  {
    v5 = tipiHealingHijackTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_tipiHealingHijackTimer;
    selfCopy->_tipiHealingHijackTimer = 0;
  }

  tipiHealingHijackTimerAddress = selfCopy->_tipiHealingHijackTimerAddress;
  selfCopy->_tipiHealingHijackTimerAddress = 0;
}

- (BOOL)_arbitrationTimeout:(id)timeout withScore:(int)score
{
  v4 = *&score;
  connectedDevices = self->_connectedDevices;
  timeoutCopy = timeout;
  v8 = [(NSMutableDictionary *)connectedDevices objectForKeyedSubscript:timeoutCopy];
  audioStreamState = [v8 audioStreamState];

  if (audioStreamState - 1 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_100225F34[audioStreamState - 1];
  }

  v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:timeoutCopy];

  if ([v11 hijackBackoffTicks])
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 <= v4;
  }

  v13 = v12;

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v14 = @"DontRoute";
    if (v13)
    {
      v14 = @"Route";
    }

    if (audioStreamState > 3)
    {
      v15 = "?";
    }

    else
    {
      v15 = off_1002B9128[audioStreamState];
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _arbitrationTimeout:withScore:]", 30, "Arbitration timeout: Decision is %@, remote category %d, local category %d wxStreamState %s", v14, v10, v4, v15);
  }

  return v13;
}

- (void)_setPipeMessageStats:(unint64_t)stats
{
  [(SRStats *)self->_stats setFirstPipeMessageRTT:stats];
  [(SRStats *)self->_stats firstPipeMessageRTT];
  v4 = UpTicksToSeconds();
  if (v4 >= 4 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_1001EBF28(v4, v5, v6);
    }
  }
}

- (void)_updateAudioRoute:(int)route withUUID:(id)d
{
  v4 = *&route;
  dCopy = d;
  if (v4)
  {
    p_sourceDevice = &self->_sourceDevice;
    if (-[SRSourceDevice audioRoute](self->_sourceDevice, "audioRoute") != v4 || (-[SRSourceDevice audioDestination](*p_sourceDevice, "audioDestination"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:dCopy], v7, (v8 & 1) == 0))
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBF44(&self->_sourceDevice, v4, dCopy);
      }

      [(SRSourceDevice *)*p_sourceDevice setAudioRoute:v4];
      [(SRSourceDevice *)*p_sourceDevice setAudioDestination:dCopy];
    }
  }

  if (self->_prefSmartRoutingConnectionManager)
  {
    v9 = +[SRConnectionManager sharedSRConnectionManager];
    [v9 audioRouteChanged:v4];
  }
}

- (void)_updateLocalAudioCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (self->_prefSmartRoutingPreemptiveConnectedBanner && [(NSNumber *)categoryCopy intValue]>= 301 && [(NSNumber *)self->_localDeviceAudioCategory intValue]== 100)
  {
    v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count];
    if (!v7)
    {
      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          sub_1001EBFE4(v7, v8, v9);
        }
      }

      objc_storeStrong(&self->_localDeviceAudioCategory, category);
      if (self->_prefSmartRoutingConnectionManager)
      {
        dispatchQueue = self->_dispatchQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100071910;
        block[3] = &unk_1002B6880;
        block[4] = self;
        dispatch_async(dispatchQueue, block);
      }

      else
      {
        [(BTSmartRoutingDaemon *)self _evaluatorRun];
      }

      if (self->_preemptiveBannerConnectionInProgress)
      {
        [(SRStats *)self->_stats setLocalAudioScore:self->_localDeviceAudioCategory];
      }
    }
  }

  localDeviceAudioCategory = self->_localDeviceAudioCategory;
  if (localDeviceAudioCategory != v6)
  {
    p_localDeviceAudioCategory = &self->_localDeviceAudioCategory;
    if (dword_1002F6778 > 90)
    {
      goto LABEL_18;
    }

    if (dword_1002F6778 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_18:
        objc_storeStrong(&self->_localDeviceAudioCategory, category);
        if ([(NSNumber *)*p_localDeviceAudioCategory intValue]>= 101 && self->_stemClickResumeTimer)
        {
          [(BTSmartRoutingDaemon *)self _recordStemClickToResponseDelay];
        }

        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100071918;
        v19[3] = &unk_1002B7FA8;
        v19[4] = self;
        v17 = v6;
        v20 = v17;
        [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v19];
        v18 = +[SRConnectionManager sharedSRConnectionManager];
        [v18 localAudioCategoryChanged:v17];

        goto LABEL_22;
      }

      localDeviceAudioCategory = *p_localDeviceAudioCategory;
    }

    intValue = [(NSNumber *)localDeviceAudioCategory intValue];
    intValue2 = [(NSNumber *)v6 intValue];
    activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateLocalAudioCategory:]", 90, "Updating local audio category %d -> %d app %@", intValue, intValue2, activePlayingApp);

    goto LABEL_18;
  }

LABEL_22:
}

- (void)_updateNowPlayingInfoForConnectedWx:(id)wx withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address
{
  var5 = wx.var5;
  v7 = *&wx.var0;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100071A68;
  v12[3] = &unk_1002B8A38;
  v13 = addressCopy;
  v14 = v7;
  v15 = var5;
  v16 = WORD2(var5);
  targetCopy = target;
  v12[4] = self;
  v11 = addressCopy;
  dispatch_async(dispatchQueue, v12);
}

- (void)_updateOtherTipiBuildVersion:(id)version
{
  v4 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:version];
  otherTipiDeviceBTAddress = [v4 otherTipiDeviceBTAddress];
  if (otherTipiDeviceBTAddress)
  {
    if (([v4 otherTipiDeviceIsWatch] & 1) != 0 || GestaltGetDeviceClass() == 6)
    {
      NRRegistry = self->_NRRegistry;
      if (!NRRegistry)
      {
        v7 = +[NRPairedDeviceRegistry sharedInstance];
        v8 = self->_NRRegistry;
        self->_NRRegistry = v7;

        NRRegistry = self->_NRRegistry;
      }

      getActivePairedDevice = [(NRPairedDeviceRegistry *)NRRegistry getActivePairedDevice];
      v10 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
      v11 = [v10 componentsSeparatedByString:@"."];
      v12 = [v11 objectAtIndex:0];
      integerValue = [v12 integerValue];

      v14 = [v10 componentsSeparatedByString:@"."];
      v15 = [v14 objectAtIndex:1];
      integerValue2 = [v15 integerValue];

      [v4 setOtherTipiDeviceDRCompatible:{-[BTSmartRoutingDaemon _isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:](self, "_isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:", 0, 19, 0, 12, 1) ^ 1}];
      [v4 setOtherTipiDeviceBuildVersion:integerValue andMinorBuildVersion:integerValue2];
      [v4 setOtherTipiIDSIdentifier:@"RPDestinationIdentifierPairedCompanion"];
    }

    else
    {
      v17 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromBtAddress:otherTipiDeviceBTAddress];
      getActivePairedDevice = v17;
      if (v17)
      {
        objc_msgSend_operatingSystemVersion(v17);
        v18 = v24;
        objc_msgSend_operatingSystemVersion(getActivePairedDevice);
        v19 = v22;
      }

      else
      {
        v19 = 0;
        v18 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
      }

      [v4 setOtherTipiDeviceBuildVersion:v18 andMinorBuildVersion:{v19, v21, v22, v23, v24, v25, v26}];
      uniqueID = [getActivePairedDevice uniqueID];
      [v4 setOtherTipiIDSIdentifier:uniqueID];

      [v4 setOtherTipiDeviceDRCompatible:{-[BTSmartRoutingDaemon _isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:](self, "_isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:", otherTipiDeviceBTAddress, 19, 16, 0, 0) ^ 1}];
    }
  }
}

- (void)_updateOtherTipiDevice:(id)device otherAddress:(id)address otherName:(id)name otherVersion:(id)version withResult:(id)result
{
  deviceCopy = device;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v15 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:deviceCopy];
  v18 = v15;
  if (v15)
  {
    if (result)
    {
      [v15 setRoutingAction:2];
      [v18 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];
      [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:deviceCopy withAddress:&stru_1002C1358 withEasyPairing:0 withState:3];
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateOtherTipiDevice:otherAddress:otherName:otherVersion:withResult:]", 30, "Smart Routing updating device %@ with otherAddress %@ otherName %@ otherVersion %@", deviceCopy, addressCopy, nameCopy, versionCopy);
      }

      v19 = addressCopy;
      [v18 setRoutingAction:1];
      [v18 setOtherTipiDeviceInfo:v19 andName:nameCopy andVersion:versionCopy];
      [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:deviceCopy withAddress:v19 withEasyPairing:0 withState:1];

      v20 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:deviceCopy];
      [v20 setOtherTipiAudioCategory:0];
      [v20 setOtherTipiDeviceIsStreamingAudio:0];
    }

    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  }

  else if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (v15 = _LogCategory_Initialize(), v15))
    {
      sub_1001EC000(v15, v16, v17);
    }
  }
}

- (void)_updateOtherTipiDevicewithAudioCategory:(id)category otherAddress:(id)address otherName:(id)name otherVersion:(id)version
{
  categoryCopy = category;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
  v14 = addressCopy;
  if (v13)
  {
    [v13 setOtherTipiDeviceInfo:v14 andName:nameCopy andVersion:versionCopy];
    if ([(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforTipiHealingCheck:v14]&& GestaltGetDeviceClass() == 1)
    {
      [v13 setOtherTipiDeviceIsWatch:1];
    }

    if (self->_isBTRoute)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    [v13 setRoutingAction:v15];
    if (v14)
    {
      [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:categoryCopy withAddress:v14 withEasyPairing:0 withState:1];
      [versionCopy doubleValue];
      if (v16 >= 2.0)
      {
        if (self->_localDeviceAudioCategory)
        {
          [(BTSmartRoutingDaemon *)self _sendAudioCategory:categoryCopy withAudioCategory:?];
        }
      }
    }
  }
}

- (id)_verifyWxConnectedBTAddress:(id)address withVersion:(id)version
{
  addressCopy = address;
  versionCopy = version;
  if (addressCopy && ([(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC01C(addressCopy);
    }

    v20 = 0;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v10 = [discoveredDevices countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      selfCopy = self;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(discoveredDevices);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          btAddressData = [v14 btAddressData];
          if ([btAddressData length] != 6)
          {
            [versionCopy doubleValue];
            v16 = 0;
LABEL_14:

            goto LABEL_15;
          }

          v16 = NSPrintF("%.6a", COERCE_DOUBLE([btAddressData bytes]));
          [versionCopy doubleValue];
          if (v17 < 1.1)
          {
            if (!v16 || ([v14 deviceFlags] & 0x10) == 0)
            {
              goto LABEL_14;
            }

            v18 = [(NSMutableDictionary *)selfCopy->_connectedDevices objectForKeyedSubscript:v16];
            goto LABEL_27;
          }

          if (!v16)
          {
            goto LABEL_14;
          }

          if ([addressCopy isEqualToString:v16] && (objc_msgSend(v14, "deviceFlags") & 0x10) != 0)
          {
            v18 = v14;
LABEL_27:
            v20 = v18;
            goto LABEL_28;
          }

          if (![addressCopy isEqualToString:v16] || (objc_msgSend(v14, "deviceFlags") & 0x10) != 0)
          {
            goto LABEL_14;
          }

          v19 = objc_alloc_init(CBDevice);
          [v19 setIdentifier:@"FF:FF:FF:FF:FF:FF"];
          v20 = v19;
          if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EC05C(addressCopy);
          }

LABEL_28:
          if (v20)
          {
            goto LABEL_33;
          }

LABEL_15:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v21 = [discoveredDevices countByEnumeratingWithState:&v24 objects:v28 count:16];
        v11 = v21;
      }

      while (v21);
    }

    v20 = 0;
LABEL_33:
  }

  return v20;
}

- (BOOL)_verifyWxConnectedRouted:(id)routed
{
  routedCopy = routed;
  p_smartRoutingWxDeviceMap = &self->_smartRoutingWxDeviceMap;
  v6 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:routedCopy];
  routed = [v6 routed];

  v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:routedCopy];
  if ([v8 inEar])
  {
    v9 = [(NSMutableDictionary *)*p_smartRoutingWxDeviceMap objectForKeyedSubscript:routedCopy];
    otherTipiDeviceBTAddress = [v9 otherTipiDeviceBTAddress];
    v11 = otherTipiDeviceBTAddress == 0;

    v12 = v11 | routed;
  }

  else
  {
    v12 = 1;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC09C();
  }

  return v12 & 1;
}

- (void)_watchHintingRecovery
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000724F0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)watchMediaControl
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072678;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_watchMediaControl
{
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001EC1B8(self, a2, v2);
    }
  }
}

- (void)_watchRecoveryStartTimer
{
  v3 = dispatch_time(0, 120000000000);
  watchRecoveryTimer = self->_watchRecoveryTimer;
  if (watchRecoveryTimer)
  {

    dispatch_source_set_timer(watchRecoveryTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v6 = self->_watchRecoveryTimer;
    self->_watchRecoveryTimer = v5;

    v7 = self->_watchRecoveryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000727D4;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_source_set_timer(self->_watchRecoveryTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_watchRecoveryTimer);
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  btAddressData = [foundCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    identifier = [foundCopy identifier];
    v7 = +[CBIDSManager sharedInstance];
    identifier2 = [foundCopy identifier];
    [v7 connectionUpdatedForBluetoothIdentifier:identifier2 connected:1];

    if (([foundCopy connectedServices] & 0x11) == 0)
    {
LABEL_310:

      goto LABEL_311;
    }

    if (!self->_connectedDevices)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      connectedDevices = self->_connectedDevices;
      self->_connectedDevices = v9;
    }

    if (!self->_connectedDevicesInEarCache)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      connectedDevicesInEarCache = self->_connectedDevicesInEarCache;
      self->_connectedDevicesInEarCache = v11;
    }

    v13 = [sub_100073044() objectForKeyedSubscript:?];
    v14 = [sub_100072F70() objectForKeyedSubscript:?];

    v15 = &dword_1002F6000;
    sub_100004F54();
    if (v14)
    {
      if (v17 ^ v18 | v16 && (v19 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Connected device updated: %@", foundCopy);
      }
    }

    else
    {
      if (v17 ^ v18 | v16 && (v19 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "First connected device found %@", foundCopy);
      }

      if (!self->_firstConnectedTime)
      {
        v20 = objc_alloc_init(NSMutableDictionary);
        firstConnectedTime = self->_firstConnectedTime;
        self->_firstConnectedTime = v20;
      }

      v22 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
      [(NSMutableDictionary *)self->_firstConnectedTime setObject:v22 forKeyedSubscript:v5];

      firstStemClick = self->_firstStemClick;
      if (!firstStemClick)
      {
        v24 = objc_alloc_init(NSMutableDictionary);
        v25 = self->_firstStemClick;
        self->_firstStemClick = v24;

        firstStemClick = self->_firstStemClick;
      }

      [(NSMutableDictionary *)firstStemClick setObject:&__kCFBooleanFalse forKeyedSubscript:v5];
      firstStemClickTime = self->_firstStemClickTime;
      if (!firstStemClickTime)
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        v28 = self->_firstStemClickTime;
        self->_firstStemClickTime = v27;

        firstStemClickTime = self->_firstStemClickTime;
      }

      [(NSMutableDictionary *)firstStemClickTime setObject:&off_1002CB6C0 forKeyedSubscript:v5];
      v29 = [sub_100072ED0() objectForKeyedSubscript:?];
      if (v29)
      {
        if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]>= 2)
        {
          [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B81C8];
          [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
        }

        v30 = [sub_100072F04() _getWxFWVersion:?];
        if ([@"5A187" compare:v30 options:64] == 1 && (objc_msgSend(v29, "isRoutingActionInitialized") & 1) == 0)
        {
          otherTipiDeviceBTAddress = [v29 otherTipiDeviceBTAddress];

          if (!otherTipiDeviceBTAddress)
          {
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Update routing action for regular phase 1 fw %@", v30);
            }

            if (self->_pairedCompanionDeviceSupportsSmartRouting)
            {
              v32 = 1;
            }

            else
            {
              v32 = 2;
            }

            [v29 setRoutingAction:v32];
            [v29 setIsRoutingActionInitialized:1];
            [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
          }
        }

        [sub_100072F04() _triggerTipiTableUpdate:?];
        [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];

        v15 = &dword_1002F6000;
      }

      [(BTSmartRoutingDaemon *)self _startAudioStateSnapshotTimer];
      [v13 _setInUseBannerBackoffReason:0];
      if (self->_prefSmartRoutingUSBAudioDevice && [v13 isUSBPlugIn])
      {
        [sub_100072F04() _disconnectOtherTipiDevice:?];
      }

      if (GestaltGetDeviceClass() == 1)
      {
        [(BTSmartRoutingDaemon *)self _checkTriangleRecovery];
      }
    }

    deviceFlags = [foundCopy deviceFlags];
    v34 = [sub_100072F70() objectForKeyedSubscript:?];

    v35 = foundCopy;
    if (!v34)
    {
      if ((deviceFlags & 0x40000) != 0)
      {
        sub_100004F54();
        if (v17 ^ v18 | v16 && (v38 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Connected device BT_UI_INITIATED_CONNECTION_REQUEST");
        }

        [sub_100072F04() _submitManualConnectionMetric:?];
        v39 = [sub_100073044() objectForKeyedSubscript:?];
        [v39 _setUserConnectedState:1];

        v40 = [sub_100072ED0() objectForKeyedSubscript:?];

        if (v40)
        {
          v41 = [sub_100072ED0() objectForKeyedSubscript:?];
          [v41 setRoutingAction:1];
        }

        v37 = 8;
      }

      else
      {
        v36 = [sub_100072ED0() objectForKeyedSubscript:?];

        v35 = foundCopy;
        if (v36)
        {
          goto LABEL_59;
        }

        v37 = 9;
      }

      [v13 setTipiConnectType:v37];
      v35 = foundCopy;
    }

LABEL_59:
    if (([v35 deviceFlags] & 0x40) == 0)
    {
      v42 = [sub_100072ED0() objectForKeyedSubscript:?];
      if ([v42 hijackBackoffTicks])
      {
        hijackBackOffInitiator = self->_hijackBackOffInitiator;

        if (hijackBackOffInitiator)
        {
          mach_absolute_time();
          v44 = [sub_100072ED0() objectForKeyedSubscript:?];
          [v44 hijackBackoffTicks];
          v45 = UpTicksToSeconds();

          sub_100004F54();
          if (v17 ^ v18 | v16 && (v46 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "_connectedDeviceFound, hijackblocking is active. It has started for %llus and ownership is not owned", v45);
          }

          if (v45 >= 5)
          {
            [sub_100072F04() _hijackBackoffReset:? withReason:?];
          }
        }
      }

      else
      {
      }
    }

    v47 = [sub_100072F70() objectForKeyedSubscript:?];
    if (v47)
    {
    }

    else
    {
      v48 = [sub_100072ED0() objectForKeyedSubscript:?];

      if (!v48)
      {
        [sub_100072F98() _submitNonSRConnectionMetric:?];
      }
    }

    name = [foundCopy name];
    [foundCopy productID];
    v50 = [sub_100072F04() _supportsSR:? andProductID:?];
    v51 = [sub_100072F70() objectForKeyedSubscript:?];
    if (v51)
    {
      v208 = 0;
    }

    else
    {
      v52 = [sub_100072ED0() objectForKeyedSubscript:?];
      if (v52)
      {
        v208 = 0;
      }

      else
      {
        v208 = ([foundCopy deviceFlags] & 0x40000) == 0;
      }
    }

    v53 = [sub_100072F70() objectForKeyedSubscript:?];
    if (((v53 == 0) & v50) != 0)
    {
      v54 = [sub_100072ED0() objectForKeyedSubscript:?];

      if (!v54)
      {
        [sub_100072F98() _smartRoutingAddWxMapDeviceFromConnectedDevice:?];
        [sub_100072F04() _triggerTipiTableUpdate:?];
        [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
      }
    }

    else
    {
    }

    if (self->_pendingActiveHRMUpdate)
    {
      v55 = v50;
      v56 = identifier;
      [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];
      v57 = [sub_100073044() objectForKeyedSubscript:?];
      workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
      workoutActive = [workoutObserver workoutActive];

      if (workoutActive)
      {
        [(BTSmartRoutingDaemon *)self _constructAndSendTipiScoreMessageToWx:v57 withScore:7];
      }

      identifier = v56;
      v50 = v55;
    }

    v60 = [sub_100072F70() objectForKeyedSubscript:?];
    if (!v60)
    {
      v61 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];
      mode = [v61 mode];

      if (mode == 1 || ([sub_100072F98() _lowestBatteryInfoForCBDevice:?], v63 == 0.0))
      {
LABEL_93:
        v65 = [sub_100072F70() objectForKeyedSubscript:?];

        v205 = v13;
        if (v65)
        {
          v66 = [(NSMutableDictionary *)self->_connectedDevicesInEarCache objectForKeyedSubscript:v5];
          bOOLValue = [v66 BOOLValue];
        }

        else
        {
          v67 = [sub_100072F04() _inEarNearbyCheck:?];
          v68 = [NSNumber numberWithBool:v67];
          [(NSMutableDictionary *)self->_connectedDevicesInEarCache setObject:v68 forKeyedSubscript:v5];

          v69 = [sub_100072ED0() objectForKeyedSubscript:?];

          bOOLValue = v67;
          if (!v69)
          {
LABEL_98:
            connectDevice = self->_connectDevice;
            v206 = v50;
            if (connectDevice && self->_connectSession)
            {
              bleDevice = [(SFDevice *)connectDevice bleDevice];
              bluetoothAddress = [bleDevice bluetoothAddress];

              if ([bluetoothAddress length] == 6)
              {
                v73 = NSPrintF("%.6a", COERCE_DOUBLE([bluetoothAddress bytes]));
              }

              else
              {
                v73 = 0;
              }

              if ([v5 isEqual:v73] && (objc_msgSend(foundCopy, "connectedServices") & 0x80000) != 0)
              {
                v198 = v65;
                sub_100004F54();
                if (v17 ^ v18 | v16 && (v74 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Finished connection setup");
                }

                v75 = name;
                if (self->_eligibleHeadset)
                {
                  self->_smartRoutingDisconnectReason = 0;
                }

                v76 = [sub_100072ED0() objectForKeyedSubscript:?];
                identifier3 = [v76 identifier];

                [(BTSmartRoutingDaemon *)self _smartRoutingConnectionCompleted:0];
                if (identifier3)
                {
                  v78 = [sub_10007305C() objectForKeyedSubscript:?];
                  preemptiveBannerShown = [v78 preemptiveBannerShown];

                  if (preemptiveBannerShown)
                  {
                    v80 = [sub_100072ED0() objectForKeyedSubscript:?];
                    [v80 setFirstBannerShown:0];
                  }
                }

                name = v75;
                v50 = v206;
                v65 = v198;
              }
            }

            if (!v50)
            {
LABEL_169:
              v118 = [sub_100072ED0() objectForKeyedSubscript:?];
              [sub_100072F98() _smartRoutingModeCheck:?];
              v119 = [sub_100072F70() objectForKeyedSubscript:?];

              if (v119 || !v118)
              {
                v124 = [sub_100072F70() objectForKeyedSubscript:?];
                if (v124)
                {
                }

                else
                {
                  v125 = [foundCopy productID] - 8194;
                  if (v125 < 0x2E)
                  {
                    v126 = 0x207C7BB7FF9BuLL >> v125;
LABEL_197:
                    [(NSMutableDictionary *)self->_connectedDevices setObject:foundCopy forKeyedSubscript:v5];
                    v136 = [sub_100072F04() _inEarConnectedCheck:?];
                    if (![foundCopy primaryPlacement] && !objc_msgSend(foundCopy, "secondaryPlacement"))
                    {
                      v136 = [sub_100072F04() _inEarNearbyCheck:?];
                    }

                    if (v126)
                    {
                      [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
                    }

                    _isOnDemandConnectInProgress = [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
                    v138 = _isOnDemandConnectInProgress;
                    forcedConnection = self->_forcedConnection;
                    if (!forcedConnection && !_isOnDemandConnectInProgress)
                    {
LABEL_218:
                      v204 = v126;
                      if (!((v65 == 0 || !self->_prefSmartRoutingPreemptiveConnectedBanner) | v136 & 1))
                      {
                        [v118 setFirstBannerShown:1];
                        v144 = [sub_100073138() objectForKeyedSubscript:?];
                        preemptiveBannerShown2 = [v144 preemptiveBannerShown];

                        if (preemptiveBannerShown2)
                        {
                          v146 = [sub_100073138() objectForKeyedSubscript:?];
                          [v146 setPreemptiveBannerShown:0];
                        }
                      }

                      v147 = bOOLValue;
                      if (!(v136 & 1 | !v208))
                      {
                        sub_100004F54();
                        if (!(v17 ^ v18 | v16))
                        {
LABEL_250:
                          if (v147 != v136)
                          {
                            sub_100004F54();
                            if (v17 ^ v18 | v16 && (v161 != -1 || _LogCategory_Initialize()))
                            {
                              if (v147)
                              {
                                v162 = "yes";
                              }

                              else
                              {
                                v162 = "no";
                              }

                              if (v136)
                              {
                                v163 = "yes";
                              }

                              else
                              {
                                v163 = "no";
                              }

                              audioStreamState = [foundCopy audioStreamState];
                              if (audioStreamState > 3)
                              {
                                v165 = "?";
                              }

                              else
                              {
                                v165 = off_1002B9128[audioStreamState];
                              }

                              v166 = "yes";
                              if (!self->_activityLevelMediaPlaying)
                              {
                                v166 = "no";
                              }

                              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "InEarStateChanged %s -> %s WxStream %s activityLevelMediaPlaying %s isHidden %s", v162, v163, v165, v166, "no");
                            }

                            if (v65 && ((v136 ^ 1) & 1) == 0)
                            {
                              if ([v118 otherTipiDeviceIsWatch] && objc_msgSend(v118, "otherTipiAudioCategory") == 100 && !self->_phoneOwnershipTimer && (objc_msgSend(v118, "routed") & 1) == 0)
                              {
                                [(BTSmartRoutingDaemon *)self _startPhoneOwnershipTimer:10];
                              }

                              identifier4 = [v118 identifier];
                              if ([v118 firstBannerShown])
                              {
                                v168 = [sub_10007305C() objectForKeyedSubscript:?];
                                v169 = [v168 preemptiveBannerShown] ^ 1;
                              }

                              else
                              {
                                v169 = 0;
                              }

                              [v118 setFirstBannerShown:v169];
                              [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
                            }
                          }

                          v170 = [NSNumber numberWithBool:v136];
                          [(NSMutableDictionary *)self->_connectedDevicesInEarCache setObject:v170 forKeyedSubscript:v5];

                          [v118 setInEar:v136];
                          if (!(v206 & 1 | ((v204 & 1) == 0)))
                          {
                            sub_100004F54();
                            if (v17 ^ v18 | v16 && (v171 != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Showing banner for SR disabled device");
                            }

                            name2 = [foundCopy name];
                            productID = [foundCopy productID];
                            sub_100073010(productID, v174, v175, v176, v177, productID, @"Connected");
                          }

                          if (!self->_uiSmartRoutingBanner && ([v118 firstBannerShown] & v136) == 1 && !self->_tipiElectionInProgress)
                          {
                            identifier5 = [v118 identifier];
                            v179 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier5];
                            preemptiveBannerShown3 = [v179 preemptiveBannerShown];

                            if ((preemptiveBannerShown3 & 1) == 0)
                            {
                              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Posting first banner upon inEar");
                              }

                              [v118 setFirstBannerShown:0];
                              name3 = [foundCopy name];
                              productID2 = [foundCopy productID];
                              sub_100073010(productID2, v183, v184, v185, v186, productID2, @"Connected");
                            }
                          }

                          if (self->_prefSmartRoutingEnabledPhase3)
                          {
                            [(BTSmartRoutingDaemon *)self _mediaRouteDiscoveryStarted];
                          }

                          v187 = [sub_100072ED0() objectForKeyedSubscript:?];
                          if (v187)
                          {
                            v188 = v187;
                            v189 = [sub_100072ED0() objectForKeyedSubscript:?];
                            otherTipiDeviceBTAddress2 = [v189 otherTipiDeviceBTAddress];
                            if (otherTipiDeviceBTAddress2 || self->_tipiElectionInProgress || ([sub_100072F98() _aacpConnectedCheck:?] & 1) == 0)
                            {
                            }

                            else
                            {
                              v191 = self->_forcedConnection;

                              if (!v191)
                              {
                                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Trying to do tipi healings from connected events");
                                }

                                [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
                              }
                            }
                          }

                          [sub_100072F98() _updateSRDiscoveredDeviceForCBDeviceChanged:? connectionStatus:?];
                          if (self->_forcedHRMConnectionInProgress)
                          {
                            [(BTSmartRoutingDaemon *)self _checkIfHRMDeviceElectionHasFinished];
                          }

                          [(CUCoalescer *)self->_evaluatorCoalescer trigger];

                          goto LABEL_310;
                        }

                        if (v148 != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Incoming connection is out of ear");
                        }
                      }

                      sub_100004F54();
                      if (v17 ^ v18 | v16 && (v149 != -1 || _LogCategory_Initialize()))
                      {
                        v150 = "no";
                        if (bOOLValue)
                        {
                          v151 = "yes";
                        }

                        else
                        {
                          v151 = "no";
                        }

                        if (v136)
                        {
                          v152 = "yes";
                        }

                        else
                        {
                          v152 = "no";
                        }

                        v196 = v152;
                        v197 = v151;
                        if (v65)
                        {
                          v150 = "yes";
                        }

                        v195 = v150;
                        routingAction = [v118 routingAction];
                        v199 = v65;
                        v201 = name;
                        if (routingAction > 5)
                        {
                          v154 = "?";
                        }

                        else
                        {
                          v154 = off_1002B90F8[routingAction];
                        }

                        v194 = v154;
                        if ([v118 routed])
                        {
                          v155 = "yes";
                        }

                        else
                        {
                          v155 = "no";
                        }

                        otherTipiDeviceBTAddress3 = [v118 otherTipiDeviceBTAddress];
                        otherTipiDeviceVersion = [v118 otherTipiDeviceVersion];
                        otherTipiDeviceBTName = [v118 otherTipiDeviceBTName];
                        v159 = otherTipiDeviceBTName;
                        if (v208)
                        {
                          v160 = "yes";
                        }

                        else
                        {
                          v160 = "no";
                        }

                        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "SmartRouting posting device %@ inEar state originalInEarState %s, newInEarState %s, previous connected %s, routing Action %s, Route %s otherTipiDeviceAddress %@ otherTipiVersion %@ otherTipiDeviceName %@ incomingConn %s", v5, v197, v196, v195, v194, v155, otherTipiDeviceBTAddress3, otherTipiDeviceVersion, otherTipiDeviceBTName, v160);

                        name = v201;
                        v65 = v199;
                        v147 = bOOLValue;
                      }

                      goto LABEL_250;
                    }

                    v140 = v15[478];
                    if (v140 <= 30)
                    {
                      if (v140 == -1)
                      {
                        if (!_LogCategory_Initialize())
                        {
                          goto LABEL_213;
                        }

                        forcedConnection = self->_forcedConnection;
                      }

                      v141 = "no";
                      if (forcedConnection)
                      {
                        v142 = "yes";
                      }

                      else
                      {
                        v142 = "no";
                      }

                      if (v138)
                      {
                        v141 = "yes";
                      }

                      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Update Tipi table to disconnect other Tipi device. FD %s, OnDemand %s", v142, v141);
                    }

LABEL_213:
                    [sub_100072F04() _disconnectOtherTipiDevice:?];
                    if (!self->_forcedConnection)
                    {
                      if ([(SRConnectConfig *)self->_phase1ConnectConfig type]!= 3)
                      {
LABEL_217:
                        self->_forcedConnection = 0;
                        phase1ConnectConfig = self->_phase1ConnectConfig;
                        self->_phase1ConnectConfig = 0;

                        goto LABEL_218;
                      }

                      [sub_100072F04() _removeTiPiState:?];
                      [sub_100072F04() _startRouteCheckTimer:? andType:?];
                    }

                    [sub_100072F04() _startRouteCheckTimer:? andType:?];
                    goto LABEL_217;
                  }
                }
              }

              else
              {
                if ([v118 routingAction])
                {
                  sub_100004F54();
                  if (v17 ^ v18 | v16 && (v120 != -1 || _LogCategory_Initialize()))
                  {
                    v121 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v5];
                    reconnectionState = [v121 reconnectionState];
                    v123 = "Connected";
                    if (reconnectionState != 1)
                    {
                      v123 = "?";
                    }

                    if (!reconnectionState)
                    {
                      v123 = "Not connected";
                    }

                    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Smart Routing posting first banner! Budswap state: %s", v123);
                  }

                  v127 = [sub_100073138() objectForKeyedSubscript:?];
                  if ([v127 preemptiveBannerShown])
                  {
                  }

                  else
                  {
                    v128 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v5];
                    v129 = v65;
                    v130 = name;
                    reconnectionState2 = [v128 reconnectionState];

                    v16 = reconnectionState2 == 1;
                    name = v130;
                    v65 = v129;
                    if (!v16)
                    {
                      [v118 setFirstBannerShown:1];
                    }
                  }
                }

                [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
                workoutObserver2 = [(BTSmartRoutingDaemon *)self workoutObserver];
                workoutActive2 = [workoutObserver2 workoutActive];

                if (workoutActive2)
                {
                  v134 = [sub_100073044() objectForKeyedSubscript:?];
                  if ([v118 isHRMCapable])
                  {
                    score = 7;
                  }

                  else
                  {
                    score = self->_score;
                  }

                  [(BTSmartRoutingDaemon *)self _constructAndSendTipiScoreMessageToWx:v134 withScore:score];
                }

                if (_os_feature_enabled_impl())
                {
                  [(SRNowPlayingObserver *)self->_nowPlayingObserver sendNowPlayingMessage];
                }
              }

              LOBYTE(v126) = 0;
              goto LABEL_197;
            }

            v202 = identifier;
            v81 = [sub_100072ED0() objectForKeyedSubscript:?];
            deviceName = [v81 deviceName];
            v200 = name;
            v83 = [deviceName isEqualToString:name];

            if ((v83 & 1) == 0)
            {
              sub_100004F54();
              if (v17 ^ v18 | v16 && (v84 != -1 || _LogCategory_Initialize()))
              {
                v85 = [sub_100072ED0() objectForKeyedSubscript:?];
                deviceName2 = [v85 deviceName];
                name4 = [foundCopy name];
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "SmartRouting updating device name from %@ to %@", deviceName2, name4);
              }

              name5 = [foundCopy name];
              v89 = [sub_100072ED0() objectForKeyedSubscript:?];
              [v89 setDeviceName:name5];
            }

            v90 = [sub_100072ED0() objectForKeyedSubscript:?];
            deviceVersion = [v90 deviceVersion];

            if (!deviceVersion && (objc_opt_respondsToSelector() & 1) != 0)
            {
              sub_100004F54();
              if (v17 ^ v18 | v16 && (v92 != -1 || _LogCategory_Initialize()))
              {
                firmwareVersion = [foundCopy firmwareVersion];
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "SmartRouting updating device version to %@ ", firmwareVersion);
              }

              firmwareVersion2 = [foundCopy firmwareVersion];
              v95 = [sub_100072ED0() objectForKeyedSubscript:?];
              [v95 setDeviceVersion:firmwareVersion2];
            }

            deviceFlags2 = [foundCopy deviceFlags];
            v97 = [sub_100072ED0() objectForKeyedSubscript:?];
            if (([v97 manualRouteChangeInProgress] & 1) != 0 || (deviceFlags2 & 0x400000) == 0)
            {

              v99 = 0;
              v100 = 0;
              v101 = 0;
              if ((deviceFlags2 & 0x400000) == 0)
              {
                goto LABEL_138;
              }
            }

            else
            {
              v98 = [sub_100072ED0() objectForKeyedSubscript:?];
              v99 = [v98 manuallyRouted] ^ 1;
            }

            v101 = [sub_100072F98() _isInEarToOutOfEar:?];
            v100 = v99;
LABEL_138:
            sub_100004F54();
            if (v17 ^ v18 | v16 && (v102 != -1 || _LogCategory_Initialize()))
            {
              v103 = "no";
              v104 = v65;
              v105 = "no";
              if ((deviceFlags2 & 0x400000) != 0)
              {
                v103 = "yes";
              }

              v203 = v103;
              if (v100)
              {
                v106 = "yes";
              }

              else
              {
                v106 = "no";
              }

              v107 = [sub_100072ED0() objectForKeyedSubscript:?];
              if ([v107 manualRouteChangeInProgress])
              {
                v105 = "yes";
              }

              v193 = v105;
              v65 = v104;
              v192 = v106;
              v15 = &dword_1002F6000;
              LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "SmartRouting headset %@ manuallyRouted %s firstManualRoute %s manualRouteChangeInProgress %s %llu", v5, v203, v192, v193, [foundCopy deviceFlags]);
            }

            name = v200;
            identifier = v202;
            if (v100)
            {
              [sub_100072F98() _sendIntendedRouteInfoUpdateToWx:? withIntendedRoutingStatus:?];
              [(BTSmartRoutingDaemon *)self _updateRoutingActionForManuallyRoute];
              [sub_100072F04() _startManualRouteChangeDetectionTimer:?];
              if (self->_prefSmartRoutingBlockHijackWindowinSeconds)
              {
                v108 = [sub_100072ED0() objectForKeyedSubscript:?];
                hijackBackoffTicks = [v108 hijackBackoffTicks];

                if (hijackBackoffTicks)
                {
                  sub_100004F54();
                  if (v17 ^ v18 | v16 && (v110 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Hijackblocking: Clear Block ticks due to manual routing");
                  }

                  [sub_100072F04() _hijackBackoffReset:? withReason:?];
                  v111 = [sub_100072ED0() objectForKeyedSubscript:?];
                  otherTipiDeviceBTAddress4 = [v111 otherTipiDeviceBTAddress];
                  [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:&off_1002CBCE8 andWxAddress:v5 andOtherAddress:otherTipiDeviceBTAddress4];
                }
              }
            }

            if (v101)
            {
              sub_100004F54();
              if (v17 ^ v18 | v16 && (v113 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]", 30, "Resetting manaully route flag for out of ear");
              }

              [sub_100072F04() _setManualRouteFlag:? withManualRoute:?];
            }

            else
            {
              v114 = [sub_100072ED0() objectForKeyedSubscript:?];
              [v114 setManuallyRouted:(deviceFlags2 >> 22) & 1];

              if ((deviceFlags2 & 0x400000) == 0)
              {
                v115 = [sub_100072ED0() objectForKeyedSubscript:?];
                manualRouteChangeInProgress = [v115 manualRouteChangeInProgress];

                if (manualRouteChangeInProgress)
                {
                  v117 = [sub_100072ED0() objectForKeyedSubscript:?];
                  [v117 setManualRouteChangeInProgress:0];
                }
              }
            }

            goto LABEL_169;
          }

          v66 = [sub_100072ED0() objectForKeyedSubscript:?];
          [v66 setInEar:v67];
        }

        goto LABEL_98;
      }

      v64 = v63;
      v60 = [sub_100073138() objectForKeyedSubscript:?];
      [v60 setLowestBudBatteryInfo:v64];
    }

    goto LABEL_93;
  }

LABEL_311:
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  btAddressData = [lostCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    v6 = +[CBIDSManager sharedInstance];
    identifier = [lostCopy identifier];
    [v6 connectionUpdatedForBluetoothIdentifier:identifier connected:0];

    v8 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v5];

    if (v8)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceLost:]", 30, "Connected device lost: disconnectReason %llu, device %@", self->_smartRoutingDisconnectReason, lostCopy);
      }

      sub_100073098(self->_connectedDevices, v9);
      [sub_100072FBC() _hijackBackoffReset:? withReason:?];
      [(NSMutableDictionary *)self->_smartRoutingWxStatsMap removeObjectForKey:v5];
      v10 = [sub_100072FBC() _getWxFWVersion:?];
      identifier2 = [lostCopy identifier];
      if (lostCopy)
      {
        v12 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier2];
        [v12 setPreemptiveBannerShown:0];

        v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier2];
        [v13 setFirstPreemptiveBannerShown:0];

        [(BTSmartRoutingDaemon *)self _submitMetric:lostCopy];
        if ([@"6A221" compare:v10 options:64] != -1)
        {
          [(BTSmartRoutingDaemon *)self _setDisconnectTick:mach_absolute_time() forWxAddress:v5];
        }

        v14 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v5];
        [(BTSmartRoutingDaemon *)self dataRelayRemoveAvailableDataTypesWithDevice:v14];
        uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
        if (uiSmartRoutingBanner)
        {
          [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
          v16 = self->_uiSmartRoutingBanner;
          self->_uiSmartRoutingBanner = 0;
        }

        audioRoutingResponse = [v14 audioRoutingResponse];

        if (audioRoutingResponse)
        {
          v18 = objc_alloc_init(BTAudioRoutingResponse);
          [v18 setAction:3];
          [v18 setReason:@"Wx disconnecting"];
          [v18 setClientID:{objc_msgSend(v14, "audioRoutingClientID")}];
          audioRoutingResponse2 = [v14 audioRoutingResponse];
          [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v18 withResponseHandler:audioRoutingResponse2 wxAddress:v5];
        }

        [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap removeObjectForKey:v5];
        if ([v14 isHRMCapable])
        {
          _connectedHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _connectedHRMEnabledDevice];
          if (_connectedHRMEnabledDevice)
          {
          }

          else if (self->_isActiveHRMSession)
          {
            [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:0];
            if (GestaltGetDeviceClass() == 1)
            {
              [(BTSmartRoutingDaemon *)self _startWxDiscoveryForWorkout];
            }
          }
        }

        if (self->_tipiElectionInProgress)
        {
          self->_tipiElectionInProgress = 0;
        }

        tipiHealingTimer = self->_tipiHealingTimer;
        if (tipiHealingTimer)
        {
          v22 = tipiHealingTimer;
          dispatch_source_cancel(v22);
          v23 = self->_tipiHealingTimer;
          self->_tipiHealingTimer = 0;
        }

        hijackBackOffTimer = self->_hijackBackOffTimer;
        if (hijackBackOffTimer)
        {
          v25 = hijackBackOffTimer;
          dispatch_source_cancel(v25);
          v26 = self->_hijackBackOffTimer;
          self->_hijackBackOffTimer = 0;
        }

        [(SRSourceDevice *)self->_sourceDevice setShouldStayOnVirtual:0];
      }

      if (![(NSMutableDictionary *)self->_connectedDevices count]&& !self->_tipiElectionInProgress)
      {
        [(BTSmartRoutingDaemon *)self _mediaRouteDiscoveryStopped];
        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        self->_smartRoutingWxDeviceMap = 0;
      }

      sub_100073098(self->_connectedDevicesSrModeCache, v27);
      [(BTSmartRoutingDaemon *)self _updateSRDiscoveredDeviceForCBDeviceChanged:lostCopy connectionStatus:0];
      [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];
      if (self->_prefSmartRoutingUSBAudioDevice)
      {
        [sub_100072FBC() _evaluatorRunInUseBanner:?];
      }

      [(CUCoalescer *)self->_evaluatorCoalescer trigger];
    }
  }
}

- (void)dataRelayAddAvailableDataTypesWithDiscoveredDevice:(id)device
{
  deviceCopy = device;
  lastDRHostIDSIdentifier = [deviceCopy lastDRHostIDSIdentifier];
  if (lastDRHostIDSIdentifier)
  {
    v5 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:lastDRHostIDSIdentifier];

    if (!v5)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon dataRelayAddAvailableDataTypesWithDiscoveredDevice:]", 30, "Adding available data types with discovered device for server %@", lastDRHostIDSIdentifier);
      }

      btAddress = [deviceCopy btAddress];
      uTF8String = [btAddress UTF8String];

      if (uTF8String)
      {
        sub_100072E50();
        NSDataWithHex();
        objc_claimAutoreleasedReturnValue();
        v8 = [sub_100073068() addAvailableDataTypes:? dataTypes:? wxAddress:?];
        [(NSMutableDictionary *)self->_dataRelayAvailableServerSet setObject:v8 forKey:lastDRHostIDSIdentifier];
      }
    }
  }
}

- (void)dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:(id)device
{
  deviceCopy = device;
  lastDRHostIDSIdentifier = [deviceCopy lastDRHostIDSIdentifier];
  v5 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:lastDRHostIDSIdentifier];

  if (v5)
  {
    [(NSMutableDictionary *)self->_dataRelayAvailableServerSet removeObjectForKey:lastDRHostIDSIdentifier];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:]", 30, "Removing available data types with discovered device for server %@", lastDRHostIDSIdentifier);
  }

  btAddress = [deviceCopy btAddress];
  uTF8String = [btAddress UTF8String];

  if (uTF8String)
  {
    sub_100072E50();
    NSDataWithHex();
    objc_claimAutoreleasedReturnValue();
    v8 = [sub_100073068() removeAvailableDataTypes:? dataTypes:? wxAddress:?];
  }
}

- (void)dataRelayAddAvailableDataTypesWithDevice:(id)device
{
  deviceCopy = device;
  deviceAddress = [deviceCopy deviceAddress];
  v5 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceAddress];
  [(BTSmartRoutingDaemon *)self dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:v5];
  otherTipiIDSIdentifier = [deviceCopy otherTipiIDSIdentifier];
  if (otherTipiIDSIdentifier)
  {
    v7 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:otherTipiIDSIdentifier];

    if (!v7)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon dataRelayAddAvailableDataTypesWithDevice:]", 30, "Adding available data types for server %@", otherTipiIDSIdentifier);
      }

      [deviceCopy setDataRelayServerPublished:1];
      deviceAddress2 = [deviceCopy deviceAddress];
      uTF8String = [deviceAddress2 UTF8String];

      if (uTF8String)
      {
        sub_100072E50();
        v10 = NSDataWithHex();
        v11 = [(DRClientManager *)self->_dataRelayClientMonitor addAvailableDataTypes:otherTipiIDSIdentifier dataTypes:3 wxAddress:v10];
        [(NSMutableDictionary *)self->_dataRelayAvailableServerSet setObject:v11 forKey:otherTipiIDSIdentifier];
      }
    }
  }
}

- (void)dataRelayRemoveAvailableDataTypesWithDevice:(id)device
{
  deviceCopy = device;
  otherTipiIDSIdentifier = [deviceCopy otherTipiIDSIdentifier];
  v5 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:?];

  if (v5)
  {
    [(NSMutableDictionary *)self->_dataRelayAvailableServerSet removeObjectForKey:otherTipiIDSIdentifier];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon dataRelayRemoveAvailableDataTypesWithDevice:]", 30, "Removing available data types for server %@", otherTipiIDSIdentifier);
  }

  [sub_100072FA4() setDataRelayServerPublished:?];
  deviceAddress = [deviceCopy deviceAddress];

  uTF8String = [deviceAddress UTF8String];
  if (uTF8String)
  {
    sub_100072E50();
    v8 = NSDataWithHex();
    v9 = [(DRClientManager *)self->_dataRelayClientMonitor removeAvailableDataTypes:otherTipiIDSIdentifier dataTypes:3 wxAddress:v8];
  }
}

- (void)_handleStemClickGestureReceived:(id)received
{
  receivedCopy = received;
  v4 = _os_feature_enabled_impl();
  v5 = receivedCopy;
  if (v4)
  {
    userInfo = [receivedCopy userInfo];
    v7 = [userInfo valueForKey:@"CommandType"];

    userInfo2 = [receivedCopy userInfo];
    v9 = [userInfo2 valueForKey:@"BTAddress"];

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleStemClickGestureReceived:]", 30, "Stem click gesture notification received, wx %@ cmd %@", v9, v7);
    }

    if (v9)
    {
      if (self->_lastStemClickBTAddr && ([v9 isEqualToString:?] & 1) == 0 && self->_stemClickTransactionTimer)
      {
        [(BTSmartRoutingDaemon *)self _cancelStemClickTransaction];
      }

      v10 = [v9 copy];
      lastStemClickBTAddr = self->_lastStemClickBTAddr;
      self->_lastStemClickBTAddr = v10;

      if ([v7 isEqualToString:@"Play"])
      {
        v12 = [(NSMutableDictionary *)self->_firstStemClick objectForKey:v9];
        if (v12)
        {
          v13 = v12;
          v14 = [(NSMutableDictionary *)self->_firstStemClick objectForKeyedSubscript:v9];
          if ([v14 BOOLValue])
          {
          }

          else
          {
            v15 = [(NSMutableDictionary *)self->_firstConnectedTime objectForKeyedSubscript:v9];

            if (v15)
            {
              mach_absolute_time();
              v16 = [(NSMutableDictionary *)self->_firstConnectedTime objectForKeyedSubscript:v9];
              [v16 doubleValue];
              v17 = [NSNumber numberWithUnsignedLongLong:UpTicksToSeconds()];
              [(NSMutableDictionary *)self->_firstStemClickTime setObject:v17 forKeyedSubscript:v9];

              [(NSMutableDictionary *)self->_firstStemClick setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
            }
          }
        }

        if (self->_stemClickTransactionTimer)
        {
          [(BTSmartRoutingDaemon *)self _resetStemClickTransaction];
        }

        else
        {
          [(BTSmartRoutingDaemon *)self _startStemClickTransaction];
        }

        [(BTSmartRoutingDaemon *)self _startStemClickResumeTimer];
      }

      else if ([v7 isEqualToString:@"Pause"] && self->_stemClickTransactionTimer && -[SRStats stemClickResumeResultedInPlayback](self->_stats, "stemClickResumeResultedInPlayback"))
      {
        [(SRStats *)self->_stats setStemClickPlaybackPaused:1];
        [(BTSmartRoutingDaemon *)self _cancelStemClickResumeTimer];
      }
    }

    v5 = receivedCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_nearbyInfoDeviceFound:(id)found
{
  sub_10007317C();
  v4 = v3;
  v18 = v5;
  identifier = [v18 identifier];
  uUIDString = [identifier UUIDString];

  if (!uUIDString)
  {
    goto LABEL_34;
  }

  [v18 audioRoutingScore];
  v8 = [*(v4 + 1552) objectForKeyedSubscript:uUIDString];

  if (v8)
  {
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    name = [v18 name];
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceFound:]", 30, "NearbySourceDevice updated: ID %@, Name '%@', audio score %d (%s)");
  }

  else
  {
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    name = [v18 name];
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceFound:]", 30, "NearbySourceDevice found: ID %@, Name '%@', audio score %d (%s)");
  }

LABEL_14:
  if ([v4 _isSmartRoutingCapableDevice:v18])
  {
    v10 = *(v4 + 1552);
    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = *(v4 + 1552);
      *(v4 + 1552) = v11;

      v10 = *(v4 + 1552);
    }

    [v10 setObject:v18 forKeyedSubscript:uUIDString];
  }

  if (GestaltGetDeviceClass() == 1)
  {
    if (*(v4 + 928))
    {
      [v4 _checkTriangleRecovery];
    }

    else if ([*(v4 + 1552) count] == 1)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceFound:]", 30, "Smart Routing starting timer for legacy triangle recovery.");
      }

      [v4 _nearbyDeviceInfoTriangleRecoveryTimer];
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceFound:]", 30, "Smart Routing cancelling legacy triangle recovery.");
      }

      v13 = *(v4 + 640);
      if (v13)
      {
        v14 = v13;
        dispatch_source_cancel(v14);
        v15 = *(v4 + 640);
        *(v4 + 640) = 0;
      }
    }
  }

  [*(v4 + 416) trigger];
LABEL_34:

  sub_100073168();
}

- (void)_nearbyInfoDeviceLost:(id)lost
{
  sub_1000731A4();
  v4 = v3;
  v16 = v5;
  identifier = [v16 identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      idsIdentifier = [v16 idsIdentifier];
      name = [v16 name];
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceLost:]", 30, "NearbySourceDevice lost: ID %@, IDS %@, Name '%@'");
    }

    sub_100073098(*(v4 + 1552), v8);
    if (GestaltGetDeviceClass() == 1)
    {
      if (*(v4 + 928))
      {
        [v4 _checkTriangleRecovery];
      }

      else if ([*(v4 + 1552) count] == 1)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceLost:]", 30, "Smart Routing starting timer for legacy triangle recovery.");
        }

        [v4 _nearbyDeviceInfoTriangleRecoveryTimer];
      }

      else
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoDeviceLost:]", 30, "Smart Routing cancelling legacy triangle recovery.");
        }

        v10 = *(v4 + 640);
        if (v10)
        {
          v11 = v10;
          dispatch_source_cancel(v11);
          v12 = *(v4 + 640);
          *(v4 + 640) = 0;
        }
      }
    }

    [*(v4 + 416) trigger];
  }

  sub_100073190();
}

- (void)_workoutStateChanged
{
  if (_os_feature_enabled_impl())
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      [(SRWorkoutObserver *)self->_workoutObserver workoutActive];
      sub_100072F38();
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _workoutStateChanged]", 30, "Workout state changed handler called, Workout active %s", v3);
    }

    if ([(SRWorkoutObserver *)self->_workoutObserver workoutActive])
    {
      [(BTSmartRoutingDaemon *)self _handleWorkoutSessionStart];
      activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
      identifier = [activeHRMDevice identifier];

      if (identifier && (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3))
      {
        [sub_100072FBC() _showLowBatteryBannerForWorkoutIfNeededForDevice:?];
      }

      dataRelayAvailableServerSet = self->_dataRelayAvailableServerSet;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000572C4;
      v9[3] = &unk_1002B85D0;
      v9[4] = self;
      [(NSMutableDictionary *)dataRelayAvailableServerSet enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _handleWorkoutSessionStop];
      v7 = self->_dataRelayAvailableServerSet;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100057420;
      v8[3] = &unk_1002B85D0;
      v8[4] = self;
      [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v8];
    }
  }
}

- (void)_wxDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (!self->_wxDevices)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      wxDevices = self->_wxDevices;
      self->_wxDevices = v6;
    }

    bleDevice = [foundCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    Int64 = CFDictionaryGetInt64();
    if (!Int64)
    {
      goto LABEL_177;
    }

    v123 = sub_100072EA4(Int64, @"hsStatus");
    v116 = sub_100072EA4(v123, @"pid");
    sub_100073000();
    v11 = CFDictionaryGetCFDataOfLength();
    v121 = uUIDString;
    v119 = v11;
    v120 = bleDevice;
    if (v11)
    {
      v12 = NSPrintF("%.6a", COERCE_DOUBLE([v11 bytes]));
    }

    else
    {
      v12 = 0;
    }

    v118 = sub_100072EA4(v11, @"asCount");
    v13 = sub_100072F44(v118, @"aState");
    sub_100072F88();
    v122 = CFDictionaryGetCFDataOfLength();
    v14 = sub_100072E64(v122, @"srAudioRoutingScore1");
    v15 = v14;
    v16 = sub_100072E64(v14, @"srAudioRoutingScore2");
    v17 = v16;
    v18 = sub_100072E64(v16, @"audioIdleTime");
    v19 = v18;
    v20 = sub_100072E64(v18, @"budsOutofCaseTime");
    sub_100072EF8();
    v21 = CFDictionaryGetInt64();
    sub_100072EF8();
    v22 = CFDictionaryGetInt64();
    v115 = v13;
    if (dword_1002F6778 <= 30)
    {
      v23 = v22;
      if (dword_1002F6778 != -1 || _LogCategory_Initialize())
      {
        bleDevice2 = [foundCopy bleDevice];
        v25 = @"Primary";
        if ((v123 & 0x100) == 0)
        {
          v25 = @"Secondary";
        }

        v26 = @"Right";
        if ((v123 & 0x80) != 0)
        {
          v26 = @"Left";
        }

        if (v115 > 3)
        {
          v27 = "?";
        }

        else
        {
          v27 = off_1002B8ED0[v115];
        }

        if ((v15 & 0xF0) != 0)
        {
          v28 = "?";
        }

        else
        {
          v28 = off_1002B8F50[v15 & 0xF];
        }

        if ((v17 & 0xF0) != 0)
        {
          v29 = "?";
        }

        else
        {
          v29 = off_1002B8F50[v17 & 0xF];
        }

        if ((v20 & 0xFC) != 0)
        {
          v30 = "?";
        }

        else
        {
          v30 = off_1002B90D8[v20 & 3];
        }

        v31 = @"YES";
        if (!v21)
        {
          v31 = @"NO";
        }

        v32 = "yes";
        if (!v23)
        {
          v32 = "no";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Wx Device found/updated: %@, headphone Status 0x%0X, bud is %@/%@, source device count: %u audio state: %s lastConnect: %@, tipiScore1: %s, tipiScore2: %s, idle time: %d, outofCaseTime %s, icloud Signed in %@ usb %s", bleDevice2, v123, v25, v26, v118, v27, v122, v28, v29, v19, v30, v31, v32);
      }
    }

    if ((v123 & 0x24) != 0)
    {
      v33 = 1;
    }

    else
    {
      v33 = [(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v116];
    }

    uUIDString = v121;
    v34 = &dword_1002F6000;
    v35 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:v121];
    isInEar = [v35 isInEar];

    [(BTSmartRoutingDaemon *)self _nearbyWxChanged:foundCopy];
    [(BTSmartRoutingDaemon *)self _updateSRDiscoveredDeviceForNearbyWxChanged:foundCopy isNearby:1];
    if (v12)
    {
      v37 = [sub_100072F10() objectForKeyedSubscript:?];

      if (v37)
      {
        [(BTSmartRoutingDaemon *)self _lowestBatteryInfoForSFDevice:foundCopy];
        v39 = v38;
        sub_10007308C();
        if (v42 ^ v43 | v41 && (v40 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "_wxDeviceFound, Adding battery info to SR map, Address %@ batteryLevel: %f", v12, *&v39);
        }

        v44 = [sub_100072F10() objectForKeyedSubscript:?];
        [v44 setLowestBudBatteryInfo:v39];
      }
    }

    v45 = [sub_100005AA4() objectForKeyedSubscript:?];
    v46 = v45;
    if (!v12 || !v45)
    {

      if (!v12)
      {
        goto LABEL_72;
      }

      goto LABEL_61;
    }

    v47 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v12];
    if (v47)
    {
      v48 = v47;
      v49 = [sub_100072F10() objectForKeyedSubscript:?];
      if (v49 && (sub_100073144(), v41))
      {
        [sub_100072F10() objectForKeyedSubscript:?];
        v50 = isInEar;
        v52 = v51 = v33;
        tipiHealingBackoff = [v52 tipiHealingBackoff];

        v33 = v51;
        isInEar = v50;
        uUIDString = v121;
        v34 = &dword_1002F6000;

        if (!tipiHealingBackoff)
        {
          goto LABEL_61;
        }

        sub_10007308C();
        if (v42 ^ v43 | v41 && (v53 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "_wxDeviceFound, resetting Tipi Backoff flag here!");
        }

        v46 = [sub_100072F10() objectForKeyedSubscript:?];
        [v46 setTipiHealingBackoff:0];
      }

      else
      {
      }
    }

LABEL_61:
    v54 = [sub_100072F10() objectForKeyedSubscript:?];
    if (v54)
    {
      v55 = v54;
      v56 = [sub_100072F10() objectForKeyedSubscript:?];
      if ([v56 hijackBackoffTicks])
      {
        hijackBackOffInitiator = self->_hijackBackOffInitiator;

        if (!hijackBackOffInitiator)
        {
          sub_100073144();
          if (!(!v41 & v58))
          {
            sub_10007308C();
            if (v42 ^ v43 | v41 && (v59 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "_wxDeviceFound, hijackblocking resetting hijackBackoffTicks");
            }

            [sub_100073050() _hijackBackoffReset:? withReason:?];
          }
        }
      }

      else
      {
      }
    }

LABEL_72:
    if ((v123 & 1) == 0 && ![(BTSmartRoutingDaemon *)self _bluetoothProductIDNoUTP:v116])
    {
      v63 = [sub_100005AA4() objectForKeyedSubscript:?];

      v64 = v34[478];
      if (v63)
      {
        v65 = v33;
        if (v64 <= 30 && (v64 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing, one bud scenario check on already known device.");
        }

        v74 = [sub_100005AA4() objectForKeyedSubscript:?];
        bleDevice3 = [v74 bleDevice];
        advertisementFields2 = [bleDevice3 advertisementFields];
        v77 = sub_100072EDC(advertisementFields2, @"hsStatus");

        if ((v77 & 0x100) != 0 && (v123 & 0x100) == 0)
        {
          sub_100072FD4();
          if (v42 ^ v43 | v41 && (v78 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing, No UTP detected for both primary / secondary buds, back off.");
          }

          bleDevice = v120;
          goto LABEL_176;
        }

        sub_1000730B0();
        [(CUCoalescer *)self->_evaluatorCoalescer trigger];

        v33 = v65;
      }

      else
      {
        if (v64 <= 30 && (v64 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing, one bud Wx device.");
        }

        sub_1000730B0();
        [(CUCoalescer *)self->_evaluatorCoalescer trigger];
      }

LABEL_160:
      v99 = [sub_100072F10() objectForKeyedSubscript:?];
      if (v99)
      {
        v100 = v99;
        v101 = [sub_100072F10() objectForKeyedSubscript:?];
        deviceName = [v101 deviceName];

        if (!deviceName)
        {
          v125 = +[CloudXPCService sharedInstance];
          deviceManager = [v125 deviceManager];
          v104 = [deviceManager fetchDeviceSyncWithAddress:v12];
          [v104 nickname];
          v105 = isInEar;
          v107 = v106 = v33;
          v108 = [sub_100072F10() objectForKeyedSubscript:?];
          [v108 setDeviceName:v107];

          v33 = v106;
          isInEar = v105;
          uUIDString = v121;
        }
      }

      bleDevice = v120;
      if (self->_prefSmartRoutingPreemptiveConnectedBanner)
      {
        v109 = [sub_100072F10() objectForKeyedSubscript:?];

        if (v109)
        {
          v110 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
          v111 = v110;
          if (((isInEar ^ 1) & v33) != 0 && ([v110 preemptiveBannerShown] & 1) == 0 && (objc_msgSend(v111, "firstPreemptiveBannerShown") & 1) == 0)
          {
            if ([(BTSmartRoutingDaemon *)self _showPreemptiveBannerIfNeeded:v111 inEarState:1 audioState:v115 wxAddress:v12])
            {
              sub_10007308C();
              if (v42 ^ v43 | v41)
              {
                if (v112 != -1 || _LogCategory_Initialize())
                {
                  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing posting preemptive connected banner upon first inEar event!");
                }
              }
            }
          }
        }
      }

      [sub_100073050() _evaluatorRunInUseBanner:?];
      [(BTSmartRoutingDaemon *)self _startAudioStateSnapshotTimer];
LABEL_176:

LABEL_177:
      goto LABEL_178;
    }

    v60 = [sub_100005AA4() objectForKeyedSubscript:?];

    if (!v60)
    {
LABEL_154:
      sub_1000730B0();
      [(CUCoalescer *)self->_evaluatorCoalescer trigger];
      if (v12)
      {
        v94 = [sub_100072F10() objectForKeyedSubscript:?];
        if (v94)
        {
          v95 = v94;
          v96 = [sub_100072F10() objectForKeyedSubscript:?];
          otherTipiDeviceBTAddress = [v96 otherTipiDeviceBTAddress];
          if (otherTipiDeviceBTAddress)
          {
          }

          else
          {
            tipiElectionInProgress = self->_tipiElectionInProgress;

            if (!tipiElectionInProgress)
            {
              [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
            }
          }
        }
      }

      goto LABEL_160;
    }

    v117 = v33;
    v61 = isInEar;
    sub_10007308C();
    if (v42 ^ v43 | v41 && (v62 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing headset status %u", v123);
    }

    v66 = [sub_100005AA4() objectForKeyedSubscript:?];
    if (!v12)
    {
      goto LABEL_153;
    }

    v67 = [sub_100072F10() objectForKeyedSubscript:?];
    if (!v67)
    {
      goto LABEL_153;
    }

    v68 = v67;
    v69 = [sub_100072F10() objectForKeyedSubscript:?];
    otherTipiDeviceBTAddress2 = [v69 otherTipiDeviceBTAddress];

    if (!otherTipiDeviceBTAddress2)
    {
      goto LABEL_153;
    }

    sub_100072FD4();
    if (v42 ^ v43 | v41 && (v71 != -1 || _LogCategory_Initialize()))
    {
      v72 = [sub_100072F10() objectForKeyedSubscript:?];
      otherTipiDeviceBTAddress3 = [v72 otherTipiDeviceBTAddress];
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing headset in Tipi with %@", otherTipiDeviceBTAddress3);
    }

    bleDevice4 = [v66 bleDevice];
    advertisementFields3 = [bleDevice4 advertisementFields];
    v81 = sub_100072EDC(advertisementFields3, @"hsStatus");

    if (((v81 ^ v123) & 0x100) != 0)
    {
      if (((v81 ^ v123) & 0x80) != 0)
      {
        goto LABEL_134;
      }

      sub_100072FD4();
      if (v42 ^ v43 | v41)
      {
        if (v83 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing, A2DP / HFP budswap detected from placement...");
        }

        sub_100072FD4();
        if (v42 ^ v43 | v41 && (v85 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Saving budswap info since we are in Tipi", v113);
        }
      }
    }

    else
    {
      if (((v81 ^ v123) & 0x80) == 0)
      {
        goto LABEL_134;
      }

      sub_100072FD4();
      if (v42 ^ v43 | v41)
      {
        if (v82 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Smart Routing, A2DP / HFP budswap detected from primary...");
        }

        sub_100072FD4();
        if (v42 ^ v43 | v41 && (v84 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Saving budswap info since we are in Tipi %@", v12);
        }
      }
    }

    self->_hfpBudswapDetected = 1;
    if (!self->_budSwapAddress)
    {
      v86 = [sub_100072F10() objectForKeyedSubscript:?];

      if (!v86)
      {
        v87 = objc_alloc_init(SRBudswapDevice);
        [(SRBudswapDevice *)v87 setReconnectionState:0];
        [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v87 forKeyedSubscript:v12];
        objc_storeStrong(&self->_budSwapAddress, v12);
        [sub_100073050() _budSwapDetectionStartTimer:?];
      }
    }

LABEL_134:
    if (self->_tipiSetupTicks)
    {
      mach_absolute_time();
      UpTicksToMilliseconds();
      sub_100073144();
      if (v41)
      {
        v89 = v88;
        if (v88 > 0x2710 || !self->_tipiSetupTicks)
        {
          goto LABEL_143;
        }
      }
    }

    else
    {
      sub_100073144();
      if (v41)
      {
        v89 = 0;
LABEL_143:
        v90 = isInEar;
        sub_100072F88();
        v91 = CFDictionaryGetCFDataOfLength();
        if (v91)
        {
          _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
          [_myBluetoothAddressString UTF8String];
          sub_100072E50();
          v93 = NSDataWithHex();
          if ([v93 length] == 6)
          {
            bytes = [v93 bytes];
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceFound:]", 30, "Evaluator: One source detected Wx: %@, myAddress: %@. mSecondsSinceTipiConnectSetup %llu", v91, v93, v89);
            }

            if (!memcmp([v91 bytes], bytes + 3, 3uLL))
            {
              [sub_100073050() _removeTiPiState:?];
            }
          }
        }

        self->_tipiSetupTicks = 0;

        v61 = v90;
      }
    }

LABEL_153:

    isInEar = v61;
    v33 = v117;
    goto LABEL_154;
  }

LABEL_178:
}

- (void)_wxDeviceLost:(id)lost
{
  sub_1000731A4();
  v4 = v3;
  v17 = v5;
  identifier = [v17 identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      bleDevice = [v17 bleDevice];
      name = [bleDevice name];
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDeviceLost:]", 30, "Wx Device lost: %@ %@");
    }

    bleDevice2 = [v17 bleDevice];
    advertisementFields = [bleDevice2 advertisementFields];
    v12 = sub_100072EDC(advertisementFields, @"pid");

    if (![v4[186] count])
    {
      [v4 _submitMetricNearby:v12];
    }

    sub_100073098(v4[186], v13);
    sub_100073098(v4[83], v14);
    [v4 _updateSRDiscoveredDeviceForNearbyWxChanged:v17 isNearby:0];
    [v4 _stopAudioStateSnapshotTimer:0];
    [v4[52] trigger];
  }

  sub_100073190();
}

- (void)_wxDiscoveryWatchRecoveryFoundDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDiscoveryWatchRecoveryFoundDevice:]", 30, "Wx watch recovery device found/updated: %@", deviceCopy);
    }

    watchWxDevices = self->_watchWxDevices;
    if (!watchWxDevices)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_watchWxDevices;
      self->_watchWxDevices = v6;

      watchWxDevices = self->_watchWxDevices;
    }

    [(NSMutableDictionary *)watchWxDevices setObject:deviceCopy forKeyedSubscript:identifier];
    [(CUCoalescer *)self->_evaluatorCoalescer trigger];
    addressData = [deviceCopy addressData];
    v9 = addressData;
    if (addressData)
    {
      v10 = NSPrintF("%.6a", COERCE_DOUBLE([addressData bytes]));
      if (v10)
      {
        v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v10];
          otherTipiDeviceBTAddress = [v13 otherTipiDeviceBTAddress];
          if (otherTipiDeviceBTAddress)
          {
          }

          else
          {
            tipiElectionInProgress = self->_tipiElectionInProgress;

            if (!tipiElectionInProgress)
            {
              [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
            }
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if ([(NSMutableDictionary *)self->_watchWxDevices count]== 1)
    {
      [(BTSmartRoutingDaemon *)self _update];
    }
  }
}

- (void)_wxDiscoveryWatchRecoveryLostDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDiscoveryWatchRecoveryLostDevice:]", 30, "Wx watch recovery device lost: %@", deviceCopy);
    }

    sub_100073098(self->_watchWxDevices, v4);
    [(CUCoalescer *)self->_evaluatorCoalescer trigger];
  }
}

- (void)_submitNonSRConnectionMetric:(id)metric
{
  metricCopy = metric;
  btAddressData = [metricCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v5];
    if (v6)
    {
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v5];

      if (!v7)
      {
        v8 = [metricCopy productID] - 8194;
        if (v8 <= 0x2D && ((1 << v8) & 0x20647A877F9BLL) != 0)
        {
          v9 = [metricCopy productID] - 8194;
          if (v9 > 0xE || ((1 << v9) & 0x409B) == 0)
          {
            [sub_100072FBC() _submitConnectionMetric:? andError:?];
          }
        }
      }
    }
  }
}

- (void)_updateSRDiscoveredDeviceForCBDeviceChanged:(id)changed connectionStatus:(unsigned __int8)status
{
  statusCopy = status;
  changedCopy = changed;
  if (self->_prefSmartRoutingInUseBanner)
  {
    v12 = changedCopy;
    btAddressData = [changedCopy btAddressData];
    v8 = CUPrintNSDataAddress();

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v8];
      if (!v9)
      {
        v9 = objc_alloc_init(SRDiscoveredDevice);
        [(NSMutableDictionary *)self->_srDiscoveredDeviceMap setObject:v9 forKeyedSubscript:v8];
      }

      [sub_100072F04() _setBtAddress:?];
      connectionState = [(SRDiscoveredDevice *)v9 connectionState];
      [(SRDiscoveredDevice *)v9 _setConnectionState:statusCopy];
      v11 = [sub_100072FC8() _inEarConnectedCheck:?];
      if (![v12 primaryPlacement] && !objc_msgSend(v12, "secondaryPlacement"))
      {
        v11 = [sub_100072FC8() _inEarNearbyCheck:?];
      }

      [(SRDiscoveredDevice *)v9 setInEar:v11];
      [v12 identifier];
      objc_claimAutoreleasedReturnValue();
      [sub_100072FF0() setIdentifier:?];

      -[SRDiscoveredDevice setAacpDeviceFlags:](v9, "setAacpDeviceFlags:", [v12 deviceFlags]);
      [(SRDiscoveredDevice *)v9 setAacpInEarState:[(BTSmartRoutingDaemon *)self _getInEarStateFromCbDevice:v12]];
      [sub_100072FC8() _getWxFWVersion:?];
      objc_claimAutoreleasedReturnValue();
      [sub_100072FF0() setFwVersion:?];

      -[SRDiscoveredDevice setIsSRCapable:](v9, "setIsSRCapable:", [sub_100072FC8() _supportsTipi:?]);
      [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:v8];
      objc_claimAutoreleasedReturnValue();
      [sub_100072FF0() _setAADevice:?];
      if (statusCopy)
      {
        if (statusCopy == 2)
        {
          [sub_100072FA4() setIsPairingInProgress:?];
          [sub_100072FA4() setPrevFailedTipiConnectType:?];
          [(BTSmartRoutingDaemon *)self _determineHRMCapabilityOfDevice:v9];
          if (connectionState != 2)
          {
            [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
          }
        }
      }

      else
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateSRDiscoveredDeviceForCBDeviceChanged:connectionStatus:]", 30, "SRDiscoveredDevice: Clearing Wx %@ state for disconnection", v8);
        }

        [sub_100072FA4() _setRouteToWxAfterUnhide:?];
        [sub_100072FA4() setLowBatteryBannerShownInWorkoutContext:?];
        [sub_100072FA4() setTipiConnectType:?];
        [sub_100072FA4() setAacpInEarState:?];
      }
    }

    changedCopy = v12;
  }
}

- (void)_updateSRDiscoveredDeviceForNearbyWxChanged:(id)changed isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  changedCopy = changed;
  v6 = changedCopy;
  if (self->_prefSmartRoutingInUseBanner)
  {
    identifier = [changedCopy identifier];
    uUIDString = [identifier UUIDString];

    v87 = uUIDString;
    if (!uUIDString)
    {
LABEL_107:

      goto LABEL_108;
    }

    bleDevice = [v6 bleDevice];
    advertisementFields = [bleDevice advertisementFields];

    sub_100073000();
    v11 = CFDictionaryGetCFDataOfLength();
    v12 = v11;
    if (!v11)
    {
      v13 = 0;
LABEL_106:

      goto LABEL_107;
    }

    v13 = NSPrintF("%.6a", COERCE_DOUBLE([v11 bytes]));
    if (!v13)
    {
      goto LABEL_106;
    }

    sub_100072EF8();
    Int64 = CFDictionaryGetInt64();
    if (!Int64)
    {
      goto LABEL_106;
    }

    v15 = sub_100072EA4(Int64, @"subType");
    if (v15 != 1)
    {
      goto LABEL_106;
    }

    v77 = v12;
    v16 = sub_100072F44(v15, @"aState");
    bleDevice2 = [v6 bleDevice];
    advertisementFields2 = [bleDevice2 advertisementFields];
    v19 = sub_100072EDC(advertisementFields2, @"pid");

    sub_100072EF8();
    v80 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v83 = CFDictionaryGetTypedValue();
    sub_100072F88();
    v84 = CFDictionaryGetCFDataOfLength();
    bleDevice3 = [v6 bleDevice];
    advertisementFields3 = [bleDevice3 advertisementFields];
    v22 = sub_100072EDC(advertisementFields3, @"hsStatus");

    v86 = v13;
    if ((v22 & 0x24) != 0)
    {
      v81 = 1;
    }

    else
    {
      v23 = [(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v19];
      v81 = v23;
    }

    v72 = sub_100072E64(v23, @"budsOutofCaseTime");
    v73 = sub_100072EA4(v72, @"asCount");
    v24 = sub_100072F44(v73, @"aState");
    bleDevice4 = [v6 bleDevice];
    rssi = [bleDevice4 rssi];

    sub_100072EF8();
    v70 = CFDictionaryGetInt64();
    sub_100072EF8();
    v74 = CFDictionaryGetInt64();
    v75 = sub_100072E64(v74, @"srAudioRoutingScore1");
    sub_100072E64(v75, @"srAudioRoutingScore2");
    sub_100072EF8();
    v26 = CFDictionaryGetInt64();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v27 = "no";
      if (nearbyCopy)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      if (v16 > 3)
      {
        v29 = "?";
      }

      else
      {
        v29 = off_1002B8ED0[v16];
      }

      if (v80)
      {
        v30 = "yes";
      }

      else
      {
        v30 = "no";
      }

      if (v81)
      {
        v31 = "yes";
      }

      else
      {
        v31 = "no";
      }

      if ((v22 & 4) != 0)
      {
        v32 = "yes";
      }

      else
      {
        v32 = "no";
      }

      if ((v22 & 0x20) != 0)
      {
        v33 = "yes";
      }

      else
      {
        v33 = "no";
      }

      if (v26)
      {
        v27 = "yes";
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateSRDiscoveredDeviceForNearbyWxChanged:isNearby:]", 30, "SRDiscoveredDevice: Nearby Wx changed addr %@ name %@ found %s streamState %s productID %u paired %s iCloudSignedIn %s lastConnect %@ inEar %s priBudInEar %s secBudInEar %s usb %s", v13, v83, v28, v29, v19, "yes", v30, v84, v31, v32, v33, v27);
    }

    v71 = v16;
    v34 = v19;
    v78 = v26;
    v35 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v86];
    if (!v35)
    {
      v35 = objc_alloc_init(SRDiscoveredDevice);
    }

    v69 = v24;
    [(NSMutableDictionary *)self->_srDiscoveredDeviceMap setObject:v35 forKeyedSubscript:v86];
    v36 = [(AANearbyDeviceManagerDaemon *)self->_aaNearbyDeviceManagerDaemon deviceWithBluetoothAddress:v86];
    aaNearbyDevice = [(SRDiscoveredDevice *)v35 aaNearbyDevice];
    v38 = v36;
    v39 = v38;
    if (aaNearbyDevice == v38)
    {

      goto LABEL_45;
    }

    if ((v38 == 0) != (aaNearbyDevice != 0))
    {
      v40 = [aaNearbyDevice isEqual:v38];

      if (v40)
      {
LABEL_45:
        v82 = v6;
        v79 = v39;
        if (!v39)
        {
          v41 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:v87];
          [(SRDiscoveredDevice *)v35 _setAADevice:v41];
        }

        v42 = v70 != 0;
        [(SRDiscoveredDevice *)v35 _setBtAddress:v86];
        [(SRDiscoveredDevice *)v35 _setIsNearby:nearbyCopy];
        [(SRDiscoveredDevice *)v35 _setNearbyiCloudSignIn:v80 != 0];
        [(SRDiscoveredDevice *)v35 _setNearbyForceDisconnect:v42];
        [(SRDiscoveredDevice *)v35 _setNearbyName:v83];
        [(SRDiscoveredDevice *)v35 _setNearbyPaired:1];
        [(SRDiscoveredDevice *)v35 _setNearbyProductID:v34];
        [(SRDiscoveredDevice *)v35 _setNearbyWxDevice:v6];
        [(SRDiscoveredDevice *)v35 _setNearbyLastRouteHost:v84];
        [(SRDiscoveredDevice *)v35 _setNearbyPrevInEar:[(SRDiscoveredDevice *)v35 nearbyInEar]];
        if (v81)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        [(SRDiscoveredDevice *)v35 setNearbyInEar:v43];
        [sub_100073150() _setNearbyOutOfCaseTime:?];
        [(SRDiscoveredDevice *)v35 _setNearbyStreamState:v71];
        [sub_100073150() _setNearbyConnectedSourceCount:?];
        [(SRDiscoveredDevice *)v35 setNearbyIsMeLastRoute:[(BTSmartRoutingDaemon *)self _isMyAddress:v84]];
        v44 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:v86];
        [(SRDiscoveredDevice *)v35 setFwVersion:v44];

        [(SRDiscoveredDevice *)v35 setIdentifier:v87];
        [(SRDiscoveredDevice *)v35 setIsSRCapable:[(BTSmartRoutingDaemon *)self _supportsTipi:v86]];
        [(SRDiscoveredDevice *)v35 setNearbyAirplaneMode:(v22 >> 3) & 1];
        [(SRDiscoveredDevice *)v35 setNearbyAudioState:v69];
        [(SRDiscoveredDevice *)v35 setNearbyBLErssi:rssi];
        [(SRDiscoveredDevice *)v35 setNearbyForceDisconnectBit:v42];
        v45 = (v22 & 2) == 0 || v74 == 0;
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = (v22 >> 4) & 1;
        }

        [(SRDiscoveredDevice *)v35 setNearbyInCase:v46];
        [(SRDiscoveredDevice *)v35 setNearbySubtype:1];
        [sub_100073150() setNearbyTipiScore1:?];
        [sub_100073150() setNearbyTipiScore2:?];
        [(SRDiscoveredDevice *)v35 setNearbyUpdateTick:mach_absolute_time()];
        v47 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:v87];
        heartRateMonitorCapability = [v47 heartRateMonitorCapability];
        healthKitDataWriteAllowed = [v47 healthKitDataWriteAllowed];
        v50 = healthKitDataWriteAllowed == 1;
        aaDevice = [(SRDiscoveredDevice *)v35 aaDevice];
        productID = [aaDevice productID];

        if (productID == 8221)
        {
          heartRateMonitorEnabled = [v47 heartRateMonitorEnabled];
          v50 = healthKitDataWriteAllowed == 1 && heartRateMonitorEnabled == 1;
        }

        v45 = heartRateMonitorCapability == 2;
        v56 = v78;
        v55 = v79;
        v13 = v86;
        if (!v45 || !v50)
        {
          goto LABEL_90;
        }

        if (GestaltGetDeviceClass() != 1 && GestaltGetDeviceClass() != 3)
        {
LABEL_105:

          v6 = v82;
          v12 = v77;
          goto LABEL_106;
        }

        v57 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v86];
        v58 = v57;
        if (v57)
        {
          [v57 checkDataRelayServerPublishEligibility];
        }

        if ([(SRDiscoveredDevice *)v35 nearbyTipiScore1]== 10)
        {
          if (!v81)
          {
LABEL_72:
            lastDRHostIDSIdentifier = [(SRDiscoveredDevice *)v35 lastDRHostIDSIdentifier];

            if (lastDRHostIDSIdentifier)
            {
              [sub_10007312C() dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:?];
              [sub_1000730CC() setLastDRHostIDSIdentifier:?];
              if ([(SRSourceDevice *)self->_sourceDevice DRServerIsATV])
              {
                [(SRSourceDevice *)self->_sourceDevice setDRServerIsATV:0];
              }
            }

LABEL_89:

LABEL_90:
            if ([(SRDiscoveredDevice *)v35 nearbyUSBPluggedIn]== 2 && v56)
            {
              [(SRDiscoveredDevice *)v35 setNearbyUSBPluggedInTick:mach_absolute_time()];
            }

            if (v56)
            {
              v67 = 1;
            }

            else
            {
              v67 = 2;
            }

            [(SRDiscoveredDevice *)v35 setNearbyUSBPluggedIn:v67];
            if (!nearbyCopy)
            {
              [sub_100073038() _setNearbyPrevInEar:?];
              [sub_1000730CC() _setNearbyLastRouteHost:?];
              [sub_100073038() setNearbyIsMeLastRoute:?];
              [sub_100073038() setNearbyUSBPluggedIn:?];
              [sub_1000730CC() setNearbyUpdateTick:?];
              [sub_100073038() setNearbyInEar:?];
              [sub_100073038() setPrevFailedTipiConnectType:?];
              lastDRHostIDSIdentifier2 = [(SRDiscoveredDevice *)v35 lastDRHostIDSIdentifier];

              if (lastDRHostIDSIdentifier2)
              {
                [sub_10007312C() dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:?];
                [sub_1000730CC() setLastDRHostIDSIdentifier:?];
                if ([(SRSourceDevice *)self->_sourceDevice DRServerIsATV])
                {
                  [(SRSourceDevice *)self->_sourceDevice setDRServerIsATV:0];
                }
              }
            }

            goto LABEL_105;
          }
        }

        else if ((([(SRDiscoveredDevice *)v35 nearbyTipiScore1]== 12) & v81) == 0)
        {
          goto LABEL_72;
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateSRDiscoveredDeviceForNearbyWxChanged:isNearby:]", 30, "Eligible for DR from nearby ATV isAllowedFromPairedDevice %s", "yes");
        }

        v60 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromWxLastConnectedHost:v84];
        v61 = v60;
        if (!v60 || (objc_msgSend_operatingSystemVersion(v60), v88 <= 18))
        {
          if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateSRDiscoveredDeviceForNearbyWxChanged:isNearby:]", 90, "ATV is not DR compatible");
          }

          v55 = v79;
          goto LABEL_105;
        }

        lastDRHostIDSIdentifier3 = [(SRDiscoveredDevice *)v35 lastDRHostIDSIdentifier];
        uniqueID = [v61 uniqueID];
        v64 = [lastDRHostIDSIdentifier3 isEqualToString:uniqueID];

        if ((v64 & 1) == 0)
        {
          lastDRHostIDSIdentifier4 = [(SRDiscoveredDevice *)v35 lastDRHostIDSIdentifier];

          if (lastDRHostIDSIdentifier4)
          {
            [sub_10007312C() dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:?];
          }

          uniqueID2 = [v61 uniqueID];
          [(SRDiscoveredDevice *)v35 setLastDRHostIDSIdentifier:uniqueID2];

          [sub_10007312C() dataRelayAddAvailableDataTypesWithDiscoveredDevice:?];
        }

        if (![(SRSourceDevice *)self->_sourceDevice DRServerIsATV])
        {
          [(SRSourceDevice *)self->_sourceDevice setDRServerIsATV:1];
        }

        v56 = v78;
        v55 = v79;
        v13 = v86;
        goto LABEL_89;
      }
    }

    else
    {
    }

    [(SRDiscoveredDevice *)v35 _setAANearbyDevice:v39];
    goto LABEL_45;
  }

LABEL_108:
}

- (void)_handleTUCallStateChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_100003918;
    v10[4] = sub_100003838;
    v11 = [[SRCall alloc] initWithCall:object2];
    sub_100072E30();
    v9[1] = 3221225472;
    v9[2] = sub_10005CAE4;
    v9[3] = &unk_1002B6ED8;
    v9[4] = self;
    v9[5] = v10;
    dispatch_async(v8, v9);
    _Block_object_dispose(v10, 8);
  }
}

- (BOOL)_isEligibleForPreemptiveBannerUponUnlock:(id)unlock
{
  unlockCopy = unlock;
  if (unlockCopy && self->_prefSmartRoutingPreemptiveConnectedBanner && (mach_absolute_time(), UpTicksToSecondsF(), v5 < 2.0))
  {
    v6 = [sub_100073044() objectForKeyedSubscript:?];
    v7 = v6;
    if (v6)
    {
      nearbyWxDevice = [v6 nearbyWxDevice];
      identifier = [nearbyWxDevice identifier];
      uUIDString = [identifier UUIDString];

      v11 = [sub_10007305C() objectForKeyedSubscript:?];
      audioState = [v11 audioState];

      v13 = [sub_100072F04() _inEarNearbyCheck:?];
      v14 = [sub_10007305C() objectForKeyedSubscript:?];
      preemptiveBannerShown = [v14 preemptiveBannerShown];
      v16 = [sub_10007305C() objectForKeyedSubscript:?];
      v17 = -[BTSmartRoutingDaemon _isEligibleForPreemptiveBanner:firstPreemptiveBanner:inEarState:srDeviceCount:audioState:inAddress:](self, "_isEligibleForPreemptiveBanner:firstPreemptiveBanner:inEarState:srDeviceCount:audioState:inAddress:", preemptiveBannerShown, [v16 firstPreemptiveBannerShown], v13, -[NSMutableDictionary count](self->_smartRoutingWxDeviceMap, "count"), audioState, unlockCopy);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_inCaseLidClosed:(id)closed
{
  sub_1000731A4();
  v4 = v3;
  v6 = v5;
  v7 = [*(v4 + 1240) objectForKeyedSubscript:v6];
  identifier = [v7 identifier];

  if (identifier)
  {
    v9 = [*(v4 + 664) objectForKeyedSubscript:identifier];
    v10 = v9;
    if (v9)
    {
      if ([v9 primaryInCase])
      {
        [v10 secondaryInCase];
      }

      [v10 lidClosed];
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _inCaseLidClosed:]", 30, "_inCaseLidClose: device %@ prox status shows buds in case: %s, lid status: %s");
    }
  }

  sub_100073190();
  return result;
}

- (void)_nearbyWxChanged:(id)changed
{
  changedCopy = changed;
  identifier = [changedCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (!self->_nearbyWxDeviceMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      nearbyWxDeviceMap = self->_nearbyWxDeviceMap;
      self->_nearbyWxDeviceMap = v7;
    }

    bleDevice = [changedCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    v11 = sub_100072EDC(advertisementFields, @"hsStatus");

    bleDevice2 = [changedCopy bleDevice];
    advertisementFields2 = [bleDevice2 advertisementFields];
    v14 = sub_100072EDC(advertisementFields2, @"pid");

    bleDevice3 = [changedCopy bleDevice];
    advertisementFields3 = [bleDevice3 advertisementFields];

    v18 = sub_100072EA4(v17, @"asCount");
    sub_100072F88();
    v19 = CFDictionaryGetCFDataOfLength();
    sub_100073000();
    v20 = CFDictionaryGetCFDataOfLength();
    v68 = v19;
    v64 = v20;
    if (v20)
    {
      v20 = NSPrintF("%.6a", COERCE_DOUBLE([v20 bytes]));
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_100072F44(v20, @"aState");
    sub_100072EF8();
    Int64 = CFDictionaryGetInt64();
    v23 = sub_100072EA4(Int64, @"lc");
    v55 = v23;
    v61 = v14;
    if ((v11 & 0x24) != 0)
    {
      v59 = 1;
    }

    else
    {
      v23 = [(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v14];
      v59 = v23;
    }

    v57 = sub_100072E64(v23, @"audioIdleTime");
    v56 = sub_100072E64(v57, @"budsOutofCaseTime");
    sub_100072EF8();
    v24 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v26 = &stru_1002C1358;
    if (TypedValue)
    {
      v26 = TypedValue;
    }

    v66 = uUIDString;
    v67 = v26;
    v27 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
    if (!v27)
    {
      v27 = objc_alloc_init(SRNearbyWxDevice);
    }

    selfCopy = self;
    v65 = v21;
    [(SRNearbyWxDevice *)v27 setAddress:v21];
    [(SRNearbyWxDevice *)v27 setAudioState:v22];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = changedCopy;
    batteryInfo = [changedCopy batteryInfo];
    v29 = [batteryInfo countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v73;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v73 != v31)
          {
            objc_enumerationMutation(batteryInfo);
          }

          v33 = *(*(&v72 + 1) + 8 * i);
          if ([v33 batteryType] == 2)
          {
            [v33 batteryLevel];
            [(SRNearbyWxDevice *)v27 setBatteryLeft:?];
          }

          if ([v33 batteryType] == 3)
          {
            [v33 batteryLevel];
            [(SRNearbyWxDevice *)v27 setBatteryRight:?];
          }

          if ([v33 batteryType] == 4)
          {
            [v33 batteryLevel];
            [(SRNearbyWxDevice *)v27 setBatteryMain:?];
          }
        }

        v30 = [batteryInfo countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v30);
    }

    [(BTSmartRoutingDaemon *)selfCopy _lowestBatteryInfoForSFDevice:v71];
    [(SRNearbyWxDevice *)v27 setLowestBudBatteryInfo:?];
    [(SRNearbyWxDevice *)v27 setPaired:Int64 != 0];
    [(SRNearbyWxDevice *)v27 setProductID:v61];
    [(SRNearbyWxDevice *)v27 setSourceCount:v18];
    v34 = v68;
    [(SRNearbyWxDevice *)v27 setLastConnectHost:v68];
    [(SRNearbyWxDevice *)v27 setLidClosed:v55 == 1];
    [(SRNearbyWxDevice *)v27 setPrimaryInEar:(v11 >> 2) & 1];
    [(SRNearbyWxDevice *)v27 setSecondaryInEar:(v11 >> 5) & 1];
    [(SRNearbyWxDevice *)v27 setPrimaryInCase:(v11 >> 1) & 1];
    [(SRNearbyWxDevice *)v27 setSecondaryInCase:(v11 >> 4) & 1];
    [(SRNearbyWxDevice *)v27 setIsInEar:v59];
    [(SRNearbyWxDevice *)v27 setIsUTPConnected:v11 & 1];
    [(SRNearbyWxDevice *)v27 setIdleTime:v57];
    [(SRNearbyWxDevice *)v27 setOutOfCaseTime:v56];
    [(SRNearbyWxDevice *)v27 setIcloudSignedIn:v24 != 0];
    v35 = v67;
    [(SRNearbyWxDevice *)v27 setName:v67];
    [(SRNearbyWxDevice *)v27 setLastWxAdvTicks:mach_absolute_time()];
    if (v18 == 1)
    {
      [(SRNearbyWxDevice *)v27 setOneSourceLastRouteHost:v68];
      v36 = v65;
      uUIDString = v66;
    }

    else
    {
      v36 = v65;
      uUIDString = v66;
      if (!v18)
      {
        [(SRNearbyWxDevice *)v27 setZeroSourceLastRouteHost:v68];
      }
    }

    [(NSMutableDictionary *)selfCopy->_nearbyWxDeviceMap setObject:v27 forKeyedSubscript:uUIDString];
    changedCopy = v71;
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      address = [(SRNearbyWxDevice *)v27 address];
      v37 = "yes";
      if ([(SRNearbyWxDevice *)v27 isUTPConnected])
      {
        v38 = "yes";
      }

      else
      {
        v38 = "no";
      }

      v63 = v38;
      sourceCount = [(SRNearbyWxDevice *)v27 sourceCount];
      audioState = [(SRNearbyWxDevice *)v27 audioState];
      if (audioState > 3)
      {
        v40 = "?";
      }

      else
      {
        v40 = off_1002B8ED0[audioState];
      }

      v60 = v40;
      lastConnectHost = [(SRNearbyWxDevice *)v27 lastConnectHost];
      zeroSourceLastRouteHost = [(SRNearbyWxDevice *)v27 zeroSourceLastRouteHost];
      oneSourceLastRouteHost = [(SRNearbyWxDevice *)v27 oneSourceLastRouteHost];
      if ([(SRNearbyWxDevice *)v27 lidClosed])
      {
        v43 = "yes";
      }

      else
      {
        v43 = "no";
      }

      if ([(SRNearbyWxDevice *)v27 primaryInEar])
      {
        v44 = "yes";
      }

      else
      {
        v44 = "no";
      }

      if ([(SRNearbyWxDevice *)v27 secondaryInEar])
      {
        v45 = "yes";
      }

      else
      {
        v45 = "no";
      }

      if ([(SRNearbyWxDevice *)v27 primaryInCase])
      {
        v46 = "yes";
      }

      else
      {
        v46 = "no";
      }

      if (![(SRNearbyWxDevice *)v27 secondaryInCase])
      {
        v37 = "no";
      }

      [(SRNearbyWxDevice *)v27 batteryLeft];
      v48 = v47;
      [(SRNearbyWxDevice *)v27 batteryRight];
      v50 = v49;
      [(SRNearbyWxDevice *)v27 batteryMain];
      v52 = v44;
      v53 = v45;
      uUIDString = v66;
      v35 = v67;
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyWxChanged:]", 50, "Nearby Wx device %@ changed, name %@, addr %@, UTP %s, sourceCount %u, audioState %s, lastRoute %@, zeroLastRoute %@, oneLastRoute %@, lidClosed %s, primaryInEar %s, secondaryInEar %s, primaryInCase %s, secondaryInCase %s, battery Left %f, battery right %f, battery main %f", v66, v67, address, v63, sourceCount, v60, lastConnectHost, zeroSourceLastRouteHost, oneSourceLastRouteHost, v43, v52, v53, v46, v37, v48, v50, v51);

      changedCopy = v71;
      v34 = v68;
      v36 = v65;
    }
  }
}

- (void)_receivedAudioCategory:(id)category withOptions:(id)options
{
  categoryCopy = category;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  optionsCopy = options;
  v9 = [(NSMutableDictionary *)smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
  v10 = [optionsCopy objectForKey:@"otherDeviceAudioCategory"];
  unsignedIntValue = [v10 unsignedIntValue];

  v12 = [optionsCopy objectForKey:@"btAddress"];
  v32 = [optionsCopy objectForKey:@"btName"];
  v13 = [optionsCopy objectForKey:@"playingApp"];
  v14 = [optionsCopy objectForKey:@"hostStreamingState"];

  v15 = [v14 isEqualToString:@"YES"];
  [v9 setOtherTipiDeviceIsStreamingAudio:v15];
  workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  if (v9)
  {
    otherTipiDeviceBTAddress = [v9 otherTipiDeviceBTAddress];
    v18 = [otherTipiDeviceBTAddress isEqualToString:v12];

    if ((v18 & 1) == 0)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        otherTipiDeviceBTAddress2 = [v9 otherTipiDeviceBTAddress];
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _receivedAudioCategory:withOptions:]", 90, "Host device address does not match, current cached host address %@, the other device address %@; Updated the Tipi info!", otherTipiDeviceBTAddress2, v12);
      }

      [sub_100072FC8() _updateOtherTipiDevicewithAudioCategory:? otherAddress:? otherName:? otherVersion:?];
      [sub_100072FC8() _updateOtherTipiBuildVersion:?];
      [sub_100072FC8() _tipihHealingV2Handling:?];
    }
  }

  if (!self->_prefSmartRoutingForcedHijackv2)
  {
    goto LABEL_12;
  }

  v20 = 0;
  if (![v9 otherTipiAudioCategory] && unsignedIntValue >= 0x12D)
  {
    if ([v9 routingAction] == 1)
    {
LABEL_12:
      v20 = 0;
      goto LABEL_13;
    }

    [v9 setOtherTipiAudioCategory:unsignedIntValue];
    integerValue = [(NSNumber *)self->_localDeviceAudioCategory integerValue];
    v33 = 0;
    v29 = [(BTSmartRoutingDaemon *)self allowHijackWithAudioScore:integerValue hijackRoute:categoryCopy hijackDeniedReason:&v33];
    v20 = v33;
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v30 = "no";
      if (v29)
      {
        v30 = "yes";
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _receivedAudioCategory:withOptions:]", 90, "[HijackV2]: Arbitrate again while receiving audio score of other Tipi device for the first time. ShouldHijack %s", v30);
    }

    if (v29)
    {
      [v9 setRoutingAction:1];
      [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
    }
  }

LABEL_13:
  [v9 setOtherTipiAudioCategory:unsignedIntValue];
  [v9 setOtherTipiDevicePlayingApp:v13];
  [(BTSmartRoutingDaemon *)self _tipiHealingCompleteCheckTimerForDevice:v9];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _receivedAudioCategory:withOptions:]", 30, "[Hijackv2] Received audio category %u from tipi device %@ through relay message", [v9 otherTipiAudioCategory], v12);
  }

  otherTipiDeviceIsWatch = [v9 otherTipiDeviceIsWatch];
  if (otherTipiDeviceIsWatch & 1) != 0 || ((workoutActive ^ 1))
  {
    if (!otherTipiDeviceIsWatch)
    {
      goto LABEL_39;
    }
  }

  else
  {
    workoutWx = [(BTSmartRoutingDaemon *)self workoutWx];

    if (workoutWx)
    {
      goto LABEL_39;
    }
  }

  if ([v9 otherTipiAudioCategory] == 100)
  {
    v23 = v15;
  }

  else
  {
    v23 = 1;
  }

  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  if (v23)
  {
    if (!phoneOwnershipTimer)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if (phoneOwnershipTimer)
  {
LABEL_29:
    if ((([v9 otherTipiAudioCategory] < 0x65) & ~v15) == 0)
    {
      v25 = self->_phoneOwnershipTimer;
      if (v25)
      {
        v26 = v25;
        dispatch_source_cancel(v26);
        v27 = self->_phoneOwnershipTimer;
        self->_phoneOwnershipTimer = 0;
      }
    }

    goto LABEL_39;
  }

  if (([v9 routed] & 1) == 0)
  {
    [(BTSmartRoutingDaemon *)self _startPhoneOwnershipTimer:10];
  }

LABEL_39:
}

- (void)_sendNowPlayingTemporaryOverrideIfNeeded:(BOOL)needed
{
  if (!self->_prefSmartRoutingNowPlayingTemporaryOverride)
  {
    return;
  }

  neededCopy = needed;
  if (GestaltGetDeviceClass() == 1)
  {
    if (self->_temporaryOverrideTimer)
    {
      if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        return;
      }

      v6 = "Temporary override timer not running";
    }

    else
    {
      if (!neededCopy || !self->_effectiveScreenLocked)
      {
        if (!self->_smartRoutingController)
        {
          [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
        }

        if (self->_stemClickTransactionTimer && self->_overrideMessageSent != neededCopy)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendNowPlayingTemporaryOverrideIfNeeded:]", 30, "Temp Override status has changed -> cancelling stem click transaction timer");
          }

          [(BTSmartRoutingDaemon *)self _cancelStemClickTransaction];
        }

        sub_100072E30();
        v7[1] = 3221225472;
        v7[2] = sub_1001E2F0C;
        v7[3] = &unk_1002B8690;
        v7[4] = self;
        v8 = neededCopy;
        v9 = 5;
        v10 = neededCopy;
        [v5 enumerateKeysAndObjectsUsingBlock:v7];
        return;
      }

      if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        return;
      }

      v6 = "Screen is locked, device is not active. Skip override";
    }
  }

  else
  {
    if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v6 = "Temporary override message only available on iPhone platform";
  }

  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendNowPlayingTemporaryOverrideIfNeeded:]", 90, v6);
}

- (void)_tipiHealingCompleteCheckTimerForDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (self->_tipiHealingHijackTimer)
  {
    tipiHealingHijackTimerAddress = self->_tipiHealingHijackTimerAddress;
    v14 = deviceCopy;
    deviceAddress = [deviceCopy deviceAddress];

    if (tipiHealingHijackTimerAddress == deviceAddress)
    {
      deviceCopy = [v14 audioRoutingRequest];
      if (deviceCopy)
      {
        v8 = deviceCopy;
        audioRoutingResponse = [v14 audioRoutingResponse];

        if (audioRoutingResponse)
        {
          [(BTSmartRoutingDaemon *)self _tipiHealingHijackTimerReset];
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealingCompleteCheckTimerForDevice:]", 30, "Tipi healing complete when hijack timer was running, service pending MX routing request");
          }

          audioRoutingRequest = [v14 audioRoutingRequest];
          audioRoutingResponse2 = [v14 audioRoutingResponse];
          [sub_100072FBC() _smartRoutingAudioRoutingRequest:? withResponseHandler:?];

          goto LABEL_13;
        }
      }

      v5 = v14;
      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), v5 = v14, deviceCopy))
        {
          deviceCopy = LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealingCompleteCheckTimerForDevice:]", 90, "Device tipi healing was completed for %@ with tipi healing timer, but no routing request found for device", self->_tipiHealingHijackTimerAddress);
LABEL_13:
          v5 = v14;
        }
      }
    }

    else
    {
      v5 = v14;
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), v5 = v14, deviceCopy))
        {
          v12 = self->_tipiHealingHijackTimerAddress;
          deviceAddress2 = [v5 deviceAddress];
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealingCompleteCheckTimerForDevice:]", 30, "Tipi Healing timer(for address: %@) does not match device tipi healing was completed for: %@", v12, deviceAddress2);

          goto LABEL_13;
        }
      }
    }
  }

  _objc_release_x1(deviceCopy, v5);
}

@end