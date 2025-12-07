@interface COCoordinationService
+ (void)startWithConstituentType:(unint64_t)type;
- (id)_initWithConstituentType:(unint64_t)type;
- (id)_servicesForClusters:(id)clusters;
- (id)aliasManagerRequestsNewMesh:(id)mesh;
- (id)takeAssertionForCluster:(id)cluster;
- (void)_completeMigration;
- (void)_continueInitialization;
- (void)_continueMigration;
- (void)_initializeServices;
- (void)_initiateMigrationFrom:(int64_t)from;
- (void)_linkServicesToMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (void)_setupIDSServerBag;
- (void)_significantHomeChange:(id)change;
- (void)_unlinkServicesFromMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (void)_withLock:(id)lock;
- (void)_withServicesLock:(id)lock;
- (void)aliasManager:(id)manager activatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)aliasManager:(id)manager deactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)didInvalidateAssertionForCluster:(id)cluster;
- (void)idsServerBagDidUpdate:(id)update;
- (void)waitForClusterBootstrap:(id)bootstrap completion:(id)completion;
@end

@implementation COCoordinationService

- (id)_initWithConstituentType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = COCoordinationService;
  v4 = [(COCoordinationService *)&v26 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_lock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);

    v8 = dispatch_queue_create("com.apple.coordination.COCoordinationService", v7);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v8;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    assertions = v5->_assertions;
    v5->_assertions = strongToWeakObjectsMapTable;

    v12 = [COClusterAliasManager aliasManagerWithProvider:v5 delegate:v5 delegateDispatchQueue:v5->_dispatchQueue];
    aliasManager = v5->_aliasManager;
    v5->_aliasManager = v12;

    v14 = MEMORY[0x277CFD0B0];
    coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
    v16 = [v14 userDefaultsForIdentifer:coordinationBundleID];

    v17 = [v16 objectForKey:@"SingleShotType"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        type = [v17 unsignedIntegerValue];
        v18 = COCoreLogForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          typeCopy = type;
          _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Service type overridden with %016llX", buf, 0xCu);
        }
      }

      [v16 removeObjectForKey:@"SingleShotType"];
    }

    v5->_type = type;
    [v16 doubleForKey:@"MinimumPing"];
    v20 = v19;
    [v16 doubleForKey:@"MaximumPing"];
    if (v20 > 0.0 && v20 < v21)
    {
      v5->_pingMinimum = v20;
      v5->_pingMaximum = v21;
    }

    v22 = +[COHomeKitAdapter sharedInstance];
    hkAdapter = v5->_hkAdapter;
    v5->_hkAdapter = v22;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__significantHomeChange_ name:@"COHomeKitAdapterSignificantHomeChangeNotification" object:0];

    v5->_isMigrating = 1;
    -[COCoordinationService _initiateMigrationFrom:](v5, "_initiateMigrationFrom:", [v16 integerForKey:@"LastMigration"]);
    [(COCoordinationService *)v5 _setupIDSServerBag];
  }

  return v5;
}

+ (void)startWithConstituentType:(unint64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__COCoordinationService_startWithConstituentType___block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = self;
  v3[5] = type;
  if (startWithConstituentType__onceToken != -1)
  {
    dispatch_once(&startWithConstituentType__onceToken, v3);
  }
}

void __50__COCoordinationService_startWithConstituentType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[COCoordinationService alloc] _initWithConstituentType:*(a1 + 40)];
  [v1 setSingleton:v2];
}

- (void)_initiateMigrationFrom:(int64_t)from
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = COCoreLogForCategory(1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (from < 1)
  {
    if (v6)
    {
      *buf = 134218240;
      fromCopy2 = from;
      v10 = 2048;
      v11 = 1;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "Migration starting from %ld to %ld...", buf, 0x16u);
    }

    [(COCoordinationService *)self _continueMigration];
  }

  else
  {
    if (v6)
    {
      *buf = 134218240;
      fromCopy2 = from;
      v10 = 2048;
      v11 = 1;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "No migration required (%ld >= %ld)", buf, 0x16u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__COCoordinationService__initiateMigrationFrom___block_invoke;
    v7[3] = &unk_278E15AB8;
    v7[4] = self;
    [(COCoordinationService *)self _withLock:v7];
    [(COCoordinationService *)self _continueInitialization];
  }
}

