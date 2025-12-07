@interface SFService
- (SFService)init;
- (SFService)initWithCoder:(id)coder;
- (id)description;
- (int)setEncryptionReadKey:(const char *)key readKeyLen:(unint64_t)len writeKey:(const char *)writeKey writeKeyLen:(unint64_t)keyLen peer:(id)peer;
- (void)_activateWithCompletion:(id)completion;
- (void)_activated;
- (void)_cleanup;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_performActivateSafeChange:(id)change;
- (void)_sendToPeer:(id)peer type:(unsigned __int8)type data:(id)data;
- (void)_sendToPeer:(id)peer type:(unsigned __int8)type unencryptedObject:(id)object;
- (void)activateWithCompletion:(id)completion;
- (void)clearEncryptionInfoForPeer:(id)peer;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n peer:(id)peer;
- (void)pairSetupWithFlags:(unsigned int)flags peer:(id)peer;
- (void)sendEvent:(id)event;
- (void)sendRequest:(id)request;
- (void)sendResponse:(id)response;
- (void)sendToPeer:(id)peer flags:(unsigned int)flags object:(id)object;
- (void)sendToPeer:(id)peer type:(unsigned __int8)type data:(id)data;
- (void)serviceError:(id)error;
- (void)servicePeerDisconnected:(id)disconnected error:(id)error;
- (void)serviceReceivedEvent:(id)event;
- (void)serviceReceivedFrameType:(unsigned __int8)type data:(id)data peer:(id)peer;
- (void)serviceReceivedRequest:(id)request;
- (void)serviceReceivedResponse:(id)response;
- (void)serviceSessionFailed:(id)failed error:(id)error;
- (void)setAdvertiseRate:(int64_t)rate;
- (void)setAutoUnlockEnabled:(BOOL)enabled;
- (void)setAutoUnlockWatch:(BOOL)watch;
- (void)setDeviceActionType:(unsigned __int8)type;
- (void)setDuetSync:(BOOL)sync;
- (void)setHasProblem:(BOOL)problem;
- (void)setLabel:(id)label;
- (void)setNeedsAWDL:(BOOL)l;
- (void)setNeedsKeyboard:(BOOL)keyboard;
- (void)setNeedsSetup:(BOOL)setup;
- (void)setPayloadDovePeace2:(unsigned __int8)peace2;
- (void)setProblemFlags:(unint64_t)flags;
- (void)setTargetAuthTag:(id)tag;
- (void)setWakeDevice:(BOOL)device;
- (void)setWatchLocked:(BOOL)locked;
- (void)updateWithService:(id)service;
@end

@implementation SFService

- (id)description
{
  v52 = 0;
  NSAppendPrintF(&v52, "SFService");
  v3 = v52;
  serviceType = self->_serviceType;
  if (self->_serviceType)
  {
    v51 = v3;
    SFNearbyBLEServiceTypeToString(serviceType);
    v5 = &v51;
    NSAppendPrintF(&v51, "-%s");
  }

  else
  {
    identifier = self->_identifier;
    if (!identifier)
    {
      goto LABEL_6;
    }

    v50 = v3;
    v5 = &v50;
    NSAppendPrintF(&v50, "-%@", identifier);
  }

  v7 = *v5;

  v3 = v7;
LABEL_6:
  if (self->_invalidateCalled)
  {
    v49 = v3;
    NSAppendPrintF(&v49, ", Invalidated");
    v8 = v49;

    v3 = v8;
  }

  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    v48 = v3;
    if (advertiseRate <= 39)
    {
      switch(advertiseRate)
      {
        case 10:
          v10 = "Infrequent";
          goto LABEL_26;
        case 20:
          v10 = "LowBackground";
          goto LABEL_26;
        case 30:
          v10 = "Background";
          goto LABEL_26;
      }
    }

    else if (advertiseRate > 59)
    {
      if (advertiseRate == 60)
      {
        v10 = "Aggressive";
        goto LABEL_26;
      }

      if (advertiseRate == 70)
      {
        v10 = "Max";
        goto LABEL_26;
      }
    }

    else
    {
      if (advertiseRate == 40)
      {
        v10 = "Normal";
        goto LABEL_26;
      }

      if (advertiseRate == 50)
      {
        v10 = "High";
LABEL_26:
        NSAppendPrintF(&v48, ", AdvertiseRate %s", v10);
        v11 = v48;

        v3 = v11;
        goto LABEL_27;
      }
    }

    v10 = "?";
    goto LABEL_26;
  }

LABEL_27:
  authTagOverride = self->_authTagOverride;
  if (authTagOverride)
  {
    v47 = v3;
    v13 = authTagOverride;
    NSAppendPrintF(&v47, ", ATO <%@>", v13);
    v14 = v47;

    v3 = v14;
  }

  if (self->_autoUnlockEnabled)
  {
    v46 = v3;
    NSAppendPrintF(&v46, ", AutoUnlockEnabled");
    v15 = v46;

    v3 = v15;
  }

  if (self->_autoUnlockWatch)
  {
    v45 = v3;
    NSAppendPrintF(&v45, ", AutoUnlockWatch");
    v16 = v45;

    v3 = v16;
  }

  deviceActionType = self->_deviceActionType;
  if (self->_deviceActionType)
  {
    v44 = v3;
    v18 = SFDeviceActionTypeToString(deviceActionType);
    NSAppendPrintF(&v44, ", %s", v18);
    v19 = v44;

    v3 = v19;
  }

  if (self->_duetSync)
  {
    v43 = v3;
    NSAppendPrintF(&v43, ", DuetSync");
    v20 = v43;

    v3 = v20;
  }

  if (self->_needsAWDL)
  {
    v42 = v3;
    NSAppendPrintF(&v42, ", NeedsAWDL");
    v21 = v42;

    v3 = v21;
  }

  if (self->_needsKeyboard)
  {
    v41 = v3;
    NSAppendPrintF(&v41, ", NeedsKeyboard");
    v22 = v41;

    v3 = v22;
  }

  if (self->_needsSetup)
  {
    v40 = v3;
    v23 = SFDeviceActionTypeToString(self->_deviceActionType);
    NSAppendPrintF(&v40, ", NeedsSetup-%s", v23);
    v24 = v40;

    v3 = v24;
  }

  if (self->_overrideScreenOff)
  {
    v39 = v3;
    NSAppendPrintF(&v39, ", ScreenOff");
    v25 = v39;

    v3 = v25;
  }

  requestSSID = self->_requestSSID;
  if (requestSSID)
  {
    v38 = v3;
    NSAppendPrintF(&v38, ", SSID", requestSSID);
    v27 = v38;

    v3 = v27;
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags)
  {
    v37 = v3;
    NSAppendPrintF(&v37, ", %#{flags}", sessionFlags, &unk_1A998FF40);
    v29 = v37;

    v3 = v29;
  }

  targetAuthTag = self->_targetAuthTag;
  if (targetAuthTag)
  {
    v36 = v3;
    v31 = targetAuthTag;
    NSAppendPrintF(&v36, ", tATag <%@>", v31);
    v32 = v36;

    v3 = v32;
  }

  if (self->_watchLocked)
  {
    v35 = v3;
    NSAppendPrintF(&v35, ", WatchLocked");
    v33 = v35;

    v3 = v33;
  }

  return v3;
}

