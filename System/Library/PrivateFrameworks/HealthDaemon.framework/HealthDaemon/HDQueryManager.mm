@interface HDQueryManager
- (HDDaemon)daemon;
- (HDQueryManager)initWithDaemon:(id)daemon;
- (HDQueryManagerUnitTestDelegate)unitTest_delegate;
- (_HDProcessQueryCollection)_lock_queryCollectionForBundleIdentifier:(int)identifier createIfNecessary:;
- (id)_monitoringIdentifierForProcess:(uint64_t)process;
- (id)diagnosticDescription;
- (id)foregroundAnchoredObjectQueryBundleIdentifiersForType:(id)type;
- (void)_lock_executeDatabaseAccessBlocks;
- (void)_lock_unregisterQueryServer:(uint64_t)server;
- (void)_performAsyncWithUnitTestDelegate:(void *)delegate;
- (void)dealloc;
- (void)logDiagnostics;
- (void)processWithBundleIdentifier:(id)identifier didTransitionFromState:(unsigned int)state toState:(unsigned int)toState;
- (void)scheduleDatabaseAccessForQueryServer:(id)server block:(id)block;
- (void)startQueryServer:(id)server completion:(id)completion;
- (void)unitTest_suspendWithCount:(unint64_t)count;
@end

@implementation HDQueryManager

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (HDQueryManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v13.receiver = self;
  v13.super_class = HDQueryManager;
  v5 = [(HDQueryManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queryServersByUUID = v6->_queryServersByUUID;
    v6->_queryServersByUUID = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queryCollectionsByProcessBundleIdentifier = v6->_queryCollectionsByProcessBundleIdentifier;
    v6->_queryCollectionsByProcessBundleIdentifier = v9;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];
  }

  return v6;
}

- (void)dealloc
{
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  v4.receiver = self;
  v4.super_class = HDQueryManager;
  [(HDQueryManager *)&v4 dealloc];
}