- (void)_continueMigration
{
  v21[2] = *MEMORY[0x277D85DE8];
  hkAdapter = [(COCoordinationService *)self hkAdapter];
  currentAccessory = [hkAdapter currentAccessory];

  if (currentAccessory)
  {
    v5 = objc_alloc_init(MEMORY[0x277D296D8]);
    v6 = objc_alloc_init(MEMORY[0x277D29740]);
    v7 = MEMORY[0x277D2C900];
    alarms = [v5 alarms];
    v21[0] = alarms;
    timers = [v6 timers];
    v21[1] = timers;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v12 = [v7 combineAllFutures:v10 ignoringErrors:1 scheduler:immediateScheduler];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__COCoordinationService__continueMigration__block_invoke;
    v16[3] = &unk_278E16E60;
    v17 = currentAccessory;
    v18 = v5;
    v19 = v6;
    selfCopy = self;
    v13 = v6;
    v14 = v5;
    v15 = [v12 addSuccessBlock:v16];
  }

  else
  {
    [(COCoordinationService *)self _completeMigration];
  }
}

void __43__COCoordinationService__continueMigration__block_invoke(id *a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  v44 = a1;
  if (objc_opt_isKindOfClass())
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v8)
    {
      v9 = v8;
      v45 = v6;
      v38 = v5;
      v40 = v4;
      v42 = v3;
      v10 = *v53;
      v11 = *MEMORY[0x277CFCEC8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v52 + 1) + 8 * i);
          v14 = [v13 siriContext];
          v15 = [v14 objectForKey:v11];
          if (!v15)
          {
            v15 = COAlarmSiriContextTargetReferenceForAccessory();
            v16 = [v13 mutableCopy];
            if (v14)
            {
              v17 = [v14 mutableCopy];
            }

            else
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            v18 = v17;
            [v17 setObject:v15 forKey:v11];
            [v16 setSiriContext:v18];
            v19 = [a1[5] updateAlarm:v16];
            [v45 addObject:v19];

            a1 = v44;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v9);
      v4 = v40;
      v3 = v42;
      v5 = v38;
      v6 = v45;
    }
  }

  else
  {
    v7 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__COCoordinationService__continueMigration__block_invoke_cold_1();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = v5;
    v21 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v46 = v6;
      v39 = v5;
      v41 = v4;
      v43 = v3;
      v23 = *v49;
      v24 = *MEMORY[0x277CFD068];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v48 + 1) + 8 * j);
          if (([v26 isCurrentTimer] & 1) == 0)
          {
            v27 = [v26 siriContext];
            v28 = [v27 objectForKey:v24];
            if (!v28)
            {
              v28 = COTimerSiriContextTargetReferenceForAccessory();
              v29 = [v26 mutableCopy];
              if (v27)
              {
                v30 = [v27 mutableCopy];
              }

              else
              {
                v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v31 = v30;
              [v30 setObject:v28 forKey:v24];
              [v29 setSiriContext:v31];
              v32 = [a1[6] updateTimer:v29];
              [v46 addObject:v32];

              a1 = v44;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v22);
      v4 = v41;
      v3 = v43;
      v5 = v39;
      v6 = v46;
    }
  }

  else
  {
    v20 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __43__COCoordinationService__continueMigration__block_invoke_cold_2();
    }
  }

  if ([v6 count])
  {
    v33 = a1;
    v34 = MEMORY[0x277D2C900];
    v35 = [MEMORY[0x277D2C938] immediateScheduler];
    v36 = [v34 combineAllFutures:v6 ignoringErrors:1 scheduler:v35];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __43__COCoordinationService__continueMigration__block_invoke_36;
    v47[3] = &unk_278E19258;
    v47[4] = v33[7];
    v37 = [v36 addCompletionBlock:v47];
  }

  else
  {
    [a1[7] _completeMigration];
  }
}

