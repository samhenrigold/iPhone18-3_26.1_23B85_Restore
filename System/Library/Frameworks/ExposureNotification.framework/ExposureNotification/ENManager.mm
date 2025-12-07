@interface ENManager
+ (ENAuthorizationStatus)authorizationStatus;
- (BOOL)_setActivationPropertiesOnRequest:(id)request error:(id *)error;
- (ENManager)init;
- (NSProgress)detectExposuresWithConfiguration:(ENExposureConfiguration *)configuration diagnosisKeyURLs:(NSArray *)diagnosisKeyURLs completionHandler:(ENDetectExposuresHandler)completionHandler;
- (NSProgress)getExposureInfoFromSummary:(ENExposureDetectionSummary *)summary userExplanation:(NSString *)userExplanation completionHandler:(ENGetExposureInfoHandler)completionHandler;
- (NSProgress)getExposureWindowsFromSummary:(ENExposureDetectionSummary *)summary completionHandler:(ENGetExposureWindowsHandler)completionHandler;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)level;
- (void)_activateInitial:(BOOL)initial completionHandler:(id)handler;
- (void)_checkRemoteDialogueRequirementForRequestType:(int64_t)type completionHandler:(id)handler;
- (void)_entitlementCheckUpdate:(id)update;
- (void)_entitlementCheckWithCompletion:(id)completion;
- (void)_getDetectionHistoryFilesCompleted:(id)completed completion:(id)completion;
- (void)_getDetectionHistorySessionsCompleted:(id)completed completion:(id)completion;
- (void)_getDiagnosisKeysReply:(id)reply completionHandler:(id)handler;
- (void)_getExposureInfoCompleted:(id)completed completionHandler:(id)handler;
- (void)_getExposureWindowsCompleted:(id)completed completionHandler:(id)handler;
- (void)_getExposureWindowsFromIndex:(unint64_t)index completionHandler:(id)handler;
- (void)_handleRemotePresentationRequest:(id)request completionHandler:(id)handler;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_populateDetectionHistoryChecks:(id)checks forSessions:(id)sessions sessionIndex:(unint64_t)index completion:(id)completion;
- (void)_preAuthorizeDiagnosisKeysWithSessionID:(id)d completionHandler:(id)handler;
- (void)_reactivate;
- (void)_setPreAuthorizeDiagnosisKeysEnabled:(BOOL)enabled region:(id)region metadata:(id)metadata completionHandler:(id)handler;
- (void)_tccCheckWithCompletion:(id)completion;
- (void)_xpcHandleActivity:(id)activity;
- (void)_xpcHandlePreAuthorizedDiagnosisKeysAvailable:(id)available;
- (void)_xpcHandleStatusChanged:(id)changed initial:(BOOL)initial;
- (void)_xpcReceivedEvent:(id)event;
- (void)_xpcReceivedMessage:(id)message;
- (void)activateWithCompletionHandler:(ENErrorHandler)completionHandler;
- (void)activeRegionWithCompletion:(id)completion;
- (void)agencyConfigurationForLocale:(id)locale withCompletion:(id)completion;
- (void)allAgencyConfigurationsForLocale:(id)locale withCompletion:(id)completion;
- (void)allRegionConfigurationsWithCompletion:(id)completion;
- (void)allRegionServerConfigurationsWithCompletion:(id)completion;
- (void)clearDeveloperServerConfigurationWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)diagnosticControl:(id)control completion:(id)completion;
- (void)diagnosticShow:(id)show completion:(id)completion;
- (void)didEnterLegalConsentPage:(id)page completionHandler:(id)handler;
- (void)downloadAndDetectExposure:(BOOL)exposure completionHandler:(id)handler;
- (void)exposureDetectionActivate:(id)activate completion:(id)completion;
- (void)exposureDetectionAddKeys:(id)keys completion:(id)completion;
- (void)exposureDetectionFileActivate:(id)activate completion:(id)completion;
- (void)exposureDetectionFileAdd:(id)add signatureURL:(id)l completion:(id)completion;
- (void)exposureDetectionFileFinishWithCompletion:(id)completion;
- (void)exposureDetectionFinishWithCompletion:(id)completion;
- (void)exposureDetectionGetExposureInfoCompleted:(id)completed completion:(id)completion;
- (void)exposureDetectionGetExposureInfoWithMaximumCount:(unint64_t)count completion:(id)completion;
- (void)exposureNotificationGetStatusForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)fetchConfigurationsForRegion:(id)region fetchReason:(unsigned int)reason completion:(id)completion;
- (void)fetchConfigurationsForRegion:(id)region forceServerFetch:(BOOL)fetch completion:(id)completion;
- (void)fetchSubdivisionsForCountry:(id)country completion:(id)completion;
- (void)fetchTestMetadataForSession:(id)session completionHandler:(id)handler;
- (void)finishTestVerificationForSession:(id)session userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler;
- (void)getAllEntitiesWithCompletion:(id)completion;
- (void)getDataVaultSizeWithCompletion:(id)completion;
- (void)getDetectionHistoryChecksWithCompletion:(id)completion;
- (void)getDetectionHistoryFilesForSession:(id)session completion:(id)completion;
- (void)getDetectionHistorySessionsWithCompletion:(id)completion;
- (void)getDiagnosisKeysForTesting:(BOOL)testing forceRefresh:(BOOL)refresh completionHandler:(id)handler;
- (void)getEntitiesWithCompletion:(id)completion;
- (void)getInfoForKey:(id)key completion:(id)completion;
- (void)getLastExposureNotificationWithCompletion:(id)completion;
- (void)getPreAuthorizeDiagnosisKeysEnabledForRegion:(id)region completionHandler:(id)handler;
- (void)getRegionHistoryEnabledWithCompletionHandler:(id)handler;
- (void)getRegionMonitorEnabledWithCompletionHandler:(id)handler;
- (void)getRegionVisitHistoryWithCompletion:(id)completion;
- (void)getTravelStatusEnabledForRegion:(id)region completionHandler:(id)handler;
- (void)getTravelStatusEnabledWithCompletionHandler:(id)handler;
- (void)getUserTraveledWithCompletionHandler:(ENGetUserTraveledHandler)completionHandler;
- (void)invalidate;
- (void)onboardingDidStartForRegion:(id)region withSource:(id)source completion:(id)completion;
- (void)pauseWithExpiration:(double)expiration completionHandler:(id)handler;
- (void)preAuthorizeDiagnosisKeysWithCompletionHandler:(ENErrorHandler)completionHandler;
- (void)regionConfigurationWithCompletion:(id)completion;
- (void)regionHistoryWithCompletion:(id)completion;
- (void)regionServerConfigurationWithCompletion:(id)completion;
- (void)remotePresentationRequestDidComplete:(id)complete completion:(id)completion;
- (void)requestPreAuthorizedDiagnosisKeysWithCompletionHandler:(ENErrorHandler)completionHandler;
- (void)resetDataWithFlags:(unsigned int)flags completionHandler:(id)handler;
- (void)sendChaffTestVerificationRequestForRegion:(id)region completionHandler:(id)handler;
- (void)setActiveEntityWithAppBundleID:(id)d completion:(id)completion;
- (void)setActiveEntityWithRegion:(id)region completion:(id)completion;
- (void)setActiveRegion:(id)region completion:(id)completion;
- (void)setAutomaticRegionSwitchEnabled:(BOOL)enabled completion:(id)completion;
- (void)setAvailabilityAlertEnabled:(BOOL)enabled completion:(id)completion;
- (void)setCurrentActiveApp:(id)app completion:(id)completion;
- (void)setDeveloperServerConfiguration:(id)configuration completionHandler:(id)handler;
- (void)setExposureNotificationEnabled:(BOOL)enabled completionHandler:(ENErrorHandler)completionHandler;
- (void)setPaused:(BOOL)paused completionHandler:(id)handler;
- (void)setRegionConsent:(int64_t)consent completionHandler:(id)handler;
- (void)setRegionConsent:(int64_t)consent region:(id)region completionHandler:(id)handler;
- (void)setRegionHistoryEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setRegionUserConsent:(id)consent region:(id)region completionHandler:(id)handler;
- (void)setTravelStatusEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setTravelStatusEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler;
- (void)setWeeklySummaryAlertEnabled:(BOOL)enabled completion:(id)completion;
- (void)showBuddyForRegion:(id)region completionHandler:(id)handler;
- (void)startSelfReportWebSession:(id)session completionHandler:(id)handler;
- (void)startTestVerificationSessionWithCode:(id)code region:(id)region completionHandler:(id)handler;
- (void)triggerNotificationOfType:(int)type appBundleIdentifier:(id)identifier classificationName:(id)name interval:(id)interval region:(id)region completion:(id)completion;
- (void)verifyTextMessage:(id)message completionHandler:(id)handler;
@end

@implementation ENManager

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    [ENExposureDetectionSession dealloc];
    [(ENManager *)v2 .cxx_destruct];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ENManager;
    [(ENManager *)&v4 dealloc];
  }
}

- (ENManager)init
{
  v5.receiver = self;
  v5.super_class = ENManager;
  v2 = [(ENManager *)&v5 init];
  if (v2)
  {
    v2->_clientID = CUXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (!v4)
  {
    v5 = self->_testListenerEndpoint;
    v6 = v5;
    if (v5)
    {
      mach_service = xpc_connection_create_from_endpoint(v5);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.ExposureNotification", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__ENManager__ensureXPCStarted__block_invoke;
    v9[3] = &unk_278A4B6D0;
    v9[4] = self;
    v4 = mach_service;
    v10 = v4;
    xpc_connection_set_event_handler(v4, v9);
    xpc_connection_activate(v4);
  }

  return v4;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__ENManager_invalidate__block_invoke;
  block[3] = &unk_278A4B058;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__23__ENManager_invalidate__block_invoke(void *result)
{
  v2 = result + 4;
  v1 = result[4];
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      __23__ENManager_invalidate__block_invoke_cold_1();
    }

    v3 = *(*v2 + 40);
    if (v3)
    {
      xpc_connection_cancel(v3);
    }

    v4 = *v2;

    return [v4 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    v10 = MEMORY[0x2383EE560](self->_invalidationHandler, a2);
    activityHandler = self->_activityHandler;
    self->_activityHandler = 0;

    diagnosisKeysAvailableHandler = self->_diagnosisKeysAvailableHandler;
    self->_diagnosisKeysAvailableHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    statusChangedHandler = self->_statusChangedHandler;
    self->_statusChangedHandler = 0;

    v9 = v10;
    if (v10)
    {
      v7 = (*(v10 + 16))(v10);
      v9 = v10;
    }

    self->_invalidateDone = 1;
    if (gLogCategory_ENManager <= 30)
    {
      if (gLogCategory_ENManager != -1 || (v7 = _LogCategory_Initialize(), v9 = v10, v7))
      {
        [(ENManager *)v7 _invalidated];
        v9 = v10;
      }
    }
  }
}

void *__30__ENManager__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result _xpcReceivedEvent:a2];
  }

  return result;
}

+ (ENAuthorizationStatus)authorizationStatus
{
  v2 = TCCAccessPreflight();
  if (!v2)
  {
    return 3;
  }

  if (v2 != 1)
  {
    return (TCCAccessRestricted() != 0);
  }

  if (TCCAccessRestricted())
  {
    return 1;
  }

  return 2;
}

- (id)descriptionWithLevel:(int)level
{
  v3 = "CID 0x%X";
  if ((level & 0x8000000) == 0)
  {
    v3 = "ENManager, CID 0x%X";
  }

  v4 = NSPrintF(v3, a2, self->_clientID);

  return v4;
}

- (void)activateWithCompletionHandler:(ENErrorHandler)completionHandler
{
  v4 = completionHandler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ENManager_activateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__ENManager_activateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    ENErrorF(10, "activate already called");
  }

  else
  {
    if (*(v2 + 32) != 1)
    {
      goto LABEL_12;
    }

    ENErrorF(10, "activate after invalidate");
  }
  v3 = ;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      __43__ENManager_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();

    return;
  }

LABEL_12:
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    __43__ENManager_activateWithCompletionHandler___block_invoke_cold_2();
  }

  *(*(a1 + 32) + 8) = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  [v4 _activateInitial:1 completionHandler:v5];
}

