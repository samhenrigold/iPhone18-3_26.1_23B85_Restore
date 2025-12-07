@interface HDDatabaseJournal
+ (id)_journalEntriesFromChapterEnties:(uint64_t)enties;
- (BOOL)addJournalEntries:(id)entries profile:(id)profile error:(id *)error;
- (BOOL)mergeWithProfile:(id)profile activity:(id)activity shouldContinueHandler:(id)handler;
- (BOOL)performMergeTransactionWithProfile:(id)profile transactionContext:(id)context error:(id *)error block:(id)block;
- (HDDatabaseJournal)init;
- (HDDatabaseJournal)initWithType:(int64_t)type path:(id)path;
- (HDDatabaseJournalDelegate)delegate;
- (double)ageOfOldestJournal;
- (id)description;
- (id)journalMergeInterruptions;
- (id)progressForJournalMerge;
- (int64_t)journalChapterCount;
- (uint64_t)_setActiveTransactionAndReturnInterrupted:(uint64_t)interrupted;
- (unint64_t)sizeOnDisk;
- (void)_executeAtomically:(os_unfair_lock_s *)atomically;
- (void)_unitTesting_closeCurrentJournalChapter;
- (void)dealloc;
- (void)interruptJournalMerge;
- (void)invalidate;
- (void)resetJournalMergeInterruptionsCount;
- (void)resumeJournalMerge;
@end

@implementation HDDatabaseJournal

- (HDDatabaseJournal)initWithType:(int64_t)type path:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!type)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournal.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"type != HDDatabaseJournalTypeDefault"}];
  }

  v24.receiver = self;
  v24.super_class = HDDatabaseJournal;
  v8 = [(HDDatabaseJournal *)&v24 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    URL = v9->_URL;
    v9->_URL = v10;

    v9->_journalLock._os_unfair_lock_opaque = 0;
    v12 = HKCreateSerialDispatchQueue();
    mergeQueue = v9->_mergeQueue;
    v9->_mergeQueue = v12;

    v9->_progressLock._os_unfair_lock_opaque = 0;
    *&v9->_interruptionLock._os_unfair_lock_opaque = 0;
    v9->_activeTransactionLock._os_unfair_lock_opaque = 0;
    v9->_journalStatus = 0;
    lastInsertedEntryClassName = v9->_lastInsertedEntryClassName;
    v9->_lastInsertedEntryClassName = 0;

    v9->_serializedDataEnumerationThreshold = 0x10000;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    journalMergeInterruptions = v9->_journalMergeInterruptions;
    v9->_journalMergeInterruptions = v15;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:pathCopy isDirectory:0] & 1) == 0)
    {
      v23 = 0;
      v18 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v23];
      v19 = v23;
      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v26 = pathCopy;
          v27 = 2114;
          v28 = v19;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Error creating journal directory %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  return v9;
}

- (HDDatabaseJournal)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  [(HDJournalChapter *)self->_currentJournalChapter close];
  v3.receiver = self;
  v3.super_class = HDDatabaseJournal;
  [(HDDatabaseJournal *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = HDStringFromDatabaseJournalType(self->_type);
  journalStatus = self->_journalStatus;
  if (journalStatus >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected (%ld)", self->_journalStatus];
  }

  else
  {
    v7 = off_278621460[journalStatus];
  }

  isOpen = [(HDJournalChapter *)self->_currentJournalChapter isOpen];
  v9 = @"Closed";
  if (isOpen)
  {
    v9 = @"Open";
  }

  v10 = [v3 stringWithFormat:@"<%@:%p, %@, %@, %@>", v4, self, v5, v7, v9];

  return v10;
}

- (BOOL)addJournalEntries:(id)entries profile:(id)profile error:(id *)error
{
  v87 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  os_unfair_lock_assert_owner(&self->_journalLock);
  if (self->_invalidated)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"Journal has already been invalidated."];
    v9 = 0;
    goto LABEL_55;
  }

  errorCopy = error;
  self->_journalStatus = 2;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2A0];
  v56 = entriesCopy;
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    v48 = v10;
    v49 = [entriesCopy count];
    path = [(NSURL *)self->_URL path];
    *buf = 134218242;
    v79 = v49;
    entriesCopy = v56;
    v80 = 2114;
    v81 = path;
    _os_log_debug_impl(&dword_228986000, v48, OS_LOG_TYPE_DEBUG, "Appending %lu journal entries to %{public}@", buf, 0x16u);
  }

  maximumJournalBytes = [(HDDatabaseJournal *)self maximumJournalBytes];
  if (maximumJournalBytes)
  {
    sizeOnDisk = [(HDDatabaseJournal *)self sizeOnDisk];
  }

  else
  {
    sizeOnDisk = 0;
  }

  v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = entriesCopy;
  v63 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (!v63)
  {
    v60 = 0;
    v64 = 0;
    goto LABEL_44;
  }

  v60 = 0;
  v64 = 0;
  v62 = *v75;
  v61 = maximumJournalBytes;