- (void)_completeMigration
{
  v3 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "Migration complete.", buf, 2u);
  }

  v4 = MEMORY[0x277CFD0B0];
  coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
  v6 = [v4 userDefaultsForIdentifer:coordinationBundleID];

  [v6 setInteger:1 forKey:@"LastMigration"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__COCoordinationService__completeMigration__block_invoke;
  v7[3] = &unk_278E15AB8;
  v7[4] = self;
  [(COCoordinationService *)self _withLock:v7];
  [(COCoordinationService *)self _continueInitialization];
}

- (void)_initializeServices
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_servicesLock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v4 = [COCapabilityService serviceWithDelegate:self];
  [v3 addObject:v4];

  v5 = [CORoleService serviceWithDelegate:self];
  [v3 addObject:v5];

  v6 = [COStateService serviceWithDelegate:self];
  [v3 addObject:v6];

  v7 = [COMessagingService serviceWithDelegate:self];
  [v3 addObject:v7];

  if ([MEMORY[0x277CFD0B8] isDistributedTimersForHH1Enabled])
  {
    v8 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Alarms & Timers are handled by DistributedTimers (HH1 ok)", &v12, 0xCu);
    }
  }

  else
  {
    v9 = [COAlarmService serviceWithDelegate:self];
    [v3 addObject:v9];

    v8 = [COTimerService serviceWithDelegate:self];
    [v3 addObject:v8];
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:v3];
  services = self->_services;
  self->_services = v10;
}

- (void)_continueInitialization
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__COCoordinationService__continueInitialization__block_invoke;
  v4[3] = &unk_278E15AB8;
  v4[4] = self;
  [(COCoordinationService *)self _withServicesLock:v4];
  alwaysAssert = self->_alwaysAssert;
  self->_alwaysAssert = 0;
}

- (void)_significantHomeChange:(id)change
{
  changeCopy = change;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__COCoordinationService__significantHomeChange___block_invoke;
  v5[3] = &unk_278E15638;
  v5[4] = self;
  v5[5] = &v6;
  [(COCoordinationService *)self _withLock:v5];
  if (*(v7 + 24) == 1)
  {
    [(COCoordinationService *)self _continueMigration];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_linkServicesToMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v79 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  clustersCopy = clusters;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__29;
  v66 = __Block_byref_object_dispose__29;
  v67 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke;
  v59[3] = &unk_278E15A18;
  v61 = &v62;
  v59[4] = self;
  v36 = clustersCopy;
  v60 = v36;
  [(COCoordinationService *)self _withServicesLock:v59];
  isDistributedTimersEnabled = [MEMORY[0x277CFD0B8] isDistributedTimersEnabled];
  hkAdapter = [(COCoordinationService *)self hkAdapter];
  hasOptedToHH2 = [hkAdapter hasOptedToHH2];

  v12 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v34 = "no";
    if (isDistributedTimersEnabled)
    {
      v35 = "yes";
    }

    else
    {
      v35 = "no";
    }

    *buf = 134218498;
    selfCopy4 = self;
    v71 = v35;
    v70 = 2080;
    if (hasOptedToHH2)
    {
      v34 = "yes";
    }

    v72 = 2080;
    v73 = v34;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p DistributedTimers: %s, HomeHub2: %s", buf, 0x20u);
  }

  if (!([MEMORY[0x277CFD0B8] isDistributedTimersForHH1Enabled] & 1 | ((isDistributedTimersEnabled & 1) == 0)) && ((hasOptedToHH2 ^ 1) & 1) == 0)
  {
    v13 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p Alarms & Timers are handled by DistributedTimers, removing services.", buf, 0xCu);
    }

    v14 = [v63[5] mutableCopy];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = v63[5];
    v16 = [v15 countByEnumeratingWithState:&v55 objects:v78 count:16];
    if (v16)
    {
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          v20 = objc_opt_class();
          if (([v20 isEqual:objc_opt_class()] & 1) == 0)
          {
            v21 = objc_opt_class();
            if (![v21 isEqual:objc_opt_class()])
            {
              continue;
            }
          }

          v22 = COCoreLogForCategory(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy4 = self;
            v70 = 2112;
            v71 = v19;
            _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p removing %@", buf, 0x16u);
          }

          [v14 removeObject:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v55 objects:v78 count:16];
      }

      while (v16);
    }

    v23 = v63[5];
    v63[5] = v14;
  }

  v24 = [v63[5] count];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3042000000;
  v51 = __Block_byref_object_copy__50;
  v52 = __Block_byref_object_dispose__51;
  v53 = 0;
  v25 = dispatch_group_create();
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_52;
  v39[3] = &unk_278E192A8;
  v47 = v24;
  v44 = v54;
  v45 = &v62;
  v26 = v36;
  v40 = v26;
  v27 = controllerCopy;
  v41 = v27;
  v28 = identifierCopy;
  v42 = v28;
  v46 = &v48;
  v29 = v25;
  v43 = v29;
  v30 = MEMORY[0x245D5FF10](v39);
  objc_storeWeak(v49 + 5, v30);
  v31 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v63[5] count];
    *buf = 134219010;
    selfCopy4 = self;
    v70 = 2048;
    v71 = v32;
    v72 = 2048;
    v73 = v27;
    v74 = 2112;
    v75 = v28;
    v76 = 2112;
    v77 = v26;
    _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "%p linking %lu services to %p with %@ for Clusters %@", buf, 0x34u);
  }

  v33 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [COCoordinationService _linkServicesToMeshController:withClusterIdentifier:forClusters:];
  }

  dispatch_group_enter(v29);
  v30[2](v30);
  dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v48, 8);
  objc_destroyWeak(&v53);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v62, 8);
}