- (SFService)init
{
  v6.receiver = self;
  v6.super_class = SFService;
  v2 = [(SFService *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucatCore = &gLogCategory_SFServiceCore;
    v2->_ucatCrypto = &gLogCategory_SFServiceCrypto;
  }

  return v2;
}

- (SFService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = SFService;
  v5 = [(SFService *)&v25 init];
  if (v5)
  {
    v6 = SFMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v5->_ucatCore = &gLogCategory_SFServiceCore;
    v5->_ucatCrypto = &gLogCategory_SFServiceCrypto;
    if ([coderCopy containsValueForKey:@"advR"])
    {
      v5->_advertiseRate = [coderCopy decodeIntegerForKey:@"advR"];
    }

    v8 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v8 containsValueForKey:@"auE"])
    {
      v5->_autoUnlockEnabled = [v8 decodeBoolForKey:@"auE"];
    }

    if ([v8 containsValueForKey:@"auW"])
    {
      v5->_autoUnlockWatch = [v8 decodeBoolForKey:@"auW"];
    }

    if ([v8 containsValueForKey:@"dat"])
    {
      v5->_deviceActionType = [v8 decodeIntegerForKey:@"dat"];
    }

    if ([v8 containsValueForKey:@"dp2"])
    {
      v5->_payloadDovePeace2 = [v8 decodeIntForKey:@"dp2"];
    }

    if ([v8 containsValueForKey:@"deviceClassCode"])
    {
      v5->_deviceClassCode = [v8 decodeIntegerForKey:@"deviceClassCode"];
    }

    if ([v8 containsValueForKey:@"deviceColorCode"])
    {
      v5->_deviceColorCode = [v8 decodeIntegerForKey:@"deviceColorCode"];
    }

    if ([v8 containsValueForKey:@"deviceModelCode"])
    {
      v5->_deviceModelCode = [v8 decodeIntegerForKey:@"deviceModelCode"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"ds"])
    {
      v5->_duetSync = [v9 decodeBoolForKey:@"ds"];
    }

    if ([v9 containsValueForKey:@"prob"])
    {
      v5->_hasProblem = [v9 decodeBoolForKey:@"prob"];
    }

    if ([v9 containsValueForKey:@"ident"])
    {
      v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v5->_identifier;
      v5->_identifier = v10;
    }

    v12 = v9;
    if ([v12 containsValueForKey:@"awdl"])
    {
      v5->_needsAWDL = [v12 decodeBoolForKey:@"awdl"];
    }

    if ([v12 containsValueForKey:@"kb"])
    {
      v5->_needsKeyboard = [v12 decodeBoolForKey:@"kb"];
    }

    if ([v12 containsValueForKey:@"setup"])
    {
      v5->_needsSetup = [v12 decodeBoolForKey:@"setup"];
    }

    v13 = v12;
    if ([v13 containsValueForKey:@"oso"])
    {
      v5->_overrideScreenOff = [v13 decodeBoolForKey:@"oso"];
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"pf"])
    {
      v5->_problemFlags = [v14 decodeInt64ForKey:@"pf"];
    }

    if ([v14 containsValueForKey:@"st"])
    {
      v15 = [v14 decodeIntegerForKey:@"st"];
      v5->_serviceType = v15;
      if (v15 >= 0x100)
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = *MEMORY[0x1E695D940];
        v18 = _NSMethodExceptionProem();
        [v16 raise:v17 format:{@"%@: service type out-of-range: %ld", v18, v15}];
      }
    }

    v19 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v19 containsValueForKey:@"svid"])
    {
      v20 = [v19 decodeObjectOfClass:objc_opt_class() forKey:@"svid"];
      serviceUUID = v5->_serviceUUID;
      v5->_serviceUUID = v20;
    }

    v26 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_sessionFlags = v26;
    }

    if ([v19 containsValueForKey:@"wake"])
    {
      v5->_wakeDevice = [v19 decodeBoolForKey:@"wake"];
    }

    v22 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v22 containsValueForKey:@"wl"])
    {
      v5->_watchLocked = [v22 decodeBoolForKey:@"wl"];
    }

    v23 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  advertiseRate = self->_advertiseRate;
  v13 = coderCopy;
  if (advertiseRate)
  {
    [coderCopy encodeInteger:advertiseRate forKey:@"advR"];
    coderCopy = v13;
  }

  authTagOverride = self->_authTagOverride;
  if (authTagOverride)
  {
    [v13 encodeObject:authTagOverride forKey:@"ato"];
    coderCopy = v13;
  }

  if (self->_autoUnlockEnabled)
  {
    [v13 encodeBool:1 forKey:@"auE"];
    coderCopy = v13;
  }

  if (self->_autoUnlockWatch)
  {
    [v13 encodeBool:1 forKey:@"auW"];
    coderCopy = v13;
  }

  if (self->_deviceActionType)
  {
    [v13 encodeInteger:? forKey:?];
    coderCopy = v13;
  }

  if (self->_payloadDovePeace2)
  {
    [v13 encodeInt:? forKey:?];
    coderCopy = v13;
  }

  if (self->_deviceClassCode)
  {
    [v13 encodeInteger:? forKey:?];
    coderCopy = v13;
  }

  if (self->_deviceColorCode)
  {
    [v13 encodeInteger:? forKey:?];
    coderCopy = v13;
  }

  if (self->_deviceModelCode)
  {
    [v13 encodeInteger:? forKey:?];
    coderCopy = v13;
  }

  if (self->_duetSync)
  {
    [v13 encodeBool:1 forKey:@"ds"];
    coderCopy = v13;
  }

  if (self->_hasProblem)
  {
    [v13 encodeBool:1 forKey:@"prob"];
    coderCopy = v13;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v13 encodeObject:identifier forKey:@"ident"];
    coderCopy = v13;
  }

  if (self->_needsAWDL)
  {
    [v13 encodeBool:1 forKey:@"awdl"];
    coderCopy = v13;
  }

  if (self->_needsKeyboard)
  {
    [v13 encodeBool:1 forKey:@"kb"];
    coderCopy = v13;
  }

  if (self->_needsSetup)
  {
    [v13 encodeBool:1 forKey:@"setup"];
    coderCopy = v13;
  }

  if (self->_overrideScreenOff)
  {
    [v13 encodeBool:1 forKey:@"oso"];
    coderCopy = v13;
  }

  problemFlags = self->_problemFlags;
  if (problemFlags)
  {
    [v13 encodeInt64:problemFlags forKey:@"pf"];
    coderCopy = v13;
  }

  requestSSID = self->_requestSSID;
  if (requestSSID)
  {
    [v13 encodeObject:requestSSID forKey:@"rSSID"];
    coderCopy = v13;
  }

  if (self->_serviceType)
  {
    [v13 encodeInteger:? forKey:?];
    coderCopy = v13;
  }

  serviceUUID = self->_serviceUUID;
  if (serviceUUID)
  {
    [v13 encodeObject:serviceUUID forKey:@"svid"];
    coderCopy = v13;
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags)
  {
    [v13 encodeInteger:sessionFlags forKey:@"seFl"];
    coderCopy = v13;
  }

  targetAuthTag = self->_targetAuthTag;
  if (targetAuthTag)
  {
    [v13 encodeObject:targetAuthTag forKey:@"tATag"];
    coderCopy = v13;
  }

  if (self->_wakeDevice)
  {
    [v13 encodeBool:1 forKey:@"wake"];
    coderCopy = v13;
  }

  if (self->_watchLocked)
  {
    [v13 encodeBool:1 forKey:@"wl"];
    coderCopy = v13;
  }
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFService *)v5 _cleanup];
  }

  else
  {
    [(SFService *)self _cleanup];
    ucatCore = self->_ucatCore;
    if (ucatCore && (ucatCore->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucatCore = 0;
    }

    ucatCrypto = self->_ucatCrypto;
    if (ucatCrypto)
    {
      if ((ucatCrypto->var3 & 0x40000) != 0)
      {
        LogCategory_Remove();
        self->_ucatCrypto = 0;
      }
    }

    v7.receiver = self;
    v7.super_class = SFService;
    [(SFService *)&v7 dealloc];
  }
}