LABEL_10:
  v12 = 0;
  while (1)
  {
    if (*v75 != v62)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v74 + 1) + 8 * v12);
    v14 = objc_autoreleasePoolPush();
    v73 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v73];
    v16 = v73;
    if (maximumJournalBytes)
    {
      unsignedLongValue = [maximumJournalBytes unsignedLongValue];
      if ([v15 length] + sizeOnDisk > unsignedLongValue)
      {
        break;
      }
    }

    v66 = v12;
    v67 = v14;
    if (v15)
    {
      v18 = 1;
      while (1)
      {
        v19 = v18;
        v20 = objc_opt_class();
        v72 = v16;
        v21 = v15;
        if ([v21 length])
        {
          if (([(HDJournalChapter *)self->_currentJournalChapter canAppendData:v21]& 1) == 0)
          {
            [(HDJournalChapter *)self->_currentJournalChapter close];
          }

          if (([(HDJournalChapter *)self->_currentJournalChapter isOpen]& 1) != 0)
          {
LABEL_25:
            LOBYTE(v22) = [(HDJournalChapter *)self->_currentJournalChapter appendData:v21 entryClass:v20 error:&v72];
            goto LABEL_29;
          }

          v22 = [HDJournalChapterEnumerator nextJournalChapterNameForURL:self->_URL];
          if (v22)
          {
            v23 = [HDDatabaseJournalDatabase alloc];
            v24 = [(NSURL *)self->_URL URLByAppendingPathComponent:v22];
            v25 = [(HDDatabaseJournalDatabase *)v23 initWithURL:v24];
            currentJournalChapter = self->_currentJournalChapter;
            self->_currentJournalChapter = v25;

            _HKInitializeLogging();
            v27 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
            {
              v30 = self->_currentJournalChapter;
              *buf = 138543362;
              v79 = v30;
              _os_log_debug_impl(&dword_228986000, v27, OS_LOG_TYPE_DEBUG, "Creating new journal chapter %{public}@", buf, 0xCu);
            }

            v28 = [(HDJournalChapter *)self->_currentJournalChapter createAndOpenForWritingWithError:&v72];

            if (v28)
            {
              goto LABEL_25;
            }

            LOBYTE(v22) = 0;
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:&v72 code:102 format:@"Unable to create journal name"];
          }
        }

        else
        {
          LOBYTE(v22) = 1;
        }

LABEL_29:

        v29 = v72;
        if (v22)
        {
          ++v60;
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v58 objectForKeyedSubscript:v32];
          integerValue = [v33 integerValue];
          v35 = [v21 length];
          if (integerValue <= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = integerValue;
          }

          v37 = [MEMORY[0x277CCABB0] numberWithInteger:v36 >> 10];
          [v58 setObject:v37 forKeyedSubscript:v32];

          sizeOnDisk += [v21 length];
          goto LABEL_39;
        }

        v18 = 0;
        v16 = v29;
        if ((v19 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    v29 = v16;
LABEL_33:
    if (!v64)
    {
      v29 = v29;
      v64 = v29;
    }

LABEL_39:
    maximumJournalBytes = v61;

    objc_autoreleasePoolPop(v67);
    v12 = v66 + 1;
    if (v66 + 1 == v63)
    {
      v63 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
      if (!v63)
      {
        goto LABEL_44;
      }

      goto LABEL_10;
    }
  }

  v38 = [MEMORY[0x277CCA9B8] hk_error:123 format:{@"Cannot append journal entry of %lu bytes: current size is %lu and maximum is %zu", objc_msgSend(v15, "length"), sizeOnDisk, unsignedLongValue}];

  objc_autoreleasePoolPop(v14);
  v64 = v38;
LABEL_44:

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __53__HDDatabaseJournal_addJournalEntries_profile_error___block_invoke;
  v69[3] = &unk_278621358;
  v70 = profileCopy;
  selfCopy = self;
  [v58 enumerateKeysAndObjectsUsingBlock:v69];
  v9 = v64 == 0;
  if (v64)
  {
    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v51 = v39;
      v52 = [obj count];
      path2 = [(NSURL *)self->_URL path];
      *buf = 134218754;
      v79 = v60;
      v80 = 2048;
      v81 = v52;
      v82 = 2114;
      v83 = path2;
      v84 = 2114;
      v85 = v64;
      _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "Added %lu of %lu entries to %{public}@, error: %{public}@", buf, 0x2Au);
    }
  }

  v40 = self->_currentJournalChapter;
  v68 = 0;
  v41 = [(HDJournalChapter *)v40 flushDataToDisk:&v68];
  v42 = v68;
  if ((v41 & 1) == 0)
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v54 = self->_currentJournalChapter;
      *buf = 138543618;
      v79 = v54;
      v80 = 2114;
      v81 = v42;
      _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "Failed to flush data to %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v44 = v64;
  v45 = v44;
  if (v64)
  {
    if (errorCopy)
    {
      v46 = v44;
      *errorCopy = v45;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  entriesCopy = v56;
LABEL_55:

  return v9;
}

void __53__HDDatabaseJournal_addJournalEntries_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 daemon];
  v8 = [v9 analyticsSubmissionCoordinator];
  [v8 database_reportJournalEntryInsertedForJournal:*(*(a1 + 40) + 104) entryClass:v7 entrySize:v6];
}

- (BOOL)performMergeTransactionWithProfile:(id)profile transactionContext:(id)context error:(id *)error block:(id)block
{
  contextCopy = context;
  blockCopy = block;
  database = [profile database];
  if (!database)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournal.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

    if (self)
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_7;
  }

  if (!self)
  {
    goto LABEL_9;
  }

LABEL_3:
  v14 = [contextCopy mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  }

  v17 = v16;

  [(HDMutableDatabaseTransactionContext *)v17 setSkipJournalMerge:1];
  [(HDMutableDatabaseTransactionContext *)v17 setJournalType:self->_type];
  [(HDMutableDatabaseTransactionContext *)v17 setRequiresWrite:1];
  [(HDMutableDatabaseTransactionContext *)v17 setRequiresProtectedData:1];
LABEL_7:
  v18 = [database performTransactionWithContext:v17 error:error block:blockCopy inaccessibilityHandler:0];

  return v18;
}

