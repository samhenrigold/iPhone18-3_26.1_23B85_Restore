@interface SFPasswordSharingService
+ (unsigned)passwordSharingAvailability;
- (BOOL)__activateCalled;
- (BOOL)__invalidateCalled;
- (BOOL)disabledViaConfig;
- (SFPasswordSharingService)init;
- (SFPasswordSharingServiceDelegate)delegate;
- (id)messageForDisplayName:(id)name deviceName:(id)deviceName info:(id)info;
- (int)_runServiceStart;
- (uint64_t)_sendPasswordReceived;
- (void)__testReceivedObject:(id)object withFlags:(unsigned int)flags;
- (void)_cleanup;
- (void)_handleReceivedPassword:(id)password;
- (void)_handleSessionStarted:(id)started;
- (void)_handleUserNotificationResponse:(int)response;
- (void)_passInfoToDelegate:(id)delegate;
- (void)_promptUserWithInfo:(id)info message:(id)message;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_run;
- (void)_sendPasswordDeclinedWithError:(int)error;
- (void)_sendPasswordReceived;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFPasswordSharingService

+ (unsigned)passwordSharingAvailability
{
  v2 = dispatch_queue_create("com.apple.Sharing.wpsClientQueue", 0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v4 = objc_alloc_init(SFClient);
  [(SFClient *)v4 setDispatchQueue:v2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SFPasswordSharingService_passwordSharingAvailability__block_invoke;
  v9[3] = &unk_1E7890260;
  v11 = &v17;
  v12 = &v13;
  v5 = v3;
  v10 = v5;
  [(SFClient *)v4 wifiPasswordSharingAvailabilityWithCompletion:v9];
  v6 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v5, v6);
  [(SFClient *)v4 invalidate];
  if (v14[3])
  {
    if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFPasswordSharingService, "+[SFPasswordSharingService passwordSharingAvailability]", 60, "Availability check timed out\n");
    }

    v7 = 1;
    *(v18 + 6) = 1;
  }

  else
  {
    v7 = *(v18 + 6);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __55__SFPasswordSharingService_passwordSharingAvailability__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v6 = v5;
  if (v5 && gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __55__SFPasswordSharingService_passwordSharingAvailability__block_invoke_cold_1(v6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (SFPasswordSharingService)init
{
  v6.receiver = self;
  v6.super_class = SFPasswordSharingService;
  v2 = [(SFPasswordSharingService *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_shareTime = -1.0;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFPasswordSharingService *)v3 _cleanup];
  }

  else
  {
    [(SFPasswordSharingService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFPasswordSharingService;
    [(SFPasswordSharingService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  promptedInfo = self->_promptedInfo;
  self->_promptedInfo = 0;

  self->_serviceState = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFPasswordSharingService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __36__SFPasswordSharingService_activate__block_invoke(uint64_t a1)
{
  Int64 = CFPrefs_GetInt64();
  result = [*(a1 + 32) disabledViaConfig];
  if (!Int64 || (result & 1) != 0)
  {
    if (gLogCategory_SFPasswordSharingService <= 50)
    {
      if (gLogCategory_SFPasswordSharingService != -1)
      {
        return __36__SFPasswordSharingService_activate__block_invoke_cold_2();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __36__SFPasswordSharingService_activate__block_invoke_cold_2();
      }
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      __36__SFPasswordSharingService_activate__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 8) = 1;
    return [*(a1 + 32) _run];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFPasswordSharingService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__SFPasswordSharingService_invalidate__block_invoke(uint64_t a1)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(v2 + 64) * 1000.0);
  v17[0] = @"_cat";
  v17[1] = @"_op";
  v18[0] = @"PasswordSharing";
  v18[1] = @"ServiceInvalidate";
  v17[2] = @"serviceState";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 48)];
  v18[2] = v4;
  v17[3] = @"durationMS";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v18[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  SFDashboardLogJSON(v6);

  v15[0] = @"serviceState";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 48)];
  v15[1] = @"durationMS";
  v16[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v16[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  SFMetricsLog(@"com.apple.sharing.PasswordSharingServiceInvalidate", v9);

  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __38__SFPasswordSharingService_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  [*(*(a1 + 32) + 16) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;

  [*(*(a1 + 32) + 40) invalidate];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  return [*(a1 + 32) _cleanup];
}

- (int)_runServiceStart
{
  serviceState = self->_serviceState;
  if (!serviceState)
  {
    if (gLogCategory_SFPasswordSharingService <= 30)
    {
      if (gLogCategory_SFPasswordSharingService != -1 || (serviceState = _LogCategory_Initialize(), serviceState))
      {
        [(SFPasswordSharingService *)serviceState _runServiceStart];
      }
    }

    self->_serviceState = 1;
    [(SFService *)self->_service invalidate];
    v5 = objc_alloc_init(SFService);
    service = self->_service;
    self->_service = v5;

    [(SFService *)self->_service setAdvertiseRate:50];
    [(SFService *)self->_service setDeviceActionType:8];
    [(SFService *)self->_service setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_service setFixedPIN:@"9zfCcnJgD*sK&h7h7Xa1z*IU^2U%zKTg"];
    [(SFService *)self->_service setIdentifier:@"com.apple.sharing.PasswordSharing"];
    [(SFService *)self->_service setLabel:@"SFPasswordSharingService"];
    [(SFService *)self->_service setNeedsSetup:1];
    [(SFService *)self->_service setRequestSSID:self->_networkName];
    [(SFService *)self->_service setSessionFlags:20];
    [(SFService *)self->_service setInterruptionHandler:&__block_literal_global_60];
    [(SFService *)self->_service setInvalidationHandler:&__block_literal_global_176_0];
    [(SFService *)self->_service setPeerDisconnectedHandler:&__block_literal_global_180];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_4;
    v14[3] = &unk_1E788FAA0;
    v14[4] = self;
    [(SFService *)self->_service setReceivedObjectHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_5;
    v13[3] = &unk_1E788CA68;
    v13[4] = self;
    [(SFService *)self->_service setSessionStartedHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_6;
    v12[3] = &unk_1E788CA90;
    v12[4] = self;
    [(SFService *)self->_service setSessionEndedHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_7;
    v11[3] = &unk_1E788CA68;
    v11[4] = self;
    [(SFService *)self->_service setSessionSecuredHandler:v11];
    v7 = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_8;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    [(SFService *)v7 activateWithCompletion:v10];
    LODWORD(serviceState) = self->_serviceState;
  }

  if (serviceState == 4)
  {
    LODWORD(serviceState) = 4;
  }

  else if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (v8 = _LogCategory_Initialize(), LODWORD(serviceState) = self->_serviceState, v8))
    {
      LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _runServiceStart]", 30, "SFService hasn't succeeded yet (%d)", serviceState);
      LODWORD(serviceState) = self->_serviceState;
    }
  }

  return serviceState;
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke(uint64_t result, uint64_t a2)
{
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __44__SFPasswordSharingService__runServiceStart__block_invoke_cold_1();
  }
}

uint64_t __44__SFPasswordSharingService__runServiceStart__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1)
    {
      return __44__SFPasswordSharingService__runServiceStart__block_invoke_2_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __44__SFPasswordSharingService__runServiceStart__block_invoke_2_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _runServiceStart]_block_invoke_3", 50, "Peer disconnected %@: %{error}\n", v5, v4);
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __44__SFPasswordSharingService__runServiceStart__block_invoke_6_cold_1(v10, v5);
  }

  v6 = *(*(a1 + 32) + 24);
  v7 = [v10 peer];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    v9 = v3;
    if (gLogCategory_SFPasswordSharingService != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
    {
      __44__SFPasswordSharingService__runServiceStart__block_invoke_7_cold_1(v4);
      v4 = v9;
    }
  }

  if (!*(*(a1 + 32) + 24))
  {
    v10 = v4;
    v6 = [v4 peer];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v4 = v10;
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v7 = 0;
    if (gLogCategory_SFPasswordSharingService <= 30)
    {
      if (gLogCategory_SFPasswordSharingService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __44__SFPasswordSharingService__runServiceStart__block_invoke_8_cold_2(v3, v5, v4);
      }
    }

    *(*(a1 + 32) + 48) = 4;
    [*(a1 + 32) _run];
    goto LABEL_10;
  }

  if (gLogCategory_SFPasswordSharingService <= 90)
  {
    v7 = v3;
    if (gLogCategory_SFPasswordSharingService != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      __44__SFPasswordSharingService__runServiceStart__block_invoke_8_cold_1(v5);
LABEL_10:
      v5 = v7;
    }
  }
}

- (void)_handleReceivedPassword:(id)password
{
  v12 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _handleReceivedPassword:?];
  }

  [(NSDate *)self->_shareClock timeIntervalSinceNow];
  v6 = v5;
  [(NSDate *)self->_shareClock timeIntervalSinceNow];
  if (v6 < 0.0)
  {
    v7 = -v7;
  }

  self->_shareTime = v7;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = NSDictionaryGetNSNumber();
  if (v8 && v9)
  {
    v11 = objc_alloc_init(SFPasswordSharingInfo);
    [(SFPasswordSharingInfo *)v11 setChannel:v10];
    [(SFPasswordSharingInfo *)v11 setNetworkName:v8];
    [(SFPasswordSharingInfo *)v11 setPsk:v9];
    [(SFPasswordSharingService *)self _sendPasswordReceived];
    [(SFPasswordSharingService *)self _passInfoToDelegate:v11];
  }

  else
  {
    if (gLogCategory_SFPasswordSharingService <= 90 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingService _handleReceivedPassword:];
    }

    [(SFPasswordSharingService *)self _sendPasswordDeclinedWithError:4294960554];
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _handleSessionStarted:startedCopy];
  }

  date = [MEMORY[0x1E695DF00] date];
  shareClock = self->_shareClock;
  self->_shareClock = date;

  if (!self->_peer)
  {
    peer = [startedCopy peer];
    peer = self->_peer;
    self->_peer = peer;
  }
}

- (void)_handleUserNotificationResponse:(int)response
{
  if (response == 2)
  {
    [(SFPasswordSharingService *)self _sendPasswordDeclinedWithError:4294960573];
  }

  else if (response == 1)
  {
    [(SFPasswordSharingService *)self _passInfoToDelegate:self->_promptedInfo];
    promptedInfo = self->_promptedInfo;
    self->_promptedInfo = 0;
  }

  [(SFUserAlert *)self->_notification invalidate];
  notification = self->_notification;
  self->_notification = 0;
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  objectCopy = object;
  v7 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _receivedObject:Int64Ranged flags:?];
  }

  if (Int64Ranged == 5)
  {
    [(SFPasswordSharingService *)self _handleReceivedPassword:objectCopy];
  }

  else if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [(SFPasswordSharingService *)Int64Ranged _receivedObject:Int64Ranged flags:?];
  }
}

