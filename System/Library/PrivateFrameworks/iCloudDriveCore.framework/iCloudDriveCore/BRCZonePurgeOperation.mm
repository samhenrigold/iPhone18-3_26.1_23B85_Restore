@interface BRCZonePurgeOperation
- (BRCZonePurgeOperation)initWithServerZone:(id)zone sessionContext:(id)context;
- (id)createActivity;
- (void)main;
@end

@implementation BRCZonePurgeOperation

- (BRCZonePurgeOperation)initWithServerZone:(id)zone sessionContext:(id)context
{
  zoneCopy = zone;
  contextCopy = context;
  session = [zoneCopy session];
  syncContextProvider = [session syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  v14.receiver = self;
  v14.super_class = BRCZonePurgeOperation;
  v12 = [(_BRCOperation *)&v14 initWithName:@"sync/zone-purge" syncContext:defaultSyncContext sessionContext:contextCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_serverZone, zone);
    [(_BRCOperation *)v12 setNonDiscretionary:1];
  }

  return v12;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/zone-purge", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = self->_serverZone;
  session = [(BRCServerZone *)self->_serverZone session];
  v6 = dispatch_group_create();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __29__BRCZonePurgeOperation_main__block_invoke;
  v33[3] = &unk_278504EC0;
  v7 = v4;
  v34 = v7;
  v8 = v3;
  v35 = v8;
  [session enumerateServerZones:v33];
  v9 = objc_alloc(MEMORY[0x277CBC490]);
  zoneID = [(BRCServerZone *)v7 zoneID];
  v38[0] = zoneID;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v12 = [v9 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v11];

  [v12 setMarkZonesAsUserPurged:1];
  callbackQueue = [v12 callbackQueue];
  callbackQueue2 = [(_BRCOperation *)self callbackQueue];
  dispatch_set_target_queue(callbackQueue, callbackQueue2);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __29__BRCZonePurgeOperation_main__block_invoke_2;
  v29[3] = &unk_278504EE8;
  v32 = v36;
  v29[4] = self;
  v15 = v7;
  v30 = v15;
  v16 = v6;
  v31 = v16;
  [v12 setModifyRecordZonesCompletionBlock:v29];
  dispatch_group_enter(v16);
  [(_BRCOperation *)self addSubOperation:v12];
  if ([v8 count])
  {
    v17 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v8];

    callbackQueue3 = [v17 callbackQueue];
    callbackQueue4 = [(_BRCOperation *)self callbackQueue];
    dispatch_set_target_queue(callbackQueue3, callbackQueue4);

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __29__BRCZonePurgeOperation_main__block_invoke_5;
    v25[3] = &unk_278504EE8;
    v28 = v36;
    v25[4] = self;
    v26 = v15;
    v20 = v16;
    v27 = v20;
    [v17 setModifyRecordZonesCompletionBlock:v25];
    dispatch_group_enter(v20);
    syncContextProvider = [session syncContextProvider];
    sharedMetadataSyncContext = [syncContextProvider sharedMetadataSyncContext];
    [(_BRCOperation *)self addSubOperation:v17 overrideContext:sharedMetadataSyncContext allowsCellularAccess:0];
  }

  else
  {
    v17 = v12;
  }

  callbackQueue5 = [(_BRCOperation *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BRCZonePurgeOperation_main__block_invoke_6;
  block[3] = &unk_278502000;
  block[4] = self;
  block[5] = v36;
  dispatch_group_notify(v16, callbackQueue5, block);

  _Block_object_dispose(v36, 8);
}

uint64_t __29__BRCZonePurgeOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSharedZone])
  {
    v4 = [v3 zoneName];
    v5 = [*(a1 + 32) zoneName];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [v3 zoneID];
      [v7 addObject:v8];
    }
  }

  return 1;
}

void __29__BRCZonePurgeOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 56) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
      [*(a1 + 32) completedWithResult:0 error:v9];
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __29__BRCZonePurgeOperation_main__block_invoke_2_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __29__BRCZonePurgeOperation_main__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 56) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
      [*(a1 + 32) completedWithResult:0 error:v9];
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __29__BRCZonePurgeOperation_main__block_invoke_5_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void *__29__BRCZonePurgeOperation_main__block_invoke_6(void *result)
{
  v1 = *(*(result + 5) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return [*(result + 4) completedWithResult:0 error:0];
  }

  return result;
}

@end