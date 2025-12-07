@interface BRCRecentsEnumerator
+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:(id)handler;
- (BOOL)hasDeletedFileObjectID:(id)d;
- (BRCRecentsEnumerator)initWithAccountSession:(id)session;
- (char)computeTombstoneEntryType:(id)type;
- (id)_deletedDocIdResultSetFromNotifRank:(unint64_t)rank batchSize:(unint64_t)size;
- (id)changeTokenForNotifRank:(unint64_t)rank;
- (void)_activeSetDidChange;
- (void)_deleteAllRanks;
- (void)_enumerateChangesFromChangeToken:(id)token limit:(unint64_t)limit completion:(id)completion;
- (void)_handleResetForRowID:(int64_t)d notifRank:(unint64_t)rank completionHandler:(id)handler;
- (void)_readyForIndexingWithAckedRank:(unint64_t)rank;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)enumerateChangesFromChangeToken:(id)token limit:(unint64_t)limit completion:(id)completion;
- (void)garbageCollectRanksPreceding:(unint64_t)preceding;
- (void)itemWasDeletedWithFileObjectID:(id)d notifRank:(unint64_t)rank;
- (void)maxNotifRankWasFlushed;
- (void)resume;
@end

@implementation BRCRecentsEnumerator

- (void)_activeSetDidChange
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCRecentsEnumerator _activeSetDidChange];
  }

  dispatch_assert_queue_V2(self->_queue);
  if (![(BRCRecentsEnumerator *)self isCancelled])
  {
    br_getDomainIdentifierForCurrentPersona = [MEMORY[0x277CFAE58] br_getDomainIdentifierForCurrentPersona];
    v6 = [MEMORY[0x277CC64A8] br_sharedProviderManagerWithDomainID:br_getDomainIdentifierForCurrentPersona];
    [v6 br_signalWorkingSetEnumeratorWithCompletionHandler:&__block_literal_global_102_0];
  }
}

void __43__BRCRecentsEnumerator__activeSetDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      __43__BRCRecentsEnumerator__activeSetDidChange__block_invoke_cold_1();
    }
  }
}

void *__46__BRCRecentsEnumerator_maxNotifRankWasFlushed__block_invoke(void *result)
{
  v1 = *(result + 4);
  v2 = *(result + 5);
  if (*(v1 + 40) < v2)
  {
    *(v1 + 40) = v2;
    return [*(result + 4) _signalActiveSetDidChange];
  }

  return result;
}

- (void)maxNotifRankWasFlushed
{
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  v4 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:self->_session];
  v5 = [v4 nextNotifRank] - 1;

  tracker = self->_tracker;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__BRCRecentsEnumerator_maxNotifRankWasFlushed__block_invoke;
  v8[3] = &unk_278500D50;
  v8[4] = self;
  v8[5] = v5;
  brc_task_tracker_async_with_logs(tracker, queue, v8, &__block_literal_global_83);
}

+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (([MEMORY[0x277CC34A8] isIndexingAvailable] & 1) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:];
    }

    goto LABEL_8;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"didDropCoreSpotlightIndex", *MEMORY[0x277CFAC08], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppBooleanValue)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:];
    }

LABEL_8:

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    goto LABEL_15;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] dropping CoreSpotlight index%@", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277CC34A8]);
  v10 = [v9 initWithName:@"com.apple.clouddocs-items" protectionClass:*MEMORY[0x277CCA1A0]];
  if (!v10)
  {
    +[BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke;
  v11[3] = &unk_278501F20;
  v12 = handlerCopy;
  [v10 deleteAllSearchableItemsWithCompletionHandler:v11];

LABEL_15:
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_1();
    }

LABEL_4:

    goto LABEL_8;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_2();
  }

  v8 = MEMORY[0x277CFAC08];
  CFPreferencesSetAppValue(@"didDropCoreSpotlightIndex", MEMORY[0x277CBEC38], *MEMORY[0x277CFAC08]);
  if (!CFPreferencesAppSynchronize(*v8))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_3();
    }

    goto LABEL_4;
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (char)computeTombstoneEntryType:(id)type
{
  type = [type type];
  if (type == 3)
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  if (type == 2)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

- (void)_deleteAllRanks
{
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB execute:@"DELETE FROM tombstones"];
}

