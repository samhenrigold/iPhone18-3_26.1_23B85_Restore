@interface HDNotificationInstructionQueryServer
- (void)_queue_start;
@end

@implementation HDNotificationInstructionQueryServer

- (void)_queue_start
{
  v48 = *MEMORY[0x277D85DE8];
  configuration = [(HDQueryServer *)self configuration];
  debugIdentifier = [configuration debugIdentifier];

  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC300];
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    v8 = *&buf[4];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Started", buf, 0x16u);
  }

  v39.receiver = self;
  v39.super_class = HDNotificationInstructionQueryServer;
  [(HDQueryServer *)&v39 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__195;
  v46 = __Block_byref_object_dispose__195;
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v11 = [HDNotificationInstructionDiagnostics alloc];
  profile = [(HDQueryServer *)self profile];
  v13 = [(HDNotificationInstructionDiagnostics *)v11 initWithProfile:profile];

  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__HDNotificationInstructionQueryServer__queue_start__block_invoke;
  v23[3] = &unk_27862E4D8;
  v23[4] = self;
  v25 = &v31;
  v26 = buf;
  v14 = remoteObjectProxy;
  v24 = v14;
  v27 = &v35;
  v28 = v30;
  v15 = [(HDNotificationInstructionDiagnostics *)v13 enumerateAllNotificationInstructionsWithError:&v29 enumerationHandler:v23];
  v16 = v29;
  if ((v32[3] & 1) == 0)
  {
    if (v15)
    {
      v17 = *(*&buf[8] + 40);
      v18 = *(v36 + 24);
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v14 client_deliverNotificationInstructions:v17 clearPending:v18 isFinalBatch:1 queryUUID:queryUUID];
    }

    else
    {
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v14 client_deliverError:v16 forQuery:queryUUID];
    }
  }

  _HKInitializeLogging();
  v20 = *v5;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    *v40 = 138543618;
    v41 = v21;
    v42 = 2114;
    v43 = debugIdentifier;
    v22 = v21;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Finished", v40, 0x16u);
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);
}

uint64_t __52__HDNotificationInstructionQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:128 description:@"Query suspended or aborted"];
    v6 = 0;
  }

  else
  {
    if ([*(*(*(a1 + 56) + 8) + 40) count] >= 0xC8)
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = *(*(*(a1 + 64) + 8) + 24);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) queryUUID];
      [v9 client_deliverNotificationInstructions:v7 clearPending:v8 isFinalBatch:0 queryUUID:v10];

      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
    ++*(*(*(a1 + 72) + 8) + 24);
    v6 = 1;
  }

  return v6;
}

@end