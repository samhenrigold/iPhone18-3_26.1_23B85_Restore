@interface ENTestResultManager
+ (BOOL)checkValidNonce:(id)nonce size:(unint64_t)size;
+ (id)generateSecureNonce:(unint64_t)nonce;
- (BOOL)_getRevisionToken:(id *)token forSession:(id)session error:(id *)error;
- (BOOL)_setRevisionToken:(id)token forSession:(id)session error:(id *)error;
- (ENTestResultManager)initWithConfigurationStore:(id)store exposureDatabase:(id)database temporaryExposureKeyManager:(id)manager queue:(id)queue;
- (ENTestResultManagerDelegate)delegate;
- (id)_configurationForRegion:(id)region error:(id *)error;
- (id)_createSessionWithVerificationCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region maxRetryTime:(unint64_t)time error:(id *)error;
- (id)_createURLSessionWithSecondaryIdentifier:(BOOL)identifier;
- (id)_existingSessionForVerificationCode:(id)code region:(id)region;
- (id)_getTemporaryExposureKeysForUpload:(BOOL)upload requireConsentForRegion:(id)region error:(id *)error;
- (id)_metadataForSessionWithUUID:(id)d error:(id *)error;
- (id)_revisionTokenKeyForSession:(id)session;
- (id)_serverConfigurationForRegion:(id)region error:(id *)error;
- (id)_sessionWithUUID:(id)d error:(id *)error;
- (id)metadataForSessionWithUUID:(id)d error:(id *)error;
- (void)_activateAutomatedChaffingWithRegion:(id)region;
- (void)_deactivateAutomatedChaffing;
- (void)_finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler;
- (void)_invalidate;
- (void)_invalidateSession:(id)session;
- (void)_startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler;
- (void)_startSelfReportWebSession:(id)session completionHandler:(id)handler;
- (void)_startTestVerficationSessionWithCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler;
- (void)_updateChaffingTimerBlock;
- (void)activateAutomatedChaffingWithRegion:(id)region;
- (void)activateWebSession:(id)session verificationTimestamp:(double)timestamp nonceTimestamp:(double)nonceTimestamp;
- (void)deactivateAutomatedChaffing;
- (void)deactivateWebSession;
- (void)finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler;
- (void)invalidate;
- (void)startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler;
- (void)startSelfReportWebSession:(id)session completionHandler:(id)handler;
- (void)startTestVerficationSessionWithCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler;
@end

@implementation ENTestResultManager

+ (id)generateSecureNonce:(unint64_t)nonce
{
  v4 = [MEMORY[0x277CBEB20] dataWithLength:?];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC548], nonce, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 base64EncodedStringWithOptions:0];
  }

  return v5;
}

- (ENTestResultManager)initWithConfigurationStore:(id)store exposureDatabase:(id)database temporaryExposureKeyManager:(id)manager queue:(id)queue
{
  storeCopy = store;
  databaseCopy = database;
  managerCopy = manager;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = ENTestResultManager;
  v15 = [(ENTestResultManager *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configurationStore, store);
    objc_storeStrong(&v16->_exposureDatabase, database);
    objc_storeStrong(&v16->_temporaryExposureKeyManager, manager);
    objc_storeStrong(&v16->_queue, queue);
    v17 = [(ENTestResultManager *)v16 _createURLSessionWithSecondaryIdentifier:1];
    URLSession = v16->_URLSession;
    v16->_URLSession = v17;

    v19 = [(ENTestResultManager *)v16 _createURLSessionWithSecondaryIdentifier:0];
    URLBackupSession = v16->_URLBackupSession;
    v16->_URLBackupSession = v19;

    v16->_maxRetryTime = 900;
  }

  return v16;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ENTestResultManager_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  [(ENChaffTestResultSession *)self->_chaffSession invalidate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_sessionsByUUID allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_sessionsByUUID removeAllObjects];
  chaffingRegion = self->_chaffingRegion;
  self->_chaffingRegion = 0;

  [(ENXPCTimer *)self->_chaffingTimer invalidate];
  chaffingTimer = self->_chaffingTimer;
  self->_chaffingTimer = 0;
}

- (id)_createURLSessionWithSecondaryIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  defaultSessionConfiguration = [MEMORY[0x277CBABC0] defaultSessionConfiguration];
  v5 = ENBundleIdentifierForURLSessions();
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:v5];

  if (identifierCopy)
  {
    [defaultSessionConfiguration set_sourceApplicationSecondaryIdentifier:*MEMORY[0x277CC5BE8]];
  }

  v6 = [MEMORY[0x277CBABB0] sessionWithConfiguration:defaultSessionConfiguration];

  return v6;
}