uint64_t __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesForClusters:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_52(void *a1)
{
  if (*(*(a1[8] + 8) + 24) >= a1[11])
  {
    v6 = a1[7];

    dispatch_group_leave(v6);
  }

  else
  {
    v2 = [*(*(a1[9] + 8) + 40) objectAtIndex:?];
    ++*(*(a1[8] + 8) + 24);
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_2;
    v7[3] = &unk_278E19280;
    v7[4] = a1[10];
    [v2 joinClusters:v3 usingMeshController:v4 withClusterIdentifier:v5 completion:v7];
  }
}

void __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  WeakRetained[2]();
}

- (void)_unlinkServicesFromMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v57 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  clustersCopy = clusters;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__29;
  v45 = __Block_byref_object_dispose__29;
  v46 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke;
  v38[3] = &unk_278E15A18;
  v40 = &v41;
  v38[4] = self;
  v11 = clustersCopy;
  v39 = v11;
  [(COCoordinationService *)self _withServicesLock:v38];
  v12 = [v42[5] count];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3042000000;
  v34 = __Block_byref_object_copy__50;
  v35 = __Block_byref_object_dispose__51;
  v36 = 0;
  v13 = dispatch_group_create();
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_2;
  v23 = &unk_278E192D0;
  v30 = v12;
  v27 = v37;
  v28 = &v41;
  v14 = v11;
  v24 = v14;
  v15 = identifierCopy;
  v25 = v15;
  v29 = &v31;
  v16 = v13;
  v26 = v16;
  v17 = MEMORY[0x245D5FF10](&v20);
  objc_storeWeak(v32 + 5, v17);
  v18 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v42[5] count];
    *buf = 134219010;
    selfCopy = self;
    v49 = 2048;
    v50 = v19;
    v51 = 2048;
    v52 = controllerCopy;
    v53 = 2112;
    v54 = v15;
    v55 = 2112;
    v56 = v14;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p unlinking %lu services from %p with %@ for Clusters %@", buf, 0x34u);
  }

  dispatch_group_enter(v16);
  v17[2](v17);
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v31, 8);
  objc_destroyWeak(&v36);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v41, 8);
}

uint64_t __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesForClusters:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_2(void *a1)
{
  if (*(*(a1[7] + 8) + 24) >= a1[10])
  {
    v5 = a1[6];

    dispatch_group_leave(v5);
  }

  else
  {
    v2 = [*(*(a1[8] + 8) + 40) objectAtIndex:?];
    ++*(*(a1[7] + 8) + 24);
    v3 = a1[4];
    v4 = a1[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_3;
    v6[3] = &unk_278E19280;
    v6[4] = a1[9];
    [v2 leaveClusters:v3 withClusterIdentifier:v4 completion:v6];
  }
}

void __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  WeakRetained[2]();
}

