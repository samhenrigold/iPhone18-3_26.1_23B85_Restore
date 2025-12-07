@interface IMDCKMessageSyncController
+ (id)sharedInstance;
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount activity:(id)activity;
- (BOOL)_isDiskSpaceAvailableForSyncType:(int64_t)type currentBatchCount:(int64_t)count;
- (BOOL)_isValidCKRecordToSync:(id)sync;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion;
- (BOOL)_messageZoneCreated;
- (BOOL)_shouldDeferCoreDuetMessagesSyncWithActivity:(id)activity;
- (BOOL)_shouldFetchArchivedRecords:(id)records;
- (BOOL)_shouldMarkAllMessagesAsNeedingSync;
- (CKServerChangeToken)archivedRecordSyncToken;
- (CKServerChangeToken)latestSyncToken;
- (IMDCKMessageSyncController)init;
- (IMDCKMessageSyncController)initWithSyncTokenStore:(id)store;
- (id)_constructMessageRecordIDUsingTombStoneDictionary:(id)dictionary;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit;
- (id)_messageRecordSalt;
- (id)_messageZoneID;
- (id)_operationErrorForModifyingRecordCompletion:(id)completion;
- (id)_recordsToSaveWithAttemptCount:(unint64_t)count;
- (id)_syncOperationGroupName;
- (int64_t)_numberOfBatchesOfMessagesToFetchInInitialSync;
- (unint64_t)_messageDeleteBatchSize;
- (void)_deleteMessagesWithRecordIDs:(id)ds completion:(id)completion;
- (void)_fetchArchivedRecordsIfNeeded:(BOOL)needed currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity withCompletionBlock:(id)block;
- (void)_fetchMessageZoneChangesSyncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity completionBlock:(id)block;
- (void)_hasMarkedAllMessagesAsNeedingSync;
- (void)_kickOffWriteOnCKQueueWithActivity:(id)activity completion:(id)completion;
- (void)_markAllIncompatibleMessagesForDeletion;
- (void)_migrateSyncTokens;
- (void)_needsToMarkAllMessagesAsNeedingSync;
- (void)_noteSyncEnded;
- (void)_processArchivedRecordsFetchCompletionZoneID:(id)d serverChangeToken:(id)token moreComing:(BOOL)coming currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity error:(id)error completionBlock:(id)self0;
- (void)_processFetchArchivedRecordCompletionWithError:(id)error WithCompletionBlock:(id)block;
- (void)_processFetchRecordZoneChangesCompletionWithError:(id)error completionBlock:(id)block;
- (void)_processModifyRecordsCompletion:(id)completion deletedRecordIDs:(id)ds operationError:(id)error isLastBatchOfWrite:(BOOL)write activity:(id)activity writeCompletionBlock:(id)block;
- (void)_processRecordChange:(id)change;
- (void)_processRecordDeletionCompletion:(id)completion error:(id)error completionBlock:(id)block;
- (void)_processRecordWriteCompletionForRecord:(id)record NSError:(id)error;
- (void)_processRecordZoneFetchCompletionZoneID:(id)d serverChangeToken:(id)token clientChangeTokenData:(id)data moreComing:(BOOL)coming NSError:(id)error syncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)self0 shouldFetchArchivedRecords:(BOOL)self1 activity:(id)self2 completionBlock:(id)self3;
- (void)_resetArvchivedRecordSyncToken;
- (void)_resetSyncToken;
- (void)_scheduleOperation:(id)operation;
- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (void)_writeDirtyMessagesToCloudKitWithActivity:(id)activity completion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteChatBotMessageSyncToken;
- (void)deleteMessageSyncToken;
- (void)deleteMessagesZone;
- (void)setArchivedRecordSyncToken:(id)token;
- (void)setLatestSyncToken:(id)token;
- (void)syncDeletedMessagesToCloudKitWithCompletion:(id)completion;
- (void)syncMessagesWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block;
@end

@implementation IMDCKMessageSyncController