- (void)_sendPasswordReceived
{
  if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _sendPasswordReceived]", a3, "### Trying to send message without service?\n");
  }
}

- (void)_sendPasswordDeclinedWithError:(int)error
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (self->_service)
  {
    if (self->_peer)
    {
      v4 = *&error;
      if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
      {
        [SFPasswordSharingService _sendPasswordDeclinedWithError:v4];
      }

      service = self->_service;
      peer = self->_peer;
      v10[0] = MEMORY[0x1E695E110];
      v9[0] = @"re";
      v9[1] = @"er";
      v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
      v9[2] = @"op";
      v10[1] = v7;
      v10[2] = &unk_1F1D7D060;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
      [(SFService *)service sendToPeer:peer flags:1 object:v8];
    }

    else
    {
      [gLogCategory_SFPasswordSharingService _sendPasswordDeclinedWithError:a2, *&error];
    }
  }

  else
  {
    [(SFPasswordSharingService *)self _sendPasswordDeclinedWithError:a2, *&error];
  }
}

- (void)_passInfoToDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (gLogCategory_SFPasswordSharingService <= 30)
    {
      if (gLogCategory_SFPasswordSharingService != -1 || (WeakRetained = _LogCategory_Initialize(), WeakRetained))
      {
        [(SFPasswordSharingService *)WeakRetained _passInfoToDelegate:v5, v6];
      }
    }

    [v7 service:self receivedNetworkInfo:delegateCopy];
  }
}

