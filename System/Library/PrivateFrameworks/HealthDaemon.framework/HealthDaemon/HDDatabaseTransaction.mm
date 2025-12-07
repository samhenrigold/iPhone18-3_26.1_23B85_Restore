@interface HDDatabaseTransaction
- (BOOL)performWithContext:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler;
- (HDDatabase)database;
- (HDDatabaseTransaction)initWithDatabase:(id)database provider:(id)provider rootContext:(id)context;
- (id)databaseForEntity:(id)entity;
- (id)databaseForEntityClass:(Class)class;
- (id)databaseForEntityProtectionClass:(int64_t)class;
- (uint64_t)_resolveCacheScope:(uint64_t)result;
- (void)dealloc;
- (void)onCommit:(id)commit orRollback:(id)rollback;
- (void)requestTransactionInterruption;
- (void)requireRollback;
- (void)transactionDidEndWithError:(id)error;
@end

@implementation HDDatabaseTransaction

- (void)dealloc
{
  if (self->_isActive)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:45 description:@"HDDatabaseTransaction dealloc'd while active."];
  }

  v5.receiver = self;
  v5.super_class = HDDatabaseTransaction;
  [(HDDatabaseTransaction *)&v5 dealloc];
}

- (HDDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (HDDatabaseTransaction)initWithDatabase:(id)database provider:(id)provider rootContext:(id)context
{
  databaseCopy = database;
  providerCopy = provider;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"rootContext != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDDatabaseTransaction;
  v12 = [(HDDatabaseTransaction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_database, databaseCopy);
    objc_storeWeak(&v13->_databaseProvider, providerCopy);
    v14 = objc_msgSend_copy(contextCopy);
    rootContext = v13->_rootContext;
    v13->_rootContext = v14;
  }

  return v13;
}

- (id)databaseForEntityProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    v4 = 56;
  }

  else
  {
    if (class != 2)
    {
      goto LABEL_6;
    }

    v4 = 64;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (id)databaseForEntity:(id)entity
{
  protectionClass = [objc_opt_class() protectionClass];

  return [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:protectionClass];
}

- (id)databaseForEntityClass:(Class)class
{
  protectionClass = [(objc_class *)class protectionClass];

  return [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:protectionClass];
}

- (uint64_t)_resolveCacheScope:(uint64_t)result
{
  if (result)
  {
    if (a2 == 2)
    {
      return 0;
    }

    else if (a2)
    {
      return 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((result + 8));
      configuration = [WeakRetained configuration];
      behavior = [configuration behavior];
      features = [behavior features];
      databaseStateCacheTransactionScoped = [features databaseStateCacheTransactionScoped];

      return databaseStateCacheTransactionScoped;
    }
  }

  return result;
}

- (BOOL)performWithContext:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler
{
  v187 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  blockCopy = block;
  handlerCopy = handler;
  requiresProtectedData = [contextCopy requiresProtectedData];
  v154 = contextCopy;
  requiresWrite = [contextCopy requiresWrite];
  if (self->_performingMigration)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:107 description:@"Cannot peform a database transaction inside a database migration transaction"];
LABEL_7:
    v14 = 0;
    goto LABEL_120;
  }

  log = error;
  if (self->_isOutermostTransactionUnprotected & requiresProtectedData)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Cannot promote an unprotected transaction to a protected transaction", buf, 2u);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:107 description:@"Cannot promote an unprotected transaction to a protected transaction"];
    goto LABEL_7;
  }

  isActive = self->_isActive;
  if (self->_isActive)
  {
    spid = 0;
    v15 = 0.0;
  }

  else
  {
    self->_isActive = 1;
    self->_isOutermostTransactionUnprotected = requiresProtectedData ^ 1;
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained(&self->_database);
    configuration = [WeakRetained configuration];
    behavior = [configuration behavior];
    features = [behavior features];
    databaseSemaphoreLogging = [features databaseSemaphoreLogging];

    if (databaseSemaphoreLogging)
    {
      v22 = _HKLogSignpostIDGenerate();
      v23 = objc_loadWeakRetained(&self->_database);
      configuration2 = [v23 configuration];
      behavior2 = [configuration2 behavior];
      features2 = [behavior2 features];
      databaseSemaphoreLogging2 = [features2 databaseSemaphoreLogging];

      if (databaseSemaphoreLogging2)
      {
        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC2A0];
        if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
        {
          v29 = v28;
          v30 = v29;
          if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            currentThread = [MEMORY[0x277CCACC8] currentThread];
            [MEMORY[0x277CCACC8] threadPriority];
            v33 = v32;
            highPriority = [v154 highPriority];
            requiresWrite2 = [v154 requiresWrite];
            if (highPriority)
            {
              v36 = "high";
            }

            else
            {
              v36 = "default";
            }

            if (requiresWrite2)
            {
              v37 = "W";
            }

            else
            {
              v37 = "O";
            }

            *buf = 138413314;
            v170 = currentThread;
            v171 = 2048;
            v172 = v33;
            v173 = 2080;
            v174 = v36;
            v175 = 2080;
            v176 = v37;
            v177 = 2080;
            *v178 = dispatch_queue_get_label(0);
            _os_signpost_emit_with_name_impl(&dword_228986000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v22, "hddatabase-semaphore", "thread: %@, priority: %f (%s), R%s, queue: %s", buf, 0x34u);
          }
        }
      }

      spid = v22;
    }

    else
    {
      spid = 0;
    }

    v15 = Current;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke;
  aBlock[3] = &unk_278618968;
  v168 = handlerCopy;
  handlerCopy = _Block_copy(aBlock);
  if (!requiresProtectedData || self->_protectedDatabase)
  {
    v146 = 0;
    goto LABEL_29;
  }

  if (self->_unprotectedDatabase)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_unprotectedDatabase == nil"}];
  }

  v67 = objc_loadWeakRetained(&self->_databaseProvider);
  v166 = 0;
  v68 = [v67 checkOutProtectedDatabase:self error:&v166];
  v69 = v166;
  protectedDatabase = self->_protectedDatabase;
  self->_protectedDatabase = v68;

  v71 = self->_protectedDatabase == 0;
  v72 = objc_loadWeakRetained(&self->_database);
  v73 = v72;
  if (v71)
  {
    configuration3 = [v72 configuration];
    behavior3 = [configuration3 behavior];
    features3 = [behavior3 features];
    databaseSemaphoreLogging3 = [features3 databaseSemaphoreLogging];

    if (databaseSemaphoreLogging3)
    {
      _HKInitializeLogging();
      v105 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v106 = v105;
        v107 = v106;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v106))
        {
          localizedDescription = [v69 localizedDescription];
          *buf = 138412290;
          v170 = localizedDescription;
          _os_signpost_emit_with_name_impl(&dword_228986000, v107, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout ProtectedDatabase: %@", buf, 0xCu);
        }
      }
    }

    v14 = (handlerCopy[2].super.isa)(handlerCopy, v69, log);
    goto LABEL_101;
  }

  configuration4 = [v72 configuration];
  behavior4 = [configuration4 behavior];
  features4 = [behavior4 features];
  databaseSemaphoreLogging4 = [features4 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging4)
  {
    _HKInitializeLogging();
    v78 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v79 = v78;
      v80 = v79;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v80, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "checked out ProtectedDatabase", buf, 2u);
      }
    }
  }

  v81 = objc_loadWeakRetained(&self->_databaseProvider);
  v165 = v69;
  v82 = [v81 checkOutProtectedResources:self error:&v165];
  v83 = v165;

  protectedResources = self->_protectedResources;
  self->_protectedResources = v82;

  if (!self->_protectedResources)
  {
    v109 = objc_loadWeakRetained(&self->_databaseProvider);
    [v109 checkInDatabase:self->_protectedDatabase type:1 protectedResources:0];

    v110 = self->_protectedDatabase;
    self->_protectedDatabase = 0;

    v111 = objc_loadWeakRetained(&self->_database);
    configuration5 = [v111 configuration];
    behavior5 = [configuration5 behavior];
    features5 = [behavior5 features];
    databaseSemaphoreLogging5 = [features5 databaseSemaphoreLogging];

    if (databaseSemaphoreLogging5)
    {
      _HKInitializeLogging();
      v116 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v117 = v116;
        v118 = v117;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
        {
          localizedDescription2 = [v83 localizedDescription];
          *buf = 138412290;
          v170 = localizedDescription2;
          _os_signpost_emit_with_name_impl(&dword_228986000, v118, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout ProtectedResources: %@", buf, 0xCu);
        }
      }
    }

    v14 = (handlerCopy[2].super.isa)(handlerCopy, v83, log);
    v69 = v83;
LABEL_101:

    v56 = 0.0;
    v120 = v168;
LABEL_105:

    goto LABEL_106;
  }

  v85 = objc_loadWeakRetained(&self->_database);
  configuration6 = [v85 configuration];
  behavior6 = [configuration6 behavior];
  features6 = [behavior6 features];
  databaseSemaphoreLogging6 = [features6 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging6)
  {
    _HKInitializeLogging();
    v90 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v91 = v90;
      v92 = v91;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v92, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "checked out ProtectedResources", buf, 2u);
      }
    }
  }

  [(HDSQLiteDatabase *)self->_protectedDatabase setCacheScope:[(HDDatabaseTransaction *)self _resolveCacheScope:?]];
  [(HDSQLiteDatabase *)self->_protectedDatabase setTransactionInterruptRequested:0];

  v146 = 1;
