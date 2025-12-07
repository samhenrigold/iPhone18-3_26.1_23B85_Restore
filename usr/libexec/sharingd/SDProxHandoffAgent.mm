@interface SDProxHandoffAgent
+ (id)sharedAgent;
- (BOOL)_bleActionDiscoveryShouldStart;
- (BOOL)_combinedDeviceIsSuppressed:(id)suppressed;
- (BOOL)_expectingContentForDeviceID:(id)d;
- (BOOL)_runStateVerify:(int)verify device:(id)device;
- (BOOL)_shouldMediumPromptWithInfo:(id)info;
- (BOOL)_systemCanTrigger;
- (BOOL)_throttleMediumAllowsTrigger;
- (BOOL)callTransferShouldPush:(id)push;
- (CGImage)appIconForCall:(id)call;
- (NSString)description;
- (SDProxHandoffAgent)init;
- (id)_bleUpdateMappingWithDevice:(id)device;
- (id)_combinedDeviceForUIID:(id)d;
- (id)_combinedDevicePending;
- (id)_routeForDevice:(id)device;
- (id)_routes;
- (id)callTransferInfoForDevice:(id)device;
- (id)contactForCall:(id)call;
- (id)currentCall;
- (id)displayNameForContact:(id)contact;
- (id)mediaTransferInfoFromInfo:(id)info;
- (id)persistImageForContact:(id)contact withAppIcon:(CGImage *)icon;
- (int)proximityClient:(id)client dismissContentForDevice:(id)device;
- (int)proximityClient:(id)client provideContent:(id)content forDevice:(id)device force:(BOOL)force;
- (int)proximityClient:(id)client stopSuppressingDevice:(id)device;
- (int)proximityClient:(id)client suppressDevice:(id)device;
- (int)proximityClient:(id)client updateContent:(id)content forDevice:(id)device;
- (int)proximityClientRequestScannerTimerReset:(id)reset;
- (int)proximityClientStart:(id)start;
- (unint64_t)notificationHomePodTypeForDevice:(id)device;
- (void)_bleActionDeviceChanged:(id)changed;
- (void)_bleActionDeviceFound:(id)found;
- (void)_bleActionDeviceFoundCandidate:(id)candidate;
- (void)_bleActionDeviceLost:(id)lost;
- (void)_bleActionDiscoveryEnsureStarted;
- (void)_bleActionDiscoveryEnsureStopped;
- (void)_bleActionScanTimerActivate;
- (void)_bleActionScanTimerFired;
- (void)_bleActionScanTimerInvalidate;
- (void)_bleDeviceNearbyEnter:(id)enter;
- (void)_bleDeviceNearbyExit:(id)exit;
- (void)_bleInfoDeviceChanged:(id)changed;
- (void)_bleInfoDeviceFound:(id)found;
- (void)_bleInfoDeviceLost:(id)lost;
- (void)_bleInfoDiscoveryEnsureStarted;
- (void)_bleInfoDiscoveryEnsureStopped;
- (void)_bleUpdateMappingAndNearbyCoalesced;
- (void)_bleUpdateMappingReset;
- (void)_clinkEnsureStarted;
- (void)_clinkEnsureStopped;
- (void)_clinkHandleRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_clinkHomePodHandleRequest:(id)request responseHandler:(id)handler;
- (void)_combinedDevicePrepareForCallTransferTrigger:(id)trigger;
- (void)_commonCallCountChanged;
- (void)_commonEnsureStarted;
- (void)_commonEnsureStopped;
- (void)_commonScreenStateChanged;
- (void)_commonShouldAdvertiseChanged;
- (void)_hapticsEnsurePrepared;
- (void)_hapticsEnsureStopped;
- (void)_hapticsFireNotificationSuccess;
- (void)_invalidate;
- (void)_motionEnsureStarted;
- (void)_motionEnsureStopped;
- (void)_motionUpdate:(id)update;
- (void)_proxiedNotificationDidDismiss:(id)dismiss reason:(int64_t)reason;
- (void)_proxiedNotificationWasTapped:(id)tapped;
- (void)_proximityClientDeviceDidUnTrigger:(id)trigger;
- (void)_proximityClientDeviceEnteredImmediate:(id)immediate;
- (void)_proximityClientDeviceEnteredNearby:(id)nearby;
- (void)_proximityClientDeviceExitedImmediate:(id)immediate;
- (void)_proximityClientDeviceExitedNearby:(id)nearby;
- (void)_proximityClientDeviceUpdated:(id)updated;
- (void)_proximityClientDeviceWasDismissed:(id)dismissed;
- (void)_proximityClientDeviceWasDismissed:(id)dismissed reason:(int64_t)reason;
- (void)_proximityClientDeviceWasSelected:(id)selected;
- (void)_proximityClientDeviceWillTrigger:(id)trigger;
- (void)_proximityClientSeedInitialDevices:(id)devices;
- (void)_proximityClientSeedWillTriggerDeviceIfNeeded:(id)needed;
- (void)_resetAllStates;
- (void)_run;
- (void)_runCallHandoffHandleDelayTimerFired;
- (void)_runCallHandoffHandleResponse:(id)response error:(id)error;
- (void)_runCallHandoffStart:(id)start;
- (void)_runCallHandoffStartDelayTimer;
- (void)_runNotificationDismissed;
- (void)_runNotificationPending;
- (void)_runNotificationPendingContent;
- (void)_runNotificationPresented;
- (void)_runNotificationReady;
- (void)_runTransferDone;
- (void)_runTransferInProgress;
- (void)_runTransferPending;
- (void)_runTransferPendingDismiss;
- (void)_runTransferReady;
- (void)_scheduleRunAfter:(double)after;
- (void)_serviceEnsureStarted;
- (void)_serviceEnsureStopped;
- (void)_serviceTimeoutActivate;
- (void)_serviceTimeoutFired;
- (void)_serviceTimeoutInvalidate;
- (void)_throttleEventDidOccur;
- (void)_throttleEventSet:(unint64_t)set;
- (void)_throttleEventsReset;
- (void)_throttleMediumReset;
- (void)_throttleMediumSetTicks:(unint64_t)ticks;
- (void)_uiDismissWhenReady:(id)ready reason:(int64_t)reason;
- (void)_uiStopIfNeeded:(id)needed reason:(int64_t)reason;
- (void)_update;
- (void)_updateCandidateIsNearby;
- (void)activate;
- (void)commonSystemUIChanged;
- (void)invalidate;
- (void)notificationDidDismiss:(id)dismiss reason:(int64_t)reason;
- (void)prefsChanged;
- (void)proximityClientStop:(id)stop;
- (void)proximityClientUpdate:(id)update;
- (void)proximityDeviceDidTrigger:(id)trigger;
- (void)setPreventNotifications:(BOOL)notifications;
- (void)testUI:(id)i;
- (void)userDidTapNotification:(id)notification;
@end

@implementation SDProxHandoffAgent

- (void)commonSystemUIChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007080;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_motionEnsureStarted
{
  if (!self->_motionMonitorStarted)
  {
    selfCopy = self;
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000359B4(self, a2, v2);
      }
    }

    objc_initWeak(&location, selfCopy);
    motionMonitor = selfCopy->_motionMonitor;
    v5 = +[NSOperationQueue mainQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000356A8;
    v6[3] = &unk_1008D0140;
    v6[4] = selfCopy;
    objc_copyWeak(&v7, &location);
    [(CMMotionActivityManager *)motionMonitor startActivityUpdatesToQueue:v5 withHandler:v6];

    selfCopy->_motionMonitorStarted = 1;
    selfCopy->_stationary = 1;
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_serviceEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleActionService)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1000F79E8(v3, v4, v5);
      }
    }

    [(SFProxHandoffService *)self->_bleActionService invalidate];
    bleActionService = self->_bleActionService;
    self->_bleActionService = 0;
  }
}

- (void)_run
{
  _combinedDevicePending = [(SDProxHandoffAgent *)self _combinedDevicePending];
  uiDevice = self->_uiDevice;
  self->_uiDevice = _combinedDevicePending;

  state = [(SFCombinedDevice *)self->_uiDevice state];
  if (state > 15)
  {
    if (state <= 17)
    {
      if (state == 16)
      {

        [(SDProxHandoffAgent *)self _runTransferPending];
      }

      else
      {

        [(SDProxHandoffAgent *)self _runTransferReady];
      }
    }

    else
    {
      switch(state)
      {
        case 18:

          [(SDProxHandoffAgent *)self _runTransferInProgress];
          break;
        case 19:

          [(SDProxHandoffAgent *)self _runTransferPendingDismiss];
          break;
        case 20:

          [(SDProxHandoffAgent *)self _runTransferDone];
          break;
      }
    }
  }

  else if (state <= 12)
  {
    if (state == 11)
    {

      [(SDProxHandoffAgent *)self _runNotificationPending];
    }

    else if (state == 12)
    {

      [(SDProxHandoffAgent *)self _runNotificationPendingContent];
    }
  }

  else if (state == 13)
  {

    [(SDProxHandoffAgent *)self _runNotificationReady];
  }

  else if (state == 14)
  {

    [(SDProxHandoffAgent *)self _runNotificationPresented];
  }

  else
  {

    [(SDProxHandoffAgent *)self _runNotificationDismissed];
  }
}

- (id)_combinedDevicePending
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1000F282C;
  v59 = sub_1000F283C;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000F282C;
  v53 = sub_1000F283C;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000F282C;
  v47 = sub_1000F283C;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000F282C;
  v41 = sub_1000F283C;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000F282C;
  v35 = sub_1000F283C;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000F282C;
  v29 = sub_1000F283C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000F282C;
  v23 = sub_1000F283C;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000F282C;
  v17 = sub_1000F283C;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000F282C;
  v11 = sub_1000F283C;
  v12 = 0;
  mappedDevices = self->_mappedDevices;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100035E94;
  v6[3] = &unk_1008D01B8;
  v6[4] = self;
  v6[5] = &v49;
  v6[6] = &v37;
  v6[7] = &v43;
  v6[8] = &v25;
  v6[9] = &v19;
  v6[10] = &v31;
  v6[11] = &v13;
  v6[12] = &v55;
  v6[13] = &v7;
  [(NSMutableDictionary *)mappedDevices enumerateKeysAndObjectsUsingBlock:v6];
  v3 = v20[5];
  if (!v3)
  {
    v3 = v14[5];
    if (!v3)
    {
      v3 = v26[5];
      if (!v3)
      {
        v3 = v32[5];
        if (!v3)
        {
          v3 = v50[5];
          if (!v3)
          {
            v3 = v44[5];
            if (!v3)
            {
              v3 = v38[5];
              if (!v3)
              {
                v3 = v56[5];
                if (!v3)
                {
                  v3 = v8[5];
                }
              }
            }
          }
        }
      }
    }
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  return v4;
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_prefEnabled && !self->_unansweredCall)
  {
    [(SDProxHandoffAgent *)self _commonEnsureStarted];
    if ([(SDProxHandoffAgent *)self _clinkShouldStart])
    {
      [(SDProxHandoffAgent *)self _clinkEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _clinkEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _bleActionDiscoveryShouldStart])
    {
      [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _bleInfoDiscoveryShouldStart])
    {
      [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _motionShouldStart])
    {
      [(SDProxHandoffAgent *)self _motionEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _motionEnsureStopped];
    }

    if ([(SDProxHandoffAgent *)self _serviceShouldStart])
    {
      [(SDProxHandoffAgent *)self _serviceEnsureStarted];
    }

    else
    {
      [(SDProxHandoffAgent *)self _serviceEnsureStopped];
    }

    [(SDProxHandoffAgent *)self _run];
  }

  else
  {
    [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
    [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStopped];
    [(SDProxHandoffAgent *)self _clinkEnsureStopped];
    [(SDProxHandoffAgent *)self _motionEnsureStopped];

    [(SDProxHandoffAgent *)self _serviceEnsureStopped];
  }
}

