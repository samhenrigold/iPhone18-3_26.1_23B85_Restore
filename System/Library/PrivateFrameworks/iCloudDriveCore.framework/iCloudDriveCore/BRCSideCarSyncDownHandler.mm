@interface BRCSideCarSyncDownHandler
- (BRCSideCarSyncDownHandler)initWithSessionContext:(id)context sideCarPersistedState:(id)state serverPersistedState:(id)persistedState applyScheduler:(id)scheduler;
- (void)saveChangedRecords:(id)records deletedRecords:(id)deletedRecords serverChangeToken:(id)token clientChangeToken:(id)changeToken;
@end

@implementation BRCSideCarSyncDownHandler

- (BRCSideCarSyncDownHandler)initWithSessionContext:(id)context sideCarPersistedState:(id)state serverPersistedState:(id)persistedState applyScheduler:(id)scheduler
{
  contextCopy = context;
  stateCopy = state;
  persistedStateCopy = persistedState;
  schedulerCopy = scheduler;
  v18.receiver = self;
  v18.super_class = BRCSideCarSyncDownHandler;
  v15 = [(BRCSideCarSyncDownHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionContext, context);
    objc_storeStrong(&v16->_sideCarPersistedState, state);
    objc_storeStrong(&v16->_serverPersistedState, persistedState);
    objc_storeStrong(&v16->_applyScheduler, scheduler);
  }

  return v16;
}

- (void)saveChangedRecords:(id)records deletedRecords:(id)deletedRecords serverChangeToken:(id)token clientChangeToken:(id)changeToken
{
  v51 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  deletedRecordsCopy = deletedRecords;
  tokenCopy = token;
  changeTokenCopy = changeToken;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v14 = objc_opt_new();
  if ([changeTokenCopy length] == 8)
  {
    v15 = changeTokenCopy;
    v16 = *[changeTokenCopy bytes];
  }

  else
  {
    v16 = 0;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v42 = recordsCopy;
    v43 = 2112;
    v44 = deletedRecordsCopy;
    v45 = 2112;
    v46 = tokenCopy;
    v47 = 2048;
    v48 = v16;
    v49 = 2112;
    v50 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Saving side car changed records %@\ndeleted record %@\nserver change token %@\nrequestID %llu%@", buf, 0x34u);
  }

  serverReadWriteDatabaseFacade = [(BRCSessionContext *)self->_sessionContext serverReadWriteDatabaseFacade];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke;
  v34[3] = &unk_278501050;
  v34[4] = self;
  v20 = recordsCopy;
  v35 = v20;
  v21 = serverReadWriteDatabaseFacade;
  v36 = v21;
  v22 = v14;
  v37 = v22;
  v23 = deletedRecordsCopy;
  v38 = v23;
  v39 = v40;
  [v21 performWithFlags:9 action:v34];
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->_sessionContext clientReadWriteDatabaseFacade];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1;
  v28[3] = &unk_278501078;
  v28[4] = self;
  v33 = v16;
  v25 = clientReadWriteDatabaseFacade;
  v29 = v25;
  v26 = tokenCopy;
  v30 = v26;
  v27 = v22;
  v31 = v27;
  v32 = v40;
  [v25 performWithFlags:37 action:v28];

  _Block_object_dispose(v40, 8);
}

