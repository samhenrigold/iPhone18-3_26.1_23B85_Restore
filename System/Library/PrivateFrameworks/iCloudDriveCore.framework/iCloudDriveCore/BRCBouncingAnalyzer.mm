@interface BRCBouncingAnalyzer
- (BOOL)_isGenericUntitledFileName:(id)name;
- (BOOL)analyzeServerBouncingOfItem:(id)item withServerItem:(id)serverItem;
- (BOOL)analyzeServerBouncingOriginalRecord:(id)record savedRecord:(id)savedRecord;
- (BRCBouncingAnalyzer)initWithSessionContext:(id)context;
- (int)analyzeBouncingOfItem:(id)item withServerItem:(id)serverItem bounceReason:(int)reason;
- (void)analyzeBouncingOfItem:(id)item withTemplateItem:(id)templateItem;
- (void)close;
- (void)handleBounceIncidentDuringApplyWithServerItem:(id)item bounceReason:(int)reason;
- (void)reportInitialScanItemTypeMismatch:(id)mismatch;
- (void)startBouncingIncidentBatch;
- (void)stopBouncingIncidentBatch;
@end

@implementation BRCBouncingAnalyzer

- (BRCBouncingAnalyzer)initWithSessionContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = BRCBouncingAnalyzer;
  v5 = [(BRCBouncingAnalyzer *)&v15 init];
  if (v5)
  {
    tapToRadarManager = [contextCopy tapToRadarManager];
    tapToRadarManager = v5->_tapToRadarManager;
    v5->_tapToRadarManager = tapToRadarManager;

    analyticsReporter = [contextCopy analyticsReporter];
    analyticsReporter = v5->_analyticsReporter;
    v5->_analyticsReporter = analyticsReporter;

    clientReadWriteDatabaseFacade = [contextCopy clientReadWriteDatabaseFacade];
    dbFacade = v5->_dbFacade;
    v5->_dbFacade = clientReadWriteDatabaseFacade;

    v12 = objc_opt_new();
    bounceIncidentsInBatch = v5->_bounceIncidentsInBatch;
    v5->_bounceIncidentsInBatch = v12;

    v5->_bouncingIncidentBatchStarted = 0;
  }

  return v5;
}

- (void)close
{
  tapToRadarManager = self->_tapToRadarManager;
  self->_tapToRadarManager = 0;

  analyticsReporter = self->_analyticsReporter;
  self->_analyticsReporter = 0;
}

