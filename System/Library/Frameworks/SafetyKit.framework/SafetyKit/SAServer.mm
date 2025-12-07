@interface SAServer
+ (double)emergencyResponseVoiceCallTimeout;
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SACrashDetectionEvent)mostRecentCrashEvent;
- (SAServer)init;
- (int64_t)numberOfVoiceCallAttempts;
- (void)checkAndResetClientState;
- (void)dialVoiceCallToPhoneNumber:(id)number completionHandler:(id)handler;
- (void)iterateClientProxies:(id)proxies;
- (void)locationManager:(id)manager didUpdateLocation:(id)location;
- (void)mostRecentCrashEvent;
- (void)notifyCrashDetectedAt:(id)at resolvedAt:(id)resolvedAt resolvedWithResponse:(int64_t)response completion:(id)completion;
- (void)numberOfVoiceCallAttempts;
- (void)recoverMostRecentCrashEvent;
- (void)requestCrashDetectionAuthorization:(id)authorization;
- (void)requestMostRecentCrashDetectionEvent;
- (void)sendCrashEventToClients;
- (void)setMostRecentCrashEvent:(id)event;
- (void)setNumberOfVoiceCallAttempts:(int64_t)attempts;
- (void)telephonyManager:(id)manager didUpdateVoiceCallStatus:(int64_t)status;
- (void)updateMostRecentCrashDetectionEvent:(id)event completion:(id)completion;
- (void)updateVoiceCallStatus:(int64_t)status;
@end

@implementation SAServer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SAServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sSAServer;

  return v2;
}

uint64_t __26__SAServer_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSAServer = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SAServer)init
{
  v21.receiver = self;
  v21.super_class = SAServer;
  v2 = [(SAServer *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v4 = sa_default_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SAServer init];
    }

    v5 = dispatch_queue_create("com.apple.SafetyKit.SAServer", 0);
    messageQueue = v3->_messageQueue;
    v3->_messageQueue = v5;

    v7 = objc_opt_new();
    clientConnections = v3->_clientConnections;
    v3->_clientConnections = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.SafetyKit"];
    listener = v3->_listener;
    v3->_listener = v9;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener resume];
    v11 = [[SATelephonyManager alloc] initWithQueue:v3->_messageQueue];
    telephonyManager = v3->_telephonyManager;
    v3->_telephonyManager = v11;

    [(SATelephonyManager *)v3->_telephonyManager setDelegate:v3];
    v13 = +[SABundleManager crashDetectionManager];
    bundleManager = v3->_bundleManager;
    v3->_bundleManager = v13;

    v15 = objc_opt_new();
    locationManager = v3->_locationManager;
    v3->_locationManager = v15;

    [(SALocationManager *)v3->_locationManager setDelegate:v3];
    v17 = [[SACriticalNotification alloc] initWithBundleManager:v3->_bundleManager];
    criticalNotification = v3->_criticalNotification;
    v3->_criticalNotification = v17;

    locationAcquired = v3->_locationAcquired;
    v3->_locationAcquired = 0;

    [(SAServer *)v3 recoverMostRecentCrashEvent];
  }

  return v3;
}

- (void)checkAndResetClientState
{
  v3 = sa_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SAServer checkAndResetClientState];
  }

  mostRecentCrashEvent = [(SAServer *)self mostRecentCrashEvent];
  v5 = mostRecentCrashEvent;
  if (mostRecentCrashEvent)
  {
    timeOfResolution = [mostRecentCrashEvent timeOfResolution];
    [timeOfResolution timeIntervalSinceNow];
    v8 = -v7;
    [objc_opt_class() emergencyResponseVoiceCallTimeout];
    v10 = v9;

    if (v10 <= v8)
    {
      [(SAServer *)self setNumberOfVoiceCallAttempts:0];
      v11 = sa_default_log([(SAServer *)self updateMostRecentCrashDetectionEvent:0 completion:0]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SAServer checkAndResetClientState];
      }
    }

    else
    {
      [(SAServer *)self updateMostRecentCrashDetectionEvent:v5 completion:0];
    }
  }
}

