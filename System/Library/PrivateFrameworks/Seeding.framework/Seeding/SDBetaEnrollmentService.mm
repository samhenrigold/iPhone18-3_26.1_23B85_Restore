@interface SDBetaEnrollmentService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_connectionForPid:(id)pid;
- (id)remoteObjectProxyForPID:(id)d;
- (void)_releaseAppConnectionWithPid:(int)pid;
- (void)_startListeningForProfileChanges;
- (void)_stopListeningForProfileChanges;
- (void)_storeAppConnection:(id)connection;
- (void)_verifyCurrentDevice;
- (void)canDeviceEnrollInBetaUpdates:(id)updates completion:(id)completion;
- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion;
- (void)checkIn;
- (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy language:(id)language completion:(id)completion;
- (void)dealloc;
- (void)deleteSeedingAppleAccountForDevice:(id)device completion:(id)completion;
- (void)enrollDevice:(id)device inProgram:(id)program completion:(id)completion;
- (void)enrollInProgramWithToken:(id)token language:(id)language completion:(id)completion;
- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion;
- (void)getCurrentDevice:(id)device;
- (void)getCurrentPrimaryAppleIDForDevice:(id)device completion:(id)completion;
- (void)getCurrentSeedingAppleIDForDevice:(id)device completion:(id)completion;
- (void)getDevicesForPlatforms:(unint64_t)platforms completion:(id)completion;
- (void)invalidateDaemonCacheWithCompletion:(id)completion;
- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion;
- (void)isDeviceUsingSeedingAppleID:(id)d completion:(id)completion;
- (void)loadMDMConfigurationWithCompletion:(id)completion;
- (void)queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching language:(id)language completion:(id)completion;
- (void)setAppleAccountIdentifierFromAlternateDSID:(id)d forDevice:(id)device completion:(id)completion;
- (void)start;
- (void)unenrollDevice:(id)device completion:(id)completion;
@end

@implementation SDBetaEnrollmentService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SDBetaEnrollmentService sharedInstance];
  }

  v3 = sharedInstance_daemon;

  return v3;
}

uint64_t __41__SDBetaEnrollmentService_sharedInstance__block_invoke()
{
  sharedInstance_daemon = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(SDBetaEnrollmentService *)self _stopListeningForProfileChanges];
  v3.receiver = self;
  v3.super_class = SDBetaEnrollmentService;
  [(SDBetaEnrollmentService *)&v3 dealloc];
}

- (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = Log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v15 = "[SDBetaEnrollmentService start]";
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v4 = +[SDAnalytics deviceIdentifier];
  v5 = +[SDBetaManager sharedManager];
  [v5 _migrateFromProfilesIfNeeded];

  v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.seeding.client"];
  [(SDBetaEnrollmentService *)self setListener:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-listener-queue", @"com.apple.seeding.client"];
  v8 = dispatch_queue_create([v7 cStringUsingEncoding:4], 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SDBetaEnrollmentService_start__block_invoke;
  block[3] = &unk_2787CB588;
  block[4] = self;
  dispatch_async(v8, block);

  if (_os_feature_enabled_impl())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277CCA7C0];
    defaultStore = [MEMORY[0x277CCAD80] defaultStore];
    v12 = [defaultCenter addObserverForName:v10 object:defaultStore queue:0 usingBlock:&__block_literal_global_14];
  }

  if (_os_feature_enabled_impl())
  {
    [(SDBetaEnrollmentService *)self _startListeningForProfileChanges];
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_20);
  [(SDBetaEnrollmentService *)self checkIn];
}

void __32__SDBetaEnrollmentService_start__block_invoke(uint64_t a1)
{
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __32__SDBetaEnrollmentService_start__block_invoke_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = [v3 listener];
  [v4 setDelegate:v3];

  v6 = Log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __32__SDBetaEnrollmentService_start__block_invoke_cold_2(v6);
  }

  v7 = [*(a1 + 32) listener];
  [v7 resume];
}