- (void)_clinkEnsureStarted
{
  if (!self->_clinkClient)
  {
    v17[5] = v6;
    v17[6] = v5;
    v17[11] = v3;
    v17[12] = v4;
    selfCopy = self;
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000354C8(self, a2, v2);
      }
    }

    dispatch_assert_queue_V2(selfCopy->_dispatchQueue);
    v8 = objc_alloc_init(RPCompanionLinkClient);
    clinkClient = selfCopy->_clinkClient;
    selfCopy->_clinkClient = v8;

    [(RPCompanionLinkClient *)selfCopy->_clinkClient setControlFlags:2052];
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDispatchQueue:selfCopy->_dispatchQueue];
    if (SFDeviceClassCodeGet() - 1 <= 1)
    {
      [(RPCompanionLinkClient *)selfCopy->_clinkClient setFlags:[(RPCompanionLinkClient *)selfCopy->_clinkClient flags]| 2];
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000F0324;
    v17[3] = &unk_1008CDEA0;
    v17[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setInterruptionHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F032C;
    v16[3] = &unk_1008CE238;
    v16[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDeviceChangedHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F03E0;
    v15[3] = &unk_1008CE210;
    v15[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDeviceFoundHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F0464;
    v14[3] = &unk_1008CE210;
    v14[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDeviceLostHandler:v14];
    v10 = selfCopy->_clinkClient;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000359D0;
    v13[3] = &unk_1008CDF90;
    v13[4] = selfCopy;
    [(RPCompanionLinkClient *)v10 activateWithCompletion:v13];
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000354E4();
    }

    v11 = selfCopy->_clinkClient;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F04E8;
    v12[3] = &unk_1008CF358;
    v12[4] = selfCopy;
    [(RPCompanionLinkClient *)v11 registerRequestID:@"com.apple.sharing.calltransfer" options:0 handler:v12];
  }
}

- (void)_bleActionDiscoveryEnsureStarted
{
  if (!self->_proximityController)
  {
    v4 = +[SDProximityController sharedController];
    proximityController = self->_proximityController;
    self->_proximityController = v4;
  }

  bleActionDiscovery = self->_bleActionDiscovery;
  if (bleActionDiscovery)
  {
    goto LABEL_11;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (bleActionDiscovery = _LogCategory_Initialize(), bleActionDiscovery))
    {
      sub_100035518(bleActionDiscovery, a2, v2);
    }
  }

  v7 = objc_alloc_init(SFDeviceDiscovery);
  v8 = self->_bleActionDiscovery;
  self->_bleActionDiscovery = v7;

  v9 = self->_stationary ? 9 : 29;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:v9];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDiscoveryFlags:8388624];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setPurpose:@"HandoffAction"];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setRssiThreshold:-60];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setFastScanMode:2];
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setScanRate:20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000EEB48;
  v16[3] = &unk_1008CE7A0;
  v16[4] = self;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceFoundHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009D70;
  v15[3] = &unk_1008CE7A0;
  v15[4] = self;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceLostHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000348F0;
  v14[3] = &unk_1008CE7C8;
  v14[4] = self;
  [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceChangedHandler:v14];
  v10 = self->_bleActionDiscovery;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100035ABC;
  v13[3] = &unk_1008CDF90;
  v13[4] = self;
  [(SFDeviceDiscovery *)v10 activateWithCompletion:v13];
  [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
  bleActionDiscovery = self->_bleActionDiscovery;
  if (bleActionDiscovery)
  {
LABEL_11:
    if (self->_prefHighNormal)
    {
      if (self->_stationary && [bleActionDiscovery scanRate] > 10 || self->_bleActionScanTimedOut)
      {
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_100035658();
        }

        [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:9];
        [(SFDeviceDiscovery *)self->_bleActionDiscovery setFastScanMode:2];
        [(SFDeviceDiscovery *)self->_bleActionDiscovery setScanRate:10];
        [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
      }

      else if (!self->_stationary)
      {
        allKeys = [(NSMutableDictionary *)self->_mappedDevices allKeys];
        if ([allKeys count])
        {
          scanRate = [(SFDeviceDiscovery *)self->_bleActionDiscovery scanRate];

          if (scanRate <= 29)
          {
            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F6ABC();
            }

            [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:29];
            [(SFDeviceDiscovery *)self->_bleActionDiscovery setFastScanMode:0];
            [(SFDeviceDiscovery *)self->_bleActionDiscovery setScanRate:30];
            [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (BOOL)_systemCanTrigger
{
  systemUIFlags = [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
  screenOn = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if (screenOn)
  {
    LOBYTE(screenOn) = !systemUIFlags && ([(CUSystemMonitor *)self->_systemMonitor screenOn]& 1) != 0 || (systemUIFlags & 0x18001) == 0;
  }

  return screenOn;
}

- (void)_commonEnsureStarted
{
  selfCopy = self;
  if (!self->_systemMonitor)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000F6360(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = v4;

    [(CUSystemMonitor *)selfCopy->_systemMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100031394;
    v22[3] = &unk_1008CDEA0;
    v22[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setCallChangedHandler:v22];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000ECBF8;
    v21[3] = &unk_1008CDEA0;
    v21[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setScreenOnChangedHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000ECC00;
    v20[3] = &unk_1008CDEA0;
    v20[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setScreenLockedChangedHandler:v20];
    v6 = selfCopy->_systemMonitor;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000ECC08;
    v19[3] = &unk_1008CDEA0;
    v19[4] = selfCopy;
    [(CUSystemMonitor *)v6 activateWithCompletion:v19];
  }

  if (!selfCopy->_bleMapCoalescer)
  {
    v7 = objc_alloc_init(CUCoalescer);
    bleMapCoalescer = selfCopy->_bleMapCoalescer;
    selfCopy->_bleMapCoalescer = v7;

    [(CUCoalescer *)selfCopy->_bleMapCoalescer setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUCoalescer *)selfCopy->_bleMapCoalescer setMaxDelay:0.05];
    [(CUCoalescer *)selfCopy->_bleMapCoalescer setMinDelay:0.05];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003538C;
    v18[3] = &unk_1008CDEA0;
    v18[4] = selfCopy;
    [(CUCoalescer *)selfCopy->_bleMapCoalescer setActionHandler:v18];
  }

  if (!selfCopy->_statusMonitor && SFDeviceClassCodeGet() - 1 <= 1)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:selfCopy selector:"commonSystemUIChanged" name:@"com.apple.sharingd.SystemUIChanged" object:0];
    v10 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = selfCopy->_statusMonitor;
    selfCopy->_statusMonitor = v10;
  }

  if (!selfCopy->_motionMonitor)
  {
    v12 = objc_alloc_init(CMMotionActivityManager);
    motionMonitor = selfCopy->_motionMonitor;
    selfCopy->_motionMonitor = v12;
  }

  if (!selfCopy->_notificationProxy)
  {
    v14 = objc_alloc_init(SFNotificationProxy);
    notificationProxy = selfCopy->_notificationProxy;
    selfCopy->_notificationProxy = v14;

    [(SFNotificationProxy *)selfCopy->_notificationProxy setDispatchQueue:selfCopy->_dispatchQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000ECC78;
    v17[3] = &unk_1008D00C8;
    v17[4] = selfCopy;
    [(SFNotificationProxy *)selfCopy->_notificationProxy setDismissedHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000ECC88;
    v16[3] = &unk_1008D00F0;
    v16[4] = selfCopy;
    [(SFNotificationProxy *)selfCopy->_notificationProxy setTappedHandler:v16];
  }
}

- (BOOL)_bleActionDiscoveryShouldStart
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (SFDeviceClassCodeGet() - 1 > 1)
  {
    return 0;
  }

  systemMonitor = self->_systemMonitor;

  return [(CUSystemMonitor *)systemMonitor screenOn];
}

- (void)_bleInfoDiscoveryEnsureStopped
{
  selfCopy = self;
  if (self->_bleInfoDiscovery)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000F6D30(self, a2, v2);
      }
    }

    [(SFDeviceDiscovery *)selfCopy->_bleInfoDiscovery invalidate];
    bleInfoDiscovery = selfCopy->_bleInfoDiscovery;
    selfCopy->_bleInfoDiscovery = 0;

    [(SDProxHandoffAgent *)selfCopy _bleUpdateMappingReset];
  }

  [(NSMutableDictionary *)selfCopy->_bleInfoDevices removeAllObjects];
  bleInfoDevices = selfCopy->_bleInfoDevices;
  selfCopy->_bleInfoDevices = 0;

  [(NSMutableDictionary *)selfCopy->_bleUnmapped removeAllObjects];
  bleUnmapped = selfCopy->_bleUnmapped;
  selfCopy->_bleUnmapped = 0;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"-- SDProxHandoffAgent --\n"];
  if (self->_prefEnabled)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if (self->_userOnCall)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (self->_clientShouldAdvertise)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (self->_candidateNearby)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  [v3 appendFormat:@"Enabled: %s, On call: %s, client should advertise: %s, Candidate nearby: %s\n", v4, v5, v6, v7];
  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    v9 = clinkClient;
    activeDevices = [(RPCompanionLinkClient *)v9 activeDevices];
    [v3 appendFormat:@"CLinkClient (%ld devices): %@\n", objc_msgSend(activeDevices, "count"), v9];
  }

  if (self->_bleActionService)
  {
    [v3 appendFormat:@"BLE Action Service: %@\n", self->_bleActionService];
  }

  if ([(NSMutableSet *)self->_proxClients count])
  {
    [v3 appendFormat:@"ProxClients: (%ld)\n", -[NSMutableSet count](self->_proxClients, "count")];
  }

  bleActionDiscovery = self->_bleActionDiscovery;
  if (bleActionDiscovery)
  {
    v12 = [(NSMutableDictionary *)self->_bleActionDevices count];
    if (self->_bleActionScanTimedOut)
    {
      v13 = @", TIMED OUT";
    }

    else
    {
      v13 = &stru_1008EFBD0;
    }

    [v3 appendFormat:@"BLE NearbyAction Discovery: %@, %ld devices%@\n", bleActionDiscovery, v12, v13];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allValues = [(NSMutableDictionary *)self->_bleActionDevices allValues];
    v15 = [allValues countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        v18 = 0;
        do
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v44 + 1) + 8 * v18)];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [allValues countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v16);
    }
  }

  if (self->_bleInfoDiscovery)
  {
    [v3 appendFormat:@"BLE NearbyInfo Discovery: %@\n", self->_bleInfoDiscovery];
  }

  [v3 appendFormat:@"Mapped Devices (%ld), unmapped (%ld):\n", -[NSMutableDictionary count](self->_mappedDevices, "count"), -[NSMutableDictionary count](self->_bleUnmapped, "count")];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_mappedDevices allValues];
  v20 = [allValues2 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    do
    {
      v23 = 0;
      do
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(allValues2);
        }

        [v3 appendFormat:@" - %@", *(*(&v40 + 1) + 8 * v23)];
        [v3 appendFormat:@"\n"];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [allValues2 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v21);
  }

  uiDevice = self->_uiDevice;
  if (uiDevice)
  {
    v25 = uiDevice;
    v26 = sub_100035C98([(SFCombinedDevice *)v25 nextState]);
    [v3 appendFormat:@"UI Device: (next state = %@)\n - %@\n", v26, v25];
  }

  currentCall = [(SDProxHandoffAgent *)self currentCall];
  v28 = currentCall;
  if (currentCall)
  {
    callUUID = [currentCall callUUID];
    [v3 appendFormat:@"Current Call:\n - %@\n", callUUID];
  }

  v39 = v3;
  systemUIFlags = [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
  _systemCanTrigger = [(SDProxHandoffAgent *)self _systemCanTrigger];
  v32 = @"canTrigger";
  if (!_systemCanTrigger)
  {
    v32 = &stru_1008EFBD0;
  }

  if (self->_stationary)
  {
    v33 = "yes";
  }

  else
  {
    v33 = "no";
  }

  NSAppendPrintF(&v39, "System UI flags: %#{flags} %@, stationary: %s\n", systemUIFlags, &unk_1007F4CF8, v32, v33);
  v34 = v39;

  v38 = v34;
  NSAppendPrintF(&v38, "Throttle events: %d / %d\n", self->_prefThrottleEventCount, self->_prefThrottleEventMax);
  v35 = v38;
  v36 = v38;

  return v35;
}

- (id)currentCall
{
  v2 = [off_100970920(self a2)];
  currentCalls = [v2 currentCalls];
  lastObject = [currentCalls lastObject];
  if (lastObject && dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7F20(lastObject);
  }

  return lastObject;
}

- (void)_commonCallCountChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_systemMonitor;
  if (v3)
  {
    v17 = v3;
    activeCallCount = [(CUSystemMonitor *)v3 activeCallCount];
    connectedCallCount = [(CUSystemMonitor *)v17 connectedCallCount];
    v8 = connectedCallCount;
    v9 = connectedCallCount > 0 || self->_prefForceOnCall;
    userOnCall = self->_userOnCall;
    self->_userOnCall = v9;
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        connectedCallCount = _LogCategory_Initialize();
        if (!connectedCallCount)
        {
          goto LABEL_17;
        }

        v9 = self->_userOnCall;
      }

      v11 = "no";
      if (userOnCall)
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      if (v9)
      {
        v13 = "yes";
      }

      else
      {
        v13 = "no";
      }

      if (self->_prefForceOnCall)
      {
        v11 = "yes";
      }

      connectedCallCount = LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _commonCallCountChanged]", 30, "Active call count = %d (%d connected), userOnCall %s -> %s, prefForceOnCall = %s\n", activeCallCount, v8, v12, v13, v11);
    }

LABEL_17:
    v15 = v8 < 1 && activeCallCount > 0;
    if (self->_unansweredCall != v15)
    {
      if (dword_1009708B0 <= 30)
      {
        if (dword_1009708B0 != -1 || (connectedCallCount = _LogCategory_Initialize(), connectedCallCount))
        {
          connectedCallCount = sub_100031684();
        }
      }

      self->_unansweredCall = v15;
    }

    if (self->_userOnCall || !userOnCall || self->_prefForceOnCall)
    {
      if (!self->_userOnCall || userOnCall || self->_prefForceOnCall)
      {
        goto LABEL_44;
      }

      if (dword_1009708B0 <= 30)
      {
        if (dword_1009708B0 != -1 || (connectedCallCount = _LogCategory_Initialize(), connectedCallCount))
        {
          sub_1000F63D0(connectedCallCount, v6, v7);
        }
      }
    }

    else
    {
      if (dword_1009708B0 <= 30)
      {
        if (dword_1009708B0 != -1 || (connectedCallCount = _LogCategory_Initialize(), connectedCallCount))
        {
          sub_1000F63B4(connectedCallCount, v6, v7);
        }
      }

      uiDevice = self->_uiDevice;
      if (uiDevice)
      {
        [(SDProxHandoffAgent *)self _uiStopIfNeeded:uiDevice reason:4];
      }
    }

    [(SDProxHandoffAgent *)self _resetAllStates];
LABEL_44:
    [(SDProxHandoffAgent *)self _update];
    v3 = v17;
  }
}

- (void)_bleActionDiscoveryEnsureStopped
{
  selfCopy = self;
  if (self->_bleActionDiscovery)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100031668(self, a2, v2);
      }
    }

    [(SFDeviceDiscovery *)selfCopy->_bleActionDiscovery invalidate];
    bleActionDiscovery = selfCopy->_bleActionDiscovery;
    selfCopy->_bleActionDiscovery = 0;

    [(SDProxHandoffAgent *)selfCopy _bleUpdateMappingReset];
  }

  [(NSMutableDictionary *)selfCopy->_bleActionDevices removeAllObjects];
  bleActionDevices = selfCopy->_bleActionDevices;
  selfCopy->_bleActionDevices = 0;

  uiDevice = selfCopy->_uiDevice;
  selfCopy->_uiDevice = 0;

  [(SDProxHandoffAgent *)selfCopy _bleActionScanTimerInvalidate];
}

- (void)_bleUpdateMappingReset
{
  [(NSMutableDictionary *)self->_bleUnmapped removeAllObjects];
  bleUnmapped = self->_bleUnmapped;
  self->_bleUnmapped = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_mappedDevices allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        effectiveID = [v9 effectiveID];
        if (effectiveID)
        {
          if ([v9 stateIsClose])
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedImmediate:effectiveID];
          }

          if ([v9 stateIsMedium])
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceDidUnTrigger:effectiveID];
          }

          if ([v9 stateIsNearby])
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedNearby:effectiveID];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_mappedDevices removeAllObjects];
  mappedDevices = self->_mappedDevices;
  self->_mappedDevices = 0;

  [(SDProxHandoffAgent *)self _bleUpdateMappingAndNearby];
}

- (void)_bleActionScanTimerInvalidate
{
  if (self->_bleActionScanTimer)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10003568C(v3, v4, v5);
      }
    }

    self->_bleActionScanTimedOut = 0;
    bleActionScanTimer = self->_bleActionScanTimer;
    if (bleActionScanTimer)
    {
      v8 = bleActionScanTimer;
      dispatch_source_cancel(v8);
      v7 = self->_bleActionScanTimer;
      self->_bleActionScanTimer = 0;
    }
  }
}

- (void)_clinkEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clinkClient)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1000319C0(v3, v4, v5);
      }
    }

    [(RPCompanionLinkClient *)self->_clinkClient deregisterRequestID:@"com.apple.sharing.calltransfer"];
    [(RPCompanionLinkClient *)self->_clinkClient invalidate];
    clinkClient = self->_clinkClient;
    self->_clinkClient = 0;
  }
}

- (void)_motionEnsureStopped
{
  if (self->_motionMonitorStarted)
  {
    v8 = v3;
    selfCopy = self;
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000329B0(self, a2, v2);
      }
    }

    [(CMMotionActivityManager *)selfCopy->_motionMonitor stopActivityUpdates:v4];
    selfCopy->_motionMonitorStarted = 0;
  }
}

- (void)_updateCandidateIsNearby
{
  v3 = [(NSMutableDictionary *)self->_mappedDevices count]!= 0;
  if (self->_candidateNearby != v3)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035E3C();
    }

    self->_candidateNearby = v3;
  }
}

- (void)_bleActionScanTimerActivate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _bleActionScanTimerInvalidate = [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (_bleActionScanTimerInvalidate = _LogCategory_Initialize(), _bleActionScanTimerInvalidate))
    {
      sub_10003563C(_bleActionScanTimerInvalidate, v4, v5);
    }
  }

  self->_bleActionScanTimedOut = 0;
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  bleActionScanTimer = self->_bleActionScanTimer;
  self->_bleActionScanTimer = v6;

  SFDispatchTimerSet();
  v8 = self->_bleActionScanTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000EF4C4;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(self->_bleActionScanTimer);
}

- (void)_bleUpdateMappingAndNearbyCoalesced
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100035394();
  }

  allValues = [(NSMutableDictionary *)self->_bleUnmapped allValues];
  v4 = [allValues copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_bleActionDevices allValues];
  v12 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(allValues2);
        }

        v16 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:*(*(&v17 + 1) + 8 * j)];
      }

      v13 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  [(SDProxHandoffAgent *)self _updateCandidateIsNearby];
  [(SDProxHandoffAgent *)self _update];
}