- (SACrashDetectionEvent)mostRecentCrashEvent
{
  v2 = sa_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SAServer mostRecentCrashEvent];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"SAMostRecentCrashDetectionEvent"];
  if (v4)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];
    v6 = v10;
    v7 = sa_default_log(v6);
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SAServer mostRecentCrashEvent];
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SAServer mostRecentCrashEvent];
    }
  }

  else
  {
    v6 = sa_default_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SAServer mostRecentCrashEvent];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setMostRecentCrashEvent:(id)event
{
  eventCopy = event;
  v4 = sa_default_log(eventCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SAServer setMostRecentCrashEvent:];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = standardUserDefaults;
  if (eventCopy)
  {
    v12 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:eventCopy requiringSecureCoding:1 error:&v12];
    v8 = v12;
    v9 = sa_default_log(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SAServer setMostRecentCrashEvent:];
      }

      [v6 setObject:v7 forKey:@"SAMostRecentCrashDetectionEvent"];
      [v6 synchronize];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SAServer setMostRecentCrashEvent:];
      }
    }
  }

  else
  {
    v11 = sa_default_log(standardUserDefaults);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SAServer setMostRecentCrashEvent:];
    }

    [v6 removeObjectForKey:@"SAMostRecentCrashDetectionEvent"];
  }
}

- (void)recoverMostRecentCrashEvent
{
  [a2 numberOfVoiceCallAttempts];
  v8 = 136315650;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_23AA4D000, v2, v3, "%s - Recovered crash event, crashEvent: %@, numberOfVoiceCallAttempts: %ld", v4, v5, v6, v7, v8);
}

- (void)updateMostRecentCrashDetectionEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v8 = sa_default_log(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SAServer updateMostRecentCrashDetectionEvent:completion:];
  }

  [(SAServer *)self setMostRecentCrashEvent:eventCopy];
  if (eventCopy)
  {
    bundleManager = self->_bundleManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__SAServer_updateMostRecentCrashDetectionEvent_completion___block_invoke;
    v10[3] = &unk_278B67E68;
    v10[4] = self;
    v11 = completionCopy;
    [(SABundleManager *)bundleManager wakeApprovedAppsWithReason:0 completion:v10];
  }
}

uint64_t __59__SAServer_updateMostRecentCrashDetectionEvent_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 sendCrashEventToClients];
}

- (void)notifyCrashDetectedAt:(id)at resolvedAt:(id)resolvedAt resolvedWithResponse:(int64_t)response completion:(id)completion
{
  atCopy = at;
  resolvedAtCopy = resolvedAt;
  completionCopy = completion;
  [(SAServer *)self startMonitoringLocation];
  selfCopy = self;
  v14 = objc_sync_enter(selfCopy);
  if (selfCopy->_locationAcquired)
  {
    v15 = sa_default_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23AA4D000, v15, OS_LOG_TYPE_DEFAULT, "Reentrant notification, waiting for location on older semaphore", buf, 2u);
    }

    locationAcquired = selfCopy->_locationAcquired;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(locationAcquired, v17);
    if (v18)
    {
      v19 = sa_default_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SAServer notifyCrashDetectedAt:resolvedAt:resolvedWithResponse:completion:];
      }
    }

    v20 = selfCopy->_locationAcquired;
    selfCopy->_locationAcquired = 0;
  }

  else
  {
    v21 = dispatch_semaphore_create(0);
    v20 = selfCopy->_locationAcquired;
    selfCopy->_locationAcquired = v21;
  }

  objc_sync_exit(selfCopy);
  objc_initWeak(buf, selfCopy);
  messageQueue = selfCopy->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SAServer_notifyCrashDetectedAt_resolvedAt_resolvedWithResponse_completion___block_invoke;
  block[3] = &unk_278B67E90;
  objc_copyWeak(v30, buf);
  v27 = atCopy;
  v28 = resolvedAtCopy;
  v30[1] = response;
  v29 = completionCopy;
  v23 = completionCopy;
  v24 = resolvedAtCopy;
  v25 = atCopy;
  dispatch_async(messageQueue, block);

  objc_destroyWeak(v30);
  objc_destroyWeak(buf);
}

