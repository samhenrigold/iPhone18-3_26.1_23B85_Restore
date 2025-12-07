@interface BRCContainerMetadataSyncDownOperation
- (BOOL)shouldRetryForError:(id)error;
- (BRCContainerMetadataSyncDownOperation)initWithSessionContext:(id)context syncContext:(id)syncContext state:(id)state containerSyncDownCallback:(id)callback;
- (id)createActivity;
- (void)_completedWithServerChangeToken:(id)token requestID:(unint64_t)d;
- (void)_updateContainerMetadataFromRecord:(id)record appLibrary:(id)library stripIcons:(BOOL)icons;
- (void)main;
- (void)performAfterCreatingZoneIfNeeded:(id)needed;
- (void)performAfterFetchingAssetContents:(id)contents;
- (void)performAfterFetchingRecordChanges:(id)changes;
@end

@implementation BRCContainerMetadataSyncDownOperation

- (BRCContainerMetadataSyncDownOperation)initWithSessionContext:(id)context syncContext:(id)syncContext state:(id)state containerSyncDownCallback:(id)callback
{
  stateCopy = state;
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = BRCContainerMetadataSyncDownOperation;
  v13 = [(_BRCOperation *)&v16 initWithName:@"sync-down/container-metadata" syncContext:syncContext sessionContext:context];
  v14 = v13;
  if (v13)
  {
    [(_BRCOperation *)v13 setNonDiscretionary:[(BRCContainerMetadataSyncPersistedState *)v13->_state hasCaughtUpAtLeastOnce]^ 1];
    objc_storeStrong(&v14->_state, state);
    objc_storeStrong(&v14->_containerSyncDownCallback, callback);
  }

  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-down/container-metadata", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)performAfterCreatingZoneIfNeeded:(id)needed
{
  neededCopy = needed;
  serverChangeToken = [(BRCContainerMetadataSyncPersistedState *)self->_state serverChangeToken];

  if (serverChangeToken)
  {
    neededCopy[2](neededCopy, 0);
  }

  else
  {
    v5 = [BRCCreateZoneAndSubscribeOperation alloc];
    sessionContext = self->super._sessionContext;
    brc_containerMetadataZoneID = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
    v8 = [(BRCCreateZoneAndSubscribeOperation *)v5 initWithSessionContext:sessionContext zoneID:brc_containerMetadataZoneID];

    [(BRCCreateZoneAndSubscribeOperation *)v8 setOptimisticSubscribe:1];
    [(BRCCreateZoneAndSubscribeOperation *)v8 setCreateZoneAndSubscribeCompletionBlock:neededCopy];
    [(_BRCOperation *)self addSubOperation:v8];
  }
}

- (void)_updateContainerMetadataFromRecord:(id)record appLibrary:(id)library stripIcons:(BOOL)icons
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  libraryCopy = library;
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];

  if (serialQueue)
  {
    brc_containerMetadataPropertiesData = [recordCopy brc_containerMetadataPropertiesData];
    if (brc_containerMetadataPropertiesData)
    {
      if (![libraryCopy shouldSaveContainerMetadataServerside])
      {
LABEL_16:
        objc_initWeak(buf, libraryCopy);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke_3;
        v21[3] = &unk_2784FFDF8;
        objc_copyWeak(&v23, buf);
        v22 = recordCopy;
        dispatch_async(serialQueue, v21);

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
        goto LABEL_17;
      }

      if (icons)
      {
        brc_containerMetadataIconPaths = 0;
      }

      else
      {
        brc_containerMetadataIconPaths = [recordCopy brc_containerMetadataIconPaths];
      }

      containerMetadata = [libraryCopy containerMetadata];
      isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

      containerMetadata2 = [libraryCopy containerMetadata];
      [containerMetadata2 updateMetadataWithRecordData:brc_containerMetadataPropertiesData iconPaths:brc_containerMetadataIconPaths];

      containerMetadata3 = [libraryCopy containerMetadata];
      isDocumentScopePublic2 = [containerMetadata3 isDocumentScopePublic];

      if (isDocumentScopePublic != isDocumentScopePublic2)
      {
        objc_initWeak(buf, libraryCopy);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke;
        block[3] = &unk_2784FF400;
        objc_copyWeak(&v25, buf);
        dispatch_async(serialQueue, block);
        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      brc_containerMetadataIconPaths = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = recordCopy;
        v28 = 2112;
        v29 = brc_containerMetadataIconPaths;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] no data in record %@%@", buf, 0x16u);
      }
    }

    goto LABEL_16;
  }

  brc_containerMetadataPropertiesData = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = brc_containerMetadataPropertiesData;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Serial queue is nil%@", buf, 0xCu);
  }