- (id)progressForJournalMerge
{
  os_unfair_lock_lock(&self->_progressLock);
  if (self->_progressLock_observableProgress)
  {
    v3 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:?];
    os_unfair_lock_unlock(&self->_progressLock);
  }

  else
  {
    v4 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
    progressLock_observableProgress = self->_progressLock_observableProgress;
    self->_progressLock_observableProgress = v4;

    os_unfair_lock_unlock(&self->_progressLock);
    v3 = self->_progressLock_observableProgress;
  }

  return v3;
}

- (BOOL)mergeWithProfile:(id)profile activity:(id)activity shouldContinueHandler:(id)handler
{
  profileCopy = profile;
  activityCopy = activity;
  handlerCopy = handler;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__95;
  v28 = __Block_byref_object_dispose__95;
  v29 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HDDatabaseJournal_mergeWithProfile_activity_shouldContinueHandler___block_invoke;
  v17[3] = &unk_278621380;
  v17[4] = self;
  v21 = &v34;
  v11 = profileCopy;
  v18 = v11;
  v22 = &v24;
  v12 = activityCopy;
  v19 = v12;
  v13 = handlerCopy;
  v20 = v13;
  v23 = &v30;
  [(HDDatabaseJournal *)self _executeAtomically:v17];
  if (*(v35 + 24) == 1 && *(v31 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained databaseJournalMergeDidComplete:self];
  }

  [v25[5] invalidate];
  v15 = *(v35 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v15;
}

void __69__HDDatabaseJournal_mergeWithProfile_activity_shouldContinueHandler___block_invoke(uint64_t a1)
{
  v124 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 65) == 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else if (*(v2 + 56) != 1)
  {
    v3 = [*(a1 + 40) database];
    v4 = [v3 contentProtectionManager];
    v5 = [v4 observedState];

    if (v5 == 2)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v7;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Trying to merge journals when device is locked", buf, 0xCu);
      }
    }

    else
    {
      v8 = [*(a1 + 40) daemon];
      v9 = [v8 maintenanceWorkCoordinator];
      v10 = [v9 takeMaintenanceSuspensionAssertionForOwner:@"HDDatabaseJournal.mergeWithProfile:activity:shouldContinueHandler:"];
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v86 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:*(a1 + 32)];
      *(*(a1 + 32) + 96) = 1;
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v90 = *(a1 + 48);
      v94 = *(a1 + 40);
      v91 = v14;
      if (v13)
      {
        v95 = [[HDJournalChapterEnumerator alloc] initWithURL:*(v13 + 136)];
        v100 = v13;
        if ([(HDJournalChapterEnumerator *)v95 hasJournalChapters])
        {
          v15 = objc_opt_class();
          v84 = NSStringFromClass(v15);
          v16 = [v94 database];
          v103 = 0;
          v89 = [v16 takeAccessibilityAssertionWithOwnerIdentifier:v84 shouldPerformTransaction:0 timeout:&v103 error:600.0];
          v83 = v103;

          if (v89)
          {
            v102 = 0;
            v17 = [(HDJournalChapterEnumerator *)v95 loadSortedJournalChaptersWithError:&v102];
            v82 = v102;
            if (v17)
            {
              v18 = v13;
              os_unfair_lock_lock((v13 + 8));
              if (!*(v13 + 16))
              {
                v19 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
                v20 = *(v13 + 16);
                *(v13 + 16) = v19;

                v18 = v13;
              }

              v21 = *(v18 + 24);
              if (v21)
              {
                [*(v13 + 24) setTotalUnitCount:{-[HDJournalChapterEnumerator totalJournalChapterCount](v95, "totalJournalChapterCount") + objc_msgSend(v21, "completedUnitCount")}];
              }

              else
              {
                v26 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{-[HDJournalChapterEnumerator totalJournalChapterCount](v95, "totalJournalChapterCount")}];
                v27 = *(v13 + 24);
                *(v13 + 24) = v26;

                [*(v13 + 16) addChild:*(v13 + 24) withPendingUnitCount:1];
              }

              v81 = *(v13 + 24);
              os_unfair_lock_unlock((v13 + 8));
              if (![(HDJournalChapterEnumerator *)v95 hasMoreJournalChapters])
              {
                v72 = 0;
                goto LABEL_92;
              }

LABEL_28:
              v101 = 0;
              v85 = [(HDJournalChapterEnumerator *)v95 nextOpenJournalChapterError:&v101];
              v80 = v101;
              if (v85)
              {
                v93 = 0;
                v28 = 0;
                while (1)
                {
                  os_unfair_lock_lock((v100 + 40));
                  os_unfair_lock_unlock((v100 + 40));
                  v97 = v28;
                  if (v28 < 1)
                  {
                    v99 = 0;
                  }

                  else
                  {
                    if (v90)
                    {
                      [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v28 + 1];
                    }

                    else
                    {
                      [MEMORY[0x277CCACA8] stringWithFormat:@"(%ld / %ld)", v28 + 1, 10];
                    }
                    v29 = ;
                    v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retrying, attempt %@", v29];
                  }

                  if (v93 >= 1)
                  {
                    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuing (%ld)", v93];

                    v99 = v30;
                  }

                  _HKInitializeLogging();
                  v31 = *MEMORY[0x277CCC2A0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
                  {
                    if (v99)
                    {
                      v32 = v99;
                    }

                    else
                    {
                      v32 = @"Starting";
                    }

                    v33 = v31;
                    v34 = [(HDJournalChapterEnumerator *)v95 currentJournalChapterIndex];
                    v35 = [(HDJournalChapterEnumerator *)v95 totalJournalChapterCount];
                    *buf = 138413058;
                    *&buf[4] = v32;
                    *&buf[12] = 2114;
                    *&buf[14] = v85;
                    *&buf[22] = 2048;
                    v113 = v34;
                    LOWORD(v114) = 2048;
                    *(&v114 + 2) = v35;
                    _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "%@ journal merge for %{public}@ (%ld of %ld)", buf, 0x2Au);
                  }

                  v36 = v85;
                  v37 = v94;
                  v96 = v89;
                  v38 = v91;
                  v39 = objc_alloc_init(MEMORY[0x277CBEAA8]);
                  v40 = objc_alloc_init(HDDatabaseJournalMetrics);
                  v41 = _HKLogSignpostIDGenerate();
                  _HKInitializeLogging();
                  v42 = *MEMORY[0x277CCC2A0];
                  if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
                  {
                    v43 = v42;
                    v44 = v43;
                    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
                    {
                      v45 = [v36 name];
                      LODWORD(v121) = 138543362;
                      *(&v121 + 4) = v45;
                      _os_signpost_emit_with_name_impl(&dword_228986000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v41, "merge-journal-chapter", "chapter=%{public}@", &v121, 0xCu);
                    }
                  }

                  *&v121 = 0;
                  *(&v121 + 1) = &v121;
                  v122 = 0x2020000000;
                  v123 = 0;
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke;
                  v113 = &unk_2786213F8;
                  *&v114 = v100;
                  v119 = &v121;
                  v92 = v36;
                  *(&v114 + 1) = v92;
                  v120 = v41;
                  v46 = v37;
                  v115 = v46;
                  v87 = v38;
                  v118 = v87;
                  v47 = v40;
                  v116 = v47;
                  v88 = v39;
                  v117 = v88;
                  v48 = _Block_copy(buf);
                  v49 = [v46 dataManager];
                  [v49 openObserverTransaction];

                  v50 = [v46 userDomainConceptManager];
                  [v50 openObserverTransaction];

                  v51 = *(v100 + 72);
                  *(v100 + 72) = 0;

                  v52 = objc_alloc_init(HDMutableDatabaseTransactionContext);
                  [(HDMutableDatabaseTransactionContext *)v52 setCacheScope:1];
                  [(HDMutableDatabaseTransactionContext *)v52 addAccessibilityAssertion:v96];
                  v105 = 0;
                  v53 = [v100 performMergeTransactionWithProfile:v46 transactionContext:v52 error:&v105 block:v48];
                  v54 = v105;
                  [(HDDatabaseJournal *)v100 _setActiveTransactionAndReturnInterrupted:?];
                  v55 = [v46 dataManager];
                  [v55 closeObserverTransaction];

                  v56 = [v46 userDomainConceptManager];
                  [v56 closeObserverTransaction];

                  _HKInitializeLogging();
                  v57 = *MEMORY[0x277CCC2A0];
                  if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
                  {
                    v58 = v57;
                    v59 = v58;
                    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
                    {
                      v60 = [v92 name];
                      *v106 = 138543618;
                      v107 = v60;
                      v108 = 1024;
                      LODWORD(v109) = v53;
                      _os_signpost_emit_with_name_impl(&dword_228986000, v59, OS_SIGNPOST_INTERVAL_END, v41, "merge-journal-chapter", "chapter=%{public}@ success=%{BOOL}d", v106, 0x12u);
                    }
                  }

                  if (v53)
                  {
                    if ((*(*(&v121 + 1) + 24) - 2) > 2 || ([*(v100 + 144) close], *(*(&v121 + 1) + 24) == 4))
                    {
                      v61 = v54;
                    }

                    else
                    {
                      [v92 close];
                      v104 = v54;
                      v69 = [v92 removeWithError:&v104];
                      v61 = v104;

                      if ((v69 & 1) == 0)
                      {
                        _HKInitializeLogging();
                        v70 = *MEMORY[0x277CCC2A0];
                        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                        {
                          *v106 = 138543618;
                          v107 = v85;
                          v108 = 2114;
                          v109 = v61;
                          _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "An error occurred while removing %{public}@: %{public}@", v106, 0x16u);
                        }
                      }
                    }

                    v62 = *(*(&v121 + 1) + 24);
                    v54 = v61;
                  }

                  else if ([v54 hk_isTransactionInterruptedError])
                  {
                    _HKInitializeLogging();
                    v63 = *MEMORY[0x277CCC2A0];
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                    {
                      v64 = [*(v100 + 136) path];
                      v65 = *(v100 + 72);
                      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@" with original error: %@", v54];
                      *v106 = 138543874;
                      v107 = v64;
                      v108 = 2114;
                      v109 = v65;
                      v110 = 2112;
                      v111 = v66;
                      _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_DEFAULT, "Journal merge transaction for %{public}@ (%{public}@) was interrupted%@", v106, 0x20u);
                    }

                    v62 = 1;
                  }

                  else
                  {
                    _HKInitializeLogging();
                    v67 = *MEMORY[0x277CCC2A0];
                    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                    {
                      *v106 = 138543618;
                      v107 = v85;
                      v108 = 2114;
                      v109 = v54;
                      _os_log_error_impl(&dword_228986000, v67, OS_LOG_TYPE_ERROR, "Merge transaction aborted for %{public}@; bailing out of journal merge: %{public}@", v106, 0x16u);
                    }

                    v62 = 0;
                  }

                  _Block_object_dispose(&v121, 8);
                  if (v62 == 1)
                  {
                    v93 = 0;
                    v98 = v97 + 1;
                  }

                  else
                  {
                    if (v62 != 4)
                    {
                      if (v62)
                      {

                        if (v97 <= 9 || v90 != 0)
                        {
                          if (v81)
                          {
                            [v81 setCompletedUnitCount:{objc_msgSend(v81, "completedUnitCount") + 1}];
                          }

                          v72 = 0;
                          if ([(HDJournalChapterEnumerator *)v95 hasMoreJournalChapters])
                          {
                            goto LABEL_28;
                          }

                          goto LABEL_92;
                        }
                      }

                      else
                      {

                        v73 = v90 != 0;
                        if (v97 < 10)
                        {
                          v73 = 1;
                        }

                        if (v73)
                        {
                          goto LABEL_91;
                        }
                      }

LABEL_90:
                      _HKInitializeLogging();
                      v74 = *MEMORY[0x277CCC2A0];
                      if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_91;
                      }

                      *buf = 138412290;
                      *&buf[4] = v85;
                      v79 = "Used maximum retry attempts for %@";
                      goto LABEL_102;
                    }

                    v98 = 0;
                    ++v93;
                  }

                  v28 = v98;
                  if (v98 >= 10 && v90 == 0)
                  {
                    goto LABEL_90;
                  }
                }
              }

              _HKInitializeLogging();
              v74 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v80;
                v79 = "Could not get next journal chapter %{public}@";