- (void)_activateInitial:(BOOL)initial completionHandler:(id)handler
{
  initialCopy = initial;
  handlerCopy = handler;
  if (initialCopy)
  {
    v7 = xpc_copy_entitlement_for_self();
    if (v7)
    {
      self->_isTestEntitlement = 1;
      if (gLogCategory_ENManager <= 50 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
      {
        [ENManager _activateInitial:completionHandler:];
      }
    }
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "mTyp", 10);
  v16 = 0;
  v9 = [(ENManager *)self _setActivationPropertiesOnRequest:v8 error:&v16];
  v10 = v16;
  if (v9)
  {
    _ensureXPCStarted = [(ENManager *)self _ensureXPCStarted];
    dispatchQueue = self->_dispatchQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__ENManager__activateInitial_completionHandler___block_invoke;
    v13[3] = &unk_278A4B688;
    v15 = initialCopy;
    v13[4] = self;
    v14 = handlerCopy;
    xpc_connection_send_message_with_reply(_ensureXPCStarted, v8, dispatchQueue, v13);
  }

  else
  {
    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _activateInitial:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

void __48__ENManager__activateInitial_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _entitlementCheckUpdate:v3];
  }

  if (!v3)
  {
    [*(a1 + 32) _xpcHandleStatusChanged:v4 initial:*(a1 + 48)];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_setActivationPropertiesOnRequest:(id)request error:(id *)error
{
  requestCopy = request;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  if (infoDictionary)
  {
    CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    v8 = requestCopy;
    uTF8String = [v7 UTF8String];
    if (uTF8String)
    {
      xpc_dictionary_set_string(v8, "aiRegion", uTF8String);
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    xpc_dictionary_set_int64(requestCopy, "apiV", Int64Ranged);
  }

  v11 = dyld_program_sdk_at_least();
  xpc_dictionary_set_BOOL(requestCopy, "preV2", v11 != 1);

  return 1;
}

- (void)_reactivate
{
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager _reactivate];
  }

  [(ENManager *)self _activateInitial:0 completionHandler:&__block_literal_global_0];
}

void __24__ENManager__reactivate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory__ENManager <= 90)
    {
      v6 = v2;
      if (gLogCategory__ENManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __24__ENManager__reactivate__block_invoke_cold_1();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (gLogCategory_ENManager <= 30)
  {
    v6 = 0;
    if (gLogCategory_ENManager != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      __24__ENManager__reactivate__block_invoke_cold_2();
      goto LABEL_13;
    }
  }
}

- (void)_interrupted
{
  if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager _interrupted];
  }

  [(ENManager *)self _xpcHandleStatusChanged:0 initial:0];
  if (self->_activateCalled)
  {

    [(ENManager *)self _reactivate];
  }
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager _invalidate];
  }

  self->_invalidateCalled = 1;
  [(ENExposureDetectionClientSession *)self->_detectionSession invalidate];
  detectionSession = self->_detectionSession;
  self->_detectionSession = 0;

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    xpc_connection_cancel(xpcCnx);
  }

  [(ENManager *)self _invalidated];
}

- (void)_entitlementCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_exposureNotificationStatus == 4 && !self->_isTestEntitlement)
  {
    goto LABEL_15;
  }

  pthread_mutex_lock(&gENManagerLock);
  v5 = gENManagerEntitledState;
  pthread_mutex_unlock(&gENManagerLock);
  if (v5 == 5)
  {
    v9 = ENErrorF(3, "Requires entitlement: %s", "com.apple.private.exposure-notification");
    completionCopy[2](completionCopy, v9);

    goto LABEL_11;
  }

  if (v5 == 6)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
LABEL_15:
    if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _entitlementCheckWithCompletion:];
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "mTyp", 13);
    _ensureXPCStarted = [(ENManager *)self _ensureXPCStarted];
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__ENManager__entitlementCheckWithCompletion___block_invoke;
    handler[3] = &unk_278A4B6F8;
    handler[4] = self;
    v11 = completionCopy;
    xpc_connection_send_message_with_reply(_ensureXPCStarted, v6, dispatchQueue, handler);
  }

LABEL_11:
}

void __45__ENManager__entitlementCheckWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  [*(a1 + 32) _entitlementCheckUpdate:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)_entitlementCheckUpdate:(id)update
{
  updateCopy = update;
  v6 = updateCopy;
  if (updateCopy)
  {
    domain = [updateCopy domain];
    if ([domain isEqual:@"ENErrorDomain"])
    {
      code = [v6 code];

      if (code == 3)
      {
        pthread_mutex_lock(&gENManagerLock);
        gENManagerEntitledState = 5;
        pthread_mutex_unlock(&gENManagerLock);
        if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
        {
          [ENManager _entitlementCheckUpdate:];
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _entitlementCheckUpdate:];
    }
  }

  else
  {
    pthread_mutex_lock(&gENManagerLock);
    gENManagerEntitledState = 6;
    pthread_mutex_unlock(&gENManagerLock);
    if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _entitlementCheckUpdate:];
    }
  }

LABEL_16:
}

- (void)getUserTraveledWithCompletionHandler:(ENGetUserTraveledHandler)completionHandler
{
  v4 = completionHandler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager getUserTraveledWithCompletionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ENManager_getUserTraveledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __50__ENManager_getUserTraveledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ENManager_getUserTraveledWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278A4B748;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _tccCheckWithCompletion:v4];
}

void __50__ENManager_getUserTraveledWithCompletionHandler___block_invoke_2(uint64_t a1, size_t count)
{
  if (count)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "mTyp", 15);
    v4 = [*(a1 + 32) _ensureXPCStarted];
    v5 = *(*(a1 + 32) + 80);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __50__ENManager_getUserTraveledWithCompletionHandler___block_invoke_3;
    handler[3] = &unk_278A4B720;
    v8 = *(a1 + 40);
    xpc_connection_send_message_with_reply(v4, v3, v5, handler);
  }
}

void __50__ENManager_getUserTraveledWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    xpc_dictionary_get_BOOL(xdict, "userTraveled");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_tccCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ENManager__tccCheckWithCompletion___block_invoke;
  v6[3] = &unk_278A4B748;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(ENManager *)self _entitlementCheckWithCompletion:v6];
}

void __37__ENManager__tccCheckWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      __37__ENManager__tccCheckWithCompletion___block_invoke_cold_1();
    }

    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "mTyp", 70);
    v5 = [*(a1 + 32) _ensureXPCStarted];
    v6 = *(*(a1 + 32) + 80);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__ENManager__tccCheckWithCompletion___block_invoke_2;
    handler[3] = &unk_278A4B720;
    v8 = *(a1 + 40);
    xpc_connection_send_message_with_reply(v5, v4, v6, handler);
  }
}

void __37__ENManager__tccCheckWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)_xpcReceivedEvent:(id)event
{
  eventCopy = event;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    [(ENManager *)self _xpcReceivedMessage:eventCopy];
  }

  else if (eventCopy == MEMORY[0x277D863F0])
  {
    [(ENManager *)self _interrupted];
  }

  else if (eventCopy == MEMORY[0x277D863F8])
  {
    if (!self->_invalidateCalled && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _xpcReceivedEvent:];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(ENManager *)self _invalidated];
  }

  else
  {
    v4 = CUXPCDecodeNSErrorIfNeeded();
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = ENErrorF(1, "XPC event error");
    }

    v8 = v6;

    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [(ENManager *)v8 _xpcReceivedEvent:eventCopy];
    }
  }
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "mTyp");
  if (int64 == 12)
  {
    [(ENManager *)self _xpcHandleStatusChanged:messageCopy initial:0];
    goto LABEL_7;
  }

  if (int64 == 24)
  {
    [(ENManager *)self _xpcHandlePreAuthorizedDiagnosisKeysAvailable:messageCopy];
    goto LABEL_7;
  }

  v5 = messageCopy;
  if (int64 == 19)
  {
    [(ENManager *)self _xpcHandleActivity:messageCopy];
LABEL_7:
    v5 = messageCopy;
    goto LABEL_8;
  }

  if (gLogCategory__ENManager <= 90)
  {
    if (gLogCategory__ENManager != -1 || (v6 = _LogCategory_Initialize(), v5 = messageCopy, v6))
    {
      [ENManager _xpcReceivedMessage:];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_xpcHandleActivity:(id)activity
{
  uint64 = xpc_dictionary_get_uint64(activity, "actF");
  v5 = MEMORY[0x2383EE560](self->_activityHandler);
  if (v5)
  {
    v6 = v5;
    v5[2](v5, uint64);
    v5 = v6;
  }
}

- (void)_xpcHandlePreAuthorizedDiagnosisKeysAvailable:(id)available
{
  availableCopy = available;
  v5 = MEMORY[0x2383EE560](self->_diagnosisKeysAvailableHandler);
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke;
    v12[3] = &unk_278A4AF10;
    v12[4] = &v13;
    v6 = MEMORY[0x2383EE560](v12);
    v7 = xpc_dictionary_get_value(availableCopy, "tekA");
    v8 = v7;
    if (v7 && MEMORY[0x2383EE9C0](v7) == MEMORY[0x277D86440])
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2;
      applier[3] = &unk_278A4B1E8;
      applier[4] = v9;
      applier[5] = &v13;
      xpc_array_apply(v8, applier);
      if (!v14[5])
      {
        if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
        {
          [v9 count];
          LogPrintF_safe();
        }

        (v5)[2](v5, v9);
      }
    }

    else
    {
      v10 = ENErrorF(15, "TEK non-array");
      v9 = v14[5];
      v14[5] = v10;
    }

    v6[2](v6);
    _Block_object_dispose(&v13, 8);
  }
}

void __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
  {
    v1 = CUPrintNSError();
    LogPrintF_safe();
  }
}

BOOL __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENTemporaryExposureKey alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENTemporaryExposureKey *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2_cold_2(a1 + 40);
    }
  }

  else
  {
    __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)_xpcHandleStatusChanged:(id)changed initial:(BOOL)initial
{
  changedCopy = changed;
  analyticsEnabled = self->_analyticsEnabled;
  v32 = self->_analyticsEnabled;
  if (changedCopy)
  {
    CUXPCDecodeBool();
    v8 = 0;
    if (v8 && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _xpcHandleStatusChanged:initial:];
    }
  }

  else
  {
    v8 = 0;
    v32 = 0;
  }

  v9 = v32;
  v10 = v32 != analyticsEnabled;
  if (v32 != analyticsEnabled)
  {
    if (gLogCategory_ENManager <= 30)
    {
      if (gLogCategory_ENManager != -1)
      {
LABEL_11:
        if (analyticsEnabled)
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        if (v9)
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        v28 = v11;
        v29 = v12;
        LogPrintF_safe();
        goto LABEL_19;
      }

      if (_LogCategory_Initialize())
      {
        v9 = v32;
        goto LABEL_11;
      }
    }

LABEL_19:
    [(ENManager *)self willChangeValueForKey:@"analyticsEnabled", v28, v29];
    self->_analyticsEnabled = v32;
    [(ENManager *)self didChangeValueForKey:@"analyticsEnabled"];
  }

  exposureNotificationEnabled = self->_exposureNotificationEnabled;
  v31 = self->_exposureNotificationEnabled;

  if (changedCopy)
  {
    CUXPCDecodeBool();
    v14 = 0;
    if (v14 && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _xpcHandleStatusChanged:initial:];
    }
  }

  else
  {
    v14 = 0;
    v31 = 0;
  }

  v15 = v31;
  if (v31 != exposureNotificationEnabled)
  {
    if (gLogCategory_ENManager <= 30)
    {
      if (gLogCategory_ENManager != -1)
      {
LABEL_30:
        if (exposureNotificationEnabled)
        {
          v16 = "yes";
        }

        else
        {
          v16 = "no";
        }

        if (v15)
        {
          v17 = "yes";
        }

        else
        {
          v17 = "no";
        }

        v28 = v16;
        v29 = v17;
        LogPrintF_safe();
        goto LABEL_38;
      }

      if (_LogCategory_Initialize())
      {
        v15 = v31;
        goto LABEL_30;
      }
    }

LABEL_38:
    [(ENManager *)self willChangeValueForKey:@"exposureNotificationEnabled", v28, v29];
    self->_exposureNotificationEnabled = v31;
    [(ENManager *)self didChangeValueForKey:@"exposureNotificationEnabled"];
    v10 = 1;
  }

  exposureNotificationPaused = self->_exposureNotificationPaused;
  v30 = self->_exposureNotificationPaused;

  if (changedCopy)
  {
    CUXPCDecodeBool();
    v19 = 0;
    if (v19 && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _xpcHandleStatusChanged:initial:];
    }
  }

  else
  {
    v19 = 0;
    v30 = 0;
  }

  v20 = v30;
  if (v30 != exposureNotificationPaused)
  {
    if (gLogCategory_ENManager <= 30)
    {
      if (gLogCategory_ENManager != -1)
      {
LABEL_49:
        if (exposureNotificationPaused)
        {
          v21 = "yes";
        }

        else
        {
          v21 = "no";
        }

        if (v20)
        {
          v22 = "yes";
        }

        else
        {
          v22 = "no";
        }

        v28 = v21;
        v29 = v22;
        LogPrintF_safe();
        goto LABEL_57;
      }

      if (_LogCategory_Initialize())
      {
        v20 = v30;
        goto LABEL_49;
      }
    }

LABEL_57:
    [(ENManager *)self willChangeValueForKey:@"exposureNotificationPaused", v28, v29];
    self->_exposureNotificationPaused = v30;
    [(ENManager *)self didChangeValueForKey:@"exposureNotificationPaused"];
    v10 = 1;
  }

  exposureNotificationStatus = self->_exposureNotificationStatus;

  if (changedCopy)
  {
    if (CUXPCDecodeSInt64RangedEx() == 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = exposureNotificationStatus;
    }

    v25 = 0;
    if (v25 && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _xpcHandleStatusChanged:initial:];
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  if (v24 != exposureNotificationStatus)
  {
    if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _xpcHandleStatusChanged:initial:];
    }

    [(ENManager *)self willChangeValueForKey:@"exposureNotificationStatus"];
    self->_exposureNotificationStatus = v24;
    [(ENManager *)self didChangeValueForKey:@"exposureNotificationStatus"];
    v10 = 1;
  }

  if (v10 && !initial)
  {
    v26 = MEMORY[0x2383EE560](self->_statusChangedHandler);
    v27 = v26;
    if (v26)
    {
      (*(v26 + 16))(v26);
    }
  }
}

- (void)setExposureNotificationEnabled:(BOOL)enabled completionHandler:(ENErrorHandler)completionHandler
{
  v6 = completionHandler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setExposureNotificationEnabled:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ENManager_setExposureNotificationEnabled_completionHandler___block_invoke;
  block[3] = &unk_278A4B798;
  block[4] = self;
  v10 = v6;
  v11 = enabled;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void __62__ENManager_setExposureNotificationEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ENManager_setExposureNotificationEnabled_completionHandler___block_invoke_2;
  v4[3] = &unk_278A4B770;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _tccCheckWithCompletion:v4];
}

