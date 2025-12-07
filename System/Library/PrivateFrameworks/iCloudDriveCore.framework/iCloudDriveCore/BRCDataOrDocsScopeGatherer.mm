@interface BRCDataOrDocsScopeGatherer
- (BRCDataOrDocsScopeGatherer)initWithNotificationPipe:(id)pipe appLibraries:(id)libraries startingRank:(unint64_t)rank maxRank:(unint64_t)maxRank withDeadItems:(BOOL)items gatherReply:(id)reply;
- (id)_popGatherReply;
- (void)dealloc;
- (void)done;
- (void)gatherWithBatchSize:(int64_t)size completion:(id)completion;
- (void)invalidate;
@end

@implementation BRCDataOrDocsScopeGatherer

- (BRCDataOrDocsScopeGatherer)initWithNotificationPipe:(id)pipe appLibraries:(id)libraries startingRank:(unint64_t)rank maxRank:(unint64_t)maxRank withDeadItems:(BOOL)items gatherReply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  librariesCopy = libraries;
  replyCopy = reply;
  v39.receiver = self;
  v39.super_class = BRCDataOrDocsScopeGatherer;
  v17 = [(BRCDataOrDocsScopeGatherer *)&v39 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_pipe, pipeCopy);
    queue = [pipeCopy queue];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __115__BRCDataOrDocsScopeGatherer_initWithNotificationPipe_appLibraries_startingRank_maxRank_withDeadItems_gatherReply___block_invoke;
    v36 = &unk_2785014D0;
    v20 = queue;
    v37 = v20;
    v38 = replyCopy;
    v21 = MEMORY[0x22AA4A310](&v33);
    gatherReply = v18->_gatherReply;
    v18->_gatherReply = v21;

    manager = [pipeCopy manager];
    session = [manager session];
    session = v18->_session;
    v18->_session = session;

    v18->_gatheringRankMin = rank;
    v18->_gatheringRankMax = maxRank;
    v26 = [librariesCopy mutableCopy];
    gatheringAppLibraries = v18->_gatheringAppLibraries;
    v18->_gatheringAppLibraries = v26;

    objc_storeStrong(&v18->_gatheringNamePrefix, pipeCopy[18]);
    v18->_includesDeadItems = items;
    v18->_invalidated = 0;
    v28 = brc_bread_crumbs();
    v29 = brc_notifications_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v41 = pipeCopy;
      v42 = 2048;
      rankCopy = rank;
      v44 = 2048;
      maxRankCopy = maxRank;
      v46 = 2112;
      v47 = v28;
      _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: gathering from %lld to %lld%@", buf, 0x2Au);
    }

    if (v18->_gatheringNamePrefix)
    {
      v30 = brc_bread_crumbs();
      v31 = brc_notifications_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [BRCDataOrDocsScopeGatherer initWithNotificationPipe:appLibraries:startingRank:maxRank:withDeadItems:gatherReply:];
      }
    }
  }

  return v18;
}

void __115__BRCDataOrDocsScopeGatherer_initWithNotificationPipe_appLibraries_startingRank_maxRank_withDeadItems_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = *(a1 + 40);
  v6 = [v4 brc_wrappedError];

  (*(v5 + 16))(v5, v6);
}