- (void)garbageCollectRanksPreceding:(unint64_t)preceding
{
  if (garbageCollectRanksPreceding__onceToken != -1)
  {
    [BRCRecentsEnumerator garbageCollectRanksPreceding:];
  }

  v5 = time(0);
  v6 = v5 + *&garbageCollectRanksPreceding__tombstonesAgeDeltaAfterEnumerated;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB execute:{@"UPDATE tombstones SET expiration = %ld WHERE notif_rank < %llu AND expiration IS NULL", v6, preceding}];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  [clientDB2 execute:{@"DELETE FROM tombstones WHERE notif_rank < %llu AND expiration IS NOT NULL AND expiration < %ld", preceding, v5}];
}

void __53__BRCRecentsEnumerator_garbageCollectRanksPreceding___block_invoke()
{
  v1 = [BRCUserDefaults defaultsForMangledID:0];
  [v1 tombstonesAgeDeltaAfterEnumerated];
  garbageCollectRanksPreceding__tombstonesAgeDeltaAfterEnumerated = v0;
}

- (void)_readyForIndexingWithAckedRank:(unint64_t)rank
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    flushedNotifRank = self->_flushedNotifRank;
    v10 = 134218498;
    rankCopy = rank;
    v12 = 2048;
    v13 = flushedNotifRank;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning index acked rank %llu (flushed rank %llu)%@", &v10, 0x20u);
  }

  if (rank + 1 > self->_flushedNotifRank)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCRecentsEnumerator _readyForIndexingWithAckedRank:];
    }
  }

  [(BRCRecentsEnumerator *)self _signalActiveSetDidChange];
}

- (id)changeTokenForNotifRank:(unint64_t)rank
{
  v5 = objc_alloc_init(BRCRecentsChangeToken);
  [(BRCRecentsChangeToken *)v5 setDatabaseID:[(BRCAccountSession *)self->_session databaseIDHash]];
  [(BRCRecentsChangeToken *)v5 setNotifRank:rank];
  toData = [(BRCRecentsChangeToken *)v5 toData];

  return toData;
}

- (void)_handleResetForRowID:(int64_t)d notifRank:(unint64_t)rank completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    dCopy = d;
    v44 = 2048;
    rankCopy = rank;
    v46 = 2112;
    v47 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] handling reset for rowID %lld, notif rank: %llu%@", buf, 0x20u);
  }

  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  session = self->_session;
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v14 = [(BRCAccountSession *)session serverZoneByRowID:v13];
  clientZone = [v14 clientZone];

  if ([clientZone isPrivateZone])
  {
    v31 = br_sharedProviderManager;
    rankCopy2 = rank;
    asPrivateClientZone = [clientZone asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(appLibraries, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    asPrivateClientZone2 = [clientZone asPrivateClientZone];
    appLibraries2 = [asPrivateClientZone2 appLibraries];

    v21 = [appLibraries2 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        v24 = 0;
        do
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(appLibraries2);
          }

          appLibraryID = [*(*(&v37 + 1) + 8 * v24) appLibraryID];
          if (appLibraryID)
          {
            [v18 addObject:appLibraryID];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [appLibraries2 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v22);
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      dCopy = v18;
      v44 = 2112;
      rankCopy = v26;
      _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEFAULT, "[WARNING] Dropping spotlight index for %@ due to a reset%@", buf, 0x16u);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke;
    v33[3] = &unk_278500338;
    v33[4] = self;
    v34 = v18;
    v36 = rankCopy2;
    v35 = handlerCopy;
    v28 = v18;
    br_sharedProviderManager = v31;
    [v31 deleteSearchableItemsWithSpotlightDomainIdentifiers:v28 completionHandler:v33];

    goto LABEL_20;
  }

  v29 = brc_bread_crumbs();
  v30 = brc_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = v29;
    _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] reset zone is not a private zone, skipping%@", buf, 0xCu);
  }

  [(BRCRecentsEnumerator *)self _readyForIndexingWithAckedRank:rank];
  if (handlerCopy)
  {
    appLibraries = [(BRCRecentsEnumerator *)self changeTokenForNotifRank:rank];
    (*(handlerCopy + 2))(handlerCopy, appLibraries, 0);
LABEL_20:
  }
}

void __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke_2;
  block[3] = &unk_2785018F0;
  v10 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14 = *(a1 + 56);
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v3;
  dispatch_async(v4, block);
}

void __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_6;
  }

  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, 0x90u))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v2;
    _os_log_error_impl(&dword_223E7A000, v3, 0x90u, "[ERROR] Failed to delete searchable items for mangledIDs %@: %@%@", &v8, 0x20u);
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 64) - 1;
  }

  else
  {
LABEL_6:
    v4 = *(a1 + 64);
  }

  [*(a1 + 48) _readyForIndexingWithAckedRank:v4];
  v5 = [*(a1 + 48) changeTokenForNotifRank:v4];
  (*(*(a1 + 56) + 16))();
}