- (void)activateAutomatedChaffingWithRegion:(id)region
{
  regionCopy = region;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ENTestResultManager_activateAutomatedChaffingWithRegion___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = regionCopy;
  v6 = regionCopy;
  dispatch_async(queue, v7);
}

- (void)_activateAutomatedChaffingWithRegion:(id)region
{
  regionCopy = region;
  if (self->_chaffingTimer && ([(ENRegion *)self->_chaffingRegion isEqual:regionCopy]& 1) == 0)
  {
    v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v6 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed)
    {
      if (gLogCategory_ENTestResultManager <= 40)
      {
        if (gLogCategory_ENTestResultManager != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          [(ENTestResultManager *)v8 _activateAutomatedChaffingWithRegion:v9, v10];
        }
      }
    }

    [(ENTestResultManager *)self _deactivateAutomatedChaffing];
  }

  date = [MEMORY[0x277CBEAA0] date];
  CFPrefs_GetDouble();
  if (v12 != 0.0)
  {
    v13 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
    currentCalendar = [MEMORY[0x277CBEA88] currentCalendar];
    v15 = [currentCalendar isDate:v13 inSameDayAsDate:date];

    if ((v15 & 1) == 0)
    {
      CFPrefs_RemoveValue();
      CFPrefs_RemoveValue();
    }
  }

  v61 = 0;
  v16 = [(ENTestResultManager *)self _serverConfigurationForRegion:regionCopy error:&v61];
  v17 = v61;
  if (!v16)
  {
    [(ENTestResultManager *)self _activateAutomatedChaffingWithRegion:regionCopy, v17];
    goto LABEL_69;
  }

  if (![v16 isChaffingEnabled] || (objc_msgSend(v16, "chaffingSelectionPercentage"), v18 <= 0.0) && (objc_msgSend(v16, "chaffingSelectionPercentageAlternative"), v19 <= 0.0))
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:?];
    goto LABEL_69;
  }

  v59 = regionCopy;
  Int64 = CFPrefs_GetInt64();
  v21 = CFPrefs_GetInt64();
  if (self->_chaffingTimer)
  {
    [(ENTestResultManager *)v16 _activateAutomatedChaffingWithRegion:v21, Int64];
    goto LABEL_68;
  }

  delegate = [(ENTestResultManager *)self delegate];
  if ([delegate isProxyEnabledForTestResultManager:self])
  {
    [v16 chaffingSelectionPercentageAlternative];
  }

  else
  {
    [v16 chaffingSelectionPercentage];
  }

  v24 = v23;

  CFPrefs_GetDouble();
  if (v25 == 0.0 || (v26 = v25, !IsAppleInternalBuild()))
  {
    v26 = v24;
  }

  v58 = v17;
  v27 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v27 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:v26];
  }

  if (v26 <= 0.0)
  {
    [(ENTestResultManager *)self _deactivateAutomatedChaffing];
LABEL_67:
    v17 = v58;
LABEL_68:
    regionCopy = v59;
    goto LABEL_69;
  }

  v29 = CFPrefs_GetInt64();
  v30 = vcvtd_n_f64_u32(arc4random(), 0x20uLL) * 100.0;
  v32 = v30 >= v26 && v29 == 0;
  v33 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed3 = [v33 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed3 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    v35 = "yes";
    if (v32)
    {
      v36 = "no";
    }

    else
    {
      v36 = "yes";
    }

    if (!v29)
    {
      v35 = "no";
    }

    LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _activateAutomatedChaffingWithRegion:]", 40, "Chaffing - Rolling: %lf, Selected: %s, Previously Selected: %s", v30, v36, v35);
  }

  if (v29)
  {
LABEL_45:
    if (v32)
    {
      [ENTestResultManager _activateAutomatedChaffingWithRegion:];
    }

    else
    {
      v37 = 0x15180 / [v16 maximumChaffsAllowedPerDay];
      v38 = arc4random_uniform(0x1C20u);
      if (v29)
      {
        v39 = arc4random_uniform(0x2A30u) + 3600;
      }

      else
      {
        v39 = v38 + 60;
      }

      v46 = v39;
      CFPrefs_GetDouble();
      if (v47 <= 0.0)
      {
        v48 = 900.0;
      }

      else
      {
        v46 = v47;
        v48 = 10.0;
      }

      v49 = CFPrefs_GetInt64();
      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v37;
      }

      v51 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed4 = [v51 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed4 && gLogCategory_ENTestResultManager <= 50 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
      {
        [ENTestResultManager _activateAutomatedChaffingWithRegion:v50];
      }

      v53 = [ENXPCTimer alloc];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __60__ENTestResultManager__activateAutomatedChaffingWithRegion___block_invoke;
      v60[3] = &unk_278FD1580;
      v60[4] = self;
      v54 = [(ENXPCTimer *)v53 initWithName:@"com.apple.exposureNotification.chaffing" delay:v50 gracePeriod:0 cadence:9153 priority:v60 options:v46 block:v48];
      chaffingTimer = self->_chaffingTimer;
      self->_chaffingTimer = v54;

      objc_storeStrong(&self->_chaffingRegion, region);
    }

    goto LABEL_67;
  }

  CFPrefs_GetDouble();
  if (v40 == 0.0)
  {
    [date timeIntervalSince1970];
    CFPrefs_SetDouble();
    goto LABEL_45;
  }

  v41 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
  currentCalendar2 = [MEMORY[0x277CBEA88] currentCalendar];
  v43 = [currentCalendar2 isDate:v41 inSameDayAsDate:date];

  if ((v43 & 1) == 0)
  {
    v56 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed5 = [v56 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed5 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      [ENTestResultManager _activateAutomatedChaffingWithRegion:];
    }

    [date timeIntervalSince1970];
    CFPrefs_SetDouble();

    goto LABEL_45;
  }

  v44 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed6 = [v44 isSensitiveLoggingAllowed];

  v17 = v58;
  regionCopy = v59;
  if (isSensitiveLoggingAllowed6 && gLogCategory_ENTestResultManager <= 10 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:];
  }