- (void)gatherWithBatchSize:(int64_t)size completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_pipe);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    sizeCopy = size;
    manager = [WeakRetained manager];
    session = [manager session];

    readOnlyDB = [session readOnlyDB];
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke;
    v34[3] = &unk_2785014F8;
    objc_copyWeak(&v36, &location);
    v10 = completionCopy;
    v35 = v10;
    v11 = MEMORY[0x22AA4A310](v34);
    serialQueue = [readOnlyDB serialQueue];
    if (serialQueue)
    {
      personaIdentifier = [session personaIdentifier];
      if (personaIdentifier)
      {
        personaIdentifier2 = [session personaIdentifier];
        mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
        br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];
        v17 = [personaIdentifier2 isEqualToString:br_currentPersonaID];

        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      serialQueue2 = [readOnlyDB serialQueue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2;
      v27[3] = &unk_278501548;
      objc_copyWeak(v31, &location);
      v31[1] = sizeCopy;
      v29 = v11;
      v28 = readOnlyDB;
      v30 = v10;
      v23 = v11;
      dispatch_async(serialQueue2, v27);

      objc_destroyWeak(v31);
LABEL_12:

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
      goto LABEL_13;
    }

LABEL_5:
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't gather anymore because the personaID is incorrect or db has no serial queue%@", buf, 0xCu);
    }

    queue = [v7 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_14;
    block[3] = &unk_278501520;
    v33 = v11;
    v21 = v11;
    dispatch_async(queue, block);

    goto LABEL_12;
  }

  session = brc_bread_crumbs();
  readOnlyDB = brc_default_log();
  if (os_log_type_enabled(readOnlyDB, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = session;
    _os_log_impl(&dword_223E7A000, readOnlyDB, OS_LOG_TYPE_DEFAULT, "[WARNING] Notification pipe got deallocated. Nothing to do%@", buf, 0xCu);
  }

LABEL_13:
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_notifications_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_cold_1();
    }
  }
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v63 = objc_loadWeakRetained(WeakRetained + 1);
    if (v63)
    {
      v61 = *(a1 + 64);
      if ((v61 & 0x8000000000000000) != 0)
      {
        __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_1();
      }

      if ([v2[3] count])
      {
        v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v61];
        v60 = [v2[3] lastObject];
        if (!v60)
        {
          __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_2();
        }

        v3 = v2[6];
        if (v3 + 1 > v2[4])
        {
          v4 = v3 + 1;
        }

        else
        {
          v4 = v2[4];
        }

        memset(v75, 0, sizeof(v75));
        __brc_create_section(0, "[BRCDataOrDocsScopeGatherer gatherWithBatchSize:completion:]_block_invoke", 193, 0, v75);
        v5 = brc_bread_crumbs();
        v6 = brc_notifications_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v30 = v75[0];
          v31 = [v60 logName];
          v32 = BRCPrettyPrintBitmap();
          *buf = 134219266;
          v81 = v30;
          v82 = 2048;
          v83 = v4;
          v84 = 2112;
          v85 = v31;
          v86 = 2048;
          v87 = v61;
          v88 = 2112;
          v89 = v32;
          v90 = 2112;
          v91 = v5;
          _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx Looking for item with ranks >= %lld in %@ (%ld kind %@)%@", buf, 0x3Eu);
        }

        v7 = *(v63 + 136);
        if (v7)
        {
          v8 = v2[10];
          if (!v8)
          {
            v12 = 0;
            v59 = 0;
            v23 = 1;
LABEL_48:
            v58 = v23;
            goto LABEL_49;
          }

          if ((*(v63 + 140) & 2) != 0)
          {
            v29 = [v60 itemsEnumeratorChildOf:v2[10] withDeadItems:*(v2 + 72) rankMin:v4 rankMax:v2[5] count:v61 db:*(a1 + 32)];
            if (!v29)
            {
              v33 = brc_bread_crumbs();
              v34 = brc_default_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
              {
                __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_3();
              }

              v35 = [v63 queue];
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_18;
              v73[3] = &unk_278501520;
              v74 = *(a1 + 40);
              dispatch_async(v35, v73);

              v28 = 0;
              v59 = 0;
              goto LABEL_79;
            }

            v12 = v29;
            v58 = 0;
            v59 = v29;
LABEL_49:

            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v28 = v12;
            v36 = [v28 countByEnumeratingWithState:&v68 objects:v78 count:16];
            if (v36)
            {
              v37 = *v69;
              do
              {
                v38 = 0;
                do
                {
                  if (*v69 != v37)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v39 = *(*(&v68 + 1) + 8 * v38);
                  v40 = objc_autoreleasePoolPush();
                  v2[6] = [v39 notifsRank];
                  if (![v39 isZoneRoot])
                  {
                    v43 = [BRCNotification notificationGatheredFromItem:v39];
                    v41 = v43;
                    if ((v2[9] & 1) != 0 || ![v43 isDead])
                    {
                      [v64 addObject:v41];
                      v42 = brc_bread_crumbs();
                      v44 = brc_notifications_log();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412802;
                        v81 = v2;
                        v82 = 2112;
                        v83 = v41;
                        v84 = 2112;
                        v85 = v42;
                        v45 = v44;
                        v46 = "[NOTIF] %@: queued gathered notification %@%@";
                        v47 = 32;
LABEL_66:
                        _os_log_debug_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEBUG, v46, buf, v47);
                      }
                    }

                    else
                    {
                      v42 = brc_bread_crumbs();
                      v44 = brc_notifications_log();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v81 = v41;
                        v82 = 2112;
                        v83 = v42;
                        v45 = v44;
                        v46 = "[NOTIF] Ignoring dead update %@%@";
                        v47 = 22;
                        goto LABEL_66;
                      }
                    }

                    goto LABEL_63;
                  }

                  v41 = brc_bread_crumbs();
                  v42 = brc_notifications_log();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v81 = v39;
                    v82 = 2112;
                    v83 = v41;
                    _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[NOTIF] Ignoring zone root item %@%@", buf, 0x16u);
                  }

LABEL_63:

                  objc_autoreleasePoolPop(v40);
                  ++v38;
                }

                while (v36 != v38);
                v48 = [v28 countByEnumeratingWithState:&v68 objects:v78 count:16];
                v36 = v48;
              }

              while (v48);
            }

            if (v59)
            {
              v49 = v58;
            }

            else
            {
              v49 = 1;
            }

            if (v49)
            {
              if (v58)
              {
LABEL_73:
                [v2[3] removeLastObject];
                v2[6] = 0;
                v50 = 1;
LABEL_76:
                if (![v64 count])
                {
                  if ((v50 & 1) == 0)
                  {
                    v52 = brc_bread_crumbs();
                    v53 = brc_default_log();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      v54 = [v59 rowNumber];
                      *buf = 134218498;
                      v81 = v54;
                      v82 = 2048;
                      v83 = v61;
                      v84 = 2112;
                      v85 = v52;
                      _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[WARNING] Strange... No updates received and phase isn't done %lu vs %ld%@", buf, 0x20u);
                    }
                  }

                  [v2 gatherWithBatchSize:v61 completion:*(a1 + 48)];
                  goto LABEL_85;
                }

                v51 = [v63 queue];
                v27 = v65;
                v65[0] = MEMORY[0x277D85DD0];
                v65[1] = 3221225472;
                v65[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_24;
                v65[3] = &unk_2784FF5B8;
                v65[4] = v64;
                v66 = v63;
                v67 = *(a1 + 40);
                dispatch_async(v51, v65);

                goto LABEL_78;
              }
            }

            else if ([v59 rowNumber] < v61)
            {
              goto LABEL_73;
            }

            v50 = 0;
            goto LABEL_76;
          }

          v9 = [v2[8] clientReadDatabaseFacade];
          v10 = [v2[8] itemFetcher];
          v11 = [v10 itemByItemGlobalID:v8 dbFacade:v9];

          if (v11)
          {
            v79 = v11;
            v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
          }

          else
          {
            v12 = MEMORY[0x277CBEBF8];
          }

          v59 = 0;
        }

        else
        {
          v18 = (v7 >> 7) & 1;
          if ((v7 & 8) != 0)
          {
            v19 = 1;
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }

          if ((v7 & 6) != 0)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }

          if ((v7 & 6) != 0)
          {
            v21 = v19;
          }

          else
          {
            v21 = 1;
          }

          BYTE3(v57) = (*(v63 + 136) & 0x40) != 0;
          BYTE2(v57) = (*(v63 + 136) & 0x20) != 0;
          BYTE1(v57) = (*(v63 + 136) & 4) != 0;
          LOBYTE(v57) = (*(v63 + 136) & 2) != 0;
          v22 = [v60 itemsEnumeratorWithRankMin:v4 rankMax:v2[5] namePrefix:v2[7] withDeadItems:*(v2 + 72) shouldIncludeFolders:v21 shouldIncludeOnlyFolders:v20 shouldIncludeDocumentsScope:v57 shouldIncludeDataScope:v61 shouldIncludeExternalScope:*(a1 + 32) shouldIncludeTrashScope:? count:? db:?];
          if (!v22)
          {
            v24 = brc_bread_crumbs();
            v25 = brc_default_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_3();
            }

            v26 = [v63 queue];
            v27 = v72;
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_20;
            v72[3] = &unk_278501520;
            v72[4] = *(a1 + 40);
            dispatch_async(v26, v72);

            v28 = 0;
            v59 = 0;
