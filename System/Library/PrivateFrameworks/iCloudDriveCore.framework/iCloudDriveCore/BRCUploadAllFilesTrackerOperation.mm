@interface BRCUploadAllFilesTrackerOperation
- (BRCUploadAllFilesTrackerOperation)initWithSessionContext:(id)context appLibraries:(id)libraries;
- (NSString)description;
- (void)cancel;
- (void)clientZone:(id)zone didFinishUploadingAllItemsWithError:(id)error;
- (void)main;
@end

@implementation BRCUploadAllFilesTrackerOperation

- (BRCUploadAllFilesTrackerOperation)initWithSessionContext:(id)context appLibraries:(id)libraries
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  librariesCopy = libraries;
  syncContextProvider = [contextCopy syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  v27.receiver = self;
  v27.super_class = BRCUploadAllFilesTrackerOperation;
  v10 = [(_BRCOperation *)&v27 initWithName:@"upload-tracker" syncContext:defaultSyncContext sessionContext:contextCopy];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = librariesCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          defaultClientZone = [*(*(&v23 + 1) + 8 * v16) defaultClientZone];
          [v11 addObject:defaultClientZone];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    allObjects = [v11 allObjects];
    v19 = [allObjects mutableCopy];
    zonesStillUploading = v10->_zonesStillUploading;
    v10->_zonesStillUploading = v19;

    br_logout = [MEMORY[0x277CBC4F8] br_logout];
    [(_BRCOperation *)v10 setGroup:br_logout];
  }

  return v10;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = BRCUploadAllFilesTrackerOperation;
  [(_BRCOperation *)&v6 cancel];
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BRCUploadAllFilesTrackerOperation_cancel__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __43__BRCUploadAllFilesTrackerOperation_cancel__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) finishIfCancelled])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(*(a1 + 32) + 520);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v9 + 1) + 8 * v6++) unregisterAllItemsDidUploadTracker:{*(a1 + 32), v9}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = 0;
  }
}

- (void)clientZone:(id)zone didFinishUploadingAllItemsWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  errorCopy = error;
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  [clientReadWriteDatabaseFacade assertOnQueue];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    zoneName = [zoneCopy zoneName];
    v21 = zoneName;
    *buf = 138413058;
    v22 = @"success";
    selfCopy = self;
    if (errorCopy)
    {
      v22 = errorCopy;
    }

    v27 = 2112;
    v28 = zoneName;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: finished uploading all items in %@: %@%@", buf, 0x2Au);
  }

  [(NSMutableArray *)self->_zonesStillUploading removeObject:zoneCopy];
  if (errorCopy)
  {
    perContainerIDError = self->_perContainerIDError;
    mangledID = [zoneCopy mangledID];
    aliasTargetContainerString = [mangledID aliasTargetContainerString];
    [(NSMutableDictionary *)perContainerIDError setObject:errorCopy forKeyedSubscript:aliasTargetContainerString];
  }

  if (![(NSMutableArray *)self->_zonesStillUploading count]&& self->_zonesStillUploading)
  {
    if ([(NSMutableDictionary *)self->_perContainerIDError count])
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CFABD0];
      v16 = [(NSMutableDictionary *)self->_perContainerIDError copy];
      v24 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [v14 errorWithDomain:v15 code:21 userInfo:v17];

      errorCopy = v18;
    }

    [(_BRCOperation *)self completedWithResult:0 error:errorCopy];
    zonesStillUploading = self->_zonesStillUploading;
    self->_zonesStillUploading = 0;
  }
}

- (void)main
{
  v23 = *MEMORY[0x277D85DE8];
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__BRCUploadAllFilesTrackerOperation_main__block_invoke;
  v14[3] = &unk_2784FF450;
  v14[4] = self;
  v5 = serialQueue;
  v6 = v14;
  v7 = objc_autoreleasePoolPush();
  v15 = 0uLL;
  v16 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v15);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    label = dispatch_queue_get_label(v5);
    *block = 134218498;
    *&block[4] = v12;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v18 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v21 = v15;
  v22 = v16;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_18;
  v18 = &unk_2784FF568;
  v10 = v5;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  dispatch_async(v10, block);

  objc_autoreleasePoolPop(v7);
}

void __41__BRCUploadAllFilesTrackerOperation_main__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    if ([*(*(a1 + 32) + 520) count])
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v2 = [*(*(a1 + 32) + 520) copy];
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v9;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v9 != v5)
            {
              objc_enumerationMutation(v2);
            }

            [*(*(&v8 + 1) + 8 * i) registerAllItemsDidUploadTracker:*(a1 + 32)];
          }

          v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v4);
      }
    }

    else
    {
      v7 = *(a1 + 32);

      [v7 completedWithResult:0 error:0];
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = BRCUploadAllFilesTrackerOperation;
  v4 = [(_BRCOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - zones still uploading: %@", v4, self->_zonesStillUploading];

  return v5;
}

@end