void __77__SAServer_notifyCrashDetectedAt_resolvedAt_resolvedWithResponse_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_loadWeakRetained((a1 + 56));
  objc_sync_enter(v2);
  v3 = [v2 locationAcquired];

  if (v3)
  {
    v4 = [v2 locationAcquired];
    v5 = dispatch_time(0, 5000000000);
    v6 = dispatch_semaphore_wait(v4, v5);

    if (v6)
    {
      v8 = sa_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SAServer notifyCrashDetectedAt:resolvedAt:resolvedWithResponse:completion:];
      }
    }

    [v2 setLocationAcquired:0];
  }

  objc_sync_exit(v2);

  v10 = sa_default_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SAServer notifyCrashDetectedAt:resolvedAt:resolvedWithResponse:completion:]_block_invoke";
    _os_log_impl(&dword_23AA4D000, v10, OS_LOG_TYPE_DEFAULT, "%s - Crash event resolved", &v17, 0xCu);
  }

  v11 = [SACrashDetectionEvent alloc];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v15 = [v2 mostRecentLocation];
  v16 = [(SACrashDetectionEvent *)v11 initWithTimeOfDetection:v12 timeOfResolution:v13 response:v14 location:v15];

  [v2 setNumberOfVoiceCallAttempts:0];
  [v2 updateMostRecentCrashDetectionEvent:v16 completion:*(a1 + 48)];
  [v2 stopMonitoringLocation];
}

- (int64_t)numberOfVoiceCallAttempts
{
  v2 = sa_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SAServer numberOfVoiceCallAttempts];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"SANumberOfVoiceCallAttempts"];
  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
    v6 = v11;
    v7 = sa_default_log(v6);
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SAServer numberOfVoiceCallAttempts];
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SAServer numberOfVoiceCallAttempts];
    }

    integerValue = [v5 integerValue];
  }

  else
  {
    v6 = sa_default_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SAServer numberOfVoiceCallAttempts];
    }

    integerValue = 0;
  }

  return integerValue;
}

- (void)setNumberOfVoiceCallAttempts:(int64_t)attempts
{
  v4 = sa_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SAServer setNumberOfVoiceCallAttempts:];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = MEMORY[0x277CCAAB0];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:attempts];
  v13 = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v13];
  v9 = v13;

  v11 = sa_default_log(v10);
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SAServer setNumberOfVoiceCallAttempts:];
    }

    [standardUserDefaults setObject:v8 forKey:@"SANumberOfVoiceCallAttempts"];
    [standardUserDefaults synchronize];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SAServer setNumberOfVoiceCallAttempts:];
    }
  }
}

- (void)updateVoiceCallStatus:(int64_t)status
{
  v5 = sa_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SAServer updateVoiceCallStatus:];
  }

  messageQueue = self->_messageQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SAServer_updateVoiceCallStatus___block_invoke;
  v7[3] = &unk_278B67ED8;
  v7[4] = self;
  v7[5] = status;
  dispatch_async(messageQueue, v7);
}

uint64_t __34__SAServer_updateVoiceCallStatus___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __34__SAServer_updateVoiceCallStatus___block_invoke_2;
  v3[3] = &__block_descriptor_40_e48_v24__0__NSXPCConnection_8___SAClientProtocol__16l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 iterateClientProxies:v3];
}

void __34__SAServer_updateVoiceCallStatus___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [SAAuthorization connectionAuthorizedForAnyEmergency:v5];
  v8 = v7;
  v9 = sa_default_log(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      __34__SAServer_updateVoiceCallStatus___block_invoke_2_cold_2();
    }

    [v6 updateVoiceCallStatus:*(a1 + 32)];
  }

  else
  {
    if (v10)
    {
      __34__SAServer_updateVoiceCallStatus___block_invoke_2_cold_1();
    }
  }
}