void __32__SDBetaEnrollmentService_start__block_invoke_11(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = Log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Got an iCKVS notification: %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x277CCAD80] defaultStore];
  [v4 synchronize];
}

- (void)_startListeningForProfileChanges
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = Log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v13 = "[SDBetaEnrollmentService _startListeningForProfileChanges]";
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  profileToken = self->_profileToken;
  p_profileToken = &self->_profileToken;
  if (!profileToken)
  {
    v7 = Log(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "Registering to listen for profile installations.", buf, 2u);
    }

    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seeding"];
    v10 = @"EnableProfiles";
    v11 = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v8 registerDefaults:v9];

    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", p_profileToken, MEMORY[0x277D85CD0], &__block_literal_global_26);
    +[SDProfileUtilities removeSeedProfileIfRestricted];
  }
}

uint64_t __59__SDBetaEnrollmentService__startListeningForProfileChanges__block_invoke(uint64_t a1)
{
  v1 = Log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E41E000, v1, OS_LOG_TYPE_DEFAULT, "Detected installation of a profile, will try removing if it's a seed profile.", v3, 2u);
  }

  return +[SDProfileUtilities removeSeedProfileIfRestricted];
}

- (void)_stopListeningForProfileChanges
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = Log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = "[SDBetaEnrollmentService _stopListeningForProfileChanges]";
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "%{public}s", &v5, 0xCu);
  }

  profileToken = self->_profileToken;
  if (profileToken)
  {
    notify_cancel(profileToken);
    self->_profileToken = 0;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.seeding.client"];
  v9 = v8;
  if (v8 && (v8 = [v8 BOOLValue], (v8 & 1) != 0))
  {

    processIdentifier = [connectionCopy processIdentifier];
    v11 = processIdentifier;
    v12 = Log(processIdentifier);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = v11;
      _os_log_impl(&dword_22E41E000, v12, OS_LOG_TYPE_DEFAULT, "New connection from pid [%ld]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v13 = _allowListedXPCClientInterface();
    [connectionCopy setRemoteObjectInterface:v13];

    v14 = _allowListedXPCServerInterface();
    [connectionCopy setExportedInterface:v14];

    [connectionCopy setExportedObject:self];
    v15 = [connectionCopy description];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke;
    v29[3] = &unk_2787CB610;
    v16 = v15;
    v30 = v16;
    objc_copyWeak(&v31, buf);
    v32 = v11;
    [connectionCopy setInvalidationHandler:v29];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke_28;
    v25 = &unk_2787CB610;
    v17 = v16;
    v26 = v17;
    objc_copyWeak(&v27, buf);
    v28 = v11;
    [connectionCopy setInterruptionHandler:&v22];
    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained _storeAppConnection:{connectionCopy, v22, v23, v24, v25}];

    [connectionCopy resume];
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
    v19 = 1;
  }

  else
  {
    v20 = Log(v8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SDBetaEnrollmentService listener:connectionCopy shouldAcceptNewConnection:?];
    }

    v19 = 0;
  }

  return v19;
}

void __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "connection [%{public}@] was invalidated", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _releaseAppConnectionWithPid:*(a1 + 48)];
}

void __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke_28(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "connection [%{public}@] was interrupted", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _releaseAppConnectionWithPid:*(a1 + 48)];
}

- (void)_storeAppConnection:(id)connection
{
  connectionCopy = connection;
  v5 = Log(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SDBetaEnrollmentService *)connectionCopy _storeAppConnection:v5];
  }

  if ([connectionCopy effectiveUserIdentifier])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(connectionCopy, "effectiveUserIdentifier")}];
    [(SDBetaEnrollmentService *)self setUserIdentifier:v6];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
  appConnections = [(SDBetaEnrollmentService *)selfCopy appConnections];
  [appConnections setObject:connectionCopy forKeyedSubscript:v8];

  objc_sync_exit(selfCopy);
}