LABEL_78:
            v8 = v27[4];
LABEL_79:

LABEL_85:
            __brc_leave_section(v75);

            v14 = v64;
            goto LABEL_86;
          }

          v12 = v22;
          v8 = brc_bread_crumbs();
          v9 = brc_notifications_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v55 = *(v2 + 72);
            *buf = 134218498;
            if (v55)
            {
              v56 = "yes";
            }

            else
            {
              v56 = "no";
            }

            v81 = v12;
            v82 = 2080;
            v83 = v56;
            v84 = 2112;
            v85 = v8;
            _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] Creating enumertor %p including dead items: %s%@", buf, 0x20u);
          }

          v59 = v12;
        }

        v23 = v7 & 1;
        goto LABEL_48;
      }

      v16 = [v63 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_16;
      block[3] = &unk_2784FFBC8;
      v17 = *(a1 + 40);
      block[4] = v2;
      v77 = v17;
      dispatch_async(v16, block);

      v14 = v77;
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_notifications_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_5();
      }
    }
  }

  else
  {
    v63 = brc_bread_crumbs();
    v13 = brc_notifications_log();
    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_cold_1();
      v14 = v13;
    }
  }

LABEL_86:
}

uint64_t __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_16(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 done];
}

uint64_t __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_24(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) addNotification:v7 asDead:{0, v10}];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)_popGatherReply
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x22AA4A310](selfCopy->_gatherReply);
  gatherReply = selfCopy->_gatherReply;
  selfCopy->_gatherReply = 0;

  v5 = MEMORY[0x22AA4A310](v3);
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)done
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __34__BRCDataOrDocsScopeGatherer_done__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__BRCDataOrDocsScopeGatherer_done__block_invoke_2;
  v2[3] = &unk_278501520;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 addDequeueCallback:v2];
}

- (void)invalidate
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void __40__BRCDataOrDocsScopeGatherer_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4];
  (*(v1 + 16))(v1, v2);
}

- (void)dealloc
{
  [(BRCDataOrDocsScopeGatherer *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRCDataOrDocsScopeGatherer;
  [(BRCDataOrDocsScopeGatherer *)&v3 dealloc];
}

- (void)initWithNotificationPipe:appLibraries:startingRank:maxRank:withDeadItems:gatherReply:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: count >= 0%@", v5, v6, v7, v8);
  }
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: appLibrary%@", v5, v6, v7, v8);
  }
}

@end