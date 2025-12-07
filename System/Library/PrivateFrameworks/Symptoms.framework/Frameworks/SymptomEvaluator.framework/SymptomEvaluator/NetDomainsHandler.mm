@interface NetDomainsHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)_convertNSData:(id)data toAuditToken:(id *)token;
- (BOOL)_currentReconciliationSwitchStateForUser:(unsigned int)user since:(id *)since;
- (BOOL)_currentSwitchStateForUser:(unsigned int)user since:(id *)since;
- (BOOL)_hasSomeUserEnabled;
- (BOOL)bundleNameImplies1stOr2ndParty:(id)party;
- (BOOL)domainNameImpliesKnownAppleProperty:(id)property;
- (BOOL)getReconciliationStateForUser:(unsigned int)user;
- (BOOL)noteSymptom:(id)symptom;
- (BOOL)triggerAutoBugCaptureCaseForType:(id)type subType:(id)subType privateSubtypeContext:(id)context detectedProcess:(id)process events:(id)events thresholdValuesString:(id)string;
- (NSString)description;
- (NetDomainsHandler)init;
- (id)_bundleNameFromAuditTokenData:(id)data auditToken:(id *)token orMachOUUID:(id)d;
- (id)_internalStateDictionary;
- (id)getNetworkDomainsOptions:(id)options service:(id)service connection:(id)connection;
- (id)initTestInstanceWithDelegate:(id)delegate;
- (id)retrievePreferencesDictionaryWithKey:(__CFString *)key;
- (id)setNetworkDomainsOptions:(id)options service:(id)service connection:(id)connection;
- (int)read:(id)read returnedValues:(id)values;
- (void)_administrativeEnable;
- (void)_callDelegateForResolutionBy:(unsigned int)by bundleIdentifier:(id)identifier forDomain:(id)domain endpoints:(id)endpoints;
- (void)_callSwitchStateDelegateForName:(id)name;
- (void)_completeInitialization;
- (void)_lastEnabledUserDisabling;
- (void)_registerForUserSwitchStakeholder;
- (void)_resetSymptomCombinationBreakdown;
- (void)_sendInternalSymptomDNSResolvingEnable:(BOOL)enable;
- (void)_submitAppTrackingEnabled;
- (void)_submitSymptomCombinationBreakdown;
- (void)_submitSymptomDomainStatistics;
- (void)_unregisterForUserSwitchStakeholder:(id)stakeholder;
- (void)checkForAutoBugCaptureWorthyCase:(id)case domainName:(id)name initiatedType:(unsigned int)type;
- (void)dealloc;
- (void)logSwitchStatesFromDictionary:(id)dictionary;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performPeriodicTasks;
- (void)privacyReset;
- (void)savePreferencesDictionary:(id)dictionary withKey:(__CFString *)key;
- (void)setNetworkDomainDelegate:(id)delegate;
- (void)setReconciliationSwitchState:(BOOL)state forUser:(unsigned int)user;
- (void)setSwitchState:(BOOL)state forUser:(unsigned int)user;
- (void)updateReconciliationSwitchStatesForUser:(unsigned int)user;
- (void)willSwitchUser;
@end

@implementation NetDomainsHandler

- (NetDomainsHandler)init
{
  v18.receiver = self;
  v18.super_class = NetDomainsHandler;
  v2 = [(NetDomainsHandler *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.domaintracking.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = defaultCenter;

    v2->_adminState = 2;
    v8 = +[SystemProperties sharedInstance];
    [v8 internalBuild];
    v2->_defaultSwitchState = 0;

    v2->_defaultReconciliationSwitchState = 0;
    v9 = [objc_alloc(MEMORY[0x277D6B418]) initWithPolicy:0 timeToLive:10 size:10800.0];
    bundleIdentifierCache = v2->_bundleIdentifierCache;
    v2->_bundleIdentifierCache = v9;

    effectiveUserId = 1;
    [(NetDomainsHandler *)v2 _resetSymptomCombinationBreakdown];
    [(NetDomainsHandler *)v2 _resetSymptomDomainStatistics];
    [(NetDomainsHandler *)v2 _administrativeEnable];
    v11 = MEMORY[0x277D6B500];
    v12 = +[SystemSettingsRelay defaultRelay];
    symptomEvaluatorDatabaseContainerPath = [v12 symptomEvaluatorDatabaseContainerPath];
    queue = [(NetDomainsHandler *)v2 queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __25__NetDomainsHandler_init__block_invoke;
    v16[3] = &unk_27898A988;
    v17 = v2;
    [v11 retrieveWorkspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath queue:queue resultCallback:v16];
  }

  return v2;
}

uint64_t __25__NetDomainsHandler_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = *(a1 + 32);

  return [v6 _completeInitialization];
}

- (id)initTestInstanceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NetDomainsHandler;
  v5 = [(NetDomainsHandler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_queue, MEMORY[0x277D85CD0]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v6->_notificationCenter;
    v6->_notificationCenter = defaultCenter;

    v6->_adminState = 1;
    *&v6->_defaultSwitchState = 257;
    *&v6->_defaultReconciliationSwitchState = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userIDsReconciliationSwitchStates = v6->_userIDsReconciliationSwitchStates;
    v6->_userIDsReconciliationSwitchStates = v9;

    objc_storeWeak(&v6->_netDomainDelegate, delegateCopy);
  }

  return v6;
}

- (BOOL)getReconciliationStateForUser:(unsigned int)user
{
  userIDsReconciliationSwitchStates = self->_userIDsReconciliationSwitchStates;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *&user];
  v5 = [(NSMutableDictionary *)userIDsReconciliationSwitchStates objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)dealloc
{
  if (self->_observingSystemSettingsRelay)
  {
    v3 = +[SystemSettingsRelay defaultRelay];
    [v3 removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];
    self->_observingSystemSettingsRelay = 0;
  }

  [(NetDomainsHandler *)self _unregisterForUserSwitchStakeholder:@"dealloc"];
  v4.receiver = self;
  v4.super_class = NetDomainsHandler;
  [(NetDomainsHandler *)&v4 dealloc];
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%p", self];

  return v2;
}

- (void)_completeInitialization
{
  v69 = *MEMORY[0x277D85DE8];
  v51 = +[SystemSettingsRelay defaultRelay];
  selfCopy2 = self;
  [v51 addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];
  self->_observingSystemSettingsRelay = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, privacyReset, @"com.apple.Preferences.ResetPrivacyWarningsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v5 = shared_prefs_store;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __44__NetDomainsHandler__completeInitialization__block_invoke;
    v63[3] = &unk_27898A0A0;
    v63[4] = self;
    prefs_add_client(shared_prefs_store, "domaintracking_default_switch_state", v63);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __44__NetDomainsHandler__completeInitialization__block_invoke_70;
    v62[3] = &unk_27898A0A0;
    v62[4] = self;
    prefs_add_client(v5, "domaintracking_default_reconciliation_switch_state", v62);
    selfCopy2 = self;
  }

  workspace = selfCopy2->_workspace;
  if (workspace)
  {
    v7 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:selfCopy2->_queue];
    ieService = self->_ieService;
    self->_ieService = v7;

    objc_initWeak(&location, self);
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v60[3] = 0;
    queue = [(NetDomainsHandler *)self queue];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __44__NetDomainsHandler__completeInitialization__block_invoke_76;
    v58[3] = &unk_27898A9B0;
    objc_copyWeak(&v59, &location);
    v58[4] = v60;
    [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NetDomainsHandler.Daily" queue:queue activity:v58];

    v10 = +[SystemProperties sharedInstance];
    LODWORD(queue) = [v10 internalBuild];

    if (queue)
    {
      v11 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removing locally cached SWC data, if any", buf, 2u);
      }

      v12 = self->_ieService;
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"LOCALLYCACHEDSWCD", 0}];
      [(ImpoExpoService *)v12 deleteItemsWithNames:v13];
    }

    v14 = [(NetDomainsHandler *)self retrievePreferencesDictionaryWithKey:@"appTracking"];
    userIDsSwitchStates = self->_userIDsSwitchStates;
    self->_userIDsSwitchStates = v14;

    if (self->_userIDsSwitchStates)
    {
      _hasSomeUserEnabled = [(NetDomainsHandler *)self _hasSomeUserEnabled];
      selfCopy7 = self;
      self->_hasSomeUserEnabled = _hasSomeUserEnabled;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = self->_userIDsSwitchStates;
      self->_userIDsSwitchStates = v18;

      v20 = self->_ieService;
      v57 = 0;
      v50 = [(ImpoExpoService *)v20 exportAndUnarchiveItemUnderName:@"USERIDSAPPTRACKINGSTATES" lastUpdated:&v57 verificationBlock:&__block_literal_global_5];
      v49 = v57;
      mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
      isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

      if (isSharedIPad)
      {
        selfCopy6 = self;
        self->_hasSomeUserEnabled = 0;
      }

      else if (v50)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v24 = v50;
        v25 = [v24 countByEnumeratingWithState:&v53 objects:v68 count:16];
        if (v25)
        {
          v26 = *v54;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v54 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v53 + 1) + 8 * i);
              v29 = [v24 objectForKeyedSubscript:v28];
              v30 = self->_userIDsSwitchStates;
              v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", objc_msgSend(v28, "intValue")];
              [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:v31];

              v32 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v65 = @"appTracking";
                v66 = 2112;
                v67 = v28;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Will migrate %@ switch state for user %@ from DB to preferences", buf, 0x16u);
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v53 objects:v68 count:16];
          }

          while (v25);
        }

        selfCopy6 = self;
        self->_hasSomeUserEnabled = [(NetDomainsHandler *)self _hasSomeUserEnabled];
      }

      else
      {
        v33 = objc_alloc(MEMORY[0x277CBEB38]);
        v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_defaultSwitchState];
        date = [MEMORY[0x277CBEAA8] date];
        v36 = [v33 initWithObjectsAndKeys:{v34, @"domainTrackingSwitchStateValue", date, @"domainTrackingSwitchStateSince", MEMORY[0x277CBEC28], @"domainTrackingUserDidFollowUp", 0}];
        v37 = self->_userIDsSwitchStates;
        v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", 501];
        [(NSMutableDictionary *)v37 setObject:v36 forKeyedSubscript:v38];

        selfCopy6 = self;
        self->_hasSomeUserEnabled = self->_defaultSwitchState;
        v39 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v65 = @"appTracking";
          v66 = 1024;
          LODWORD(v67) = 501;
          _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "Initializing %@ switch state for user %u", buf, 0x12u);
        }
      }

      [(NetDomainsHandler *)selfCopy6 savePreferencesDictionary:selfCopy6->_userIDsSwitchStates withKey:@"appTracking"];
      v40 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = @"appTracking";
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Removing %@ switch states from DB, if any", buf, 0xCu);
      }

      v41 = self->_ieService;
      v42 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"USERIDSAPPTRACKINGSTATES", 0}];
      [(ImpoExpoService *)v41 deleteItemsWithNames:v42];

      selfCopy7 = self;
    }

    [(NetDomainsHandler *)selfCopy7 logSwitchStatesFromDictionary:selfCopy7->_userIDsSwitchStates];
    mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
    isSharedIPad2 = [mEMORY[0x277D77BF8]2 isSharedIPad];

    if (isSharedIPad2)
    {
      self->_hasCurrentUserReconciliationEnabled = 0;
    }

    else
    {
      [(NetDomainsHandler *)self updateReconciliationSwitchStatesForUser:501];
    }

    self->_completedNetworkDomainInitialization = 1;
    v45 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "Network Domain initialization complete", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);
    v47 = WeakRetained == 0;

    if (!v47)
    {
      v48 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "Calling delegate (FlowAnalyticsEngine) update methods for userAppTrackingObserver and userEndpointTrackingObserver", buf, 2u);
      }

      [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
      [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
    }

    [(NetDomainsHandler *)self _sendInternalSymptomDNSResolvingEnable:self->_hasSomeUserEnabled];
    if ([(NetDomainsHandler *)self _currentSwitchStateForUser:501 since:0])
    {
      [(NetDomainsHandler *)self _submitAppTrackingEnabled];
    }

    objc_destroyWeak(&v59);
    _Block_object_dispose(v60, 8);
    objc_destroyWeak(&location);
  }
}