LABEL_102:
                _os_log_error_impl(&dword_228986000, v74, OS_LOG_TYPE_ERROR, v79, buf, 0xCu);
              }

LABEL_91:

              v72 = 1;
LABEL_92:
              [v89 invalidate];
              [(HDJournalChapterEnumerator *)v95 closeJournalChapters];
              if ((v72 & 1) == 0)
              {
                os_unfair_lock_lock((v100 + 8));
                v75 = *(v100 + 24);
                *(v100 + 24) = 0;

                v76 = *(v100 + 16);
                *(v100 + 16) = 0;

                os_unfair_lock_unlock((v100 + 8));
                *(v100 + 56) = 1;
              }

              v23 = v72 ^ 1;
            }

            else
            {
              _HKInitializeLogging();
              v25 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v82;
                _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Failed to load sorted journal chapters: %{public}@", buf, 0xCu);
              }

              [v89 invalidate];
              v23 = 0;
            }
          }

          else
          {
            _HKInitializeLogging();
            v24 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v83;
              _os_log_debug_impl(&dword_228986000, v24, OS_LOG_TYPE_DEBUG, "Failed to acquire database accessibility assertion for journal merge: %{public}@", buf, 0xCu);
            }

            v23 = 0;
          }
        }

        else
        {
          if (*(v13 + 104) != 1)
          {
            _HKInitializeLogging();
            v22 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
            {
              v77 = *(v13 + 136);
              *buf = 138543362;
              *&buf[4] = v77;
              v78 = v22;
              _os_log_debug_impl(&dword_228986000, v78, OS_LOG_TYPE_DEBUG, "No journal chapter files to merge in %{public}@", buf, 0xCu);
            }
          }

          v23 = 1;
          *(v13 + 56) = 1;
        }
      }

      else
      {
        v23 = 0;
      }

      *(*(*(a1 + 64) + 8) + 24) = v23;
      *(*(a1 + 32) + 96) = 0;
      [v86 invalidate];
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }
  }
}