+ (double)emergencyResponseVoiceCallTimeout
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"SAEmergencyResponseVoiceCallTimeout"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 180.0;
  }

  return v5;
}

- (void)sendCrashEventToClients
{
  v20 = *MEMORY[0x277D85DE8];
  mostRecentCrashEvent = [(SAServer *)self mostRecentCrashEvent];

  if (mostRecentCrashEvent)
  {
    mostRecentCrashEvent2 = [(SAServer *)self mostRecentCrashEvent];
    isNotified = [mostRecentCrashEvent2 isNotified];

    if (isNotified)
    {
      v8 = sa_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        mostRecentCrashEvent3 = [(SAServer *)self mostRecentCrashEvent];
        *buf = 136315394;
        v17 = "[SAServer sendCrashEventToClients]";
        v18 = 2112;
        v19 = mostRecentCrashEvent3;
        _os_log_impl(&dword_23AA4D000, v8, OS_LOG_TYPE_DEFAULT, "%s - not sending already notified event, event: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = +[SAAuthorization approvedBundleId];

      if (v11)
      {
        objc_initWeak(buf, self);
        messageQueue = self->_messageQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __35__SAServer_sendCrashEventToClients__block_invoke;
        block[3] = &unk_278B67F28;
        objc_copyWeak(&v15, buf);
        block[4] = self;
        dispatch_async(messageQueue, block);
        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);
      }

      else
      {
        mostRecentCrashEvent4 = [(SAServer *)self mostRecentCrashEvent];
        [mostRecentCrashEvent4 setIsNotified:1];
        [(SAServer *)self setMostRecentCrashEvent:mostRecentCrashEvent4];
      }
    }
  }

  else
  {
    v10 = sa_default_log(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SAServer sendCrashEventToClients];
    }
  }
}

void __35__SAServer_sendCrashEventToClients__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SAServer_sendCrashEventToClients__block_invoke_2;
  v4[3] = &unk_278B67F00;
  v4[4] = WeakRetained;
  v4[5] = v3;
  [v3 iterateClientProxies:v4];
}

void __35__SAServer_sendCrashEventToClients__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [SAAuthorization connectionAuthorizedForCrashDetection:v5];
  v8 = v7;
  v9 = sa_default_log(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) mostRecentCrashEvent];
      v13 = 136315650;
      v14 = "[SAServer sendCrashEventToClients]_block_invoke_2";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_23AA4D000, v10, OS_LOG_TYPE_DEFAULT, "%s - authorized, sending, connection: %@, crashEvent: %@", &v13, 0x20u);
    }

    [*(*(a1 + 40) + 56) sendNotificationWithCompletionHandler:&__block_literal_global_2];
    v12 = [*(a1 + 32) mostRecentCrashEvent];
    [v6 updateMostRecentCrashDetectionEvent:v12];

    v10 = [*(a1 + 32) mostRecentCrashEvent];
    [v10 setIsNotified:1];
    [*(a1 + 32) setMostRecentCrashEvent:v10];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __35__SAServer_sendCrashEventToClients__block_invoke_2_cold_1(v5, a1);
  }
}

void __35__SAServer_sendCrashEventToClients__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sa_default_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __35__SAServer_sendCrashEventToClients__block_invoke_24_cold_1();
    }
  }

  else if (v4)
  {
    __35__SAServer_sendCrashEventToClients__block_invoke_24_cold_2();
  }
}

- (void)iterateClientProxies:(id)proxies
{
  proxiesCopy = proxies;
  v5 = self->_clientConnections;
  objc_sync_enter(v5);
  clientConnections = self->_clientConnections;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__SAServer_iterateClientProxies___block_invoke;
  v8[3] = &unk_278B67F50;
  v8[4] = self;
  v7 = proxiesCopy;
  v9 = v7;
  [(NSMutableArray *)clientConnections enumerateObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

void __33__SAServer_iterateClientProxies___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_28];
  (*(*(a1 + 40) + 16))();
}