void __44__NetDomainsHandler__completeInitialization__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    *(*(a1 + 32) + 64) = xpc_BOOL_get_value(v5);
    v7 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 64))
      {
        v10 = "ON";
      }

      else
      {
        v10 = "OFF";
      }

      v11 = 136315138;
      v12 = v10;
      v9 = "Setting default switch state to %s";
      goto LABEL_13;
    }
  }

  else
  {
    v6 = +[SystemProperties sharedInstance];
    [v6 internalBuild];
    *(*(a1 + 32) + 64) = 0;

    v7 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 64))
      {
        v8 = "ON";
      }

      else
      {
        v8 = "OFF";
      }

      v11 = 136315138;
      v12 = v8;
      v9 = "Got a nil default switch state prefs. Setting default state to %s";
LABEL_13:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }
}

void __44__NetDomainsHandler__completeInitialization__block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    *(*(a1 + 32) + 80) = xpc_BOOL_get_value(v5);
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 80))
      {
        v9 = "ON";
      }

      else
      {
        v9 = "OFF";
      }

      v10 = 136315138;
      v11 = v9;
      v8 = "Setting default reconciliation switch state to %s";
      goto LABEL_13;
    }
  }

  else
  {
    *(*(a1 + 32) + 80) = 0;
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 80))
      {
        v7 = "ON";
      }

      else
      {
        v7 = "OFF";
      }

      v10 = 136315138;
      v11 = v7;
      v8 = "Got a nil default reconciliation switch state prefs. Setting default reconciliation state to %s";
LABEL_13:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
    }
  }
}

void __44__NetDomainsHandler__completeInitialization__block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v3 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "About to start periodic task", v4, 2u);
    }

    [WeakRetained performPeriodicTasks];
  }
}

uint64_t __44__NetDomainsHandler__completeInitialization__block_invoke_88(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      v15 = @"domainTrackingUserDidFollowUp";
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v3 objectForKeyedSubscript:{v8, v15}];
          if (!v8)
          {
            goto LABEL_22;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          if (!v9)
          {
            goto LABEL_22;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          v9 = v9;
          v10 = [v9 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
          if (!v10)
          {
            goto LABEL_21;
          }

          v11 = [v9 objectForKeyedSubscript:@"domainTrackingSwitchStateSince"];
          if (!v11)
          {

LABEL_21:
LABEL_22:

LABEL_23:
            v13 = 0;
            goto LABEL_24;
          }

          v12 = [v9 objectForKeyedSubscript:v15];

          if (!v12)
          {
            goto LABEL_23;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v13 = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_24:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)savePreferencesDictionary:(id)dictionary withKey:(__CFString *)key
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v7 = dictionaryCopy;
    CFPreferencesSetValue(key, v7, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v8 = CFPreferencesAppSynchronize(@"com.apple.symptomsd");
    v9 = domainTrackingLogHandle;
    if (v8)
    {
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        keyCopy2 = key;
        v10 = "Set %@ switch states in preferences";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, v12, v10, &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      keyCopy2 = key;
      v10 = "Failed to set %@ switch states in preferences";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    CFRelease(v7);
  }
}

- (id)retrievePreferencesDictionaryWithKey:(__CFString *)key
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyValue(key, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID())
    {
      DeepCopy = CFPropertyListCreateDeepCopy(0, v5, 2uLL);
      v8 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        keyCopy3 = key;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved %@ switch states from preferences", &v13, 0xCu);
      }
    }

    else
    {
      v10 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v13 = 138412546;
        keyCopy3 = key;
        v15 = 2048;
        v16 = CFGetTypeID(v5);
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Stored preferences for %@ switch states is of type %lu", &v13, 0x16u);
      }

      DeepCopy = 0;
    }
  }

  else
  {
    v9 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      keyCopy3 = key;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Preferences don't exist for %@ switch states yet", &v13, 0xCu);
    }

    DeepCopy = 0;
  }

  return DeepCopy;
}