LABEL_69:
}

void __60__ENTestResultManager__activateAutomatedChaffingWithRegion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ENTestResultManager__activateAutomatedChaffingWithRegion___block_invoke_2;
  block[3] = &unk_278FD0F90;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)activateWebSession:(id)session verificationTimestamp:(double)timestamp nonceTimestamp:(double)nonceTimestamp
{
  sessionCopy = session;
  CFPrefs_SetDouble();
  CFPrefs_SetDouble();
  CFPrefs_SetValue();
}

- (void)deactivateAutomatedChaffing
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENTestResultManager_deactivateAutomatedChaffing__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_deactivateAutomatedChaffing
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v0 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _deactivateAutomatedChaffing]", 40, "Cannot deactivate chaffing, still in-progress");
  }
}

- (void)deactivateWebSession
{
  CFPrefs_RemoveValue();

  CFPrefs_RemoveValue();
}

void __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke_cold_1(v9);
    }
  }

  else
  {
    CFPrefs_SetInt64();
    v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v6 = [v5 isSensitiveLoggingAllowed];

    if (v6 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke_cold_2((a1 + 40));
    }
  }

  [*(*(a1 + 32) + 16) invalidate];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;
}

- (void)startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ENTestResultManager_startChaffTestVerficationSessionForRegion_completionHandler___block_invoke;
  block[3] = &unk_278FD1080;
  block[4] = self;
  v12 = regionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = regionCopy;
  dispatch_async(queue, block);
}

- (void)_startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler
{
  handlerCopy = handler;
  v17 = 0;
  v7 = [(ENTestResultManager *)self _configurationForRegion:region error:&v17];
  v8 = v17;
  if (v7)
  {
    delegate = [(ENTestResultManager *)self delegate];
    v10 = [delegate isProxyEnabledForTestResultManager:self];
    v11 = 40;
    if (v10)
    {
      v11 = 32;
    }

    v12 = *(&self->super.isa + v11);

    queue = self->_queue;
    v16 = v8;
    v14 = [ENChaffTestResultSession sessionWithConfiguration:v7 URLSession:v12 queue:queue error:&v16];
    v15 = v16;

    if (v14)
    {
      [(ENChaffTestResultSession *)self->_chaffSession invalidate];
      objc_storeStrong(&self->_chaffSession, v14);
      [v14 sendChaffMessagesWithCompletion:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy, v15);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, v8);
    v15 = v8;
  }
}

- (void)startTestVerficationSessionWithCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler
{
  codeCopy = code;
  regionCopy = region;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__ENTestResultManager_startTestVerficationSessionWithCode_proxyEnabled_region_completionHandler___block_invoke;
  block[3] = &unk_278FD2658;
  block[4] = self;
  v18 = codeCopy;
  enabledCopy = enabled;
  v19 = regionCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = regionCopy;
  v16 = codeCopy;
  dispatch_async(queue, block);
}

- (void)_startTestVerficationSessionWithCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler
{
  enabledCopy = enabled;
  codeCopy = code;
  regionCopy = region;
  handlerCopy = handler;
  v13 = [(ENTestResultManager *)self _existingSessionForVerificationCode:codeCopy region:regionCopy];
  if (!v13)
  {
    maxRetryTime = self->_maxRetryTime;
    v22 = 0;
    v15 = [(ENTestResultManager *)self _createSessionWithVerificationCode:codeCopy proxyEnabled:enabledCopy region:regionCopy maxRetryTime:maxRetryTime error:&v22];
    v16 = v22;
    v13 = v16;
    if (!v15)
    {
      handlerCopy[2](handlerCopy, 0, v16);
      goto LABEL_5;
    }

    v13 = v15;
  }

  uUID = [v13 UUID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__ENTestResultManager__startTestVerficationSessionWithCode_proxyEnabled_region_completionHandler___block_invoke;
  v19[3] = &unk_278FD2680;
  v20 = uUID;
  v21 = handlerCopy;
  v18 = uUID;
  [v13 verifyCodeWithCompletionHandler:v19];

LABEL_5:
}

uint64_t __98__ENTestResultManager__startTestVerficationSessionWithCode_proxyEnabled_region_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3)
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

- (void)startSelfReportWebSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ENTestResultManager_startSelfReportWebSession_completionHandler___block_invoke;
  block[3] = &unk_278FD1080;
  block[4] = self;
  v12 = sessionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)_startSelfReportWebSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v23 = 0;
  v8 = [(ENTestResultManager *)self _configurationForRegion:sessionCopy error:&v23];
  v9 = v23;
  v10 = v9;
  if (v8)
  {
    v22 = v9;
    v11 = [(ENTestResultManager *)self _serverConfigurationForRegion:sessionCopy error:&v22];
    v12 = v22;

    if (v11)
    {
      testVerificationAPIKey = [v8 testVerificationAPIKey];
      if (testVerificationAPIKey)
      {
        v14 = [ENTestResultManager generateSecureNonce:256];
        if ([ENTestResultManager checkValidNonce:v14 size:256])
        {
          CFPrefs_GetDouble();
          if (v15 > 0.0 && (v16 = v15, [MEMORY[0x277CBEAA0] date], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSince1970"), v19 = v18 - v16, v17, v20 = (86400 * objc_msgSend(v11, "selfReportTimeoutDays")), v19 < v20))
          {
            [(ENTestResultManager *)handlerCopy _startSelfReportWebSession:testVerificationAPIKey completionHandler:v20, v19];
          }

          else
          {
            CFPrefs_SetValue();
            date = [MEMORY[0x277CBEAA0] date];
            [date timeIntervalSince1970];
            CFPrefs_SetDouble();

            handlerCopy[2](handlerCopy, testVerificationAPIKey, v14, v12);
          }
        }

        else
        {
          [ENTestResultManager _startSelfReportWebSession:handlerCopy completionHandler:?];
        }
      }

      else
      {
        [ENTestResultManager _startSelfReportWebSession:handlerCopy completionHandler:&v24];
        v14 = v24;
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0, v12);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0, v9);
    v12 = v10;
  }
}

- (id)metadataForSessionWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ENTestResultManager_metadataForSessionWithUUID_error___block_invoke;
  v11[3] = &unk_278FD13C8;
  v11[4] = self;
  v12 = dCopy;
  v13 = &v15;
  errorCopy = error;
  v8 = dCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __56__ENTestResultManager_metadataForSessionWithUUID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _metadataForSessionWithUUID:*(a1 + 40) error:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler
{
  dCopy = d;
  metadataCopy = metadata;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ENTestResultManager_finishSessionWithUUID_userDidConsent_metadata_completionHandler___block_invoke;
  block[3] = &unk_278FD2658;
  block[4] = self;
  v18 = dCopy;
  consentCopy = consent;
  v19 = metadataCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = metadataCopy;
  v16 = dCopy;
  dispatch_sync(queue, block);
}

- (void)_finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler
{
  dCopy = d;
  metadataCopy = metadata;
  handlerCopy = handler;
  v34 = 0;
  v13 = [(ENTestResultManager *)self _sessionWithUUID:dCopy error:&v34];
  v14 = v34;
  if (!v13)
  {
    handlerCopy[2](handlerCopy, 0, v14);
    goto LABEL_16;
  }

  if (!consent)
  {
    [(ENTestResultManager *)self _invalidateSession:v13];
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_16;
  }

  getUploadingTemporaryExposureKeys = [v13 getUploadingTemporaryExposureKeys];
  if (getUploadingTemporaryExposureKeys)
  {
    v16 = getUploadingTemporaryExposureKeys;
  }

  else
  {
    region = [v13 region];
    v33 = v14;
    v16 = [(ENTestResultManager *)self _getTemporaryExposureKeysForUpload:1 requireConsentForRegion:region error:&v33];
    v18 = v33;

    if (!v16)
    {
      [(ENTestResultManager *)self _invalidateSession:v13];
      handlerCopy[2](handlerCopy, 0, v18);
      v14 = v18;
      goto LABEL_16;
    }

    v14 = v18;
  }

  v31 = v14;
  v32 = 0;
  v19 = [(ENTestResultManager *)self _getRevisionToken:&v32 forSession:v13 error:&v31];
  v20 = v32;
  v21 = v31;

  if (v19)
  {
    v30 = v21;
    v22 = [(ENTestResultManager *)self _metadataForSessionWithUUID:dCopy error:&v30];
    v14 = v30;

    if (v22)
    {
      CFStringGetTypeID();
      v25 = CFPrefs_CopyTypedValue();
      v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CC5B88]];
      v26 = v20;
      v24 = [v23 isEqualToNumber:&unk_285D6E4B0];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__ENTestResultManager__finishSessionWithUUID_userDidConsent_metadata_completionHandler___block_invoke;
      v27[3] = &unk_278FD26A8;
      v27[4] = self;
      v27[5] = v13;
      v27[6] = v25;
      v29 = v24;
      v20 = v26;
      v28 = handlerCopy;
      [v13 uploadTemporaryExposureKeys:v16 revisionToken:v26 userMetadata:metadataCopy completionHandler:v27];
    }

    else
    {
      [(ENTestResultManager *)self _invalidateSession:v13];
      handlerCopy[2](handlerCopy, 0, v14);
    }
  }

  else
  {
    [(ENTestResultManager *)self _invalidateSession:v13];
    handlerCopy[2](handlerCopy, 0, v21);
    v14 = v21;
  }