void __62__ENManager_setExposureNotificationEnabled_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }

  else
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "mTyp", 11);
    xpc_dictionary_set_BOOL(v3, "enbd", *(a1 + 48));
    v4 = [*(a1 + 32) _ensureXPCStarted];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 80);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__ENManager_setExposureNotificationEnabled_completionHandler___block_invoke_3;
    v9[3] = &unk_278A4B6F8;
    v9[4] = v6;
    v10 = v5;
    xpc_connection_send_message_with_reply(v4, v3, v7, v9);
  }
}

void __62__ENManager_setExposureNotificationEnabled_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    [*(a1 + 32) _xpcHandleStatusChanged:v4 initial:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setPaused:(BOOL)paused completionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setPaused:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ENManager_setPaused_completionHandler___block_invoke;
  block[3] = &unk_278A4B798;
  pausedCopy = paused;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __41__ENManager_setPaused_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 14);
  xpc_dictionary_set_BOOL(v2, "paus", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ENManager_setPaused_completionHandler___block_invoke_2;
  v7[3] = &unk_278A4B6F8;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

void __41__ENManager_setPaused_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    [*(a1 + 32) _xpcHandleStatusChanged:v4 initial:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pauseWithExpiration:(double)expiration completionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager pauseWithExpiration:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ENManager_pauseWithExpiration_completionHandler___block_invoke;
  block[3] = &unk_278A4B0F8;
  expirationCopy = expiration;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __51__ENManager_pauseWithExpiration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 14);
  xpc_dictionary_set_BOOL(v2, "paus", 1);
  xpc_dictionary_set_double(v2, "dura", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ENManager_pauseWithExpiration_completionHandler___block_invoke_2;
  v7[3] = &unk_278A4B6F8;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

void __51__ENManager_pauseWithExpiration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    [*(a1 + 32) _xpcHandleStatusChanged:v4 initial:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getPreAuthorizeDiagnosisKeysEnabledForRegion:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager getPreAuthorizeDiagnosisKeysEnabledForRegion:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ENManager_getPreAuthorizeDiagnosisKeysEnabledForRegion_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = regionCopy;
  v9 = handlerCopy;
  v10 = regionCopy;
  dispatch_async(dispatchQueue, block);
}

void __76__ENManager_getPreAuthorizeDiagnosisKeysEnabledForRegion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 210);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v5 = v10;
  if (v4)
  {
    xpc_dictionary_set_data(v2, "regionData", [v4 bytes], objc_msgSend(v4, "length"));
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__ENManager_getPreAuthorizeDiagnosisKeysEnabledForRegion_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __76__ENManager_getPreAuthorizeDiagnosisKeysEnabledForRegion_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    xpc_dictionary_get_BOOL(xdict, "enbd");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_setPreAuthorizeDiagnosisKeysEnabled:(BOOL)enabled region:(id)region metadata:(id)metadata completionHandler:(id)handler
{
  regionCopy = region;
  metadataCopy = metadata;
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30)
  {
    if (gLogCategory_ENManager != -1 || _LogCategory_Initialize())
    {
      [ENManager _setPreAuthorizeDiagnosisKeysEnabled:region:metadata:completionHandler:];
    }

    if (gLogCategory_ENManager <= 10 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ENManager__setPreAuthorizeDiagnosisKeysEnabled_region_metadata_completionHandler___block_invoke;
  block[3] = &unk_278A4B7E8;
  enabledCopy = enabled;
  v18 = metadataCopy;
  v19 = regionCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = regionCopy;
  v16 = metadataCopy;
  dispatch_async(dispatchQueue, block);
}

void __84__ENManager__setPreAuthorizeDiagnosisKeysEnabled_region_metadata_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 211);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 64));
  if (*(a1 + 32))
  {
    xpc_dictionary_set_cf_object();
  }

  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v5 = v10;
  if (v4)
  {
    xpc_dictionary_set_data(v2, "regionData", [v4 bytes], objc_msgSend(v4, "length"));
    v6 = [*(a1 + 48) _ensureXPCStarted];
    v7 = *(*(a1 + 48) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __84__ENManager__setPreAuthorizeDiagnosisKeysEnabled_region_metadata_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 56);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __84__ENManager__setPreAuthorizeDiagnosisKeysEnabled_region_metadata_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)getRegionHistoryEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager getRegionHistoryEnabledWithCompletionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ENManager_getRegionHistoryEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __58__ENManager_getRegionHistoryEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 56);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__ENManager_getRegionHistoryEnabledWithCompletionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __58__ENManager_getRegionHistoryEnabledWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    xpc_dictionary_get_BOOL(xdict, "enbd");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setRegionHistoryEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setRegionHistoryEnabled:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ENManager_setRegionHistoryEnabled_completionHandler___block_invoke;
  block[3] = &unk_278A4B798;
  enabledCopy = enabled;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__ENManager_setRegionHistoryEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 57);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__ENManager_setRegionHistoryEnabled_completionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __55__ENManager_setRegionHistoryEnabled_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)getRegionMonitorEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager getRegionMonitorEnabledWithCompletionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ENManager_getRegionMonitorEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __58__ENManager_getRegionMonitorEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 61);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__ENManager_getRegionMonitorEnabledWithCompletionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __58__ENManager_getRegionMonitorEnabledWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    xpc_dictionary_get_BOOL(xdict, "enbd");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getTravelStatusEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager getTravelStatusEnabledWithCompletionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ENManager_getTravelStatusEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__ENManager_getTravelStatusEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 17);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__ENManager_getTravelStatusEnabledWithCompletionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __57__ENManager_getTravelStatusEnabledWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    xpc_dictionary_get_BOOL(xdict, "enbd");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getTravelStatusEnabledForRegion:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager getTravelStatusEnabledForRegion:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ENManager_getTravelStatusEnabledForRegion_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = regionCopy;
  v9 = handlerCopy;
  v10 = regionCopy;
  dispatch_async(dispatchQueue, block);
}

void __63__ENManager_getTravelStatusEnabledForRegion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 17);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__ENManager_getTravelStatusEnabledForRegion_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __63__ENManager_getTravelStatusEnabledForRegion_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (!v3)
  {
    xpc_dictionary_get_BOOL(xdict, "enbd");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setTravelStatusEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setTravelStatusEnabled:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ENManager_setTravelStatusEnabled_completionHandler___block_invoke;
  block[3] = &unk_278A4B798;
  enabledCopy = enabled;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __54__ENManager_setTravelStatusEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 18);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__ENManager_setTravelStatusEnabled_completionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __54__ENManager_setTravelStatusEnabled_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setTravelStatusEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setTravelStatusEnabled:region:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__ENManager_setTravelStatusEnabled_region_completionHandler___block_invoke;
  v13[3] = &unk_278A4B810;
  enabledCopy = enabled;
  selfCopy = self;
  v16 = handlerCopy;
  v14 = regionCopy;
  v11 = handlerCopy;
  v12 = regionCopy;
  dispatch_async(dispatchQueue, v13);
}

void __61__ENManager_setTravelStatusEnabled_region_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 18);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 56));
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__ENManager_setTravelStatusEnabled_region_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __61__ENManager_setTravelStatusEnabled_region_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (NSProgress)detectExposuresWithConfiguration:(ENExposureConfiguration *)configuration diagnosisKeyURLs:(NSArray *)diagnosisKeyURLs completionHandler:(ENDetectExposuresHandler)completionHandler
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = configuration;
  v9 = diagnosisKeyURLs;
  v10 = completionHandler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager detectExposuresWithConfiguration:v9 diagnosisKeyURLs:? completionHandler:?];
  }

  v11 = objc_alloc_init(ENExposureDetectionClientSession);
  [(ENExposureDetectionClientSession *)v11 setCompletionHandler:v10];
  [(ENExposureDetectionClientSession *)v11 setConfiguration:v8];
  [(ENExposureDetectionClientSession *)v11 setDiagnosisKeyURLs:v9];
  [(ENExposureDetectionClientSession *)v11 setDispatchQueue:self->_dispatchQueue];
  [(ENExposureDetectionClientSession *)v11 setManager:self];
  v12 = objc_alloc(MEMORY[0x277CCAC48]);
  v18 = @"ENProgressOwnerKey";
  v19[0] = self;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = [v12 initWithParent:0 userInfo:v13];

  [(ENExposureDetectionClientSession *)v11 setProgress:v14];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ENManager_detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandler___block_invoke;
  block[3] = &unk_278A4B838;
  block[4] = self;
  block[5] = v11;
  dispatch_async(dispatchQueue, block);

  return v14;
}

uint64_t __81__ENManager_detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) && gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    __81__ENManager_detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandler___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(*(a1 + 32) + 16) invalidate];
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v4 = *(a1 + 40);

  return [v4 activate];
}

- (NSProgress)getExposureInfoFromSummary:(ENExposureDetectionSummary *)summary userExplanation:(NSString *)userExplanation completionHandler:(ENGetExposureInfoHandler)completionHandler
{
  v7 = userExplanation;
  v8 = completionHandler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ENManager_getExposureInfoFromSummary_userExplanation_completionHandler___block_invoke;
  block[3] = &unk_278A4B0D0;
  v15 = v7;
  selfCopy = self;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(dispatchQueue, block);
  v12 = objc_alloc_init(MEMORY[0x277CCAC48]);

  return v12;
}

void __74__ENManager_getExposureInfoFromSummary_userExplanation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 43);
  xpc_dictionary_set_string(v2, "auEx", [*(a1 + 32) utf8ValueSafe]);
  v3 = [*(a1 + 40) _ensureXPCStarted];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v5 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ENManager_getExposureInfoFromSummary_userExplanation_completionHandler___block_invoke_2;
  v7[3] = &unk_278A4B6F8;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

- (void)_getExposureInfoCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke;
  v17[3] = &unk_278A4B860;
  v19 = &v20;
  v8 = handlerCopy;
  v18 = v8;
  v9 = MEMORY[0x2383EE560](v17);
  v10 = CUXPCDecodeNSErrorIfNeeded();
  v11 = v21[5];
  v21[5] = v10;

  if (!v21[5])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = xpc_dictionary_get_array(completedCopy, "exIA");
    v14 = v13;
    if (!v13 || (v16[0] = MEMORY[0x277D85DD0], v16[1] = 3221225472, v16[2] = __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2, v16[3] = &unk_278A4B1E8, v16[4] = v12, v16[5] = &v20, xpc_array_apply(v13, v16), !v21[5]))
    {
      (*(v8 + 2))(v8, v12, 0);
      [(ENExposureDetectionClientSession *)self->_detectionSession invalidate];
      detectionSession = self->_detectionSession;
      self->_detectionSession = 0;
    }
  }

  v9[2](v9);

  _Block_object_dispose(&v20, 8);
}

uint64_t __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

BOOL __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureInfo alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureInfo *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2_cold_2();
    }
  }

  else
  {
    __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (NSProgress)getExposureWindowsFromSummary:(ENExposureDetectionSummary *)summary completionHandler:(ENGetExposureWindowsHandler)completionHandler
{
  v5 = completionHandler;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ENManager_getExposureWindowsFromSummary_completionHandler___block_invoke;
  v10[3] = &unk_278A4B030;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v10);
  v8 = objc_alloc_init(MEMORY[0x277CCAC48]);

  return v8;
}

uint64_t __61__ENManager_getExposureWindowsFromSummary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _getExposureWindowsFromIndex:0 completionHandler:v5];
}

- (void)_getExposureWindowsFromIndex:(unint64_t)index completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "mTyp", 44);
  xpc_dictionary_set_uint64(v7, "expWndIdx", index);
  _ensureXPCStarted = [(ENManager *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__ENManager__getExposureWindowsFromIndex_completionHandler___block_invoke;
  v11[3] = &unk_278A4B6F8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v7, dispatchQueue, v11);
}

- (void)_getExposureWindowsCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke;
  v23[3] = &unk_278A4B888;
  v25 = &v26;
  v8 = handlerCopy;
  v23[4] = self;
  v24 = v8;
  v9 = MEMORY[0x2383EE560](v23);
  v10 = CUXPCDecodeNSErrorIfNeeded();
  v11 = v27[5];
  v27[5] = v10;

  if (!v27[5])
  {
    if (self->_invalidateCalled)
    {
      v19 = ENErrorF(6, "Invalidated");
      v20 = v27[5];
      v27[5] = v19;
    }

    else
    {
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v22[3] = 0;
      if (!self->_exposureWindows)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        exposureWindows = self->_exposureWindows;
        self->_exposureWindows = v12;
      }

      v14 = xpc_dictionary_get_array(completedCopy, "expWndA");
      v15 = v14;
      if (!v14 || (v21[0] = MEMORY[0x277D85DD0], v21[1] = 3221225472, v21[2] = __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke_2, v21[3] = &unk_278A4B8B0, v21[4] = self, v21[5] = &v26, v21[6] = v22, xpc_array_apply(v14, v21), !v27[5]))
      {
        uint64 = xpc_dictionary_get_uint64(completedCopy, "expWndIdx");
        if (uint64)
        {
          [(ENManager *)self _getExposureWindowsFromIndex:uint64 completionHandler:v8];
        }

        else
        {
          (*(v8 + 2))(v8, self->_exposureWindows);
          v17 = self->_exposureWindows;
          self->_exposureWindows = 0;

          [(ENExposureDetectionClientSession *)self->_detectionSession invalidate];
          detectionSession = self->_detectionSession;
          self->_detectionSession = 0;
        }
      }

      _Block_object_dispose(v22, 8);
    }
  }

  v9[2](v9);

  _Block_object_dispose(&v26, 8);
}

void __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    (*(a1[5] + 16))();
    v2 = a1[4];
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;

    [*(a1[4] + 16) invalidate];
    v4 = a1[4];
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }
}