+ (id)sharedAgent
{
  if (qword_100989C98 != -1)
  {
    sub_1000F6098();
  }

  v3 = qword_100989CA0;

  return v3;
}

- (SDProxHandoffAgent)init
{
  v6.receiver = self;
  v6.super_class = SDProxHandoffAgent;
  v2 = [(SDProxHandoffAgent *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC270;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC34C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000F60C8(v3, v4, v5);
    }
  }

  [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
  [(SDProxHandoffAgent *)self _bleInfoDiscoveryEnsureStopped];
  [(SDProxHandoffAgent *)self _commonEnsureStopped];
  [(SDProxHandoffAgent *)self _clinkEnsureStopped];
  [(SDProxHandoffAgent *)self _serviceEnsureStopped];
  [(NSMutableSet *)self->_proxClients removeAllObjects];
  proxClients = self->_proxClients;
  self->_proxClients = 0;
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefEnabled != v3)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F60E4();
    }

    self->_prefEnabled = v3;
  }

  CFPrefs_GetDouble();
  v5 = v4;
  prefBLEActionScanSecs = self->_prefBLEActionScanSecs;
  if (v5 != prefBLEActionScanSecs)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        prefBLEActionScanSecs = self->_prefBLEActionScanSecs;
      }

      LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref BLE scan secs: %f -> %f\n", prefBLEActionScanSecs, v5);
    }

LABEL_11:
    self->_prefBLEActionScanSecs = v5;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefForceShouldAdvertise != v7)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F613C();
    }

    self->_prefForceShouldAdvertise = v7;
    [(SDProxHandoffAgent *)self _commonShouldAdvertiseChanged];
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefForceStationary != v8)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6194();
    }

    self->_prefForceStationary = v8;
    [(SDProxHandoffAgent *)self _motionUpdate:0];
  }

  v9 = CFPrefs_GetInt64() != 0;
  if (self->_prefHighNormal != v9)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F61EC();
    }

    self->_prefHighNormal = v9;
    [(SDProxHandoffAgent *)self _bleActionDiscoveryEnsureStopped];
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefForceOnCall != v10)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6244();
    }

    self->_prefForceOnCall = v10;
    [(SDProxHandoffAgent *)self _commonCallCountChanged];
  }

  v11 = CFPrefs_GetInt64() != 0;
  prefIgnoreMediumThrottle = self->_prefIgnoreMediumThrottle;
  if (prefIgnoreMediumThrottle != v11)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1)
      {
LABEL_35:
        v13 = "no";
        if (prefIgnoreMediumThrottle)
        {
          v14 = "yes";
        }

        else
        {
          v14 = "no";
        }

        if (v11)
        {
          v13 = "yes";
        }

        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref ignore medium throttle: %s -> %s\n", v14, v13);
        goto LABEL_42;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefIgnoreMediumThrottle) = self->_prefIgnoreMediumThrottle;
        goto LABEL_35;
      }
    }

LABEL_42:
    self->_prefIgnoreMediumThrottle = v11;
  }

  v15 = CFPrefs_GetInt64() != 0;
  if (self->_prefMediumBubbleEnabled != v15)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F629C();
    }

    self->_prefMediumBubbleEnabled = v15;
  }

  Int64 = CFPrefs_GetInt64();
  prefMediumBubbleLastTicks = self->_prefMediumBubbleLastTicks;
  if (Int64 != prefMediumBubbleLastTicks)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        prefMediumBubbleLastTicks = self->_prefMediumBubbleLastTicks;
      }

      LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref medium bubble last ticks: %d -> %d\n", prefMediumBubbleLastTicks, Int64);
    }

LABEL_53:
    self->_prefMediumBubbleLastTicks = Int64;
  }

  CFPrefs_GetDouble();
  v19 = v18;
  prefRetriggerSecs = self->_prefRetriggerSecs;
  if (v19 == prefRetriggerSecs)
  {
    goto LABEL_60;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_59;
      }

      prefRetriggerSecs = self->_prefRetriggerSecs;
    }

    LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref retrigger secs: %f -> %f", prefRetriggerSecs, v19);
  }

LABEL_59:
  self->_prefRetriggerSecs = v19;
LABEL_60:
  CFPrefs_GetDouble();
  v22 = v21;
  prefTransferSecs = self->_prefTransferSecs;
  if (v22 == prefTransferSecs)
  {
    goto LABEL_66;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_65;
      }

      prefTransferSecs = self->_prefTransferSecs;
    }

    LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref transfer secs: %f -> %f", prefTransferSecs, v22);
  }

LABEL_65:
  self->_prefTransferSecs = v22;
LABEL_66:
  v24 = CFPrefs_GetInt64();
  prefThrottleEventCount = self->_prefThrottleEventCount;
  if (v24 == prefThrottleEventCount)
  {
    goto LABEL_72;
  }

  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_71;
      }

      prefThrottleEventCount = self->_prefThrottleEventCount;
    }

    LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref throttle event count: %d -> %d\n", prefThrottleEventCount, v24);
  }

LABEL_71:
  self->_prefThrottleEventCount = v24;
LABEL_72:
  v26 = CFPrefs_GetInt64();
  prefThrottleEventMax = self->_prefThrottleEventMax;
  if (v26 != prefThrottleEventMax)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_77;
        }

        prefThrottleEventMax = self->_prefThrottleEventMax;
      }

      LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent prefsChanged]", 30, "Pref throttle event max: %d -> %d\n", prefThrottleEventMax, v26);
    }

LABEL_77:
    self->_prefThrottleEventMax = v26;
  }

  [(SDProxHandoffAgent *)self _update];
}

- (void)setPreventNotifications:(BOOL)notifications
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ECB94;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  notificationsCopy = notifications;
  dispatch_async(dispatchQueue, v4);
}

- (void)_commonEnsureStopped
{
  selfCopy = self;
  if (self->_systemMonitor)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000F6398(self, a2, v2);
      }
    }

    [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate];
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = 0;
  }

  bleMapCoalescer = selfCopy->_bleMapCoalescer;
  if (bleMapCoalescer)
  {
    [(CUCoalescer *)bleMapCoalescer invalidate];
    v6 = selfCopy->_bleMapCoalescer;
    selfCopy->_bleMapCoalescer = 0;
  }

  if (selfCopy->_statusMonitor)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:selfCopy name:@"com.apple.sharingd.SystemUIChanged" object:0];

    statusMonitor = selfCopy->_statusMonitor;
    selfCopy->_statusMonitor = 0;
  }

  motionMonitor = selfCopy->_motionMonitor;
  if (motionMonitor)
  {
    selfCopy->_motionMonitor = 0;
  }

  notificationProxy = selfCopy->_notificationProxy;
  if (notificationProxy)
  {
    [(SFNotificationProxy *)notificationProxy setDismissedHandler:0];
    [(SFNotificationProxy *)selfCopy->_notificationProxy setTappedHandler:0];
    v11 = selfCopy->_notificationProxy;
    selfCopy->_notificationProxy = 0;
  }

  [(SDProxHandoffAgent *)selfCopy _hapticsEnsureStopped];
}

- (void)_commonShouldAdvertiseChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_proxClients;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v14 + 1) + 8 * i) shouldAdvertise];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  prefForceShouldAdvertise = self->_prefForceShouldAdvertise;
  v10 = prefForceShouldAdvertise | v6 & 1;
  if (v10 != self->_clientShouldAdvertise)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1)
      {
LABEL_13:
        if (v10)
        {
          v11 = "no";
        }

        else
        {
          v11 = "yes";
        }

        if (v10)
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        if (prefForceShouldAdvertise)
        {
          v13 = "yes";
        }

        else
        {
          v13 = "no";
        }

        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _commonShouldAdvertiseChanged]", 30, "Client should advertise changed: %s -> %s, prefForceShouldAdvertise = %s\n", v11, v12, v13);
        goto LABEL_24;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefForceShouldAdvertise) = self->_prefForceShouldAdvertise;
        goto LABEL_13;
      }
    }

LABEL_24:
    self->_clientShouldAdvertise = v10;
  }

  [(SDProxHandoffAgent *)self _update];
}

- (void)_commonScreenStateChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  screenOn = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if (dword_1009708B0 > 30 || dword_1009708B0 == -1 && !_LogCategory_Initialize())
  {
    if (screenOn)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1000F63EC(screenOn, &self->_systemMonitor);
  if ((screenOn & 1) == 0)
  {
LABEL_5:
    [(SDProxHandoffAgent *)self _bleUpdateMappingReset];
    [(SFNotificationProxy *)self->_notificationProxy requestRemoveAll];
    v4 = +[SDNearbyAgent sharedNearbyAgent];
    [v4 bleProximityEstimatorsResetDeviceClose];
  }

LABEL_6:

  [(SDProxHandoffAgent *)self _update];
}

- (void)_scheduleRunAfter:(double)after
{
  v4 = dispatch_time(0, (after * 1000000000.0));
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED0BC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_after(v4, dispatchQueue, block);
}

- (BOOL)_runStateVerify:(int)verify device:(id)device
{
  deviceCopy = device;
  state = [deviceCopy state];
  if (state != verify && dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F646C(deviceCopy, verify);
  }

  return state == verify;
}

- (void)_runNotificationPending
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v14 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:11 device:v3];
    v3 = v14;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v14 nextState];
      v3 = v14;
      if (nextState == 13)
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v6 = _LogCategory_Initialize(), v3 = v14, v6))
          {
            sub_1000F64F4(v3);
            v3 = v14;
          }
        }

        if (self->_userOnCall)
        {
          [(SDProxHandoffAgent *)self _combinedDevicePrepareForCallTransferTrigger:v3];
        }

        else
        {
          [(SFCombinedDevice *)v3 setNotificationType:2];
        }

        effectiveID = [(SFCombinedDevice *)v14 effectiveID];
        v10 = effectiveID;
        if (!effectiveID)
        {
          if (dword_1009708B0 <= 90)
          {
            if (dword_1009708B0 != -1 || (effectiveID = _LogCategory_Initialize(), effectiveID))
            {
              sub_1000F6578(effectiveID, v8, v9);
            }
          }

          goto LABEL_28;
        }

        notificationType = [(SFCombinedDevice *)v14 notificationType];
        if (notificationType == 2)
        {
          if ([(SFCombinedDevice *)v14 canTransition:12])
          {
            [(SFCombinedDevice *)v14 setPendingContentTicks:mach_absolute_time()];
            [(SFCombinedDevice *)v14 setState:12];
            notificationInfo = [(SFCombinedDevice *)v14 notificationInfo];
            if (notificationInfo)
            {
              v13 = 13;
            }

            else
            {
              v13 = 0;
            }

            [(SFCombinedDevice *)v14 setNextState:v13];

            [(SDProxHandoffAgent *)self _proximityClientDeviceWillTrigger:v10];
            goto LABEL_24;
          }
        }

        else
        {
          if (notificationType != 3)
          {
            if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F6534(v14);
            }

            goto LABEL_28;
          }

          if ([(SFCombinedDevice *)v14 canTransition:13])
          {
            [(SFCombinedDevice *)v14 setPendingContentTicks:mach_absolute_time()];
            [(SFCombinedDevice *)v14 setState:13];
            [(SFCombinedDevice *)v14 setNextState:14];
LABEL_24:
            [(SDProxHandoffAgent *)self _run];
          }
        }

LABEL_28:

        v3 = v14;
      }
    }
  }
}

- (void)_runNotificationPendingContent
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v13 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:12 device:v3];
    v3 = v13;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v13 nextState];
      v3 = v13;
      if (nextState == 13)
      {
        notificationInfo = [(SFCombinedDevice *)v13 notificationInfo];
        v9 = notificationInfo;
        if (notificationInfo)
        {
          mach_absolute_time();
          [(SFCombinedDevice *)v13 pendingContentTicks];
          UpTicksToSecondsF();
          v11 = v10;
          [(SFCombinedDevice *)v13 setPendingContentDurationSecs:?];
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _runNotificationPendingContent]", 30, "Run notification pending content: %@, waited: %f\n", v13, v11);
          }

          if ([(SFCombinedDevice *)v13 canTransition:13])
          {
            [(SFCombinedDevice *)v13 setState:13];
            if ([(SDProxHandoffAgent *)self _shouldMediumPromptWithInfo:v9])
            {
              v12 = 14;
            }

            else
            {
              v12 = 0;
            }

            [(SFCombinedDevice *)v13 setNextState:v12];
            [(SDProxHandoffAgent *)self _run];
          }
        }

        else if (dword_1009708B0 <= 90)
        {
          if (dword_1009708B0 != -1 || (notificationInfo = _LogCategory_Initialize(), notificationInfo))
          {
            sub_1000F6594(notificationInfo, v7, v8);
          }
        }

        v3 = v13;
      }
    }
  }
}

- (void)_runNotificationReady
{
  v3 = self->_uiDevice;
  if (v3 && [(SDProxHandoffAgent *)self _runStateVerify:13 device:v3]&& ([(SFCombinedDevice *)v3 nextState]== 14 || [(SFCombinedDevice *)v3 nextState]== 16) && [(SFCombinedDevice *)v3 canTransition:14])
  {
    _systemCanTrigger = [(SDProxHandoffAgent *)self _systemCanTrigger];
    if (_systemCanTrigger)
    {
      effectiveID = [(SFCombinedDevice *)v3 effectiveID];
      v10 = effectiveID;
      if (!effectiveID)
      {
        if (dword_1009708B0 <= 90)
        {
          if (dword_1009708B0 != -1 || (effectiveID = _LogCategory_Initialize(), effectiveID))
          {
            sub_1000F66D0(effectiveID, v8, v9);
          }
        }

        goto LABEL_59;
      }

      notificationInfo = [(SFCombinedDevice *)v3 notificationInfo];
      v14 = notificationInfo;
      if (!notificationInfo)
      {
        if (dword_1009708B0 <= 90)
        {
          if (dword_1009708B0 != -1 || (notificationInfo = _LogCategory_Initialize(), notificationInfo))
          {
            sub_1000F66B4(notificationInfo, v12, v13);
          }
        }

        goto LABEL_58;
      }

      if (self->_stationary)
      {
        if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6694();
        }

        goto LABEL_58;
      }

      nextState = [(SFCombinedDevice *)v3 nextState];
      if (nextState == 14)
      {
        mediumBubbleVersion = [v14 mediumBubbleVersion];
        bleDevice = [(SFCombinedDevice *)v3 bleDevice];
        v19BleDevice = [bleDevice bleDevice];
        if ([v19BleDevice insideSmallBubble])
        {
          v18 = 16;
        }

        else
        {
          v18 = 0;
        }

        if (mediumBubbleVersion)
        {
          v17 = 1;
          goto LABEL_34;
        }
      }

      else if (nextState == 16)
      {
        mediumBubbleVersion = v14;
        v17 = 0;
        v18 = 16;
LABEL_34:
        mach_absolute_time();
        [(SFCombinedDevice *)v3 pendingContentTicks];
        UpTicksToSecondsF();
        if (v17 && (v22 = 0.25 - v21, 0.25 - v21 > 0.0))
        {
          if (![(SFCombinedDevice *)v3 medBubbleDelayed])
          {
            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F660C(v22);
            }

            [(SFCombinedDevice *)v3 setMedBubbleDelayed:1];
            [(SDProxHandoffAgent *)self _scheduleRunAfter:v22];
          }
        }

        else
        {
          [(SFCombinedDevice *)v3 setMedBubbleDelayed:0];
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F65CC(v3);
          }

          [(SFCombinedDevice *)v3 setNotificationTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v3 setState:14];
          [(SFCombinedDevice *)v3 setNextState:v18];
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            v23 = "no";
            if (v17)
            {
              v23 = "yes";
            }

            LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _runNotificationReady]", 30, "UI Start: %@, medium version: %s\n", v10, v23);
          }

          [(SFNotificationProxy *)self->_notificationProxy requestPostOrUpdate:v10 info:mediumBubbleVersion mediumVariant:v17];
          if (v17)
          {
            [(SDProxHandoffAgent *)self _throttleMediumSetTicks:mach_absolute_time()];
          }

          v26[0] = @"notificationType";
          v24 = [NSNumber numberWithUnsignedInt:[(SFCombinedDevice *)v3 notificationType]];
          v26[1] = @"uiID";
          v27[0] = v24;
          v27[1] = v10;
          v25 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
          SFMetricsLog();

          [(SDProxHandoffAgent *)self _run];
        }