uint64_t __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v58 = a1;
  obj = *(a1 + 40);
  v59 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v59)
  {
    v4 = *v75;
    *&v3 = 138412546;
    v54 = v3;
    v55 = v2;
    v56 = *v75;
    do
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v75 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v74 + 1) + 8 * i);
        v7 = [v6 recordID];
        v8 = [v2 zoneAppRetriever];
        v9 = [v7 brc_itemIDWithZoneAppRetriever:v8];

        v72 = 0;
        v73 = 0;
        LOBYTE(v7) = [v6 deserializeSideCarInfo:&v73 error:&v72];
        v10 = v73;
        v11 = v72;
        if (v7)
        {
          v70 = 0;
          v71 = 0;
          v12 = [v6 locateSideCarServerZone:&v71 shareRecordName:&v70 sessionContext:v2];
          v13 = v71;
          v14 = v70;
          v15 = v14;
          if (v12)
          {
            v16 = *(v58 + 48);
            v17 = [v13 dbRowID];
            LOBYTE(v16) = [v16 updateServerItemWithSideCarInfo:v9 sideCarInfo:v10 zoneRowID:v17];

            if (v16)
            {
              [*(v58 + 56) addObject:v13];
            }

            else
            {
              v23 = *(v58 + 48);
              v24 = [v6 recordID];
              v25 = [v24 recordName];
              [v23 insertSideCarLookAheadInfo:v25 shareRecordName:v15 sideCarInfo:v10];
            }

            v2 = v55;
            v4 = v56;
          }

          else if (v14)
          {
            v20 = *(v58 + 48);
            v21 = [v6 recordID];
            v22 = [v21 recordName];
            [v20 insertSideCarLookAheadInfo:v22 shareRecordName:v15 sideCarInfo:v10];

            v4 = v56;
          }

          else
          {
            v26 = brc_bread_crumbs();
            v27 = brc_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = v54;
              v81 = v6;
              v82 = 2112;
              v83 = v26;
              _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't parse alias record name for %@%@", buf, 0x16u);
            }

            v15 = 0;
          }
        }

        else
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = v54;
            v81 = v6;
            v82 = 2112;
            v83 = v18;
            _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't deserialize side car info on %@%@", buf, 0x16u);
          }

          v15 = 0;
          v13 = 0;
        }
      }

      v59 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v59);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v28 = v58;
  v60 = *(v58 + 64);
  v29 = [v60 countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v67;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v67 != v31)
        {
          objc_enumerationMutation(v60);
        }

        v33 = *(*(&v66 + 1) + 8 * j);
        v34 = [v2 zoneAppRetriever];
        v35 = [v33 brc_itemIDWithZoneAppRetriever:v34];

        v65 = 0;
        LOBYTE(v34) = [v33 locateSideCarServerZone:&v65 sessionContext:v2];
        v36 = v65;
        v37 = v36;
        if (v34)
        {
          v38 = *(v28 + 48);
          v39 = [v36 dbRowID];
          LOBYTE(v38) = [v38 updateServerItemWithSideCarInfo:v35 sideCarInfo:0 zoneRowID:v39];

          if (v38)
          {
            [*(v28 + 56) addObject:v37];
          }

          else
          {
            v42 = *(v28 + 48);
            v43 = [v33 recordName];
            [v42 deleteSideCarLookAheadInfoForRecordName:v43];
          }
        }

        else
        {
          v40 = brc_bread_crumbs();
          v41 = brc_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v81 = v33;
            v82 = 2112;
            v83 = v40;
            _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring deleted recordID where we couldn't locate the server zone %@%@", buf, 0x16u);
          }

          v28 = v58;
        }
      }

      v30 = [v60 countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v30);
  }

  if ([*(v28 + 56) count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v44 = *(v28 + 56);
    v45 = [v44 countByEnumeratingWithState:&v61 objects:v78 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v62;
      while (2)
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v61 + 1) + 8 * k);
          if (([v49 allocateRanksWhenCaughtUp:1] & 1) == 0)
          {
            v51 = brc_bread_crumbs();
            v52 = brc_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_1(v49, v51, v52);
            }

            v50 = 0;
            goto LABEL_50;
          }

          [*(v28 + 48) saveServerZone:v49];
        }

        v46 = [v44 countByEnumeratingWithState:&v61 objects:v78 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    *(*(*(v28 + 72) + 8) + 24) = [*(*(v28 + 32) + 24) nextRank];
  }

  v50 = 1;
LABEL_50:

  return v50;
}

uint64_t __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 72);
  v4 = [v2 requestID];
  if (v3 == v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1_cold_1((a1 + 72), v5, v6);
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 72);
      *buf = 134218498;
      v32 = v7;
      v33 = 2048;
      v34 = [v2 requestID];
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking sync request in side care zone as failed because requestIDs differ %lld vs %lld%@", buf, 0x20u);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [*(*(a1 + 32) + 8) itemFetcher];
  v9 = [v8 itemsWithSideCarInFlightDiffsEnumeratorWithDBFacade:*(a1 + 40)];

  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (v3 == v4)
        {
          [v14 markLatestSyncRequestAcknowledgedInZone:&unk_2837B0100];
        }

        else
        {
          [v14 markLatestSyncRequestFailedInZone:&unk_2837B0100];
        }

        [v14 saveToDBForServerEdit:1 keepAliases:1];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  [v2 updateWithServerChangeToken:*(a1 + 48) requestID:*(a1 + 72)];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(a1 + 56);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(a1 + 32) + 32) generatedRanksForZone:*(*(&v21 + 1) + 8 * j) upToRank:{*(*(*(a1 + 64) + 8) + 24), v21}];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  return 1;
}

void __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to alloc ranks when syncing down side cars for %@%@", &v3, 0x16u);
}

void __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Succeeded in syncing up the side car zone with requestID %lld%@", &v4, 0x16u);
}

@end