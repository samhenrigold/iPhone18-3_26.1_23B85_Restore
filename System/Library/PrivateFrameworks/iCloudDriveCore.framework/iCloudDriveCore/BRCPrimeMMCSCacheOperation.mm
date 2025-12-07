@interface BRCPrimeMMCSCacheOperation
- (BRCPrimeMMCSCacheOperation)initWithExistingContentsURL:(id)l item:(id)item sessionContext:(id)context;
- (void)main;
@end

@implementation BRCPrimeMMCSCacheOperation

- (BRCPrimeMMCSCacheOperation)initWithExistingContentsURL:(id)l item:(id)item sessionContext:(id)context
{
  lCopy = l;
  itemCopy = item;
  contextCopy = context;
  if ([itemCopy isFinderBookmark])
  {
    selfCopy = 0;
  }

  else
  {
    itemID = [itemCopy itemID];
    itemIDString = [itemID itemIDString];
    v15 = [@"prime-cache-" stringByAppendingString:itemIDString];

    appLibrary = [itemCopy appLibrary];
    transferSyncContext = [appLibrary transferSyncContext];
    v28.receiver = self;
    v28.super_class = BRCPrimeMMCSCacheOperation;
    v18 = [(_BRCOperation *)&v28 initWithName:v15 syncContext:transferSyncContext sessionContext:contextCopy];

    if (v18)
    {
      baseRecord = [itemCopy baseRecord];
      record = v18->_record;
      v18->_record = baseRecord;

      objc_storeStrong(&v18->_existingContents, l);
      clientZone = [itemCopy clientZone];
      itemID2 = [itemCopy itemID];
      v23 = [itemCopy db];
      v24 = [clientZone contentBoundaryKeyForItemID:itemID2 withDB:v23];
      boundaryKey = v18->_boundaryKey;
      v18->_boundaryKey = v24;

      br_primeMMCSCache = [MEMORY[0x277CBC4F8] br_primeMMCSCache];
      [(_BRCOperation *)v18 setGroup:br_primeMMCSCache];

      [(_BRCOperation *)v18 setNonDiscretionary:1];
    }

    self = v18;

    selfCopy = self;
  }

  return selfCopy;
}

- (void)main
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __34__BRCPrimeMMCSCacheOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 40);
    v17 = [WeakRetained metrics];
    v18 = [v17 MMCSMetrics];
    v19 = 138413058;
    v20 = v16;
    v21 = 2048;
    v22 = [v18 bytesUploaded];
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Completed priming mmcs cache for %@ (uploaded %lu) - %@%@", &v19, 0x2Au);
  }

  v13 = [WeakRetained metrics];
  v14 = [v13 MMCSMetrics];
  v15 = [v14 bytesUploaded];

  if (v15)
  {
    __34__BRCPrimeMMCSCacheOperation_main__block_invoke_cold_1();
  }

  [*(a1 + 48) completedWithResult:0 error:v9];
}

void __34__BRCPrimeMMCSCacheOperation_main__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: sop.metrics.MMCSMetrics.bytesUploaded == 0%@", v5, v6, v7, v8);
  }
}

@end