- (void)_executeAtomically:(os_unfair_lock_s *)atomically
{
  v3 = a2;
  if (atomically)
  {
    os_unfair_lock_lock(atomically + 8);
    v3[2]();
    os_unfair_lock_unlock(atomically + 8);
  }
}

- (void)interruptJournalMerge
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_interruptionsInfoLock);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:dispatch_queue_get_label(0)];
  v4 = [(NSMutableDictionary *)self->_journalMergeInterruptions objectForKeyedSubscript:v3];
  unsignedIntValue = [v4 unsignedIntValue];

  journalMergeInterruptions = self->_journalMergeInterruptions;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
  [(NSMutableDictionary *)journalMergeInterruptions setObject:v7 forKey:v3];

  os_unfair_lock_unlock(&self->_interruptionsInfoLock);
  os_unfair_lock_lock(&self->_interruptionLock);
  os_unfair_lock_lock(&self->_activeTransactionLock);
  self->_interrupted = 1;
  if (self->_activeMergeTransaction)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Journal merge interruption requested on %@", &v9, 0x16u);
    }

    [(HDDatabaseTransaction *)self->_activeMergeTransaction requestTransactionInterruption];
  }

  os_unfair_lock_unlock(&self->_activeTransactionLock);
}

- (void)resumeJournalMerge
{
  os_unfair_lock_lock(&self->_activeTransactionLock);
  self->_interrupted = 0;
  os_unfair_lock_unlock(&self->_activeTransactionLock);

  os_unfair_lock_unlock(&self->_interruptionLock);
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __31__HDDatabaseJournal_invalidate__block_invoke;
  v2[3] = &unk_278613968;
  v2[4] = self;
  [(HDDatabaseJournal *)self _executeAtomically:v2];
}