- (void)startQueryServer:(id)server completion:(id)completion
{
  v74[2] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  v9 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"Start"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HDQueryManager_startQueryServer_completion___block_invoke;
  aBlock[3] = &unk_278616CC8;
  v67 = completionCopy;
  v58 = v9;
  v66 = v58;
  v61 = _Block_copy(aBlock);
  if (serverCopy)
  {
    objc_initWeak(&location, self);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __46__HDQueryManager_startQueryServer_completion___block_invoke_2;
    v62[3] = &unk_278616CF0;
    objc_copyWeak(&v63, &location);
    [serverCopy setQueryDidFinishHandler:v62];
    daemon = [(HDQueryManager *)self daemon];
    [daemon unitTest_queryServerDidInit:serverCopy];

    os_unfair_lock_lock(&self->_lock);
    v57 = serverCopy;
    v56 = v61;
    if (!self)
    {
LABEL_33:

      os_unfair_lock_unlock(&self->_lock);
      objc_destroyWeak(&v63);
      objc_destroyWeak(&location);
      goto LABEL_34;
    }

    os_unfair_lock_assert_owner(&self->_lock);
    v68 = 0;
    v11 = v57;
    os_unfair_lock_assert_owner(&self->_lock);
    queryUUID = [v11 queryUUID];
    v60 = [(NSMutableDictionary *)self->_queryServersByUUID objectForKey:queryUUID];
    v12 = MEMORY[0x277CCC308];
    if (v60)
    {
      _HKInitializeLogging();
      v13 = *v12;
      v14 = *v12;
      if (v60 == v11)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Ignoring duplicate attempt to start query server %{public}@", buf, 0xCu);
        }

        [MEMORY[0x277CCA9B8] hk_assignError:&v68 code:3 description:@"Attempt to start a query with the same identifier."];
        v22 = 0;
        goto LABEL_29;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = queryUUID;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Replacing existing query server %{public}@ with a new instance", buf, 0xCu);
      }

      [(HDQueryManager *)self _lock_unregisterQueryServer:v60];
    }

    client = [v11 client];
    process = [client process];

    v54 = [(HDQueryManager *)self _monitoringIdentifierForProcess:process];
    if (!v54)
    {
      _HKInitializeLogging();
      v43 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v49 = v43;
        v50 = objc_opt_class();
        v51 = v50;
        name = [process name];
        processIdentifier = [process processIdentifier];
        *buf = 138544130;
        *&buf[4] = v50;
        *&buf[12] = 2114;
        *&buf[14] = queryUUID;
        *&buf[22] = 2112;
        v70 = name;
        LOWORD(v71) = 1024;
        *(&v71 + 2) = processIdentifier;
        _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "Ignoring attempt to start query server of class %{public}@ for UUID %{public}@: process %@ (%d) has no bundle identifier", buf, 0x26u);
      }

      [MEMORY[0x277CCA9B8] hk_assignError:&v68 code:3 description:@"Missing process bundle identifier"];
      v22 = 0;
      goto LABEL_25;
    }

    v16 = v11;
    v17 = v54;
    os_unfair_lock_assert_owner(&self->_lock);
    _HKInitializeLogging();
    v18 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_debug_impl(&dword_228986000, v18, OS_LOG_TYPE_DEBUG, "Registering query server %{public}@", buf, 0xCu);
    }

    queryServersByUUID = self->_queryServersByUUID;
    queryUUID2 = [v16 queryUUID];
    [(NSMutableDictionary *)queryServersByUUID setObject:v16 forKey:queryUUID2];

    v21 = [(HDQueryManager *)self _lock_queryCollectionForBundleIdentifier:v17 createIfNecessary:1];
    v22 = v21;
    if (!v21 || ![*(v21 + 8) count])
    {
      daemon2 = [(HDQueryManager *)self daemon];
      processStateManager = [daemon2 processStateManager];

      [processStateManager registerObserver:self forBundleIdentifier:v17];
      v26 = -[HDQueryServerClientState initWithApplicationState:]([HDQueryServerClientState alloc], "initWithApplicationState:", [processStateManager applicationStateForBundleIdentifier:v17]);
      if (!v22)
      {
LABEL_16:

        v28 = v16;
        clientState = [v28 clientState];
        isBackgroundRunning = [clientState isBackgroundRunning];

        if ((isBackgroundRunning & 1) == 0)
        {
          v74[0] = @"queryType";
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = v32;
          v74[1] = @"queryId";
          queryUUID3 = [v28 queryUUID];
          uUIDString = [queryUUID3 UUIDString];
          *&buf[8] = uUIDString;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v74 count:2];
          v36 = [v35 mutableCopy];

          sampleType = [v28 sampleType];
          v38 = sampleType;
          if (sampleType)
          {
            v39 = [sampleType description];
            [v36 setObject:v39 forKeyedSubscript:@"dataType"];
          }

          v40 = kHDEventNameQuery;
          client2 = [v28 client];
          HDPowerLogForClient(v40, client2, v36);
        }

LABEL_25:
LABEL_29:

        v44 = v68;
        if (v22)
        {
          v45 = *(v22 + 40);
          v46 = *(v22 + 24);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __52__HDQueryManager__lock_startQueryServer_completion___block_invoke_2;
          v70 = &unk_278616D18;
          v71 = v11;
          v47 = v56;
          v72 = v45;
          v73 = v47;
          v48 = v45;
          dispatch_async(v46, buf);
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __52__HDQueryManager__lock_startQueryServer_completion___block_invoke;
          v70 = &unk_278614008;
          v72 = v56;
          v71 = v44;
          HKDispatchAsyncOnGlobalConcurrentQueue();

          v48 = v72;
        }

        goto LABEL_33;
      }

      objc_setProperty_nonatomic_copy(v22, v25, v26, 40);
    }

    v27 = *(v22 + 8);
    v26 = v16;
    processStateManager = [(HDQueryServerClientState *)v26 queryUUID];
    [v27 setObject:v26 forKeyedSubscript:processStateManager];
    goto LABEL_16;
  }

  v42 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"nil query server"];
  (*(v61 + 2))(v61, 0, v42);

LABEL_34:
}