- (IMDCKMessageSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = IMDCKMessageSyncController;
  v6 = [(IMDCKMessageSyncController *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKMessageSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    objc_storeStrong(&v6->_syncTokenStore, store);
    v11 = objc_alloc_init(IMDCKMessageSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visitedChats = v6->_visitedChats;
    v6->_visitedChats = v13;

    v6->_deviceConditionsToCheck = 0;
    v6->_encounteredIncompatibleMessage = 0;
    [(IMDCKMessageSyncController *)v6 _migrateSyncTokens];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_incompatibleMessageDeleteDetected_ name:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
  }

  return v6;
}

- (IMDCKMessageSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKMessageSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

+ (id)sharedInstance
{
  if (qword_2814211A0 != -1)
  {
    sub_22B7D7EC0();
  }

  v3 = qword_281421020;

  return v3;
}

- (id)_messageZoneID
{
  recordZoneManager = [(IMDCKMessageSyncController *)self recordZoneManager];
  messageRecordZoneID = [recordZoneManager messageRecordZoneID];

  return messageRecordZoneID;
}

- (id)_messageRecordSalt
{
  _recordKeyManagerSharedInstance = [(IMDCKMessageSyncController *)self _recordKeyManagerSharedInstance];
  cachedSalt = [_recordKeyManagerSharedInstance cachedSalt];

  return cachedSalt;
}

- (unint64_t)_messageDeleteBatchSize
{
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  isInCloudKitDemoMode = [ckUtilities isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
  {
    return 5;
  }

  else
  {
    return 20;
  }
}

- (int64_t)_numberOfBatchesOfMessagesToFetchInInitialSync
{
  v14 = *MEMORY[0x277D85DE8];
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  isInCloudKitDemoMode = [ckUtilities isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
  {
    return 1;
  }

  ckUtilities2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  serverBag = [ckUtilities2 serverBag];
  v8 = [serverBag objectForKey:@"ck-max-number-of-message-batches"];

  if (v8 && [v8 integerValue] >= 1)
  {
    integerValue = [v8 integerValue];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " overriding max number of message batches to fetch %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    integerValue = 5;
  }

  return integerValue;
}

- (BOOL)_isValidCKRecordToSync:(id)sync
{
  v9 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v4 = [syncCopy size];
  if (v4 > 0xA000 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = [syncCopy size];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "**** Message %lu CKRecord size exceeds max limit.", &v7, 0xCu);
    }
  }

  return v4 <= 0xA000;
}

- (id)_recordsToSaveWithAttemptCount:(unint64_t)count
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (count < 0x32)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B649250;
    block[3] = &unk_278702C50;
    block[4] = self;
    v15 = buf;
    v9 = v5;
    v14 = v9;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (v17[24] == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v20 = 134217984;
          countCopy = count;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We had invalid records attempting to load records again. Attempt count %lu", v20, 0xCu);
        }
      }

      v11 = [(IMDCKMessageSyncController *)self _recordsToSaveWithAttemptCount:count + 1];
    }

    else
    {
      v11 = v9;
    }

    v8 = v11;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "**** We hit max number of attempts to creat CKRecords", buf, 2u);
      }
    }

    v8 = v6;
  }

  return v8;
}

- (BOOL)_messageZoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  recordZoneManager = [(IMDCKMessageSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6497B8;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createMessageZoneIfNeededWithCompletionBlock:v11];

  v6 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    *(v15 + 24) = 0;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating message zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (void)_processRecordWriteCompletionForRecord:(id)record NSError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [recordCopy _stringForKey:@"guid"];
      recordID = [recordCopy recordID];
      *buf = 138412802;
      v31 = v9;
      v32 = 2112;
      v33 = errorCopy;
      v34 = 2112;
      v35 = recordID;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Wrote message with GUID %@, error %@, recordName:%@", buf, 0x20u);
    }
  }

  if (!errorCopy)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B649E4C;
    v28[3] = &unk_278702FA0;
    v28[4] = self;
    v11 = &v29;
    v29 = recordCopy;
    v12 = MEMORY[0x277D85CD0];
    v13 = v28;
LABEL_26:
    dispatch_sync(v12, v13);
    goto LABEL_27;
  }

  if ([errorCopy code] != 14)
  {
    if ([errorCopy code] == 26)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22B64A0B8;
      v23[3] = &unk_278702FA0;
      v23[4] = self;
      v11 = &v24;
      v24 = recordCopy;
      v12 = MEMORY[0x277D85CD0];
      v13 = v23;
    }

    else if ([errorCopy code] == 12 || objc_msgSend(errorCopy, "code") == 11)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Record had invalid arguments, we'll try this record again on the next sync", buf, 2u);
        }
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_22B64A110;
      v21[3] = &unk_278702FA0;
      v21[4] = self;
      v11 = &v22;
      v22 = recordCopy;
      v12 = MEMORY[0x277D85CD0];
      v13 = v21;
    }

    else if ([errorCopy code] == 2050 || objc_msgSend(errorCopy, "code") == 100)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22B64A168;
      v19[3] = &unk_278702FA0;
      v19[4] = self;
      v11 = &v20;
      v20 = recordCopy;
      v12 = MEMORY[0x277D85CD0];
      v13 = v19;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          code = [errorCopy code];
          *buf = 134217984;
          v31 = code;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Encountered an unknown error.  We'll try syncing this message again on the next sync. Error code: %llu", buf, 0xCu);
        }
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_22B64A1C0;
      v17[3] = &unk_278702FA0;
      v17[4] = self;
      v11 = &v18;
      v18 = recordCopy;
      v12 = MEMORY[0x277D85CD0];
      v13 = v17;
    }

    goto LABEL_26;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B649EAC;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v26 = errorCopy;
  v27 = recordCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);

  v11 = &v26;
LABEL_27:
}

- (id)_operationErrorForModifyingRecordCompletion:(id)completion
{
  completionCopy = completion;
  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v6 = [errorAnalyzer CKPartialError:completionCopy onlyHasErrorCodes:&unk_283F4EF48];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Modify message had conflicts or the zone was not found, so treating this as a non error case", v10, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = completionCopy;
  }

  return v8;
}