BOOL __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureWindow alloc];
    v6 = *(a1[5] + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureWindow *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1[4] + 24) addObject:v7];
      ++*(*(a1[6] + 8) + 24);
    }

    else
    {
      __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke_2_cold_2();
    }
  }

  else
  {
    __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)preAuthorizeDiagnosisKeysWithCompletionHandler:(ENErrorHandler)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ENManager_preAuthorizeDiagnosisKeysWithCompletionHandler___block_invoke;
  v6[3] = &unk_278A4B900;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ENManager *)self _checkRemoteDialogueRequirementForRequestType:3 completionHandler:v6];
}

void __60__ENManager_preAuthorizeDiagnosisKeysWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    v7 = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__ENManager_preAuthorizeDiagnosisKeysWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_278A4B8D8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v9;
    v10[4] = *(a1 + 32);
    [v8 _handleRemotePresentationRequest:v7 completionHandler:v10];
  }

  else
  {
    __60__ENManager_preAuthorizeDiagnosisKeysWithCompletionHandler___block_invoke_cold_1(a1);
  }
}

void __60__ENManager_preAuthorizeDiagnosisKeysWithCompletionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v4 = [*(a1 + 40) receiptId];
    [v2 _preAuthorizeDiagnosisKeysWithSessionID:? completionHandler:?];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = ENErrorF(1, "Failed to request pre authorization from user");
    (*(v3 + 16))(v3);
  }
}

- (void)_preAuthorizeDiagnosisKeysWithSessionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ENManager__preAuthorizeDiagnosisKeysWithSessionID_completionHandler___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

void __71__ENManager__preAuthorizeDiagnosisKeysWithSessionID_completionHandler___block_invoke(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 16);
  *uuid = 0;
  v8 = 0;
  [a1[4] getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v2, "rpsid", uuid);
  v3 = [a1[5] _ensureXPCStarted];
  v4 = *(a1[5] + 10);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__ENManager__preAuthorizeDiagnosisKeysWithSessionID_completionHandler___block_invoke_2;
  v5[3] = &unk_278A4B720;
  v6 = a1[6];
  xpc_connection_send_message_with_reply(v3, v2, v4, v5);
}

void __71__ENManager__preAuthorizeDiagnosisKeysWithSessionID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)_checkRemoteDialogueRequirementForRequestType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke;
  block[3] = &unk_278A4B0F8;
  block[4] = self;
  v10 = handlerCopy;
  typeCopy = type;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_cold_1();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_2;
  v5[3] = &unk_278A4B928;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  v5[4] = *(a1 + 32);
  [v2 _tccCheckWithCompletion:v5];
}

void __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_2(uint64_t a1, size_t count)
{
  if (count)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "mTyp", 212);
    xpc_dictionary_set_int64(v3, "rprt", *(a1 + 48));
    v4 = [*(a1 + 32) _ensureXPCStarted];
    v5 = *(*(a1 + 32) + 80);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_3;
    handler[3] = &unk_278A4B720;
    v8 = *(a1 + 40);
    xpc_connection_send_message_with_reply(v4, v3, v5, handler);
  }
}

void __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v7 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (xpc_dictionary_get_BOOL(v3, "rpn"))
    {
      v5 = objc_opt_class();
      v8 = 0;
      v6 = ENXPCDecodeSecureObject(v3, "rpr", v5, &v8);
      v7 = v8;
      if (!v6 && gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
      {
        __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_3_cold_1();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
      v7 = 0;
    }

    if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      __77__ENManager__checkRemoteDialogueRequirementForRequestType_completionHandler___block_invoke_3_cold_2();
    }
  }
}

- (void)didEnterLegalConsentPage:(id)page completionHandler:(id)handler
{
  pageCopy = page;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ENManager_didEnterLegalConsentPage_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = pageCopy;
  v9 = handlerCopy;
  v10 = pageCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__ENManager_didEnterLegalConsentPage_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 219);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v5 = v10;
  if (v4)
  {
    xpc_dictionary_set_data(v2, "regionData", [v4 bytes], objc_msgSend(v4, "length"));
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__ENManager_didEnterLegalConsentPage_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __56__ENManager_didEnterLegalConsentPage_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)_handleRemotePresentationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  remotePresentationController = self->_remotePresentationController;
  if (remotePresentationController || (ENUICreateRemotePresentationController(), v8 = objc_claimAutoreleasedReturnValue(), v9 = self->_remotePresentationController, self->_remotePresentationController = v8, v9, (remotePresentationController = self->_remotePresentationController) != 0))
  {
    [(ENUIRemotePresentationController *)remotePresentationController presentWithPresentationRequest:requestCopy completion:handlerCopy];
  }

  else
  {
    v10 = ENErrorF(11, "Failed to create remote presentation controller");
    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      [ENManager _handleRemotePresentationRequest:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0, v10);
  }
}

- (void)requestPreAuthorizedDiagnosisKeysWithCompletionHandler:(ENErrorHandler)completionHandler
{
  v4 = completionHandler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ENManager_requestPreAuthorizedDiagnosisKeysWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __68__ENManager_requestPreAuthorizedDiagnosisKeysWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__ENManager_requestPreAuthorizedDiagnosisKeysWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278A4B748;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _tccCheckWithCompletion:v4];
}

void __68__ENManager_requestPreAuthorizedDiagnosisKeysWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "mTyp", 23);
    v4 = [*(a1 + 32) _ensureXPCStarted];
    v5 = *(*(a1 + 32) + 80);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__ENManager_requestPreAuthorizedDiagnosisKeysWithCompletionHandler___block_invoke_3;
    handler[3] = &unk_278A4B720;
    v8 = *(a1 + 40);
    xpc_connection_send_message_with_reply(v4, v3, v5, handler);
  }
}

void __68__ENManager_requestPreAuthorizedDiagnosisKeysWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)getDiagnosisKeysForTesting:(BOOL)testing forceRefresh:(BOOL)refresh completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke;
  v10[3] = &unk_278A4B9A0;
  testingCopy = testing;
  refreshCopy = refresh;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ENManager *)self _checkRemoteDialogueRequirementForRequestType:2 completionHandler:v10];
}

void __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke_2;
    v18[3] = &unk_278A4B950;
    v20 = *(a1 + 48);
    v6 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v6;
    v7 = MEMORY[0x2383EE560](v18);
    v8 = v7;
    if (v5)
    {
      v9 = *(a1 + 48);
      v10 = v5;
      [v10 setTestMode:v9];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke_4;
      v16 = &unk_278A4B978;
      v11 = *(a1 + 32);
      v17 = *(a1 + 40);
      [v11 _handleRemotePresentationRequest:v10 completionHandler:&v13];
      v12 = [v10 receiptId];

      (v8)[2](v8, v12);
    }

    else
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (*(a1 + 48))
  {
    v6 = 22;
  }

  else
  {
    v6 = 20;
  }

  xpc_dictionary_set_int64(v4, "mTyp", v6);
  xpc_dictionary_set_BOOL(v5, "refr", *(a1 + 49));
  if (v3)
  {
    *uuid = 0;
    v15 = 0;
    v7 = v5;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "rpsid", uuid);
  }

  v8 = [*(a1 + 32) _ensureXPCStarted];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke_3;
  handler[3] = &unk_278A4B6F8;
  handler[4] = v10;
  v13 = v9;
  xpc_connection_send_message_with_reply(v8, v5, v11, handler);
}

uint64_t __71__ENManager_getDiagnosisKeysForTesting_forceRefresh_completionHandler___block_invoke_4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_getDiagnosisKeysReply:(id)reply completionHandler:(id)handler
{
  replyCopy = reply;
  handlerCopy = handler;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ENManager__getDiagnosisKeysReply_completionHandler___block_invoke;
  v16[3] = &unk_278A4B860;
  v18 = &v19;
  v7 = handlerCopy;
  v17 = v7;
  v8 = MEMORY[0x2383EE560](v16);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v20[5];
  v20[5] = v9;

  if (!v20[5])
  {
    v11 = xpc_dictionary_get_value(replyCopy, "tekA");
    v12 = v11;
    if (v11 && MEMORY[0x2383EE9C0](v11) == MEMORY[0x277D86440])
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__ENManager__getDiagnosisKeysReply_completionHandler___block_invoke_2;
      v15[3] = &unk_278A4B1E8;
      v15[4] = v13;
      v15[5] = &v19;
      xpc_array_apply(v12, v15);
      if (!v20[5])
      {
        (*(v7 + 2))(v7, v13, 0);
      }
    }

    else
    {
      v14 = ENErrorF(15, "GetDiagnosisKeys reply, non-array");
      v13 = v20[5];
      v20[5] = v14;
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v19, 8);
}

uint64_t __54__ENManager__getDiagnosisKeysReply_completionHandler___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

BOOL __54__ENManager__getDiagnosisKeysReply_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENTemporaryExposureKey alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENTemporaryExposureKey *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __54__ENManager__getDiagnosisKeysReply_completionHandler___block_invoke_2_cold_2(a1 + 40);
    }
  }

  else
  {
    __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)resetDataWithFlags:(unsigned int)flags completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENManager_resetDataWithFlags_completionHandler___block_invoke;
  block[3] = &unk_278A4B9C8;
  flagsCopy = flags;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__ENManager_resetDataWithFlags_completionHandler___block_invoke(uint64_t a1)
{
  if ((~*(a1 + 48) & 0xFFF) != 0)
  {
    if (gLogCategory_ENManager <= 50 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
    {
      v6 = CUPrintFlags32();
      LogPrintF_safe();
    }
  }

  else if (gLogCategory_ENManager <= 50 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    __50__ENManager_resetDataWithFlags_completionHandler___block_invoke_cold_1();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 21);
  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_dictionary_set_uint64(v2, "resFl", v3);
  }

  v4 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__ENManager_resetDataWithFlags_completionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v8 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

void __50__ENManager_resetDataWithFlags_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)diagnosticControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ENManager_diagnosticControl_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = controlCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

void __42__ENManager_diagnosticControl_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 100);
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  if (v3)
  {
    xpc_dictionary_set_value(v2, "parm", v3);
    v4 = [*(a1 + 40) _ensureXPCStarted];
    v5 = *(*(a1 + 40) + 80);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__ENManager_diagnosticControl_completion___block_invoke_2;
    handler[3] = &unk_278A4B720;
    v7 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v4, v2, v5, handler);
  }

  else
  {
    __42__ENManager_diagnosticControl_completion___block_invoke_cold_1();
  }
}

void __42__ENManager_diagnosticControl_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    if (v4)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), v4, 0);
    }

    else
    {
      __42__ENManager_diagnosticControl_completion___block_invoke_2_cold_1();
    }
  }
}

- (void)diagnosticShow:(id)show completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ENManager_diagnosticShow_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = showCopy;
  v9 = completionCopy;
  v10 = showCopy;
  dispatch_async(dispatchQueue, block);
}

void __39__ENManager_diagnosticShow_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 102);
  v3 = a1[4];
  if (v3)
  {
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v4)
    {
      __39__ENManager_diagnosticShow_completion___block_invoke_cold_1(a1, v3);
      goto LABEL_5;
    }

    v5 = v4;
    xpc_dictionary_set_value(v2, "parm", v4);
  }

  v6 = [a1[5] _ensureXPCStarted];
  v7 = *(a1[5] + 10);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__ENManager_diagnosticShow_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v9 = a1[6];
  xpc_connection_send_message_with_reply(v6, v2, v7, handler);

LABEL_5:
}

void __39__ENManager_diagnosticShow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    if (v4)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), v4, 0);
    }

    else
    {
      __42__ENManager_diagnosticControl_completion___block_invoke_2_cold_1();
    }
  }
}

- (void)triggerNotificationOfType:(int)type appBundleIdentifier:(id)identifier classificationName:(id)name interval:(id)interval region:(id)region completion:(id)completion
{
  identifierCopy = identifier;
  nameCopy = name;
  intervalCopy = interval;
  regionCopy = region;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__ENManager_triggerNotificationOfType_appBundleIdentifier_classificationName_interval_region_completion___block_invoke;
  block[3] = &unk_278A4B9F0;
  typeCopy = type;
  v26 = identifierCopy;
  v27 = intervalCopy;
  v28 = nameCopy;
  v29 = regionCopy;
  selfCopy = self;
  v31 = completionCopy;
  v20 = completionCopy;
  v21 = regionCopy;
  v22 = nameCopy;
  v23 = intervalCopy;
  v24 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

void __105__ENManager_triggerNotificationOfType_appBundleIdentifier_classificationName_interval_region_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 103);
  xpc_dictionary_set_int64(v2, "noteType", *(a1 + 80));
  v3 = [*(a1 + 32) UTF8String];
  if (v3)
  {
    xpc_dictionary_set_string(v2, "aBid", v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    xpc_dictionary_set_uint64(v2, "intS", [v4 unsignedLongLongValue]);
  }

  v5 = *(a1 + 48);
  v6 = v2;
  v7 = [v5 UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(v6, "expCID", v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v15 = 0;
    v9 = ENXPCEncodeSecureObject(v6, "regionData", v8, &v15);
    v10 = v15;
    v11 = v10;
    if (!v9)
    {
      (*(*(a1 + 72) + 16))();
      goto LABEL_11;
    }
  }

  v8 = [*(a1 + 64) _ensureXPCStarted];
  v12 = *(*(a1 + 64) + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__ENManager_triggerNotificationOfType_appBundleIdentifier_classificationName_interval_region_completion___block_invoke_2;
  v13[3] = &unk_278A4B720;
  v14 = *(a1 + 72);
  xpc_connection_send_message_with_reply(v8, v6, v12, v13);
  v11 = v14;
LABEL_11:
}

void __105__ENManager_triggerNotificationOfType_appBundleIdentifier_classificationName_interval_region_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)exposureDetectionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENManager_exposureDetectionActivate_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  v12 = activateCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = activateCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__ENManager_exposureDetectionActivate_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ENManager_exposureDetectionActivate_completion___block_invoke_2;
  v5[3] = &unk_278A4BA18;
  v8 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _tccCheckWithCompletion:v5];
}