void __33__SAServer_iterateClientProxies___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sa_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33__SAServer_iterateClientProxies___block_invoke_2_cold_1();
  }
}

- (void)requestMostRecentCrashDetectionEvent
{
  v3 = sa_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SAServer requestMostRecentCrashDetectionEvent];
  }

  [(SAServer *)self sendCrashEventToClients];
}

- (void)requestCrashDetectionAuthorization:(id)authorization
{
  v18 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = sa_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SAServer requestCrashDetectionAuthorization:];
  }

  v8 = +[SAAuthorization authorizationStatusForCurrentConnection];
  if (v8 != 2)
  {
    v10 = +[SAAuthorization isInFlight];
    if (v10)
    {
      v11 = sa_default_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SAServer requestCrashDetectionAuthorization:];
      }

      v12 = [SAError errorWithCode:4];
      authorizationCopy[2](authorizationCopy, v8, v12);
      goto LABEL_18;
    }

    v12 = +[SABundleManager bundleURLForCurrentConnection];
    if (v12)
    {
      v13 = [SAAuthorization startAuthorizationForBundleURL:v12 preflightAuthorizationStatus:v8 completionHandler:authorizationCopy];
      if (v13)
      {
LABEL_18:

        goto LABEL_19;
      }

      v14 = sa_default_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SAServer requestCrashDetectionAuthorization:];
      }

      v15 = [SAError errorWithCode:4];
      authorizationCopy[2](authorizationCopy, v8, v15);
    }

    else
    {
      v15 = [SAError errorWithCode:4];
      authorizationCopy[2](authorizationCopy, v8, v15);
    }

    goto LABEL_18;
  }

  v9 = sa_default_log(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SAServer requestCrashDetectionAuthorization:]";
    _os_log_impl(&dword_23AA4D000, v9, OS_LOG_TYPE_DEFAULT, "%s - app requesting authorization has already been authorized", &v16, 0xCu);
  }

  authorizationCopy[2](authorizationCopy, 2, 0);
LABEL_19:
  objc_sync_exit(selfCopy);
}