- (void)_processModifyRecordsCompletion:(id)completion deletedRecordIDs:(id)ds operationError:(id)error isLastBatchOfWrite:(BOOL)write activity:(id)activity writeCompletionBlock:(id)block
{
  writeCopy = write;
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dsCopy = ds;
  errorCopy = error;
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "_processModifyRecordsCompletion error %@", buf, 0xCu);
    }
  }

  v20 = [(IMDCKMessageSyncController *)self _operationErrorForModifyingRecordCompletion:errorCopy];

  if (v20)
  {
    goto LABEL_28;
  }

  if (IMIsRunningInAutomation())
  {
    mEMORY[0x277D1A970] = [MEMORY[0x277D1A970] sharedInstance];
    [mEMORY[0x277D1A970] addNewMessagesSyncedCount:{objc_msgSend(completionCopy, "count")}];
  }

  if (writeCopy)
  {
LABEL_28:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        if (writeCopy)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138412802;
        v31 = v24;
        v32 = 2112;
        v33 = v20;
        if (!v20)
        {
          v23 = @"YES";
        }

        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "We completed writing messages. isLastBatch %@, write error %@, writeSuccess %@", buf, 0x20u);
      }
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, v20 == 0, v20);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Kicking off another batch of message writes to cloudKit", buf, 2u);
      }
    }

    ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64A664;
    block[3] = &unk_2787037B8;
    block[4] = self;
    v28 = activityCopy;
    v29 = blockCopy;
    dispatch_async(ckQueue, block);
  }
}

- (id)_syncOperationGroupName
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  lastSyncDate = [syncState lastSyncDate];

  if (lastSyncDate)
  {
    return @"PeriodicMessageSync";
  }

  else
  {
    return @"BackFillMessageSync";
  }
}

- (void)_writeDirtyMessagesToCloudKitWithActivity:(id)activity completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  if ([(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:1 maxBatchCount:-1 activity:activityCopy])
  {
    _recordsToSave = [(IMDCKMessageSyncController *)self _recordsToSave];
    ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
    v10 = [ckUtilities newfilteredArrayRemovingCKRecordDupes:_recordsToSave];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(_recordsToSave, "count")}];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
        *buf = 138412546;
        v32 = v12;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Got %@ records to sync, filtered to %@ unique records", buf, 0x16u);
      }
    }

    if ([_recordsToSave count])
    {
      v14 = [_recordsToSave count];
      _numberOfMessagesToUpload = [(IMDCKMessageSyncController *)self _numberOfMessagesToUpload];
      if (v14 < _numberOfMessagesToUpload)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [_recordsToSave count];
            _numberOfMessagesToUpload2 = [(IMDCKMessageSyncController *)self _numberOfMessagesToUpload];
            *buf = 134218240;
            v32 = v17;
            v33 = 2048;
            v34 = _numberOfMessagesToUpload2;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Number of messages to upload %lu < max batch size. %lu ", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "**** This is the last batch of messages we will write", buf, 2u);
          }
        }
      }

      v20 = v14 < _numberOfMessagesToUpload;
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToUploading];
      cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
      _syncOperationGroupName = [(IMDCKMessageSyncController *)self _syncOperationGroupName];
      v23 = [cKOperationFactory saveMessagesCKOperationUsingRecordsToSave:v10 operationGroupName:_syncOperationGroupName activity:activityCopy];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_22B64AC28;
      v30[3] = &unk_2787047C0;
      v30[4] = self;
      [v23 setPerRecordCompletionBlock:v30];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_22B64AC38;
      v26[3] = &unk_278703920;
      v26[4] = self;
      v29 = v20;
      v27 = activityCopy;
      v28 = completionCopy;
      [v23 setModifyRecordsCompletionBlock:v26];
      [(IMDCKMessageSyncController *)self _scheduleOperation:v23];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "**** We completed writing up messages. No more messages to write up. ***", buf, 2u);
        }
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1, 0);
      }
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = @"NO";
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Did not schedule a write. Device Conditions suitable to write:%@", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    _recordsToSave = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, _recordsToSave);
LABEL_30:
  }
}

- (void)_processRecordChange:(id)change
{
  v12 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [changeCopy _stringForKey:@"guid"];
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Fetched message record with GUID %@", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B64ADC4;
  v8[3] = &unk_278702FA0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v8);
}

- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(IMDCKMessageSyncController *)self deviceConditionsToCheck])
  {
    if (batchCount == -1)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "This is a periodic sync and deviceConditionstoCheck is set to IMCheckNoDeviceConditions, changing it to IMCheckAllDeviceConditions", &v10, 2u);
        }

        goto LABEL_12;
      }

LABEL_13:
      [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:1];
      return;
    }

    if ((batchCount & 0x8000000000000000) == 0 && count > batchCount)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v9 = [MEMORY[0x277CCABB0] numberWithInteger:batchCount];
          v10 = 138412546;
          v11 = v8;
          v12 = 2112;
          v13 = v9;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "This is an initial sync but current batch count [%@] >= maxBatchCount [%@] and deviceConditionstoCheck is set to IMCheckNoDeviceConditions, changing it to IMCheckAllDeviceConditions", &v10, 0x16u);
        }

LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }
}

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount activity:(id)activity
{
  activityCopy = activity;
  [(IMDCKMessageSyncController *)self _updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:count maxBatchCount:batchCount];
  LOBYTE(batchCount) = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForActivity:activityCopy deviceConditionsToCheck:[(IMDCKMessageSyncController *)self deviceConditionsToCheck] currentBatchCount:count maxBatchCount:batchCount];

  return batchCount;
}