uint64_t __46__HDQueryManager_startQueryServer_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __46__HDQueryManager_startQueryServer_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v3;
    os_unfair_lock_lock(WeakRetained + 2);
    [(HDQueryManager *)WeakRetained _lock_unregisterQueryServer:v4];

    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void __52__HDQueryManager__lock_startQueryServer_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 prepareToActivateServerWithError:&v8];
  v4 = v8;
  v5 = v4;
  v6 = *(a1 + 48);
  if (v3)
  {
    (*(v6 + 16))(*(a1 + 48), 1, 0);
  }

  else if (v4)
  {
    (*(v6 + 16))(*(a1 + 48), 0, v4);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to start query with unknown error"];
    (*(v6 + 16))(v6, 0, v7);
  }

  [*(a1 + 32) activateServerWithClientState:*(a1 + 40) error:v5];
}

- (void)scheduleDatabaseAccessForQueryServer:(id)server block:(id)block
{
  blockCopy = block;
  serverCopy = server;
  os_unfair_lock_lock(&self->_lock);
  v8 = [_HDQueryDatabaseAccessBlock alloc];
  v9 = blockCopy;
  v10 = serverCopy;
  if (v8 && (v27.receiver = v8, v27.super_class = _HDQueryDatabaseAccessBlock, (v11 = [(HDQueryManager *)&v27 init]) != 0))
  {
    v26 = v11;
    *&v11->_executingDatabaseAccessBlocks = CFAbsoluteTimeGetCurrent();
    v12 = objc_msgSend_copy(v9);
    v13 = *&v26->_lock._os_unfair_lock_opaque;
    *&v26->_lock._os_unfair_lock_opaque = v12;

    objc_storeWeak(&v26->_queryServersByUUID, v10);
    client = [v10 client];
    process = [client process];
    bundleIdentifier = [process bundleIdentifier];
    v17 = objc_msgSend_copy(bundleIdentifier);
    queryCollectionsByProcessBundleIdentifier = v26->_queryCollectionsByProcessBundleIdentifier;
    v26->_queryCollectionsByProcessBundleIdentifier = v17;

    configuration = [v10 configuration];
    v26->_pendingDatabaseAccessBlocks = [configuration qualityOfService];
  }

  else
  {
    v26 = 0;
  }

  pendingDatabaseAccessBlocks = self->_pendingDatabaseAccessBlocks;
  if (!pendingDatabaseAccessBlocks)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = self->_pendingDatabaseAccessBlocks;
    self->_pendingDatabaseAccessBlocks = v21;

    pendingDatabaseAccessBlocks = self->_pendingDatabaseAccessBlocks;
  }

  [(NSMutableArray *)pendingDatabaseAccessBlocks addObject:v26];
  unitTest_suspendCount = self->_unitTest_suspendCount;
  v24 = unitTest_suspendCount < 1;
  v25 = unitTest_suspendCount - 1;
  if (!v24)
  {
    self->_unitTest_suspendCount = v25;
  }

  [(HDQueryManager *)self _lock_executeDatabaseAccessBlocks];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_executeDatabaseAccessBlocks
{
  if (!self)
  {
    return;
  }

  selfCopy = self;
  os_unfair_lock_assert_owner(self + 2);
  if (*&selfCopy[14]._os_unfair_lock_opaque > 0 || [*&selfCopy[10]._os_unfair_lock_opaque count] > 2)
  {
    return;
  }

  v42 = v54;
  v43 = v48;
  do
  {
    os_unfair_lock_assert_owner(selfCopy + 2);
    v2 = [*&selfCopy[8]._os_unfair_lock_opaque count];
    if (!v2)
    {
      return;
    }

    v3 = v2;
    os_unfair_lock_assert_owner(selfCopy + 2);
    allValues = [*&selfCopy[6]._os_unfair_lock_opaque allValues];
    v45 = [allValues hk_mapToSet:&__block_literal_global_30];

    if (v3 < 1)
    {
LABEL_67:

      return;
    }

    v5 = 0;
    v6 = v3 + 1;
    v7 = -1;
    do
    {
      v8 = [*&selfCopy[8]._os_unfair_lock_opaque objectAtIndexedSubscript:v6 - 2];
      v9 = v8;
      if (!v8)
      {
        v11 = 0;
LABEL_11:
        [*&selfCopy[8]._os_unfair_lock_opaque removeObjectAtIndex:v6 - 2];
        v7 -= v5 != 0;
        goto LABEL_52;
      }

      WeakRetained = objc_loadWeakRetained((v8 + 16));
      v11 = WeakRetained;
      if (!WeakRetained || [WeakRetained _shouldStopProcessingQuery])
      {
        goto LABEL_11;
      }

      v12 = v9;
      v13 = v12;
      v14 = v12[4] + 1;
      v15 = v14 > 0x22;
      v16 = (1 << v14) & 0x404000001;
      v17 = v15 || v16 == 0;
      if (v17 && *&selfCopy[12]._os_unfair_lock_opaque >= 1)
      {

        goto LABEL_52;
      }

      if (!v5)
      {
        goto LABEL_20;
      }

      v44 = v7;
      v18 = selfCopy;
      v19 = v5;
      v20 = v13;
      v21 = v45;
      v22 = [v21 containsObject:v19[3]];
      v46 = v20;
      v23 = *(v20 + 3);
      v5 = v19;
      selfCopy = v18;
      v24 = [v21 containsObject:v23];
      if ((v22 & 1) == 0 && v24)
      {
LABEL_19:

LABEL_20:
        v25 = v13;

        v5 = v25;
        v7 = v6 - 2;
        goto LABEL_52;
      }

      if (v24 & 1 | ((v22 & 1) == 0))
      {
        v26 = *(v5 + 4);
        if (v26 <= 16)
        {
          if (v26 == -1)
          {
            v27 = 3;
          }

          else
          {
            if (v26 != 9)
            {
              goto LABEL_35;
            }

            v27 = 1;
          }
        }

        else
        {
          switch(v26)
          {
            case 17:
              v27 = 2;
              break;
            case 33:
              v27 = 5;
              break;
            case 25:
              v27 = 4;
              break;
            default:
LABEL_35:
              v27 = 0;
              break;
          }
        }

        v28 = v13[4];
        if (v28 <= 16)
        {
          if (v28 == -1)
          {
            v29 = 3;
            goto LABEL_48;
          }

          if (v28 == 9)
          {
            v29 = 1;
            goto LABEL_48;
          }
        }

        else
        {
          switch(v28)
          {
            case 17:
              v29 = 2;
              goto LABEL_48;
            case 33:
              v29 = 5;
              goto LABEL_48;
            case 25:
              v29 = 4;
LABEL_48:
              if (v27 < v29 || v27 <= v29 && *(v5 + 5) > v46[5])
              {
                goto LABEL_19;
              }

              goto LABEL_51;
          }
        }

        v29 = 0;
        goto LABEL_48;
      }

LABEL_51:

      v7 = v44;
LABEL_52:

      --v6;
    }

    while (v6 > 1);
    if (!v5)
    {
      goto LABEL_67;
    }

    [*&selfCopy[8]._os_unfair_lock_opaque removeObjectAtIndex:v7];

    v30 = objc_loadWeakRetained(v5 + 2);
    profile = [v30 profile];
    v32 = profile;
    if (v30 && profile && ([v30 _shouldStopProcessingQuery] & 1) == 0)
    {
      v33 = v5;
      os_unfair_lock_assert_owner(selfCopy + 2);
      v34 = *&selfCopy[10]._os_unfair_lock_opaque;
      if (!v34)
      {
        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v36 = *&selfCopy[10]._os_unfair_lock_opaque;
        *&selfCopy[10]._os_unfair_lock_opaque = v35;

        v34 = *&selfCopy[10]._os_unfair_lock_opaque;
      }

      [v34 addObject:v33];
      v37 = v33[4] + 1;
      if (v37 > 0x22 || ((1 << v37) & 0x404000001) == 0)
      {
        ++*&selfCopy[12]._os_unfair_lock_opaque;
      }

      v38 = objc_loadWeakRetained(v5 + 2);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v54[0] = __55__HDQueryManager__lock_willExecuteDatabaseAccessBlock___block_invoke;
      v54[1] = &unk_278616D90;
      v54[2] = selfCopy;
      v55 = v38;
      v39 = v38;
      [(HDQueryManager *)selfCopy _performAsyncWithUnitTestDelegate:v53];

      database = [v32 database];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v48[0] = __51__HDQueryManager__lock_executeDatabaseAccessBlocks__block_invoke;
      v48[1] = &unk_278616D68;
      v49 = v30;
      v50 = v33;
      v51 = database;
      v52 = selfCopy;
      v41 = database;
      [v41 performAsynchronously:v47];
    }
  }

  while ([*&selfCopy[10]._os_unfair_lock_opaque count] < 3);
}