- (void)_cleanup
{
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  eventMessageHandler = self->_eventMessageHandler;
  self->_eventMessageHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairSetupCompletionHandler = self->_pairSetupCompletionHandler;
  self->_pairSetupCompletionHandler = 0;

  peerDisconnectedHandler = self->_peerDisconnectedHandler;
  self->_peerDisconnectedHandler = 0;

  receivedFramePeerHandler = self->_receivedFramePeerHandler;
  self->_receivedFramePeerHandler = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;

  requestMessageHandler = self->_requestMessageHandler;
  self->_requestMessageHandler = 0;

  responseMessageInternalHandler = self->_responseMessageInternalHandler;
  self->_responseMessageInternalHandler = 0;

  sessionStartedHandler = self->_sessionStartedHandler;
  self->_sessionStartedHandler = 0;

  sessionEndedHandler = self->_sessionEndedHandler;
  self->_sessionEndedHandler = 0;

  sessionSecuredHandler = self->_sessionSecuredHandler;
  self->_sessionSecuredHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  showPINHandlerEx = self->_showPINHandlerEx;
  self->_showPINHandlerEx = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (void)setAdvertiseRate:(int64_t)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SFService_setAdvertiseRate___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = rate;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setAutoUnlockEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFService_setAutoUnlockEnabled___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  enabledCopy = enabled;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setAutoUnlockWatch:(BOOL)watch
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__SFService_setAutoUnlockWatch___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  watchCopy = watch;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setDeviceActionType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SFService_setDeviceActionType___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  typeCopy = type;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setPayloadDovePeace2:(unsigned __int8)peace2
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFService_setPayloadDovePeace2___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  peace2Copy = peace2;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setDuetSync:(BOOL)sync
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__SFService_setDuetSync___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  syncCopy = sync;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)clearEncryptionInfoForPeer:(id)peer
{
  v3 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:peer];
  [v3 clearEncryptionInfo];
}

- (void)setHasProblem:(BOOL)problem
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFService_setHasProblem___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  problemCopy = problem;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setNeedsAWDL:(BOOL)l
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__SFService_setNeedsAWDL___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  lCopy = l;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setNeedsKeyboard:(BOOL)keyboard
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SFService_setNeedsKeyboard___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  keyboardCopy = keyboard;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setNeedsSetup:(BOOL)setup
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFService_setNeedsSetup___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  setupCopy = setup;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setProblemFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__SFService_setProblemFlags___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = flags;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setTargetAuthTag:(id)tag
{
  tagCopy = tag;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SFService_setTargetAuthTag___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = tagCopy;
  v5 = tagCopy;
  [(SFService *)self _performActivateSafeChange:v6];
}