LABEL_57:

LABEL_58:
LABEL_59:

        goto LABEL_60;
      }

      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6654(v14);
      }

      mediumBubbleVersion = 0;
      goto LABEL_57;
    }

    if (dword_1009708B0 <= 90)
    {
      if (dword_1009708B0 != -1 || (_systemCanTrigger = _LogCategory_Initialize(), _systemCanTrigger))
      {
        sub_1000F65B0(_systemCanTrigger, v5, v6);
      }
    }
  }

LABEL_60:
}

- (void)_runNotificationPresented
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v15 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:14 device:v3];
    v3 = v15;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v15 nextState];
      v3 = v15;
      if (nextState == 16 || (v6 = [(SFCombinedDevice *)v15 nextState], v3 = v15, v6 == 18) || (v7 = [(SFCombinedDevice *)v15 nextState], v3 = v15, v7 == 15))
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v8 = _LogCategory_Initialize(), v3 = v15, v8))
          {
            sub_1000F66EC(v3);
            v3 = v15;
          }
        }

        nextState2 = [(SFCombinedDevice *)v3 nextState];
        v10 = nextState2;
        if (nextState2 == 18)
        {
          v14 = [(SFCombinedDevice *)v15 canTransition:18];
          v3 = v15;
          if (!v14)
          {
            goto LABEL_20;
          }

          [(SFCombinedDevice *)v15 setDismissReason:3];
          [(SFCombinedDevice *)v15 setTransferPendingStartTicks:mach_absolute_time()];
          goto LABEL_18;
        }

        if (nextState2 == 16)
        {
          v12 = [(SFCombinedDevice *)v15 canTransition:16];
          v3 = v15;
          if (!v12)
          {
            goto LABEL_20;
          }

          [(SFCombinedDevice *)v15 setTransferPendingStartTicks:mach_absolute_time()];
          v13 = 17;
          goto LABEL_19;
        }

        v3 = v15;
        if (nextState2 == 15)
        {
          v11 = [(SFCombinedDevice *)v15 canTransition:15];
          v3 = v15;
          if (v11)
          {
            [(SFCombinedDevice *)v15 setNotificationInfo:0];
            [(SFCombinedDevice *)v15 setNotificationType:0];
            [(SFCombinedDevice *)v15 setTransferDoneTicks:mach_absolute_time()];
LABEL_18:
            v13 = 0;
LABEL_19:
            [(SFCombinedDevice *)v15 setState:v10];
            [(SFCombinedDevice *)v15 setNextState:v13];
            [(SDProxHandoffAgent *)self _run];
            v3 = v15;
          }
        }
      }
    }
  }

LABEL_20:
}

- (void)_runNotificationDismissed
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v14 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:15 device:v3];
    v3 = v14;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v14 nextState];
      v3 = v14;
      if (nextState == 10 || (v6 = [(SFCombinedDevice *)v14 nextState], v3 = v14, v6 == 16))
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v7 = _LogCategory_Initialize(), v3 = v14, v7))
          {
            sub_1000F672C(v3);
            v3 = v14;
          }
        }

        nextState2 = [(SFCombinedDevice *)v3 nextState];
        if (nextState2 == 16)
        {
          v11 = [(SFCombinedDevice *)v14 canTransition:16];
          v3 = v14;
          if (!v11)
          {
            goto LABEL_17;
          }

          [(SFCombinedDevice *)v14 setTransferPendingStartTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v14 setState:16];
          notificationInfo = [(SFCombinedDevice *)v14 notificationInfo];
          interactionBehavior = [notificationInfo interactionBehavior];

          if (interactionBehavior == 1)
          {
            v10 = 17;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_16;
        }

        v3 = v14;
        if (nextState2 == 10)
        {
          v9 = [(SFCombinedDevice *)v14 canTransition:10];
          v3 = v14;
          if (v9)
          {
            [(SFCombinedDevice *)v14 resetTicks];
            [(SFCombinedDevice *)v14 setState:10];
            v10 = 0;
LABEL_16:
            [(SFCombinedDevice *)v14 setNextState:v10];
            [(SDProxHandoffAgent *)self _run];
            v3 = v14;
          }
        }
      }
    }
  }

LABEL_17:
}

- (void)_runTransferInProgress
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v11 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:18 device:v3];
    v3 = v11;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v11 nextState];
      v3 = v11;
      if (nextState == 19 || (v6 = [(SFCombinedDevice *)v11 nextState], v3 = v11, v6 == 20))
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v7 = _LogCategory_Initialize(), v3 = v11, v7))
          {
            sub_1000F676C(v3);
            v3 = v11;
          }
        }

        nextState2 = [(SFCombinedDevice *)v3 nextState];
        if (nextState2 == 20)
        {
          v10 = [(SFCombinedDevice *)v11 canTransition:20];
          v3 = v11;
          if (!v10)
          {
            goto LABEL_15;
          }

          [(SFCombinedDevice *)v11 setState:20];
          [(SFCombinedDevice *)v11 setTransferDoneTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v11 setNextState:0];
          [(SDProxHandoffAgent *)self _uiStopIfNeeded:v11 reason:[(SFCombinedDevice *)v11 dismissReason]];
          [(SFCombinedDevice *)v11 setDismissReason:0];
          goto LABEL_14;
        }

        v3 = v11;
        if (nextState2 == 19)
        {
          v9 = [(SFCombinedDevice *)v11 canTransition:19];
          v3 = v11;
          if (v9)
          {
            [(SFCombinedDevice *)v11 setState:19];
            [(SFCombinedDevice *)v11 setNextState:20];
LABEL_14:
            [(SDProxHandoffAgent *)self _run];
            v3 = v11;
          }
        }
      }
    }
  }

LABEL_15:
}

- (void)_runTransferPending
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v20 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:16 device:v3];
    v3 = v20;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v20 nextState];
      v3 = v20;
      if (nextState == 18 || (v6 = [(SFCombinedDevice *)v20 nextState], v3 = v20, v6 == 17))
      {
        if ([(SFCombinedDevice *)v3 transferPendingStartTicks]== -1)
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F67AC(v20);
          }

          [(SFCombinedDevice *)v20 setTransferPendingStartTicks:mach_absolute_time()];
        }

        mach_absolute_time();
        [(SFCombinedDevice *)v20 transferPendingStartTicks];
        UpTicksToSecondsF();
        v8 = v7;
        v3 = v20;
        if (v7 >= self->_prefTransferSecs)
        {
          if (dword_1009708B0 <= 30)
          {
            if (dword_1009708B0 != -1 || (v9 = _LogCategory_Initialize(), v3 = v20, v9))
            {
              sub_1000F67EC(v8);
              v3 = v20;
            }
          }

          [(SFCombinedDevice *)v3 setTransferPendingDurationSecs:v8];
          nextState2 = [(SFCombinedDevice *)v20 nextState];
          if (nextState2 == 17)
          {
            v12 = [(SFCombinedDevice *)v20 canTransition:17];
            v3 = v20;
            if (!v12)
            {
              goto LABEL_29;
            }

            effectiveID = [(SFCombinedDevice *)v20 effectiveID];
            if (effectiveID)
            {
              v14 = effectiveID;
              if (self->_userOnCall)
              {
                notificationInfo = [(SFCombinedDevice *)v20 notificationInfo];
                notificationType = [notificationInfo notificationType];

                if (notificationType == 2)
                {
                  [(SDProxHandoffAgent *)self _combinedDevicePrepareForCallTransferTrigger:v20];
                }
              }

              notificationInfo2 = [(SFCombinedDevice *)v20 notificationInfo];
              if (notificationInfo2)
              {
                v18 = notificationInfo2;
                if ([(SFCombinedDevice *)v20 notificationTicks]== -1)
                {
                  [(SFCombinedDevice *)v20 setNotificationTicks:mach_absolute_time()];
                }

                [(SFNotificationProxy *)self->_notificationProxy requestPostOrUpdate:v14 info:v18 mediumVariant:0];
                [(SDProxHandoffAgent *)self _hapticsFireNotificationSuccess];

                [(SFCombinedDevice *)v20 setTransferPendingStartTicks:-1];
                [(SFCombinedDevice *)v20 setState:17];
                [(SFCombinedDevice *)v20 setNextState:18];

                [(SDProxHandoffAgent *)self _run];
                [(SDProxHandoffAgent *)self _throttleEventDidOccur];
                goto LABEL_28;
              }

              [(SFCombinedDevice *)v20 setTransferPendingStartTicks:-1];
              [(SFCombinedDevice *)v20 setState:17];
              [(SFCombinedDevice *)v20 setNextState:18];

              goto LABEL_18;
            }

            v3 = v20;
            if (dword_1009708B0 <= 90)
            {
              if (dword_1009708B0 != -1 || (v19 = _LogCategory_Initialize(), v3 = v20, v19))
              {
                sub_1000F682C(v3);
                goto LABEL_28;
              }
            }
          }

          else
          {
            v3 = v20;
            if (nextState2 == 18)
            {
              v11 = [(SFCombinedDevice *)v20 canTransition:18];
              v3 = v20;
              if (v11)
              {
                [(SFCombinedDevice *)v20 setTransferPendingStartTicks:mach_absolute_time()];
                [(SFCombinedDevice *)v20 setState:18];
                [(SFCombinedDevice *)v20 setDismissReason:3];
                [(SFCombinedDevice *)v20 setNextState:0];
LABEL_18:
                [(SDProxHandoffAgent *)self _run];
LABEL_28:
                v3 = v20;
              }
            }
          }
        }
      }
    }
  }

LABEL_29:
}

- (void)_runTransferReady
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v8 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:17 device:v3];
    v3 = v8;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v8 nextState];
      v3 = v8;
      if (nextState == 18)
      {
        effectiveID = [(SFCombinedDevice *)v8 effectiveID];
        if (!effectiveID)
        {
          if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F68F0(v8);
          }

          goto LABEL_21;
        }

        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F686C(v8);
        }

        notificationType = [(SFCombinedDevice *)v8 notificationType];
        if (notificationType == 2)
        {
          [(SDProxHandoffAgent *)self _proximityClientDeviceEnteredImmediate:effectiveID];
        }

        else
        {
          if (notificationType != 3)
          {
            if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F68AC(v8);
            }

            goto LABEL_21;
          }

          [(SDProxHandoffAgent *)self _runCallHandoffStart:v8];
        }

        if ([(SFCombinedDevice *)v8 canTransition:18])
        {
          [(SFCombinedDevice *)v8 setState:18];
          [(SFCombinedDevice *)v8 setNextState:0];
          [(SDProxHandoffAgent *)self _run];
        }

LABEL_21:

        v3 = v8;
      }
    }
  }
}

- (void)_runTransferPendingDismiss
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v9 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:19 device:v3];
    v3 = v9;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v9 nextState];
      v3 = v9;
      if (nextState == 20)
      {
        mach_absolute_time();
        [(SFCombinedDevice *)v9 notificationTicks];
        UpTicksToSecondsF();
        v7 = v6;
        if (1.5 - v6 > 0.0)
        {
          [(SDProxHandoffAgent *)self _scheduleRunAfter:?];
LABEL_12:
          v3 = v9;
          goto LABEL_13;
        }

        [(SFCombinedDevice *)v9 setNotificationDurationSecs:v6];
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _runTransferPendingDismiss]", 30, "Run transfer pending dismiss %f %@\n", *&v7, v9);
        }

        v8 = [(SFCombinedDevice *)v9 canTransition:20];
        v3 = v9;
        if (v8)
        {
          [(SFCombinedDevice *)v9 setNotificationTicks:-1];
          [(SFCombinedDevice *)v9 setTransferDoneTicks:mach_absolute_time()];
          [(SFCombinedDevice *)v9 setState:20];
          [(SFCombinedDevice *)v9 setNextState:0];
          [(SDProxHandoffAgent *)self _uiStopIfNeeded:v9 reason:1];
          [(SDProxHandoffAgent *)self _run];
          goto LABEL_12;
        }
      }
    }
  }

LABEL_13:
}

- (void)_runTransferDone
{
  v3 = self->_uiDevice;
  if (v3)
  {
    v9 = v3;
    v4 = [(SDProxHandoffAgent *)self _runStateVerify:20 device:v3];
    v3 = v9;
    if (v4)
    {
      nextState = [(SFCombinedDevice *)v9 nextState];
      v3 = v9;
      if (nextState == 15)
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (nextState = _LogCategory_Initialize(), v3 = v9, nextState))
          {
            sub_1000F6930(nextState, v3, v6);
            v3 = v9;
          }
        }

        [(SDProxHandoffAgent *)self _uiStopIfNeeded:v9 reason:[(SFCombinedDevice *)v3 dismissReason]];
        if ([(SFCombinedDevice *)v9 notificationType]== 2)
        {
          effectiveID = [(SFCombinedDevice *)v9 effectiveID];
          if (effectiveID)
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedImmediate:effectiveID];
          }
        }

        v8 = [(SFCombinedDevice *)v9 canTransition:15];
        v3 = v9;
        if (v8)
        {
          [(SFCombinedDevice *)v9 setState:15];
          [(SFCombinedDevice *)v9 setNextState:0];
          [(SDProxHandoffAgent *)self _run];
          v3 = v9;
        }
      }
    }
  }
}

- (void)_runCallHandoffStart:(id)start
{
  startCopy = start;
  if (self->_clinkClient)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    clinkDevice = [startCopy clinkDevice];
    v8 = clinkDevice;
    if (clinkDevice)
    {
      if (dword_1009708B0 <= 30)
      {
        if (dword_1009708B0 != -1 || (clinkDevice = _LogCategory_Initialize(), clinkDevice))
        {
          sub_1000F694C(clinkDevice, v6, v7);
        }
      }

      route = [startCopy route];
      v10 = route;
      if (route && ([route isCurrentlyPicked] & 1) != 0)
      {
        [(SDProxHandoffAgent *)self _runCallHandoffStartDelayTimer];
      }

      else
      {

        clinkClient = self->_clinkClient;
        effectiveIdentifier = [v8 effectiveIdentifier];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1000EE7C0;
        v13[3] = &unk_1008D0118;
        v13[4] = self;
        [(RPCompanionLinkClient *)clinkClient sendRequestID:@"com.apple.sharing.calltransfer" request:&off_10090E8A8 destinationID:effectiveIdentifier options:0 responseHandler:v13];
      }
    }

    else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6968(startCopy);
    }
  }
}

- (void)_runCallHandoffHandleResponse:(id)response error:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = errorCopy;
  if (errorCopy)
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F69A8(errorCopy);
    }
  }

  else
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_1000F69E8(v7, v5, v6);
      }
    }

    [(SDProxHandoffAgent *)self _runCallHandoffStartDelayTimer];
  }
}

- (void)_runCallHandoffStartDelayTimer
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    v4 = delayTimer;
    dispatch_source_cancel(v4);
    v5 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_delayTimer;
  self->_delayTimer = v6;

  v8 = self->_delayTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000EE96C;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_resume(self->_delayTimer);
}