void __51__HDQueryManager__lock_executeDatabaseAccessBlocks__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCC308];
  v3 = _HKLogSignpostIDGenerate();
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) activationTime];
  v6 = v5;
  v7 = CFAbsoluteTimeGetCurrent();
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 40);
  }

  else
  {
    v9 = 0.0;
  }

  _HKInitializeLogging();
  v10 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = Current - v6;
    *&buf[22] = 2048;
    v29 = v7 - v9;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Total activation delay: %.3fs, database access delay: %.3fs", buf, 0x20u);
  }

  _HKInitializeLogging();
  v12 = *v2;
  if (os_signpost_enabled(*v2))
  {
    v13 = v12;
    v14 = v13;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v15;
      _os_signpost_emit_with_name_impl(&dword_228986000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v3, "query-run", "server=%{public}@", buf, 0xCu);
    }
  }

  v16 = *(a1 + 48);
  v17 = [*(a1 + 32) createDatabaseTransactionContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__HDQueryManager__lock_executeDatabaseAccessBlocks__block_invoke_314;
  v26[3] = &unk_278616D40;
  v27 = *(a1 + 40);
  [v16 performWithTransactionContext:v17 error:0 block:v26];

  _HKInitializeLogging();
  v18 = *v2;
  if (os_signpost_enabled(*v2))
  {
    v19 = v18;
    v20 = v19;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_228986000, v20, OS_SIGNPOST_INTERVAL_END, v3, "query-run", "", buf, 2u);
    }
  }

  v21 = *(a1 + 56);
  v22 = *(a1 + 40);
  if (v21)
  {
    os_unfair_lock_lock((v21 + 8));
    [*(v21 + 40) removeObject:v22];
    if (v22)
    {
      v23 = *(v22 + 4) + 1;
      if (v23 > 0x22 || ((1 << v23) & 0x404000001) == 0)
      {
        --*(v21 + 48);
      }

      WeakRetained = objc_loadWeakRetained(v22 + 2);
    }

    else
    {
      WeakRetained = 0;
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __49__HDQueryManager__didExecuteDatabaseAccessBlock___block_invoke;
    v29 = COERCE_DOUBLE(&unk_278616D90);
    v30 = v21;
    v31 = WeakRetained;
    v25 = WeakRetained;
    [(HDQueryManager *)v21 _performAsyncWithUnitTestDelegate:buf];
    [(HDQueryManager *)v21 _lock_executeDatabaseAccessBlocks];
    os_unfair_lock_unlock((v21 + 8));
  }
}