LABEL_17:
}

void __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateDocumentScopePublic];
}

void __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) recordChangeTag];
  [WeakRetained setContainerMetadataEtag:v2];
}

- (void)performAfterFetchingRecordChanges:(id)changes
{
  v74[1] = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v67 = 0;
  group = [(_BRCOperation *)self group];
  name = [group name];
  br_syncDownPeriodic = [MEMORY[0x277CBC4F8] br_syncDownPeriodic];
  name2 = [br_syncDownPeriodic name];
  v9 = [name isEqualToString:name2];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSideCarSyncDownOperation *)v10 _createSyncDownOperation];
    }
  }

  brc_containerMetadataZoneID = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
  v13 = objc_opt_new();
  v14 = +[BRCUserDefaults defaultsForMetadataContainer];
  [v13 setResultsLimit:{objc_msgSend(v14, "maxRecordCountInFetchRecordsOperation")}];

  v15 = BRContainerIconCKAssetKeys();
  allObjects = [v15 allObjects];
  v17 = [allObjects arrayByAddingObject:@"infoPlist"];
  [v13 setDesiredKeys:v17];

  serverChangeToken = [(BRCContainerMetadataSyncPersistedState *)self->_state serverChangeToken];
  [v13 setPreviousServerChangeToken:serverChangeToken];

  v19 = objc_alloc(MEMORY[0x277CBC3B8]);
  v74[0] = brc_containerMetadataZoneID;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  v72 = brc_containerMetadataZoneID;
  v73 = v13;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v22 = [v19 initWithRecordZoneIDs:v20 optionsByRecordZoneID:v21];

  v23 = objc_opt_new();
  [v22 setConfiguration:v23];

  configuration = [v22 configuration];
  [configuration setSourceApplicationBundleIdentifier:*MEMORY[0x277CFAD58]];

  [v22 setShouldFetchAssetContents:0];
  v62 = 0uLL;
  v63 = 0;
  __brc_create_section(0, "[BRCContainerMetadataSyncDownOperation performAfterFetchingRecordChanges:]", 150, 0, &v62);
  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v62;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v71 = v25;
    _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx starting fetch container-metadata changes operation %@%@", buf, 0x20u);
  }

  v64 = v62;
  v65 = v63;
  [v22 setFetchAllChanges:0];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke;
  v58[3] = &unk_278502690;
  v59 = v64;
  v61 = v9;
  v58[4] = self;
  v58[5] = v66;
  v60 = v65;
  v58[6] = v68;
  [v22 setRecordChangedBlock:v58];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v71) = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_18;
  v51[3] = &unk_2785026E0;
  v56 = v64;
  v57 = v65;
  v54 = buf;
  v51[4] = self;
  v27 = brc_containerMetadataZoneID;
  v52 = v27;
  v55 = v68;
  v28 = changesCopy;
  v53 = v28;
  [v22 setRecordZoneFetchCompletionBlock:v51];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2;
  v42 = &unk_278502708;
  v48 = v64;
  v49 = v65;
  v50 = v9;
  v46 = v66;
  selfCopy = self;
  v29 = v27;
  v44 = v29;
  v47 = buf;
  v30 = v28;
  v45 = v30;
  [v22 setFetchRecordZoneChangesCompletionBlock:&v39];
  array = [MEMORY[0x277CBEB18] array];
  recordIDsForDesiredAssets = self->_recordIDsForDesiredAssets;
  self->_recordIDsForDesiredAssets = array;

  v33 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"infoPlist", 0, v39, v40, v41, v42, selfCopy}];
  desiredKeysForDesiredAssets = self->_desiredKeysForDesiredAssets;
  self->_desiredKeysForDesiredAssets = v33;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  recordIDsToVersionETagsForDesiredAssets = self->_recordIDsToVersionETagsForDesiredAssets;
  self->_recordIDsToVersionETagsForDesiredAssets = dictionary;

  v37 = [MEMORY[0x277CBEB58] set];
  containerIDsUpdated = self->_containerIDsUpdated;
  self->_containerIDsUpdated = v37;

  [(_BRCOperation *)self addSubOperation:v22];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v56 = *(a1 + 56);
  v57 = *(a1 + 72);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  v49 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v3 recordID];
    v40 = [v3 allKeys];
    v41 = [v3 recordChangeTag];
    v42 = [v3 modifiedByDevice];
    *buf = 134219266;
    v60 = v56;
    v61 = 2112;
    v62 = v39;
    v63 = 2112;
    v64 = v40;
    v65 = 2112;
    v66 = v41;
    v67 = 2112;
    v68 = v42;
    v69 = 2112;
    v70 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx got container-metadata changes for %@ keys:%@ changeTag:%@ modified:%@%@", buf, 0x3Eu);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (*(a1 + 80) == 1)
  {
    v6 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v7 = [v3 brc_lastEditorDeviceName];
    [v6 addEditingDevice:v7];
  }

  v8 = [v49 recordID];
  v48 = [v8 recordName];

  v9 = v48;
  if ([MEMORY[0x277CFAE60] validateContainerID:v48])
  {
    v47 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:v48];
    v55 = 0;
    v10 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v11 = [v10 getOrCreateAppLibraryAndPrivateZonesIfNecessary:v47 appLibraryExists:&v55];

    *(*(*(a1 + 48) + 8) + 24) = v55 ^ 1;
    if (!v11)
    {
LABEL_21:

      v9 = v48;
      goto LABEL_22;
    }

    v12 = *(*(a1 + 32) + 536);
    v13 = [v11 appLibraryID];
    [v12 addObject:v13];

    v14 = [v49 brc_containerMetadataPropertiesData];
    v45 = v14;
    if (v14)
    {
      v54 = 0;
      v46 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:{&v54, v14}];
      v15 = v54;
      if (!v15)
      {
        v22 = brc_bread_crumbs();
        v23 = brc_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v60 = v46;
          v61 = 2112;
          v62 = v47;
          v63 = 2112;
          v64 = v22;
          _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] received container-metadata properties plist %@ for %@%@", buf, 0x20u);
        }

        if (![MEMORY[0x277CFAE20] isDocumentScopePublicWithProperties:v46 mangledID:v47])
        {
          v19 = 1;
          goto LABEL_17;
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v16 = [v49 brc_containerMetadataIconNames];
        v19 = 0;
        v24 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v24)
        {
          v25 = *v51;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v51 != v25)
              {
                objc_enumerationMutation(v16);
              }

              v27 = *(*(&v50 + 1) + 8 * i);
              v28 = [v11 containerMetadata];
              v29 = [v28 hasIconWithName:v27];

              if ((v29 & 1) == 0)
              {
                v19 = brc_bread_crumbs();
                v30 = brc_default_log();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  v33 = [v11 appLibraryID];
                  *buf = 138412802;
                  v60 = v27;
                  v61 = 2112;
                  v62 = v33;
                  v63 = 2112;
                  v64 = v19;
                  _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] we'll download icon %@ for container %@%@", buf, 0x20u);
                }

                v31 = *(*(a1 + 32) + 520);
                v32 = BRContainerIconCKAssetKeyForName();
                [v31 addObject:v32];

                LOBYTE(v19) = 1;
              }
            }

            v24 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v24);

          if (v19)
          {
            v34 = *(*(a1 + 32) + 512);
            v35 = [v49 recordID];
            [v34 addObject:v35];

            v36 = *(*(a1 + 32) + 528);
            v37 = [v49 etag];
            v38 = [v49 recordID];
            [v36 setObject:v37 forKey:v38];

LABEL_20:
            goto LABEL_21;
          }

          v19 = 0;