LABEL_16:
}

void __88__ENTestResultManager__finishSessionWithUUID_userDidConsent_metadata_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7 && a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v16 = v8;
    v11 = [v9 _setRevisionToken:v7 forSession:v10 error:&v16];
    v12 = v16;

    v8 = v12;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  else if (v7 || (a2 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(a1 + 48) && *(a1 + 64) == 1)
  {
    v13 = [MEMORY[0x277CBEAA0] date];
    [v13 timeIntervalSince1970];
    CFPrefs_SetDouble();

    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
  }

  [*(a1 + 32) _invalidateSession:*(a1 + 40)];
LABEL_11:
  Int64 = CFPrefs_GetInt64();
  CFPrefs_SetInt64();
  if (!Int64)
  {
    v15 = [MEMORY[0x277CBEAA0] date];
    [v15 timeIntervalSince1970];
    CFPrefs_SetDouble();
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_invalidateSession:(id)session
{
  sessionsByUUID = self->_sessionsByUUID;
  sessionCopy = session;
  uUID = [sessionCopy UUID];
  [(NSMutableDictionary *)sessionsByUUID setObject:0 forKeyedSubscript:uUID];

  [sessionCopy invalidate];
}

- (id)_configurationForRegion:(id)region error:(id *)error
{
  regionCopy = region;
  v7 = [(ENConfigurationStore *)self->_configurationStore serverConfigurationForRegion:regionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 enVersion] >= 2 && (objc_msgSend(v8, "enEnabled") & 1) != 0)
    {
      v9 = [(ENConfigurationStore *)self->_configurationStore downloadConfigurationForRegion:regionCopy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        [ENTestResultManager _configurationForRegion:error error:regionCopy];
      }

      goto LABEL_7;
    }

    if (error)
    {
      ENTestResultErrorF(10, "Test verification unsupported for %@", regionCopy);
LABEL_14:
      *error = v10 = 0;
      goto LABEL_7;
    }
  }

  else if (error)
  {
    ENTestResultErrorF(9, "Region %@ unavailable", regionCopy);
    goto LABEL_14;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_serverConfigurationForRegion:(id)region error:(id *)error
{
  regionCopy = region;
  v7 = [(ENConfigurationStore *)self->_configurationStore serverConfigurationForRegion:regionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 enVersion] >= 2 && (objc_msgSend(v8, "enEnabled") & 1) != 0)
    {
      v9 = v8;
      goto LABEL_5;
    }

    if (error)
    {
      ENTestResultErrorF(10, "Test verification unsupported for %@", regionCopy);
LABEL_12:
      *error = v9 = 0;
      goto LABEL_5;
    }
  }

  else if (error)
  {
    ENTestResultErrorF(9, "Region %@ unavailable", regionCopy);
    goto LABEL_12;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)_getTemporaryExposureKeysForUpload:(BOOL)upload requireConsentForRegion:(id)region error:(id *)error
{
  uploadCopy = upload;
  regionCopy = region;
  if (!regionCopy)
  {
LABEL_5:
    v13 = 144 * (((CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD8]) / 600.0) / 0x90) - 2016;
    temporaryExposureKeyManager = self->_temporaryExposureKeyManager;
    v27 = 0;
    v15 = [(ENTemporaryExposureKeyManager *)temporaryExposureKeyManager getTemporaryExposureKeysFromRollingStart:v13 includingActive:uploadCopy ^ 1 refresh:uploadCopy error:&v27];
    v16 = v27;
    v22 = v16;
    if (v15)
    {
      if ([v15 count])
      {
        v23 = v15;
LABEL_8:

        goto LABEL_9;
      }

      if (error)
      {
        v25 = ENTestResultErrorF(1, "Zero temporary exposure keys");
        goto LABEL_16;
      }
    }

    else if (error)
    {
      v25 = ENNestedTestResultErrorF(v16, 1, "Temporary exposure keys unavailable", v17, v18, v19, v20, v21, v26);
LABEL_16:
      v23 = 0;
      *error = v25;
      goto LABEL_8;
    }

    v23 = 0;
    goto LABEL_8;
  }

  v9 = [(ENConfigurationStore *)self->_configurationStore configurationForRegion:regionCopy];
  v10 = v9;
  if (v9)
  {
    userConsent = [v9 userConsent];
    consent = [userConsent consent];

    if (consent == 2)
    {

      goto LABEL_5;
    }

    if (error)
    {
      ENTestResultErrorF(9, "Region not authorized");
      goto LABEL_22;
    }
  }

  else if (error)
  {
    ENTestResultErrorF(9, "Missing region configuration");
    *error = LABEL_22:;
  }

  v23 = 0;
LABEL_9:

  return v23;
}