uint64_t __51__HDQueryManager__lock_executeDatabaseAccessBlocks__block_invoke_314(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  (*(v2 + 16))();
  return 1;
}

- (void)_performAsyncWithUnitTestDelegate:(void *)delegate
{
  v3 = a2;
  unitTest_delegate = [delegate unitTest_delegate];
  if (unitTest_delegate)
  {
    unitTest_delegateQueue = [delegate unitTest_delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__HDQueryManager__performAsyncWithUnitTestDelegate___block_invoke;
    v6[3] = &unk_278614008;
    v8 = v3;
    v7 = unitTest_delegate;
    dispatch_async(unitTest_delegateQueue, v6);
  }
}

- (void)_lock_unregisterQueryServer:(uint64_t)server
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_assert_owner((server + 8));
  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC308];
  v5 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    v18 = 138543362;
    v19 = v3;
    _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "Unregistering query server %{public}@", &v18, 0xCu);
  }

  queryUUID = [v3 queryUUID];
  v7 = [*(server + 16) objectForKeyedSubscript:queryUUID];

  if (v7 == v3)
  {
    client = [v3 client];
    process = [client process];
    v11 = [(HDQueryManager *)server _monitoringIdentifierForProcess:process];

    if (v11)
    {
      v12 = [(HDQueryManager *)server _lock_queryCollectionForBundleIdentifier:v11 createIfNecessary:0];
      v13 = v12;
      if (!v12 || (v14 = *(v12 + 8), [v3 queryUUID], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "removeObjectForKey:", v15), v15, !objc_msgSend(v13[1], "count")))
      {
        daemon = [server daemon];
        processStateManager = [daemon processStateManager];
        [processStateManager unregisterObserver:server forBundleIdentifier:v11];

        [*(server + 24) removeObjectForKey:v11];
      }
    }

    [*(server + 16) removeObjectForKey:queryUUID];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = queryUUID;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to unregister untracked query server for %{public}@ ", &v18, 0xCu);
    }
  }
}