- (void)_callSwitchStateDelegateForName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = 501;
  if (!effectiveUserId)
  {
    v6 = 0;
  }

  v7 = [v5 initWithFormat:@"%d", v6];
  WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);
  if ([nameCopy isEqualToString:@"userAppTracking"])
  {
    v9 = [(NSMutableDictionary *)self->_userIDsSwitchStates objectForKeyedSubscript:v7];
    v10 = [v9 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
    bOOLValue = [v10 BOOLValue];

    if (WeakRetained)
    {
      v12 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = nameCopy;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "Calling %@ switch state delegate", buf, 0xCu);
      }

      v23[0] = @"userAppTrackingUserID";
      if (effectiveUserId)
      {
        v13 = 501;
      }

      else
      {
        v13 = 0;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
      v23[1] = @"userAppTrackingState";
      v24[0] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v24[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      [WeakRetained networkDomainUserAppTrackingChanged:v16];
LABEL_19:
    }
  }

  else
  {
    if (![nameCopy isEqualToString:@"userEndpointTracking"])
    {
      v9 = 0;
      goto LABEL_21;
    }

    v9 = [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates objectForKeyedSubscript:v7];
    v17 = [v9 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
    bOOLValue2 = [v17 BOOLValue];

    if (WeakRetained)
    {
      v19 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = nameCopy;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Calling %@ switch state delegate", buf, 0xCu);
      }

      v21[0] = @"userEndpointTrackingUserID";
      if (effectiveUserId)
      {
        v20 = 501;
      }

      else
      {
        v20 = 0;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
      v21[1] = @"userEndpointTrackingState";
      v22[0] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue2];
      v22[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [WeakRetained networkDomainUserEndpointTrackingChanged:v16];
      goto LABEL_19;
    }
  }

LABEL_21:
}

- (void)updateReconciliationSwitchStatesForUser:(unsigned int)user
{
  v3 = *&user;
  v49 = *MEMORY[0x277D85DE8];
  v5 = [(NetDomainsHandler *)self retrievePreferencesDictionaryWithKey:@"endpointTracking"];
  userIDsReconciliationSwitchStates = self->_userIDsReconciliationSwitchStates;
  self->_userIDsReconciliationSwitchStates = v5;

  v7 = 0x277CCA000uLL;
  if (!self->_userIDsReconciliationSwitchStates)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_userIDsReconciliationSwitchStates;
    self->_userIDsReconciliationSwitchStates = v8;

    ieService = self->_ieService;
    v43 = 0;
    v11 = [(ImpoExpoService *)ieService exportAndUnarchiveItemUnderName:@"USERIDSAPPTRACKINGRECONCILIATIONSTATES" lastUpdated:&v43 verificationBlock:&__block_literal_global_101];
    v12 = v43;
    if (v11)
    {
      v36 = v12;
      v37 = v11;
      v38 = v3;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            v19 = [v13 objectForKeyedSubscript:v18];
            v20 = self->_userIDsReconciliationSwitchStates;
            v21 = v7;
            v22 = [objc_alloc(*(v7 + 3240)) initWithFormat:@"%d", objc_msgSend(v18, "intValue")];
            [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v22];

            v23 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v45 = @"endpointTracking";
              v46 = 2112;
              v47 = v18;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Will migrate %@ switch state for user %@ from DB to preferences", buf, 0x16u);
            }

            v7 = v21;
          }

          v15 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v15);
      }

      [(NetDomainsHandler *)self savePreferencesDictionary:self->_userIDsReconciliationSwitchStates withKey:@"endpointTracking"];
      v24 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = @"endpointTracking";
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Removing %@ switch states from DB, if any", buf, 0xCu);
      }

      v25 = self->_ieService;
      v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"USERIDSAPPTRACKINGRECONCILIATIONSTATES", 0}];
      [(ImpoExpoService *)v25 deleteItemsWithNames:v26];

      v11 = v37;
      v3 = v38;
      v12 = v36;
    }
  }

  v27 = [objc_alloc(*(v7 + 3240)) initWithFormat:@"%d", v3];
  v28 = [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates objectForKeyedSubscript:v27];

  if (!v28)
  {
    v29 = objc_alloc(MEMORY[0x277CBEB38]);
    v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_defaultReconciliationSwitchState];
    date = [MEMORY[0x277CBEAA8] date];
    v32 = [v29 initWithObjectsAndKeys:{v30, @"domainTrackingXRefSwitchStateValue", date, @"domainTrackingXRefSwitchStateSince", 0}];
    [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates setObject:v32 forKeyedSubscript:v27];

    [(NetDomainsHandler *)self savePreferencesDictionary:self->_userIDsReconciliationSwitchStates withKey:@"endpointTracking"];
    v33 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v45 = @"endpointTracking";
      v46 = 1024;
      LODWORD(v47) = v3;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "Initializing %@ switch state for user %u in preferences", buf, 0x12u);
    }
  }

  [(NetDomainsHandler *)self logSwitchStatesFromDictionary:self->_userIDsReconciliationSwitchStates];
  v34 = [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates objectForKeyedSubscript:v27];
  v35 = [v34 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
  self->_hasCurrentUserReconciliationEnabled = [v35 BOOLValue];
}

uint64_t __61__NetDomainsHandler_updateReconciliationSwitchStatesForUser___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v3 objectForKeyedSubscript:{v8, v14}];
          if (!v8)
          {
            goto LABEL_20;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          if (!v9)
          {
            goto LABEL_20;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          v9 = v9;
          v10 = [v9 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
          if (!v10)
          {

LABEL_20:
LABEL_21:
            v12 = 0;
            goto LABEL_22;
          }

          v11 = [v9 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateSince"];

          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v12 = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_22:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)logSwitchStatesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [dictionary enumerateKeysAndObjectsUsingBlock:&__block_literal_global_104];
  }
}

void __51__NetDomainsHandler_logSwitchStatesFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Switch state for user %@:", &v7, 0xCu);
  }

  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_108];
}

void __51__NetDomainsHandler_logSwitchStatesFromDictionary___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v5;
    if (isKindOfClass)
    {
      [v5 timeIntervalSince1970];
      v8 = formattedDateStringForTimeInterval(v9);
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t%@: %@", &v10, 0x16u);
    if (isKindOfClass)
    {
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"autoBugCaptureEnabled"])
  {
    v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    queue = [(NetDomainsHandler *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__NetDomainsHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_27898A7D0;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

void __68__NetDomainsHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    if ([*(a1 + 40) BOOLValue])
    {
      v3 = +[SystemProperties sharedInstance];
      v4 = [v3 internalBuild];

      v2 = *(a1 + 32);
      if (v4)
      {
        *(v2 + 48) = 1;
        return;
      }
    }

    else
    {
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 48) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;
}

- (BOOL)bundleNameImplies1stOr2ndParty:(id)party
{
  v17 = *MEMORY[0x277D85DE8];
  partyCopy = party;
  v4 = partyCopy;
  if (bundleNameImplies1stOr2ndParty__onceToken != -1)
  {
    [NetDomainsHandler bundleNameImplies1stOr2ndParty:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (!partyCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundlePrefixes;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 hasPrefix:{*(*(&v12 + 1) + 8 * i), v12}])
        {

          v10 = 1;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundleIDs containsObject:v4];
LABEL_15:

  return v10;
}

void __52__NetDomainsHandler_bundleNameImplies1stOr2ndParty___block_invoke()
{
  v0 = bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundlePrefixes;
  bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundlePrefixes = &unk_2847EEAC0;

  v1 = bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundleIDs;
  bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundleIDs = &unk_2847EEAD8;
}

- (BOOL)domainNameImpliesKnownAppleProperty:(id)property
{
  propertyCopy = property;
  v4 = propertyCopy;
  if (domainNameImpliesKnownAppleProperty__onceToken != -1)
  {
    [NetDomainsHandler domainNameImpliesKnownAppleProperty:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!propertyCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = domainNameImpliesKnownAppleProperty__kAppleOwnedTrackerDomains;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__NetDomainsHandler_domainNameImpliesKnownAppleProperty___block_invoke_2;
  v8[3] = &unk_27898AA38;
  v9 = v4;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
LABEL_6:

  return v6 & 1;
}

void __57__NetDomainsHandler_domainNameImpliesKnownAppleProperty___block_invoke()
{
  v0 = domainNameImpliesKnownAppleProperty__kAppleOwnedTrackerDomains;
  domainNameImpliesKnownAppleProperty__kAppleOwnedTrackerDomains = &unk_2847EEAF0;
}

void *__57__NetDomainsHandler_domainNameImpliesKnownAppleProperty___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasSuffix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_administrativeEnable
{
  if (self->_adminState == 2)
  {
    v7 = v2;
    v8 = v3;
    v5 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Enabling domain tracking", v6, 2u);
    }

    [(NetDomainsHandler *)self _registerForUserSwitchStakeholder];
    self->_adminState = 1;
  }
}

- (void)_registerForUserSwitchStakeholder
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  if ([mEMORY[0x277D77BF8] isSharedIPad])
  {
    isUserSwitchStakeholder = self->_isUserSwitchStakeholder;

    if (!isUserSwitchStakeholder)
    {
      v4 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "UserManagement: Registering as a user switch stakeholder...", buf, 2u);
      }

      mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke;
      v8[3] = &unk_27898AA60;
      v8[4] = self;
      [mEMORY[0x277D77BF8]2 registerUserSwitchStakeHolder:self completionHandler:v8];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_154;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      if (_registerForUserSwitchStakeholder_onceToken != -1)
      {
        dispatch_once(&_registerForUserSwitchStakeholder_onceToken, block);
      }
    }
  }

  else
  {
  }
}

void __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = domainTrackingLogHandle;
  if (v3)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "UserManagement: Failed to register as a user switch stakeholder - %@", &v5, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "UserManagement: Registered as a user switch stakeholder", &v5, 2u);
    }

    *(*(a1 + 32) + 160) = 1;
  }
}