- (int64_t)journalChapterCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDDatabaseJournal_journalChapterCount__block_invoke;
  v4[3] = &unk_278613990;
  v4[4] = self;
  v4[5] = &v5;
  [(HDDatabaseJournal *)self _executeAtomically:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

int64_t __40__HDDatabaseJournal_journalChapterCount__block_invoke(uint64_t a1)
{
  result = [HDJournalChapterEnumerator journalChapterCountForURL:*(*(a1 + 32) + 136)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)sizeOnDisk
{
  v46[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v5 = *MEMORY[0x277CBE8A8];
  v6 = *MEMORY[0x277CBE910];
  v46[0] = *MEMORY[0x277CBE8A8];
  v46[1] = v6;
  v30 = v6;
  v7 = MEMORY[0x277CBEA60];
  v8 = URL;
  v9 = [v7 arrayWithObjects:v46 count:2];
  v29 = v3;
  v10 = [v3 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:0 errorHandler:&__block_literal_global_104];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v31 = 0;
    v14 = *v38;
    while (1)
    {
      v15 = 0;
      v32 = v13;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v35 = 0;
        v36 = 0;
        v17 = [v16 getResourceValue:&v36 forKey:v5 error:&v35];
        v18 = v36;
        v19 = v35;
        if ((v17 & 1) == 0)
        {
          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v42 = v16;
            v43 = 2114;
            v44 = v19;
            _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_INFO, "Failed to retrieve file type during size computation: %{public}@ (%{public}@)", buf, 0x16u);
          }

LABEL_14:
          v25 = v19;
          goto LABEL_18;
        }

        if (![v18 BOOLValue])
        {
          goto LABEL_14;
        }

        v20 = v14;
        v21 = v5;
        v22 = v11;
        v33 = 0;
        v34 = 0;
        v23 = [v16 getResourceValue:&v34 forKey:v30 error:&v33];
        v24 = v34;
        v25 = v33;

        if (v23)
        {
          v31 += [v24 longLongValue];
        }

        else
        {
          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v42 = v16;
            v43 = 2114;
            v44 = v25;
            _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_INFO, "Failed to retrieve file size during size computation: %{public}@ (%{public}@)", buf, 0x16u);
          }
        }

        v11 = v22;

        v5 = v21;
        v14 = v20;
        v13 = v32;
LABEL_18:

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (!v13)
      {
        goto LABEL_22;
      }
    }
  }

  v31 = 0;
LABEL_22:

  return v31;
}

uint64_t __31__HDDatabaseJournal_sizeOnDisk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Failed to enumerate URL during size computation: %{public}@ (%{public}@)", &v8, 0x16u);
  }

  return 1;
}

- (double)ageOfOldestJournal
{
  v53[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v5 = *MEMORY[0x277CBE8A8];
  v6 = *MEMORY[0x277CBE7C0];
  v53[0] = *MEMORY[0x277CBE8A8];
  v53[1] = v6;
  v34 = v6;
  v7 = MEMORY[0x277CBEA60];
  v8 = URL;
  v9 = [v7 arrayWithObjects:v53 count:2];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __39__HDDatabaseJournal_ageOfOldestJournal__block_invoke;
  v43[3] = &unk_2786213A8;
  v43[4] = self;
  v31 = v3;
  v10 = [v3 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:0 errorHandler:v43];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v14 = *v40;
    v15 = 0.0;
    v33 = *v40;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v37 = 0;
        v38 = 0;
        v18 = [v17 getResourceValue:&v38 forKey:v5 error:&v37];
        v19 = v38;
        v20 = v37;
        if ((v18 & 1) == 0)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v45 = selfCopy;
            v46 = 2114;
            v47 = v17;
            v48 = 2114;
            v49 = v20;
            _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve file type during journal age computation: %{public}@ (%{public}@)", buf, 0x20u);
          }

LABEL_17:
          v25 = v20;
          goto LABEL_21;
        }

        if (![v19 BOOLValue])
        {
          goto LABEL_17;
        }

        v21 = v5;
        v22 = v11;
        v35 = 0;
        v36 = 0;
        v23 = [v17 getResourceValue:&v36 forKey:v34 error:&v35];
        v24 = v36;
        v25 = v35;

        if (v23)
        {
          [v24 timeIntervalSinceNow];
          if (v15 < v26)
          {
            v15 = v26;
          }

          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            v45 = selfCopy;
            v46 = 2112;
            v47 = v17;
            v48 = 2114;
            v49 = v24;
            v50 = 2050;
            v51 = v15;
            _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Journal file %@ creation date %{public}@, oldest age %{public}f", buf, 0x2Au);
          }
        }

        else
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v45 = selfCopy;
            v46 = 2114;
            v47 = v17;
            v48 = 2114;
            v49 = v25;
            _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve file size during journal age computation: %{public}@ (%{public}@)", buf, 0x20u);
          }
        }

        v11 = v22;

        v5 = v21;
        v14 = v33;
LABEL_21:
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  v15 = 0.0;
LABEL_25:

  return v15;
}

uint64_t __39__HDDatabaseJournal_ageOfOldestJournal__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to enumerate URL during journal age computation: %{public}@ (%{public}@)", &v10, 0x20u);
  }

  return 1;
}