LABEL_29:
  unprotectedDatabase = self->_unprotectedDatabase;
  if (!unprotectedDatabase)
  {
    v39 = objc_loadWeakRetained(&self->_databaseProvider);
    v164 = 0;
    v40 = [v39 checkOutUnprotectedDatabase:self error:&v164];
    v41 = v164;
    v42 = self->_unprotectedDatabase;
    self->_unprotectedDatabase = v40;

    LODWORD(v39) = self->_unprotectedDatabase == 0;
    v43 = objc_loadWeakRetained(&self->_database);
    v44 = v43;
    if (v39)
    {
      configuration7 = [v43 configuration];
      behavior7 = [configuration7 behavior];
      features7 = [behavior7 features];
      databaseSemaphoreLogging7 = [features7 databaseSemaphoreLogging];

      if (databaseSemaphoreLogging7)
      {
        _HKInitializeLogging();
        v97 = *MEMORY[0x277CCC2A0];
        if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
        {
          v98 = v97;
          v99 = v98;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
          {
            localizedDescription3 = [v41 localizedDescription];
            *buf = 138412290;
            v170 = localizedDescription3;
            _os_signpost_emit_with_name_impl(&dword_228986000, v99, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout UnprotectedDatabase: %@", buf, 0xCu);
          }
        }
      }

      v14 = (handlerCopy[2].super.isa)(handlerCopy, v41, log);

      v56 = 0.0;
LABEL_103:
      if ((v146 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    configuration8 = [v43 configuration];
    behavior8 = [configuration8 behavior];
    features8 = [behavior8 features];
    databaseSemaphoreLogging8 = [features8 databaseSemaphoreLogging];

    if (databaseSemaphoreLogging8)
    {
      _HKInitializeLogging();
      v49 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v50 = v49;
        v51 = v50;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_228986000, v51, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "checked out UnprotectedDatabase", buf, 2u);
        }
      }
    }

    [(HDSQLiteDatabase *)self->_unprotectedDatabase setCacheScope:[(HDDatabaseTransaction *)self _resolveCacheScope:?]];
    [(HDSQLiteDatabase *)self->_unprotectedDatabase setTransactionInterruptRequested:0];
  }

  if (isActive)
  {
    v52 = 0;
  }

  else
  {
    statistics = [(HDDatabaseTransactionContext *)self->_rootContext statistics];
    v52 = statistics != 0;
  }

  if (requiresProtectedData)
  {
    v54 = 2;
  }

  else
  {
    v54 = 1;
  }

  v55 = [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:v54];
  v56 = 0.0;
  v57 = 0.0;
  if (v52)
  {
    v57 = CFAbsoluteTimeGetCurrent();
  }

  v58 = isActive;
  if (!isActive)
  {
    v56 = CFAbsoluteTimeGetCurrent();
    v58 = 0;
  }

  v163 = 0;
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_322;
  v157[3] = &unk_27862EDB0;
  v159 = v54;
  v160 = requiresWrite;
  v157[4] = self;
  v162 = !v58;
  v161 = spid;
  v158 = blockCopy;
  v14 = [v55 performTransactionWithType:requiresWrite error:&v163 usingBlock:v157];
  v59 = v163;
  if (v52)
  {
    v60 = [[HDDatabaseTransactionStatistics alloc] _initWithStartTime:v57 endTime:CFAbsoluteTimeGetCurrent()];
    statistics2 = [(HDDatabaseTransactionContext *)self->_rootContext statistics];
    [statistics2 _addTransactionStatistics:v60];
  }

  if (v59)
  {
    v62 = 1;
  }

  else
  {
    v62 = v14;
  }

  if ((v62 & 1) == 0)
  {
    v59 = [MEMORY[0x277CCA9B8] hk_error:124 description:@"Transaction failure."];
  }

  if (v59)
  {
    v63 = *MEMORY[0x277CCC2A0];
    v64 = v59;
    v65 = v63;
    if (log)
    {
      v66 = v64;
      log->isa = v64;
    }

    else
    {
      _HKLogDroppedErrorWithReason();
    }
  }

  if (!unprotectedDatabase)
  {
    v122 = objc_loadWeakRetained(&self->_databaseProvider);
    [v122 checkInDatabase:self->_unprotectedDatabase type:0 protectedResources:0];

    v123 = self->_unprotectedDatabase;
    self->_unprotectedDatabase = 0;

    goto LABEL_103;
  }

  if (v146)
  {
LABEL_104:
    v124 = objc_loadWeakRetained(&self->_databaseProvider);
    [v124 checkInDatabase:self->_protectedDatabase type:1 protectedResources:self->_protectedResources];

    v125 = self->_protectedDatabase;
    self->_protectedDatabase = 0;

    v120 = self->_protectedResources;
    self->_protectedResources = 0;
    goto LABEL_105;
  }

LABEL_106:
  if (isActive)
  {
    goto LABEL_120;
  }

  v126 = v154;
  v127 = CFAbsoluteTimeGetCurrent() - v56;
  if (v56 - v15 > 5.0)
  {
    v128 = @"start";
    goto LABEL_112;
  }

  if (v56 > 0.0 && v127 > 5.0)
  {
    v128 = @"work";
LABEL_112:
    _HKInitializeLogging();
    v129 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      loga = v129;
      v130 = HKDiagnosticStringFromDuration();
      v150 = HKDiagnosticStringFromDuration();
      v131 = HKDiagnosticStringFromDuration();
      requiresWrite3 = [v126 requiresWrite];
      requiresProtectedData2 = [v126 requiresProtectedData];
      highPriority2 = [v126 highPriority];
      cacheScope = [v126 cacheScope];
      journalType = [v126 journalType];
      label = dispatch_queue_get_label(0);
      *buf = 138545666;
      v170 = v128;
      v171 = 2114;
      v172 = v130;
      v173 = 2114;
      v174 = v150;
      v175 = 2114;
      v176 = v131;
      v177 = 1024;
      *v178 = requiresWrite3;
      *&v178[4] = 1024;
      *&v178[6] = requiresProtectedData2;
      v179 = 1024;
      v180 = highPriority2;
      v181 = 2048;
      v182 = cacheScope;
      v183 = 2048;
      v184 = journalType;
      v185 = 2082;
      v186 = label;
      _os_log_impl(&dword_228986000, loga, OS_LOG_TYPE_DEFAULT, "Long database transaction %{public}@ duration: duration=%{public}@, wait=%{public}@, work=%{public}@, write=%{BOOL}d, protected=%{BOOL}d, priority=%{BOOL}d, cache=%ld, journal=%ld, queue=%{public}s", buf, 0x5Au);
    }
  }

  *&self->_isActive = 0;
  v137 = objc_loadWeakRetained(&self->_database);
  configuration9 = [v137 configuration];
  behavior9 = [configuration9 behavior];
  features9 = [behavior9 features];
  databaseSemaphoreLogging9 = [features9 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging9)
  {
    _HKInitializeLogging();
    v142 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v143 = v142;
      v144 = v143;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v144, OS_SIGNPOST_INTERVAL_END, spid, "hddatabase-semaphore", "", buf, 2u);
      }
    }
  }