- (id)takeAssertionForCluster:(id)cluster
{
  clusterCopy = cluster;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__29;
  v25 = __Block_byref_object_dispose__29;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __49__COCoordinationService_takeAssertionForCluster___block_invoke;
  v12 = &unk_278E192F8;
  selfCopy = self;
  v5 = clusterCopy;
  v14 = v5;
  v15 = &v21;
  v16 = &v17;
  [(COCoordinationService *)self _withLock:&v9];
  if (*(v18 + 24) == 1)
  {
    v6 = [(COCoordinationService *)self aliasManager:v9];
    [v6 startTrackingCluster:v5];
  }

  v7 = v22[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v7;
}

void __49__COCoordinationService_takeAssertionForCluster___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 objectForKey:*(a1 + 40)];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v8 = *(a1 + 32);
      v9 = [v8 assertions];
      v10 = [v9 count];
      *buf = 134218754;
      v22 = v8;
      v23 = 2048;
      v24 = v7;
      v25 = 2112;
      v26 = v6;
      v27 = 2048;
      v28 = v10;
      _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%p reusing assertion %p for Cluster %@ (total %lu)", buf, 0x2Au);
    }
  }

  else
  {
    v11 = [COClusterAssertion assertionForCluster:*(a1 + 40) delegate:*(a1 + 32)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [*(a1 + 32) assertions];
    [v14 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];

    v5 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v17 = *(a1 + 32);
      v18 = [v17 assertions];
      v19 = [v18 count];
      *buf = 134218754;
      v22 = v17;
      v23 = 2048;
      v24 = v16;
      v25 = 2112;
      v26 = v15;
      v27 = 2048;
      v28 = v19;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p established assertion %p for Cluster %@ (total %lu)", buf, 0x2Au);
    }
  }

  objc_destroyWeak(&location);
}

- (void)waitForClusterBootstrap:(id)bootstrap completion:(id)completion
{
  bootstrapCopy = bootstrap;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__COCoordinationService_waitForClusterBootstrap_completion___block_invoke;
  v11[3] = &unk_278E15700;
  v11[4] = self;
  v8 = bootstrapCopy;
  v12 = v8;
  v13 = &v14;
  [(COCoordinationService *)self _withLock:v11];
  if (v15[3])
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [COCoordinationService waitForClusterBootstrap:completion:];
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    aliasManager = [(COCoordinationService *)self aliasManager];
    [aliasManager waitForBootstrapOfCluster:v8 withBlock:completionCopy];
  }

  _Block_object_dispose(&v14, 8);
}

void __60__COCoordinationService_waitForClusterBootstrap_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 objectForKey:*(a1 + 40)];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  *(*(*(a1 + 48) + 8) + 24) = v4 == 0;

  objc_destroyWeak(&location);
}

- (void)didInvalidateAssertionForCluster:(id)cluster
{
  clusterCopy = cluster;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__COCoordinationService_didInvalidateAssertionForCluster___block_invoke;
  v10 = &unk_278E156B0;
  selfCopy = self;
  v12 = clusterCopy;
  v5 = clusterCopy;
  [(COCoordinationService *)self _withLock:&v7];
  v6 = [(COCoordinationService *)self aliasManager:v7];
  [v6 stopTrackingCluster:v5];
}

void __58__COCoordinationService_didInvalidateAssertionForCluster___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) assertions];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [v4 assertions];
    v7 = 134218498;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2048;
    v12 = [v6 count];
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p assertion invalidated for Cluster %@ (total %lu)", &v7, 0x20u);
  }
}