void __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_154(uint64_t a1)
{
  signal(15, 1);
  v2 = [*(a1 + 32) queue];
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, v2);
  v4 = kNotificationDomainPrivacyReset_block_invoke_sigterm;
  kNotificationDomainPrivacyReset_block_invoke_sigterm = v3;

  if (kNotificationDomainPrivacyReset_block_invoke_sigterm)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_2;
    handler[3] = &unk_27898A0C8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(kNotificationDomainPrivacyReset_block_invoke_sigterm, handler);
    dispatch_resume(kNotificationDomainPrivacyReset_block_invoke_sigterm);
  }
}

uint64_t __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_2(uint64_t a1)
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "UserManagement: SIGTERM", v4, 2u);
  }

  return [*(a1 + 32) _unregisterForUserSwitchStakeholder:@"daemon termination"];
}

- (void)_unregisterForUserSwitchStakeholder:(id)stakeholder
{
  stakeholderCopy = stakeholder;
  if (self->_isUserSwitchStakeholder)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    [mEMORY[0x277D77BF8] unregisterStakeHolder:self status:0 reason:stakeholderCopy];

    self->_isUserSwitchStakeholder = 0;
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "UserManagement: Unregistered as a user switch stakeholder";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v7, v8, 2u);
    }
  }

  else
  {
    v11 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v7 = "UserManagement: Not registered as a user switch stakeholder";
      v8 = &v12;
      v9 = v11;
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_6;
    }
  }
}

- (BOOL)_currentSwitchStateForUser:(unsigned int)user since:(id *)since
{
  userIDsSwitchStates = self->_userIDsSwitchStates;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *&user];
  v7 = [(NSMutableDictionary *)userIDsSwitchStates objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
    bOOLValue = [v8 BOOLValue];

    if (since)
    {
      *since = [v7 objectForKeyedSubscript:@"domainTrackingSwitchStateSince"];
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setSwitchState:(BOOL)state forUser:(unsigned int)user
{
  v4 = *&user;
  stateCopy = state;
  v27[3] = *MEMORY[0x277D85DE8];
  userIDsSwitchStates = self->_userIDsSwitchStates;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *&user];
  v9 = [(NSMutableDictionary *)userIDsSwitchStates objectForKeyedSubscript:v8];

  if (!v9 || ([v9 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v11 != stateCopy))
  {
    v12 = [v9 objectForKeyedSubscript:@"domainTrackingUserDidFollowUp"];
    bOOLValue = [v12 BOOLValue];

    date = [MEMORY[0x277CBEAA8] date];
    v15 = objc_alloc(MEMORY[0x277CBEB38]);
    v26[0] = @"domainTrackingSwitchStateValue";
    v16 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
    v27[0] = v16;
    v27[1] = date;
    v26[1] = @"domainTrackingSwitchStateSince";
    v26[2] = @"domainTrackingUserDidFollowUp";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v27[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v19 = [v15 initWithDictionary:v18];
    v20 = self->_userIDsSwitchStates;
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v4];
    [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

    if (stateCopy)
    {
      if (!self->_hasSomeUserEnabled)
      {
        v22 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "At least one user has feature enabled", buf, 2u);
        }

        self->_hasSomeUserEnabled = 1;
        [(NetDomainsHandler *)self _firstUserEnabling];
      }
    }

    else
    {
      _hasSomeUserEnabled = [(NetDomainsHandler *)self _hasSomeUserEnabled];
      self->_hasSomeUserEnabled = _hasSomeUserEnabled;
      if (!_hasSomeUserEnabled)
      {
        v24 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "No user has feature enabled", buf, 2u);
        }

        [(NetDomainsHandler *)self _lastEnabledUserDisabling];
      }
    }

    [(NetDomainsHandler *)self savePreferencesDictionary:self->_userIDsSwitchStates withKey:@"appTracking"];
    [(NetDomainsHandler *)self logSwitchStatesFromDictionary:self->_userIDsSwitchStates];
  }
}

- (BOOL)_hasSomeUserEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  userIDsSwitchStates = self->_userIDsSwitchStates;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NetDomainsHandler__hasSomeUserEnabled__block_invoke;
  v5[3] = &unk_27898AA88;
  v5[4] = &v6;
  [(NSMutableDictionary *)userIDsSwitchStates enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __40__NetDomainsHandler__hasSomeUserEnabled__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "User %@ has feature enabled", &v11, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_lastEnabledUserDisabling
{
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Performing clean up after no user has the feature enabled", v4, 2u);
  }

  [(NetDomainsHandler *)self _resetSymptomCombinationBreakdown];
  [(NetDomainsHandler *)self _resetSymptomDomainStatistics];
  [(NetDomainsHandler *)self _sendInternalSymptomDNSResolvingEnable:0];
}

- (void)_sendInternalSymptomDNSResolvingEnable:(BOOL)enable
{
  if (enable)
  {
    v3 = 405522;
  }

  else
  {
    v3 = 405523;
  }

  internal_symptom_new(v3);

  internal_symptom_send();
}

