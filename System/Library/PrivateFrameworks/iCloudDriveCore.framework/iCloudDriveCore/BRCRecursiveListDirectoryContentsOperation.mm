@interface BRCRecursiveListDirectoryContentsOperation
- (BOOL)_finishIfBlockedFromListing;
- (BRCRecursiveListDirectoryContentsOperation)initWithItemID:(id)d sessionContext:(id)context zone:(id)zone isUserWaiting:(BOOL)waiting rescheduleApplyBlock:(id)block;
- (void)addRecursiveDirectoryListCompletionBlock:(id)block;
- (void)cancel;
- (void)fetchNextItemToList;
- (void)finishWithResult:(id)result error:(id)error;
- (void)listNextItem;
- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation;
- (void)listOrFetchNextItem;
- (void)main;
@end

@implementation BRCRecursiveListDirectoryContentsOperation

- (void)listOrFetchNextItem
{
  if ([(NSMutableSet *)self->_itemsToList count])
  {

    [(BRCRecursiveListDirectoryContentsOperation *)self listNextItem];
  }

  else
  {

    [(BRCRecursiveListDirectoryContentsOperation *)self fetchNextItemToList];
  }
}

- (void)listNextItem
{
  if (![(_BRCOperation *)self finishIfCancelled])
  {
    clientZone = [(BRCServerZone *)self->_serverZone clientZone];
    v4 = [clientZone db];
    serialQueue = [v4 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__BRCRecursiveListDirectoryContentsOperation_listNextItem__block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

void __58__BRCRecursiveListDirectoryContentsOperation_listNextItem__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _finishIfBlockedFromListing] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 528) anyObject];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3[66] removeObject:v2];
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 32);
        v17 = [v2 debugDescription];
        *buf = 138412802;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v4;
        _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ listing next item %@%@", buf, 0x20u);
      }

      v6 = [*(*(a1 + 32) + 520) clientZone];
      v7 = [v6 fetchDirectoryContentsIfNecessary:v2 isUserWaiting:objc_msgSend(*(a1 + 32) rescheduleApplyScheduler:{"nonDiscretionary"), objc_msgSend(*(a1 + 32), "rescheduleApply")}];

      v8 = *(a1 + 32);
      if (v7)
      {
        [v7 beginObservingChangesWithDelegate:v8];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __58__BRCRecursiveListDirectoryContentsOperation_listNextItem__block_invoke_192;
        v18[3] = &unk_2784FFFA8;
        v18[4] = *(a1 + 32);
        v19 = v2;
        [v7 addPreFlushDirectoryListCompletionBlock:v18];
        v9 = *(a1 + 32);
        objc_sync_enter(v9);
        objc_storeStrong((*(a1 + 32) + 544), v7);
        objc_sync_exit(v9);
      }

      else
      {
        if (([v2 isEqualToItemID:*(v8 + 536)] & 1) == 0)
        {
          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v2 debugItemIDString];
            *buf = 138412546;
            v21 = v15;
            v22 = 2112;
            v23 = v13;
            _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] ItemID %@ isn't able to be listed%@", buf, 0x16u);
          }
        }

        if ([*(*(a1 + 32) + 552) containsObject:v2])
        {
          __58__BRCRecursiveListDirectoryContentsOperation_listNextItem__block_invoke_cold_1();
        }

        [*(*(a1 + 32) + 552) addObject:v2];
        [*(a1 + 32) listOrFetchNextItem];
      }
    }

    else
    {
      v10 = [v3 rescheduleApply];
      v11 = *(a1 + 32);
      if (v10)
      {
        v12 = v11[71];
        if (v12)
        {
          (*(v12 + 16))(v11[71]);
          v11 = *(a1 + 32);
        }
      }

      [v11 completedWithResult:0 error:0];
    }
  }
}

- (BOOL)_finishIfBlockedFromListing
{
  v11 = *MEMORY[0x277D85DE8];
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  v4 = [clientZone _isSideSyncOperationBlockedWithName:@"rec-list fetch next item"];

  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't list anymore in the middle of a rec-list operation%@", &v9, 0xCu);
    }

    brc_errorSyncBlocked = [MEMORY[0x277CCA9B8] brc_errorSyncBlocked];
    [(_BRCOperation *)self completedWithResult:0 error:brc_errorSyncBlocked];
  }

  return v4;
}

