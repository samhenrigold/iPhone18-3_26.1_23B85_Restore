@interface HDStaticSyncExportTask
- (BOOL)syncSession:(id)session didEndTransactionWithError:(id *)error;
- (HDStaticSyncExportTask)initWithProfile:(id)profile options:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l batchSize:(unint64_t)size;
- (id)runWithCompletion:(id)completion;
- (void)syncSession:(id)session didFinishSuccessfully:(BOOL)successfully error:(id)error;
- (void)syncSession:(id)session sendChanges:(id)changes completion:(id)completion;
- (void)syncSessionWillBegin:(id)begin;
@end

@implementation HDStaticSyncExportTask

- (HDStaticSyncExportTask)initWithProfile:(id)profile options:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l batchSize:(unint64_t)size
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = HDStaticSyncExportTask;
  v14 = [(HDStaticSyncTask *)&v18 initWithProfile:profile options:options storeIdentifier:identifier];
  if (v14)
  {
    v15 = HKCreateSerialDispatchQueue();
    exportQueue = v14->_exportQueue;
    v14->_exportQueue = v15;

    objc_storeStrong(&v14->_exportDirectoryURL, l);
    v14->_batchSize = size;
  }

  return v14;
}

- (id)runWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1000];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v7 = self->super._storeIdentifier;
      v8 = v7;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v6;
    v10 = HKStaticSyncOptionsToString();
    *buf = 138544130;
    selfCopy = self;
    v22 = 2080;
    v23 = "[HDStaticSyncExportTask runWithCompletion:]";
    v24 = 2114;
    v25 = v7;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: %s: storeIdentifier = %{public}@, options = %{public}@", buf, 0x2Au);
  }

  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDStaticSyncExportTask_runWithCompletion___block_invoke;
  block[3] = &unk_278616D18;
  block[4] = self;
  v19 = completionCopy;
  v12 = v5;
  v18 = v12;
  v13 = completionCopy;
  dispatch_async(queue, block);
  v14 = v18;
  v15 = v12;

  return v12;
}

void __44__HDStaticSyncExportTask_runWithCompletion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__46;
  v42 = __Block_byref_object_dispose__46;
  v43 = 0;
  v2 = [_HDStaticSyncStore alloc];
  v3 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = *(v3 + 24);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = v3;
  v6 = (v39 + 5);
  obj = v39[5];
  v7 = [(_HDStaticSyncStore *)v2 initWithProfile:WeakRetained storeIdentifier:v5 error:&obj];
  objc_storeStrong(v6, obj);

  if (!v7)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_33;
  }

  v8 = *(a1 + 32);
  if (!v8 || (v9 = *(v8 + 16), (v9 & 1) == 0))
  {
    v10 = objc_alloc_init(HDSyncAnchorMap);
    v11 = (v39 + 5);
    v36 = v39[5];
    v12 = v10;
    v13 = objc_loadWeakRetained(v7 + 2);
    v14 = [HDSyncAnchorEntity setAcknowledgedAnchorsWithMap:v12 store:v7 resetNext:1 resetInvalid:1 profile:v13 error:&v36];

    objc_storeStrong(v11, v36);
    if (!v14)
    {
      (*(*(a1 + 48) + 16))();
LABEL_32:

      goto LABEL_33;
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
LABEL_21:
      objc_storeStrong((v8 + 64), *(a1 + 40));
      v12 = [(HDSyncSession *)[_HDStaticSyncSession alloc] initWithSyncStore:v7 reason:@"Static Sync" delegate:*(a1 + 32)];
      [(HDSyncSession *)v12 setDatabaseAccessibilityTimeout:300.0];
      _HKInitializeLogging();
      v21 = MEMORY[0x277CCC328];
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = *(a1 + 32);
          v25 = [(HDSyncSession *)v12 syncStore];
          *v50 = 138543618;
          *&v50[4] = v24;
          *&v50[12] = 2114;
          *&v50[14] = v25;
          _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_INFO, "%{public}@: start performSyncSession: %{public}@", v50, 0x16u);
        }
      }

      v26 = *(a1 + 32);
      if (v26)
      {
        v27 = objc_loadWeakRetained((v26 + 8));
      }

      else
      {
        v27 = 0;
      }

      v28 = [v27 syncEngine];
      v29 = (v39 + 5);
      v34 = v39[5];
      [v28 performSyncSession:v12 accessibilityAssertion:0 error:&v34];
      objc_storeStrong(v29, v34);

      _HKInitializeLogging();
      v30 = *v21;
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = *(a1 + 32);
          v33 = [(HDSyncSession *)v12 syncStore];
          *v50 = 138543618;
          *&v50[4] = v32;
          *&v50[12] = 2114;
          *&v50[14] = v33;
          _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_INFO, "%{public}@: finshed performSyncSession: %{public}@", v50, 0x16u);
        }
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_32;
    }

    v9 = *(v8 + 16);
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_21;
  }

  *v50 = 0;
  *&v50[8] = v50;
  *&v50[16] = 0x2020000000;
  v51 = 1;
  v15 = *(v8 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDStaticSyncExportTask_runWithCompletion___block_invoke_319;
  block[3] = &unk_27861A1D0;
  block[4] = v8;
  block[5] = &v38;
  block[6] = v50;
  dispatch_sync(v15, block);
  v16 = *(*&v50[8] + 24);
  if (v16)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = [*(v19 + 112) path];
        *buf = 138543874;
        v45 = v19;
        v46 = 2114;
        v47 = v7;
        v48 = 2114;
        v49 = v20;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: export static sync data to %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(v50, 8);
  if (v16)
  {
    v8 = *(a1 + 32);
    goto LABEL_21;
  }

LABEL_33:

  _Block_object_dispose(&v38, 8);
}