- (BOOL)_currentReconciliationSwitchStateForUser:(unsigned int)user since:(id *)since
{
  userIDsReconciliationSwitchStates = self->_userIDsReconciliationSwitchStates;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *&user];
  v7 = [(NSMutableDictionary *)userIDsReconciliationSwitchStates objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
    bOOLValue = [v8 BOOLValue];

    if (since)
    {
      *since = [v7 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateSince"];
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setReconciliationSwitchState:(BOOL)state forUser:(unsigned int)user
{
  stateCopy = state;
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *&user];
  v7 = [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates objectForKeyedSubscript:v6];
  v8 = v7;
  if (!v7 || ([v7 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v10 != stateCopy))
  {
    date = [MEMORY[0x277CBEAA8] date];
    v12 = objc_alloc(MEMORY[0x277CBEB38]);
    v18[0] = @"domainTrackingXRefSwitchStateValue";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
    v18[1] = @"domainTrackingXRefSwitchStateSince";
    v19[0] = v13;
    v19[1] = date;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v15 = [v12 initWithDictionary:v14];
    [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates setObject:v15 forKeyedSubscript:v6];

    v16 = [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates objectForKeyedSubscript:v6];
    v17 = [v16 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
    self->_hasCurrentUserReconciliationEnabled = [v17 BOOLValue];

    [(NetDomainsHandler *)self savePreferencesDictionary:self->_userIDsReconciliationSwitchStates withKey:@"endpointTracking"];
    [(NetDomainsHandler *)self logSwitchStatesFromDictionary:self->_userIDsReconciliationSwitchStates];
  }
}

- (id)_internalStateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_adminState == 1];
  [v3 setObject:v4 forKeyedSubscript:@"adminEnabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_defaultSwitchState];
  [v3 setObject:v5 forKeyedSubscript:@"defaultSwitchState"];

  userIDsSwitchStates = self->_userIDsSwitchStates;
  if (userIDsSwitchStates)
  {
    [v3 setObject:userIDsSwitchStates forKeyedSubscript:@"switchStatesForUserIDs"];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [v3 setObject:v7 forKeyedSubscript:@"switchStatesForUserIDs"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSomeUserEnabled];
  [v3 setObject:v8 forKeyedSubscript:@"atLeastOneUserEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_defaultReconciliationSwitchState];
  [v3 setObject:v9 forKeyedSubscript:@"defaultReconciliationSwitchState"];

  userIDsReconciliationSwitchStates = self->_userIDsReconciliationSwitchStates;
  if (userIDsReconciliationSwitchStates)
  {
    [v3 setObject:userIDsReconciliationSwitchStates forKeyedSubscript:@"reconciliationSwitchStatesForUserIDs"];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [v3 setObject:v11 forKeyedSubscript:@"reconciliationSwitchStatesForUserIDs"];
  }

  return v3;
}

- (id)setNetworkDomainsOptions:(id)options service:(id)service connection:(id)connection
{
  v62[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  effectiveUserIdentifier = [connection effectiveUserIdentifier];
  v9 = [optionsCopy objectForKeyedSubscript:@"domainTrackingSwitch"];

  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"domainTrackingSwitch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(NetDomainsHandler *)self _currentSwitchStateForUser:effectiveUserIdentifier since:0];
      -[NetDomainsHandler setSwitchState:forUser:](self, "setSwitchState:forUser:", [v10 BOOLValue], effectiveUserIdentifier);
      [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
      v61 = @"domainTrackingSwitch";
      v12 = v11 && self->_adminState == 1;
      v23 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v62[0] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];

      goto LABEL_46;
    }

    v18 = domainTrackingLogHandle;
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    goto LABEL_15;
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"domainTrackingSwitchState"];

  if (v13)
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"domainTrackingSwitchState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = 0;
          v15 = [(NetDomainsHandler *)self _currentSwitchStateForUser:effectiveUserIdentifier since:&v48];
          date = v48;
          if (!date)
          {
            date = [MEMORY[0x277CBEAA8] date];
            v16 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Received nil date from _currentSwitchStateForUser, setting to current date", buf, 2u);
            }
          }

          -[NetDomainsHandler setSwitchState:forUser:](self, "setSwitchState:forUser:", [v14 BOOLValue], effectiveUserIdentifier);
          [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
          v55 = @"domainTrackingSwitchState";
          v53[0] = @"domainTrackingSwitchStateValue";
          v17 = v15 && self->_adminState == 1;
          v38 = [MEMORY[0x277CCABB0] numberWithInt:v17];
          v53[1] = @"domainTrackingSwitchStateSince";
          v54[0] = v38;
          v39 = date;
          v54[1] = date;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
          v56 = v40;
          v41 = MEMORY[0x277CBEAC0];
          v42 = &v56;
          v43 = &v55;
LABEL_44:
          v24 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];

          goto LABEL_45;
        }
      }

      v29 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412546;
        v58 = v32;
        v59 = 1024;
        v60 = effectiveUserIdentifier;
        v33 = "switchStateValue is %@ for euid %u";
LABEL_38:
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, v33, buf, 0x12u);

        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v18 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138412546;
      v58 = v21;
      v59 = 1024;
      v60 = effectiveUserIdentifier;
      v22 = "domainTrackingOption is %@ for euid %u";
LABEL_34:
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
    }
  }

  else
  {
    v25 = [optionsCopy objectForKeyedSubscript:@"domainTrackingXRefSwitchState"];

    if (!v25)
    {
      v24 = 0;
      goto LABEL_47;
    }

    v10 = [optionsCopy objectForKeyedSubscript:@"domainTrackingXRefSwitchState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = 0;
          v26 = [(NetDomainsHandler *)self _currentReconciliationSwitchStateForUser:effectiveUserIdentifier since:&v47];
          date2 = v47;
          if (!date2)
          {
            date2 = [MEMORY[0x277CBEAA8] date];
            v27 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Received nil date from _currentReconciliationSwitchStateForUser, setting to current date", buf, 2u);
            }
          }

          -[NetDomainsHandler setReconciliationSwitchState:forUser:](self, "setReconciliationSwitchState:forUser:", [v14 BOOLValue], effectiveUserIdentifier);
          [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
          v51 = @"domainTrackingXRefSwitchState";
          v49[0] = @"domainTrackingXRefSwitchStateValue";
          v28 = v26 && self->_adminState == 1;
          v38 = [MEMORY[0x277CCABB0] numberWithInt:v28];
          v49[1] = @"domainTrackingXRefSwitchStateSince";
          v50[0] = v38;
          v39 = date2;
          v50[1] = date2;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
          v52 = v40;
          v41 = MEMORY[0x277CBEAC0];
          v42 = &v52;
          v43 = &v51;
          goto LABEL_44;
        }
      }

      v36 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v30 = v36;
        v37 = objc_opt_class();
        v32 = NSStringFromClass(v37);
        *buf = 138412546;
        v58 = v32;
        v59 = 1024;
        v60 = effectiveUserIdentifier;
        v33 = "reconciliationSwitchStateValue is %@ for euid %u";
        goto LABEL_38;
      }

LABEL_39:
      v24 = 0;
LABEL_45:

      goto LABEL_46;
    }

    v34 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v34;
      v35 = objc_opt_class();
      v21 = NSStringFromClass(v35);
      *buf = 138412546;
      v58 = v21;
      v59 = 1024;
      v60 = effectiveUserIdentifier;
      v22 = "domainTrackingReconciliationOption is %@ for euid %u";
      goto LABEL_34;
    }
  }

LABEL_35:
  v24 = 0;
LABEL_46:

LABEL_47:

  return v24;
}

- (id)getNetworkDomainsOptions:(id)options service:(id)service connection:(id)connection
{
  v46 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  serviceCopy = service;
  connectionCopy = connection;
  effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
  _internalStateDictionary = [optionsCopy objectForKeyedSubscript:@"domainTrackingSwitch"];

  if (_internalStateDictionary)
  {
    v13 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = effectiveUserIdentifier;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Performing manage action for: legacy switch state query for euid %u", buf, 8u);
    }

    _internalStateDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(NetDomainsHandler *)self _currentSwitchStateForUser:effectiveUserIdentifier since:0])
    {
      v14 = self->_adminState == 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    [_internalStateDictionary setObject:v15 forKeyedSubscript:@"domainTrackingSwitch"];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"domainTrackingSwitchState"];

  if (v16)
  {
    v17 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = effectiveUserIdentifier;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Performing manage action for: switch state query for euid %u", buf, 8u);
    }

    if (!_internalStateDictionary)
    {
      _internalStateDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v39 = 0;
    v18 = [(NetDomainsHandler *)self _currentSwitchStateForUser:effectiveUserIdentifier since:&v39];
    date = v39;
    if (!date)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v20 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Received nil date from _currentSwitchStateForUser, setting to current date", buf, 2u);
      }
    }

    v42[0] = @"domainTrackingSwitchStateValue";
    v21 = v18 && self->_adminState == 1;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    v42[1] = @"domainTrackingSwitchStateSince";
    v43[0] = v22;
    v43[1] = date;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [_internalStateDictionary setObject:v23 forKeyedSubscript:@"domainTrackingSwitchState"];
  }

  v24 = [optionsCopy objectForKeyedSubscript:@"domainTrackingXRefSwitchState"];

  if (v24)
  {
    v25 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = effectiveUserIdentifier;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Performing manage action for: reconciliation switch state query for euid %u", buf, 8u);
    }

    if (!_internalStateDictionary)
    {
      _internalStateDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v38 = 0;
    v26 = [(NetDomainsHandler *)self _currentReconciliationSwitchStateForUser:effectiveUserIdentifier since:&v38];
    date2 = v38;
    if (!date2)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v28 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "Received nil date from _currentReconciliationSwitchStateForUser, setting to current date", buf, 2u);
      }
    }

    v40[0] = @"domainTrackingXRefSwitchStateValue";
    v29 = v26 && self->_adminState == 1;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    v40[1] = @"domainTrackingXRefSwitchStateSince";
    v41[0] = v30;
    v41[1] = date2;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    [_internalStateDictionary setObject:v31 forKeyedSubscript:@"domainTrackingXRefSwitchState"];
  }

  v32 = [optionsCopy objectForKeyedSubscript:@"domainTrackingStatus"];

  if (v32)
  {
    v33 = [serviceCopy assertEntitlement:connectionCopy entitlement:12 orWaiveOnIntent:0];
    v34 = domainTrackingLogHandle;
    v35 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        *buf = 67109120;
        v45 = effectiveUserIdentifier;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "Performing manage action for: status query for euid %u", buf, 8u);
      }

      if (!_internalStateDictionary)
      {
        _internalStateDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v36 = _internalStateDictionary;
      _internalStateDictionary = [(NetDomainsHandler *)self _internalStateDictionary];
      [v36 setObject:_internalStateDictionary forKeyedSubscript:@"domainTrackingStatus"];
    }

    else
    {
      if (v35)
      {
        *buf = 67109120;
        v45 = effectiveUserIdentifier;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "Request to perform manage action (status query) without proper entitlement for euid %u", buf, 8u);
      }

      v36 = 0;
    }

    _internalStateDictionary = v36;
  }

  return _internalStateDictionary;
}