- (BOOL)_shouldDeferCoreDuetMessagesSyncWithActivity:(id)activity
{
  activityCopy = activity;
  should_defer = xpc_activity_should_defer(activityCopy);
  if (should_defer)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Setting xpc_activity_t to XPC_ACTIVITY_STATE_DEFER because conditions are no longer met", buf, 2u);
      }
    }

    if (!xpc_activity_set_state(activityCopy, 3) && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error forcing xpc_activity_t to XPC_ACTIVITY_STATE_DEFER", v8, 2u);
      }
    }
  }

  return should_defer;
}

- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v40 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  _ckUtilitiesInstance = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  cloudKitSyncingEnabled = [_ckUtilitiesInstance cloudKitSyncingEnabled];

  _ckUtilitiesInstance2 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  iCloudAccountMatchesiMessageAccount = [_ckUtilitiesInstance2 iCloudAccountMatchesiMessageAccount];

  if ((cloudKitSyncingEnabled & iCloudAccountMatchesiMessageAccount) == 1)
  {
    if ([(IMDCKMessageSyncController *)self _isCoreDuetSyncForMaxBatchCount:batchCount activity:activityCopy])
    {
      v14 = [(IMDCKMessageSyncController *)self _shouldDeferCoreDuetMessagesSyncWithActivity:activityCopy];
      v15 = IMOSLoggingEnabled();
      if (v14)
      {
        if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [MEMORY[0x277CCABB0] numberWithInteger:count];
            v34 = 138412290;
            v35 = v17;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "This is a coreduet sync at currentBatchCount %@, coreduet says to defer syncing", &v34, 0xCu);
          }
        }

        LOBYTE(cloudKitSyncingEnabled) = 0;
        goto LABEL_46;
      }

      if (v15)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v34 = 138412290;
          v35 = v25;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "This is a coreduet sync at currentBatchCount %@, coreduet says to continue syncing", &v34, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if ([(IMDCKMessageSyncController *)self _numberOfBatchesOfMessagesToFetchInInitialSync]>= count)
    {
      v26 = IMOSLoggingEnabled();
      if (batchCount == -1)
      {
        if (v26)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:count];
            v34 = 138412546;
            v35 = v28;
            v36 = 2112;
            v37 = @"NO";
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Message sync: Not checking device conditions for full sync at current batch count %@ isCoreDuetSync %@", &v34, 0x16u);
          }

          goto LABEL_34;
        }
      }

      else if (v26)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v27 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v34 = 138412290;
          v35 = v27;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Message sync: Not checking device conditions for initial sync at current batchCount %@", &v34, 0xCu);
        }

        goto LABEL_34;
      }

LABEL_35:
      LOBYTE(cloudKitSyncingEnabled) = 1;
      goto LABEL_46;
    }

    deviceConditionsToCheck = [(IMDCKMessageSyncController *)self deviceConditionsToCheck];
    if (deviceConditionsToCheck == 2)
    {
      _ckUtilitiesInstance3 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
      isDeviceOnWifi = [_ckUtilitiesInstance3 isDeviceOnWifi];
    }

    else
    {
      if (deviceConditionsToCheck != 1)
      {
        cloudKitSyncingEnabled = 1;
LABEL_39:
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            if (cloudKitSyncingEnabled)
            {
              v30 = @"YES";
            }

            else
            {
              v30 = @"NO";
            }

            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDCKMessageSyncController deviceConditionsToCheck](self, "deviceConditionsToCheck")}];
            v32 = [MEMORY[0x277CCABB0] numberWithInteger:count];
            v34 = 138412802;
            v35 = v30;
            v36 = 2112;
            v37 = v31;
            v38 = 2112;
            v39 = v32;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Message sync: device conditions allow sync: %@ deviceConditionsToCheck %@ currentBatchCount %@", &v34, 0x20u);
          }
        }

        goto LABEL_46;
      }

      _ckUtilitiesInstance3 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
      isDeviceOnWifi = [_ckUtilitiesInstance3 deviceConditionsAllowPeriodicSync];
    }

    cloudKitSyncingEnabled = isDeviceOnWifi;

    goto LABEL_39;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if (iCloudAccountMatchesiMessageAccount)
      {
        v19 = @"YES";
      }

      v34 = 138412546;
      v35 = v20;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message sync: Stop syncing, feature enabled %@ hasMatchingAccounts %@.", &v34, 0x16u);
    }
  }

LABEL_46:

  return cloudKitSyncingEnabled;
}

- (void)_migrateSyncTokens
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  [syncTokenStore migrateKey:@"archivedMessagesChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/MessageSyncArchivedRecordMetaData.db"];

  syncTokenStore2 = [(IMDCKMessageSyncController *)self syncTokenStore];
  [syncTokenStore2 migrateKey:@"messagesChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/MessageSyncZoneMetaData.db"];
}