- (id)_deletedDocIdResultSetFromNotifRank:(unint64_t)rank batchSize:(unint64_t)size
{
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(BRCPQLConnection *)self->_indexingDB fetch:@"SELECT file_object_id, file_object_id_type, notif_rank FROM tombstones    WHERE notif_rank >= %lld AND expiration IS NULL ORDER BY notif_rank ASC LIMIT %lld", rank, size];

  return v7;
}

- (void)_enumerateChangesFromChangeToken:(id)token limit:(unint64_t)limit completion:(id)completion
{
  v96 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v47 = tokenCopy;
  selfCopy = self;
  if (tokenCopy)
  {
    databaseID = [tokenCopy databaseID];
    if (databaseID != [(BRCAccountSession *)self->_session databaseIDHash])
    {
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        [BRCRecentsEnumerator _enumerateChangesFromChangeToken:limit:completion:];
      }

      clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke;
      v75[3] = &unk_278500048;
      v75[4] = self;
      v76 = completionCopy;
      dispatch_async(clientTruthWorkloop, v75);

      goto LABEL_42;
    }

    notifRank = [tokenCopy notifRank];
    tokenCopy = ([tokenCopy notifRank] + 1);
    p_flushedNotifRank = &self->_flushedNotifRank;
    if (tokenCopy > self->_flushedNotifRank)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v39 = *p_flushedNotifRank;
        *buf = 134218498;
        v91 = tokenCopy;
        v92 = 2048;
        v93 = v39;
        v94 = 2112;
        v95 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] incoming rank is newer than what we know about: %lld > %lld, stopping here%@", buf, 0x20u);
      }

      if (completionCopy)
      {
        v13 = [(BRCRecentsEnumerator *)self changeTokenForNotifRank:notifRank];
        (*(completionCopy + 2))(completionCopy, 0, 0, v13, 0);
      }

      goto LABEL_42;
    }
  }

  else
  {
    p_flushedNotifRank = &self->_flushedNotifRank;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  limitCopy = limit;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v38 = *p_flushedNotifRank;
    *buf = 134218498;
    v91 = tokenCopy;
    v92 = 2048;
    v93 = v38;
    v94 = 2112;
    v95 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] enumerating changes from notif rank %llu (max %llu)%@", buf, 0x20u);
  }

  v46 = tokenCopy;

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_85;
  v74[3] = &unk_278505318;
  v74[4] = &v85;
  v74[5] = &v81;
  v74[6] = &v77;
  v45 = MEMORY[0x22AA4A310](v74);
  v43 = [(BRCAccountSession *)self->_session itemsNeedingIndexingEnumeratorFromNotifRank:tokenCopy batchSize:limit db:self->_indexingDB];
  v44 = [(BRCRecentsEnumerator *)self _deletedDocIdResultSetFromNotifRank:tokenCopy batchSize:limit];
  clientTruthWorkloop2 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_91;
  block[3] = &unk_278500D50;
  block[4] = self;
  block[5] = tokenCopy;
  dispatch_async(clientTruthWorkloop2, block);

  (v45)[2](v45, v44);
  if (v78[3] == tokenCopy && *(v82 + 24) == 2)
  {
    v17 = v86[3];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_92;
    v71[3] = &unk_278505360;
    v72 = completionCopy;
    [(BRCRecentsEnumerator *)self _handleResetForRowID:v17 notifRank:tokenCopy completionHandler:v71];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v18 = objc_alloc_init(BRCRecentsChangeToken);
    v19 = [[BRCRecentsEnumeratorBatch alloc] initWithBatchSize:limit];
    [(BRCRecentsChangeToken *)v18 setDatabaseID:[(BRCAccountSession *)selfCopy->_session databaseIDHash]];
    v42 = v18;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3;
    v62[3] = &unk_278505388;
    v67 = &v77;
    v62[4] = selfCopy;
    v68 = &v81;
    v69 = &v85;
    v20 = v19;
    v63 = v20;
    v65 = &__block_literal_global_89_2;
    limitCopy2 = limit;
    v66 = v45;
    v64 = v44;
    v21 = MEMORY[0x22AA4A310](v62);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v22 = v43;
    v23 = [v22 countByEnumeratingWithState:&v58 objects:v89 count:16];
    if (v23)
    {
      v24 = *v59;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v59 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v58 + 1) + 8 * i);
          v27 = objc_autoreleasePoolPush();
          while (1)
          {
            v28 = v78[3];
            if (v28 >= [v26 notifsRank])
            {
              break;
            }

            if ((v21[2](v21) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if ([v26 notifsRank] <= *p_flushedNotifRank)
          {
            [(BRCRecentsEnumeratorBatch *)v20 addIndexOfItem:v26];
            if ([(BRCRecentsEnumeratorBatch *)v20 batchCount]< limitCopy)
            {
              v29 = [(BRCRecentsEnumeratorBatch *)v20 rank]< *p_flushedNotifRank;
              goto LABEL_27;
            }
          }

LABEL_26:
          v29 = 0;
LABEL_27:
          objc_autoreleasePoolPop(v27);
          if (!v29)
          {

            goto LABEL_38;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v58 objects:v89 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    do
    {
      if (v78[3] == -1)
      {
        break;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = v21[2](v21);
      objc_autoreleasePoolPop(v30);
    }

    while ((v31 & 1) != 0);
LABEL_38:
    [v22 close];
    rank = [(BRCRecentsEnumeratorBatch *)v20 rank];
    if (!rank)
    {
      rank = *p_flushedNotifRank;
    }

    [(BRCRecentsChangeToken *)v42 setNotifRank:rank];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_96;
    v52[3] = &unk_2785053D8;
    v57 = v46;
    v36 = v20;
    v53 = v36;
    v54 = selfCopy;
    v37 = v42;
    v55 = v37;
    v56 = completionCopy;
    [(BRCRecentsEnumeratorBatch *)v36 listItems:v52];

    objc_autoreleasePoolPop(contexta);
  }

LABEL_42:
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteAllRanks];
  if (*(a1 + 40))
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1002 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_85(void *a1, void *a2)
{
  v4 = a2;
  if ([v4 next])
  {
    *(*(a1[4] + 8) + 24) = [v4 unsignedLongLongAtIndex:0];
    *(*(a1[5] + 8) + 24) = [v4 intAtIndex:1];
    v3 = [v4 longLongAtIndex:2];
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
    v3 = -1;
  }

  *(*(a1[6] + 8) + 24) = v3;
}

id __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 3:
      v4 = objc_alloc(MEMORY[0x277CFAE48]);
      v5 = a2;
      v6 = 1;
      goto LABEL_7;
    case 5:
      v4 = objc_alloc(MEMORY[0x277CFAE48]);
      v5 = a2;
      v6 = 3;
      goto LABEL_7;
    case 4:
      v4 = objc_alloc(MEMORY[0x277CFAE48]);
      v5 = a2;
      v6 = 2;
LABEL_7:
      v7 = [v4 initWithRowID:v5 type:v6];
      goto LABEL_11;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_cold_1();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_92(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2, a3);
  }

  return result;
}

uint64_t __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24) > *(*(a1 + 32) + 40))
  {
    return 0;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3_cold_1();
    }

    [*(a1 + 40) setRank:*(*(*(a1 + 72) + 8) + 24) - 1];
    return 0;
  }

  v5 = (*(*(a1 + 56) + 16))();
  [*(a1 + 40) addDeletionOfFileObjectID:v5 rank:*(*(*(a1 + 72) + 8) + 24)];
  if ([*(a1 + 40) batchCount] >= *(a1 + 96) || objc_msgSend(*(a1 + 40), "rank") >= *(*(a1 + 32) + 40))
  {
    v4 = 0;
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    v4 = 1;
  }

  return v4;
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 64);
    v18 = [*(a1 + 32) rank];
    *buf = 134219010;
    v30 = v17;
    v31 = 2048;
    v32 = v18;
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] sending batch from %llu to %llu\n updatedItems = %@\n deletedItems = %@%@", buf, 0x34u);
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(v10 + 48);
  v12 = *(v10 + 16);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_97;
  v24[3] = &unk_2785053B0;
  v24[4] = v10;
  v25 = v9;
  v28 = *(a1 + 56);
  v26 = v5;
  v27 = v6;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_98;
  v19[3] = &unk_2785053B0;
  v13 = *(a1 + 48);
  v19[4] = *(a1 + 40);
  v20 = v13;
  v14 = *(a1 + 56);
  v22 = v27;
  v23 = v14;
  v21 = v26;
  v15 = v27;
  v16 = v26;
  brc_task_tracker_async_with_logs(v11, v12, v24, v19);
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_97(uint64_t a1)
{
  [*(a1 + 32) _readyForIndexingWithAckedRank:{objc_msgSend(*(a1 + 40), "notifRank")}];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) toData];
  (*(v2 + 16))(v2, v4, v3, v5, 0);
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_98(uint64_t a1)
{
  [*(a1 + 32) _readyForIndexingWithAckedRank:{objc_msgSend(*(a1 + 40), "notifRank")}];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) toData];
  (*(v2 + 16))(v2, v4, v3, v5, 0);
}