LABEL_120:

  return v14 & 1;
}

uint64_t __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v5, a3);
  }

  else
  {
    v8 = v5;
    if (v8)
    {
      if (a3)
      {
        v9 = v8;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_322(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) == 2)
  {
    v5 = [*(a1 + 32) unprotectedDatabase];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_2;
    v12[3] = &unk_27862ED88;
    v15 = *(a1 + 72);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v14 = v6;
    v13 = v8;
    v9 = [v5 performTransactionWithType:v7 error:a3 usingBlock:v12];

    return v9;
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);

    return v11();
  }
}

uint64_t __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained configuration];
  v4 = [v3 behavior];
  v5 = [v4 features];
  if (![v5 databaseSemaphoreLogging])
  {

LABEL_8:
    goto LABEL_9;
  }

  v6 = *(a1 + 56);

  if (v6 == 1)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v8 = v7;
      WeakRetained = v8;
      v9 = *(a1 + 48);
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, WeakRetained, OS_SIGNPOST_EVENT, v9, "hddatabase-semaphore", "outermost transaction block start", buf, 2u);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = (*(*(a1 + 40) + 16))();
  v11 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v12 = [v11 configuration];
  v13 = [v12 behavior];
  v14 = [v13 features];
  if (![v14 databaseSemaphoreLogging])
  {

LABEL_16:
    return v10;
  }

  v15 = *(a1 + 56);

  if (v15 == 1)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v17 = v16;
      v11 = v17;
      v18 = *(a1 + 48);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *v20 = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v11, OS_SIGNPOST_EVENT, v18, "hddatabase-semaphore", "outermost transaction block complete", v20, 2u);
      }

      goto LABEL_16;
    }
  }

  return v10;
}