- (void)_promptUserWithInfo:(id)info message:(id)message
{
  infoCopy = info;
  messageCopy = message;
  v9 = SFIsGreenTeaDevice(messageCopy, v8);
  v10 = @"PASSWORD_ACCEPT_PROMPT_TITLE";
  if (v9)
  {
    v10 = @"PASSWORD_ACCEPT_PROMPT_TITLE_WLAN";
  }

  v11 = v10;
  v14 = v11;
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (v11 = _LogCategory_Initialize(), v11))
    {
      [(SFPasswordSharingService *)v11 _promptUserWithInfo:v12 message:v13];
    }
  }

  [(SFUserAlert *)self->_notification invalidate];
  v15 = objc_alloc_init(SFUserAlert);
  notification = self->_notification;
  self->_notification = v15;

  v17 = SFLocalizedStringForKey(@"PASSWORD_ACCEPT_PROMPT_OTHER_BUTTON");
  [(SFUserAlert *)self->_notification setAlternateButtonTitle:v17];

  v18 = SFLocalizedStringForKey(@"PASSWORD_ACCEPT_PROMPT_DEFAULT_BUTTON");
  [(SFUserAlert *)self->_notification setDefaultButtonTitle:v18];

  [(SFUserAlert *)self->_notification setDispatchQueue:self->_dispatchQueue];
  [(SFUserAlert *)self->_notification setMessage:messageCopy];

  v19 = SFLocalizedStringForKey(v14);
  [(SFUserAlert *)self->_notification setTitle:v19];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__SFPasswordSharingService__promptUserWithInfo_message___block_invoke;
  v22[3] = &unk_1E788CB60;
  v22[4] = self;
  [(SFUserAlert *)self->_notification setResponseHandler:v22];
  promptedInfo = self->_promptedInfo;
  self->_promptedInfo = infoCopy;
  v21 = infoCopy;

  [(SFUserAlert *)self->_notification present];
}