- (id)aliasManagerRequestsNewMesh:(id)mesh
{
  v4 = [[COMeshController alloc] initWithConstituentType:[(COCoordinationService *)self type]];
  dispatchQueue = [(COCoordinationService *)self dispatchQueue];
  [(COMeshController *)v4 setDispatchQueue:dispatchQueue];

  [(COCoordinationService *)self pingMinimum];
  v7 = v6;
  [(COCoordinationService *)self pingMaximum];
  if (v7 > 0.0)
  {
    v9 = v8;
    if (v7 < v8)
    {
      [(COMeshController *)v4 setPingMinimum:v7];
      [(COMeshController *)v4 setPingMaximum:v9];
    }
  }

  return v4;
}

- (void)aliasManager:(id)manager activatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  completionCopy = completion;
  [(COCoordinationService *)self _linkServicesToMeshController:mesh withClusterIdentifier:identifier forClusters:clusters];
  completionCopy[2]();
}

- (void)aliasManager:(id)manager deactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  completionCopy = completion;
  [(COCoordinationService *)self _unlinkServicesFromMeshController:mesh withClusterIdentifier:identifier forClusters:clusters];
  completionCopy[2]();
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withServicesLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_servicesLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_servicesLock);
}

- (id)_servicesForClusters:(id)clusters
{
  v28 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  os_unfair_lock_assert_owner(&self->_servicesLock);
  v17 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  services = [(COCoordinationService *)self services];
  v6 = [services countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(services);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = clustersCopy;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([v10 _applicableToCluster:*(*(&v18 + 1) + 8 * j)])
              {
                [v17 addObject:v10];
                goto LABEL_16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v7 = [services countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  return v17;
}

- (void)_setupIDSServerBag
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p setting up IDSServer Bag", &v8, 0xCu);
  }

  v4 = objc_alloc_init(COIDSServerBag);
  idsServerBag = self->_idsServerBag;
  self->_idsServerBag = v4;

  idsServerBag = [(COCoordinationService *)self idsServerBag];
  [idsServerBag setDelegate:self];

  idsServerBag2 = [(COCoordinationService *)self idsServerBag];
  [idsServerBag2 configure];
}

- (void)idsServerBagDidUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p IDS server bag updated", &v19, 0xCu);
  }

  v6 = MEMORY[0x277CFD0B0];
  coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
  v8 = [v6 userDefaultsForIdentifer:coordinationBundleID];

  isFastFoldEnabled = [updateCopy isFastFoldEnabled];
  if (isFastFoldEnabled)
  {
    v10 = *MEMORY[0x277CFCF00];
    v11 = [v8 objectForKey:*MEMORY[0x277CFCF00]];
    v12 = v11;
    if (!v11 || ([v11 isEqual:isFastFoldEnabled] & 1) == 0)
    {
      v13 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        selfCopy = isFastFoldEnabled;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "Received an updated bag value for fast fold %@. Writing to prefs", &v19, 0xCu);
      }

      [v8 setObject:isFastFoldEnabled forKey:v10];
    }
  }

  isIPDiffingEnabled = [updateCopy isIPDiffingEnabled];
  if (isIPDiffingEnabled)
  {
    v15 = *MEMORY[0x277CFCF08];
    v16 = [v8 objectForKey:*MEMORY[0x277CFCF08]];
    v17 = v16;
    if (!v16 || ([v16 isEqual:isIPDiffingEnabled] & 1) == 0)
    {
      v18 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        selfCopy = isIPDiffingEnabled;
        _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Received an updated bag value for ip diffing %@. Writing to prefs", &v19, 0xCu);
      }

      [v8 setObject:isIPDiffingEnabled forKey:v15];
    }
  }
}

void __43__COCoordinationService__continueMigration__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "Migrating alarms failed (%@)", v1, 0xCu);
}

void __43__COCoordinationService__continueMigration__block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "Migrating timers failed (%@)", v1, 0xCu);
}

- (void)_linkServicesToMeshController:withClusterIdentifier:forClusters:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_244378000, v1, OS_LOG_TYPE_DEBUG, "%p services: %@", v2, 0x16u);
}

- (void)waitForClusterBootstrap:completion:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_244378000, v1, OS_LOG_TYPE_ERROR, "%p no assertion for Cluster %@, invoking bootstrap block inline", v2, 0x16u);
}

@end