void __50__ENManager_exposureDetectionActivate_completion___block_invoke_2(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[6] + 2);

    v3();
  }

  else
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "mTyp", 30);
    [a1[4] encodeWithXPCObject:v4];
    v5 = [a1[5] _ensureXPCStarted];
    v6 = *(a1[5] + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __50__ENManager_exposureDetectionActivate_completion___block_invoke_3;
    handler[3] = &unk_278A4B720;
    v8 = a1[6];
    xpc_connection_send_message_with_reply(v5, v4, v6, handler);
  }
}

void __50__ENManager_exposureDetectionActivate_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)exposureDetectionAddKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ENManager_exposureDetectionAddKeys_completion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = keysCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = keysCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__ENManager_exposureDetectionAddKeys_completion___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 31);
  v3 = xpc_array_create(0, 0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = xpc_dictionary_create(0, 0, 0);
        [v9 encodeWithXPCObject:v10];
        xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  xpc_dictionary_set_value(v2, "tekA", v3);
  v11 = [a1[5] _ensureXPCStarted];
  v12 = *(a1[5] + 10);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__ENManager_exposureDetectionAddKeys_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v14 = a1[6];
  xpc_connection_send_message_with_reply(v11, v2, v12, handler);
}

void __49__ENManager_exposureDetectionAddKeys_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)exposureDetectionFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ENManager_exposureDetectionFinishWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __51__ENManager_exposureDetectionFinishWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 32);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__ENManager_exposureDetectionFinishWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __51__ENManager_exposureDetectionFinishWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v6 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = 0;
    v5 = [[ENExposureDetectionSummary alloc] initWithXPCObject:v3 error:&v7];
    v6 = v7;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)exposureDetectionGetExposureInfoWithMaximumCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ENManager_exposureDetectionGetExposureInfoWithMaximumCount_completion___block_invoke;
  block[3] = &unk_278A4B0F8;
  v10 = completionCopy;
  countCopy = count;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __73__ENManager_exposureDetectionGetExposureInfoWithMaximumCount_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 33);
  xpc_dictionary_set_uint64(v2, "exIC", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ENManager_exposureDetectionGetExposureInfoWithMaximumCount_completion___block_invoke_2;
  v7[3] = &unk_278A4B6F8;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

- (void)exposureDetectionGetExposureInfoCompleted:(id)completed completion:(id)completion
{
  completedCopy = completed;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__ENManager_exposureDetectionGetExposureInfoCompleted_completion___block_invoke;
  v16[3] = &unk_278A4B860;
  v18 = &v19;
  v7 = completionCopy;
  v17 = v7;
  v8 = MEMORY[0x2383EE560](v16);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v20[5];
  v20[5] = v9;

  if (!v20[5])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = xpc_dictionary_get_array(completedCopy, "exIA");
    v13 = v12;
    if (!v12 || (v15[0] = MEMORY[0x277D85DD0], v15[1] = 3221225472, v15[2] = __66__ENManager_exposureDetectionGetExposureInfoCompleted_completion___block_invoke_2, v15[3] = &unk_278A4B1E8, v15[4] = v11, v15[5] = &v19, xpc_array_apply(v12, v15), !v20[5]))
    {
      v14 = xpc_dictionary_get_BOOL(completedCopy, "done");
      (*(v7 + 2))(v7, v11, v14, 0);
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v19, 8);
}

uint64_t __66__ENManager_exposureDetectionGetExposureInfoCompleted_completion___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

BOOL __66__ENManager_exposureDetectionGetExposureInfoCompleted_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureInfo alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureInfo *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2_cold_2();
    }
  }

  else
  {
    __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)exposureDetectionFileActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ENManager_exposureDetectionFileActivate_completion___block_invoke;
  v10[3] = &unk_278A4BA18;
  selfCopy = self;
  v13 = completionCopy;
  v11 = activateCopy;
  v8 = activateCopy;
  v9 = completionCopy;
  [(ENManager *)self _tccCheckWithCompletion:v10];
}

void __54__ENManager_exposureDetectionFileActivate_completion___block_invoke(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[6] + 2);

    v3();
  }

  else
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "mTyp", 40);
    [a1[4] encodeWithXPCObject:v4];
    v5 = a1[5];
    v12 = 0;
    v6 = [v5 _setActivationPropertiesOnRequest:v4 error:&v12];
    v7 = v12;
    if (v6)
    {
      v8 = [a1[5] _ensureXPCStarted];
      v9 = *(a1[5] + 10);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __54__ENManager_exposureDetectionFileActivate_completion___block_invoke_2;
      v10[3] = &unk_278A4B720;
      v11 = a1[6];
      xpc_connection_send_message_with_reply(v8, v4, v9, v10);
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }
}

void __54__ENManager_exposureDetectionFileActivate_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

- (void)exposureDetectionFileAdd:(id)add signatureURL:(id)l completion:(id)completion
{
  addCopy = add;
  lCopy = l;
  completionCopy = completion;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__2;
  v64 = __Block_byref_object_dispose__2;
  v65 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke;
  v57[3] = &unk_278A4B860;
  v59 = &v60;
  v44 = completionCopy;
  v58 = v44;
  v10 = MEMORY[0x2383EE560](v57);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  fileSystemRepresentation = [addCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    v37 = ENErrorF(2, "Bad URL");
LABEL_25:
    v14 = v61[5];
    v61[5] = v37;
    goto LABEL_20;
  }

  v12 = realpath_DARWIN_EXTSN(fileSystemRepresentation, 0);
  v13 = v12;
  if (!v12)
  {
    v37 = ENErrorF(2, "realpath failed");
    goto LABEL_25;
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke_2;
  v56[3] = &__block_descriptor_40_e5_v8__0l;
  v56[4] = v12;
  v14 = MEMORY[0x2383EE560](v56);
  v15 = open(v13, 0);
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if (!*__error())
  {
    v16 = 4294960596;
    goto LABEL_22;
  }

  v16 = *__error();
  if (v16)
  {
LABEL_22:
    v36 = ENErrorF(2, "Open file failed: %#m", v16);
    v17 = v61[5];
    v61[5] = v36;
    goto LABEL_19;
  }

LABEL_6:
  v43 = addCopy;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke_3;
  v54[3] = &__block_descriptor_36_e5_v8__0l;
  v55 = v15;
  v17 = MEMORY[0x2383EE560](v54);
  v42 = v10;
  v18 = xpc_fd_create(v15);
  if (!v18)
  {
    v38 = ENErrorF(1, "XPC FD create failed");
    _ensureXPCStarted = v61[5];
    v61[5] = v38;
    goto LABEL_18;
  }

  _ensureXPCStarted = [(ENManager *)self _ensureXPCStarted];
  v53 = 0u;
  v52 = 0u;
  xpc_connection_get_audit_token();
  v50 = 0u;
  v51 = 0u;
  v20 = sandbox_extension_issue_file_to_process();
  v21 = v20;
  if (!v20)
  {
    v39 = ENErrorF(2, "sandbox get token failed");
    v22 = v61[5];
    v61[5] = v39;
    goto LABEL_17;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke_4;
  v49[3] = &__block_descriptor_40_e5_v8__0l;
  v49[4] = v20;
  v22 = MEMORY[0x2383EE560](v49);
  v23 = lCopy;
  if (!lCopy)
  {
    v33 = 0;
    goto LABEL_13;
  }

  v24 = objc_alloc(MEMORY[0x277CBEA90]);
  v25 = v61;
  obj = v61[5];
  v26 = [v24 initWithContentsOfURL:v23 options:0 error:&obj];
  objc_storeStrong(v25 + 5, obj);
  if (v26)
  {
    v32 = [v26 length];
    if (v32 - 1 < 0x10000)
    {
      v33 = xpc_data_create([v26 bytes], v32);

LABEL_13:
      v26 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v26, "mTyp", 41);
      xpc_dictionary_set_value(v26, "fd", v18);
      xpc_dictionary_set_string(v26, "sbTk", v21);
      if (v33)
      {
        xpc_dictionary_set_value(v26, "sigD", v33);
      }

      dispatchQueue = self->_dispatchQueue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke_5;
      handler[3] = &unk_278A4B720;
      v47 = v44;
      xpc_connection_send_message_with_reply(_ensureXPCStarted, v26, dispatchQueue, handler);
      v35 = v47;
      v23 = v33;
      goto LABEL_16;
    }

    v40 = ENErrorF(2, "Bad signature size: %d", v32);
  }

  else
  {
    v40 = ENNestedErrorF(v61[5], 1, "Read signature failed", v27, v28, v29, v30, v31, v41);
  }

  v35 = v61[5];
  v61[5] = v40;
LABEL_16:

  v22[2](v22);
LABEL_17:

  v10 = v42;
LABEL_18:

  v17[2](v17);
  addCopy = v43;
LABEL_19:

  v14[2](v14);
LABEL_20:

  v10[2](v10);
  _Block_object_dispose(&v60, 8);
}

uint64_t __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __62__ENManager_exposureDetectionFileAdd_signatureURL_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)exposureDetectionFileFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ENManager_exposureDetectionFileFinishWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__ENManager_exposureDetectionFileFinishWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 42);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__ENManager_exposureDetectionFileFinishWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __55__ENManager_exposureDetectionFileFinishWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v6 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = 0;
    v5 = [[ENExposureDetectionSummary alloc] initWithXPCObject:v3 error:&v7];
    v6 = v7;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getDetectionHistoryChecksWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ENManager_getDetectionHistoryChecksWithCompletion___block_invoke;
  v6[3] = &unk_278A4BA88;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(ENManager *)self getDetectionHistorySessionsWithCompletion:v6];
}

void __53__ENManager_getDetectionHistoryChecksWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__ENManager_getDetectionHistoryChecksWithCompletion___block_invoke_2;
    v10[3] = &unk_278A4BA60;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[4] = v6;
    v11 = v9;
    [v8 _populateDetectionHistoryChecks:v6 forSessions:v7 sessionIndex:0 completion:v10];
  }
}

uint64_t __53__ENManager_getDetectionHistoryChecksWithCompletion___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    a3 = 0;
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return (*(v4 + 16))(v4, v5, a3);
}

- (void)_populateDetectionHistoryChecks:(id)checks forSessions:(id)sessions sessionIndex:(unint64_t)index completion:(id)completion
{
  checksCopy = checks;
  sessionsCopy = sessions;
  completionCopy = completion;
  if ([sessionsCopy count] <= index)
  {
    [ENManager _populateDetectionHistoryChecks:completionCopy forSessions:? sessionIndex:? completion:?];
  }

  else
  {
    v13 = objc_alloc_init(ENExposureDetectionHistoryCheck);
    v14 = [sessionsCopy objectAtIndexedSubscript:index];
    v15 = index + 1;
    [(ENExposureDetectionHistoryCheck *)v13 setSession:v14];
    [checksCopy addObject:v13];
    if ([v14 fileCount])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__ENManager__populateDetectionHistoryChecks_forSessions_sessionIndex_completion___block_invoke_2;
      v18[3] = &unk_278A4BAD8;
      v21 = completionCopy;
      v18[4] = v13;
      v18[5] = self;
      v19 = checksCopy;
      v20 = sessionsCopy;
      v22 = index + 1;
      [(ENManager *)self getDetectionHistoryFilesForSession:v14 completion:v18];

      v16 = v21;
    }

    else
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__ENManager__populateDetectionHistoryChecks_forSessions_sessionIndex_completion___block_invoke;
      block[3] = &unk_278A4BAB0;
      block[4] = self;
      v24 = checksCopy;
      v25 = sessionsCopy;
      v27 = v15;
      v26 = completionCopy;
      dispatch_async(dispatchQueue, block);

      v16 = v24;
    }
  }
}

uint64_t __81__ENManager__populateDetectionHistoryChecks_forSessions_sessionIndex_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v11 = *(*(a1 + 64) + 16);

    return v11();
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    [*(a1 + 32) setFiles:v4];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = *(a1 + 56);

    return [v5 _populateDetectionHistoryChecks:v6 forSessions:v9 sessionIndex:v7 completion:v8];
  }
}

- (void)getDetectionHistoryFilesForSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ENManager_getDetectionHistoryFilesForSession_completion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__ENManager_getDetectionHistoryFilesForSession_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 48);
  v3 = [*(a1 + 32) UUID];
  if (v3)
  {
    *uuid = 0;
    v12 = 0;
    v4 = v2;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "sessID", uuid);
  }

  v5 = [*(a1 + 40) _ensureXPCStarted];
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(v7 + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__ENManager_getDetectionHistoryFilesForSession_completion___block_invoke_2;
  handler[3] = &unk_278A4B6F8;
  handler[4] = v7;
  v10 = v6;
  xpc_connection_send_message_with_reply(v5, v2, v8, handler);
}

- (void)_getDetectionHistoryFilesCompleted:(id)completed completion:(id)completion
{
  completedCopy = completed;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke;
  v16[3] = &unk_278A4B860;
  v18 = &v19;
  v7 = completionCopy;
  v17 = v7;
  v8 = MEMORY[0x2383EE560](v16);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v20[5];
  v20[5] = v9;

  if (!v20[5])
  {
    v11 = xpc_dictionary_get_value(completedCopy, "detHF");
    v12 = v11;
    if (v11 && MEMORY[0x2383EE9C0](v11) == MEMORY[0x277D86440])
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke_2;
      v15[3] = &unk_278A4B1E8;
      v15[4] = v13;
      v15[5] = &v19;
      xpc_array_apply(v12, v15);
      if (!v20[5])
      {
        (*(v7 + 2))(v7, v13, 0);
      }
    }

    else
    {
      v14 = ENErrorF(15, "HistoryFiles non-array");
      v13 = v20[5];
      v20[5] = v14;
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v19, 8);
}

