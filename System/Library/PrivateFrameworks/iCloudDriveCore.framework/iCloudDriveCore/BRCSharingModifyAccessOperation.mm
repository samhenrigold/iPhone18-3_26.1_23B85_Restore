@interface BRCSharingModifyAccessOperation
- (BRCSharingModifyAccessOperation)initWithItem:(id)item allowAccess:(BOOL)access sessionContext:(id)context;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingModifyAccessOperation

- (BRCSharingModifyAccessOperation)initWithItem:(id)item allowAccess:(BOOL)access sessionContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  itemID = [itemCopy itemID];
  debugItemIDString = [itemID debugItemIDString];
  v13 = [@"sharing/modifyAccess" stringByAppendingPathComponent:debugItemIDString];

  serverZone = [itemCopy serverZone];
  metadataSyncContext = [serverZone metadataSyncContext];
  v19.receiver = self;
  v19.super_class = BRCSharingModifyAccessOperation;
  v16 = [(_BRCOperation *)&v19 initWithName:v13 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v16)
  {
    [(_BRCOperation *)v16 setNonDiscretionary:1];
    objc_storeStrong(&v16->_document, item);
    v16->_allowAccess = access;
    br_sharingMisc = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v16 setGroup:br_sharingMisc];
  }

  return v16;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/modifyAccess", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemID = [(BRCLocalItem *)self->_document itemID];
  serverZone = [(BRCLocalItem *)self->_document serverZone];
  zoneID = [serverZone zoneID];
  v6 = [itemID contentsRecordIDInZoneID:zoneID];

  v7 = objc_alloc(MEMORY[0x277CBC488]);
  allowAccess = self->_allowAccess;
  if (!allowAccess)
  {
    v9 = 0;
LABEL_5:
    v22 = v6;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v10 = [v7 initWithRecordIDsToGrantAccess:v9 recordIDsToRevokeAccess:v11];

    if (!allowAccess)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v23[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  if (!self->_allowAccess)
  {
    goto LABEL_5;
  }

  v10 = [v7 initWithRecordIDsToGrantAccess:v9 recordIDsToRevokeAccess:0];
LABEL_6:

LABEL_7:
  if (self->_allowAccess)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __39__BRCSharingModifyAccessOperation_main__block_invoke;
    v21[3] = &unk_278506910;
    v21[4] = self;
    [v10 setRecordAccessGrantedBlock:v21];
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __39__BRCSharingModifyAccessOperation_main__block_invoke_2;
  v18 = &unk_278506938;
  selfCopy = self;
  v20 = v6;
  v12 = v6;
  [v10 setRecordAccessCompletionBlock:&v15];
  callbackQueue = [v10 callbackQueue];
  callbackQueue2 = [(_BRCOperation *)self callbackQueue];
  dispatch_set_target_queue(callbackQueue, callbackQueue2);

  [(_BRCOperation *)self addSubOperation:v10];
}

void __39__BRCSharingModifyAccessOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 536);
  *(v8 + 536) = v6;
  v12 = v6;

  v10 = *(a1 + 32);
  v11 = *(v10 + 544);
  *(v10 + 544) = v7;
}

void __39__BRCSharingModifyAccessOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 && !v8 && !v9)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __39__BRCSharingModifyAccessOperation_main__block_invoke_2_cold_1();
    }

    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no dict and no error"];
  }

  if (v10)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      v21 = *(a1 + 40);
      v22 = @"granting";
      if (!*(*(a1 + 32) + 528))
      {
        v22 = @"revoking";
      }

      v23 = 138413058;
      v24 = v22;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v13;
      _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] Failed %@ access to %@ - %@%@", &v23, 0x2Au);
    }

    [*(a1 + 32) completedWithResult:0 error:v10];
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __39__BRCSharingModifyAccessOperation_main__block_invoke_2_cold_2();
    }

    v17 = objc_opt_new();
    v18 = *(a1 + 32);
    v19 = v18[67];
    if (v19)
    {
      [v17 setObject:v19 forKeyedSubscript:@"accessToken"];
      v18 = *(a1 + 32);
    }

    v20 = v18[68];
    if (v20)
    {
      [v17 setObject:v20 forKeyedSubscript:@"referenceIdentifier"];
      v18 = *(a1 + 32);
    }

    [v18 completedWithResult:v17 error:0];
  }
}

@end