- (void)performPeriodicTasks
{
  if (self->_hasSomeUserEnabled)
  {
    [(NetDomainsHandler *)self _submitSymptomCombinationBreakdown];
    [(NetDomainsHandler *)self _resetSymptomCombinationBreakdown];
    [(NetDomainsHandler *)self _submitSymptomDomainStatistics];

    [(NetDomainsHandler *)self _resetSymptomDomainStatistics];
  }

  else
  {
    v3 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "No user has feature enabled, no-op for periodic task", v4, 2u);
    }
  }
}

- (void)setNetworkDomainDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);

  if (WeakRetained == delegateCopy)
  {
    goto LABEL_18;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = domainTrackingLogHandle;
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v15) = 0;
    v12 = "Delegate does not respond to required method networkDomainUserAppTrackingChanged:";
    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = domainTrackingLogHandle;
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v15) = 0;
    v12 = "Delegate does not respond to required method networkDomainUserEndpointTrackingChanged:";
LABEL_15:
    v13 = v11;
LABEL_16:
    v14 = OS_LOG_TYPE_ERROR;
LABEL_17:
    _os_log_impl(&dword_23255B000, v13, v14, v12, &v15, 2u);
    goto LABEL_18;
  }

  v6 = objc_opt_respondsToSelector();
  v7 = domainTrackingLogHandle;
  if ((v6 & 1) == 0)
  {
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v15) = 0;
    v12 = "Delegate does not respond to required method networkDomainResolution:";
    v13 = v7;
    goto LABEL_16;
  }

  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = delegateCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Setting network domain delegate to %@", &v15, 0xCu);
  }

  objc_storeWeak(&self->_netDomainDelegate, delegateCopy);
  completedNetworkDomainInitialization = self->_completedNetworkDomainInitialization;
  v9 = domainTrackingLogHandle;
  v10 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT);
  if (!completedNetworkDomainInitialization)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    LOWORD(v15) = 0;
    v12 = "Waiting for network domain initialization before calling delegates";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

  if (v10)
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Calling initial delegate update methods for userAppTracking and userEndpointTracking", &v15, 2u);
  }

  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
LABEL_18:
}

- (void)_submitSymptomCombinationBreakdown
{
  v14[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"IncompleteSymptom";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[0]];
  v14[0] = v3;
  v13[1] = @"mDNSNoDelegate";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[2]];
  v14[1] = v4;
  v13[2] = @"mDNSDelegateAuditToken";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[3]];
  v14[2] = v5;
  v13[3] = @"mDNSDelegateMachO";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[4]];
  v14[3] = v6;
  v13[4] = @"mDNSDelegatePID";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[5]];
  v14[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v9 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageSymptomCombination to CoreAnalytics: %@", buf, 0xCu);
  }

  v10 = v8;
  AnalyticsSendEventLazy();
}

- (void)_resetSymptomCombinationBreakdown
{
  *&self->_symptomCombinationTypeCounts[4] = 0u;
  *&self->_symptomCombinationTypeCounts[2] = 0u;
  *self->_symptomCombinationTypeCounts = 0u;
}

- (void)_submitSymptomDomainStatistics
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"symptomsWithDomain";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_dnsSymptomWithDomainCount];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v4 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageDomainStatistics to CoreAnalytics: %@", buf, 0xCu);
  }

  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

- (void)_submitAppTrackingEnabled
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageEnable to CoreAnalytics", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

- (void)_callDelegateForResolutionBy:(unsigned int)by bundleIdentifier:(id)identifier forDomain:(id)domain endpoints:(id)endpoints
{
  v8 = *&by;
  v21[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  domainCopy = domain;
  endpointsCopy = endpoints;
  v20[0] = @"ResolvingEffectiveUserId";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v21[0] = v13;
  v21[1] = identifierCopy;
  v20[1] = @"ResolvingBundleName";
  v20[2] = @"ResolvingDomain";
  v20[3] = @"ResolvingEndpoints";
  v21[2] = domainCopy;
  v21[3] = endpointsCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained networkDomainResolution:v14];
    v17 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "called domain resolution delegate: %@", &v18, 0xCu);
    }
  }
}

- (BOOL)_convertNSData:(id)data toAuditToken:(id *)token
{
  dataCopy = data;
  v6 = dataCopy;
  if (token)
  {
    if ([dataCopy length] == 32)
    {
      bytes = [v6 bytes];
      if (bytes)
      {
        v8 = bytes[1];
        *token->var0 = *bytes;
        *&token->var0[4] = v8;
        LOBYTE(token) = 1;
        goto LABEL_8;
      }

      v9 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Invalid token data", v11, 2u);
      }
    }

    LOBYTE(token) = 0;
  }

LABEL_8:

  return token;
}

- (id)_bundleNameFromAuditTokenData:(id)data auditToken:(id *)token orMachOUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  v10 = dCopy;
  if (!(dataCopy | dCopy))
  {
    v11 = 0;
    goto LABEL_20;
  }

  if (dataCopy)
  {
    v12 = dataCopy;
  }

  else
  {
    v12 = dCopy;
  }

  v13 = v12;
  v14 = [(SFCache *)self->_bundleIdentifierCache entryForKey:v13];
  if (!v14)
  {
    if (dataCopy)
    {
      v15 = *&token->var0[4];
      v24[0] = *token->var0;
      v24[1] = v15;
      v11 = [FlowAnalyticsEngine appBundleIdentifierFromAuditToken:v24];
    }

    else
    {
      v20 = uuid_to_bundleid(v10);
      v11 = [FlowAnalyticsEngine appBundleIdentifierFromBundleIdentifier:v20];
    }

    bundleIdentifierCache = self->_bundleIdentifierCache;
    if (v11)
    {
      [(SFCache *)bundleIdentifierCache addEntry:v11 forKey:v13];
      goto LABEL_19;
    }

    null = [MEMORY[0x277CBEB68] null];
    [(SFCache *)bundleIdentifierCache addEntry:null forKey:v13];

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        LODWORD(v24[0]) = 138412290;
        *(v24 + 4) = v19;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unexpected object returned from cache: %@", v24, 0xCu);
      }
    }

    goto LABEL_18;
  }

  v11 = v14;
LABEL_19:

LABEL_20:

  return v11;
}