- (void)setArchivedRecordSyncToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    if (self->_archivedRecordSyncToken == tokenCopy)
    {
      goto LABEL_6;
    }

    v9 = tokenCopy;
    objc_storeStrong(&self->_archivedRecordSyncToken, token);
    syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
    v7 = syncTokenStore;
    v8 = v9;
  }

  else
  {
    v9 = 0;
    syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
    v7 = syncTokenStore;
    v8 = 0;
  }

  [syncTokenStore persistToken:v8 forKey:@"archivedMessagesChangeToken"];

  tokenCopy = v9;
LABEL_6:
}

- (CKServerChangeToken)archivedRecordSyncToken
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  v4 = [syncTokenStore tokenForKey:@"archivedMessagesChangeToken"];
  archivedRecordSyncToken = self->_archivedRecordSyncToken;
  self->_archivedRecordSyncToken = v4;

  v6 = self->_archivedRecordSyncToken;

  return v6;
}

- (void)_resetArvchivedRecordSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the archived message sync token to nil", buf, 2u);
    }
  }

  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64BB08;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(ckQueue, block);
}

- (void)setLatestSyncToken:(id)token
{
  tokenCopy = token;
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  _changeTokenKey = [(IMDCKMessageSyncController *)self _changeTokenKey];
  if (tokenCopy)
  {
    v6 = tokenCopy;
  }

  else
  {
    v6 = 0;
  }

  [syncTokenStore persistToken:v6 forKey:_changeTokenKey];
}

- (CKServerChangeToken)latestSyncToken
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  _changeTokenKey = [(IMDCKMessageSyncController *)self _changeTokenKey];
  v5 = [syncTokenStore tokenForKey:_changeTokenKey];

  return v5;
}

- (void)_resetSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the message sync token to nil", buf, 2u);
    }
  }

  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64BD18;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)_processArchivedRecordsFetchCompletionZoneID:(id)d serverChangeToken:(id)token moreComing:(BOOL)coming currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity error:(id)error completionBlock:(id)self0
{
  tokenCopy = token;
  activityCopy = activity;
  errorCopy = error;
  blockCopy = block;
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B64BEC0;
  v24[3] = &unk_278706DE8;
  comingCopy = coming;
  v25 = tokenCopy;
  v26 = errorCopy;
  countCopy = count;
  batchesCopy = batches;
  selfCopy = self;
  v28 = activityCopy;
  v29 = blockCopy;
  v20 = blockCopy;
  v21 = activityCopy;
  v22 = errorCopy;
  v23 = tokenCopy;
  dispatch_sync(ckQueue, v24);
}

- (void)_fetchArchivedRecordsIfNeeded:(BOOL)needed currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity withCompletionBlock:(id)block
{
  neededCopy = needed;
  v46 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (batches < 0 || count < batches)
  {
    v15 = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:count maxBatchCount:batches activity:activityCopy];
    v16 = IMOSLoggingEnabled();
    if (v15 && neededCopy)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:batches];
          *buf = 138412546;
          v43 = v18;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Fetching archived currentBatchCount %@ maxNumberOfBatches %@", buf, 0x16u);
        }
      }

      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          archivedRecordSyncToken = [(IMDCKMessageSyncController *)self archivedRecordSyncToken];
          *buf = 138412290;
          v43 = archivedRecordSyncToken;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "******** Fetching archived records ***** sync token is %@", buf, 0xCu);
        }
      }

      cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
      archivedRecordSyncToken2 = [(IMDCKMessageSyncController *)self archivedRecordSyncToken];
      _messageZoneID = [(IMDCKMessageSyncController *)self _messageZoneID];
      v25 = [cKOperationFactory fetchArchivedRecordsOperationWithSyncToken:archivedRecordSyncToken2 zoneID:_messageZoneID activity:activityCopy];

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_22B64C940;
      v41[3] = &unk_2787046E0;
      v41[4] = self;
      [v25 setRecordFetchedBlock:v41];
      [v25 setRecordZoneChangeTokensUpdatedBlock:&unk_283F1A948];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_22B64CB34;
      v36[3] = &unk_278706E30;
      v36[4] = self;
      countCopy = count;
      batchesCopy = batches;
      v37 = activityCopy;
      v26 = blockCopy;
      v38 = v26;
      [v25 setRecordZoneFetchCompletionBlock:v36];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = sub_22B64CB78;
      v33 = &unk_278704778;
      selfCopy = self;
      v35 = v26;
      [v25 setFetchArchivedRecordsCompletionBlock:&v30];
      [(IMDCKMessageSyncController *)self _scheduleOperation:v25, v30, v31, v32, v33, selfCopy];
    }

    else if (v15)
    {
      if (v16)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Did not fetch archived records from message zone as no archived hint present", buf, 2u);
        }
      }

      if (blockCopy)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v16)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Did not fetch archived records from message zone as device condition does not allow sync", buf, 2u);
        }
      }

      if (blockCopy)
      {
        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
        (*(blockCopy + 2))(blockCopy, 0, 0, v29);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "****** We are done fetching archived messages as max batch attempt limit reached ********", buf, 2u);
      }
    }

    if (blockCopy)
    {
LABEL_8:
      (*(blockCopy + 2))(blockCopy, 1, 1, 0);
    }
  }
}