- (void)_releaseAppConnectionWithPid:(int)pid
{
  v3 = *&pid;
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  v6 = Log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Clearing connection [%i]", v9, 8u);
  }

  appConnections = [(SDBetaEnrollmentService *)selfCopy appConnections];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [appConnections removeObjectForKey:v8];

  objc_sync_exit(selfCopy);
}

- (id)_connectionForPid:(id)pid
{
  pidCopy = pid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appConnections = [(SDBetaEnrollmentService *)selfCopy appConnections];
  v7 = [appConnections objectForKeyedSubscript:pidCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)remoteObjectProxyForPID:(id)d
{
  dCopy = d;
  v5 = [(SDBetaEnrollmentService *)self _connectionForPid:dCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke;
  v9[3] = &unk_2787CB638;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke(uint64_t a1)
{
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke_cold_1(a1);
  }
}

- (void)checkIn
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = Log([(SDBetaEnrollmentService *)self _verifyCurrentDevice]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[SDDevice _currentDevice];
    identifier = [v4 identifier];
    *buf = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Checking in device %@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__SDBetaEnrollmentService_checkIn__block_invoke;
  handler[3] = &unk_2787CB660;
  handler[4] = self;
  xpc_activity_register("com.apple.betaenrollment.verify", v6, handler);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_35);
}

void __34__SDBetaEnrollmentService_checkIn__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = Log(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "Verifying device enrollment on XPC Activity schedule.", v6, 2u);
    }

    [*(a1 + 32) _verifyCurrentDevice];
  }

  else if (!state)
  {
    v4 = Log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Verify activity checking in.", buf, 2u);
    }
  }
}

- (void)_verifyCurrentDevice
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = Log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v9 = "[SDBetaEnrollmentService _verifyCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v3 = SDTransactionCreate("[SDBetaEnrollmentService _verifyCurrentDevice]");
  v4 = +[SDBetaManager sharedManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke;
  v6[3] = &unk_2787CB588;
  v7 = v3;
  v5 = v3;
  [v4 ensureThisRunsAfterMigration:v6];
}

void __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke(uint64_t a1)
{
  v2 = +[SDDevice _currentDevice];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke_2;
  v3[3] = &unk_2787CB688;
  v4 = *(a1 + 32);
  [v2 _verifyEnrollmentWithUserIdentifier:0 completion:v3];
}

void __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke_2(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = Log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NOT valid, unenrolling.";
    if (a2)
    {
      v4 = @"valid";
    }

    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Verified enrollment as %{public}@", &v5, 0xCu);
  }
}

- (void)getCurrentDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = Log(deviceCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v13 = "[SDBetaEnrollmentService getCurrentDevice:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5 = SDTransactionCreate("[SDBetaEnrollmentService getCurrentDevice:]");
  v6 = +[SDBetaManager sharedManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SDBetaEnrollmentService_getCurrentDevice___block_invoke;
  v9[3] = &unk_2787CB6B0;
  v10 = v5;
  v11 = deviceCopy;
  v7 = deviceCopy;
  v8 = v5;
  [v6 ensureThisRunsAfterMigration:v9];
}

void __44__SDBetaEnrollmentService_getCurrentDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = +[SDDevice _currentDevice];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)enrollDevice:(id)device inProgram:(id)program completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  programCopy = program;
  completionCopy = completion;
  v11 = Log(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v25 = "[SDBetaEnrollmentService enrollDevice:inProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v12 = SDTransactionCreate("[SDBetaEnrollmentService enrollDevice:inProgram:completion:]");
  v13 = +[SDBetaManager sharedManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke;
  v18[3] = &unk_2787CB6D8;
  v19 = v12;
  v20 = deviceCopy;
  selfCopy = self;
  v23 = completionCopy;
  v21 = programCopy;
  v14 = completionCopy;
  v15 = programCopy;
  v16 = deviceCopy;
  v17 = v12;
  [v13 ensureThisRunsAfterMigration:v18];
}

void __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 40) platform];
  if (v3 != [*(a1 + 48) platform])
  {
    v9 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_1(v2, (a1 + 48));
    }

    v10 = SDErrorForBetaManagerErrorType(5);
    v11 = *(*(a1 + 64) + 16);
    goto LABEL_12;
  }

  v4 = +[SDBetaManager sharedManager];
  v5 = [v4 _isEnrollmentAllowedByDeviceManagement_legacy];

  if ((v5 & 1) == 0)
  {
    v8 = Log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_2(v8);
    }

    goto LABEL_11;
  }

  v7 = +[SDMDMConfiguratorImplementation isBetaEnrollmentDisabled];
  if (v7)
  {
    v8 = Log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_3(v8);
    }