- (BOOL)triggerAutoBugCaptureCaseForType:(id)type subType:(id)subType privateSubtypeContext:(id)context detectedProcess:(id)process events:(id)events thresholdValuesString:(id)string
{
  v41 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  processCopy = process;
  eventsCopy = events;
  stringCopy = string;
  if (self->_okToTriggerAutoBugCapture)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v20 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    v21 = v20;
    if (v20)
    {
      v22 = [v20 signatureWithDomain:@"PrivacyTransparency" type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:processCopy triggerThresholdValues:stringCopy];
      v23 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413059;
        v34 = typeCopy;
        v35 = 2112;
        v36 = subTypeCopy;
        v37 = 2113;
        v38 = contextCopy;
        v39 = 2113;
        v40 = processCopy;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Triggering a 'PrivacyTransparency/%@/%@/%{private}@' ABC case for process:%{private}@", buf, 0x2Au);
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __129__NetDomainsHandler_triggerAutoBugCaptureCaseForType_subType_privateSubtypeContext_detectedProcess_events_thresholdValuesString___block_invoke;
      v26[3] = &unk_27898AAB0;
      v28 = &v29;
      v27 = subTypeCopy;
      [v21 snapshotWithSignature:v22 duration:eventsCopy events:0 payload:0 actions:v26 reply:0.0];
    }

    v24 = *(v30 + 24);

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

void __129__NetDomainsHandler_triggerAutoBugCaptureCaseForType_subType_privateSubtypeContext_detectedProcess_events_thresholdValuesString___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "%@ ABC case not accepted. response: %@", &v7, 0x16u);
    }
  }
}

- (void)checkForAutoBugCaptureWorthyCase:(id)case domainName:(id)name initiatedType:(unsigned int)type
{
  v28 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  nameCopy = name;
  if (self->_okToTriggerAutoBugCapture)
  {
    if (nameCopy)
    {
      v10 = [(NetDomainsHandler *)self bundleNameImplies1stOr2ndParty:caseCopy];
      v11 = [(NetDomainsHandler *)self domainNameImpliesKnownAppleProperty:nameCopy];
      if (v10 && !v11)
      {
        if (!self->_previouslyAcceptedABCCases)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
          previouslyAcceptedABCCases = self->_previouslyAcceptedABCCases;
          self->_previouslyAcceptedABCCases = v12;
        }

        nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", caseCopy, nameCopy];
        if (([(NSMutableSet *)self->_previouslyAcceptedABCCases containsObject:nameCopy]& 1) != 0)
        {
          v15 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = nameCopy;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "AppleAppUsingTracker already triggered this case %@", buf, 0xCu);
          }
        }

        else
        {
          v17 = type == 1;
          queue = [(NetDomainsHandler *)self queue];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __79__NetDomainsHandler_checkForAutoBugCaptureWorthyCase_domainName_initiatedType___block_invoke;
          v21[3] = &unk_27898AAD8;
          v25 = v17;
          v21[4] = self;
          v22 = nameCopy;
          v23 = caseCopy;
          v24 = nameCopy;
          dispatch_async(queue, v21);
        }
      }
    }

    else
    {
      queue2 = [(NetDomainsHandler *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__NetDomainsHandler_checkForAutoBugCaptureWorthyCase_domainName_initiatedType___block_invoke_247;
      block[3] = &unk_27898A7D0;
      block[4] = self;
      v20 = caseCopy;
      dispatch_async(queue2, block);
    }
  }
}

void __79__NetDomainsHandler_checkForAutoBugCaptureWorthyCase_domainName_initiatedType___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 64))
  {
    v2 = @"AppInitiated";
  }

  else
  {
    v2 = @"NonAppInitiated";
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9[0] = @"FQDN";
  v9[1] = @"requestID";
  v10[0] = v4;
  v10[1] = &stru_2847966D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v3 triggerAutoBugCaptureCaseForType:@"AppleAppUsingTracker" subType:v2 privateSubtypeContext:v4 detectedProcess:v5 events:v7 thresholdValuesString:0];

  if (v8)
  {
    [*(*(a1 + 32) + 56) addObject:*(a1 + 56)];
  }
}

- (void)willSwitchUser
{
  [(NSNotificationCenter *)self->_notificationCenter postNotificationName:@"UMSwitch" object:self];
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "UserManagement: Sent user switch notification", v3, 2u);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NetDomainsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_5 != -1)
  {
    dispatch_once(&sharedInstance_pred_5, block);
  }

  v2 = sharedInstance_sharedInstance_5;

  return v2;
}

void __35__NetDomainsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v1;

  v3 = sharedInstance_sharedInstance_5;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[NetDomainsHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (BOOL)noteSymptom:(id)symptom
{
  v108 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventData = [symptomCopy eventData];
  eventKey = [symptomCopy eventKey];
  v7 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_RESOLVING"];
  v8 = [eventKey isEqualToString:v7];

  if (v8)
  {
    if (self->_adminState == 2)
    {
      v9 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.val[0]) = 0;
        v10 = "Domain tracking disabled, ignoring symptom";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 2;
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, v12, v10, &buf, v13);
        goto LABEL_115;
      }

      goto LABEL_115;
    }

    if (!self->_hasSomeUserEnabled || !self->_hasCurrentUserReconciliationEnabled)
    {
      goto LABEL_115;
    }

    eventQualifiers = [symptomCopy eventQualifiers];
    v16 = [eventQualifiers objectForKeyedSubscript:@"5"];

    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v37 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v38 = v37;
        buf.val[0] = 134218242;
        *&buf.val[1] = v16;
        LOWORD(buf.val[3]) = 2112;
        *(&buf.val[3] + 2) = objc_opt_class();
        v39 = *(&buf.val[3] + 2);
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "Incoming SYMPTOM_DNS_RESOLVING without resolved endpoint, %p or unexpected class %@", &buf, 0x16u);
      }

      ++self->_symptomCombinationTypeCounts[0];
      goto LABEL_114;
    }

    eventQualifiers2 = [symptomCopy eventQualifiers];
    v18 = [eventQualifiers2 objectForKeyedSubscript:@"6"];

    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v40 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v41 = v40;
        buf.val[0] = 134218242;
        *&buf.val[1] = v18;
        LOWORD(buf.val[3]) = 2112;
        *(&buf.val[3] + 2) = objc_opt_class();
        v42 = *(&buf.val[3] + 2);
        _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "Incoming SYMPTOM_DNS_RESOLVING without cnames, %p or unexpected class %@", &buf, 0x16u);
      }

      ++self->_symptomCombinationTypeCounts[0];
      goto LABEL_113;
    }

    format = kCFPropertyListBinaryFormat_v1_0;
    error = 0;
    v94 = [MEMORY[0x277CBEB58] set];
    v19 = *MEMORY[0x277CBECE8];
    v20 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], v16, 0, &format, &error);
    v21 = v20;
    if (!v20 || ![v20 count])
    {
      v43 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        buf.val[0] = 138412290;
        *&buf.val[1] = error;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Could not create property list from endpoint data, error %@", &buf, 0xCu);
      }

      goto LABEL_112;
    }

    selfCopy = self;
    allocator = v19;
    v84 = eventData;
    v91 = eventKey;
    data = v18;
    v89 = v21;
    v90 = v16;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v97 objects:v107 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v98;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v98 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v97 + 1) + 8 * i);
          v28 = ipAddrToString(v27);
          v29 = v28;
          if (v28 && [v28 length])
          {
            [v94 addObject:v29];
          }

          else
          {
            v30 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              buf.val[0] = 138412290;
              *&buf.val[1] = v27;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Could not extract endpoint from received data %@", &buf, 0xCu);
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v97 objects:v107 count:16];
      }

      while (v24);
    }

    v18 = data;
    v31 = CFPropertyListCreateWithData(allocator, data, 0, &format, &error);
    v32 = v31;
    if (!v31 || ![v31 count])
    {
      v44 = domainTrackingLogHandle;
      v16 = v90;
      eventKey = v91;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        buf.val[0] = 138412290;
        *&buf.val[1] = error;
        _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Could not create property list from cname data, error %@", &buf, 0xCu);
      }

      goto LABEL_111;
    }

    firstObject = [v32 firstObject];
    v33 = selfCopy;
    ++selfCopy->_dnsSymptomWithDomainCount;
    memset(&v96, 0, sizeof(v96));
    eventQualifiers3 = [symptomCopy eventQualifiers];
    v35 = [eventQualifiers3 objectForKeyedSubscript:@"2"];

    if (v35)
    {
      if ([symptomCopy verifiedDelegateSymptom])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        if ([(NetDomainsHandler *)selfCopy _convertNSData:v36 toAuditToken:&v96])
        {
          goto LABEL_51;
        }

        v60 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.val[0]) = 0;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_ERROR, "Received an explicit audit token from the sender but failed to convert into audit token", &buf, 2u);
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    v45 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "Using audit token from the XPC connection from the sender", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    if (symptomCopy)
    {
      objc_msgSend_auditToken(symptomCopy);
    }

    v96 = buf;