- (void)dialVoiceCallToPhoneNumber:(id)number completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  handlerCopy = handler;
  v8 = sa_default_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SAServer dialVoiceCallToPhoneNumber:completionHandler:];
  }

  v9 = +[SAAuthorization currentConnectionAuthorizedForAnyEmergency];
  if ((v9 & 1) == 0)
  {
    v13 = sa_default_log(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SAServer dialVoiceCallToPhoneNumber:completionHandler:];
    }

    v14 = 1;
    goto LABEL_22;
  }

  [(SAServer *)self checkAndResetClientState];
  if (![(SAServer *)self numberOfVoiceCallAttempts])
  {
    mostRecentCrashEvent = [(SAServer *)self mostRecentCrashEvent];
    if (!mostRecentCrashEvent || (v16 = mostRecentCrashEvent, -[SAServer mostRecentCrashEvent](self, "mostRecentCrashEvent"), v17 = objc_claimAutoreleasedReturnValue(), [v17 timeOfResolution], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceNow"), v20 = -v19, objc_msgSend(objc_opt_class(), "emergencyResponseVoiceCallTimeout"), v22 = v21, v18, v17, v16, v22 <= v20))
    {
      v23 = sa_default_log(mostRecentCrashEvent);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "[SAServer dialVoiceCallToPhoneNumber:completionHandler:]";
        _os_log_impl(&dword_23AA4D000, v23, OS_LOG_TYPE_DEFAULT, "%s - not placing voice call because request was not made around an emergency event.", buf, 0xCu);
      }

LABEL_21:
      v14 = 2;
LABEL_22:
      v24 = [SAError errorWithCode:v14];
      handlerCopy[2](handlerCopy, 0, v24);
      goto LABEL_23;
    }
  }

  numberOfVoiceCallAttempts = [(SAServer *)self numberOfVoiceCallAttempts];
  if (numberOfVoiceCallAttempts > 0 || ((numberOfVoiceCallAttempts = [(SAServer *)self numberOfVoiceCallAttempts], numberOfVoiceCallAttempts >= 0) ? (v11 = numberOfVoiceCallAttempts) : (v11 = -numberOfVoiceCallAttempts), v11 >= 3))
  {
    v12 = sa_default_log(numberOfVoiceCallAttempts);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[SAServer dialVoiceCallToPhoneNumber:completionHandler:]";
      v31 = 2048;
      numberOfVoiceCallAttempts2 = [(SAServer *)self numberOfVoiceCallAttempts];
      _os_log_impl(&dword_23AA4D000, v12, OS_LOG_TYPE_DEFAULT, "%s - not placing voice call because number of call attempts have exceeded, attempts, %ld", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v25 = sa_default_log(numberOfVoiceCallAttempts);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[SAServer dialVoiceCallToPhoneNumber:completionHandler:]";
    v31 = 2112;
    numberOfVoiceCallAttempts2 = numberCopy;
    v33 = 2048;
    numberOfVoiceCallAttempts3 = [(SAServer *)self numberOfVoiceCallAttempts];
    _os_log_impl(&dword_23AA4D000, v25, OS_LOG_TYPE_DEFAULT, "%s - attempting to place voice call, phoneNumber: %@, callAttempts: %ld", buf, 0x20u);
  }

  telephonyManager = self->_telephonyManager;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__SAServer_dialVoiceCallToPhoneNumber_completionHandler___block_invoke;
  v27[3] = &unk_278B67F78;
  v28 = handlerCopy;
  [(SATelephonyManager *)telephonyManager placeVoiceCall:numberCopy completionHandler:v27];
  v24 = v28;
LABEL_23:
}

void __57__SAServer_dialVoiceCallToPhoneNumber_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sa_default_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = 136315138;
      v9 = "[SAServer dialVoiceCallToPhoneNumber:completionHandler:]_block_invoke";
      _os_log_impl(&dword_23AA4D000, v6, OS_LOG_TYPE_DEFAULT, "%s - voice call accepted", &v8, 0xCu);
    }
  }

  else if (v7)
  {
    v8 = 136315394;
    v9 = "[SAServer dialVoiceCallToPhoneNumber:completionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_23AA4D000, v6, OS_LOG_TYPE_DEFAULT, "%s - voice call not accepted, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = sa_default_log(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SAServer listener:shouldAcceptNewConnection:];
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.developer.severe-vehicular-crash-event"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    objc_initWeak(&location, self);
    messageQueue = self->_messageQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__SAServer_listener_shouldAcceptNewConnection___block_invoke;
    v15[3] = &unk_278B67F28;
    objc_copyWeak(&v17, &location);
    v16 = connectionCopy;
    dispatch_async(messageQueue, v15);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = sa_default_log(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      location = 138412546;
      *location_4 = connectionCopy;
      *&location_4[8] = 2112;
      *&location_4[10] = @"com.apple.developer.severe-vehicular-crash-event";
      _os_log_impl(&dword_23AA4D000, v12, OS_LOG_TYPE_DEFAULT, "[WARN] New connection %@ missing entitlement: %@", &location, 0x16u);
    }
  }

  v13 = sa_default_log(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    location = 67109378;
    *location_4 = bOOLValue;
    *&location_4[4] = 2112;
    *&location_4[6] = connectionCopy;
    _os_log_impl(&dword_23AA4D000, v13, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: %d for connection: %@", &location, 0x12u);
  }

  return bOOLValue;
}