LABEL_11:

    v12 = *(a1 + 64);
    v10 = SDErrorForBetaManagerErrorType(13);
    v11 = *(v12 + 16);
LABEL_12:
    v11();

    return;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = [*(a1 + 56) userIdentifier];
  [v13 _enrollInBetaProgram:v14 userIdentifier:v15];

  v16 = *(*(a1 + 64) + 16);

  v16();
}

- (void)getDevicesForPlatforms:(unint64_t)platforms completion:(id)completion
{
  completionCopy = completion;
  v6 = SDTransactionCreate("[SDBetaEnrollmentService getDevicesForPlatforms:completion:]");
  v7 = +[SDBetaManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SDBetaEnrollmentService_getDevicesForPlatforms_completion___block_invoke;
  v10[3] = &unk_2787CB700;
  v11 = v6;
  v12 = completionCopy;
  platformsCopy = platforms;
  v8 = completionCopy;
  v9 = v6;
  [v7 ensureThisRunsAfterMigration:v10];
}

void __61__SDBetaEnrollmentService_getDevicesForPlatforms_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [SDDevice _devicesMatchingPlatforms:*(a1 + 48)];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching language:(id)language completion:(id)completion
{
  matchingCopy = matching;
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  languageCopy = language;
  v11 = Log(languageCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v20 = "[SDBetaEnrollmentService queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:]";
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v12 = SDTransactionCreate("[SDBetaEnrollmentService queryProgramsForSystemAccountsWithPlatforms:disableBuildPrefixMatching:language:completion:]");
  v13 = +[SDBetaManager sharedManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__SDBetaEnrollmentService_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion___block_invoke;
  v16[3] = &unk_2787CB728;
  v17 = v12;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v12;
  [v13 _queryProgramsForSystemAccountsWithPlatforms:platforms disableBuildPrefixMatching:matchingCopy language:languageCopy completion:v16];
}

- (void)canDeviceEnrollInBetaUpdates:(id)updates completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "[SDBetaEnrollmentService canDeviceEnrollInBetaUpdates:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v9, 0xCu);
  }

  v6 = SDTransactionCreate("[SDBetaEnrollmentService canDeviceEnrollInBetaUpdates:completion:]");
  v7 = +[SDBetaManager sharedManager];
  _canCurrentDeviceEnrollInBetaUpdates = [v7 _canCurrentDeviceEnrollInBetaUpdates];

  completionCopy[2](completionCopy, _canCurrentDeviceEnrollInBetaUpdates);
}

- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  programCopy = program;
  completionCopy = completion;
  v7 = Log(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v18 = "[SDBetaEnrollmentService isDeviceEnrolledInBetaProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8 = SDTransactionCreate("[SDBetaEnrollmentService isDeviceEnrolledInBetaProgram:completion:]");
  v9 = +[SDBetaManager sharedManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SDBetaEnrollmentService_isDeviceEnrolledInBetaProgram_completion___block_invoke;
  v13[3] = &unk_2787CB750;
  v14 = v8;
  v15 = programCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = programCopy;
  v12 = v8;
  [v9 ensureThisRunsAfterMigration:v13];
}

uint64_t __68__SDBetaEnrollmentService_isDeviceEnrolledInBetaProgram_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 40) _isEnrolled];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)unenrollDevice:(id)device completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v8 = Log(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v20 = "[SDBetaEnrollmentService unenrollDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v9 = SDTransactionCreate("[SDBetaEnrollmentService unenrollDevice:completion:]");
  v10 = +[SDBetaManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__SDBetaEnrollmentService_unenrollDevice_completion___block_invoke;
  v14[3] = &unk_2787CB778;
  v15 = v9;
  v16 = deviceCopy;
  selfCopy = self;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
  v13 = v9;
  [v10 ensureThisRunsAfterMigration:v14];
}

uint64_t __53__SDBetaEnrollmentService_unenrollDevice_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) userIdentifier];
  [v2 _unenrollWithUserIdentifier:v3];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v7 = Log(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v18 = "[SDBetaEnrollmentService canFileFeedbackOnDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8 = SDTransactionCreate("[SDBetaEnrollmentService canFileFeedbackOnDevice:completion:]");
  v9 = +[SDBetaManager sharedManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SDBetaEnrollmentService_canFileFeedbackOnDevice_completion___block_invoke;
  v13[3] = &unk_2787CB7A0;
  v15 = deviceCopy;
  v16 = completionCopy;
  v14 = v8;
  v10 = deviceCopy;
  v11 = completionCopy;
  v12 = v8;
  [v9 ensureThisRunsAfterMigration:v13];
}

uint64_t __62__SDBetaEnrollmentService_canFileFeedbackOnDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 40) _canFileFeedback];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = "[SDBetaEnrollmentService enrolledBetaProgramForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = SDTransactionCreate("[SDBetaEnrollmentService enrolledBetaProgramForDevice:completion:]");
  v7 = +[SDBetaManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SDBetaEnrollmentService_enrolledBetaProgramForDevice_completion___block_invoke;
  v10[3] = &unk_2787CB6B0;
  v11 = v6;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  [v7 ensureThisRunsAfterMigration:v10];
}