- (id)_monitoringIdentifierForProcess:(uint64_t)process
{
  v3 = a2;
  bundleIdentifier = [v3 bundleIdentifier];
  WeakRetained = objc_loadWeakRetained((process + 64));
  behavior = [WeakRetained behavior];
  if (([behavior isAppleWatch] & 1) != 0 && (objc_msgSend(v3, "applicationIdentifier"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    isWidgetKitExtension = [v3 isWidgetKitExtension];

    if (isWidgetKitExtension)
    {
      goto LABEL_7;
    }

    [v3 applicationIdentifier];
    bundleIdentifier = WeakRetained = bundleIdentifier;
  }

  else
  {
  }

LABEL_7:

  return bundleIdentifier;
}

- (_HDProcessQueryCollection)_lock_queryCollectionForBundleIdentifier:(int)identifier createIfNecessary:
{
  v5 = a2;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v6 = [*(self + 24) objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = identifier == 0;
    }

    if (!v7)
    {
      v6 = [_HDProcessQueryCollection alloc];
      v8 = v5;
      if (v6)
      {
        v18.receiver = v6;
        v18.super_class = _HDProcessQueryCollection;
        v6 = objc_msgSendSuper2(&v18, sel_init);
        if (v6)
        {
          v9 = HKCreateSerialDispatchQueue();
          queue = v6->_queue;
          v6->_queue = v9;

          v11 = objc_msgSend_copy(v8);
          processBundleIdentifier = v6->_processBundleIdentifier;
          v6->_processBundleIdentifier = v11;

          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          queryServersByUUID = v6->_queryServersByUUID;
          v6->_queryServersByUUID = v13;

          v15 = [[HDQueryServerClientState alloc] initWithApplicationState:0];
          clientState = v6->_clientState;
          v6->_clientState = v15;
        }
      }

      [*(self + 24) setObject:v6 forKeyedSubscript:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __51__HDQueryManager__lock_foregroundBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 isForeground])
  {
    if (v3)
    {
      v6 = v3[4];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)foregroundAnchoredObjectQueryBundleIdentifiersForType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_queryCollectionsByProcessBundleIdentifier allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HDQueryManager_foregroundAnchoredObjectQueryBundleIdentifiersForType___block_invoke;
  v9[3] = &unk_278616DD8;
  v10 = typeCopy;
  v6 = typeCopy;
  v7 = [allValues hk_mapToSet:v9];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

id __72__HDQueryManager_foregroundAnchoredObjectQueryBundleIdentifiersForType___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(_HDProcessQueryCollection *)v3 queryServers];
  v5 = [v4 count];

  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(_HDProcessQueryCollection *)v3 queryServers];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 objectTypes];
            v12 = [v11 containsObject:*(a1 + 32)];

            if (v12)
            {
              LODWORD(v7) = 1;
              goto LABEL_14;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (v3)
    {
      v14 = v3[5];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    if ((v7 & [v15 isForeground]) == 1)
    {
      if (v3)
      {
        v16 = v3[4];
      }

      else
      {
        v16 = 0;
      }

      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)processWithBundleIdentifier:(id)identifier didTransitionFromState:(unsigned int)state toState:(unsigned int)toState
{
  v5 = *&toState;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(HDQueryManager *)self _lock_queryCollectionForBundleIdentifier:identifierCopy createIfNecessary:0];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    behavior = [WeakRetained behavior];
    isAppleWatch = [behavior isAppleWatch];
    if (v5 == 4 && (isAppleWatch & 1) != 0)
    {
      daemon = [(HDQueryManager *)self daemon];
      processStateManager = [daemon processStateManager];
      v13 = [processStateManager isApplicationInExtendedRuntimeSessionForBundleIdentifier:identifierCopy];

      v5 = (v13 & 1) != 0 ? 8 : 4;
    }

    else
    {
    }

    if ([v7[5] applicationState] != v5)
    {
      v14 = [[HDQueryServerClientState alloc] initWithApplicationState:v5];
      objc_setProperty_nonatomic_copy(v7, v15, v14, 40);

      v16 = v7;
      if (self)
      {
        os_unfair_lock_assert_owner(&self->_lock);
        v17 = v16[4];
        queryServers = [(_HDProcessQueryCollection *)v16 queryServers];
        v19 = objc_msgSend_copy(queryServers);

        v20 = v7[5];
        v21 = v16[3];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__HDQueryManager__lock_handleClientStateChangeWithQueryCollection___block_invoke;
        block[3] = &unk_278616D68;
        v27 = v16;
        v28 = v17;
        v29 = v19;
        v30 = v20;
        v22 = v20;
        v23 = v19;
        v24 = v17;
        dispatch_async(v21, block);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __67__HDQueryManager__lock_handleClientStateChangeWithQueryCollection___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __67__HDQueryManager__lock_handleClientStateChangeWithQueryCollection___block_invoke_2;
  v28[3] = &unk_278613920;
  v2 = *(a1 + 32);
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  v3 = v28;
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 24));
    [(_HDProcessQueryCollection *)v2 queue_cancelStateChangeTimer];
    v4 = dispatch_get_global_queue(21, 0);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    v6 = *(v2 + 16);
    *(v2 + 16) = v5;

    v7 = *(v2 + 16);
    v8 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    v9 = *(v2 + 16);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77___HDProcessQueryCollection_queue_startStateChangeTimerWithInterval_handler___block_invoke;
    handler[3] = &unk_278613658;
    v32 = v3;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(v2 + 16));
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(a1 + 48);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14++) clientStateWillChange:*(a1 + 56)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(a1 + 48);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19++) clientStateDidChange:{*(a1 + 56), v20}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v17);
  }

  [(_HDProcessQueryCollection *)*(a1 + 32) queue_cancelStateChangeTimer];
}