- (id)_sessionWithUUID:(id)d error:(id *)error
{
  v5 = [(NSMutableDictionary *)self->_sessionsByUUID objectForKeyedSubscript:d];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    [ENTestResultManager _sessionWithUUID:error error:?];
  }

  return v6;
}

- (id)_existingSessionForVerificationCode:(id)code region:(id)region
{
  v22 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  regionCopy = region;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_sessionsByUUID allValues];
  v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        verificationCode = [v12 verificationCode];
        if ([verificationCode isEqualToString:codeCopy])
        {
          region = [v12 region];
          v15 = [region isEqual:regionCopy];

          if (v15)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

LABEL_12:

  return v9;
}

- (id)_revisionTokenKeyForSession:(id)session
{
  uploadURL = [session uploadURL];
  v4 = MEMORY[0x277CCACA0];
  absoluteString = [uploadURL absoluteString];
  v6 = [v4 stringWithFormat:@"TEKUploadRevisionToken(%@)", absoluteString];

  return v6;
}

- (ENTestResultManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)checkValidNonce:(id)nonce size:(unint64_t)size
{
  if (!nonce)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEA98];
  nonceCopy = nonce;
  v7 = [[v5 alloc] initWithBase64EncodedString:nonceCopy options:0];

  if (v7)
  {
    v8 = [v7 length] == size;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateChaffingTimerBlock
{
  v3 = self->_chaffingRegion;
  if (v3)
  {
    v28 = 0;
    v4 = [(ENTestResultManager *)self _serverConfigurationForRegion:v3 error:&v28];
    v5 = v28;
    v6 = v5;
    if (!v4)
    {
      [(ENTestResultManager *)self _deactivateAutomatedChaffing];
      v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _updateChaffingTimerBlock]", 40, "Chaff Timer: No configuration for %@ with error %@", v3, v6);
      }

      goto LABEL_17;
    }

    v26 = v5;
    date = [MEMORY[0x277CBEAA0] date];
    currentCalendar = [MEMORY[0x277CBEA88] currentCalendar];
    Int64 = CFPrefs_GetInt64();
    CFPrefs_GetDouble();
    v11 = v10;
    if (!Int64 && v10 == 0.0)
    {
      [date timeIntervalSince1970];
      v11 = v12;
      CFPrefs_SetDouble();
    }

    v13 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:v11];
    v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed2 = [v14 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      v16 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:Int64];
      LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _updateChaffingTimerBlock]", 40, "Chaffing Timer update attempts: %@ and start: %@", v16, v13);
    }

    if (self->_chaffSession)
    {
      v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed3 = [v20 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed3 || gLogCategory_ENTestResultManager > 40 || gLogCategory_ENTestResultManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v22 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:Int64 + 1];
      LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _updateChaffingTimerBlock]", 40, "Current chaff attempt (%@) in-progress", v22);
    }

    else
    {
      if (([v13 isEqualToDate:date] & 1) == 0 && (objc_msgSend(currentCalendar, "isDate:inSameDayAsDate:", v13, date) & 1) == 0)
      {
        [(ENTestResultManager *)self _deactivateAutomatedChaffing];
        goto LABEL_16;
      }

      v17 = CFPrefs_GetInt64();
      if (Int64 < [v4 maximumChaffsAllowedPerDay] - v17)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke;
        v27[3] = &unk_278FD2630;
        v27[4] = self;
        v27[5] = Int64;
        [(ENTestResultManager *)self _startChaffTestVerficationSessionForRegion:v3 completionHandler:v27];
LABEL_16:

        v6 = v26;
LABEL_17:

        goto LABEL_18;
      }

      v23 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed4 = [v23 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed4 || gLogCategory_ENTestResultManager > 40 || gLogCategory_ENTestResultManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v22 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:Int64];
      v25 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:v17];
      LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _updateChaffingTimerBlock]", 40, "All Chaffs attempted for today. (Chaffs: %@, User-Initiated: %@)", v22, v25);
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (id)_metadataForSessionWithUUID:(id)d error:(id *)error
{
  v5 = [(ENTestResultManager *)self _sessionWithUUID:d error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getMetadataAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createSessionWithVerificationCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region maxRetryTime:(unint64_t)time error:(id *)error
{
  enabledCopy = enabled;
  codeCopy = code;
  v13 = [(ENTestResultManager *)self _configurationForRegion:region error:error];
  if (v13)
  {
    v14 = [(ENTestResultManager *)self _getTemporaryExposureKeysForUpload:0 requireConsentForRegion:0 error:error];
    if (!v14)
    {
      v27 = 0;
      goto LABEL_24;
    }

    CFStringGetTypeID();
    v15 = CFPrefs_CopyTypedValue();
    v34 = v14;
    if (!v15)
    {
      goto LABEL_8;
    }

    if (![ENTestResultManager checkValidNonce:v15 size:256])
    {
      if (error)
      {
        ENTestResultErrorF(5, "Self report nonce is invalid");
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

LABEL_23:

LABEL_24:
      goto LABEL_25;
    }

    CFPrefs_GetDouble();
    if (v16 > 0.0 && (v17 = v16, [MEMORY[0x277CBEAA0] date], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSince1970"), v20 = v19 - v17, v18, v20 > 86400.0))
    {
      v21 = codeCopy;
      CFPrefs_RemoveValue();

      v15 = 0;
    }

    else
    {
LABEL_8:
      v21 = codeCopy;
    }

    v22 = 40;
    if (enabledCopy)
    {
      v22 = 32;
    }

    v23 = *(&self->super.isa + v22);
    v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v24 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      v26 = "no";
      if (enabledCopy)
      {
        v26 = "yes";
      }

      LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _createSessionWithVerificationCode:proxyEnabled:region:maxRetryTime:error:]", 40, "Session proxy enabled: %s", v26);
    }

    codeCopy = v21;
    v27 = [ENTestResultSession sessionWithVerificationCode:v21 configuration:v13 maxRetryTime:time nonce:v15 URLSession:v23 queue:self->_queue error:error];
    if (v27)
    {
      sessionsByUUID = self->_sessionsByUUID;
      if (!sessionsByUUID)
      {
        v29 = objc_alloc_init(MEMORY[0x277CBEB30]);
        v30 = self->_sessionsByUUID;
        self->_sessionsByUUID = v29;

        sessionsByUUID = self->_sessionsByUUID;
      }

      uUID = [v27 UUID];
      [(NSMutableDictionary *)sessionsByUUID setObject:v27 forKeyedSubscript:uUID];

      v32 = v27;
    }

    v14 = v34;
    goto LABEL_23;
  }

  v27 = 0;
LABEL_25:

  return v27;
}

- (BOOL)_getRevisionToken:(id *)token forSession:(id)session error:(id *)error
{
  sessionCopy = session;
  if ([(ENExposureDatabase *)self->_exposureDatabase openWithError:error])
  {
    exposureDatabase = self->_exposureDatabase;
    v10 = [(ENTestResultManager *)self _revisionTokenKeyForSession:sessionCopy];
    v11 = [(ENExposureDatabase *)exposureDatabase getValue:token forKey:v10 ofClass:objc_opt_class() error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_setRevisionToken:(id)token forSession:(id)session error:(id *)error
{
  tokenCopy = token;
  sessionCopy = session;
  if ([(ENExposureDatabase *)self->_exposureDatabase openWithError:error])
  {
    exposureDatabase = self->_exposureDatabase;
    v11 = [(ENTestResultManager *)self _revisionTokenKeyForSession:sessionCopy];
    v12 = ENDefaultExpirationDate();
    v13 = [(ENExposureDatabase *)exposureDatabase setValue:tokenCopy forKey:v11 expiryDate:v12 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_activateAutomatedChaffingWithRegion:(void *)a1 .cold.2(void *a1)
{
  [a1 _deactivateAutomatedChaffing];
  v1 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v2 = [v1 isSensitiveLoggingAllowed];

  if (v2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _activateAutomatedChaffingWithRegion:]", 40, "Chaffing disabled for this region");
  }
}

- (void)_activateAutomatedChaffingWithRegion:(unint64_t)a3 .cold.3(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v7 = [v6 isSensitiveLoggingAllowed];

  if (v7 && gLogCategory_ENTestResultManager <= 10 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    if (a3 >= [a1 maximumChaffsAllowedPerDay] - a2)
    {
      v8 = "All Chaffs attempted for today.";
    }

    else
    {
      v8 = "Chaffing already in-progress";
    }

    LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _activateAutomatedChaffingWithRegion:]", 10, "%s", v8);
  }
}

- (void)_activateAutomatedChaffingWithRegion:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABA8] numberWithDouble:?];
  v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:a1];
  LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _activateAutomatedChaffingWithRegion:]", 50, "Start Chaffing Timer with delay: %@ and cadence: %@", v2, v3);
}

- (void)_activateAutomatedChaffingWithRegion:.cold.7()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _activateAutomatedChaffingWithRegion:]", 40, "Device not selected to perform chaffing");
  }
}