uint64_t __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      v4 = CUPrintNSError();
      LogPrintF_safe();
    }

    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

BOOL __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureDetectionHistoryFile alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureDetectionHistoryFile *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke_2_cold_2(a1 + 40);
    }
  }

  else
  {
    __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)getDetectionHistorySessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ENManager_getDetectionHistorySessionsWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__ENManager_getDetectionHistorySessionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 49);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ENManager_getDetectionHistorySessionsWithCompletion___block_invoke_2;
  v7[3] = &unk_278A4B6F8;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

- (void)_getDetectionHistorySessionsCompleted:(id)completed completion:(id)completion
{
  completedCopy = completed;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke;
  v16[3] = &unk_278A4B860;
  v18 = &v19;
  v7 = completionCopy;
  v17 = v7;
  v8 = MEMORY[0x2383EE560](v16);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v20[5];
  v20[5] = v9;

  if (!v20[5])
  {
    v11 = xpc_dictionary_get_value(completedCopy, "detHS");
    v12 = v11;
    if (v11 && MEMORY[0x2383EE9C0](v11) == MEMORY[0x277D86440])
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke_2;
      v15[3] = &unk_278A4B1E8;
      v15[4] = v13;
      v15[5] = &v19;
      xpc_array_apply(v12, v15);
      if (!v20[5])
      {
        (*(v7 + 2))(v7, v13, 0);
      }
    }

    else
    {
      v14 = ENErrorF(15, "HistorySessions non-array");
      v13 = v20[5];
      v20[5] = v14;
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v19, 8);
}

uint64_t __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
    {
      v4 = CUPrintNSError();
      LogPrintF_safe();
    }

    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

BOOL __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureDetectionHistorySession alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureDetectionHistorySession *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke_2_cold_2(a1 + 40);
    }
  }

  else
  {
    __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke_2_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)sendChaffTestVerificationRequestForRegion:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ENManager_sendChaffTestVerificationRequestForRegion_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = regionCopy;
  v9 = handlerCopy;
  v10 = regionCopy;
  dispatch_async(dispatchQueue, block);
}

void __73__ENManager_sendChaffTestVerificationRequestForRegion_completionHandler___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 300);
  xpc_dictionary_set_BOOL(v2, "chaff", 1);
  v3 = a1[4];
  if (v3)
  {
    v10 = 0;
    v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
    v5 = v10;
    v6 = v5;
    if (!v4)
    {
      (*(a1[6] + 2))();
      goto LABEL_5;
    }
  }

  v3 = [a1[5] _ensureXPCStarted];
  v7 = *(a1[5] + 10);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ENManager_sendChaffTestVerificationRequestForRegion_completionHandler___block_invoke_2;
  v8[3] = &unk_278A4B720;
  v9 = a1[6];
  xpc_connection_send_message_with_reply(v3, v2, v7, v8);
  v6 = v9;
LABEL_5:
}

void __73__ENManager_sendChaffTestVerificationRequestForRegion_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == 0);
}

- (void)startSelfReportWebSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = sessionCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

void __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 303);
  v3 = a1[4];
  if (v3)
  {
    v10 = 0;
    v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
    v5 = v10;
    if (!v4)
    {
      __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_cold_1(a1, v5, v3);
      goto LABEL_5;
    }
  }

  v6 = [a1[5] _ensureXPCStarted];
  v7 = *(a1[5] + 10);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_2;
  v8[3] = &unk_278A4B720;
  v9 = a1[6];
  xpc_connection_send_message_with_reply(v6, v2, v7, v8);

LABEL_5:
}

void __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  string = xpc_dictionary_get_string(xdict, "APIKey");
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (v3)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v6 = xpc_dictionary_get_string(xdict, "nonce");
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_2_cold_2(a1, v3 == 0);
  }
}

- (void)startTestVerificationSessionWithCode:(id)code region:(id)region completionHandler:(id)handler
{
  codeCopy = code;
  regionCopy = region;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ENManager_startTestVerificationSessionWithCode_region_completionHandler___block_invoke;
  v15[3] = &unk_278A4BB00;
  v16 = codeCopy;
  v17 = regionCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = regionCopy;
  v14 = codeCopy;
  dispatch_async(dispatchQueue, v15);
}

void __75__ENManager_startTestVerificationSessionWithCode_region_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 300);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "veriC", v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v13 = 0;
    v7 = ENXPCEncodeSecureObject(v4, "regionData", v6, &v13);
    v8 = v13;
    v9 = v8;
    if (!v7)
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_7;
    }
  }

  v6 = [*(a1 + 48) _ensureXPCStarted];
  v10 = *(*(a1 + 48) + 80);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ENManager_startTestVerificationSessionWithCode_region_completionHandler___block_invoke_2;
  v11[3] = &unk_278A4B720;
  v12 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v6, v4, v10, v11);
  v9 = v12;
LABEL_7:
}

void __75__ENManager_startTestVerificationSessionWithCode_region_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    CUXPCDecodeNSUUID();
    v5 = 0;
    v6 = *(a1 + 32);
    if (v5)
    {
      (*(v6 + 16))(v6);
    }

    else
    {
      v7 = ENErrorF(1, "No session ID");
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)fetchTestMetadataForSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ENManager_fetchTestMetadataForSession_completionHandler___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__ENManager_fetchTestMetadataForSession_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 301);
  v3 = *(a1 + 32);
  if (v3)
  {
    *uuid = 0;
    v10 = 0;
    v4 = v2;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "sessID", uuid);
  }

  v5 = [*(a1 + 40) _ensureXPCStarted];
  v6 = *(*(a1 + 40) + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ENManager_fetchTestMetadataForSession_completionHandler___block_invoke_2;
  v7[3] = &unk_278A4B720;
  v8 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v5, v2, v6, v7);
}

void __59__ENManager_fetchTestMetadataForSession_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"meta"];
    if (v5)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), v5, 0);
    }

    else
    {
      __42__ENManager_diagnosticControl_completion___block_invoke_2_cold_1();
    }
  }
}

- (void)finishTestVerificationForSession:(id)session userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler
{
  sessionCopy = session;
  metadataCopy = metadata;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ENManager_finishTestVerificationForSession_userDidConsent_metadata_completionHandler___block_invoke;
  block[3] = &unk_278A4BB28;
  consentCopy = consent;
  v18 = sessionCopy;
  v19 = metadataCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = metadataCopy;
  v16 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

void __88__ENManager_finishTestVerificationForSession_userDidConsent_metadata_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 302);
  v3 = *(a1 + 32);
  if (v3)
  {
    *uuid = 0;
    v10 = 0;
    v4 = v2;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "sessID", uuid);
  }

  xpc_dictionary_set_BOOL(v2, "consent", *(a1 + 64));
  xpc_dictionary_set_cf_object();
  v5 = [*(a1 + 48) _ensureXPCStarted];
  v6 = *(*(a1 + 48) + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__ENManager_finishTestVerificationForSession_userDidConsent_metadata_completionHandler___block_invoke_2;
  v7[3] = &unk_278A4B720;
  v8 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v5, v2, v6, v7);
}

void __88__ENManager_finishTestVerificationForSession_userDidConsent_metadata_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)activeRegionWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ENManager_activeRegionWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __40__ENManager_activeRegionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 50);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__ENManager_activeRegionWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __40__ENManager_activeRegionWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v8 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_opt_class();
    v11 = 0;
    v6 = ENXPCDecodeSecureObjectIfPresent(v3, "regionData", v5, &v11);
    v7 = v11;
    v8 = v7;
    v9 = *(a1 + 32);
    if (v6)
    {
      (*(v9 + 16))(v9, v6, 0);
    }

    else if (v7)
    {
      (*(v9 + 16))(v9, 0, v7);
    }

    else
    {
      v10 = ENErrorF(16, "No active region found");
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)regionConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ENManager_regionConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __47__ENManager_regionConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 51);
  xpc_dictionary_set_int64(v2, "cty", 0);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__ENManager_regionConfigurationWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __47__ENManager_regionConfigurationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v8 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_opt_class();
    v11 = 0;
    v6 = ENXPCDecodeSecureObjectIfPresent(v3, "svrCfg", v5, &v11);
    v7 = v11;
    v8 = v7;
    v9 = *(a1 + 32);
    if (v6)
    {
      (*(v9 + 16))(v9, v6, 0);
    }

    else if (v7)
    {
      (*(v9 + 16))(v9, 0, v7);
    }

    else
    {
      v10 = ENErrorF(16, "No region configuration found");
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)allRegionConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ENManager_allRegionConfigurationsWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __51__ENManager_allRegionConfigurationsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 52);
  xpc_dictionary_set_int64(v2, "cty", 0);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__ENManager_allRegionConfigurationsWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __51__ENManager_allRegionConfigurationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v3, "svrCfg", &length);
    if (data && length && (v11 = data, v12 = MEMORY[0x277CBEB98], v13 = objc_opt_class(), v14 = objc_opt_class(), objc_opt_class(), objc_opt_class(), objc_opt_class(), v21 = v14, [v12 setWithObjects:v13], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_alloc(MEMORY[0x277CBEA90]), v17 = objc_msgSend(v16, "initWithBytes:length:", v11, length), v22 = 0, objc_msgSend(MEMORY[0x277CCAAC8], "unarchivedObjectOfClasses:fromData:error:", v15, v17, &v22), v18 = objc_claimAutoreleasedReturnValue(), v4 = v22, v17, v15, v18))
    {
      v19 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
      {
        __51__ENManager_allRegionConfigurationsWithCompletion___block_invoke_2_cold_1();
      }

      v20 = *(a1 + 32);
      v18 = ENNestedErrorF(v4, 11, "No region configurations found", v6, v7, v8, v9, v10, v21);
      v19 = *(v20 + 16);
    }

    v19();
  }
}

- (void)allRegionServerConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 52);
  xpc_dictionary_set_int64(v2, "cty", 10);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v13 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"svrCfg"];
      if (v7)
      {
        v8 = MEMORY[0x277CBEB98];
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
        v16 = 0;
        v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v7 error:&v16];
        v13 = v16;
        if (v12)
        {
          (*(*(a1 + 32) + 16))();
        }

        else
        {
          if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
          {
            __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_1();
          }

          v14 = *(a1 + 32);
          v15 = ENErrorF(16, "No region server configurations found");
          (*(v14 + 16))(v14, 0, v15);
        }
      }

      else
      {
        __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_2();
        v13 = 0;
      }
    }

    else
    {
      __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_3();
      v13 = 0;
    }
  }
}

- (void)regionServerConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ENManager_regionServerConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __53__ENManager_regionServerConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 51);
  xpc_dictionary_set_int64(v2, "cty", 10);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__ENManager_regionServerConfigurationWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __53__ENManager_regionServerConfigurationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v12 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:@"svrCfg"];
    if (v5)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
      v15 = 0;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v6 error:&v15];
      v12 = v15;
      if (v11)
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
        {
          __53__ENManager_regionServerConfigurationWithCompletion___block_invoke_2_cold_1();
        }

        v13 = *(a1 + 32);
        v14 = ENErrorF(16, "Server configurations not found");
        (*(v13 + 16))(v13, 0, v14);
      }
    }

    else
    {
      __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_3();
      v12 = 0;
    }
  }
}

- (void)agencyConfigurationForLocale:(id)locale withCompletion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = localeCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = localeCopy;
  dispatch_async(dispatchQueue, block);
}

void __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 51);
  xpc_dictionary_set_int64(v2, "cty", 20);
  v3 = [a1[4] localeIdentifier];

  if (v3)
  {
    v4 = [a1[4] localeIdentifier];
    xpc_dictionary_set_string(v2, "loc", [v4 utf8ValueSafe]);

    v5 = [a1[5] _ensureXPCStarted];
    v6 = *(a1[5] + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke_2;
    handler[3] = &unk_278A4B720;
    v8 = a1[6];
    xpc_connection_send_message_with_reply(v5, v2, v6, handler);
  }

  else
  {
    __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke_cold_1();
  }
}

void __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v14 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:@"svrCfg"];
    if (v5)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
      v17 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v6 error:&v17];
      v14 = v17;
      if (v13)
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
        {
          __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke_2_cold_1();
        }

        v15 = *(a1 + 32);
        v16 = ENErrorF(16, "No region's agency configurations found");
        (*(v15 + 16))(v15, 0, v16);
      }
    }

    else
    {
      __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_3();
      v14 = 0;
    }
  }
}

- (void)allAgencyConfigurationsForLocale:(id)locale withCompletion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ENManager_allAgencyConfigurationsForLocale_withCompletion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = localeCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = localeCopy;
  dispatch_async(dispatchQueue, block);
}

void __61__ENManager_allAgencyConfigurationsForLocale_withCompletion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 52);
  xpc_dictionary_set_int64(v2, "cty", 20);
  v3 = [a1[4] localeIdentifier];

  if (v3)
  {
    v4 = [a1[4] localeIdentifier];
    xpc_dictionary_set_string(v2, "loc", [v4 utf8ValueSafe]);

    v5 = [a1[5] _ensureXPCStarted];
    v6 = *(a1[5] + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __61__ENManager_allAgencyConfigurationsForLocale_withCompletion___block_invoke_2;
    handler[3] = &unk_278A4B720;
    v8 = a1[6];
    xpc_connection_send_message_with_reply(v5, v2, v6, handler);
  }

  else
  {
    __57__ENManager_agencyConfigurationForLocale_withCompletion___block_invoke_cold_1();
  }
}