- (void)_processFetchArchivedRecordCompletionWithError:(id)error WithCompletionBlock:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  v7 = IMOSLoggingEnabled();
  if (errorCopy)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "*** Encountered error while fetching archived records %@", &v10, 0xCu);
      }
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, errorCopy);
    }
  }

  else if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "*** Did not encounter error while fetching archived records", &v10, 2u);
    }
  }
}

- (void)_processRecordZoneFetchCompletionZoneID:(id)d serverChangeToken:(id)token clientChangeTokenData:(id)data moreComing:(BOOL)coming NSError:(id)error syncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)self0 shouldFetchArchivedRecords:(BOOL)self1 activity:(id)self2 completionBlock:(id)self3
{
  tokenCopy = token;
  errorCopy = error;
  activityCopy = activity;
  blockCopy = block;
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64CE54;
  block[3] = &unk_278706E80;
  comingCopy = coming;
  v27 = tokenCopy;
  v28 = errorCopy;
  recordsCopy = records;
  batchesCopy = batches;
  typeCopy = type;
  selfCopy = self;
  v30 = activityCopy;
  v31 = blockCopy;
  countCopy = count;
  v21 = blockCopy;
  v22 = activityCopy;
  v23 = errorCopy;
  v24 = tokenCopy;
  dispatch_sync(ckQueue, block);
}

- (void)_processFetchRecordZoneChangesCompletionWithError:(id)error completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  if (!errorCopy)
  {
    goto LABEL_5;
  }

  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  if ([errorAnalyzer errorIndicatesZoneNotCreated:errorCopy])
  {

    goto LABEL_5;
  }

  errorAnalyzer2 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v10 = [errorAnalyzer2 errorIndicatesUserDeletedZone:errorCopy];

  if (v10)
  {
LABEL_5:
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_processFetchRecordZoneChangesCompletionWithError with no error", buf, 2u);
      }
    }

    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed fetching messages %@", buf, 0xCu);
    }
  }

  if (blockCopy)
  {
    ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B64D9C8;
    v14[3] = &unk_2787028B0;
    v16 = blockCopy;
    v15 = errorCopy;
    dispatch_async(ckQueue, v14);
  }

LABEL_9:
}

- (BOOL)_shouldFetchArchivedRecords:(id)records
{
  recordZoneIDsWithPendingArchivedRecords = [records recordZoneIDsWithPendingArchivedRecords];
  LOBYTE(self) = -[IMDCKMessageSyncController _doesAnyRecordZoneIDHavePendingArchivedRecords:](self, "_doesAnyRecordZoneIDHavePendingArchivedRecords:", [recordZoneIDsWithPendingArchivedRecords count]);

  return self;
}

- (BOOL)_isDiskSpaceAvailableForSyncType:(int64_t)type currentBatchCount:(int64_t)count
{
  v6 = __ROR8__(0x8F5C28F5C28F5C29 * count, 2) < 0x28F5C28F5C28F5DuLL;
  v7 = +[IMDCKCacheDeleteManager sharedInstance];
  LOBYTE(type) = [v7 canWriteFileOfEstimatedSize:40960 * -[IMDCKMessageSyncController _numberOfRecordsToFetchForSyncType:](self refreshCachedValue:{"_numberOfRecordsToFetchForSyncType:", type), v6}];

  return type;
}

- (void)_fetchMessageZoneChangesSyncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity completionBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (batches < 1 || count < batches)
  {
    _numberOfBatchesOfMessagesToFetchInInitialSync = [(IMDCKMessageSyncController *)self _numberOfBatchesOfMessagesToFetchInInitialSync];
    if (batches == -1)
    {
      v21 = _numberOfBatchesOfMessagesToFetchInInitialSync;
      if (_numberOfBatchesOfMessagesToFetchInInitialSync < count)
      {
        date = [MEMORY[0x277CBEAA8] date];
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
            *buf = 138412546;
            *&buf[4] = v24;
            *&buf[12] = 2112;
            *&buf[14] = date;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We completed fetching %@ batches of messages during a full sync, setting fullPartialSyncFirstCompletedDate to %@", buf, 0x16u);
          }
        }

        syncState = [(IMDCKAbstractSyncController *)self syncState];
        [syncState setAnalyticSyncDatesDictionaryObject:date forKey:*MEMORY[0x277D19AF0] shouldOverrideIfExists:0];
      }
    }

    v26 = [(IMDCKMessageSyncController *)self _isDiskSpaceAvailableForSyncType:type currentBatchCount:count];
    v27 = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:count maxBatchCount:batches activity:activityCopy];
    v28 = IMOSLoggingEnabled();
    if (v27 && v26)
    {
      if (v28)
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:batches];
          *buf = 138412546;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v31;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Fetching live messages, currentBatchCount %@ maxNumberOfBatches %@", buf, 0x16u);
        }
      }

      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
      cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
      latestSyncToken = [(IMDCKMessageSyncController *)self latestSyncToken];
      _messageZoneID = [(IMDCKMessageSyncController *)self _messageZoneID];
      v35 = [(IMDCKMessageSyncController *)self _numberOfRecordsToFetchForSyncType:type];
      _syncOperationGroupName = [(IMDCKMessageSyncController *)self _syncOperationGroupName];
      v37 = [cKOperationFactory fetchMessageZoneChangesCKOperationUsingToken:latestSyncToken zoneID:_messageZoneID resultsLimit:v35 operationGroupName:_syncOperationGroupName activity:activityCopy];

      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_22B64E3A4;
      v57[3] = &unk_2787046E0;
      v57[4] = self;
      [v37 setRecordChangedBlock:v57];
      [v37 setRecordZoneChangeTokensUpdatedBlock:&unk_283F1A968];
      [v37 setRecordWithIDWasDeletedBlock:&unk_283F1A988];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = sub_22B4D7790;
      v62 = sub_22B4D792C;
      v38 = v37;
      v63 = v38;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_22B64E56C;
      v50[3] = &unk_278706EC8;
      v50[4] = self;
      v53 = buf;
      typeCopy = type;
      countCopy = count;
      batchesCopy = batches;
      v51 = activityCopy;
      v39 = blockCopy;
      v52 = v39;
      [v38 setRecordZoneFetchCompletionBlock:v50];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_22B64E650;
      v48[3] = &unk_278704778;
      v48[4] = self;
      v49 = v39;
      [v38 setFetchRecordZoneChangesCompletionBlock:v48];
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          latestSyncToken2 = [(IMDCKMessageSyncController *)self latestSyncToken];
          *v58 = 138412290;
          v59 = latestSyncToken2;
          _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Scheduling a fetch operation from message zone, using token %@", v58, 0xCu);
        }
      }

      [(IMDCKMessageSyncController *)self _scheduleOperation:v38];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v28)
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = @"NO";
          if (v27)
          {
            v45 = @"YES";
          }

          else
          {
            v45 = @"NO";
          }

          if (v26)
          {
            v44 = @"YES";
          }

          *buf = 138412546;
          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v44;
          _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Did not fetch changes from message zone. Device condition allows sync %@. Disk Space Available %@", buf, 0x16u);
        }
      }

      if (blockCopy)
      {
        v46 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
        (*(blockCopy + 2))(blockCopy, 0, 0, 0, v46);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "****** We are done fetching live messages as max batch attempt limit reached ********", buf, 2u);
      }
    }

    v14 = +[IMDCKUtilities sharedInstance];
    shouldForceArchivedMessagesSync = [v14 shouldForceArchivedMessagesSync];

    if (shouldForceArchivedMessagesSync)
    {
      v16 = IMGetDomainBoolForKeyWithDefaultValue();
      if (blockCopy)
      {
        v17 = v16;
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = @"NO";
            if (v17)
            {
              v19 = @"YES";
            }

            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "shouldForceArchivedMessagesSync is YES, fetched max live record batches but will also fetch initial sync archived records if needed: %@", buf, 0xCu);
          }
        }

        (*(blockCopy + 2))(blockCopy, 1, v17, 0, 0);
      }
    }

    else if (blockCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Since we fetched max live batch records, we will not fetch archived records", buf, 2u);
        }
      }

      (*(blockCopy + 2))(blockCopy, 1, 0, 0, 0);
    }
  }
}

- (void)_noteSyncEnded
{
  [(IMDCKAbstractSyncController *)self setIsSyncing:0];
  [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:0];
  if ([(IMDCKMessageSyncController *)self encounteredIncompatibleMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Need to kick off a sync of deletes because we had an incompatible message earlier.", v4, 2u);
      }
    }

    [(IMDCKMessageSyncController *)self setEncounteredIncompatibleMessage:0];
    [(IMDCKMessageSyncController *)self syncDeletedMessagesToCloudKitWithCompletion:&unk_283F1A9A8];
  }
}

- (void)_markAllIncompatibleMessagesForDeletion
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Mark all incompatible messages for deletion from cloudkit", v4, 2u);
    }
  }

  IMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
}

- (void)_needsToMarkAllMessagesAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (BOOL)_shouldMarkAllMessagesAsNeedingSync
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]] ^ 1;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllMessagesAsNeedingSync %@", &v9, 0xCu);
    }
  }

  return v4;
}

- (void)_hasMarkedAllMessagesAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (void)_kickOffWriteOnCKQueueWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Kicking off a message write after fetching messages", buf, 2u);
    }
  }

  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64EC4C;
  block[3] = &unk_2787037B8;
  block[4] = self;
  v13 = activityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = activityCopy;
  dispatch_async(ckQueue, block);
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  _ckUtilitiesInstance = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  LODWORD(type) = [_ckUtilitiesInstance shouldKickOffWriteForSyncType:type];

  if (!type)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Not writing up messages as sync type does not allow it", buf, 2u);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_16;
  }

  _ckUtilitiesInstance2 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  isLocalCachedSaltPresent = [_ckUtilitiesInstance2 isLocalCachedSaltPresent];

  if ((isLocalCachedSaltPresent & 1) == 0)
  {
    if (completionCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not kicking off a write because cachedSalt is not present.", buf, 2u);
        }
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:3 userInfo:0];
      (completionCopy)[2](completionCopy, 0, v16);
    }

LABEL_16:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64F118;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v13 = 0;
    goto LABEL_17;
  }

  [(IMDCKMessageSyncController *)self _kickOffWriteOnCKQueueWithActivity:activityCopy completion:completionCopy];
  v13 = 1;