LABEL_51:
    buf = v96;
    v46 = audit_token_to_euid(&buf);
    buf = v96;
    v83 = audit_token_to_pid(&buf);
    memset(&v95, 0, sizeof(v95));
    eventQualifiers4 = [symptomCopy eventQualifiers];
    v48 = [eventQualifiers4 objectForKeyedSubscript:@"3"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = [(NetDomainsHandler *)selfCopy _convertNSData:v49 toAuditToken:&v95];
    v51 = -1;
    if (v48 && v50)
    {
      buf = v95;
      v46 = audit_token_to_euid(&buf);
      buf = v95;
      v51 = audit_token_to_pid(&buf);
    }

    allocatora = v51;
    if (![(NetDomainsHandler *)selfCopy _currentSwitchStateForUser:v46 since:0])
    {
      v53 = v48;
      v55 = firstObject;
LABEL_110:

      v16 = v90;
      eventKey = v91;
      v21 = v89;
LABEL_111:

LABEL_112:
LABEL_113:

LABEL_114:
      goto LABEL_115;
    }

    HIDWORD(v78) = v46;
    v82 = v49;
    eventQualifiers5 = [symptomCopy eventQualifiers];
    v53 = [eventQualifiers5 objectForKeyedSubscript:@"4"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v55 = firstObject;
    if ([v54 length] == 16)
    {
      v56 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v54, "bytes")}];
    }

    else
    {
      v56 = 0;
    }

    v79 = v36;
    v80 = v54;
    if (v84)
    {
      v57 = v84[1];
      if ((v57 & 2) != 0)
      {
        v58 = v84[8];
      }

      else
      {
        v58 = -1;
      }

      if ((v57 & 8) != 0)
      {
        LODWORD(v78) = v58;
        v61 = v56;
        v62 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf.val[0]) = 0;
          _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEBUG, "Self-Reporting API used", &buf, 2u);
        }

        v57 = v84[1];
        v56 = v61;
        v36 = v79;
        v58 = v78;
      }

      if ((v57 & 0x10) != 0)
      {
        v59 = v84[14];
      }

      else
      {
        v59 = 0;
      }
    }

    else
    {
      v59 = 0;
      v58 = -1;
    }

    v81 = v56;
    if (firstObject)
    {
      v63 = v50 ^ 1;
      if (v56)
      {
        v63 = 0;
      }

      if (v63 == 1 && v58 <= 0)
      {
        buf = v96;
        v64 = [(NetDomainsHandler *)selfCopy _bundleNameFromAuditTokenData:v36 auditToken:&buf orMachOUUID:0];
        ++selfCopy->_symptomCombinationTypeCounts[2];
        goto LABEL_95;
      }

      if (v50)
      {
        buf = v95;
        v64 = [(NetDomainsHandler *)selfCopy _bundleNameFromAuditTokenData:v82 auditToken:&buf orMachOUUID:0];
        ++selfCopy->_symptomCombinationTypeCounts[3];
        goto LABEL_95;
      }

      if (v56)
      {
        buf = v96;
        v64 = [(NetDomainsHandler *)selfCopy _bundleNameFromAuditTokenData:0 auditToken:&buf orMachOUUID:v56];
        ++selfCopy->_symptomCombinationTypeCounts[4];
LABEL_95:
        v70 = allocatora;
        if (v64)
        {
          goto LABEL_96;
        }

LABEL_105:
        v36 = v79;
LABEL_106:
        v76 = domainTrackingLogHandle;
        v74 = v80;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          buf.val[0] = 138478083;
          *&buf.val[1] = v64;
          LOWORD(buf.val[3]) = 2113;
          *(&buf.val[3] + 2) = v55;
          _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_DEBUG, "Failed to get bundleID (%{private}@) or domain name (%{private}@)", &buf, 0x16u);
        }

        v73 = v81;
        goto LABEL_109;
      }

      allocatorb = v59;
      v66 = v53;
      v67 = v79;
      v65 = v58;
      if (v58 >= 1)
      {
        v75 = pid_to_uuid(v58);
        if (v75)
        {
          buf = v96;
          v64 = [(NetDomainsHandler *)selfCopy _bundleNameFromAuditTokenData:0 auditToken:&buf orMachOUUID:v75];
        }

        else
        {
          v64 = 0;
        }

        v33 = selfCopy;
        ++selfCopy->_symptomCombinationTypeCounts[5];

        v18 = data;
        v53 = v66;
        v55 = firstObject;
        v59 = allocatorb;
        v70 = v65;
        if (v64)
        {
LABEL_96:
          v71 = v59;
          v72 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            buf.val[0] = 67110403;
            buf.val[1] = v71;
            LOWORD(buf.val[2]) = 1025;
            *(&buf.val[2] + 2) = v83;
            HIWORD(buf.val[3]) = 1025;
            buf.val[4] = v70;
            LOWORD(buf.val[5]) = 2113;
            *(&buf.val[5] + 2) = v64;
            HIWORD(buf.val[7]) = 2113;
            v104 = v55;
            v105 = 2113;
            v106 = v94;
            _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_DEFAULT, "Domain resolution for R%u, pid: %{private}d, delegate pid: %{private}d, bundle: %{private}@, domain: %{private}@, resolved endpoints: %{private}@", &buf, 0x32u);
          }

          [(NetDomainsHandler *)v33 _callDelegateForResolutionBy:HIDWORD(v78) bundleIdentifier:v64 forDomain:v55 endpoints:v94, v78];
          v74 = v80;
          v73 = v81;
          v36 = v79;
LABEL_109:

          v49 = v82;
          goto LABEL_110;
        }

        goto LABEL_105;
      }

      v68 = 0;
      v18 = data;
      v33 = selfCopy;
    }

    else
    {
      v65 = v58;
      allocatorb = v59;
      v66 = v53;
      v67 = v36;
      v68 = v56 != 0;
    }

    v69 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 67110400;
      buf.val[1] = allocatorb;
      LOWORD(buf.val[2]) = 1024;
      *(&buf.val[2] + 2) = firstObject != 0;
      HIWORD(buf.val[3]) = 1024;
      buf.val[4] = 1;
      LOWORD(buf.val[5]) = 1024;
      *(&buf.val[5] + 2) = v50;
      HIWORD(buf.val[6]) = 1024;
      buf.val[7] = v68;
      LOWORD(v104) = 1024;
      *(&v104 + 2) = v65 >= 0;
      _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_ERROR, "Incomplete set of qualifiers for R%u to process symptom. Has: domainName = %d, auditToken = %d, dAuditToken = %d, delegateMachOUuid = %d, delegatePid = %d", &buf, 0x26u);
    }

    v64 = 0;
    ++v33->_symptomCombinationTypeCounts[0];
    v36 = v67;
    v53 = v66;
    v55 = firstObject;
    goto LABEL_106;
  }

  v14 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    buf.val[0] = 138412290;
    *&buf.val[1] = eventKey;
    v10 = "NetDomains, unrecognized symptom: %@";
    v11 = v14;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
    goto LABEL_7;
  }

LABEL_115:

  return 0;
}

- (void)privacyReset
{
  if (effectiveUserId)
  {
    v3 = 501;
  }

  else
  {
    v3 = 0;
  }

  [(NetDomainsHandler *)self setSwitchState:self->_defaultSwitchState forUser:v3];
  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
  if (effectiveUserId)
  {
    v4 = 501;
  }

  else
  {
    v4 = 0;
  }

  [(NetDomainsHandler *)self setReconciliationSwitchState:self->_defaultReconciliationSwitchState forUser:v4];

  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
}

@end