void __61__ENManager_allAgencyConfigurationsForLocale_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v14 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:@"svrCfg"];
    if (v5)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
      v17 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v6 error:&v17];
      v14 = v17;
      if (v13)
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        if (gLogCategory__ENManager <= 90 && (gLogCategory__ENManager != -1 || _LogCategory_Initialize()))
        {
          __61__ENManager_allAgencyConfigurationsForLocale_withCompletion___block_invoke_2_cold_1();
        }

        v15 = *(a1 + 32);
        v16 = ENErrorF(16, "No agency configurations found");
        (*(v15 + 16))(v15, 0, v16);
      }
    }

    else
    {
      __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_3();
      v14 = 0;
    }
  }
}

- (void)getRegionVisitHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ENManager_getRegionVisitHistoryWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __49__ENManager_getRegionVisitHistoryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 55);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__ENManager_getRegionVisitHistoryWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __49__ENManager_getRegionVisitHistoryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v12 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:@"rgnHy"];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v16 = 0;
      v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v6 error:&v16];
      v11 = v16;
      v12 = v11;
      v13 = 0;
      v14 = *(a1 + 32);
      if (v10 || (v13 = v11) != 0)
      {
        (*(v14 + 16))(v14, v10, v13);
      }

      else
      {
        v15 = ENErrorF(16, "No active history found");
        (*(v14 + 16))(v14, 0, v15);
      }
    }

    else
    {
      __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_3();
      v12 = 0;
    }
  }
}

- (void)regionHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ENManager_regionHistoryWithCompletion___block_invoke;
  v6[3] = &unk_278A4BB50;
  v7 = completionCopy;
  v5 = completionCopy;
  [(ENManager *)self getRegionVisitHistoryWithCompletion:v6];
}

void __41__ENManager_regionHistoryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) region];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setRegionConsent:(int64_t)consent completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ENErrorF(5, "%s has been deprecated", "[ENManager setRegionConsent:completionHandler:]");
  (*(handler + 2))(handlerCopy, v6);
}

- (void)setRegionConsent:(int64_t)consent region:(id)region completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = ENErrorF(5, "%s has been deprecated", "[ENManager setRegionConsent:region:completionHandler:]");
  (*(handler + 2))(handlerCopy, v7);
}

- (void)setRegionUserConsent:(id)consent region:(id)region completionHandler:(id)handler
{
  consentCopy = consent;
  regionCopy = region;
  handlerCopy = handler;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setRegionUserConsent:consentCopy region:? completionHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ENManager_setRegionUserConsent_region_completionHandler___block_invoke;
  v15[3] = &unk_278A4BB78;
  v16 = consentCopy;
  v17 = regionCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = regionCopy;
  v13 = handlerCopy;
  v14 = consentCopy;
  dispatch_async(dispatchQueue, v15);
}

void __59__ENManager_setRegionUserConsent_region_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 53);
  v3 = *(a1 + 32);
  v14 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v14];
  v5 = v14;
  if (v4)
  {
    xpc_dictionary_set_data(v2, "regionConsent", [v4 bytes], objc_msgSend(v4, "length"));
    v6 = *(a1 + 40);
    v13 = v5;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v13];
    v8 = v13;

    if (v7)
    {
      xpc_dictionary_set_data(v2, "regionData", [v7 bytes], objc_msgSend(v7, "length"));
      v9 = [*(a1 + 48) _ensureXPCStarted];
      v10 = *(*(a1 + 48) + 80);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __59__ENManager_setRegionUserConsent_region_completionHandler___block_invoke_2;
      handler[3] = &unk_278A4B720;
      v12 = *(a1 + 56);
      xpc_connection_send_message_with_reply(v9, v2, v10, handler);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v8 = v5;
  }
}

void __59__ENManager_setRegionUserConsent_region_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)downloadAndDetectExposure:(BOOL)exposure completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENManager_downloadAndDetectExposure_completionHandler___block_invoke;
  block[3] = &unk_278A4B798;
  exposureCopy = exposure;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __57__ENManager_downloadAndDetectExposure_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 205);
  xpc_dictionary_set_BOOL(v2, "detX", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__ENManager_downloadAndDetectExposure_completionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __57__ENManager_downloadAndDetectExposure_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)exposureNotificationGetStatusForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ENManager_exposureNotificationGetStatusForBundleIdentifier_completion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

void __73__ENManager_exposureNotificationGetStatusForBundleIdentifier_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 200);
  xpc_dictionary_set_string(v2, "aBid", [a1[4] utf8ValueSafe]);
  v3 = [a1[5] _ensureXPCStarted];
  v4 = *(a1[5] + 10);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __73__ENManager_exposureNotificationGetStatusForBundleIdentifier_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = a1[6];
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __73__ENManager_exposureNotificationGetStatusForBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    __73__ENManager_exposureNotificationGetStatusForBundleIdentifier_completion___block_invoke_2_cold_1(a1);
  }

  else
  {
    xpc_dictionary_get_BOOL(xdict, "enbd");
    xpc_dictionary_get_uint64(xdict, "aBARi");
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getDataVaultSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ENManager_getDataVaultSizeWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__ENManager_getDataVaultSizeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 214);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__ENManager_getDataVaultSizeWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __44__ENManager_getDataVaultSizeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "bytes");
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (void)getInfoForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ENManager_getInfoForKey_completion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = keyCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = keyCopy;
  dispatch_async(dispatchQueue, block);
}

void __38__ENManager_getInfoForKey_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 201);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "iStr", v5);
  }

  v6 = [*(a1 + 40) _ensureXPCStarted];
  v7 = *(*(a1 + 40) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__ENManager_getInfoForKey_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v9 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v6, v4, v7, handler);
}

void __38__ENManager_getInfoForKey_completion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = xpc_dictionary_get_value(xdict, "oObj");
    if (v4)
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
      if (v5)
      {
        (*(*(a1 + 32) + 16))(*(a1 + 32), v5, 0);
      }

      else
      {
        __38__ENManager_getInfoForKey_completion___block_invoke_2_cold_1();
      }
    }

    else
    {
      __38__ENManager_getInfoForKey_completion___block_invoke_2_cold_2();
      v5 = v7;
    }
  }
}

- (void)getEntitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ENManager_getEntitiesWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __39__ENManager_getEntitiesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 150);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__ENManager_getEntitiesWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __39__ENManager_getEntitiesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v12 = v4;
    __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_1();
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
      v9 = [v5 objectForKeyedSubscript:@"acEn"];
      if (v9)
      {
        v10 = v9;
        v28 = 0;
        v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v28];
        v12 = v28;
        v13 = [v5 objectForKeyedSubscript:@"auEn"];

        if (v13)
        {
          v24 = v3;
          v27 = v12;
          v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v13 error:&v27];
          v15 = v27;

          v16 = [v14 firstObject];

          v17 = [v5 objectForKeyedSubscript:@"avaEn"];

          if (v17)
          {
            v26 = v15;
            v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v17 error:&v26];
            v19 = v26;

            v20 = [v18 firstObject];

            v21 = [v5 objectForKeyedSubscript:@"tnEn"];

            if (v21)
            {
              v25 = v19;
              v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v21 error:&v25];
              v23 = v25;

              (*(*(a1 + 32) + 16))();
              v19 = v23;
            }

            else
            {
              __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_2();
              v22 = v29;
            }

            v15 = v19;
          }

          else
          {
            __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_3();
            v21 = v29;
          }

          v12 = v15;
          v3 = v24;
        }

        else
        {
          __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_4();
          v16 = v29;
        }
      }

      else
      {
        __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_5();
        v12 = 0;
      }
    }

    else
    {
      __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_6();
      v12 = 0;
    }
  }
}

- (void)getAllEntitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ENManager_getAllEntitiesWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __42__ENManager_getAllEntitiesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 150);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v12 = v4;
    __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_1(a1);
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
      v9 = [v5 objectForKeyedSubscript:@"acEn"];
      if (v9)
      {
        v10 = v9;
        v31 = 0;
        v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v31];
        v12 = v31;
        v13 = [v5 objectForKeyedSubscript:@"auEn"];

        if (v13)
        {
          v30 = v12;
          v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v13 error:&v30];
          v15 = v30;

          v16 = [v14 firstObject];

          v17 = [v5 objectForKeyedSubscript:@"avaEn"];

          if (v17)
          {
            v29 = v15;
            [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v17 error:&v29];
            v18 = v17;
            v19 = v16;
            v20 = v5;
            v21 = v8;
            v22 = v11;
            v23 = v3;
            v25 = v24 = a1;
            v28 = v29;

            v26 = [v25 firstObject];

            v27 = *(v24 + 32);
            v3 = v23;
            v11 = v22;
            v8 = v21;
            v5 = v20;
            v16 = v19;
            v17 = v18;
            (*(v27 + 16))();
            v15 = v28;
          }

          else
          {
            __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_2();
            v26 = v32;
          }

          v12 = v15;
        }

        else
        {
          __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_3();
          v17 = v32;
        }
      }

      else
      {
        __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_4();
        v12 = 0;
      }
    }

    else
    {
      __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_5();
      v12 = 0;
    }
  }
}

- (void)onboardingDidStartForRegion:(id)region withSource:(id)source completion:(id)completion
{
  regionCopy = region;
  sourceCopy = source;
  completionCopy = completion;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager onboardingDidStartForRegion:withSource:completion:];
  }

  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__ENManager_onboardingDidStartForRegion_withSource_completion___block_invoke;
  v15[3] = &unk_278A4BB00;
  v16 = sourceCopy;
  v17 = regionCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = regionCopy;
  v14 = sourceCopy;
  dispatch_async(dispatchQueue, v15);
}

void __63__ENManager_onboardingDidStartForRegion_withSource_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 209);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "iStr", v5);
  }

  v6 = *(a1 + 40);
  v13 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v13];
  v8 = v13;
  if (v7)
  {
    xpc_dictionary_set_data(v4, "regionData", [v7 bytes], objc_msgSend(v7, "length"));
    v9 = [*(a1 + 48) _ensureXPCStarted];
    v10 = *(*(a1 + 48) + 80);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__ENManager_onboardingDidStartForRegion_withSource_completion___block_invoke_2;
    v11[3] = &unk_278A4B720;
    v12 = *(a1 + 56);
    xpc_connection_send_message_with_reply(v9, v4, v10, v11);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __63__ENManager_onboardingDidStartForRegion_withSource_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)getLastExposureNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ENManager_getLastExposureNotificationWithCompletion___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__ENManager_getLastExposureNotificationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 204);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__ENManager_getLastExposureNotificationWithCompletion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __55__ENManager_getLastExposureNotificationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v7 = v4;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_opt_class();
    v8 = 0;
    v6 = ENXPCDecodeSecureObjectIfPresent(v3, "noteObj", v5, &v8);
    v7 = v8;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)setAutomaticRegionSwitchEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setAutomaticRegionSwitchEnabled:completion:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ENManager_setAutomaticRegionSwitchEnabled_completion___block_invoke;
  block[3] = &unk_278A4B798;
  enabledCopy = enabled;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__ENManager_setAutomaticRegionSwitchEnabled_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 207);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__ENManager_setAutomaticRegionSwitchEnabled_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __56__ENManager_setAutomaticRegionSwitchEnabled_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setAvailabilityAlertEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setAvailabilityAlertEnabled:completion:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ENManager_setAvailabilityAlertEnabled_completion___block_invoke;
  block[3] = &unk_278A4B798;
  enabledCopy = enabled;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __52__ENManager_setAvailabilityAlertEnabled_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 215);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__ENManager_setAvailabilityAlertEnabled_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __52__ENManager_setAvailabilityAlertEnabled_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setCurrentActiveApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ENManager_setCurrentActiveApp_completion___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = appCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = appCopy;
  dispatch_async(dispatchQueue, block);
}

void __44__ENManager_setCurrentActiveApp_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 202);
  xpc_dictionary_set_string(v2, "aBid", [a1[4] utf8ValueSafe]);
  v3 = [a1[5] _ensureXPCStarted];
  v4 = *(a1[5] + 10);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__ENManager_setCurrentActiveApp_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = a1[6];
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __44__ENManager_setCurrentActiveApp_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setActiveEntityWithAppBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ENManager_setActiveEntityWithAppBundleID_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = dCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__ENManager_setActiveEntityWithAppBundleID_completion___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 151);
  if ([a1[4] length])
  {
    xpc_dictionary_set_string(v2, "aBid", [a1[4] utf8ValueSafe]);
    v3 = [a1[5] _ensureXPCStarted];
    v4 = *(a1[5] + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__ENManager_setActiveEntityWithAppBundleID_completion___block_invoke_2;
    handler[3] = &unk_278A4B720;
    v6 = a1[6];
    xpc_connection_send_message_with_reply(v3, v2, v4, handler);
  }

  else
  {
    __55__ENManager_setActiveEntityWithAppBundleID_completion___block_invoke_cold_1();
  }
}

void __55__ENManager_setActiveEntityWithAppBundleID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setActiveEntityWithRegion:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENManager_setActiveEntityWithRegion_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = regionCopy;
  v9 = completionCopy;
  v10 = regionCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__ENManager_setActiveEntityWithRegion_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 151);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ENManager_setActiveEntityWithRegion_completion___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __50__ENManager_setActiveEntityWithRegion_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setActiveRegion:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ENManager_setActiveRegion_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = regionCopy;
  v9 = completionCopy;
  v10 = regionCopy;
  dispatch_async(dispatchQueue, block);
}