- (void)setWakeDevice:(BOOL)device
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFService_setWakeDevice___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  deviceCopy = device;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setWatchLocked:(BOOL)locked
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__SFService_setWatchLocked___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  lockedCopy = locked;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)updateWithService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy advertiseRate])
  {
    self->_advertiseRate = [serviceCopy advertiseRate];
  }

  self->_autoUnlockEnabled = [serviceCopy autoUnlockEnabled];
  self->_autoUnlockWatch = [serviceCopy autoUnlockWatch];
  self->_deviceActionType = [serviceCopy deviceActionType];
  self->_payloadDovePeace2 = [serviceCopy payloadDovePeace2];
  self->_duetSync = [serviceCopy duetSync];
  self->_hasProblem = [serviceCopy hasProblem];
  self->_needsAWDL = [serviceCopy needsAWDL];
  self->_needsKeyboard = [serviceCopy needsKeyboard];
  self->_needsSetup = [serviceCopy needsSetup];
  self->_problemFlags = [serviceCopy problemFlags];
  self->_wakeDevice = [serviceCopy wakeDevice];
  self->_watchLocked = [serviceCopy watchLocked];
  targetAuthTag = [serviceCopy targetAuthTag];
  targetAuthTag = self->_targetAuthTag;
  self->_targetAuthTag = targetAuthTag;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SFService_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v34[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v31 = 0;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFService _activateWithCompletion:]", 30, "Activate\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_invalidateCalled)
  {
    v9 = 0;
    v20 = 4294960572;
  }

  else
  {
    v9 = self->_identifier;
    if (v9)
    {
      serviceType = self->_serviceType;
      if (!self->_serviceType)
      {
        serviceType = SFServiceIdentifierToType(v9);
        self->_serviceType = serviceType;
      }

      if (self->_serviceUUID || (SFServiceTypeToUUID(serviceType), v11 = objc_claimAutoreleasedReturnValue(), serviceUUID = self->_serviceUUID, self->_serviceUUID = v11, serviceUUID, self->_serviceUUID) || (SFServiceIdentifierToUUID(v9, &v31), v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_serviceUUID, self->_serviceUUID = v13, v14, self->_serviceUUID))
      {
        if (!self->_requestQueue)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          requestQueue = self->_requestQueue;
          self->_requestQueue = v15;
        }

        [(SFService *)self _ensureXPCStarted];
        self->_activateInProgress = 1;
        xpcCnx = self->_xpcCnx;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __37__SFService__activateWithCompletion___block_invoke;
        v29[3] = &unk_1E788BF88;
        v29[4] = self;
        v18 = completionCopy;
        v30 = v18;
        v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v29];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __37__SFService__activateWithCompletion___block_invoke_2;
        v27[3] = &unk_1E788BF88;
        v27[4] = self;
        v28 = v18;
        [v19 serviceActivate:self completion:v27];

        v31 = 0;
        goto LABEL_15;
      }

      v20 = 4294960588;
    }

    else
    {
      v20 = 4294960551;
    }
  }

  v31 = v20;
  v21 = self->_ucatCore;
  if (v21->var0 <= 60)
  {
    if (v21->var0 != -1)
    {
LABEL_21:
      LogPrintF(v21, "[SFService _activateWithCompletion:]", 60, "### Activate start failed: %#m\n", v20);
      goto LABEL_23;
    }

    if (_LogCategory_Initialize())
    {
      v21 = self->_ucatCore;
      v20 = v31;
      goto LABEL_21;
    }
  }

LABEL_23:
  if (completionCopy)
  {
    v22 = v31;
    if (v31)
    {
      v23 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v24;
      v25 = @"?";
      if (v24)
      {
        v25 = v24;
      }

      v34[0] = v25;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v26 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:v22 userInfo:v4];
    }

    else
    {
      v26 = 0;
    }

    (*(completionCopy + 2))(completionCopy, v26);
    if (v22)
    {
    }
  }

LABEL_15:

  os_activity_scope_leave(&state);
}

void __37__SFService__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  v4 = *(a1 + 32);
  if ((*(v4 + 11) & 1) == 0)
  {
    v5 = *(v4 + 32);
    if (*v5 <= 60)
    {
      v8 = v3;
      if (*v5 != -1)
      {
LABEL_4:
        LogPrintF(v5, "[SFService _activateWithCompletion:]_block_invoke", 60, "### Activate XPC failed: %{error}\n", v3);
        v3 = v8;
        goto LABEL_6;
      }

      v6 = _LogCategory_Initialize();
      v3 = v8;
      if (v6)
      {
        v5 = *(*(a1 + 32) + 32);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v7 = *(a1 + 40);
  if (v7)
  {
    v9 = v3;
    (*(v7 + 16))();
    v3 = v9;
  }
}

void __37__SFService__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  v4 = *(a1 + 32);
  v8 = v3;
  if (!v3)
  {
    [v4 _activated];
    goto LABEL_7;
  }

  if ((*(v4 + 11) & 1) == 0)
  {
    v5 = *(v4 + 32);
    if (*v5 <= 60)
    {
      if (*v5 != -1)
      {
LABEL_5:
        LogPrintF(v5, "[SFService _activateWithCompletion:]_block_invoke_2", 60, "### Activate failed: %{error}\n", v3);
LABEL_7:
        v3 = v8;
        goto LABEL_8;
      }

      v7 = _LogCategory_Initialize();
      v3 = v8;
      if (v7)
      {
        v5 = *(*(a1 + 32) + 32);
        goto LABEL_5;
      }
    }
  }

LABEL_8:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
    v3 = v8;
  }
}

- (void)_activated
{
  self->_activateCompleted = 1;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFService _activated]", 30, "Activated\n");
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    testListenerEndpoint = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = (testListenerEndpoint ? [v4 initWithListenerEndpoint:self->_testListenerEndpoint] : objc_msgSend(v4, "initWithMachServiceName:options:", @"com.apple.SharingServices", 0));
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__SFService__ensureXPCStarted__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __30__SFService__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_1E788B198;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEF00];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 10)
    {
      if (ucatCore->var0 != -1)
      {
LABEL_7:
        LogPrintF(ucatCore, "[SFService _ensureXPCStarted]", 10, "XPC started\n");
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->_ucatCore;
        goto LABEL_7;
      }
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 > 50)
  {
    goto LABEL_5;
  }

  if (ucatCore->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->_ucatCore;
LABEL_3:
    LogPrintF(ucatCore, "[SFService _interrupted]", 50, "### Interrupted\n");
  }