void __67__HDQueryManager__lock_handleClientStateChangeWithQueryCollection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_FAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = [v3 count];
    _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to finish client state transition in time for process %@ (%lu queries)", &v6, 0x16u);
  }
}

- (id)diagnosticDescription
{
  v63 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_msgSend_copy(self->_executingDatabaseAccessBlocks);
  v4 = objc_msgSend_copy(self->_pendingDatabaseAccessBlocks);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  queryCollectionsByProcessBundleIdentifier = self->_queryCollectionsByProcessBundleIdentifier;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __39__HDQueryManager_diagnosticDescription__block_invoke;
  v60[3] = &unk_278616E00;
  v43 = v5;
  v61 = v43;
  [(NSMutableDictionary *)queryCollectionsByProcessBundleIdentifier enumerateKeysAndObjectsUsingBlock:v60];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = self->_queryCollectionsByProcessBundleIdentifier;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __39__HDQueryManager_diagnosticDescription__block_invoke_2;
  v58[3] = &unk_278616E00;
  v42 = v7;
  v59 = v42;
  [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v58];
  os_unfair_lock_unlock(&self->_lock);
  v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ (%ld active queries)", objc_opt_class(), -[NSMutableDictionary count](self->_queryServersByUUID, "count")];
  [v9 appendFormat:@"\nQuery blocks pending:%lu", objc_msgSend(v4, "count")];
  v44 = v4;
  v45 = v3;
  v47 = v9;
  if ([v4 count])
  {
    if ([v4 count])
    {
      v10 = 0;
      do
      {
        v11 = [v4 objectAtIndexedSubscript:v10];
        v12 = v11;
        if (v11 && (WeakRetained = objc_loadWeakRetained((v11 + 16))) != 0)
        {
          v14 = WeakRetained;
          v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v12[5]];
          v49 = objc_opt_class();
          queryUUID = [v14 queryUUID];
          uUIDString = [queryUUID UUIDString];
          client = [v14 client];
          process = [client process];
          bundleIdentifier = [process bundleIdentifier];
          v21 = HKDiagnosticStringFromDate();
          [v47 appendFormat:@"\n%@ %@ %@ created %@", v49, uUIDString, bundleIdentifier, v21];

          v9 = v47;
          v4 = v44;
          v3 = v45;
        }

        else
        {
          [v9 appendString:@"\n<invalidated query>"];
        }

        ++v10;
        v22 = [v4 count];
        v23 = 5;
        if (v22 < 5)
        {
          v23 = v22;
        }
      }

      while (v10 < v23);
    }

    if ([v4 count] > 5)
    {
      [v9 appendFormat:@"\n%lu additional blocks not shown", objc_msgSend(v4, "count") - 5];
    }
  }

  if ([v3 count])
  {
    [v9 appendFormat:@"\nQuery blocks executing:"];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v3;
    v50 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v50)
    {
      v48 = *v55;
      do
      {
        v24 = 0;
        do
        {
          if (*v55 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v54 + 1) + 8 * v24);
          if (v25 && (v26 = objc_loadWeakRetained((v25 + 16))) != 0)
          {
            v27 = v26;
            v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v25 + 40)];
            v29 = objc_opt_class();
            queryUUID2 = [v27 queryUUID];
            uUIDString2 = [queryUUID2 UUIDString];
            client2 = [v27 client];
            process2 = [client2 process];
            bundleIdentifier2 = [process2 bundleIdentifier];
            v35 = HKDiagnosticStringFromDate();
            v41 = v29;
            v9 = v47;
            [v47 appendFormat:@"\n%@ %@ %@ created %@", v41, uUIDString2, bundleIdentifier2, v35];
          }

          else
          {
            [v9 appendString:@"\n<invalidated query>"];
          }

          ++v24;
        }

        while (v50 != v24);
        v50 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v50);
    }

    v4 = v44;
    v3 = v45;
  }

  else
  {
    [v9 appendFormat:@"\nQuery blocks executing:%lu", objc_msgSend(v3, "count")];
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __39__HDQueryManager_diagnosticDescription__block_invoke_3;
  v51[3] = &unk_278616E48;
  v36 = v9;
  v52 = v36;
  v53 = v42;
  v37 = v42;
  [v43 enumerateKeysAndObjectsUsingBlock:v51];
  v38 = v53;
  v39 = v36;

  return v36;
}