void __44__HDStaticSyncExportTask_runWithCompletion___block_invoke_319(void *a1)
{
  *(a1[4] + 48) = 1;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 112);
  v5 = *(a1[5] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  obj = v7;
  v8 = v3;
  v9 = v4;
  objc_opt_self();
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v11 = v9;
  v12 = v11;
  if (!v11)
  {
    v12 = [v10 temporaryDirectory];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"staticSync-%@", v8];
  v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:1];
  [v10 removeItemAtURL:v14 error:0];
  v15 = 0;
  if ([v10 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&obj])
  {
    v15 = v14;
  }

  objc_storeStrong(v6, obj);
  v16 = a1[4];
  v17 = *(v16 + 112);
  *(v16 + 112) = v15;

  *(*(a1[6] + 8) + 24) = *(a1[4] + 112) != 0;
}

uint64_t __82__HDStaticSyncExportTask__estimateSyncEntityClassesWithChangesForSession_profile___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [a1[4] syncStore];
  v6 = [v5 orderedSyncEntities];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 syncEntityIdentifier];
        v13 = [a1[4] syncStore];
        v14 = [HDSyncAnchorEntity syncAnchorOfType:0 entityIdentifier:v12 store:v13 profile:a1[5] error:a3];

        v15 = a1[4];
        v16 = a1[5];
        v17 = v15;
        objc_opt_self();
        v18 = [v11 nextSyncAnchorWithSession:v17 startSyncAnchor:v14 profile:v16 error:a3];

        if (v14 < 0 || v18 < 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Invalid anchor(s) (%lld, %lld) for %@", v14, v18, v11}];
          v19 = 0;
          goto LABEL_14;
        }

        if (v18 != v14)
        {
          [a1[6] addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_14:

  return v19;
}

- (void)syncSessionWillBegin:(id)begin
{
  v18 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    syncStore = [beginCopy syncStore];
    *buf = 138543874;
    selfCopy = self;
    v14 = 2080;
    v15 = "[HDStaticSyncExportTask syncSessionWillBegin:]";
    v16 = 2114;
    v17 = syncStore;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@", buf, 0x20u);
  }

  exportQueue = self->_exportQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HDStaticSyncExportTask_syncSessionWillBegin___block_invoke;
  v10[3] = &unk_278613920;
  v10[4] = self;
  v11 = beginCopy;
  v9 = beginCopy;
  dispatch_async(exportQueue, v10);
}

void __47__HDStaticSyncExportTask_syncSessionWillBegin___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    *(v2 + 96) = 0;
    *(*(a1 + 32) + 104) = 0;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (!v2)
    {
      WeakRetained = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  WeakRetained = objc_loadWeakRetained((v2 + 8));
LABEL_6:
  v5 = v3;
  v6 = WeakRetained;
  v7 = objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v6 database];
  v29 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__HDStaticSyncExportTask__estimateSyncEntityClassesWithChangesForSession_profile___block_invoke;
  v24[3] = &unk_278613550;
  v10 = v5;
  v25 = v10;
  v11 = v6;
  v26 = v11;
  v28 = v7;
  v12 = v8;
  v27 = v12;
  v13 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v9 error:&v29 block:v24];
  v14 = v29;

  if (v13)
  {
    v23 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v14;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: error estimating (for progress reporting) sync entity classes with changes to sync: %{public}@", buf, 0x16u);
    }

    v16 = [v10 syncStore];
    v23 = [v16 orderedSyncEntities];
  }

  v17 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:objc_msgSend(v23 parent:"count") pendingUnitCount:{*(*(a1 + 32) + 64), objc_msgSend(*(*(a1 + 32) + 64), "totalUnitCount")}];
  v18 = *(a1 + 32);
  v19 = *(v18 + 72);
  *(v18 + 72) = v17;

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = *(a1 + 32);
  v22 = *(v21 + 80);
  *(v21 + 80) = v20;
}