LABEL_5:
  *&self->_activateInProgress = 0;
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = self->_ucatCore;
    if (v6->var0 <= 50)
    {
      if (v6->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v6 = self->_ucatCore;
      }

      LogPrintF(v6, "[SFService _interrupted]", 50, "Restarting after interruption\n");
    }

LABEL_12:
    [(SFService *)self _ensureXPCStarted];
    self->_activateInProgress = 1;
    xpcCnx = self->_xpcCnx;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __25__SFService__interrupted__block_invoke;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __25__SFService__interrupted__block_invoke_2;
    v9[3] = &unk_1E788B238;
    v9[4] = self;
    [v8 serviceActivate:self completion:v9];

    os_activity_scope_leave(&state);
  }
}

void __25__SFService__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    if (*v4 <= 60)
    {
      v6 = v3;
      if (*v4 != -1)
      {
LABEL_4:
        LogPrintF(v4, "[SFService _interrupted]_block_invoke", 60, "### Restart failed: %{error}\n", v3);
        v3 = v6;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      v3 = v6;
      if (v5)
      {
        v4 = *(*(a1 + 32) + 32);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
}

void __25__SFService__interrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v7 = 0;
    [v4 _activated];
    goto LABEL_6;
  }

  v5 = v4[4];
  if (*v5 > 60)
  {
    goto LABEL_7;
  }

  v7 = v3;
  if (*v5 != -1)
  {
LABEL_4:
    LogPrintF(v5, "[SFService _interrupted]_block_invoke_2", 60, "### Restart failed: %{error}\n", v3);
LABEL_6:
    v3 = v7;
    goto LABEL_7;
  }

  v6 = _LogCategory_Initialize();
  v3 = v7;
  if (v6)
  {
    v5 = *(*(a1 + 32) + 32);
    goto LABEL_4;
  }

LABEL_7:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__SFService_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 11))
  {
    return;
  }

  *(v1 + 11) = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (*v4 <= 30)
  {
    if (*v4 != -1)
    {
LABEL_4:
      LogPrintF(v4, "[SFService invalidate]_block_invoke", 30, "Invalidating\n");
      v3 = *(a1 + 32);
      goto LABEL_6;
    }

    v5 = _LogCategory_Initialize();
    v3 = *(a1 + 32);
    if (v5)
    {
      v4 = *(v3 + 32);
      goto LABEL_4;
    }
  }

LABEL_6:
  if (*(v3 + 80))
  {
    [*(v3 + 80) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = 0;
  }

  else
  {

    [v3 _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 50)
    {
      if (ucatCore->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucatCore, "[SFService _invalidated]", 50, "### Unexpectedly invalidated\n");
        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->_ucatCore;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  [(NSMutableDictionary *)self->_requestQueue enumerateKeysAndObjectsUsingBlock:&__block_literal_global_65];
  [(NSMutableDictionary *)self->_requestQueue removeAllObjects];
  requestQueue = self->_requestQueue;
  self->_requestQueue = 0;

  sessions = self->_sessions;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__SFService__invalidated__block_invoke_2;
  v9[3] = &unk_1E788F430;
  v9[4] = self;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v9];
  [(NSMutableDictionary *)self->_sessions removeAllObjects];
  v6 = self->_sessions;
  self->_sessions = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(SFService *)self _cleanup];
  self->_invalidateDone = 1;
  v8 = self->_ucatCore;
  if (v8->var0 <= 30)
  {
    if (v8->var0 != -1)
    {
LABEL_11:
      LogPrintF(v8, "[SFService _invalidated]", 30, "Invalidated\n");
      return;
    }

    if (_LogCategory_Initialize())
    {
      v8 = self->_ucatCore;
      goto LABEL_11;
    }
  }
}

void __25__SFService__invalidated__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 responseHandler];

  if (v4)
  {
    v5 = [v3 responseHandler];
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v13 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v6 errorWithDomain:v7 code:-6723 userInfo:v11];
    (v5)[2](v5, v12, 0);
  }

  [v3 invalidate];
}

void __25__SFService__invalidated__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 272);
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v13 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v6 errorWithDomain:v7 code:-6723 userInfo:v11];
    (*(v5 + 16))(v5, v4, v12);
  }

  [v4 invalidate];
}

- (void)_performActivateSafeChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    dispatchQueue = selfCopy->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__SFService__performActivateSafeChange___block_invoke;
    v8[3] = &unk_1E788B318;
    v8[4] = selfCopy;
    v9 = changeCopy;
    dispatch_async(dispatchQueue, v8);

    os_activity_scope_leave(&state);
  }

  else
  {
    changeCopy[2](changeCopy);
  }

  objc_sync_exit(selfCopy);
}

void __40__SFService__performActivateSafeChange___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 80) remoteObjectProxy];
  [v2 serviceUpdate:*(a1 + 32)];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [eventCopy setIdentifier:uUID];

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__SFService_sendEvent___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_async(dispatchQueue, v8);
}

void __23__SFService_sendEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendEvent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 80) remoteObjectProxy];
    [v4 serviceSendEvent:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = *(v2 + 32);
  if (*v5 <= 60)
  {
    if (*v5 != -1)
    {
LABEL_5:
      LogPrintF(v5, "[SFService sendEvent:]_block_invoke", 60, "### Send event failed: %#m\n", 4294960551);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 32);
      goto LABEL_5;
    }
  }
}