void __40__ENManager_setActiveRegion_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 206);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ENManager_setActiveRegion_completion___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __40__ENManager_setActiveRegion_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setDeveloperServerConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = configurationCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(dispatchQueue, block);
}

void __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 54);
  if (*(a1 + 32))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      xpc_dictionary_set_value(v2, "svrCfg", v3);
      v4 = [*(a1 + 40) _ensureXPCStarted];
      v5 = *(*(a1 + 40) + 80);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke_2;
      handler[3] = &unk_278A4B720;
      v7 = *(a1 + 48);
      xpc_connection_send_message_with_reply(v4, v2, v5, handler);
    }

    else
    {
      __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke_cold_2();
  }
}

void __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)setWeeklySummaryAlertEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager setWeeklySummaryAlertEnabled:completion:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ENManager_setWeeklySummaryAlertEnabled_completion___block_invoke;
  block[3] = &unk_278A4B798;
  enabledCopy = enabled;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __53__ENManager_setWeeklySummaryAlertEnabled_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 216);
  xpc_dictionary_set_BOOL(v2, "enbd", *(a1 + 48));
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__ENManager_setWeeklySummaryAlertEnabled_completion___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __53__ENManager_setWeeklySummaryAlertEnabled_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)clearDeveloperServerConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ENManager_clearDeveloperServerConfigurationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __68__ENManager_clearDeveloperServerConfigurationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 54);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 80);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __68__ENManager_clearDeveloperServerConfigurationWithCompletionHandler___block_invoke_2;
  handler[3] = &unk_278A4B720;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __68__ENManager_clearDeveloperServerConfigurationWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)remotePresentationRequestDidComplete:(id)complete completion:(id)completion
{
  completeCopy = complete;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ENManager_remotePresentationRequestDidComplete_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = completeCopy;
  v9 = completionCopy;
  v10 = completeCopy;
  dispatch_async(dispatchQueue, block);
}

void __61__ENManager_remotePresentationRequestDidComplete_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 213);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "rpr", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__ENManager_remotePresentationRequestDidComplete_completion___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __61__ENManager_remotePresentationRequestDidComplete_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)fetchConfigurationsForRegion:(id)region forceServerFetch:(BOOL)fetch completion:(id)completion
{
  if (fetch)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(ENManager *)self fetchConfigurationsForRegion:region fetchReason:v5 completion:completion];
}

- (void)fetchConfigurationsForRegion:(id)region fetchReason:(unsigned int)reason completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke;
  v13[3] = &unk_278A4BBA0;
  reasonCopy = reason;
  selfCopy = self;
  v16 = completionCopy;
  v14 = regionCopy;
  v11 = completionCopy;
  v12 = regionCopy;
  dispatch_async(dispatchQueue, v13);
}

void __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 52);
  xpc_dictionary_set_int64(v2, "cty", 10);
  xpc_dictionary_set_int64(v2, "feRsn", *(a1 + 56));
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_cold_1();
  }
}

void __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v15 = v4;
    __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_1(a1);
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
      v13 = [v5 objectForKeyedSubscript:@"rgnCfg"];
      v26 = 0;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v13 error:&v26];
      v15 = v26;
      if (v14)
      {
        v23 = v3;
        v16 = a1;
        v17 = [v5 objectForKeyedSubscript:@"svrCfg"];

        v25 = v15;
        v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v17 error:&v25];
        v19 = v25;

        if (v18)
        {
          v20 = [v5 objectForKeyedSubscript:@"agnCfg"];

          v24 = v19;
          v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v20 error:&v24];
          v22 = v24;

          if (v21)
          {
            (*(*(v16 + 32) + 16))(*(v16 + 32), v14, v18, v21, 0);
          }

          else
          {
            __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_2();
          }

          v17 = v20;
          v19 = v22;
        }

        else
        {
          __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_3();
          v21 = v27;
        }

        v3 = v23;

        v13 = v17;
        v15 = v19;
      }

      else
      {
        __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_4();
        v18 = v27;
      }
    }

    else
    {
      __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_5();
      v15 = 0;
    }
  }
}

- (void)fetchSubdivisionsForCountry:(id)country completion:(id)completion
{
  countryCopy = country;
  completionCopy = completion;
  if (gLogCategory_ENManager <= 30 && (gLogCategory_ENManager != -1 || _LogCategory_Initialize()))
  {
    [ENManager fetchSubdivisionsForCountry:countryCopy completion:?];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = countryCopy;
  v9 = completionCopy;
  v10 = countryCopy;
  dispatch_async(dispatchQueue, block);
}

void __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 62);
  v3 = *(a1 + 32);
  if (v3)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__2;
    v11[4] = __Block_byref_object_dispose__2;
    v12 = 0;
    obj = 0;
    v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &obj);
    objc_storeStrong(&v12, obj);
    if (v4)
    {
      v5 = [*(a1 + 40) _ensureXPCStarted];
      v6 = *(*(a1 + 40) + 80);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke_2;
      handler[3] = &unk_278A4BBC8;
      v8 = *(a1 + 48);
      v9 = v11;
      xpc_connection_send_message_with_reply(v5, v2, v6, handler);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(v11, 8);
  }

  else
  {
    __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke_cold_1();
  }
}

void __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = xpc_dictionary_get_array(v3, "subCodes");
    v7 = v6;
    if (!v6 || (v9[0] = MEMORY[0x277D85DD0], v9[1] = 3221225472, v9[2] = __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke_3, v9[3] = &unk_278A4B1E8, v8 = *(a1 + 40), v9[4] = v5, v9[5] = v8, xpc_array_apply(v6, v9), !*(*(*(a1 + 40) + 8) + 40)))
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

uint64_t __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (string_ptr)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string_ptr];
      [*(a1 + 32) addObject:v8];
      v6 = 1;
      goto LABEL_6;
    }

    ENErrorF(16, "Can't get string pointer from xpc response");
  }

  else
  {
    ENErrorF(15, "Subdivisions element non-string");
  }
  v5 = ;
  v6 = 0;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
LABEL_6:

  return v6;
}

- (void)showBuddyForRegion:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENManager_showBuddyForRegion_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = regionCopy;
  v9 = handlerCopy;
  v10 = regionCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__ENManager_showBuddyForRegion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 217);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "regionData", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ENManager_showBuddyForRegion_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __50__ENManager_showBuddyForRegion_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)verifyTextMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ENManager_verifyTextMessage_completionHandler___block_invoke;
  block[3] = &unk_278A4B7C0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = messageCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__ENManager_verifyTextMessage_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "mTyp", 218);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = ENXPCEncodeSecureObject(v2, "txtMD", v3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 40) _ensureXPCStarted];
    v7 = *(*(a1 + 40) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__ENManager_verifyTextMessage_completionHandler___block_invoke_2;
    v8[3] = &unk_278A4B720;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __49__ENManager_verifyTextMessage_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

void __43__ENManager_activateWithCompletionHandler___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_activateInitial:completionHandler:.cold.2()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  LogPrintF_safe();
}

void __24__ENManager__reactivate__block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_entitlementCheckUpdate:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_xpcReceivedEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  v2 = CUPrintXPC();
  LogPrintF_safe();
}

void __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2_cold_1()
{
  v0 = ENErrorF(15, "TEK non-dict");
  OUTLINED_FUNCTION_4_2(v0);
}

void __59__ENManager__xpcHandlePreAuthorizedDiagnosisKeysAvailable___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  v7 = ENNestedErrorF(v1, 2, "TEK init XPC failed", v2, v3, v4, v5, v6, v8);
  OUTLINED_FUNCTION_7(v7);
}

- (void)_xpcHandleStatusChanged:initial:.cold.1()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  LogPrintF_safe();
}

- (void)_xpcHandleStatusChanged:initial:.cold.2()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  LogPrintF_safe();
}

- (void)_xpcHandleStatusChanged:initial:.cold.3()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  LogPrintF_safe();
}

- (void)_xpcHandleStatusChanged:initial:.cold.4()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  LogPrintF_safe();
}

- (void)pauseWithExpiration:completionHandler:.cold.1()
{
  v0 = CUPrintDurationDouble();
  LogPrintF_safe();
}

void __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2_cold_1()
{
  v0 = ENErrorF(15, "ENExposureInfo non-dict");
  OUTLINED_FUNCTION_4_2(v0);
}

void __57__ENManager__getExposureInfoCompleted_completionHandler___block_invoke_2_cold_2()
{
  v0 = ENErrorF(12, "ENExposureInfo init XPC failed");
  OUTLINED_FUNCTION_7(v0);
}

void __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke_2_cold_1()
{
  v0 = ENErrorF(15, "ENExposureWindow non-dict");
  OUTLINED_FUNCTION_4_2(v0);
}

void __60__ENManager__getExposureWindowsCompleted_completionHandler___block_invoke_2_cold_2()
{
  v0 = ENErrorF(12, "ENExposureWindow init XPC failed");
  OUTLINED_FUNCTION_7(v0);
}

- (void)_handleRemotePresentationRequest:completionHandler:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __54__ENManager__getDiagnosisKeysReply_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  v7 = ENNestedErrorF(v1, 12, "TEK init XPC failed", v2, v3, v4, v5, v6, v8);
  OUTLINED_FUNCTION_7(v7);
}

void __42__ENManager_diagnosticControl_completion___block_invoke_cold_1()
{
  ENErrorF(2, "Params conversion failed");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_1_2();
  v1(v0);
}

void __42__ENManager_diagnosticControl_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_16();
  ENErrorF(2, "No error, no response");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_6();
  v1(v0);
}

void __39__ENManager_diagnosticShow_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = ENErrorF(2, "Params conversion failed");
  (*(v2 + 16))(v2, 0, v3);
}

void __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke_2_cold_1()
{
  v0 = ENErrorF(15, "HistoryFiles non-dict");
  OUTLINED_FUNCTION_4_2(v0);
}

void __59__ENManager__getDetectionHistoryFilesCompleted_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  v7 = ENNestedErrorF(v1, 2, "HistoryFile init XPC failed", v2, v3, v4, v5, v6, v8);
  OUTLINED_FUNCTION_7(v7);
}

void __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke_2_cold_1()
{
  v0 = ENErrorF(15, "HistorySessions non-dict");
  OUTLINED_FUNCTION_4_2(v0);
}

void __62__ENManager__getDetectionHistorySessionsCompleted_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  v7 = ENNestedErrorF(v1, 2, "HistorySession init XPC failed", v2, v3, v4, v5, v6, v8);
  OUTLINED_FUNCTION_7(v7);
}

void __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  (*(*(a1 + 48) + 16))();
}

void __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_2_cold_1()
{
  ENErrorF(16, "No error, no nonce");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_1_2();
  v1(v0);
}

void __57__ENManager_startSelfReportWebSession_completionHandler___block_invoke_2_cold_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = ENErrorF(16, "No error, no API key");
    v2 = OUTLINED_FUNCTION_5_1();
    v3(v2);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_5_1();

    v5(v4);
  }
}

void __51__ENManager_allRegionConfigurationsWithCompletion___block_invoke_2_cold_1()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  LogPrintF_safe();
}

void __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_2()
{
  ENErrorF(16, "Region server configurations missing");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_1_2();
  v1(v0);
}

void __57__ENManager_allRegionServerConfigurationsWithCompletion___block_invoke_2_cold_3()
{
  ENErrorF(2, "No error, no response");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_1_2();
  v1(v0);
}

void __38__ENManager_getInfoForKey_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_16();
  ENErrorF(15, "Bad object");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_6();
  v1(v0);
}

uint64_t __38__ENManager_getInfoForKey_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_11();
  v2 = ENErrorF(15, "No error, no object");
  *v0 = v2;
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

uint64_t __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Missing turndown entity object");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

uint64_t __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Missing available entities object");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

uint64_t __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Missing authorized entities object");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

void __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_5()
{
  ENErrorF(16, "Missing active entity object");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  v0();
}

void __39__ENManager_getEntitiesWithCompletion___block_invoke_2_cold_6()
{
  ENErrorF(2, "No response dictionary");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  v0();
}

uint64_t __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Missing available entities object");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

uint64_t __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Missing authorized entities object");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

void __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_4()
{
  ENErrorF(16, "Missing active entity object");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  v0();
}

void __42__ENManager_getAllEntitiesWithCompletion___block_invoke_2_cold_5()
{
  ENErrorF(2, "No response dictionary");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  v0();
}

void __55__ENManager_setActiveEntityWithAppBundleID_completion___block_invoke_cold_1()
{
  ENErrorF(2, "Invalid bundle ID");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_3_2();
  v1(v0);
}

void __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke_cold_1()
{
  ENErrorF(2, "Configuration conversion failed");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_3_2();
  v1(v0);
}

void __63__ENManager_setDeveloperServerConfiguration_completionHandler___block_invoke_cold_2()
{
  ENErrorF(2, "Invalid Paramters, Rejecting Configuration");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_3_2();
  v1(v0);
}

void __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_16();
  v0 = ENErrorF(16, "Agency configurations not found");
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);
}

uint64_t __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Server configurations not found");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

uint64_t __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_11();
  v0 = ENErrorF(16, "Region configurations not found");
  v1 = OUTLINED_FUNCTION_2_1(v0);
  return v2(v1);
}

void __65__ENManager_fetchConfigurationsForRegion_fetchReason_completion___block_invoke_2_cold_5()
{
  ENErrorF(2, "No error, no response");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  v0();
}

- (void)fetchSubdivisionsForCountry:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 countryCode];
  LogPrintF_safe();
}

void __52__ENManager_fetchSubdivisionsForCountry_completion___block_invoke_cold_1()
{
  ENErrorF(15, "Invalid countryCode provided");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_1_2();
  v1(v0);
}

@end