- (void)_runCallHandoffHandleDelayTimerFired
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    v4 = delayTimer;
    dispatch_source_cancel(v4);
    v5 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v6 = self->_uiDevice;
  if (v6)
  {
    v15 = v6;
    effectiveID = [(SFCombinedDevice *)v6 effectiveID];
    if (effectiveID)
    {
      route = [(SFCombinedDevice *)v15 route];
      v11 = route;
      if (route)
      {
        v12 = [off_100970920(route v9)];
        routeController = [v12 routeController];
        if ([v11 isCurrentlyPicked])
        {
          receiverRoute = [routeController receiverRoute];
          if (receiverRoute)
          {
            if (dword_1009708B0 < 31 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F6A60(receiverRoute);
            }

            [routeController pickRoute:receiverRoute];
          }
        }

        else
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F6A04(v11);
          }

          [routeController pickRoute:v11];
        }

        [(SDProxHandoffAgent *)self _uiDismissWhenReady:v15 reason:3];
        [(SDProxHandoffAgent *)self _run];
      }

      else if (dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (route = _LogCategory_Initialize(), route))
        {
          sub_1000F6AA0(route, v9, v10);
        }
      }
    }

    v6 = v15;
  }
}

- (void)_bleActionDeviceChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [changedCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_bleActionDevices objectForKeyedSubscript:identifier];

    if (v5)
    {
      goto LABEL_6;
    }

    deviceFlags = [changedCopy deviceFlags];
    if ((deviceFlags & 0x200) != 0 && (deviceFlags & 0x48) != 0)
    {
      [(SDProxHandoffAgent *)self _bleActionDeviceFoundCandidate:changedCopy];
LABEL_6:
      [(NSMutableDictionary *)self->_bleActionDevices setObject:changedCopy forKeyedSubscript:identifier];
      v7 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:identifier];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:changedCopy];
        if (!v8)
        {
          goto LABEL_68;
        }
      }

      [v8 setBleDevice:changedCopy];
      if (![(SDProxHandoffAgent *)self _combinedDeviceIsSuppressed:v8])
      {
        [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:changedCopy forType:1];
        bleDevice = [changedCopy bleDevice];
        insideSmallBubble = [bleDevice insideSmallBubble];

        v11 = [(SDProximityController *)self->_proximityController checkDeviceRegion:changedCopy];
        if (v11 == 1 && dword_1009708B0 <= 50 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6B30();
        }

        v12 = v11 == 1;
        if (_os_feature_enabled_impl())
        {
          v13 = v12;
        }

        else
        {
          v13 = insideSmallBubble;
        }

        bleDevice2 = [changedCopy bleDevice];
        insideMediumBubble = [bleDevice2 insideMediumBubble];

        bleDevice3 = [changedCopy bleDevice];
        rssiEstimate = [bleDevice3 rssiEstimate];

        name = [v8 name];
        if (v13 == 1)
        {
          if ([v8 state] == 15)
          {
            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@ Retrigger after dismiss (%d)\n", name, rssiEstimate);
            }

LABEL_65:
            [v8 setState:11];
            v24 = v8;
            v25 = 13;
LABEL_66:
            [v24 setNextState:v25];
            uiDevice = self->_uiDevice;
            self->_uiDevice = 0;

            goto LABEL_67;
          }

          if ([v8 canTransition:16])
          {
            if (self->_stationary || ![(SDProxHandoffAgent *)self _systemCanTrigger])
            {
              if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000F6B50(&self->_stationary, self, name, rssiEstimate);
              }

              goto LABEL_67;
            }

            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@: Start transfer countdown (%d)\n", name, rssiEstimate);
            }

            [v8 setTransferPendingStartTicks:mach_absolute_time()];
            [v8 setState:16];
            v24 = v8;
            v25 = 17;
            goto LABEL_66;
          }

          if (insideMediumBubble)
          {
LABEL_37:
            if (![v8 canTransition:11])
            {
LABEL_67:
              [(SDProxHandoffAgent *)self _proximityClientDeviceUpdated:v8];
              [(NSMutableDictionary *)self->_mappedDevices setObject:v8 forKeyedSubscript:identifier];
              [(SDProxHandoffAgent *)self _run];

              goto LABEL_68;
            }

            if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@: Trigger (%d)", name, rssiEstimate);
            }

            goto LABEL_65;
          }
        }

        else if (insideMediumBubble)
        {
          if ([v8 state] == 20 && objc_msgSend(v8, "canTransition:", 15))
          {
            mach_absolute_time();
            [v8 transferDoneTicks];
            UpTicksToSecondsF();
            v20 = v19;
            if (v19 <= self->_prefRetriggerSecs || [v8 transferDoneTicks] == -1)
            {
              if ([v8 transferDoneTicks] != -1 && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@: Not yet eligible for retrigger after %f (%d)\n", name, *&v20, rssiEstimate);
              }
            }

            else
            {
              if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@: Make eligible for retrigger after %f (%d)\n", name, *&v20, rssiEstimate);
              }

              [v8 setNextState:15];
              [v8 setTransferDoneDurationSecs:v20];
              [v8 setTransferDoneTicks:-1];
            }

            goto LABEL_67;
          }

          goto LABEL_37;
        }

        if ([v8 state] == 12)
        {
          mach_absolute_time();
          [v8 pendingContentTicks];
          UpTicksToSecondsF();
          if (dword_1009708B0 <= 30)
          {
            v22 = v21;
            if (dword_1009708B0 != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@: Cancel pending content (%d, wait: %f)\n", name, rssiEstimate, v22);
            }
          }

          [v8 setState:10];
          [v8 setPendingContentTicks:-1];
          [v8 setNextState:0];
          effectiveID = [v8 effectiveID];
          if (effectiveID)
          {
            [(SDProxHandoffAgent *)self _proximityClientDeviceExitedImmediate:effectiveID];
            [(SDProxHandoffAgent *)self _proximityClientDeviceDidUnTrigger:effectiveID];
          }
        }

        else if ([v8 canTransition:10])
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleActionDeviceChanged:]", 30, "%@ exited medium bubble (%d)\n", name, rssiEstimate);
          }

          [v8 setState:10];
          [v8 setNextState:0];
        }

        goto LABEL_67;
      }

LABEL_68:
    }
  }
}

- (void)_bleActionDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleActionDiscovery)
  {
    identifier = [foundCopy identifier];
    if (identifier && ([foundCopy deviceFlags] & 0x200) != 0 && (objc_msgSend(foundCopy, "deviceFlags") & 0x48) != 0)
    {
      [(SDProxHandoffAgent *)self _bleActionDeviceFoundCandidate:foundCopy];
      [(SDProxHandoffAgent *)self _bleActionDeviceChanged:foundCopy];
      [(SDProxHandoffAgent *)self _update];
    }
  }
}

- (void)_bleActionDeviceFoundCandidate:(id)candidate
{
  candidateCopy = candidate;
  identifier = [candidateCopy identifier];
  if (identifier)
  {
    if (([candidateCopy deviceFlags] & 0x200) != 0)
    {
      if (([candidateCopy deviceFlags] & 0x48) != 0)
      {
        if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6BDC(candidateCopy);
        }

        bleActionDevices = self->_bleActionDevices;
        if (!bleActionDevices)
        {
          v6 = objc_alloc_init(NSMutableDictionary);
          v7 = self->_bleActionDevices;
          self->_bleActionDevices = v6;

          bleActionDevices = self->_bleActionDevices;
        }

        [(NSMutableDictionary *)bleActionDevices setObject:candidateCopy forKeyedSubscript:identifier];
        [(SDProxHandoffAgent *)self _bleDeviceNearbyEnter:candidateCopy];
      }
    }

    else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6C1C(candidateCopy);
    }
  }
}

- (void)_bleActionDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_bleActionDevices objectForKeyedSubscript:identifier];

    if (v5)
    {
      if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6C5C(lostCopy);
      }

      [(SDProxHandoffAgent *)self _bleDeviceNearbyExit:lostCopy];
      [(NSMutableDictionary *)self->_bleActionDevices removeObjectForKey:identifier];
      [(SDProxHandoffAgent *)self _update];
    }
  }
}

- (void)_bleActionScanTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _bleActionScanTimerInvalidate = [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (_bleActionScanTimerInvalidate = _LogCategory_Initialize(), _bleActionScanTimerInvalidate))
    {
      sub_1000F6C9C(_bleActionScanTimerInvalidate, v4, v5);
    }
  }

  self->_bleActionScanTimedOut = 1;

  [(SDProxHandoffAgent *)self _update];
}

- (void)_bleInfoDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleInfoDiscovery)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1000F6CB8(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(SFDeviceDiscovery);
    bleInfoDiscovery = self->_bleInfoDiscovery;
    self->_bleInfoDiscovery = v6;

    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setChangeFlags:9];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDiscoveryFlags:1];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setFastScanMode:1];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setPurpose:@"HandoffInfo"];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setRssiThreshold:-37];
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setScanRate:20];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EF760;
    v12[3] = &unk_1008CE7A0;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000EF76C;
    v11[3] = &unk_1008CE7A0;
    v11[4] = self;
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EF778;
    v10[3] = &unk_1008CE7C8;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_bleInfoDiscovery setDeviceChangedHandler:v10];
    v8 = self->_bleInfoDiscovery;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EF784;
    v9[3] = &unk_1008CDF90;
    v9[4] = self;
    [(SFDeviceDiscovery *)v8 activateWithCompletion:v9];
  }
}

- (void)_bleInfoDeviceChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = changedCopy;
  if (self->_bleInfoDiscovery)
  {
    identifier = [changedCopy identifier];
    if (identifier && ([changedCopy deviceFlags] & 0x48) != 0)
    {
      if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6D4C(changedCopy);
      }

      v6 = [(NSMutableDictionary *)self->_bleInfoDevices objectForKeyedSubscript:identifier];
      v9 = v6;
      if (!v6 && dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          sub_1000F6D8C(v6, v7, v8);
        }
      }

      bleDevice = [changedCopy bleDevice];
      rssi = [bleDevice rssi];

      if (rssi <= 0xFFFFFFFFFFFFFFDALL && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleInfoDeviceChanged:]", 30, "BLE info device has bad rssi: %d, %@\n", rssi, changedCopy);
      }

      [(SDProxHandoffAgent *)self _bleDeviceNearbyEnter:changedCopy];
      [(NSMutableDictionary *)self->_bleInfoDevices setObject:changedCopy forKeyedSubscript:identifier];
      [(SDProxHandoffAgent *)self _update];
    }

    v4 = changedCopy;
  }
}

- (void)_bleInfoDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = foundCopy;
  if (self->_bleInfoDiscovery)
  {
    identifier = [foundCopy identifier];
    if (identifier && ([foundCopy deviceFlags] & 0x48) != 0)
    {
      if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6DA8(foundCopy);
      }

      bleInfoDevices = self->_bleInfoDevices;
      if (!bleInfoDevices)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_bleInfoDevices;
        self->_bleInfoDevices = v7;

        bleInfoDevices = self->_bleInfoDevices;
      }

      [(NSMutableDictionary *)bleInfoDevices setObject:foundCopy forKeyedSubscript:identifier];
      bleDevice = [foundCopy bleDevice];
      rssi = [bleDevice rssi];

      if (rssi <= 0xFFFFFFFFFFFFFFDALL && dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _bleInfoDeviceFound:]", 30, "BLE info device has bad rssi: %d, %@\n", rssi, foundCopy);
      }

      [(SDProxHandoffAgent *)self _bleDeviceNearbyEnter:foundCopy];
      [(SDProxHandoffAgent *)self _update];
    }

    v4 = foundCopy;
  }
}

- (void)_bleInfoDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6DE8(lostCopy);
    }

    v5 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:identifier];
    if (v5)
    {
      [(SDProxHandoffAgent *)self _uiStopIfNeeded:v5 reason:4];
    }

    [(NSMutableDictionary *)self->_bleInfoDevices removeObjectForKey:identifier];
    [(SDProxHandoffAgent *)self _bleDeviceNearbyExit:lostCopy];
    [(SDProxHandoffAgent *)self _update];
  }
}

- (void)_bleDeviceNearbyEnter:(id)enter
{
  enterCopy = enter;
  identifier = [enterCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:identifier];

    v6 = [(SDProxHandoffAgent *)self _bleUpdateMappingWithDevice:enterCopy];
    [(SDProxHandoffAgent *)self _updateCandidateIsNearby];
    if (!v5)
    {
      v7 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:identifier];
      v8 = v7;
      if (v7)
      {
        clinkDevice = [v7 clinkDevice];
        mediaRouteIdentifier = [clinkDevice mediaRouteIdentifier];

        if (mediaRouteIdentifier)
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F6E28(mediaRouteIdentifier);
          }

          [(SDProxHandoffAgent *)self _proximityClientDeviceEnteredNearby:mediaRouteIdentifier];
        }
      }
    }

    [(SDProxHandoffAgent *)self _update];
  }
}

- (void)_bleDeviceNearbyExit:(id)exit
{
  identifier = [exit identifier];
  if (identifier)
  {
    v9 = identifier;
    v5 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:identifier];
    v6 = v5;
    if (v5)
    {
      clinkDevice = [v5 clinkDevice];
      mediaRouteIdentifier = [clinkDevice mediaRouteIdentifier];

      if (mediaRouteIdentifier)
      {
        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000F6E68(mediaRouteIdentifier);
        }

        [(SDProxHandoffAgent *)self _proximityClientDeviceExitedNearby:mediaRouteIdentifier];
      }
    }

    [(NSMutableDictionary *)self->_mappedDevices removeObjectForKey:v9];
    [(NSMutableDictionary *)self->_bleUnmapped removeObjectForKey:v9];
    [(SDProxHandoffAgent *)self _updateCandidateIsNearby];
    [(SDProxHandoffAgent *)self _update];
    identifier = v9;
  }
}

- (id)_bleUpdateMappingWithDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    v14 = 0;
    goto LABEL_27;
  }

  activeDevices = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
  v7 = SFDeviceToRPCompanionLinkDevice();
  v8 = v7;
  if (!v7)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7030(deviceCopy);
    }

    goto LABEL_22;
  }

  model = [v7 model];
  lowercaseString = [model lowercaseString];
  if (!lowercaseString)
  {
    goto LABEL_18;
  }

  v11 = SFDeviceClassCodeGet();
  if ((v11 - 1) < 2)
  {
    v12 = @"audioaccessory";
    goto LABEL_6;
  }

  if (v11 != 4)
  {
LABEL_18:

LABEL_19:
    if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6FC4(v8, deviceCopy);
    }

LABEL_22:
    bleUnmapped = self->_bleUnmapped;
    if (!bleUnmapped)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = self->_bleUnmapped;
      self->_bleUnmapped = v18;

      bleUnmapped = self->_bleUnmapped;
    }

    [(NSMutableDictionary *)bleUnmapped setObject:deviceCopy forKeyedSubscript:identifier];
    goto LABEL_25;
  }

  if ([lowercaseString containsString:@"iphone"])
  {

    goto LABEL_16;
  }

  v12 = @"ipod";