- (void)syncSession:(id)session sendChanges:(id)changes completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    syncStore = [sessionCopy syncStore];
    *buf = 138543874;
    selfCopy = self;
    v24 = 2080;
    v25 = "[HDStaticSyncExportTask syncSession:sendChanges:completion:]";
    v26 = 2114;
    v27 = syncStore;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@", buf, 0x20u);
  }

  exportQueue = self->_exportQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__HDStaticSyncExportTask_syncSession_sendChanges_completion___block_invoke;
  v18[3] = &unk_278613680;
  v18[4] = self;
  v19 = changesCopy;
  v20 = sessionCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = sessionCopy;
  v17 = changesCopy;
  dispatch_async(exportQueue, v18);
}

void __61__HDStaticSyncExportTask_syncSession_sendChanges_completion___block_invoke(uint64_t a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = v3;
    dispatch_assert_queue_V2(*(v2 + 40));
    if (!*(v2 + 88))
    {
      *(v2 + 96) = 0;
      v6 = *(v2 + 112);
      v7 = *(v2 + 104);
      v8 = v5;
      v9 = v6;
      objc_opt_self();
      v10 = MEMORY[0x277CCACA8];
      v11 = [v8 sessionUUID];

      v12 = [v10 stringWithFormat:@"syncarchive-%@-%llu", v11, v7];

      v13 = [v9 URLByAppendingPathComponent:v12];

      v14 = [v13 URLByAppendingPathExtension:@"zip"];

      v15 = [objc_alloc(MEMORY[0x277CCDD18]) initWithURL:v14 archiveType:0];
      v16 = *(v2 + 88);
      *(v2 + 88) = v15;

      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = [v8 syncStore];
        v20 = [*(v2 + 88) archiveURL];
        v21 = [v20 path];
        *buf = 138543874;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        v94 = 2114;
        v95 = v21;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: create archive %{public}@", buf, 0x20u);
      }
    }

    v22 = *(v2 + 88);
    v23 = v4;
    objc_opt_self();
    v24 = [HDCodableStaticSyncChangeSet changeSetWithChanges:v23];

    v25 = [v24 data];

    v26 = *(v2 + 96);
    objc_opt_self();
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/changeset-%04llu", v26];
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27 isDirectory:0];

    [v22 addDataToArchive:v25 pathInArchive:v28];
    ++*(v2 + 96);
    if (*(v2 + 56))
    {
      v29 = objc_alloc_init(MEMORY[0x277CCAA00]);
      v30 = [*(v2 + 88) archiveURL];
      v31 = [v30 path];
      *buf = 0;
      v32 = [v29 attributesOfItemAtPath:v31 error:buf];
      v33 = *buf;

      if (v32)
      {
        if ([v32 fileSize] <= *(v2 + 56))
        {
          v35 = 0;
          v36 = 1;
        }

        else
        {
          [*(v2 + 88) closeArchive];
          v34 = *(v2 + 88);
          *(v2 + 88) = 0;

          v35 = 0;
          ++*(v2 + 104);
          v36 = 2;
        }
      }

      else
      {
        v37 = v33;
        v35 = v37;
        if (v37)
        {
          v38 = v37;
        }

        v36 = 0;
      }
    }

    else
    {
      v35 = 0;
      v36 = 1;
    }

    v39 = v35;
    v40 = v39;
    if (!v36)
    {
      v83 = *(*(a1 + 56) + 16);
      goto LABEL_48;
    }
  }

  v40 = objc_alloc_init(HDSyncAnchorRangeMap);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = *(a1 + 40);
  v41 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
  if (!v41)
  {
    goto LABEL_43;
  }

  v42 = v41;
  v43 = &off_278633000;
  v87 = *v89;
  v85 = v40;
  while (2)
  {
    v44 = 0;
    v84 = v43[466];
    do
    {
      if (*v89 != v87)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*(&v88 + 1) + 8 * v44);
      v46 = *(*(a1 + 32) + 80);
      v47 = [v45 syncEntityIdentifier];
      LOBYTE(v46) = [v46 containsObject:v47];

      if ((v46 & 1) == 0)
      {
        v48 = *(*(a1 + 32) + 80);
        v49 = [v45 syncEntityIdentifier];
        [v48 addObject:v49];

        [*(*(a1 + 32) + 72) setCompletedUnitCount:{objc_msgSend(*(*(a1 + 32) + 80), "count")}];
      }

      v50 = v40;
      v51 = v45;
      objc_opt_self();
      *buf = 0;
      *&buf[8] = 0;
      v52 = [v51 syncEntityIdentifier];
      v53 = [(HDSyncAnchorRangeMap *)v50 getAnchorRange:buf forSyncEntityIdentifier:v52];

      if (!v53)
      {
        v55 = [v51 syncAnchorRange];
        v57 = v56;
        v58 = [v51 syncEntityIdentifier];
        [(HDSyncAnchorRangeMap *)v50 setAnchorRange:v55 forSyncEntityIdentifier:v57, v58];
        v59 = 0;
        v60 = 1;
        goto LABEL_40;
      }

      v54 = [v51 sequenceNumber];
      if ([v54 integerValue])
      {
      }

      else
      {
        v61 = [v51 syncAnchorRange];
        v62 = *&buf[8];

        if (v61 != v62)
        {
          v73 = MEMORY[0x277CCA9B8];
          v74 = objc_opt_class();
          v75 = [v51 syncAnchorRange];
          v76 = *&buf[8];
          v58 = [v51 sequenceNumber];
          [v73 hk_errorForInvalidArgument:@"@" class:v74 selector:v84 format:{@"startAnchor (%lld) != previous endAnchor (%lld), sequence (%@)", v75, v76, v58}];
          v77 = LABEL_36:;
          v59 = v77;
          if (v77)
          {
            v78 = v77;
          }

          v60 = 0;
          goto LABEL_39;
        }
      }

      v63 = [v51 sequenceNumber];
      if ([v63 integerValue] < 1)
      {
      }

      else
      {
        [v51 syncAnchorRange];
        v65 = v64;
        v66 = *&buf[8];

        if (v65 != v66)
        {
          v67 = MEMORY[0x277CCA9B8];
          v68 = objc_opt_class();
          [v51 syncAnchorRange];
          v70 = v69;
          v71 = *&buf[8];
          v58 = [v51 sequenceNumber];
          [v67 hk_errorForInvalidArgument:@"@" class:v68 selector:v84 format:{@"endAnchor (%lld) != previous endAnchor (%lld), sequence (%@)", v70, v71, v58}];
          goto LABEL_36;
        }
      }

      [v51 syncAnchorRange];
      *&buf[8] = v72;
      v58 = [v51 syncEntityIdentifier];
      [(HDSyncAnchorRangeMap *)v50 setAnchorRange:*buf forSyncEntityIdentifier:*&buf[8], v58];
      v59 = 0;
      v60 = 1;
LABEL_39:
      v40 = v85;
LABEL_40:

      v79 = v59;
      v80 = v79;
      if ((v60 & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();

        v40 = v50;
        goto LABEL_49;
      }

      ++v44;
    }

    while (v42 != v44);
    v42 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
    v43 = &off_278633000;
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_43:

  _HKInitializeLogging();
  v81 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v82 = *(a1 + 32);
    *buf = 138543618;
    *&buf[4] = v82;
    *&buf[12] = 2114;
    *&buf[14] = v40;
    _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_INFO, "%{public}@: sendChanges for anchor ranges %{public}@", buf, 0x16u);
  }

  v83 = *(*(a1 + 56) + 16);