- (void)enumerateChangesFromChangeToken:(id)token limit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v9 = [BRCRecentsChangeToken changeTokenFromData:token];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke;
  v20[3] = &unk_278501940;
  v20[4] = self;
  v10 = v9;
  v21 = v10;
  limitCopy = limit;
  v11 = completionCopy;
  v22 = v11;
  v12 = MEMORY[0x22AA4A310](v20);
  v13 = v12;
  if (v10)
  {
    (*(v12 + 16))(v12);
  }

  else
  {
    tracker = self->_tracker;
    clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_4;
    v18[3] = &unk_278500048;
    v18[4] = self;
    v19 = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_5;
    v16[3] = &unk_278501520;
    v17 = v11;
    brc_task_tracker_async_with_logs(tracker, clientTruthWorkloop, v18, v16);
  }
}

void __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_2;
  v11[3] = &unk_278501940;
  v11[4] = v3;
  v6 = v2;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v6;
  v14 = v7;
  v13 = v8;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_3;
  v9[3] = &unk_278501520;
  v10 = *(a1 + 48);
  brc_task_tracker_async_with_logs(v4, v5, v11, v9);
}

void __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

uint64_t __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _deleteAllRanks];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

- (BRCRecentsEnumerator)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v23.receiver = self;
  v23.super_class = BRCRecentsEnumerator;
  v6 = [(BRCRecentsEnumerator *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    [v8 recentsEnumeratorPacerInterval];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    readOnlyWorkloop = [(BRCAccountSession *)v7->_session readOnlyWorkloop];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create_with_target_V2("recents-enumerator", v11, readOnlyWorkloop);

    queue = v7->_queue;
    v7->_queue = v12;

    readOnlyDB = [sessionCopy readOnlyDB];
    indexingDB = v7->_indexingDB;
    v7->_indexingDB = readOnlyDB;

    v16 = br_pacer_create();
    pacer = v7->_pacer;
    v7->_pacer = v16;

    objc_initWeak(&location, v7);
    objc_copyWeak(&v21, &location);
    br_pacer_set_event_handler();
    v18 = brc_task_tracker_create("recents-enumerator-tracker");
    tracker = v7->_tracker;
    v7->_tracker = v18;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __47__BRCRecentsEnumerator_initWithAccountSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activeSetDidChange];
}