void __47__SAServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[6];
  objc_sync_enter(v3);
  [WeakRetained[6] addObject:*(a1 + 32)];
  objc_sync_exit(v3);

  v4 = SAClientInterface();
  [*(a1 + 32) setRemoteObjectInterface:v4];

  v5 = SAServerInterface();
  [*(a1 + 32) setExportedInterface:v5];

  [*(a1 + 32) setExportedObject:WeakRetained];
  [*(a1 + 32) setInterruptionHandler:&__block_literal_global_32];
  objc_initWeak(&location, *(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SAServer_listener_shouldAcceptNewConnection___block_invoke_33;
  v6[3] = &unk_278B67FA0;
  objc_copyWeak(&v7, (a1 + 40));
  objc_copyWeak(&v8, &location);
  [*(a1 + 32) setInvalidationHandler:v6];
  [*(a1 + 32) resume];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__SAServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v1 = sa_default_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23AA4D000, v1, OS_LOG_TYPE_DEFAULT, "SA client connection interrupted", v2, 2u);
  }
}

void __47__SAServer_listener_shouldAcceptNewConnection___block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = WeakRetained[6];
    objc_sync_enter(v5);
    [WeakRetained[6] removeObject:v4];
    objc_sync_exit(v5);
  }

  v6 = sa_default_log(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23AA4D000, v6, OS_LOG_TYPE_DEFAULT, "SA client connection invalidated", v7, 2u);
  }
}

- (void)telephonyManager:(id)manager didUpdateVoiceCallStatus:(int64_t)status
{
  objc_initWeak(&location, self);
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SAServer_telephonyManager_didUpdateVoiceCallStatus___block_invoke;
  block[3] = &unk_278B67FC8;
  objc_copyWeak(v8, &location);
  v8[1] = status;
  dispatch_async(messageQueue, block);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __54__SAServer_telephonyManager_didUpdateVoiceCallStatus___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  v4 = *(a1 + 40);
  if ((v4 - 1) < 2)
  {
    v5 = sa_default_log([WeakRetained setNumberOfVoiceCallAttempts:1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      v6 = "Updating voice call attempts due to active call: 1";
      v7 = v5;
      v8 = 2;
LABEL_7:
      _os_log_impl(&dword_23AA4D000, v7, OS_LOG_TYPE_DEFAULT, v6, v9, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v4 == 3)
  {
    v5 = sa_default_log([WeakRetained setNumberOfVoiceCallAttempts:{objc_msgSend(WeakRetained, "numberOfVoiceCallAttempts") - 1}]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 134217984;
      *&v9[4] = [v3 numberOfVoiceCallAttempts];
      v6 = "Updating voice call attempts due to failure: %ld";
      v7 = v5;
      v8 = 12;
      goto LABEL_7;
    }

LABEL_8:
  }

  [v3[2] wakeApprovedAppsWithReason:1 completion:{0, *v9, *&v9[8]}];
  [v3 updateVoiceCallStatus:*(a1 + 40)];
}

- (void)locationManager:(id)manager didUpdateLocation:(id)location
{
  selfCopy = self;
  locationCopy = location;
  objc_sync_enter(selfCopy);
  locationAcquired = selfCopy->_locationAcquired;
  if (locationAcquired)
  {
    dispatch_semaphore_signal(locationAcquired);
  }

  objc_sync_exit(selfCopy);

  [(SAServer *)selfCopy setMostRecentLocation:locationCopy];
}

- (void)mostRecentCrashEvent
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setMostRecentCrashEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setMostRecentCrashEvent:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setMostRecentCrashEvent:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)updateMostRecentCrashDetectionEvent:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)numberOfVoiceCallAttempts
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setNumberOfVoiceCallAttempts:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setNumberOfVoiceCallAttempts:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setNumberOfVoiceCallAttempts:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)updateVoiceCallStatus:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __34__SAServer_updateVoiceCallStatus___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

void __34__SAServer_updateVoiceCallStatus___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

void __35__SAServer_sendCrashEventToClients__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 32) mostRecentCrashEvent];
  v9 = 136315650;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_23AA4D000, v3, v4, "%s - unauthorized, not sending, connection: %@, crashEvent: %@", v5, v6, v7, v8, v9);
}

void __33__SAServer_iterateClientProxies___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestCrashDetectionAuthorization:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)dialVoiceCallToPhoneNumber:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end