- (BRCRecursiveListDirectoryContentsOperation)initWithItemID:(id)d sessionContext:(id)context zone:(id)zone isUserWaiting:(BOOL)waiting rescheduleApplyBlock:(id)block
{
  waitingCopy = waiting;
  dCopy = d;
  zoneCopy = zone;
  blockCopy = block;
  contextCopy = context;
  debugItemIDString = [dCopy debugItemIDString];
  v18 = [@"rec-list-dir/" stringByAppendingString:debugItemIDString];

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v31.receiver = self;
  v31.super_class = BRCRecursiveListDirectoryContentsOperation;
  v20 = [(_BRCOperation *)&v31 initWithName:v18 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v20)
  {
    [(_BRCOperation *)v20 setNonDiscretionary:waitingCopy];
    objc_storeStrong(&v20->_serverZone, zone);
    v21 = objc_opt_new();
    itemsToList = v20->_itemsToList;
    v20->_itemsToList = v21;

    objc_storeStrong(&v20->_rootItemID, d);
    v23 = objc_opt_new();
    itemsFailedListing = v20->_itemsFailedListing;
    v20->_itemsFailedListing = v23;

    br_listDirectoryContents = [MEMORY[0x277CBC4F8] br_listDirectoryContents];
    [(_BRCOperation *)v20 setGroup:br_listDirectoryContents];

    v26 = objc_opt_new();
    recursiveListCompletionBlocks = v20->_recursiveListCompletionBlocks;
    v20->_recursiveListCompletionBlocks = v26;

    v28 = MEMORY[0x22AA4A310](blockCopy);
    rescheduleApplyBlock = v20->_rescheduleApplyBlock;
    v20->_rescheduleApplyBlock = v28;
  }

  return v20;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCListDirectoryContentsOperation *)selfCopy->_activeListOp endObservingChangesWithDelegate:selfCopy];
  activeListOp = selfCopy->_activeListOp;
  selfCopy->_activeListOp = 0;

  objc_sync_exit(selfCopy);
  v4.receiver = selfCopy;
  v4.super_class = BRCRecursiveListDirectoryContentsOperation;
  [(_BRCOperation *)&v4 cancel];
}

- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation
{
  byOperationCopy = byOperation;
  if (self->_activeListOp == operation)
  {
    v8 = byOperationCopy;
    objc_storeStrong(&self->_activeListOp, byOperation);
    byOperationCopy = v8;
  }
}

- (void)fetchNextItemToList
{
  if (![(_BRCOperation *)self finishIfCancelled])
  {
    clientZone = [(BRCServerZone *)self->_serverZone clientZone];
    serverZone = [clientZone serverZone];
    v5 = [serverZone db];
    serialQueue = [v5 serialQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke;
    v8[3] = &unk_2784FF478;
    v8[4] = self;
    v9 = clientZone;
    v7 = clientZone;
    dispatch_async(serialQueue, v8);
  }
}

void __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _finishIfBlockedFromListing] & 1) == 0)
  {
    v2 = [*(a1 + 40) mangledID];
    v3 = [BRCUserDefaults defaultsForMangledID:v2];
    v4 = [v3 recursiveListFetchDirFaultBatchSize];

    v5 = [*(a1 + 40) serverZone];
    v6 = [v5 db];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke_2;
    v9[3] = &unk_2784FFF80;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = v4;
    [v6 performWithFlags:8 action:v9];
  }
}

uint64_t __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) dbRowID];
  v5 = [v3 fetch:{@"WITH RECURSIVE item_children (item_id, zone_rowid, item_type) AS(    SELECT item_id, zone_rowid, item_type FROM server_items      WHERE zone_rowid = %@ AND item_parent_id = %@ AND item_type IN (0, 9, 10) AND NOT item_id_is_documents(item_id)  UNION ALL     SELECT si.item_id, si.zone_rowid, si.item_type FROM server_items AS si INNER JOIN item_children AS p WHERE si.item_parent_id = p.item_id AND si.zone_rowid = p.zone_rowid AND si.item_type IN (0, 9, 10)) SELECT item_id FROM item_children WHERE item_type IN (9, 10)", v4, *(*(a1 + 40) + 536)}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 enumerateObjectsOfClass:objc_opt_class()];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([v11 isDocumentsFolder])
      {
        __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke_2_cold_1(&v19, &v20);
      }

      if ([*(*(a1 + 40) + 528) containsObject:v11])
      {
        __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke_2_cold_2(&v17, &v18);
      }

      if (([*(*(a1 + 40) + 552) containsObject:v11] & 1) == 0)
      {
        [*(*(a1 + 40) + 528) addObject:v11];
        if ([*(*(a1 + 40) + 528) count] >= *(a1 + 48))
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [*(a1 + 40) listNextItem];
  return 1;
}