- (void)sendRequest:(id)request
{
  requestCopy = request;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [requestCopy setIdentifier:uUID];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SFService_sendRequest___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v10 = requestCopy;
  v11 = uUID;
  v7 = uUID;
  v8 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __25__SFService_sendRequest___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 80))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(a1[4] + 80) remoteObjectProxy];
    [v4 serviceSendRequest:a1[5]];

    [*(a1[4] + 16) setObject:a1[5] forKeyedSubscript:a1[6]];
    os_activity_scope_leave(&state);

    return;
  }

  v5 = *(v2 + 32);
  if (*v5 <= 60)
  {
    if (*v5 != -1)
    {
LABEL_5:
      LogPrintF(v5, "[SFService sendRequest:]_block_invoke", 60, "### Send request failed: %#m\n", 4294960551);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(a1[4] + 32);
      goto LABEL_5;
    }
  }
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  identifier = [responseCopy identifier];

  if (identifier)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__SFService_sendResponse___block_invoke;
    block[3] = &unk_1E788A658;
    block[4] = self;
    v10 = responseCopy;
    v7 = responseCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v8 = FatalErrorF("Response without request identifier: %@", responseCopy);
    __26__SFService_sendResponse___block_invoke(v8);
  }
}

void __26__SFService_sendResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendResponse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 80) remoteObjectProxy];
    [v4 serviceSendResponse:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = *(v2 + 32);
  if (*v5 <= 60)
  {
    if (*v5 != -1)
    {
LABEL_5:
      LogPrintF(v5, "[SFService sendResponse:]_block_invoke", 60, "### Send response failed: %#m\n", 4294960551);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 32);
      goto LABEL_5;
    }
  }
}

- (void)sendToPeer:(id)peer flags:(unsigned int)flags object:(id)object
{
  flagsCopy = flags;
  peerCopy = peer;
  objectCopy = object;
  dispatchQueue = self->_dispatchQueue;
  if (flagsCopy)
  {
    v11 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v12 = __37__SFService_sendToPeer_flags_object___block_invoke;
  }

  else
  {
    v11 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v12 = __37__SFService_sendToPeer_flags_object___block_invoke_2;
  }

  v11[2] = v12;
  v11[3] = &unk_1E788BD88;
  v11[4] = self;
  v13 = peerCopy;
  v11[5] = v13;
  v14 = objectCopy;
  v11[6] = v14;
  dispatch_async(dispatchQueue, v11);
}

void __37__SFService_sendToPeer_flags_object___block_invoke(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v4 = v3;
  if (v3)
  {
    [v3 sendEncryptedObject:a1[6]];
  }

  else
  {
    __37__SFService_sendToPeer_flags_object___block_invoke_cold_1(v2);
  }
}

void __37__SFService_sendToPeer_flags_object___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v5 = v2;
  if (v2)
  {
    LOBYTE(v3) = [v2 sessionFlags];
  }

  else
  {
    v3 = *(*(a1 + 32) + 116);
  }

  if ((v3 & 2) != 0)
  {
    v4 = 29;
  }

  else
  {
    v4 = 5;
  }

  [*(a1 + 32) _sendToPeer:*(a1 + 40) type:v4 unencryptedObject:*(a1 + 48)];
}

- (void)_sendToPeer:(id)peer type:(unsigned __int8)type unencryptedObject:(id)object
{
  typeCopy = type;
  peerCopy = peer;
  objectCopy = object;
  v21 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  DataMutable = OPACKEncoderCreateDataMutable();
  if (!DataMutable)
  {
    [(SFService *)self _sendToPeer:peerCopy type:&state unencryptedObject:?];
    v11 = state.opaque[0];
    goto LABEL_17;
  }

  v11 = DataMutable;
  if (typeCopy == 29)
  {
    v20 = 0;
    v12 = NSDataCompress();
    v13 = 0;

    if (!v12)
    {
      [SFService _sendToPeer:type:unencryptedObject:];
      v11 = 0;
      goto LABEL_17;
    }

    v11 = v12;
  }

  if (self->_xpcCnx)
  {
    v14 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy serviceSendFrameType:typeCopy data:v11 peer:peerCopy];

    os_activity_scope_leave(&state);
  }

  else
  {
    sendFramePeerHandler = self->_sendFramePeerHandler;
    if (sendFramePeerHandler)
    {
      sendFramePeerHandler[2](sendFramePeerHandler, typeCopy, v11, peerCopy);
    }

    else
    {
      ucatCore = self->_ucatCore;
      if (ucatCore->var0 <= 60)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_17;
          }

          ucatCore = self->_ucatCore;
        }

        if (typeCopy > 0x41)
        {
          v18 = "?";
        }

        else
        {
          v18 = off_1E7890918[typeCopy];
        }

        LogPrintF(ucatCore, "[SFService _sendToPeer:type:unencryptedObject:]", 60, "### Send %s without connection\n", v18);
      }
    }
  }

LABEL_17:
}

- (void)sendToPeer:(id)peer type:(unsigned __int8)type data:(id)data
{
  peerCopy = peer;
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__SFService_sendToPeer_type_data___block_invoke;
  v13[3] = &unk_1E788F3E0;
  v13[4] = self;
  v14 = peerCopy;
  typeCopy = type;
  v15 = dataCopy;
  v11 = dataCopy;
  v12 = peerCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_sendToPeer:(id)peer type:(unsigned __int8)type data:(id)data
{
  typeCopy = type;
  peerCopy = peer;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_xpcCnx)
  {
    v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy serviceSendFrameType:typeCopy data:dataCopy peer:peerCopy];

    os_activity_scope_leave(&state);
  }

  else
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucatCore = self->_ucatCore;
      }

      if (typeCopy > 0x41)
      {
        v13 = "?";
      }

      else
      {
        v13 = off_1E7890918[typeCopy];
      }

      LogPrintF(ucatCore, "-[SFService _sendToPeer:type:data:]", 60, "### Send frame %s, %ld bytes to %@ without connection\n", v13, [dataCopy length], peerCopy);
    }
  }

LABEL_11:
}

- (void)pairSetupWithFlags:(unsigned int)flags peer:(id)peer
{
  peerCopy = peer;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFService_pairSetupWithFlags_peer___block_invoke;
  block[3] = &unk_1E788EC90;
  block[4] = self;
  v10 = peerCopy;
  flagsCopy = flags;
  v8 = peerCopy;
  dispatch_async(dispatchQueue, block);
}