LABEL_6:
  v13 = [lowercaseString containsString:v12];

  if ((v13 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  deviceFlags = [deviceCopy deviceFlags];
  if ((deviceFlags & 8) != 0)
  {
    bleDevice = [deviceCopy bleDevice];
    if ([bleDevice decryptedActivityLevel] == 16)
    {
      decryptedActivityLevel = 0;
    }

    else
    {
      bleDevice2 = [deviceCopy bleDevice];
      decryptedActivityLevel = [bleDevice2 decryptedActivityLevel];
    }

    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6EA8(deviceCopy, decryptedActivityLevel);
    }

    if (decryptedActivityLevel > 3)
    {
      v16 = 1;
    }

    else
    {
      model2 = [deviceCopy model];
      v16 = [model2 hasPrefix:@"AudioAccessory"];
    }
  }

  else
  {
    v16 = 0;
  }

  v25 = [(NSMutableDictionary *)self->_mappedDevices objectForKeyedSubscript:identifier];
  v14 = v25;
  if ((deviceFlags & 8) == 0)
  {
    if (v25)
    {
      goto LABEL_52;
    }

LABEL_42:
    if (!v25)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F6F3C(v8, deviceCopy);
      }

      [(NSMutableDictionary *)self->_bleUnmapped removeObjectForKey:identifier];
      v14 = objc_alloc_init(SFCombinedDevice);
      [(SFCombinedDevice *)v14 setBleDevice:deviceCopy];
      [(SFCombinedDevice *)v14 setClinkDevice:v8];
      v26 = [(SFCombinedDevice *)v14 setState:10];
      if (self->_bleActionScanTimedOut || self->_bleActionScanTimer)
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (v26 = _LogCategory_Initialize(), v26))
          {
            sub_1000F6FA8(v26, v27, v28);
          }
        }

        [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
      }
    }

LABEL_52:
    [(SFCombinedDevice *)v14 setBleDevice:deviceCopy];
    clinkDevice = [(SFCombinedDevice *)v14 clinkDevice];
    v30 = v8;
    v31 = v30;
    if (clinkDevice == v30)
    {
    }

    else
    {
      if (clinkDevice)
      {
        v32 = [clinkDevice isEqual:v30];

        if (v32)
        {
          goto LABEL_63;
        }
      }

      else
      {
      }

      [(SFCombinedDevice *)v14 setClinkDevice:v31];
    }

LABEL_63:
    mappedDevices = self->_mappedDevices;
    if (!mappedDevices)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v35 = self->_mappedDevices;
      self->_mappedDevices = v34;

      mappedDevices = self->_mappedDevices;
    }

    [(NSMutableDictionary *)mappedDevices setObject:v14 forKeyedSubscript:identifier];
    goto LABEL_26;
  }

  if ((v25 != 0) | v16 & 1)
  {
    if ((v25 == 0) | v16 & 1)
    {
      if ((v25 != 0) | (v16 ^ 1) & 1)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    [(SDProxHandoffAgent *)self _bleDeviceNearbyExit:deviceCopy];
  }

LABEL_25:
  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (void)_clinkHandleRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (SFDeviceClassCodeGet() == 4)
  {
    [(SDProxHandoffAgent *)self _clinkHomePodHandleRequest:requestCopy responseHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v14 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v10 = v9;
    v11 = @"?";
    if (v9)
    {
      v11 = v9;
    }

    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6700 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
  }
}

- (void)_clinkHomePodHandleRequest:(id)request responseHandler:(id)handler
{
  if (handler)
  {
    v11 = NSLocalizedDescriptionKey;
    handlerCopy = handler;
    v6 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6735 userInfo:v9];
    (*(handler + 2))(handlerCopy, 0, 0, v10);
  }
}

- (void)_motionUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = updateCopy;
  v7 = v5;
  if (updateCopy)
  {
    if ([v5 stationary])
    {
      LODWORD(updateCopy) = [v7 confidence] == 2;
    }

    else
    {
      LODWORD(updateCopy) = 0;
    }

    v5 = v7;
  }

  v6 = (self->_prefForceStationary | updateCopy) & 1;
  if (self->_stationary != v6)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7130();
    }

    self->_stationary = v6;
    if ((v6 & 1) == 0)
    {
      self->_bleActionScanTimedOut = 0;
      [(SDProxHandoffAgent *)self _bleActionScanTimerInvalidate];
    }
  }

  [(SDProxHandoffAgent *)self _update];
}

- (int)proximityClientStart:(id)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1000F7188(v5, v6, v7);
    }
  }

  [startCopy setDispatchQueue:self->_dispatchQueue];
  proxClients = self->_proxClients;
  if (!proxClients)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_proxClients;
    self->_proxClients = v9;

    proxClients = self->_proxClients;
  }

  [(NSMutableSet *)proxClients addObject:startCopy];
  [(SDProxHandoffAgent *)self _commonShouldAdvertiseChanged];
  [(SDProxHandoffAgent *)self _proximityClientSeedInitialDevices:startCopy];
  [(SDProxHandoffAgent *)self _proximityClientSeedWillTriggerDeviceIfNeeded:startCopy];
  [(SDProxHandoffAgent *)self _update];

  return 0;
}

- (void)proximityClientStop:(id)stop
{
  stopCopy = stop;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_1000F71A4(v4, v5, v6);
    }
  }

  [(NSMutableSet *)self->_proxClients removeObject:stopCopy];
  if (![(NSMutableSet *)self->_proxClients count])
  {
    [(SDProxHandoffAgent *)self _bleUpdateMappingReset];
    [(NSMutableSet *)self->_suppressedDeviceIDs removeAllObjects];
    [(SFNotificationProxy *)self->_notificationProxy requestRemoveAll];
    [(SDProxHandoffAgent *)self _resetAllStates];
  }

  [(SDProxHandoffAgent *)self _update];
}

- (void)proximityClientUpdate:(id)update
{
  updateCopy = update;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F0AB0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (int)proximityClient:(id)client dismissContentForDevice:(id)device
{
  clientCopy = client;
  deviceCopy = device;
  if (([(NSMutableSet *)self->_proxClients containsObject:clientCopy]& 1) != 0)
  {
    v8 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:deviceCopy];
    v11 = v8;
    if (v8)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F72C0(deviceCopy);
      }

      [(SDProxHandoffAgent *)self _uiDismissWhenReady:v11 reason:1];
      v12 = 0;
    }

    else
    {
      if (dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          sub_1000F7300(v8, v9, v10);
        }
      }

      v12 = -6705;
    }
  }

  else
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7280(clientCopy);
    }

    v12 = -6700;
  }

  return v12;
}

- (int)proximityClient:(id)client provideContent:(id)content forDevice:(id)device force:(BOOL)force
{
  forceCopy = force;
  clientCopy = client;
  contentCopy = content;
  deviceCopy = device;
  if (([(NSMutableSet *)self->_proxClients containsObject:clientCopy]& 1) != 0)
  {
    v13 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:deviceCopy];
    v14 = v13;
    if (!forceCopy && !v13)
    {
      if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent proximityClient:provideContent:forDevice:force:]", 60, "### Unexpected content for %@: %@\n", deviceCopy, contentCopy);
      }

      v15 = -6709;
      goto LABEL_36;
    }

    error = [contentCopy error];
    if (!error)
    {
      if (!v14 && forceCopy)
      {
        v14 = objc_alloc_init(SFCombinedDevice);
        [(SFCombinedDevice *)v14 setForced:1];
        [(SFCombinedDevice *)v14 setForcedID:deviceCopy];
        [(SFCombinedDevice *)v14 setNotificationType:2];
      }

      v17 = [(SDProxHandoffAgent *)self mediaTransferInfoFromInfo:contentCopy];
      [v17 setHomePodType:{-[SDProxHandoffAgent notificationHomePodTypeForDevice:](self, "notificationHomePodTypeForDevice:", v14)}];
      [(SFCombinedDevice *)v14 setNotificationInfo:v17];
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        v19 = "no";
        if (forceCopy)
        {
          v19 = "yes";
        }

        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent proximityClient:provideContent:forDevice:force:]", 30, "Proximity client content for: %@, force: %s: %@\n", v14, v19, v17);
      }

      [(SFCombinedDevice *)v14 setNextState:13];
      uiDevice = self->_uiDevice;
      self->_uiDevice = 0;

      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F1014;
      block[3] = &unk_1008CDEA0;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
      goto LABEL_35;
    }

    v17 = error;
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F735C(contentCopy);
    }

    [(SFCombinedDevice *)v14 setClientProvidedError:1];
    [(SFCombinedDevice *)v14 resetTicks];
    if (-[SFCombinedDevice stateIsClose](v14, "stateIsClose") || -[SFCombinedDevice stateIsMedium](v14, "stateIsMedium") && (-[SFCombinedDevice bleDevice](v14, "bleDevice"), v20 = objc_claimAutoreleasedReturnValue(), [v20 bleDevice], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "insideSmallBubble"), v21, v20, (v22 & 1) != 0))
    {
      v18 = 20;
    }

    else
    {
      if (![(SFCombinedDevice *)v14 stateIsMedium])
      {
LABEL_30:
        [(SFCombinedDevice *)v14 setNextState:0];
LABEL_35:

        v15 = 0;
        goto LABEL_36;
      }

      v18 = 15;
    }

    [(SFCombinedDevice *)v14 setState:v18];
    goto LABEL_30;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F731C(clientCopy);
  }

  v15 = -6700;
LABEL_36:

  return v15;
}

- (int)proximityClient:(id)client suppressDevice:(id)device
{
  clientCopy = client;
  deviceCopy = device;
  if (([(NSMutableSet *)self->_proxClients containsObject:clientCopy]& 1) != 0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F73DC(deviceCopy);
    }

    suppressedDeviceIDs = self->_suppressedDeviceIDs;
    if (!suppressedDeviceIDs)
    {
      v9 = objc_alloc_init(NSMutableSet);
      v10 = self->_suppressedDeviceIDs;
      self->_suppressedDeviceIDs = v9;

      suppressedDeviceIDs = self->_suppressedDeviceIDs;
    }

    [(NSMutableSet *)suppressedDeviceIDs addObject:deviceCopy];
    v11 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:deviceCopy];
    if (v11)
    {
      if (dword_1009708B0 < 31 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F741C(v11);
      }

      [v11 resetTicks];
      [v11 setState:10];
      [v11 setNextState:0];
    }

    effectiveID = [(SFCombinedDevice *)self->_uiDevice effectiveID];
    v13 = deviceCopy;
    v14 = v13;
    if (effectiveID == v13)
    {
    }

    else
    {
      if ((v13 == 0) == (effectiveID != 0))
      {

LABEL_26:
        v19 = 0;
        goto LABEL_27;
      }

      v15 = [effectiveID isEqual:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v16 = _LogCategory_Initialize(), v16))
      {
        sub_1000F745C(v16, v17, v18);
      }
    }

    uiDevice = self->_uiDevice;
    self->_uiDevice = 0;

    goto LABEL_26;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F739C(clientCopy);
  }

  v19 = -6700;
LABEL_27:

  return v19;
}

- (int)proximityClient:(id)client stopSuppressingDevice:(id)device
{
  clientCopy = client;
  deviceCopy = device;
  if (([(NSMutableSet *)self->_proxClients containsObject:clientCopy]& 1) != 0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F74B8(deviceCopy);
    }

    [(NSMutableSet *)self->_suppressedDeviceIDs removeObject:deviceCopy];
    v8 = 0;
  }

  else
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7478(clientCopy);
    }

    v8 = -6700;
  }

  return v8;
}

- (int)proximityClient:(id)client updateContent:(id)content forDevice:(id)device
{
  clientCopy = client;
  contentCopy = content;
  deviceCopy = device;
  if (([(NSMutableSet *)self->_proxClients containsObject:clientCopy]& 1) != 0)
  {
    v11 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:deviceCopy];
    v12 = v11;
    if (!v11)
    {
      v17 = -6709;
      goto LABEL_38;
    }

    effectiveID = [v11 effectiveID];
    v14 = deviceCopy;
    v15 = v14;
    if (effectiveID == v14)
    {
    }

    else
    {
      if ((v14 == 0) == (effectiveID != 0))
      {

        v17 = -6705;
        v18 = effectiveID;
LABEL_37:

        goto LABEL_38;
      }

      v16 = [effectiveID isEqual:v14];

      if (!v16)
      {
        v17 = -6705;
LABEL_38:

        goto LABEL_39;
      }
    }

    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7538(v15);
    }

    v18 = [(SDProxHandoffAgent *)self mediaTransferInfoFromInfo:contentCopy];
    [v18 setHomePodType:{-[SDProxHandoffAgent notificationHomePodTypeForDevice:](self, "notificationHomePodTypeForDevice:", v12)}];
    [v12 setNotificationInfo:v18];
    error = [contentCopy error];
    if (!error)
    {
      if ([v12 state] == 14 && !objc_msgSend(v12, "nextState"))
      {
        effectiveID = [v18 mediumBubbleVersion];
        v21 = 1;
      }

      else
      {
        effectiveID = v18;
        v21 = 0;
      }

      clientProvidedError = [v12 clientProvidedError];
      v25 = clientProvidedError;
      if (clientProvidedError)
      {
        [v12 setState:15];
        [v12 setNextState:16];
        clientProvidedError = [v12 setClientProvidedError:0];
      }

      if (v21)
      {
        if (dword_1009708B0 <= 30)
        {
          if (dword_1009708B0 != -1 || (clientProvidedError = _LogCategory_Initialize(), clientProvidedError))
          {
            sub_1000F75B8(clientProvidedError, v23, v24);
          }
        }
      }

      [(SFNotificationProxy *)self->_notificationProxy requestUpdate:v15 info:effectiveID mediumVariant:v21 canPostNotification:v25];
      goto LABEL_36;
    }

    effectiveID = error;
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7578(contentCopy);
    }

    [(SFNotificationProxy *)self->_notificationProxy requestRemove:v15 withReason:1];
    [v12 setClientProvidedError:1];
    if ([v12 stateIsClose])
    {
      v20 = 20;
    }

    else
    {
      if (([v12 stateIsMedium] & 1) == 0)
      {
LABEL_36:
        v17 = 0;
        goto LABEL_37;
      }

      v20 = 15;
    }

    [v12 setState:v20];
    goto LABEL_36;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F74F8(clientCopy);
  }

  v17 = -6700;
LABEL_39:

  return v17;
}

- (int)proximityClientRequestScannerTimerReset:(id)reset
{
  resetCopy = reset;
  v5 = [(NSMutableSet *)self->_proxClients containsObject:resetCopy];
  if (v5)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        v5 = sub_1000F7614(v5, v6, v7);
      }
    }

    if (self->_bleActionScanTimedOut || self->_bleActionScanTimer)
    {
      [(SDProxHandoffAgent *)self _bleActionScanTimerActivate];
    }

    else if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1000F7630(v5, v6, v7);
      }
    }

    v8 = 0;
  }

  else
  {
    if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F75D4(resetCopy);
    }

    v8 = -6700;
  }

  return v8;
}