uint64_t __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([(HDDatabaseJournal *)*(a1 + 32) _setActiveTransactionAndReturnInterrupted:v5])
  {
    v6 = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];
    if (v6)
    {
      if (a3)
      {
        v7 = v6;
        *a3 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v31 = *(*(a1 + 80) + 8);
    v32 = 1;
    goto LABEL_19;
  }

  v8 = [*(a1 + 40) readVersionWithError:a3];
  if (!v8)
  {
    v31 = *(*(a1 + 80) + 8);
    v32 = 2;
LABEL_19:
    *(v31 + 24) = v32;
    goto LABEL_33;
  }

  v9 = v8;
  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC2A0];
  v11 = *MEMORY[0x277CCC2A0];
  if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
  {
    v12 = v11;
    v13 = v12;
    v14 = *(a1 + 88);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v15 = [*(a1 + 40) name];
      *buf = 138543362;
      v56 = v15;
      _os_signpost_emit_with_name_impl(&dword_228986000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "merge-journal-chapter-load-entries", "chapter=%{public}@", buf, 0xCu);
    }
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v50 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke_365;
  v42[3] = &unk_2786213D0;
  v48 = *(a1 + 88);
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v46 = *(a1 + 72);
  v47 = &v51;
  *&v18 = v17;
  *(&v18 + 1) = *(a1 + 32);
  v41 = v18;
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  *&v21 = v19;
  *(&v21 + 1) = v20;
  v43 = v41;
  v44 = v21;
  v49 = v9;
  v45 = v5;
  LODWORD(v16) = [v17 enumerateEntriesWithProfile:v16 transaction:v45 error:&v50 handler:v42];
  v22 = COERCE_DOUBLE(v50);
  *(*(*(a1 + 80) + 8) + 24) = v16;
  v23 = *(*(*(a1 + 80) + 8) + 24);
  if (v23 < 2)
  {
    _HKInitializeLogging();
    v24 = *v10;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v33 = HDStringFromJournalProcessingResult(*(*(*(a1 + 80) + 8) + 24));
      v34 = *(a1 + 40);
      *buf = 138543874;
      v56 = v33;
      v57 = 2114;
      v58 = v34;
      v59 = 2114;
      v60 = v22;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "A transient error (%{public}@) was encountered processing %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v23 - 3 >= 2)
    {
      if (v23 == 2)
      {
        _HKInitializeLogging();
        v35 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v40 = *(a1 + 40);
          *buf = 138543618;
          v56 = v40;
          v57 = 2114;
          v58 = v22;
          _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "A fatal error occurred while processing %{public}@, error: %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_26;
    }

    _HKInitializeLogging();
    v24 = *v10;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HDStringFromJournalProcessingResult(*(*(*(a1 + 80) + 8) + 24));
      v26 = *(a1 + 40);
      v27 = v52[3];
      [*(a1 + 64) timeIntervalSinceNow];
      v29 = v28;
      v30 = [*(a1 + 56) loggingDescription];
      *buf = 138544386;
      v56 = v25;
      v57 = 2114;
      v58 = v26;
      v59 = 2048;
      v60 = v27 * 0.0009765625;
      v61 = 2048;
      v62 = -v29;
      v63 = 2114;
      v64 = v30;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ processing %{public}@ (%0.1lfkb), time: %.2f sec.\n%{public}@", buf, 0x34u);
    }
  }