LABEL_17:
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v43 = [v49 recordID];
            v44 = [v49 recordChangeTag];
            *buf = 138412802;
            v60 = v43;
            v61 = 2112;
            v62 = v44;
            v63 = 2112;
            v64 = v20;
            _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] updating container-metadata %@ at etag:%@ (no asset downloaded)%@", buf, 0x20u);
          }

          [*(a1 + 32) _updateContainerMetadataFromRecord:v49 appLibrary:v11 stripIcons:v19];
          goto LABEL_20;
        }

LABEL_16:

        goto LABEL_17;
      }

      v16 = v15;
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        *buf = 138412802;
        v60 = v48;
        v61 = 2112;
        v62 = v16;
        v63 = 2112;
        v64 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] failed parsing container-metadata plist for container %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_cold_1();
      }

      v46 = 0;
    }

    v19 = 1;
    goto LABEL_16;
  }

LABEL_22:

  __brc_leave_section(&v56);
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v30 = *(a1 + 72);
  v31 = *(a1 + 88);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219266;
    v33 = v30;
    if (a5)
    {
      v23 = "no";
    }

    else
    {
      v23 = "yes";
    }

    v34 = 2112;
    v35 = v12;
    v36 = 2080;
    v37 = v23;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx container-metadata receieved server change token %@, caught-up:%s client change token %@ error:%@%@", buf, 0x3Eu);
  }

  *(*(a1 + 32) + 552) = a5;
  v17 = [v14 brc_cloudKitErrorForZone:*(a1 + 40)];
  v18 = *(a1 + 32);
  v19 = *(v18 + 256);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_21;
  v24[3] = &unk_2785026B8;
  v29 = *(a1 + 64);
  v24[4] = v18;
  v20 = v13;
  v25 = v20;
  v28 = *(a1 + 48);
  v21 = v12;
  v26 = v21;
  v22 = v17;
  v27 = v22;
  [v19 performAsyncOnClientReadWriteDatabaseWorkloop:v24];

  __brc_leave_section(&v30);
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(*(a1 + 32) + 544) recievedNewNonExistingAppLibraryCallback];
  }

  [*(a1 + 40) bytes];
  (*(*(a1 + 64) + 16))();
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2_cold_1();
  }

  if (!v3 && *(a1 + 96) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v6 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v7 = [*(a1 + 40) zoneName];
    [v6 addZoneWithNoRealChanges:v7];
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  __brc_leave_section(&v8);
}