- (void)_proximityClientDeviceEnteredImmediate:(id)immediate
{
  immediateCopy = immediate;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([immediateCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F764C(immediateCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceEnteredImmediateHandler = [v10 deviceEnteredImmediateHandler];

          if (deviceEnteredImmediateHandler)
          {
            deviceEnteredImmediateHandler2 = [v10 deviceEnteredImmediateHandler];
            (deviceEnteredImmediateHandler2)[2](deviceEnteredImmediateHandler2, immediateCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceExitedImmediate:(id)immediate
{
  immediateCopy = immediate;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([immediateCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F768C(immediateCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceExitedImmediateHandler = [v10 deviceExitedImmediateHandler];

          if (deviceExitedImmediateHandler)
          {
            deviceExitedImmediateHandler2 = [v10 deviceExitedImmediateHandler];
            (deviceExitedImmediateHandler2)[2](deviceExitedImmediateHandler2, immediateCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceEnteredNearby:(id)nearby
{
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([nearbyCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F76CC(nearbyCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceEnteredNearbyHandler = [v10 deviceEnteredNearbyHandler];

          if (deviceEnteredNearbyHandler)
          {
            deviceEnteredNearbyHandler2 = [v10 deviceEnteredNearbyHandler];
            (deviceEnteredNearbyHandler2)[2](deviceEnteredNearbyHandler2, nearbyCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceExitedNearby:(id)nearby
{
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([nearbyCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F770C(nearbyCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceExitedNearbyHandler = [v10 deviceExitedNearbyHandler];

          if (deviceExitedNearbyHandler)
          {
            deviceExitedNearbyHandler2 = [v10 deviceExitedNearbyHandler];
            (deviceExitedNearbyHandler2)[2](deviceExitedNearbyHandler2, nearbyCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceWasDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([dismissedCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F774C(dismissedCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceWasDismissedHandler = [v10 deviceWasDismissedHandler];

          if (deviceWasDismissedHandler)
          {
            deviceWasDismissedHandler2 = [v10 deviceWasDismissedHandler];
            (deviceWasDismissedHandler2)[2](deviceWasDismissedHandler2, dismissedCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceWasDismissed:(id)dismissed reason:(int64_t)reason
{
  dismissedCopy = dismissed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([dismissedCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F778C(reason, dismissedCopy);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_proxClients;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          deviceWasDismissedHandlerEx = [v12 deviceWasDismissedHandlerEx];

          if (deviceWasDismissedHandlerEx)
          {
            deviceWasDismissedHandlerEx2 = [v12 deviceWasDismissedHandlerEx];
            (deviceWasDismissedHandlerEx2)[2](deviceWasDismissedHandlerEx2, dismissedCopy, reason);
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)_proximityClientDeviceWasSelected:(id)selected
{
  selectedCopy = selected;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([selectedCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F77F0(selectedCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceWasSelectedHandler = [v10 deviceWasSelectedHandler];

          if (deviceWasSelectedHandler)
          {
            deviceWasSelectedHandler2 = [v10 deviceWasSelectedHandler];
            (deviceWasSelectedHandler2)[2](deviceWasSelectedHandler2, selectedCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceWillTrigger:(id)trigger
{
  triggerCopy = trigger;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([triggerCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7830(triggerCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceWillTriggerHandler = [v10 deviceWillTriggerHandler];

          if (deviceWillTriggerHandler)
          {
            deviceWillTriggerHandler2 = [v10 deviceWillTriggerHandler];
            (deviceWillTriggerHandler2)[2](deviceWillTriggerHandler2, triggerCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceDidUnTrigger:(id)trigger
{
  triggerCopy = trigger;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([triggerCopy length])
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7870(triggerCopy);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_proxClients;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          deviceDidUntriggerHandler = [v10 deviceDidUntriggerHandler];

          if (deviceDidUntriggerHandler)
          {
            deviceDidUntriggerHandler2 = [v10 deviceDidUntriggerHandler];
            (deviceDidUntriggerHandler2)[2](deviceDidUntriggerHandler2, triggerCopy);
          }
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_proximityClientDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  clinkDevice = [updatedCopy clinkDevice];
  mediaRouteIdentifier = [clinkDevice mediaRouteIdentifier];

  if (mediaRouteIdentifier)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_proxClients;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          deviceUpdateHandler = [v12 deviceUpdateHandler];

          if (deviceUpdateHandler)
          {
            if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000F78B0(updatedCopy);
            }

            deviceUpdateHandler2 = [v12 deviceUpdateHandler];
            bleDevice = [updatedCopy bleDevice];
            v15BleDevice = [bleDevice bleDevice];
            (deviceUpdateHandler2)[2](deviceUpdateHandler2, mediaRouteIdentifier, [v15BleDevice rssi], objc_msgSend(updatedCopy, "state"));
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v17 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v17;
      }

      while (v17);
    }
  }
}

- (void)_proximityClientSeedInitialDevices:(id)devices
{
  devicesCopy = devices;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1000F282C;
  v10[4] = sub_1000F283C;
  allValues = [(NSMutableDictionary *)self->_mappedDevices allValues];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2844;
  v7[3] = &unk_1008D0168;
  v8 = devicesCopy;
  v9 = v10;
  v6 = devicesCopy;
  dispatch_async(dispatchQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)_proximityClientSeedWillTriggerDeviceIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2A80;
  v7[3] = &unk_1008CE028;
  v8 = neededCopy;
  selfCopy = self;
  v6 = neededCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_serviceEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleActionService)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1000F7970(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(SFProxHandoffService);
    bleActionService = self->_bleActionService;
    self->_bleActionService = v6;

    [(SFProxHandoffService *)self->_bleActionService setDispatchQueue:self->_dispatchQueue];
    v8 = self->_bleActionService;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F2CC8;
    v9[3] = &unk_1008CDF90;
    v9[4] = self;
    [(SFProxHandoffService *)v8 activateWithCompletion:v9];
  }
}

- (void)_serviceTimeoutActivate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _serviceTimeoutInvalidate = [(SDProxHandoffAgent *)self _serviceTimeoutInvalidate];
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (_serviceTimeoutInvalidate = _LogCategory_Initialize(), _serviceTimeoutInvalidate))
    {
      sub_1000F7A04(_serviceTimeoutInvalidate, v4, v5);
    }
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  bleActionServiceTimer = self->_bleActionServiceTimer;
  self->_bleActionServiceTimer = v6;

  SFDispatchTimerSet();
  v8 = self->_bleActionServiceTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F2E84;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(self->_bleActionServiceTimer);
}

- (void)_serviceTimeoutInvalidate
{
  if (self->_bleActionServiceTimer)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1000F7A20(v3, v4, v5);
      }
    }

    bleActionServiceTimer = self->_bleActionServiceTimer;
    if (bleActionServiceTimer)
    {
      v8 = bleActionServiceTimer;
      dispatch_source_cancel(v8);
      v7 = self->_bleActionServiceTimer;
      self->_bleActionServiceTimer = 0;
    }
  }
}

- (void)_serviceTimeoutFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000F7A3C(v3, v4, v5);
    }
  }

  [(SDProxHandoffAgent *)self _serviceTimeoutInvalidate];
}

- (void)_throttleEventDidOccur
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000F7A58(v3, v4, v5);
    }
  }

  v6 = self->_prefThrottleEventCount + 1;

  [(SDProxHandoffAgent *)self _throttleEventSet:v6];
}

- (void)_throttleEventSet:(unint64_t)set
{
  setCopy = set;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7A74(setCopy);
  }

  CFPrefs_SetInt64();

  [(SDProxHandoffAgent *)self prefsChanged];
}

- (void)_throttleEventsReset
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000F7AB4(v3, v4, v5);
    }
  }

  [(SDProxHandoffAgent *)self _throttleEventSet:0];
}

- (BOOL)_throttleMediumAllowsTrigger
{
  if (self->_prefIgnoreMediumThrottle)
  {
    return 1;
  }

  if (self->_prefMediumBubbleLastTicks == -1)
  {
    return 1;
  }

  mach_absolute_time();
  UpTicksToSecondsF();
  return v3 >= 64800.0;
}

- (void)_throttleMediumReset
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000F7AD0(v3, v4, v5);
    }
  }

  [(SDProxHandoffAgent *)self _throttleMediumSetTicks:-1];
}

- (void)_throttleMediumSetTicks:(unint64_t)ticks
{
  ticksCopy = ticks;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7AEC(ticksCopy);
  }

  CFPrefs_SetInt64();

  [(SDProxHandoffAgent *)self prefsChanged];
}

- (void)_proxiedNotificationDidDismiss:(id)dismiss reason:(int64_t)reason
{
  dismissCopy = dismiss;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:dismissCopy];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = reason - 1;
  if ((reason - 1) > 3)
  {
    v10 = @"?";
  }

  else
  {
    v10 = *(&off_1008D0358 + v9);
  }

  notificationType = [v7 notificationType];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7B2C(reason, dismissCopy);
  }

  effectiveID = [v8 effectiveID];
  v13 = dismissCopy;
  v14 = v13;
  if (effectiveID == v13)
  {
    v25 = v10;
  }

  else
  {
    if ((v13 == 0) == (effectiveID != 0))
    {

LABEL_20:
      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7B90(v14);
      }

      goto LABEL_23;
    }

    v25 = v10;
    v15 = [effectiveID isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  [(SDProxHandoffAgent *)self _proximityClientDeviceWasDismissed:v14 reason:reason, v25];
  v16 = [v8 canTransition:15];
  if (v9 <= 1 && v16)
  {
    bleDevice = [v8 bleDevice];
    v17BleDevice = [bleDevice bleDevice];
    insideSmallBubble = [v17BleDevice insideSmallBubble];

    if ((insideSmallBubble & 1) == 0)
    {
      [v8 setNextState:15];
    }

    [v8 setDismissReason:reason];
    [(SDProxHandoffAgent *)self _run];
  }

  v27[0] = @"notificationDurationSecs";
  [v8 notificationDurationSecs];
  v20 = [NSNumber numberWithDouble:?];
  v28[0] = v20;
  v27[1] = @"notificationType";
  v21 = [NSNumber numberWithUnsignedInt:notificationType];
  v28[1] = v21;
  v27[2] = @"pendingContentSecs";
  [v8 pendingContentDurationSecs];
  v22 = [NSNumber numberWithDouble:?];
  v28[2] = v22;
  v27[3] = @"reason";
  v23 = [NSNumber numberWithInteger:reason];
  v28[3] = v23;
  v28[4] = v26;
  v27[4] = @"reasonStr";
  v27[5] = @"uiID";
  v28[5] = v14;
  v24 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:6];
  SFMetricsLog();

LABEL_23:
}

- (void)_proxiedNotificationWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7BD0(tappedCopy);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = tappedCopy;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v31 = 0;
    v32 = *v38;
    v9 = 0x7FFFFFFF;
    obj = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:v11];
        v13 = v12;
        if (v12)
        {
          selfCopy = self;
          bleDevice = [v12 bleDevice];
          v15BleDevice = [bleDevice bleDevice];
          rssiEstimate = [v15BleDevice rssiEstimate];

          v18 = v9;
          if (v9 <= 0x8000000000000000)
          {
            v18 = 0x8000000000000000;
          }

          if (v18 < rssiEstimate)
          {
            v19 = v13;

            v20 = v11;
            v9 = rssiEstimate;
            v31 = v20;
            v8 = v19;
          }

          self = selfCopy;
        }
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);

    if (v8)
    {
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7C10(v8);
      }

      if (!self->_userOnCall)
      {
        [(SDProxHandoffAgent *)self _proximityClientDeviceWasSelected:v31];
      }

      if ([v8 canTransition:18])
      {
        [v8 setNextState:18];
        [(SDProxHandoffAgent *)self _run];
      }

      v21 = [obj mutableCopy];
      [v21 removeObject:v31];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v34;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(SDProxHandoffAgent *)self _proxiedNotificationDidDismiss:*(*(&v33 + 1) + 8 * j) reason:2];
          }

          v24 = [v22 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v24);
      }

      v41[0] = @"onCall";
      v27 = [NSNumber numberWithBool:self->_userOnCall];
      v41[1] = @"uiID";
      v42[0] = v27;
      v28 = v31;
      v42[1] = v31;
      v29 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
      SFMetricsLog();

      v5 = obj;
      goto LABEL_39;
    }

    v28 = v31;
  }

  else
  {

    v28 = 0;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7C50();
  }

  v8 = 0;
LABEL_39:
}

- (void)notificationDidDismiss:(id)dismiss reason:(int64_t)reason
{
  dismissCopy = dismiss;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F3A70;
  block[3] = &unk_1008CF8F0;
  block[4] = self;
  v10 = dismissCopy;
  reasonCopy = reason;
  v8 = dismissCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)userDidTapNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F3B68;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_hapticsFireNotificationSuccess
{
  _hapticsEnsurePrepared = SFDeviceClassCodeGet();
  if (_hapticsEnsurePrepared != 4)
  {
    if (!self->_hapticNotification)
    {
      _hapticsEnsurePrepared = [(SDProxHandoffAgent *)self _hapticsEnsurePrepared];
    }

    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (_hapticsEnsurePrepared = _LogCategory_Initialize(), _hapticsEnsurePrepared))
      {
        sub_1000F7C84(_hapticsEnsurePrepared, v4, v5);
      }
    }

    hapticNotification = self->_hapticNotification;

    [(UINotificationFeedbackGenerator *)hapticNotification notificationOccurred:0];
  }
}

- (void)_hapticsEnsurePrepared
{
  v3 = SFDeviceClassCodeGet();
  if (v3 != 4)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1000F7CA0(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(UINotificationFeedbackGenerator);
    hapticNotification = self->_hapticNotification;
    self->_hapticNotification = v6;

    v8 = self->_hapticNotification;

    [(UINotificationFeedbackGenerator *)v8 prepare];
  }
}

- (void)_hapticsEnsureStopped
{
  hapticNotification = self->_hapticNotification;
  self->_hapticNotification = 0;
}

- (void)_uiDismissWhenReady:(id)ready reason:(int64_t)reason
{
  readyCopy = ready;
  mach_absolute_time();
  [readyCopy notificationTicks];
  UpTicksToSecondsF();
  v7 = v6;
  if (1.5 - v6 > 0.0)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7CFC(v7);
    }

    if ([readyCopy canTransition:19])
    {
      [readyCopy setDismissReason:reason];
      [readyCopy setNextState:19];
      [(SDProxHandoffAgent *)self _run];
    }

    [(SDProxHandoffAgent *)self _scheduleRunAfter:1.5 - v7];
    goto LABEL_15;
  }

  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7CBC(v7);
  }

  [readyCopy setNotificationDurationSecs:v7];
  effectiveID = [readyCopy effectiveID];
  if (effectiveID)
  {
    [(SFNotificationProxy *)self->_notificationProxy requestRemove:effectiveID withReason:reason];
  }

  v9 = [readyCopy canTransition:20];
  v10 = readyCopy;
  if (v9)
  {
    [readyCopy setDismissReason:reason];
    [readyCopy setNextState:20];
    [(SDProxHandoffAgent *)self _run];
LABEL_15:
    v10 = readyCopy;
  }
}

- (void)_uiStopIfNeeded:(id)needed reason:(int64_t)reason
{
  neededCopy = needed;
  if (SFDeviceClassCodeGet() - 1 <= 1)
  {
    v7 = self->_uiDevice;
    if (!v7)
    {
LABEL_25:

      goto LABEL_26;
    }

    effectiveID = [neededCopy effectiveID];
    if (effectiveID)
    {
      effectiveID2 = [(SFCombinedDevice *)self->_uiDevice effectiveID];
      v10 = effectiveID;
      v11 = effectiveID2;
      v12 = v11;
      if (v10 == v11)
      {

        goto LABEL_9;
      }

      if (v11)
      {
        v13 = [v10 isEqual:v11];

        if (!v13)
        {
          goto LABEL_24;
        }

LABEL_9:
        if ((reason - 1) > 3)
        {
          v14 = @"?";
        }

        else
        {
          v14 = *(&off_1008D0358 + reason - 1);
        }

        if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent _uiStopIfNeeded:reason:]", 30, "Presented UI Stop: %@, %@\n", v10, v14);
        }

        [(SFNotificationProxy *)self->_notificationProxy requestRemove:v10 withReason:reason];
        attachmentURL = [neededCopy attachmentURL];
        if (attachmentURL)
        {
          v23 = v14;
          v16 = +[NSFileManager defaultManager];
          v24 = 0;
          v17 = [v16 removeItemAtURL:attachmentURL error:&v24];
          v18 = v24;

          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F7D3C(v17, v18, attachmentURL);
          }

          v14 = v23;
        }

        else
        {
          v17 = 0;
        }

        v25[0] = @"deletedAttachment";
        v19 = [NSNumber numberWithBool:v17];
        v26[0] = v19;
        v25[1] = @"notificationType";
        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [neededCopy notificationType]);
        v26[1] = v20;
        v25[2] = @"reason";
        v21 = [NSNumber numberWithInteger:reason];
        v26[2] = v21;
        v26[3] = v14;
        v25[3] = @"reasonStr";
        v25[4] = @"uiID";
        v26[4] = v10;
        v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
        SFMetricsLog();

        goto LABEL_24;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_26:
}

- (id)_combinedDeviceForUIID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000F282C;
  v16 = sub_1000F283C;
  v17 = 0;
  mappedDevices = self->_mappedDevices;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F428C;
  v9[3] = &unk_1008D01E0;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)mappedDevices enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_combinedDeviceIsSuppressed:(id)suppressed
{
  suppressedCopy = suppressed;
  effectiveID = [suppressedCopy effectiveID];
  v6 = effectiveID && ([(NSMutableSet *)self->_suppressedDeviceIDs containsObject:effectiveID]& 1) != 0;

  return v6;
}

- (BOOL)_expectingContentForDeviceID:(id)d
{
  v3 = [(SDProxHandoffAgent *)self _combinedDeviceForUIID:d];
  v4 = v3 != 0;

  return v4;
}

- (void)_combinedDevicePrepareForCallTransferTrigger:(id)trigger
{
  triggerCopy = trigger;
  [triggerCopy setNotificationType:3];
  v4 = [(SDProxHandoffAgent *)self _routeForDevice:triggerCopy];
  if (v4)
  {
    [triggerCopy setRoute:v4];
  }

  v5 = [(SDProxHandoffAgent *)self callTransferInfoForDevice:triggerCopy];
  if (v5)
  {
    [triggerCopy setNotificationInfo:v5];
  }
}

- (void)_resetAllStates
{
  uiDevice = self->_uiDevice;
  self->_uiDevice = 0;

  mappedDevices = self->_mappedDevices;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4538;
  v5[3] = &unk_1008D0208;
  v5[4] = self;
  [(NSMutableDictionary *)mappedDevices enumerateKeysAndObjectsUsingBlock:v5];
  [(SDProxHandoffAgent *)self _run];
}

- (id)_routeForDevice:(id)device
{
  deviceCopy = device;
  _routes = [(SDProxHandoffAgent *)self _routes];
  if (_routes)
  {
    bleDevice = [deviceCopy bleDevice];
    v9 = bleDevice;
    if (bleDevice)
    {
      clinkDevice = [deviceCopy clinkDevice];
      v11 = clinkDevice;
      if (clinkDevice)
      {
        v12 = clinkDevice;
      }

      else
      {
        activeDevices = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
        v12 = SFDeviceToRPCompanionLinkDevice();
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = _routes;
      v13 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v24 = deviceCopy;
        v16 = *v26;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            if (sub_1000EB004(v9, v18, v12))
            {
              v19 = v18;
              uniqueIdentifier = [v19 uniqueIdentifier];
              if (uniqueIdentifier)
              {
                v21 = uniqueIdentifier;
                isHomePodFamily = [v19 isHomePodFamily];

                if (isHomePodFamily)
                {
                  v13 = v19;
                  goto LABEL_23;
                }
              }

              else
              {
              }
            }
          }

          v13 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
LABEL_23:
        deviceCopy = v24;
      }
    }

    else
    {
      if (dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (bleDevice = _LogCategory_Initialize(), bleDevice))
        {
          sub_1000F7DD0(bleDevice, v7, v8);
        }
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_routes
{
  v2 = [off_100970920(self a2)];
  routeController = [v2 routeController];
  routes = [routeController routes];

  return routes;
}

- (BOOL)_shouldMediumPromptWithInfo:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  if (!self->_prefMediumBubbleEnabled)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
      {
        sub_1000F7DEC(infoCopy, v5, v6);
      }
    }

    goto LABEL_16;
  }

  _throttleEventsReachedMax = [(SDProxHandoffAgent *)self _throttleEventsReachedMax];
  if (_throttleEventsReachedMax)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (_throttleEventsReachedMax = _LogCategory_Initialize(), _throttleEventsReachedMax))
      {
        sub_1000F7E24(_throttleEventsReachedMax, v9, v10);
      }
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  _throttleMediumAllowsTrigger = [(SDProxHandoffAgent *)self _throttleMediumAllowsTrigger];
  if ((_throttleMediumAllowsTrigger & 1) == 0)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (_throttleMediumAllowsTrigger = _LogCategory_Initialize(), _throttleMediumAllowsTrigger))
      {
        sub_1000F7E08(_throttleMediumAllowsTrigger, v12, v13);
      }
    }

    goto LABEL_16;
  }

  v14 = [v7 interactionBehavior] == 2;
