@interface BRCListNonLocalVersionsOperation
- (BRCListNonLocalVersionsOperation)initWithDocumentItem:(id)item sessionContext:(id)context;
- (id)createActivity;
- (void)main;
@end

@implementation BRCListNonLocalVersionsOperation

- (BRCListNonLocalVersionsOperation)initWithDocumentItem:(id)item sessionContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  serverZone = [itemCopy serverZone];
  metadataSyncContext = [serverZone metadataSyncContext];
  v20.receiver = self;
  v20.super_class = BRCListNonLocalVersionsOperation;
  v10 = [(_BRCOperation *)&v20 initWithName:@"versions/list-non-local-versions" syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(BRCListNonLocalVersionsOperation *)itemCopy initWithDocumentItem:v11 sessionContext:v12];
    }

    [(BRCListNonLocalVersionsOperation *)v10 setItem:itemCopy];
    documentRecordID = [itemCopy documentRecordID];
    [(BRCListNonLocalVersionsOperation *)v10 setRecordID:documentRecordID];

    v14 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:itemCopy];
    [(BRCListNonLocalVersionsOperation *)v10 setShareID:v14];

    serverZone2 = [itemCopy serverZone];
    [(BRCListNonLocalVersionsOperation *)v10 setServerZone:serverZone2];

    currentVersion = [itemCopy currentVersion];
    [(BRCListNonLocalVersionsOperation *)v10 setCurrentVersion:currentVersion];

    [(_BRCOperation *)v10 setNonDiscretionary:1];
    br_sharingMisc = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v10 setGroup:br_sharingMisc];

    v18 = [[BRCNotification alloc] initWithLocalItem:v10->_item itemDiffs:0];
    [(BRCListNonLocalVersionsOperation *)v10 setNotification:v18];

    objc_storeStrong(&v10->_sessionContext, context);
  }

  return v10;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "versions/list-non-local-versions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v25[1] = *MEMORY[0x277D85DE8];
  serverZone = [(BRCListNonLocalVersionsOperation *)self serverZone];
  clientZone = [serverZone clientZone];

  recordID = [(BRCListNonLocalVersionsOperation *)self recordID];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc(MEMORY[0x277CBC398]);
  v25[0] = recordID;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v9 = [v7 initWithRecordIDs:v8];

  v10 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:153];
  [v9 setDesiredKeys:v10];

  br_fetchNonLocalVersions = [MEMORY[0x277CBC4F8] br_fetchNonLocalVersions];
  [v9 setGroup:br_fetchNonLocalVersions];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __40__BRCListNonLocalVersionsOperation_main__block_invoke;
  v21[3] = &unk_278506B20;
  v21[4] = self;
  v12 = recordID;
  v22 = v12;
  v23 = clientZone;
  v13 = v6;
  v24 = v13;
  v14 = clientZone;
  [v9 setFetchRecordVersionsProgressBlock:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__BRCListNonLocalVersionsOperation_main__block_invoke_9;
  v17[3] = &unk_278502620;
  v18 = v12;
  selfCopy = self;
  v20 = v13;
  v15 = v13;
  v16 = v12;
  [v9 setFetchRecordVersionsCompletionBlock:v17];
  [(_BRCOperation *)self addSubOperation:v9];
}

void __40__BRCListNonLocalVersionsOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v44 = a4;
  v8 = a5;
  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    if (v8)
    {
      [*(a1 + 32) completedWithResult:0 error:v8];
      goto LABEL_32;
    }

    memset(v55, 0, sizeof(v55));
    __brc_create_section(0, "[BRCListNonLocalVersionsOperation main]_block_invoke", 85, 0, v55);
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v39 = v55[0];
      v40 = [v44 count];
      v41 = *(a1 + 40);
      *buf = 134218754;
      v58 = v39;
      v59 = 2048;
      v60 = v40;
      v61 = 2112;
      v62 = v41;
      v63 = 2112;
      v64 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Got %lu versions for (recordID:%@)%@", buf, 0x2Au);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v44;
    v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    v8 = 0;
    if (!v11)
    {
LABEL_31:

      __brc_leave_section(v55);
      goto LABEL_32;
    }

    v46 = *v52;
    *&v12 = 138412546;
    v42 = v12;
LABEL_8:
    v47 = v11;
    v13 = 0;
    while (1)
    {
      if (*v52 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v51 + 1) + 8 * v13);
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v14 etag];
        v38 = [v14 debugDescription];
        *buf = 138412802;
        v58 = v37;
        v59 = 2112;
        v60 = v38;
        v61 = 2112;
        v62 = v15;
        _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Considering etag %@ %@%@", buf, 0x20u);
      }

      v17 = [*(a1 + 32) currentVersion];
      v18 = [v17 ckInfo];
      v19 = [v18 etag];
      v20 = [v14 etag];
      v21 = [v19 isEqualToString:v20];

      if (v21)
      {
        v22 = brc_bread_crumbs();
        v23 = brc_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v58 = v22;
          _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Skipping current version%@", buf, 0xCu);
        }

        goto LABEL_29;
      }

      v49 = v8;
      v50 = 0;
      v24 = [v14 deserializeVersion:&v50 fakeStatInfo:0 contentBoundaryKey:0 clientZone:*(a1 + 48) error:&v49];
      v22 = v50;
      v25 = v49;

      if (v24)
      {
        v26 = [v22 originalPOSIXName];
        v27 = v26 == 0;

        if (!v27)
        {
          if ([v14 brc_currentUserOwnsLastEditorDeviceWithSessionContext:*(*(a1 + 32) + 504)])
          {
            v23 = [v14 brc_lastEditorDeviceName];
            v28 = 0;
          }

          else
          {
            v30 = [*(*(a1 + 32) + 504) cachedCurrentUserRecordName];
            v48 = 0;
            v31 = [v14 brc_lastModifiedUserRecordNameWithCurrentUserRecordName:v30 personNameComponents:&v48];
            v28 = v48;

            v23 = 0;
          }

          v32 = [*(a1 + 32) notification];
          v33 = [v32 copy];

          v34 = [v14 etag];
          v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "mtime")}];
          v36 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "size")}];
          [v33 markAsLoserVersionWithEtag:v34 modificationDate:v35 editorNameComponents:v28 lastEditorDeviceName:v23 size:v36];

          [*(a1 + 56) addObject:v33];
          goto LABEL_28;
        }

        v23 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, 0x90u))
        {
          *buf = 138412290;
          v58 = v23;
          _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Version is lacking a name%@", buf, 0xCu);
        }
      }

      else
      {
        v23 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, 0x90u))
        {
          *buf = v42;
          v58 = v25;
          v59 = 2112;
          v60 = v23;
          _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Unable to deserialize record: %@%@", buf, 0x16u);
        }
      }

LABEL_28:
      v8 = v25;
LABEL_29:

      if (v47 == ++v13)
      {
        v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (!v11)
        {
          goto LABEL_31;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_32:
}

void __40__BRCListNonLocalVersionsOperation_main__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCListNonLocalVersionsOperation_main__block_invoke_9_cold_1(a1, v4, v5);
  }

  if (([*(a1 + 40) finishIfCancelled] & 1) == 0)
  {
    [*(a1 + 40) completedWithResult:*(a1 + 48) error:v3];
  }
}

@end