- (void)performAfterFetchingAssetContents:(id)contents
{
  v32 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  v5 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:self->_recordIDsForDesiredAssets];
  [v5 setRecordIDsToVersionETags:self->_recordIDsToVersionETagsForDesiredAssets];
  [v5 setDesiredKeys:self->_desiredKeysForDesiredAssets];
  operationID = [v5 operationID];
  v26 = 0uLL;
  v27 = 0;
  __brc_create_section(0, "[BRCContainerMetadataSyncDownOperation performAfterFetchingAssetContents:]", 256, 0, &v26);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    recordIDsForDesiredAssets = self->_recordIDsForDesiredAssets;
    *buf = 134218754;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v29 = recordIDsForDesiredAssets;
    v30 = 2112;
    v31 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx adding sub-operation to fetch asset contents: %@ for records: %@%@", buf, 0x2Au);
  }

  *&buf[16] = v27;
  *buf = v26;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke;
  v23[3] = &unk_278502730;
  v24 = v26;
  v25 = v27;
  v23[4] = self;
  [v5 setPerRecordCompletionBlock:v23];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_31;
  v18 = &unk_278502758;
  v21 = *buf;
  v22 = *&buf[16];
  v19 = operationID;
  v20 = contentsCopy;
  v9 = contentsCopy;
  v10 = operationID;
  [v5 setFetchRecordsCompletionBlock:&v15];
  v11 = self->_recordIDsForDesiredAssets;
  self->_recordIDsForDesiredAssets = 0;

  desiredKeysForDesiredAssets = self->_desiredKeysForDesiredAssets;
  self->_desiredKeysForDesiredAssets = 0;

  recordIDsToVersionETagsForDesiredAssets = self->_recordIDsToVersionETagsForDesiredAssets;
  self->_recordIDsToVersionETagsForDesiredAssets = 0;

  [(_BRCOperation *)self addSubOperation:v5, v15, v16, v17, v18];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v35 = v32;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx per record callback: %@ - %@%@", buf, 0x2Au);
  }

  if ([v9 brc_isCloudKitUnknownItemError])
  {
    v12 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v13 = objc_alloc(MEMORY[0x277CFAE60]);
    v14 = [v8 zoneID];
    v15 = [v13 initWithRecordZoneID:v14];
    v16 = [v12 clientZoneByMangledID:v15];
    v17 = [v16 enhancedDrivePrivacyEnabled];

    v18 = [*(*(a1 + 32) + 256) analyticsReporter];
    v19 = [AppTelemetryTimeSeriesEvent newMissingAssetContentEventWithRecordID:v8 enhancedDrivePrivacyEnabled:v17];
    [v18 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v19];
  }

  if (!v9)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_1();
    }

    v22 = [v7 recordID];
    v23 = [v22 recordName];

    v24 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v25 = [v24 appLibraryByID:v23];

    if (v25)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v7 recordID];
        v31 = [v7 recordChangeTag];
        *buf = 138412802;
        v35 = v30;
        v36 = 2112;
        v37 = v31;
        v38 = 2112;
        v39 = v26;
        _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] updating container metadata %@ at etag:%@ (after asset download)%@", buf, 0x20u);
      }

      [*(a1 + 32) _updateContainerMetadataFromRecord:v7 appLibrary:v25 stripIcons:0];
    }

    else
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_2();
      }
    }
  }

  __brc_leave_section(&v32);
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 134218498;
    v16 = v13;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished %@%@", buf, 0x20u);
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 count];
    *buf = 134218498;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] fetched %lu containers metadata from the cloud - %@%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v13);
}