LABEL_17:

  return v14;
}

- (id)callTransferInfoForDevice:(id)device
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (deviceCopy = _LogCategory_Initialize(), deviceCopy))
    {
      sub_1000F7E40(deviceCopy, v5, v6);
    }
  }

  currentCall = [(SDProxHandoffAgent *)self currentCall];
  v11 = currentCall;
  if (!currentCall && dword_1009708B0 <= 90)
  {
    if (dword_1009708B0 != -1 || (currentCall = _LogCategory_Initialize(), currentCall))
    {
      sub_1000F7E5C(currentCall, v9, v10);
    }
  }

  v12 = [(SDProxHandoffAgent *)self contactForCall:v11];
  v15 = v12;
  if (!v12 && dword_1009708B0 <= 90)
  {
    if (dword_1009708B0 != -1 || (v12 = _LogCategory_Initialize(), v12))
    {
      sub_1000F7E78(v12, v13, v14);
    }
  }

  v38 = v11;
  v16 = [(SDProxHandoffAgent *)self appIconForCall:v11];
  v19 = v16;
  if (!v16 && dword_1009708B0 <= 90)
  {
    if (dword_1009708B0 != -1 || (v16 = _LogCategory_Initialize(), v16))
    {
      sub_1000F7E94(v16, v17, v18);
    }
  }

  v20 = [(SDProxHandoffAgent *)self persistImageForContact:v15 withAppIcon:v19];
  v23 = v20;
  if (v20)
  {
    [v7 setAttachmentURL:v20];
  }

  else if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (v20 = _LogCategory_Initialize(), v20))
    {
      sub_1000F7EB0(v20, v21, v22);
    }
  }

  v24 = [(SDProxHandoffAgent *)self displayNameForContact:v15];
  if (!v24)
  {

    v26 = 0;
LABEL_26:
    v27 = SFLocalizedStringForKey();

    goto LABEL_27;
  }

  SFDeviceClassCodeGet();
  v25 = SFLocalizedStringForKey();
  v26 = [NSString stringWithFormat:v25, v24];

  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v26;
  if (![v26 length])
  {
    goto LABEL_26;
  }

LABEL_27:
  v28 = SFLocalizedStringForKey();
  route = [v7 route];
  v30 = route;
  if (route && [route isCurrentlyPicked])
  {
    SFDeviceClassCodeGet();
    v31 = SFLocalizedStringForKey();

    v32 = 1;
    v28 = v31;
  }

  else
  {
    v32 = 2;
  }

  v33 = objc_alloc_init(SFNotificationInfo);
  v34 = v33;
  if (v23)
  {
    [v33 setAttachmentURL:v23];
  }

  [v34 setBody:v27];
  name = [v7 name];
  v36 = SFHomePodDisplayNameForDeviceName();
  [v34 setHeader:v36];

  [v34 setInteractionBehavior:2];
  [v34 setInteractionDirection:v32];
  [v34 setNotificationType:3];
  [v34 setTitle:v28];
  [v34 setHomePodType:{-[SDProxHandoffAgent notificationHomePodTypeForDevice:](self, "notificationHomePodTypeForDevice:", v7)}];

  return v34;
}

- (BOOL)callTransferShouldPush:(id)push
{
  route = [push route];
  v4 = route;
  if (route)
  {
    v5 = [route isCurrentlyPicked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)mediaTransferInfoFromInfo:(id)info
{
  v3 = [info copy];
  [v3 setNotificationType:2];
  SFDeviceClassCodeGet();
  [v3 interactionDirection];
  interactionBehavior = [v3 interactionBehavior];
  if (!interactionBehavior)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (interactionBehavior = _LogCategory_Initialize(), interactionBehavior))
      {
        sub_1000F7ECC(interactionBehavior, v5, v6);
      }
    }

    [v3 setInteractionBehavior:2];
  }

  v7 = SFLocalizedStringForKey();
  [v3 setTitle:v7];

  return v3;
}

- (unint64_t)notificationHomePodTypeForDevice:(id)device
{
  bleDevice = [device bleDevice];
  model = [bleDevice model];
  v5 = [model isEqualToString:{@"AudioAccessory5, 1"}];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGImage)appIconForCall:(id)call
{
  if (call)
  {
    provider = [call provider];
    v6 = provider;
    if (!provider)
    {
      if (dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (provider = _LogCategory_Initialize(), provider))
        {
          sub_1000F7F04(provider, v4, v5);
        }
      }

      goto LABEL_10;
    }

    displayAppBundleIdentifier = [provider displayAppBundleIdentifier];
    if (displayAppBundleIdentifier)
    {
      v8 = [[ISIcon alloc] initWithBundleIdentifier:displayAppBundleIdentifier];

      if (v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    inCallUIBundleIdentifier = [v6 inCallUIBundleIdentifier];
    if (inCallUIBundleIdentifier)
    {
      v8 = [[ISIcon alloc] initWithBundleIdentifier:inCallUIBundleIdentifier];

      if (v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    bundleIdentifier = [v6 bundleIdentifier];
    if (!bundleIdentifier)
    {

LABEL_20:
      bundleURL = [v6 bundleURL];
      if (bundleURL)
      {
        v8 = [[ISIcon alloc] initWithURL:bundleURL];

        if (v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if (dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (v13 = _LogCategory_Initialize(), v13))
        {
          sub_1000F7EE8(v13, v14, v15);
        }
      }

LABEL_10:
      v9 = 0;
LABEL_23:

      return v9;
    }

    v8 = [[ISIcon alloc] initWithBundleIdentifier:bundleIdentifier];

    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_22:
    v16 = [[ISImageDescriptor alloc] initWithSize:12.0 scale:{12.0, 3.0}];
    v9 = [v8 CGImageForImageDescriptor:v16];

    goto LABEL_23;
  }

  return 0;
}

- (id)contactForCall:(id)call
{
  if (call)
  {
    contactIdentifier = [call contactIdentifier];
    v5 = contactIdentifier;
    if (contactIdentifier)
    {
      v6 = [off_100970920(contactIdentifier v4)];
      contactStore = [v6 contactStore];
      v8 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
      v15[0] = v8;
      v15[1] = CNContactThumbnailImageDataKey;
      v15[2] = CNContactGivenNameKey;
      v15[3] = CNContactFamilyNameKey;
      v15[4] = CNContactTypeKey;
      v9 = [NSArray arrayWithObjects:v15 count:5];
      v14 = 0;
      v10 = [contactStore unifiedContactWithIdentifier:v5 keysToFetch:v9 error:&v14];
      v11 = v14;
      if (v10)
      {
        v12 = v10;
      }

      else if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent contactForCall:]", 90, "### Error fetching contact %@: %@", v5, v11);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)displayNameForContact:(id)contact
{
  if (contact)
  {
    v4 = [CNContactFormatter stringFromContact:contact style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)persistImageForContact:(id)contact withAppIcon:(CGImage *)icon
{
  contactCopy = contact;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1009708B0, "[SDProxHandoffAgent persistImageForContact:withAppIcon:]", 30, "persistImageForContact:%@ withAppIcon:%@\n", contactCopy, icon);
  }

  v6 = +[SDXPCHelperConnection makeActivatedConnection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F5478;
  v12[3] = &unk_1008CDEA0;
  v12[4] = v6;
  v7 = objc_retainBlock(v12);
  if (icon)
  {
    v8 = SFDataFromCGImage();
    icon = v8;
    if (v8)
    {
      v9 = v8;
    }
  }

  v10 = [v6 urlToCGImgDataForCallHandoffIconWithAppIconImageData:icon contact:contactCopy];

  (v7[2])(v7);

  return v10;
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  if (dword_1009708B0 <= 50 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7F60(triggerCopy);
  }

  v5 = [(NSMutableDictionary *)self->_bleActionDevices objectForKeyedSubscript:triggerCopy];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F5578;
    v7[3] = &unk_1008CE028;
    v7[4] = self;
    v8 = triggerCopy;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)testUI:(id)i
{
  iCopy = i;
  v5 = [NSUUID alloc];
  v6 = [iCopy containsString:@"fail"];

  if (v6)
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v30 = [v5 initWithUUIDString:v7];
  v8 = objc_alloc_init(SFDevice);
  [v8 setIdentifier:v30];
  v9 = [v8 setName:@"Living Room HomePod"];
  v10 = [objc_alloc(off_100970928(v9)) initWithUniqueIdentifier:@"uniqueID" name:@"Living Room"];
  [v10 setDeviceType:6];
  currentCall = [(SDProxHandoffAgent *)self currentCall];
  meCard = currentCall;
  if (currentCall)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (currentCall = _LogCategory_Initialize(), currentCall))
      {
        sub_1000F7FA0(currentCall, v12, v13);
      }
    }

    v15 = [(SDProxHandoffAgent *)self contactForCall:meCard];
    v16 = [(SDProxHandoffAgent *)self persistImageForContact:v15 withAppIcon:[(SDProxHandoffAgent *)self appIconForCall:meCard]];
    if (v16)
    {
      v17 = v16;
      v18 = v17;
      goto LABEL_12;
    }
  }

  v19 = +[SDStatusMonitor sharedMonitor];
  meCard = [v19 meCard];

  v15 = [[ISIcon alloc] initWithBundleIdentifier:@"com.apple.mobilephone"];
  v18 = [[ISImageDescriptor alloc] initWithSize:12.0 scale:{12.0, 3.0}];
  v17 = -[SDProxHandoffAgent persistImageForContact:withAppIcon:](self, "persistImageForContact:withAppIcon:", meCard, [v15 CGImageForImageDescriptor:v18]);
LABEL_12:
  v20 = v17;

  v21 = objc_alloc_init(SFNotificationInfo);
  [v21 setAttachmentURL:v20];
  v22 = SFLocalizedStringForKey();
  [v21 setBody:v22];

  name = [v8 name];
  if (name)
  {
    [v21 setHeader:name];
  }

  else
  {
    v24 = SFLocalizedStringForKey();
    [v21 setHeader:v24];
  }

  [v21 setNotificationType:3];
  v25 = SFLocalizedStringForKey();
  [v21 setTitle:v25];

  v26 = objc_alloc_init(SFCombinedDevice);
  v27 = objc_alloc_init(RPCompanionLinkDevice);
  [(SFCombinedDevice *)v26 setClinkDevice:v27];

  [(SFCombinedDevice *)v26 setForced:1];
  v28 = +[NSUUID UUID];
  uUIDString = [v28 UUIDString];
  [(SFCombinedDevice *)v26 setForcedID:uUIDString];

  [(SFCombinedDevice *)v26 setNotificationInfo:v21];
  [(SFCombinedDevice *)v26 setNotificationType:3];
  [(SFCombinedDevice *)v26 setRoute:v10];
  [(SFCombinedDevice *)v26 setBleDevice:v8];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7FBC(v26);
  }
}

@end