- (BOOL)disabledViaConfig
{
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFPasswordSharingService *)self disabledViaConfig];
    }
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  isPasswordProximityAutoFillRequestingAllowed = [mEMORY[0x1E69ADFB8] isPasswordProximityAutoFillRequestingAllowed];

  if ((isPasswordProximityAutoFillRequestingAllowed & 1) == 0 && gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFPasswordSharingService *)v5 disabledViaConfig];
    }
  }

  return isPasswordProximityAutoFillRequestingAllowed ^ 1;
}

- (id)messageForDisplayName:(id)name deviceName:(id)deviceName info:(id)info
{
  nameCopy = name;
  deviceNameCopy = deviceName;
  infoCopy = info;
  v11 = infoCopy;
  if (nameCopy)
  {
    if (SFIsGreenTeaDevice(infoCopy, v10))
    {
      v12 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_WLAN";
    }

    else
    {
      v12 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE";
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = SFLocalizedStringForKey(v12);
    networkName = [v11 networkName];
    [v13 stringWithFormat:v14, nameCopy, networkName];
  }

  else
  {
    v16 = SFIsGreenTeaDevice(infoCopy, v10);
    v17 = MEMORY[0x1E696AEC0];
    if (deviceNameCopy)
    {
      if (v16)
      {
        v18 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_DEVICE_WLAN";
      }

      else
      {
        v18 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_DEVICE";
      }

      v14 = SFLocalizedStringForKey(v18);
      networkName = [v11 networkName];
      [v17 stringWithFormat:v14, deviceNameCopy, networkName];
    }

    else
    {
      if (v16)
      {
        v19 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_GENERIC_WLAN";
      }

      else
      {
        v19 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_GENERIC";
      }

      v14 = SFLocalizedStringForKey(v19);
      networkName = [v11 networkName];
      [v17 stringWithFormat:v14, networkName, v22];
    }
  }
  v20 = ;

  return v20;
}

- (BOOL)__activateCalled
{
  selfCopy = self;
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFPasswordSharingService *)self __activateCalled];
    }
  }

  return selfCopy->_activateCalled;
}

- (BOOL)__invalidateCalled
{
  selfCopy = self;
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFPasswordSharingService *)self __invalidateCalled];
    }
  }

  return selfCopy->_invalidateCalled;
}

- (void)__testReceivedObject:(id)object withFlags:(unsigned int)flags
{
  v4 = *&flags;
  objectCopy = object;
  v9 = objectCopy;
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (objectCopy = _LogCategory_Initialize(), objectCopy))
    {
      [(SFPasswordSharingService *)objectCopy __testReceivedObject:v7 withFlags:v8];
    }
  }

  [(SFPasswordSharingService *)self _receivedObject:v9 flags:v4];
}

- (SFPasswordSharingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {

    [(SFPasswordSharingService *)self _runServiceStart];
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_6_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 peer];
  LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _runServiceStart]_block_invoke_6", 30, "Session ended with %@: %{error}\n", v3, a2);
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_7_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _runServiceStart]_block_invoke_7", 30, "Session secured with %@\n", v1);
}

- (void)_handleReceivedPassword:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 56)];
  LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _handleReceivedPassword:]", 50, "Received password: %f\n", v2);
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _handleSessionStarted:]", 30, "Session started with %@\n", v1);
}

- (uint64_t)_receivedObject:(uint64_t)a3 flags:.cold.1(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _receivedObject:flags:]", 90, "### No request opcode %#m\n", a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      a3 = *a2;
      return LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _receivedObject:flags:]", 90, "### No request opcode %#m\n", a3);
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(unsigned __int8)a1 flags:(char)a2 .cold.2(unsigned __int8 a1, char a2)
{
  if (a1 > 6u)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E7890280[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _receivedObject:flags:]", 50, "Received object. %s\n", v2);
}

- (uint64_t)_receivedObject:(uint64_t)a3 flags:.cold.3(unsigned __int8 a1, char a2, uint64_t a3)
{
  if (a1 > 6u)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E7890280[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _receivedObject:flags:]", 60, "Unsupported opCode: %s (%ld)", v3, a3);
}

- (uint64_t)_sendPasswordReceived
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _sendPasswordReceived]", a3, "### Trying to send message without peer ID?\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _sendPasswordReceived]", a3, "### Trying to send message without peer ID?\n");
    }
  }

  return result;
}

- (uint64_t)_sendPasswordDeclinedWithError:(uint64_t)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _sendPasswordDeclinedWithError:]", a3, "### Trying to send message without peer ID?\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _sendPasswordDeclinedWithError:]", a3, "### Trying to send message without peer ID?\n");
    }
  }

  return result;
}

- (void)_sendPasswordDeclinedWithError:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFPasswordSharingService, "[SFPasswordSharingService _sendPasswordDeclinedWithError:]", a3, "### Trying to send message without service?\n");
  }
}

@end