void __37__SFService_pairSetupWithFlags_peer___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 pairSetupWithFlags:*(a1 + 48)];
  }

  else
  {
    __37__SFService_pairSetupWithFlags_peer___block_invoke_cold_1(v2);
  }
}

- (void)pairSetupTryPIN:(id)n peer:(id)peer
{
  nCopy = n;
  peerCopy = peer;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFService_pairSetupTryPIN_peer___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = peerCopy;
  v13 = nCopy;
  v9 = nCopy;
  v10 = peerCopy;
  dispatch_async(dispatchQueue, block);
}

void __34__SFService_pairSetupTryPIN_peer___block_invoke(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v4 = v3;
  if (v3)
  {
    [v3 tryPIN:a1[6]];
  }

  else
  {
    __34__SFService_pairSetupTryPIN_peer___block_invoke_cold_1(v2);
  }
}

- (void)serviceError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, errorCopy);
  }
}

- (void)servicePeerDisconnected:(id)disconnected error:(id)error
{
  disconnectedCopy = disconnected;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:disconnectedCopy];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucatCore = self->_ucatCore;
    }

    v10 = SFNearbyBLEServiceTypeToString(self->_serviceType);
    LogPrintF(ucatCore, "[SFService servicePeerDisconnected:error:]", 30, "Peer disconnected %@, service %s: %{error}\n", disconnectedCopy, v10, errorCopy);
  }

LABEL_7:
  [(NSMutableDictionary *)self->_sessions removeObjectForKey:disconnectedCopy];
  [v8 invalidate];
  sessionEndedHandler = self->_sessionEndedHandler;
  if (sessionEndedHandler)
  {
    sessionEndedHandler[2](sessionEndedHandler, v8, errorCopy);
  }

LABEL_10:
}

- (void)serviceReceivedEvent:(id)event
{
  eventCopy = event;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    v5 = eventCopy;
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFService serviceReceivedEvent:]", 10, "Received event: %@\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      v5 = eventCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  eventMessageHandler = self->_eventMessageHandler;
  v7 = eventCopy;
  if (eventMessageHandler)
  {
    eventMessageHandler[2](eventMessageHandler, eventCopy);
    v7 = eventCopy;
  }
}

- (void)serviceReceivedFrameType:(unsigned __int8)type data:(id)data peer:(id)peer
{
  typeCopy = type;
  dataCopy = data;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:peerCopy];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    goto LABEL_16;
  }

  v12 = objc_alloc_init(SFDevice);
  [(SFDevice *)v12 setIdentifier:peerCopy];
  v10 = objc_alloc_init(SFServiceSession);
  [(SFSession *)v10 setDispatchQueue:self->_dispatchQueue];
  if (self->_label)
  {
    [(SFSession *)v10 setLabel:?];
  }

  [(SFSession *)v10 setPeer:peerCopy];
  [(SFSession *)v10 setPeerDevice:v12];
  [(SFServiceSession *)v10 setService:self];
  [(SFSession *)v10 setServiceType:self->_serviceType];
  [(SFSession *)v10 setSessionFlags:self->_sessionFlags];
  sessions = self->_sessions;
  if (!sessions)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = self->_sessions;
    self->_sessions = v14;

    sessions = self->_sessions;
  }

  [(NSMutableDictionary *)sessions setObject:v10 forKeyedSubscript:peerCopy];
  [(SFServiceSession *)v10 activate];
  v11 = typeCopy == 23;
  if (typeCopy == 23)
  {
    [(SFServiceSession *)v10 receivedStartRequest:dataCopy];
  }

  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucatCore = self->_ucatCore;
    }

    sessionID = [(SFSession *)v10 sessionID];
    v18 = SFNearbyBLEServiceTypeToString(self->_serviceType);
    LogPrintF(ucatCore, "[SFService serviceReceivedFrameType:data:peer:]", 30, "Activate session 0x%08X from %@, service %s\n", sessionID, peerCopy, v18);
  }

LABEL_13:
  sessionStartedHandler = self->_sessionStartedHandler;
  if (sessionStartedHandler)
  {
    sessionStartedHandler[2](sessionStartedHandler, v10);
  }

LABEL_16:
  [(SFSession *)v10 setHeartbeatLastTicks:mach_absolute_time()];
  if (typeCopy <= 21)
  {
    if (typeCopy == 20)
    {
      [(SFServiceSession *)v10 setSendLastTicks:mach_absolute_time()];
      selfCopy2 = self;
      v22 = peerCopy;
      v23 = 20;
LABEL_32:
      [(SFService *)selfCopy2 _sendToPeer:v22 type:v23 data:dataCopy];
      goto LABEL_33;
    }

    if (typeCopy != 21)
    {
LABEL_29:
      [(SFServiceSession *)v10 sessionReceivedFrameType:typeCopy data:dataCopy];
      goto LABEL_33;
    }

    v20 = self->_ucatCore;
    if (v20->var0 <= 50)
    {
      if (v20->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_31;
        }

        v20 = self->_ucatCore;
      }

      LogPrintF(v20, "[SFService serviceReceivedFrameType:data:peer:]", 50, "Sending heartbeat ACK\n");
    }

LABEL_31:
    [(SFServiceSession *)v10 setSendLastTicks:mach_absolute_time()];
    selfCopy2 = self;
    v22 = peerCopy;
    v23 = 22;
    goto LABEL_32;
  }

  if (typeCopy == 22)
  {
    goto LABEL_33;
  }

  if (typeCopy != 23)
  {
    if (typeCopy == 24)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (!v11)
  {
    [(SFServiceSession *)v10 receivedStartRequest:dataCopy];
  }

LABEL_33:
  [(SFServiceSession *)v10 sendLastTicks];
  UpTicksToSecondsF();
  if (v24 <= 15.0)
  {
    goto LABEL_41;
  }

  v25 = NSRandomData();
  if (v25)
  {
    v26 = self->_ucatCore;
    if (v26->var0 <= 50)
    {
      if (v26->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v26 = self->_ucatCore;
      }

      LogPrintF(v26, "[SFService serviceReceivedFrameType:data:peer:]", 50, "Sending heartbeat alive\n");
    }

LABEL_39:
    [(SFServiceSession *)v10 setSendLastTicks:mach_absolute_time()];
    [(SFService *)self _sendToPeer:peerCopy type:30 data:v25];
  }

LABEL_41:
}