LABEL_26:
  if ((*(*(*(a1 + 80) + 8) + 24) - 3) >= 2)
  {
    v36 = *&v22;
    v37 = v36;
    if (v36)
    {
      if (a3)
      {
        v38 = v36;
        *a3 = v37;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v51, 8);
LABEL_33:

  return 1;
}

- (uint64_t)_setActiveTransactionAndReturnInterrupted:(uint64_t)interrupted
{
  v4 = a2;
  if (interrupted)
  {
    os_unfair_lock_lock((interrupted + 36));
    if (v4 && !*(interrupted + 48) && *(interrupted + 64) == 1)
    {
      [v4 requestTransactionInterruption];
      [v4 requireRollback];
    }

    objc_storeStrong((interrupted + 48), a2);
    v5 = *(interrupted + 64);
    os_unfair_lock_unlock((interrupted + 36));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke_365(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (***a5)(id, id *))
{
  v106 = *MEMORY[0x277D85DE8];
  v75 = a2;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  v76 = a1;
  if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
  {
    v8 = v7;
    v9 = v8;
    v10 = *(a1 + 88);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [*(v76 + 32) name];
      *buf = 138543362;
      *&buf[4] = v11;
      _os_signpost_emit_with_name_impl(&dword_228986000, v9, OS_SIGNPOST_INTERVAL_END, v10, "merge-journal-chapter-load-entries", "chapter=%{public}@", buf, 0xCu);
    }

    a1 = v76;
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    v74 = 0;
LABEL_10:
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v16 = v15;
      v17 = v16;
      v18 = *(v76 + 88);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        v19 = [*(v76 + 32) name];
        *buf = 138543362;
        *&buf[4] = v19;
        _os_signpost_emit_with_name_impl(&dword_228986000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "merge-journal-chapter-merge-entries", "chapter=%{public}@", buf, 0xCu);
      }
    }

    *(*(*(v76 + 80) + 8) + 24) += a3;
    v21 = *(v76 + 40);
    v20 = *(v76 + 48);
    v22 = *(v76 + 56);
    v73 = v75;
    v78 = v20;
    v77 = v22;
    v80 = v21;
    if (v21)
    {
      v97 = 0;
      v98 = &v97;
      v99 = 0x3032000000;
      v100 = __Block_byref_object_copy__95;
      v101 = __Block_byref_object_dispose__95;
      v102 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v93 = 0;
      v94 = &v93;
      v95 = 0x2020000000;
      v96 = 0;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v73;
      v24 = 0;
      v25 = [obj countByEnumeratingWithState:&v89 objects:buf count:16];
      if (!v25)
      {
        goto LABEL_37;
      }

      v26 = *v90;
      while (1)
      {
        v27 = 0;
        v28 = v24;
        do
        {
          if (*v90 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v89 + 1) + 8 * v27);
          v30 = [v29 entryClassName];
          v31 = v30 != v28;
          if (v30 == v28)
          {
            goto LABEL_24;
          }

          if (!v28)
          {
            v31 = 0;
            goto LABEL_29;
          }

          v21 = [v29 entryClassName];
          if ([v21 isEqualToString:v28])
          {
LABEL_24:
            v32 = v94[3];
            if ([v29 size] + v32 <= v80[10])
            {
              if (v30 != v28)
              {
              }

              goto LABEL_34;
            }
          }

          else
          {
            v31 = 1;
          }

LABEL_29:
          v33 = [v23 count];
          if (v31)
          {
            v34 = v33 == 0;
          }

          else
          {
            v34 = v33 == 0;
          }

          if (!v34)
          {
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __58__HDDatabaseJournal__mergeJournalEntries_metrics_profile___block_invoke;
            v82[3] = &unk_278621420;
            v83 = v23;
            v84 = v77;
            v85 = v78;
            v86 = v28;
            v87 = &v93;
            v88 = &v97;
            HKWithAutoreleasePool();

            v30 = v83;
LABEL_34:
          }

          v24 = [v29 entryClassName];

          [v23 addObject:v29];
          v35 = [v29 size];
          v94[3] += v35;
          ++v27;
          v28 = v24;
        }

        while (v25 != v27);
        v25 = [obj countByEnumeratingWithState:&v89 objects:buf count:16];
        if (!v25)
        {
LABEL_37:

          if ([v23 count])
          {
            v36 = [HDDatabaseJournal _journalEntriesFromChapterEnties:v23];
            v37 = [v36 firstObject];
            [objc_opt_class() applyEntries:v36 withProfile:v77];

            v38 = [v36 firstObject];
            v39 = [v38 entryClassName];
            v40 = v94[3];
            [v98[5] timeIntervalSinceNow];
            [v78 addWithClassName:v39 size:v40 duration:-v41];
          }

          v42 = objc_msgSend_copy(v24);
          v43 = v80[9];
          v80[9] = v42;

          _Block_object_dispose(&v93, 8);
          _Block_object_dispose(&v97, 8);

          break;
        }
      }
    }

    v44 = *(v76 + 40);
    v45 = *(v76 + 96);
    v46 = *(v76 + 64);
    v47 = *(v76 + 56);
    v48 = v46;
    v49 = v48;
    if (!v44)
    {
      v59 = 0;
      goto LABEL_61;
    }

    if (v45 != 3)
    {
      v59 = 1;
LABEL_61:

      _HKInitializeLogging();
      v66 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v67 = v66;
        v68 = v67;
        v69 = *(v76 + 88);
        if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
        {
          v70 = [*(v76 + 32) name];
          *buf = 138543618;
          *&buf[4] = v70;
          v104 = 1024;
          v105 = v59;
          _os_signpost_emit_with_name_impl(&dword_228986000, v68, OS_SIGNPOST_INTERVAL_END, v69, "merge-journal-chapter-merge-entries", "chapter=%{public}@ success=%{BOOL}d", buf, 0x12u);
        }
      }

      if (v59)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      goto LABEL_69;
    }

    v50 = [v48 databaseForEntityProtectionClass:2];
    *buf = 0;
    v51 = [(HDSQLiteEntity *)HDDataEntity maxPersistentIDWithPredicate:0 database:v50 error:buf];
    v52 = *buf;
    v53 = v52;
    if (v51)
    {
      v54 = [v51 longLongValue];
      v55 = [v47 currentSyncIdentityPersistentID];
      v82[0] = 0;
      v56 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity setOkemoZursObjectAnchor:v54 syncIdentity:v55 database:v50 error:v82];
      v57 = v82[0];
      v58 = v57;
      if (v56)
      {

LABEL_54:
        v59 = 1;
        goto LABEL_60;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Failed to set object anchor" underlyingError:v57];
    }

    else
    {
      if (!v52)
      {
        goto LABEL_54;
      }

      if (a5)
      {
        v64 = v52;
        v59 = 0;
        *a5 = v53;
LABEL_60:

        goto LABEL_61;
      }

      _HKLogDroppedError();
    }

    v59 = 0;
    goto LABEL_60;
  }

  v81 = 0;
  v13 = (*(v12 + 16))(v12, &v81);
  v14 = v81;
  if (v13)
  {
    v74 = v14;
    goto LABEL_10;
  }

  v60 = v14;
  _HKInitializeLogging();
  v61 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v60;
    _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "Journal merge aborted: should-continue handler returned NO: %{public}@", buf, 0xCu);
  }

  v62 = v60;
  v74 = v62;
  if (v62)
  {
    if (a5)
    {
      v63 = v62;
      v62 = v74;
      *a5 = v74;
    }

    else
    {
      _HKLogDroppedError();
      v62 = v74;
    }
  }

  v65 = 0;
LABEL_69:

  return v65;
}

uint64_t __58__HDDatabaseJournal__mergeJournalEntries_metrics_profile___block_invoke(uint64_t a1)
{
  v2 = [HDDatabaseJournal _journalEntriesFromChapterEnties:?];
  v3 = [v2 firstObject];
  [objc_opt_class() applyEntries:v2 withProfile:*(a1 + 40)];

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(*(a1 + 64) + 8) + 24);
  [*(*(*(a1 + 72) + 8) + 40) timeIntervalSinceNow];
  [v4 addWithClassName:v5 size:v6 duration:-v7];
  [*(a1 + 32) removeAllObjects];
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

+ (id)_journalEntriesFromChapterEnties:(uint64_t)enties
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_384_1];

  return v3;
}

id __54__HDDatabaseJournal__journalEntriesFromChapterEnties___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = [a2 deserializedEntryWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Unable to deserialize journal entry: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)resetJournalMergeInterruptionsCount
{
  os_unfair_lock_lock(&self->_interruptionsInfoLock);
  [(NSMutableDictionary *)self->_journalMergeInterruptions removeAllObjects];

  os_unfair_lock_unlock(&self->_interruptionsInfoLock);
}

- (id)journalMergeInterruptions
{
  os_unfair_lock_lock(&self->_interruptionsInfoLock);
  v3 = objc_msgSend_copy(self->_journalMergeInterruptions);
  os_unfair_lock_unlock(&self->_interruptionsInfoLock);

  return v3;
}

- (void)_unitTesting_closeCurrentJournalChapter
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__HDDatabaseJournal__unitTesting_closeCurrentJournalChapter__block_invoke;
  v2[3] = &unk_278613968;
  v2[4] = self;
  [(HDDatabaseJournal *)self _executeAtomically:v2];
}

- (HDDatabaseJournalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end