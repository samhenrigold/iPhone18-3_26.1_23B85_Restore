@interface AAContextManager
+ (id)sharedContextManager;
- (AAContextManager)init;
- (BOOL)_getBoolPreferencesForKey:(id)key;
- (unsigned)_generateContextChangedFlags:(BOOL)flags spl:(BOOL)spl;
- (void)_contextSignalUpdated:(id)updated withFusedState:(unsigned int)state;
- (void)_ensureStartedContextMonitorWithCompletion:(id)completion;
- (void)_notifyTips:(int)tips;
- (void)_requestSensingPredictionInfo:(BOOL)info spl:(BOOL)spl;
- (void)_setPreferencesForKey:(id)key withBoolValue:(BOOL)value;
- (void)_wxDeviceFound:(id)found;
- (void)_wxDeviceLost:(id)lost;
- (void)_wxDiscoveryEnsureStarted;
- (void)activate;
- (void)invalidate;
@end

@implementation AAContextManager

+ (id)sharedContextManager
{
  if (qword_1002FA0C8 != -1)
  {
    sub_1001EC518();
  }

  v3 = qword_1002FA0C0;

  return v3;
}

- (AAContextManager)init
{
  v8.receiver = self;
  v8.super_class = AAContextManager;
  v2 = [(AAContextManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAContextManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_concertVenueAirPodsInEarTipShown = [(AAContextManager *)v2 _getBoolPreferencesForKey:@"ConcertVenueAirPodsInEarTipShown"];
    v2->_concertVenueAirPodsNearybyTipShown = [(AAContextManager *)v2 _getBoolPreferencesForKey:@"ConcertVenueAirPodsNearbyTipShown"];
    v6 = v2;
  }

  return v2;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073AB4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activate
{
  if (self->_concertVenueAirPodsNearybyTipShown)
  {
    if (dword_1002F6848 <= 30)
    {
      if (dword_1002F6848 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001EC52C(self, a2, v2);
      }
    }
  }

  else
  {

    [(AAContextManager *)self _wxDiscoveryEnsureStarted];
  }
}

- (void)_wxDiscoveryEnsureStarted
{
  selfCopy = self;
  if (dword_1002F6848 <= 30)
  {
    if (dword_1002F6848 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001EC548(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(SFDeviceDiscovery);
  wxDiscovery = selfCopy->_wxDiscovery;
  selfCopy->_wxDiscovery = v4;
  v6 = v4;

  [(SFDeviceDiscovery *)v6 setChangeFlags:9];
  [(SFDeviceDiscovery *)v6 setDiscoveryFlags:2];
  [(SFDeviceDiscovery *)v6 setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFDeviceDiscovery *)v6 setPurpose:@"AAContextManger"];
  [(SFDeviceDiscovery *)v6 setScanRate:20];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005D84;
  v11[3] = &unk_1002B8428;
  v11[4] = selfCopy;
  v11[5] = v6;
  [(SFDeviceDiscovery *)v6 setDeviceFoundHandler:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005CDC;
  v10[3] = &unk_1002B8428;
  v10[4] = selfCopy;
  v10[5] = v6;
  [(SFDeviceDiscovery *)v6 setDeviceLostHandler:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100073DE4;
  v9[3] = &unk_1002B8450;
  v9[4] = selfCopy;
  v9[5] = v6;
  [(SFDeviceDiscovery *)v6 setDeviceChangedHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073E08;
  v8[3] = &unk_1002B6D18;
  v8[4] = selfCopy;
  v8[5] = v6;
  [(SFDeviceDiscovery *)v6 setInvalidationHandler:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073E24;
  v7[3] = &unk_1002B68A8;
  v7[4] = selfCopy;
  v7[5] = v6;
  [(SFDeviceDiscovery *)v6 activateWithCompletion:v7];
}

- (void)_ensureStartedContextMonitorWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(SPContextMonitor);
  [(SPContextMonitor *)self->_contextMonitor invalidate];
  contextMonitor = self->_contextMonitor;
  self->_contextMonitor = 0;

  objc_storeStrong(&self->_contextMonitor, v5);
  [v5 setInterruptionHandler:&stru_1002B91C0];
  [v5 setInvalidationHandler:&stru_1002B91E0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000740E8;
  v10[3] = &unk_1002B9208;
  v10[4] = self;
  [v5 setContextSignalUpdatedHandler:v10];
  if (dword_1002F6848 <= 30 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC5A4(v5);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074184;
  v8[3] = &unk_1002B9230;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 activateWithCompletion:v8];
}

- (void)_requestSensingPredictionInfo:(BOOL)info spl:(BOOL)spl
{
  splCopy = spl;
  infoCopy = info;
  v7 = self->_contextMonitor;
  if (v7)
  {
    [(SPContextMonitor *)v7 setContextChangeFlags:[(AAContextManager *)self _generateContextChangedFlags:infoCopy spl:splCopy]];
  }

  else
  {
    if (dword_1002F6848 <= 30 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC704(infoCopy, splCopy);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100074398;
    v8[3] = &unk_1002B7898;
    v9 = 0;
    selfCopy = self;
    v11 = infoCopy;
    v12 = splCopy;
    [(AAContextManager *)self _ensureStartedContextMonitorWithCompletion:v8];
  }
}

- (void)_contextSignalUpdated:(id)updated withFusedState:(unsigned int)state
{
  updatedCopy = updated;
  if (state != 2)
  {
    if (state != 1)
    {
      goto LABEL_11;
    }

    v9 = updatedCopy;
    v7 = [updatedCopy locationCategory] == 6;
    updatedCopy = v9;
    if (!v7)
    {
      goto LABEL_11;
    }

    [(AAContextManager *)self _notifyTips:1];
    [(AAContextManager *)self _setConcertVenueAirPodsNearybyTipShown];
LABEL_10:
    [(AAContextManager *)self invalidate];
    updatedCopy = v9;
    goto LABEL_11;
  }

  v9 = updatedCopy;
  noiseLevel = [updatedCopy noiseLevel];
  v7 = [v9 locationCategory] == 6;
  updatedCopy = v9;
  if (v7 && noiseLevel == 6)
  {
    [(AAContextManager *)self _notifyTips:2];
    [(AAContextManager *)self _setConcertVenueAirPodsInEarTipShown];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_setPreferencesForKey:(id)key withBoolValue:(BOOL)value
{
  v4 = &kCFBooleanTrue;
  if (!value)
  {
    v4 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(key, *v4, @"com.apple.AudioAccessory");

  CFPreferencesAppSynchronize(@"com.apple.AudioAccessory");
}

- (BOOL)_getBoolPreferencesForKey:(id)key
{
  keyCopy = key;
  CFPreferencesAppSynchronize(@"com.apple.AudioAccessory");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(keyCopy, @"com.apple.AudioAccessory", 0);

  return AppBooleanValue != 0;
}

- (unsigned)_generateContextChangedFlags:(BOOL)flags spl:(BOOL)spl
{
  if (spl)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4 | flags;
}

- (void)_notifyTips:(int)tips
{
  if (dword_1002F6848 <= 30 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC78C(tips);
  }

  v4 = BiomeLibrary();
  discoverability = [v4 Discoverability];
  signals = [discoverability Signals];

  v6 = [[BMDiscoverabilitySignals alloc] initWithContentIdentifier:@"com.apple.AudioAccessoryServices.user-reach-loud-environment" context:0 osBuild:0 userInfo:0];
  source = [signals source];
  [source sendEvent:v6];
}

- (void)_wxDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    bleDevice = [lostCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    v9 = [(NSMutableDictionary *)self->_wxDevices objectForKeyedSubscript:uUIDString];

    if (v9)
    {
      if (dword_1002F6848 <= 30 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
      {
        bleDevice2 = [lostCopy bleDevice];
        name = [bleDevice2 name];
        v12 = name;
        v13 = &stru_1002C1358;
        if (name)
        {
          v13 = name;
        }

        LogPrintF(&dword_1002F6848, "[AAContextManager _wxDeviceLost:]", 30, "Wx Device lost: %@ %@ productID %d", uUIDString, v13, Int64Ranged);
      }

      [(NSMutableDictionary *)self->_wxDevices setObject:0 forKeyedSubscript:uUIDString];
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
    bleDevice = [foundCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    Int64 = CFDictionaryGetInt64();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64)
    {
      v10 = Int64Ranged;
      v11 = CFDictionaryGetInt64Ranged();
      v12 = [(NSMutableDictionary *)self->_wxDevices objectForKeyedSubscript:uUIDString];

      v13 = foundCopy;
      if (!v12)
      {
        if (dword_1002F6848 <= 30)
        {
          if (dword_1002F6848 != -1 || (v14 = _LogCategory_Initialize(), v13 = foundCopy, v14))
          {
            LogPrintF(&dword_1002F6848, "[AAContextManager _wxDeviceFound:]", 30, "Connected Audio Wx Device: identifier %@, productID: %d subType %d", uUIDString, v11, v10);
            v13 = foundCopy;
          }
        }

        if (!self->_wxDevices)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          wxDevices = self->_wxDevices;
          self->_wxDevices = v15;

          v13 = foundCopy;
        }
      }

      [(NSMutableDictionary *)self->_wxDevices setObject:v13 forKeyedSubscript:uUIDString];
      if (v10 == 6 && !self->_concertVenueAirPodsNearybyTipShown)
      {
        [(AAContextManager *)self _requestSensingPredictionInfo:1 spl:0];
      }
    }
  }
}

@end