- (void)reportInitialScanItemTypeMismatch:(id)mismatch
{
  mismatchCopy = mismatch;
  v5 = +[BRCAutoBugCaptureReporter sharedABCReporter];
  [v5 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"InitialScanBounce" forError:0];

  [(BRCAnalyticsReporter *)self->_analyticsReporter aggregateReportForAppTelemetryIdentifier:300 error:0];
  v6 = MEMORY[0x277CCACA8];
  itemID = [mismatchCopy itemID];

  v10 = [v6 stringWithFormat:@"Item %@ type was not compatible with local initial scan item", itemID];

  tapToRadarManager = self->_tapToRadarManager;
  brc_errorInitialScanItemTypeMismatch = [MEMORY[0x277CCA9B8] brc_errorInitialScanItemTypeMismatch];
  [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Initial scan item type mismatch" description:v10 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"type mismatch between server and client item during reimport" triggerRootCause:brc_errorInitialScanItemTypeMismatch additionalDevices:0];
}

- (BOOL)analyzeServerBouncingOriginalRecord:(id)record savedRecord:(id)savedRecord
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  savedRecordCopy = savedRecord;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqualToString:@"structure"];

  if (v9)
  {
    v33 = 0;
    location = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    if (![recordCopy deserializeFilename:0 basename:&location bounceno:&v33 extension:&v32 userInfo:0 error:0] || !objc_msgSend(savedRecordCopy, "deserializeFilename:basename:bounceno:extension:userInfo:error:", 0, &v31, &v30, &v29, 0, 0))
    {
      goto LABEL_21;
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      recordID = [recordCopy recordID];
      *buf = 138414082;
      v36 = recordID;
      v37 = 2112;
      v38 = location;
      v39 = 2112;
      v40 = v33;
      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v46 = v30;
      v47 = 2112;
      v48 = v29;
      v49 = 2112;
      v50 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] RecordID: %@ orig:<baseName: %@ bounceNo: %@ extension: %@> -> saved:<baseName: %@ bounceNo: %@ extension: %@>%@", buf, 0x52u);
    }

    v12 = location ? location : &stru_2837504F0;
    objc_storeStrong(&location, v12);
    v13 = v31 ? v31 : &stru_2837504F0;
    objc_storeStrong(&v31, v13);
    v14 = v32 ? v32 : &stru_2837504F0;
    objc_storeStrong(&v32, v14);
    v15 = v29 ? v29 : &stru_2837504F0;
    objc_storeStrong(&v29, v15);
    if ([location isEqualToString:v31] && objc_msgSend(v32, "isEqualToString:", v29) && (objc_msgSend(v33, "br_isEqualToNumber:", v30) & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [(BRCBouncingAnalyzer *)recordCopy analyzeServerBouncingOriginalRecord:v18 savedRecord:v19];
      }

      v20 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v20 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"ServerBouncedItem" forError:0];

      pluginFields = [recordCopy pluginFields];
      v22 = [pluginFields objectForKeyedSubscript:@"br_initialItem"];

      if (v22)
      {
        v23 = MEMORY[0x277CCACA8];
        recordID2 = [recordCopy recordID];
        v25 = [v23 stringWithFormat:@"Item %@ got bounced by server after being set that it is from initial scan", recordID2];

        tapToRadarManager = self->_tapToRadarManager;
        brc_errorRecordBouncedByServer = [MEMORY[0x277CCA9B8] brc_errorRecordBouncedByServer];
        v16 = 1;
        [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Initial scan item got bounced by server" description:v25 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"reimported item got bounced by server" triggerRootCause:brc_errorRecordBouncedByServer additionalDevices:0];
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
LABEL_21:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)analyzeServerBouncingOfItem:(id)item withServerItem:(id)serverItem
{
  itemCopy = item;
  serverItemCopy = serverItem;
  v8 = serverItemCopy;
  if (itemCopy && [serverItemCopy isLive])
  {
    v30 = 0;
    v9 = [itemCopy st];
    logicalNameWithoutLocalBounce = [v9 logicalNameWithoutLocalBounce];
    v29 = 0;
    v11 = [logicalNameWithoutLocalBounce br_stringByDeletingPathBounceNo:&v30 andPathExtension:&v29];
    v12 = v29;

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_2837504F0;
    }

    v14 = v13;

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = &stru_2837504F0;
    }

    v16 = v15;

    v28 = 0;
    v17 = [v8 st];
    logicalName = [v17 logicalName];
    v27 = 0;
    v19 = [logicalName br_stringByDeletingPathBounceNo:&v28 andPathExtension:&v27];
    v20 = v27;

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_2837504F0;
    }

    v22 = v21;

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &stru_2837504F0;
    }

    v24 = v23;

    if ([(__CFString *)v14 isEqualToString:v22]&& [(__CFString *)v16 isEqualToString:v24]&& v30 != v28)
    {
      [(BRCAnalyticsReporter *)self->_analyticsReporter aggregateReportForAppTelemetryIdentifier:503 error:0];
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_isGenericUntitledFileName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = _BRLocalizedStringWithFormat();
  localizedLowercaseString = [v6 localizedLowercaseString];

  v8 = [nameCopy st];

  logicalName = [v8 logicalName];
  localizedLowercaseString2 = [logicalName localizedLowercaseString];

  LOBYTE(v8) = [localizedLowercaseString2 hasPrefix:localizedLowercaseString];
  return v8;
}