void __67__SDBetaEnrollmentService_enrolledBetaProgramForDevice_completion___block_invoke(uint64_t a1)
{
  v2 = +[SDBetaManager _currentBetaProgram];
  (*(*(a1 + 40) + 16))();
}

- (void)getCurrentSeedingAppleIDForDevice:(id)device completion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "[SDBetaEnrollmentService getCurrentSeedingAppleIDForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v8, 0xCu);
  }

  v6 = +[SDBetaManager sharedManager];
  _seedingAppleIDUsername = [v6 _seedingAppleIDUsername];
  completionCopy[2](completionCopy, _seedingAppleIDUsername, 0);
}

- (void)getCurrentPrimaryAppleIDForDevice:(id)device completion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "[SDBetaEnrollmentService getCurrentPrimaryAppleIDForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v8, 0xCu);
  }

  v6 = +[SDBetaManager sharedManager];
  _deviceAppleIDUsername = [v6 _deviceAppleIDUsername];
  completionCopy[2](completionCopy, _deviceAppleIDUsername);
}

- (void)setAppleAccountIdentifierFromAlternateDSID:(id)d forDevice:(id)device completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  v8 = Log(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v17 = "[SDBetaEnrollmentService setAppleAccountIdentifierFromAlternateDSID:forDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = SDTransactionCreate("[SDBetaEnrollmentService setAppleAccountIdentifierFromAlternateDSID:forDevice:completion:]");
  v10 = +[SDBetaManager sharedManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__SDBetaEnrollmentService_setAppleAccountIdentifierFromAlternateDSID_forDevice_completion___block_invoke;
  v13[3] = &unk_2787CB7C8;
  v14 = v9;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = v9;
  [v10 _saveAppleAccountIdentifierWithAlternateDSID:dCopy completion:v13];
}

- (void)deleteSeedingAppleAccountForDevice:(id)device completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = "[SDBetaEnrollmentService deleteSeedingAppleAccountForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = SDTransactionCreate("[SDBetaEnrollmentService deleteSeedingAppleAccountForDevice:completion:]");
  v7 = +[SDBetaManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SDBetaEnrollmentService_deleteSeedingAppleAccountForDevice_completion___block_invoke;
  v10[3] = &unk_2787CB7C8;
  v11 = v6;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  [v7 _deleteSeedingAppleAccountWithCompletion:v10];
}

- (void)isDeviceUsingSeedingAppleID:(id)d completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaEnrollmentService isDeviceUsingSeedingAppleID:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v6 = +[SDBetaManager sharedManager];
  completionCopy[2](completionCopy, [v6 _isUsingSeedingAppleID]);
}

- (void)invalidateDaemonCacheWithCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = Log(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaEnrollmentService invalidateDaemonCacheWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v5 = +[SDBetaManager sharedManager];
  [v5 invalidateCache];

  completionCopy[2](completionCopy, 0);
}

- (void)enrollInProgramWithToken:(id)token language:(id)language completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  languageCopy = language;
  v10 = Log(languageCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v19 = "[SDBetaEnrollmentService enrollInProgramWithToken:language:completion:]";
    v20 = 2113;
    v21 = tokenCopy;
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s token [%{private}@]", buf, 0x16u);
  }

  v11 = SDTransactionCreate("[SDBetaEnrollmentService enrollInProgramWithToken:language:completion:]");
  v12 = +[SDBetaManager sharedManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SDBetaEnrollmentService_enrollInProgramWithToken_language_completion___block_invoke;
  v15[3] = &unk_2787CB7F0;
  v16 = v11;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  [v12 enrollInProgramWithToken:tokenCopy userIdentifier:0 language:languageCopy completion:v15];
}

- (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy language:(id)language completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  languageCopy = language;
  tokenCopy = token;
  tokensCopy = tokens;
  v16 = Log(tokensCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = "[SDBetaEnrollmentService configureWithOfferProgramTokens:requireProgramToken:enrollmentPolicy:language:completion:]";
    _os_log_impl(&dword_22E41E000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v17 = SDTransactionCreate("[SDBetaEnrollmentService configureWithOfferProgramTokens:requireProgramToken:enrollmentPolicy:language:completion:]");
  userIdentifier = [(SDBetaEnrollmentService *)self userIdentifier];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __116__SDBetaEnrollmentService_configureWithOfferProgramTokens_requireProgramToken_enrollmentPolicy_language_completion___block_invoke;
  v21[3] = &unk_2787CB7C8;
  v22 = v17;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v17;
  [SDMDMConfiguratorImplementation configureWithOfferProgramTokens:tokensCopy requireProgramToken:tokenCopy enrollmentPolicy:policy userIdentifier:userIdentifier language:languageCopy completion:v21];
}

- (void)loadMDMConfigurationWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = SDTransactionCreate("[SDBetaEnrollmentService loadMDMConfigurationWithCompletion:]");
  v5 = Log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[SDBetaEnrollmentService loadMDMConfigurationWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v8 = 0;
  v6 = [SDPersistence loadMDMConfigurationWithError:&v8];
  v7 = v8;
  completionCopy[2](completionCopy, v7, v6);
}

void __32__SDBetaEnrollmentService_start__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"com.apple.seeding.client";
  _os_log_debug_impl(&dword_22E41E000, log, OS_LOG_TYPE_DEBUG, "listening for service %@", &v1, 0xCu);
}

void __32__SDBetaEnrollmentService_start__block_invoke_cold_2(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_22E41E000, a1, OS_LOG_TYPE_DEBUG, "resuming listener from thread %@", &v3, 0xCu);
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  [a1 processIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_storeAppConnection:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_debug_impl(&dword_22E41E000, a2, OS_LOG_TYPE_DEBUG, "Storing connection from PID [%i]", v3, 8u);
}

void __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 32) stringValue];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_1(id *a1, id *a2)
{
  [*a1 platform];
  [*a2 platform];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end