- (void)_activateAutomatedChaffingWithRegion:(uint64_t)a3 .cold.9(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 _deactivateAutomatedChaffing];
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (v6 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _activateAutomatedChaffingWithRegion:]", 40, "No configuration for %@ with error %@", a2, a3);
  }
}

void __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke_cold_2(void *a1)
{
  v1 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*a1 + 1];
  LogPrintF_safe(&gLogCategory_ENTestResultManager, "[ENTestResultManager _updateChaffingTimerBlock]_block_invoke", 40, "Chaffing Finished attempt: %@", v1);
}

- (void)_startSelfReportWebSession:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v2 = ENTestResultErrorF(5, "Self report not able to generate nonce");
  (*(a1 + 16))(a1, 0, 0, v2);
}

- (void)_startSelfReportWebSession:(double)a3 completionHandler:(double)a4 .cold.2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = ENTestResultErrorF(5, "Rate limiting Self Report %f", a3 - a4);
  (*(a1 + 16))(a1, a2, 0, v6);
}

- (uint64_t)_startSelfReportWebSession:(uint64_t)a1 completionHandler:(uint64_t *)a2 .cold.3(uint64_t a1, uint64_t *a2)
{
  v4 = ENTestResultErrorF(10, "Self report no valid API key");
  *a2 = v4;
  return (*(a1 + 16))(a1, 0, 0, v4);
}

- (void)_configurationForRegion:(void *)result error:(uint64_t)a2 .cold.1(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = ENTestResultErrorF(9, "Test verification configuration unavailable for %@", a2);
    *v2 = result;
  }

  return result;
}

- (void)_sessionWithUUID:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENTestResultErrorF(5, "Session not found");
    *v1 = result;
  }

  return result;
}

@end