LABEL_48:
  v83();
LABEL_49:
}

- (BOOL)syncSession:(id)session didEndTransactionWithError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    syncStore = [sessionCopy syncStore];
    v10 = 138543874;
    selfCopy = self;
    v12 = 2080;
    v13 = "[HDStaticSyncExportTask syncSession:didEndTransactionWithError:]";
    v14 = 2114;
    v15 = syncStore;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@", &v10, 0x20u);
  }

  return 1;
}

- (void)syncSession:(id)session didFinishSuccessfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    syncStore = [sessionCopy syncStore];
    v13 = syncStore;
    v14 = @"NO";
    *buf = 138544386;
    v19 = 2080;
    v20 = "[HDStaticSyncExportTask syncSession:didFinishSuccessfully:error:]";
    selfCopy = self;
    v21 = 2114;
    if (successfullyCopy)
    {
      v14 = @"YES";
    }

    v22 = syncStore;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = errorCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@: success: %{public}@, error: %{public}@", buf, 0x34u);
  }

  exportQueue = self->_exportQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDStaticSyncExportTask_syncSession_didFinishSuccessfully_error___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(exportQueue, block);
}

uint64_t __66__HDStaticSyncExportTask_syncSession_didFinishSuccessfully_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    [*(v2 + 88) closeArchive];
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;

    v2 = *(a1 + 32);
  }

  v5 = [*(v2 + 72) totalUnitCount];
  v6 = *(*(a1 + 32) + 72);

  return [v6 setCompletedUnitCount:v5];
}

@end