- (void)onCommit:(id)commit orRollback:(id)rollback
{
  commitCopy = commit;
  rollbackCopy = rollback;
  if (!self->_isActive)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:330 description:@"Must be in a transaction"];
  }

  if (commitCopy)
  {
    onCommitBlocks = self->_onCommitBlocks;
    if (!onCommitBlocks)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = self->_onCommitBlocks;
      self->_onCommitBlocks = v9;

      onCommitBlocks = self->_onCommitBlocks;
    }

    v11 = objc_msgSend_copy(commitCopy);
    v12 = _Block_copy(v11);
    [(NSMutableArray *)onCommitBlocks addObject:v12];
  }

  if (rollbackCopy)
  {
    onRollbackBlocks = self->_onRollbackBlocks;
    if (!onRollbackBlocks)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = self->_onRollbackBlocks;
      self->_onRollbackBlocks = v14;

      onRollbackBlocks = self->_onRollbackBlocks;
    }

    v16 = objc_msgSend_copy(rollbackCopy);
    v17 = _Block_copy(v16);
    [(NSMutableArray *)onRollbackBlocks addObject:v17];
  }
}

- (void)transactionDidEndWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_isActive)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"!_isActive"}];
  }

  if (errorCopy)
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v6 = self->_onRollbackBlocks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v16 + 1) + 8 * i) + 16))();
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v6 = self->_onCommitBlocks;
    v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v20 + 1) + 8 * j) + 16))();
        }

        v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }
  }

  onCommitBlocks = self->_onCommitBlocks;
  self->_onCommitBlocks = 0;

  onRollbackBlocks = self->_onRollbackBlocks;
  self->_onRollbackBlocks = 0;
}

- (void)requestTransactionInterruption
{
  [(HDSQLiteDatabase *)self->_protectedDatabase setTransactionInterruptRequested:1];
  unprotectedDatabase = self->_unprotectedDatabase;

  [(HDSQLiteDatabase *)unprotectedDatabase setTransactionInterruptRequested:1];
}

- (void)requireRollback
{
  [(HDSQLiteDatabase *)self->_protectedDatabase requireRollback];
  unprotectedDatabase = self->_unprotectedDatabase;

  [(HDSQLiteDatabase *)unprotectedDatabase requireRollback];
}

@end