LABEL_17:

  return v13;
}

- (void)syncMessagesWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:check];
      *buf = 134218242;
      typeCopy = type;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "syncMessagesWithSyncType with type %ld deviceConditionsToCheck %@", buf, 0x16u);
    }
  }

  [(IMDCKAbstractSyncController *)self resetRecordCounts];
  [(IMDCKAbstractSyncController *)self setIsSyncing:1];
  [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:check];
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B64F300;
  v17[3] = &unk_278706F90;
  v17[4] = self;
  v18 = activityCopy;
  v19 = blockCopy;
  typeCopy2 = type;
  v15 = blockCopy;
  v16 = activityCopy;
  dispatch_async(ckQueue, v17);
}

- (void)deleteMessageSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Clearing local sync tokens for Messages", v5, 2u);
    }
  }

  latestSyncToken = [(IMDCKMessageSyncController *)self latestSyncToken];
  [(IMDCKMessageSyncController *)self setLatestSyncToken:0];
  [(IMDCKMessageSyncController *)self setArchivedRecordSyncToken:0];
}

- (void)deleteChatBotMessageSyncToken
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"chatBotMessageChangeToken"];
}

- (void)deleteMessagesZone
{
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64FFA0;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local messages sync state, flags 0x%x", v7, 8u);
    }
  }

  if (stateCopy)
  {
    [(IMDCKMessageSyncController *)self deleteMessageSyncToken];
    [(IMDCKMessageSyncController *)self deleteChatBotMessageSyncToken];
  }

  if ((stateCopy & 2) != 0)
  {
    v6 = +[IMDMessageStore sharedInstance];
    [v6 markAllMessagesAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDCKMessageSyncController *)self _needsToMarkAllMessagesAsNeedingSync];
  }
}

- (void)_processRecordDeletionCompletion:(id)completion error:(id)error completionBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  errorCopy = error;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Delete message callback with error %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65031C;
  block[3] = &unk_2787038F8;
  v12 = completionCopy;
  v19 = v12;
  v13 = errorCopy;
  v20 = v13;
  selfCopy = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  if (blockCopy)
  {
    ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B65064C;
    v15[3] = &unk_2787028B0;
    v17 = blockCopy;
    v16 = v13;
    dispatch_async(ckQueue, v15);
  }
}

- (void)_deleteMessagesWithRecordIDs:(id)ds completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
    v9 = [cKOperationFactory deleteMessageCKOperationUsingRecordIDstoDelete:dsCopy];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_22B65088C;
    v15 = &unk_278703858;
    selfCopy = self;
    v17 = completionCopy;
    [v9 setModifyRecordsCompletionBlock:&v12];
    [v9 setPerRecordCompletionBlock:{&unk_283F1A9C8, v12, v13, v14, v15, selfCopy}];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = dsCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Kicking off deleted of recordIDs %@", buf, 0xCu);
      }
    }

    [(IMDCKMessageSyncController *)self _scheduleOperation:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No GUIDs passed in to delete", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)_constructMessageRecordIDUsingTombStoneDictionary:(id)dictionary
{
  v4 = [dictionary valueForKey:@"recordID"];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    _messageZoneID = [(IMDCKMessageSyncController *)self _messageZoneID];
    v7 = [v5 initWithRecordName:v4 zoneID:_messageZoneID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit
{
  v22 = *MEMORY[0x277D85DE8];
  _sharedIMDMessageStore = [(IMDCKMessageSyncController *)self _sharedIMDMessageStore];
  v6 = [_sharedIMDMessageStore copyMessagesThatNeedToBeDeletedInCloudKitWithLimit:limit];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(IMDCKMessageSyncController *)self _constructMessageRecordIDUsingTombStoneDictionary:*(*(&v17 + 1) + 8 * i), v17];
        v15 = v14;
        if (v7 && v14)
        {
          CFArrayAppendValue(v7, v14);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(v8);
  return v7;
}

- (void)syncDeletedMessagesToCloudKitWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _ckUtilitiesInstance = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  cloudKitSyncingEnabled = [_ckUtilitiesInstance cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    v7 = [(IMDCKMessageSyncController *)self _copyRecordIDsToDeleteWithLimit:[(IMDCKMessageSyncController *)self _messageDeleteBatchSize]];
    _ckUtilitiesInstance2 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
    v9 = [_ckUtilitiesInstance2 newfilteredArrayRemovingCKRecordIDDupes:v7];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v19 = [v7 count];
        v20 = 2048;
        v21 = [v9 count];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Got %lu recordIDs to sync, filtered to %lu unique recordID", buf, 0x16u);
      }
    }

    if ([v9 count])
    {
      goto LABEL_7;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "No pending messages to delete from CloudKit", buf, 2u);
      }
    }

    _sharedIMDMessageStore = [(IMDCKMessageSyncController *)self _sharedIMDMessageStore];
    [_sharedIMDMessageStore clearMessagesTombStoneTable];

    if (!completionCopy)
    {
LABEL_7:
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
      ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B650DCC;
      block[3] = &unk_2787037B8;
      block[4] = self;
      v16 = v9;
      v17 = completionCopy;
      dispatch_async(ckQueue, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not doing CloudKit message deletes as CK syncing is off", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

@end