void __58__BRCRecursiveListDirectoryContentsOperation_listNextItem__block_invoke_192(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    if ([v3 brc_isIgnorableListDirectoryError])
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(a1 + 32) name];
        v7 = [*(a1 + 40) debugItemIDString];
        v8 = 138412802;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Continuing %@ after encountering a ignorable error for %@%@", &v8, 0x20u);
      }

      [*(*(a1 + 32) + 552) addObject:*(a1 + 40)];
      goto LABEL_8;
    }

    if (!v3)
    {
LABEL_8:
      [*(a1 + 32) listOrFetchNextItem];
      v3 = 0;
      goto LABEL_9;
    }

    [*(a1 + 32) completedWithResult:0 error:v3];
  }

LABEL_9:
}

- (void)finishWithResult:(id)result error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = BRCRecursiveListDirectoryContentsOperation;
  [(_BRCOperation *)&v19 finishWithResult:result error:errorCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = selfCopy->_recursiveListCompletionBlocks;
  recursiveListCompletionBlocks = selfCopy->_recursiveListCompletionBlocks;
  selfCopy->_recursiveListCompletionBlocks = 0;

  objc_sync_exit(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)main
{
  v6.receiver = self;
  v6.super_class = BRCRecursiveListDirectoryContentsOperation;
  [(BRCAutoCancelOperation *)&v6 main];
  if (![(BRCItemID *)self->_rootItemID isDocumentsFolder]&& ![(BRCItemID *)self->_rootItemID isNonDesktopRoot])
  {
    goto LABEL_8;
  }

  session = [(BRCServerZone *)self->_serverZone session];
  appLibraryRowID = [(BRCItemID *)self->_rootItemID appLibraryRowID];
  v5 = [session appLibraryByRowID:appLibraryRowID];

  if ((!-[BRCItemID isDocumentsFolder](self->_rootItemID, "isDocumentsFolder") || ([v5 state] & 0x4000000) == 0) && (!-[BRCItemID isNonDesktopRoot](self->_rootItemID, "isNonDesktopRoot") || (objc_msgSend(v5, "state") & 0x2000000) == 0))
  {

LABEL_8:
    [(NSMutableSet *)self->_itemsToList addObject:self->_rootItemID];
    [(BRCRecursiveListDirectoryContentsOperation *)self listNextItem];
    return;
  }

  [(BRCRecursiveListDirectoryContentsOperation *)self fetchNextItemToList];
}

- (void)addRecursiveDirectoryListCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recursiveListCompletionBlocks = selfCopy->_recursiveListCompletionBlocks;
  if (recursiveListCompletionBlocks)
  {
    v7 = MEMORY[0x22AA4A310](blockCopy);
    [(NSMutableArray *)recursiveListCompletionBlocks addObject:v7];
  }

  else
  {
    callbackQueue = [(_BRCOperation *)selfCopy callbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__BRCRecursiveListDirectoryContentsOperation_addRecursiveDirectoryListCompletionBlock___block_invoke;
    v9[3] = &unk_2784FFBC8;
    v9[4] = selfCopy;
    v10 = blockCopy;
    dispatch_async(callbackQueue, v9);
  }

  objc_sync_exit(selfCopy);
}

void __87__BRCRecursiveListDirectoryContentsOperation_addRecursiveDirectoryListCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke_2_cold_1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: !childID.isDocumentsFolder%@");
  }
}

void __65__BRCRecursiveListDirectoryContentsOperation_fetchNextItemToList__block_invoke_2_cold_2(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: ![self->_itemsToList containsObject:childID]%@");
  }
}

void __58__BRCRecursiveListDirectoryContentsOperation_listNextItem__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: ![self->_itemsFailedListing containsObject:itemID]%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

@end