- (BOOL)shouldRetryForError:(id)error
{
  errorCopy = error;
  if ([errorCopy brc_isResetError])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BRCContainerMetadataSyncDownOperation;
    v5 = [(_BRCOperation *)&v7 shouldRetryForError:errorCopy];
  }

  return v5;
}

- (void)_completedWithServerChangeToken:(id)token requestID:(unint64_t)d
{
  tokenCopy = token;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  sessionContext = self->super._sessionContext;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke;
  v11[3] = &unk_2785027A0;
  v11[4] = self;
  v13 = v15;
  dCopy = d;
  v8 = tokenCopy;
  v12 = v8;
  [(BRCSessionContext *)sessionContext performAsyncOnClientReadWriteDatabaseWorkloop:v11];
  callbackQueue = [(_BRCOperation *)self callbackQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_37;
  v10[3] = &unk_278502000;
  v10[4] = self;
  v10[5] = v15;
  dispatch_async(callbackQueue, v10);

  _Block_object_dispose(v15, 8);
}

void __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(a1[4] + 536);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1[4] + 256) zoneAppRetriever];
        v11 = [v10 appLibraryByID:v8];

        v12 = [v11 defaultClientZone];
        v13 = [v12 recomputeAppSyncBlockState];

        if (v13)
        {
          atomic_store(1u, (*(a1[6] + 8) + 24));
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v5);
  }

  v14 = [*(a1[4] + 256) zoneAppRetriever];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2;
  v20[3] = &__block_descriptor_40_e23_B16__0__BRCAppLibrary_8l;
  v20[4] = a1[7];
  [v14 enumerateAppLibraries:v20];

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = a1[5];
    v18 = a1[7];
    *buf = 138412802;
    v26 = v17;
    v27 = 2048;
    v28 = v18;
    v29 = 2112;
    v30 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] remembering container-metadata server change token %@ requestID %llu%@", buf, 0x20u);
  }

  [*(a1[4] + 504) updateWithServerChangeToken:a1[5] requestID:a1[7]];
}

uint64_t __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 containerMetadataSyncRequestID];
  if (v4)
  {
    v5 = v4;
    if (v4 == *(a1 + 32))
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2_cold_1();
      }

      [v3 setContainerMetadataNeedsSyncUp:0];
    }

    else
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v12 = 138413058;
        v13 = v3;
        v14 = 2048;
        v15 = v5;
        v16 = 2048;
        v17 = v10;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Sync up of app library container metdata failed for %@ because requestIDs differ %lld vs %lld%@", &v12, 0x2Au);
      }
    }

    [v3 setContainerMetadataSyncRequestID:0];
  }

  return 1;
}

uint64_t __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_37(uint64_t a1)
{
  v2 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if (v2)
  {
    [*(*(a1 + 32) + 544) appSyncStateChangedCallback];
  }

  v3 = *(a1 + 32);

  return [v3 completedWithResult:0 error:0];
}

- (void)main
{
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCContainerMetadataSyncDownOperation main]", 366, 0, v6);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCContainerMetadataSyncDownOperation main];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__BRCContainerMetadataSyncDownOperation_main__block_invoke;
  v5[3] = &unk_2784FF540;
  v5[4] = self;
  [(BRCContainerMetadataSyncDownOperation *)self performAfterCreatingZoneIfNeeded:v5];
  __brc_leave_section(v6);
}

uint64_t __45__BRCContainerMetadataSyncDownOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {

    return [v4 completedWithResult:0 error:a2];
  }

  else
  {
    v6[5] = v2;
    v6[6] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_2;
    v6[3] = &unk_2785027F0;
    v6[4] = v4;
    return [v4 performAfterFetchingRecordChanges:v6];
  }
}

void __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  v9 = *(a1 + 32);
  if (a4)
  {
    [v9 completedWithResult:0 error:a4];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_3;
    v10[3] = &unk_2785027C8;
    v10[4] = v9;
    v11 = v7;
    v12 = a3;
    [v9 performAfterFetchingAssetContents:v10];
  }
}

void __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 skipContainerRecordsWithMissingAssets];

  if (v4)
  {
    v5 = [v7 brc_checkErrorsFromCloudKit:&__block_literal_global_26];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      [*(a1 + 32) _completedWithServerChangeToken:*(a1 + 40) requestID:*(a1 + 48)];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  [*(a1 + 32) completedWithResult:0 error:v6];
LABEL_6:
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] unknown container %@%@", v1, 0x16u);
}

@end