void __39__HDQueryManager_diagnosticDescription__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = [(_HDProcessQueryCollection *)a3 queryServers];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

uint64_t __39__HDQueryManager_diagnosticDescription__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    a3 = *(a3 + 40);
  }

  return [*(a1 + 32) setObject:a3 forKeyedSubscript:a2];
}

void __39__HDQueryManager_diagnosticDescription__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) appendFormat:@"\n\nProcess: %@", v5];
  v7 = [v6 hk_mapToSet:&__block_literal_global_366_0];
  if ([v7 count])
  {
    v8 = *(a1 + 32);
    v9 = [v7 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    [v8 appendFormat:@" (%@)", v10];
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v22 = v5;
  if ([v11 isSuspended])
  {
    v12 = *(a1 + 32);
    v13 = @" - suspended";
  }

  else
  {
    v14 = [v11 isForeground];
    v12 = *(a1 + 32);
    if (v14)
    {
      v13 = @" - foreground";
    }

    else
    {
      v13 = @" - background";
    }
  }

  [v12 appendFormat:v13];
  [*(a1 + 32) appendFormat:@" (%lu queries)", objc_msgSend(v6, "count")];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(a1 + 32);
        v21 = [*(*(&v23 + 1) + 8 * v19) diagnosticDescription];
        [v20 appendFormat:@"\n%@", v21, v22, v23];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

id __39__HDQueryManager_diagnosticDescription__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 client];
  v4 = [v3 process];
  v5 = [v2 numberWithInt:{objc_msgSend(v4, "processIdentifier")}];

  return v5;
}

- (void)logDiagnostics
{
  v18 = *MEMORY[0x277D85DE8];
  diagnosticDescription = [(HDQueryManager *)self diagnosticDescription];
  v3 = [diagnosticDescription componentsSeparatedByString:@"\n"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = MEMORY[0x277CCC308];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        _HKInitializeLogging();
        v10 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)unitTest_suspendWithCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_unitTest_suspendCount)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQueryManager.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"_unitTest_suspendCount == 0"}];
  }

  self->_unitTest_suspendCount = count;

  os_unfair_lock_unlock(&self->_lock);
}

- (HDQueryManagerUnitTestDelegate)unitTest_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_delegate);

  return WeakRetained;
}

@end