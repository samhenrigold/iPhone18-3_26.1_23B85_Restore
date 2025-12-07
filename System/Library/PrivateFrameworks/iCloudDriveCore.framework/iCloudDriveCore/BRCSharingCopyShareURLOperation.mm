@interface BRCSharingCopyShareURLOperation
- (BRCSharingCopyShareURLOperation)initWithShare:(id)share zone:(id)zone sessionContext:(id)context;
- (id)createActivity;
- (void)_completedWithURL:(id)l error:(id)error;
- (void)main;
@end

@implementation BRCSharingCopyShareURLOperation

- (BRCSharingCopyShareURLOperation)initWithShare:(id)share zone:(id)zone sessionContext:(id)context
{
  contextCopy = context;
  zoneCopy = zone;
  shareCopy = share;
  recordID = [shareCopy recordID];
  recordName = [recordID recordName];
  v13 = [@"sharing/copy-shareURL" stringByAppendingPathComponent:recordName];

  v16.receiver = self;
  v16.super_class = BRCSharingCopyShareURLOperation;
  v14 = [(BRCSharingModifyShareOperation *)&v16 initWithName:v13 zone:zoneCopy share:shareCopy sessionContext:contextCopy];

  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/copy-shareURL", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_completedWithURL:(id)l error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  errorCopy = error;
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    share = self->super._share;
    v13 = 138413058;
    v14 = lCopy;
    v15 = 2112;
    v16 = share;
    v17 = 2112;
    v18 = errorCopy;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished copying URL %@ for share %@ error %@%@", &v13, 0x2Au);
  }

  if (lCopy)
  {
    [v8 setObject:lCopy forKeyedSubscript:@"url"];
  }

  v11 = self->super._share;
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@"share"];
  }

  [(_BRCOperation *)self completedWithResult:v8 error:errorCopy];
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__BRCSharingCopyShareURLOperation_main__block_invoke;
  v2[3] = &unk_2784FFCE0;
  v2[4] = self;
  [(BRCSharingModifyShareOperation *)self _performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey:1 completion:v2];
}

void __39__BRCSharingCopyShareURLOperation_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!a3)
  {
    v5 = [v4[65] clientZone];
    v6 = [v5 itemByItemID:*(*(a1 + 32) + 536)];

    v7 = [v6 st];
    v8 = [v7 logicalName];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9[66] brc_updateWithLogicalName:v8 isFolder:{objc_msgSend(v6, "isDirectory")}];
      [*(*(a1 + 32) + 544) brc_updateWithLogicalName:v8 isFolder:{objc_msgSend(v6, "isDirectory")}];
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(*(a1 + 32) + 528);
        *buf = 138412546;
        v39 = v34;
        v40 = 2112;
        v41 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Share: %@%@", buf, 0x16u);
      }

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(*(a1 + 32) + 544);
        *buf = 138412546;
        v39 = v35;
        v40 = 2112;
        v41 = v12;
        _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Prepared record: %@%@", buf, 0x16u);
      }

      if (([*(*(a1 + 32) + 528) isKnownToServer] & 1) == 0)
      {
        v14 = *(a1 + 32);
        v15 = *(v14 + 528);
        v16 = [*(v14 + 520) metadataSyncContext];
        v17 = [v16 ckContainerID];
        [v15 CKAssignToContainerWithID:v17];
      }

      if (([*(*(a1 + 32) + 544) isKnownToServer] & 1) == 0)
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 544);
        v20 = [*(v18 + 520) metadataSyncContext];
        v21 = [v20 ckContainerID];
        [v19 CKAssignToContainerWithID:v21];
      }

      if ([*(*(a1 + 32) + 528) brc_safeToGetURL])
      {
        v22 = [*(*(a1 + 32) + 528) URL];

        if (v22)
        {
          v23 = *(a1 + 32);
          v24 = v23[66];
LABEL_20:
          v26 = [v24 URL];
          [v23 _completedWithURL:v26 error:0];
LABEL_28:

          return;
        }
      }

      if ([*(*(a1 + 32) + 544) brc_safeToGetURL])
      {
        v25 = [*(*(a1 + 32) + 544) URL];

        if (v25)
        {
          v23 = *(a1 + 32);
          v24 = v23[68];
          goto LABEL_20;
        }
      }

      v9 = *(a1 + 32);
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        v36 = *(*(a1 + 32) + 528);
        *buf = 138412546;
        v39 = v36;
        v40 = 2112;
        v41 = v32;
        _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't get a share URL for %@%@", buf, 0x16u);
      }

      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CFACB0];
      v37 = *(*(a1 + 32) + 528);
      v31 = @"unreachable: Couldn't get a share URL for %@";
    }

    else
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        __39__BRCSharingCopyShareURLOperation_main__block_invoke_cold_1();
      }

      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CFACB0];
      v31 = @"unreachable: Couldn't get a share URL";
    }

    v26 = [v29 br_errorWithDomain:v30 code:15 description:{v31, v37}];
    [v9 completedWithResult:0 error:v26];
    goto LABEL_28;
  }

  [v4 completedWithResult:0 error:a3];
}

@end