- (void)resume
{
  br_pacer_resume();

  [(BRCRecentsEnumerator *)self _signalActiveSetDidChange];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BRCRecentsEnumerator_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
  brc_task_tracker_wait(self->_tracker);
}

- (void)cancel
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCRecentsEnumerator cancel];
  }

  brc_task_tracker_cancel(self->_tracker);
  br_pacer_cancel();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BRCRecentsEnumerator;
  [(BRCRecentsEnumerator *)&v2 dealloc];
}

- (void)itemWasDeletedWithFileObjectID:(id)d notifRank:(unint64_t)rank
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v13 = dCopy;
    v14 = 2048;
    rankCopy = rank;
    v16 = 2112;
    v17 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] dropping item which was deleted %@ with notif rank %llu%@", buf, 0x20u);
  }

  v10 = [(BRCRecentsEnumerator *)self computeTombstoneEntryType:dCopy];
  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  [clientDB2 execute:{@"INSERT INTO tombstones (file_object_id, file_object_id_type, notif_rank, expiration) VALUES (%lld, %d, %lld, NULL)", objc_msgSend(dCopy, "rawID"), v10, rank}];
}

- (BOOL)hasDeletedFileObjectID:(id)d
{
  session = self->_session;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  rawID = [dCopy rawID];

  v7 = [clientDB numberWithSQL:{@"SELECT 1 FROM tombstones WHERE file_object_id = %lld LIMIT 1", rawID}];
  LOBYTE(rawID) = [v7 BOOLValue];

  return rawID;
}

+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:.cold.2()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: index%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  v3 = v0;
  _os_log_error_impl(&dword_223E7A000, v1, 0x90u, "[ERROR] failed to synchronize user defaults for %@%@", v2, 0x16u);
}

- (void)_enumerateChangesFromChangeToken:limit:completion:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] change token has expired, index should be dropped%@", v1, 0xCu);
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __43__BRCRecentsEnumerator__activeSetDidChange__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

@end