- (void)serviceReceivedRequest:(id)request
{
  requestCopy = request;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    v5 = requestCopy;
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFService serviceReceivedRequest:]", 10, "Received request: %@\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      v5 = requestCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  requestMessageHandler = self->_requestMessageHandler;
  v7 = requestCopy;
  if (requestMessageHandler)
  {
    requestMessageHandler[2](requestMessageHandler, requestCopy);
    v7 = requestCopy;
  }
}

- (void)serviceReceivedResponse:(id)response
{
  responseCopy = response;
  identifier = [responseCopy identifier];
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFService serviceReceivedResponse:]", 10, "Received response: %@\n", responseCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!identifier)
  {
    v10 = 4294960588;
LABEL_15:
    [(SFService *)&self->_ucatCore serviceReceivedResponse:v10];
    goto LABEL_10;
  }

  v6 = [(NSMutableDictionary *)self->_requestQueue objectForKeyedSubscript:identifier];
  if (!v6)
  {
    v10 = 4294960569;
    goto LABEL_15;
  }

  v7 = v6;
  responseHandler = [v6 responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [v7 responseHandler];
    (responseHandler2)[2](responseHandler2, 0, responseCopy);
  }

  [(NSMutableDictionary *)self->_requestQueue removeObjectForKey:identifier];

LABEL_10:
}

- (void)serviceSessionFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  peer = [failedCopy peer];
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      v9 = SFNearbyBLEServiceTypeToString(self->_serviceType);
      LogPrintF(ucatCore, "[SFService serviceSessionFailed:error:]", 30, "### Session failed %@, service %s: %{error}\n", peer, v9, errorCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (peer)
  {
    [(NSMutableDictionary *)self->_sessions removeObjectForKey:peer];
  }

  [failedCopy invalidate];
  sessionEndedHandler = self->_sessionEndedHandler;
  if (sessionEndedHandler)
  {
    sessionEndedHandler[2](sessionEndedHandler, failedCopy, errorCopy);
  }
}

- (int)setEncryptionReadKey:(const char *)key readKeyLen:(unint64_t)len writeKey:(const char *)writeKey writeKeyLen:(unint64_t)keyLen peer:(id)peer
{
  OUTLINED_FUNCTION_7_2();
  v13 = [*(v11 + 24) objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 setEncryptionReadKey:v10 readKeyLen:v9 writeKey:v8 writeKeyLen:v7];
  }

  else
  {
    v15 = -6727;
  }

  return v15;
}

- (void)setLabel:(id)label
{
  v11 = 0;
  v10 = 0;
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  ASPrintF(&v10, "%s-%s", self->_ucatCore->var4, [(NSString *)self->_label UTF8String]);
  if (v10)
  {
    v6 = OUTLINED_FUNCTION_6();
    free(v10);
    if (!v11)
    {
      ucatCore = self->_ucatCore;
      if (ucatCore && (ucatCore->var3 & 0x40000) != 0)
      {
        LogCategory_Remove();
      }

      self->_ucatCore = v6;
      ASPrintF(&v10, "%s-%s", self->_ucatCrypto->var4, [(NSString *)self->_label UTF8String]);
      if (v10)
      {
        v8 = OUTLINED_FUNCTION_6();
        free(v10);
        if (!v11)
        {
          ucatCrypto = self->_ucatCrypto;
          if (ucatCrypto)
          {
            if ((ucatCrypto->var3 & 0x40000) != 0)
            {
              LogCategory_Remove();
            }
          }

          self->_ucatCrypto = v8;
        }
      }
    }
  }
}

uint64_t __37__SFService_sendToPeer_flags_object___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_19(a1);
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_5_7();
    if (v4)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*v2 + 32);
    }

    return LogPrintF(v7, "[SFService sendToPeer:flags:object:]_block_invoke", 60, "### Send encrypted object to %@ without session\n", *v1);
  }

  return result;
}

- (void)_sendToPeer:type:unencryptedObject:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_17();
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v2 = *(v1 + 32);
    }

    LogPrintF(v2, "[SFService _sendToPeer:type:unencryptedObject:]", 60, "### Unencrypted compress failed: %{error}\n", v0);
  }

LABEL_6:
}

- (void)_sendToPeer:(uint64_t)a3 type:(void *)a4 unencryptedObject:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_17();
  if (v11 ^ v12 | v10)
  {
    v13 = v8;
    v14 = v7;
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v6 = *(a1 + 32);
    }

    LogPrintF(v6, "[SFService _sendToPeer:type:unencryptedObject:]", 60, "### Send unencrypted to %@ encode failed: %#m\n", v13, *v14);
  }

LABEL_6:
  *a4 = 0;
}

uint64_t __37__SFService_pairSetupWithFlags_peer___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_19(a1);
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_5_7();
    if (v4)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*v2 + 32);
    }

    return LogPrintF(v7, "[SFService pairSetupWithFlags:peer:]_block_invoke", 60, "### Send encrypted object to %@ without session\n", *v1);
  }

  return result;
}

uint64_t __34__SFService_pairSetupTryPIN_peer___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_19(a1);
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_5_7();
    if (v4)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*v2 + 32);
    }

    return LogPrintF(v7, "[SFService pairSetupTryPIN:peer:]_block_invoke", 60, "### Send encrypted object to %@ without session\n", *v1);
  }

  return result;
}

- (int)serviceReceivedResponse:(int *)a1 .cold.1(int **a1, uint64_t a2)
{
  result = *a1;
  if (*result <= 50)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "[SFService serviceReceivedResponse:]", 50, "### Receive response error: %#m\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *a1;
      return LogPrintF(result, "[SFService serviceReceivedResponse:]", 50, "### Receive response error: %#m\n", a2);
    }
  }

  return result;
}

@end