- (int)analyzeBouncingOfItem:(id)item withServerItem:(id)serverItem bounceReason:(int)reason
{
  itemCopy = item;
  serverItemCopy = serverItem;
  if (reason == 501)
  {
    if ([itemCopy isDead])
    {
      reason = 513;
    }

    else if ([itemCopy isFromInitialScan])
    {
      reason = 517;
    }

    else if ([itemCopy isKnownByServer])
    {
      if (([itemCopy localDiffs] & 0x20) != 0)
      {
        reason = 515;
      }

      else if (([itemCopy localDiffs] & 0x40) != 0)
      {
        reason = 516;
      }

      else if ([(BRCBouncingAnalyzer *)self _isGenericUntitledFileName:serverItemCopy])
      {
        if ([itemCopy isChildSharedItem] && (objc_msgSend(serverItemCopy, "isChildSharedItem") & 1) != 0)
        {
          reason = 518;
        }

        else
        {
          reason = 519;
        }
      }

      else
      {
        reason = 501;
      }
    }

    else
    {
      if ([itemCopy isDirectory] && objc_msgSend(serverItemCopy, "isDirectory"))
      {
        v10 = +[BRCAutoBugCaptureReporter sharedABCReporter];
        [v10 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"CollidingDirectoryApplyNotKnownByServerBounce" forError:0];

        v11 = MEMORY[0x277CCACA8];
        itemID = [itemCopy itemID];
        v13 = [v11 stringWithFormat:@"Directory %@ got bounced due to a colliding new directory applied on server", itemID];

        tapToRadarManager = self->_tapToRadarManager;
        brc_errorBouncedItemNotKnownByServer = [MEMORY[0x277CCA9B8] brc_errorBouncedItemNotKnownByServer];
        [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Directory name collision when applying from server" description:v13 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"directory bounced due to a new directory applied from server" triggerRootCause:brc_errorBouncedItemNotKnownByServer additionalDevices:0];
      }

      reason = 514;
    }
  }

  return reason;
}

- (void)analyzeBouncingOfItem:(id)item withTemplateItem:(id)templateItem
{
  itemCopy = item;
  templateItemCopy = templateItem;
  if ([itemCopy isDirectory])
  {
    contentType = [templateItemCopy contentType];
    br_isDirectoryType = [contentType br_isDirectoryType];

    if (br_isDirectoryType)
    {
      v9 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v9 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"CollidingDirectoryBounceInFPCreate" forError:0];

      v10 = MEMORY[0x277CCACA8];
      itemID = [itemCopy itemID];
      v12 = [v10 stringWithFormat:@"Directory %@ got bounced due to a colliding new directory created on disk", itemID];

      tapToRadarManager = self->_tapToRadarManager;
      brc_errorInitialScanItemBouncedByServer = [MEMORY[0x277CCA9B8] brc_errorInitialScanItemBouncedByServer];
      [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Directory name collision when creating new item" description:v12 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"directory bounced due to a new directory created on disk" triggerRootCause:brc_errorInitialScanItemBouncedByServer additionalDevices:0];
    }
  }
}

- (void)startBouncingIncidentBatch
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: !_bouncingIncidentBatchStarted%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)handleBounceIncidentDuringApplyWithServerItem:(id)item bounceReason:(int)reason
{
  v4 = *&reason;
  itemCopy = item;
  isInternalBuild = [MEMORY[0x277CFAEB0] isInternalBuild];
  if (v4 && isInternalBuild)
  {
    v8 = objc_opt_new();
    itemID = [itemCopy itemID];
    [v8 setItemID:itemID];

    [v8 setBounceReason:v4];
    latestVersion = [itemCopy latestVersion];
    v11 = [latestVersion lastEditorDeviceDisplayNameWithDBFacade:self->_dbFacade];
    [v8 setLastEditorDeviceName:v11];

    v12 = self->_bounceIncidentsInBatch;
    objc_sync_enter(v12);
    if (!self->_bouncingIncidentBatchStarted)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(BRCBouncingAnalyzer *)v13 handleBounceIncidentDuringApplyWithServerItem:v14 bounceReason:v15, v16, v17, v18, v19, v20];
      }
    }

    [(NSMutableArray *)self->_bounceIncidentsInBatch addObject:v8];
    objc_sync_exit(v12);
  }
}

- (void)stopBouncingIncidentBatch
{
  v3 = self->_bounceIncidentsInBatch;
  objc_sync_enter(v3);
  if (!self->_bouncingIncidentBatchStarted)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BRCBouncingAnalyzer *)v13 handleBounceIncidentDuringApplyWithServerItem:v14 bounceReason:v15, v16, v17, v18, v19, v20];
    }
  }

  v4 = [(NSMutableArray *)self->_bounceIncidentsInBatch copy];
  [(NSMutableArray *)self->_bounceIncidentsInBatch removeAllObjects];
  self->_bouncingIncidentBatchStarted = 0;
  objc_sync_exit(v3);

  if ([v4 count])
  {
    v5 = MEMORY[0x277CBEB70];
    v6 = [v4 br_transform:&__block_literal_global_59];
    v7 = [v5 orderedSetWithArray:v6];

    v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:160 description:@"Items got bounced"];
    v9 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v9 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"BouncedItem" forError:v8];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"some items got bounced on latest update:\n%@", v4];
    tapToRadarManager = self->_tapToRadarManager;
    array = [v7 array];
    [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] some items got bounced on latest update" description:v10 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"some items got bounced on latest update" triggerRootCause:v8 additionalDevices:array];
  }
}

- (void)analyzeServerBouncingOriginalRecord:(NSObject *)a3 savedRecord:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 recordID];
  v7 = [a1 pluginFields];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Server bounced record %@. Plugin fields: %@%@", &v8, 0x20u);
}

- (void)handleBounceIncidentDuringApplyWithServerItem:(uint64_t)a3 bounceReason:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: _bouncingIncidentBatchStarted%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end