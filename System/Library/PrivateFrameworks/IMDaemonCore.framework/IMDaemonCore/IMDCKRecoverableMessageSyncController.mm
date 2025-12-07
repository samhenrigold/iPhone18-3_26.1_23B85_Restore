@interface IMDCKRecoverableMessageSyncController
+ (id)_fetchOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size activity:(id)activity;
+ (id)_fetchRecoverableMessagesCKConfiguration:(id)configuration;
+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit;
+ (id)sharedInstance;
- (BOOL)_zoneCreated;
- (IMDCKRecoverableMessageSyncController)init;
- (IMDCKRecoverableMessageSyncController)initWithSyncTokenStore:(id)store;
- (id)_constructRecoverableMessageRecordIDUsingTombStoneDictionary:(id)dictionary;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit;
- (id)_fetchRecordsOperationWithActivity:(id)activity;
- (id)_saveRecordsOperationWithMap:(id)map activity:(id)activity;
- (id)_saveRecoverableMessagesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToPartIndexAndRowID:(id)d activity:(id)activity;
- (id)_writeRecoverableMessagesCKConfiguration:(id)configuration;
- (id)createCKRecordforRecoverableMessageMetadata:(id)metadata zoneID:(id)d recordNameToPartIndexAndRowID:(id)iD;
- (unint64_t)_deleteBatchSize;
- (void)_deleteRecoverableMessagesWithRecordIDs:(id)ds completion:(id)completion;
- (void)_onChangeTokenUpdated:(id)updated token:(id)token data:(id)data;
- (void)_onReadComplete:(int64_t)complete error:(id)error activity:(id)activity completion:(id)completion;
- (void)_onRecordDeleted:(id)deleted type:(id)type;
- (void)_onRecordRead:(id)read;
- (void)_onRecordWrite:(id)write error:(id)error recordNameToPartIndexAndRowID:(id)d;
- (void)_onRecordZoneFetchComplete:(id)complete token:(id)token tokenData:(id)data moreComing:(BOOL)coming error:(id)error;
- (void)_onRecoverableMessagePartRecordReadWithDeleteDate:(id)date messageGUID:(id)d partBody:(id)body;
- (void)_onWriteComplete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion;
- (void)_processRecordDeletionCompletion:(id)completion error:(id)error completionBlock:(id)block;
- (void)_readRecordsWithType:(int64_t)type attemptCount:(unint64_t)count activity:(id)activity completion:(id)completion;
- (void)_scheduleOperation:(id)operation;
- (void)_writeRecordsWithType:(int64_t)type activity:(id)activity completion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteChatBotRecoverableMessageSyncToken;
- (void)deleteRecoverableMessageZone;
- (void)syncRemovedRecoverableMessagesToCloudKitWithCompletion:(id)completion;
@end

@implementation IMDCKRecoverableMessageSyncController

+ (id)sharedInstance
{
  if (qword_2814211A8 != -1)
  {
    sub_22B7D7ED4();
  }

  v3 = qword_281421028;

  return v3;
}

- (IMDCKRecoverableMessageSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKRecoverableMessageSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

- (IMDCKRecoverableMessageSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = IMDCKRecoverableMessageSyncController;
  v6 = [(IMDCKRecoverableMessageSyncController *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKRecoverableMessageSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    objc_storeStrong(&v6->_syncTokenStore, store);
    v11 = objc_alloc_init(IMDCKMessageSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;
  }

  return v6;
}

- (void)_readRecordsWithType:(int64_t)type attemptCount:(unint64_t)count activity:(id)activity completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(IMDCKRecoverableMessageSyncController *)self _fetchRecordsOperationWithActivity:activityCopy];
  v12 = v11;
  if (v11)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22B65171C;
    v25[3] = &unk_2787046E0;
    v25[4] = self;
    [v11 setRecordChangedBlock:v25];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B651728;
    v24[3] = &unk_278704728;
    v24[4] = self;
    [v12 setRecordWithIDWasDeletedBlock:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22B651738;
    v23[3] = &unk_278706FE8;
    v23[4] = self;
    [v12 setRecordZoneChangeTokensUpdatedBlock:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22B65174C;
    v22[3] = &unk_278707010;
    v22[4] = self;
    [v12 setRecordZoneFetchCompletionBlock:v22];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_22B651768;
    v17 = &unk_278707038;
    selfCopy = self;
    typeCopy = type;
    v19 = activityCopy;
    v20 = completionCopy;
    [v12 setFetchRecordZoneChangesCompletionBlock:&v14];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Scheduling a fetch recoverable message zone changes operation %@", buf, 0xCu);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _scheduleOperation:v12, v14, v15, v16, v17, selfCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_onRecordRead:(id)read
{
  v13 = *MEMORY[0x277D85DE8];
  readCopy = read;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recordID = [readCopy recordID];
      recordName = [recordID recordName];
      *buf = 138412290;
      v12 = recordName;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Reading recoverable message record: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6518F4;
  v9[3] = &unk_278702FA0;
  v9[4] = self;
  v10 = readCopy;
  v8 = readCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v9);
}

- (void)_onRecoverableMessagePartRecordReadWithDeleteDate:(id)date messageGUID:(id)d partBody:(id)body
{
  v53 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  bodyCopy = body;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Reading recoverable message part record", buf, 2u);
    }
  }

  v11 = +[IMDMessageStore sharedInstance];
  v12 = [v11 messageWithGUID:dCopy];

  dateRecovered = [v12 dateRecovered];
  v14 = [dateRecovered compare:dateCopy] == 1;

  if (v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        dateRecovered2 = [v12 dateRecovered];
        *buf = 138412546;
        *&buf[4] = dateRecovered2;
        *&buf[12] = 2112;
        *&buf[14] = dateCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Recently Deleted | Ignoring deletion for recovered part, recovered %@ after it was deleted %@", buf, 0x16u);
      }
    }
  }

  else
  {
    dateRecovered3 = [v12 dateRecovered];

    if (dateRecovered3 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        dateRecovered4 = [v12 dateRecovered];
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        *&buf[14] = dateRecovered4;
        *&buf[22] = 2112;
        v50 = dateCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Recently Deleted | Recoverably deleting part of message %@ that was recovered on %@, re-deleting on %@", buf, 0x20u);
      }
    }

    body = [v12 body];
    v21 = *MEMORY[0x277D19160];
    v22 = [bodyCopy attribute:*MEMORY[0x277D19160] atIndex:0 effectiveRange:0];
    integerValue = [v22 integerValue];

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Recently Deleted | Found stored part number %@", buf, 0xCu);
      }
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = sub_22B4D77A0;
    v51 = sub_22B4D7934;
    v52 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_22B4D77A0;
    v39 = sub_22B4D7934;
    v40 = 0;
    v26 = [body length];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22B652168;
    v34[3] = &unk_278707060;
    v34[4] = &v41;
    v34[5] = buf;
    v34[6] = &v35;
    v34[7] = integerValue;
    [body enumerateAttribute:v21 inRange:0 options:v26 usingBlock:{0, v34}];
    if (*(v42 + 24) == 1)
    {
      v27 = [MEMORY[0x277D1AA70] _messageItemWithIndexesDeleted:*(*&buf[8] + 40) subRangesToDeleteMapping:v36[5] deleteSubject:0 deleteTransferCallback:0 createItemCallback:0 fromMessageItem:v12];
      if (v27)
      {
        v28 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatListeners = [v28 broadcasterForChatListeners];
        accountID = [v27 accountID];
        [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v27];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        *v45 = 138412546;
        v46 = v32;
        v47 = 2112;
        v48 = dCopy;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Did not find partIndex: %@ in message GUID: %@", v45, 0x16u);
      }
    }

    database = [MEMORY[0x277D18EB0] database];
    [database storeRecoverableMessagePartWithBody:bodyCopy forMessageWithGUID:dCopy deleteDate:dateCopy];

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v41, 8);
  }
}

- (void)_onRecordDeleted:(id)deleted type:(id)type
{
  deletedCopy = deleted;
  typeCopy = type;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Delete record operation unsupported.", v8, 2u);
    }
  }
}

- (void)_onChangeTokenUpdated:(id)updated token:(id)token data:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  tokenCopy = token;
  dataCopy = data;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v17 = updatedCopy;
      v18 = 2112;
      v19 = tokenCopy;
      v20 = 2112;
      v21 = dataCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@", buf, 0x20u);
    }
  }

  ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B652494;
  v14[3] = &unk_278702FA0;
  v14[4] = self;
  v15 = tokenCopy;
  v13 = tokenCopy;
  dispatch_sync(ckQueue, v14);
}

- (void)_onRecordZoneFetchComplete:(id)complete token:(id)token tokenData:(id)data moreComing:(BOOL)coming error:(id)error
{
  comingCopy = coming;
  v27 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  tokenCopy = token;
  dataCopy = data;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 138413314;
      v18 = completeCopy;
      v19 = 2112;
      v20 = tokenCopy;
      v21 = 2112;
      v22 = dataCopy;
      v23 = 1024;
      v24 = comingCopy;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Record Zone fetch complete zoneID %@ changeToken %@ tokenData %@ moreComing %d error %@", &v17, 0x30u);
    }
  }

  [(IMDCKRecoverableMessageSyncController *)self _onChangeTokenUpdated:completeCopy token:tokenCopy data:dataCopy];
}

- (void)_onReadComplete:(int64_t)complete error:(id)error activity:(id)activity completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  activityCopy = activity;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_22B4D77A0;
  v33 = sub_22B4D7934;
  v13 = errorCopy;
  v34 = v13;
  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v15 = [errorAnalyzer errorIndicatesZoneNotCreated:v30[5]];

  errorAnalyzer2 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v17 = [errorAnalyzer2 errorIndicatesUserDeletedZone:v30[5]];

  if ((v15 | v17))
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = @"zone not created";
        if (v17)
        {
          v19 = @"user deleted zone";
        }

        *buf = 138412546;
        v36 = v19;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We got a %@ error while fetching recoverable messages. %@", buf, 0x16u);
      }
    }

    ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B652A74;
    v28[3] = &unk_278707088;
    v28[4] = self;
    v28[5] = &v29;
    dispatch_sync(ckQueue, v28);
  }

  if (v30[5])
  {
    errorAnalyzer3 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v22 = [errorAnalyzer3 CKPartialError:v30[5] hasErrorCode:&unk_283F4EC30];

    if (v22)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = v30[5];
          *buf = 138412290;
          v36 = v24;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We got an expired server change token back so resetting local sync state, and fetching the recoverable messages again %@", buf, 0xCu);
        }
      }

      [(IMDCKRecoverableMessageSyncController *)self clearLocalSyncState:17];
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = v30[5];
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "********* We got an error fetching changes from recoverable messages zone %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v30[5]);
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
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "We completed fetching changes from recoverable message zone with no error", buf, 2u);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  _Block_object_dispose(&v29, 8);
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Clearing local recoverable sync state, flags 0x%x", buf, 8u);
    }
  }

  if (stateCopy)
  {
    ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B652CFC;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_async(ckQueue, block);
  }
}

- (BOOL)_zoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B652F64;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createRecoverableMessageZoneIfNeededWithCompletionBlock:v11];

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
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating recoverable message zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)_writeRecordsWithType:(int64_t)type activity:(id)activity completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D77A0;
  v24 = sub_22B4D7934;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(IMDCKRecoverableMessageSyncController *)self _saveRecordsOperationWithMap:v21[5] activity:activityCopy];
  v11 = v10;
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B653334;
    v19[3] = &unk_2787070B0;
    v19[4] = self;
    v19[5] = &v20;
    [v10 setPerRecordCompletionBlock:v19];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B653350;
    v14[3] = &unk_2787070D8;
    v17 = &v20;
    typeCopy = type;
    v14[4] = self;
    v15 = activityCopy;
    v12 = completionCopy;
    v16 = v12;
    [v11 setModifyRecordsCompletionBlock:v14];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Scheduling write recoverable message operation %@", buf, 0xCu);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _scheduleOperation:v11];
    if (v12)
    {
      (*(v12 + 2))(v12, 1, 0);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)_onRecordWrite:(id)write error:(id)error recordNameToPartIndexAndRowID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  errorCopy = error;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = writeCopy;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Wrote recoverable message record %@ with error %@", &v24, 0x16u);
    }
  }

  if (errorCopy)
  {
    [(IMDCKAbstractSyncController *)self setRecordsWriteFailed:[(IMDCKAbstractSyncController *)self recordsWriteFailed]+ 1];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v24 = 138412546;
        v25 = writeCopy;
        v26 = 2112;
        v27 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: could not write record: %@ encountered error: %@", &v24, 0x16u);
      }
    }
  }

  else
  {
    [(IMDCKAbstractSyncController *)self setRecordsWritten:[(IMDCKAbstractSyncController *)self recordsWritten]+ 1];
    recordID = [writeCopy recordID];
    recordName = [recordID recordName];

    v15 = [dCopy objectForKey:recordName];
    v16 = [v15 objectForKeyedSubscript:@"messageRowID"];
    longLongValue = [v16 longLongValue];

    v18 = [v15 objectForKeyedSubscript:@"partIndex"];
    longLongValue2 = [v18 longLongValue];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue2];
        v24 = 138412802;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = recordName;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Recently Deleted | Marking row %@ with partIndex: %@ for %@ as clean", &v24, 0x20u);
      }
    }

    v23 = +[IMDChatRegistry sharedInstance];
    [v23 updateRecoverableMessageSyncState:1 forMessageRowID:longLongValue onPartIndex:longLongValue2];
  }
}

- (void)_onWriteComplete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion
{
  moreCopy = more;
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (!errorCopy)
      {
        v16 = @"YES";
      }

      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Recoverable messages writes completed sucess: %@ error %@", &v17, 0x16u);
    }
  }

  if (errorCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, errorCopy);
    }
  }

  else if (moreCopy)
  {
    [(IMDCKRecoverableMessageSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)syncRemovedRecoverableMessagesToCloudKitWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v5 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    v7 = [(IMDCKRecoverableMessageSyncController *)self _copyRecordIDsToDeleteWithLimit:[(IMDCKRecoverableMessageSyncController *)self _deleteBatchSize]];
    v8 = +[IMDCKUtilities sharedInstance];
    v9 = [v8 newfilteredArrayRemovingCKRecordIDDupes:v7];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v19 = [v7 count];
        v20 = 2048;
        v21 = [v9 count];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Got %lu recordIDs to sync, filtered to %lu unique recordID", buf, 0x16u);
      }
    }

    if ([v9 count])
    {
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
      ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B653BCC;
      block[3] = &unk_2787037B8;
      block[4] = self;
      v16 = v9;
      v17 = completionCopy;
      dispatch_async(ckQueue, block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | No pending recoverable messages to delete from CloudKit", buf, 2u);
        }
      }

      v14 = +[IMDChatRegistry sharedInstance];
      [v14 clearRecoverableMessageTombStones];

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1, 0);
      }
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
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Recently Deleted | Not performing CloudKit recoverable message deletes as CK syncing is off", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)_deleteRecoverableMessagesWithRecordIDs:(id)ds completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    cKOperationFactory = [(IMDCKRecoverableMessageSyncController *)self CKOperationFactory];
    v9 = [cKOperationFactory deleteRecoverableMessageCKOperationUsingRecordIDstoDelete:dsCopy];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_22B6540F8;
    v15 = &unk_278703858;
    selfCopy = self;
    v17 = completionCopy;
    [v9 setModifyRecordsCompletionBlock:&v12];
    [v9 setPerRecordCompletionBlock:{&unk_283F1AA08, v12, v13, v14, v15, selfCopy}];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = dsCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Kicking off recoverable delete of recordIDs %@", buf, 0xCu);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _scheduleOperation:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | No GUIDs passed in to delete", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = +[IMDChatRegistry sharedInstance];
  v6 = [v5 recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:limit];

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

        v14 = [(IMDCKRecoverableMessageSyncController *)self _constructRecoverableMessageRecordIDUsingTombStoneDictionary:*(*(&v17 + 1) + 8 * i), v17];
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

- (id)_constructRecoverableMessageRecordIDUsingTombStoneDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"messageGUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"chatGUID"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"partIndex"];

  intValue = [v7 intValue];
  v9 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v9 cachedSalt];

  v11 = [(IMDCKRecoverableMessageSyncController *)self recoverableGUIDFromMessageGUID:v5 chatGUID:v6 partIndex:intValue];
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  recoverableMessageRecordZoneID = [recordZoneManager recoverableMessageRecordZoneID];

  v14 = [CKRecordUtilities recordIDUsingSalt:cachedSalt zoneID:recoverableMessageRecordZoneID guid:v11];

  return v14;
}

- (unint64_t)_deleteBatchSize
{
  v2 = +[IMDCKUtilities sharedInstance];
  isInCloudKitDemoMode = [v2 isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
  {
    return 5;
  }

  else
  {
    return 20;
  }
}

- (id)_fetchRecordsOperationWithActivity:(id)activity
{
  activityCopy = activity;
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  recoverableMessageRecordZoneID = [recordZoneManager recoverableMessageRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v8 = [IMDCKRecoverableMessageSyncController _fetchOperationFactory:recoverableMessageRecordZoneID token:latestSyncToken batchSize:200 activity:activityCopy];

  return v8;
}

- (id)_saveRecordsOperationWithMap:(id)map activity:(id)activity
{
  activityCopy = activity;
  mapCopy = map;
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  recoverableMessageRecordZoneID = [recordZoneManager recoverableMessageRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v11 = [(IMDCKRecoverableMessageSyncController *)self _saveRecoverableMessagesOperationFactory:recoverableMessageRecordZoneID token:latestSyncToken batchSize:200 recordNameToPartIndexAndRowID:mapCopy activity:activityCopy];

  return v11;
}

+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit
{
  v7 = MEMORY[0x277CBEB38];
  dCopy = d;
  tokenCopy = token;
  v10 = objc_alloc_init(v7);
  v11 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v11 setDesiredKeys:0];
  [v11 setPreviousServerChangeToken:tokenCopy];

  [v11 setResultsLimit:limit];
  [v10 setObject:v11 forKey:dCopy];

  return v10;
}

+ (id)_fetchRecoverableMessagesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

+ (id)_fetchOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size activity:(id)activity
{
  factoryCopy = factory;
  tokenCopy = token;
  activityCopy = activity;
  if (factoryCopy)
  {
    v13 = objc_alloc(MEMORY[0x277CBC3B8]);
    v14 = IMSingleObjectArray();
    v15 = [self _zoneChangesOptionsDictionaryUsingToken:tokenCopy zoneID:factoryCopy resultsLimit:size];
    v16 = [v13 initWithRecordZoneIDs:v14 configurationsByRecordZoneID:v15];

    v17 = [self _fetchRecoverableMessagesCKConfiguration:activityCopy];
    [v16 setConfiguration:v17];

    [v16 setFetchAllChanges:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "_fetchOperationFactory was passed in a nil zone", v20, 2u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)_writeRecoverableMessagesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

- (id)_saveRecoverableMessagesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToPartIndexAndRowID:(id)d activity:(id)activity
{
  sizeCopy = size;
  v38 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  tokenCopy = token;
  dCopy = d;
  activityCopy = activity;
  if (factoryCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_22B654B64;
    v29 = &unk_278705748;
    selfCopy = self;
    v31 = factoryCopy;
    v32 = dCopy;
    v17 = v16;
    v33 = v17;
    dispatch_sync(MEMORY[0x277D85CD0], &v26);
    v18 = [IMDCKUtilities sharedInstance:v26];
    v19 = [v18 newfilteredArrayRemovingCKRecordDupes:v17];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v19 count];
        *buf = 134218240;
        v35 = v21;
        v36 = 1024;
        v37 = sizeCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found %lu of %u max recoverable messages to write up", buf, 0x12u);
      }
    }

    if ([v19 count])
    {
      v22 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v19 recordIDsToDelete:0];
      [v22 setSavePolicy:1];
      v23 = [(IMDCKRecoverableMessageSyncController *)self _writeRecoverableMessagesCKConfiguration:activityCopy];
      [v22 setConfiguration:v23];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "_saveRecoverableMessagesOperationFactory was passed in a nil zone", buf, 2u);
      }
    }

    v22 = 0;
  }

  return v22;
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
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Delete recoverable message callback with error %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B655078;
  block[3] = &unk_2787038F8;
  v12 = completionCopy;
  v19 = v12;
  v13 = errorCopy;
  v20 = v13;
  selfCopy = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  if (blockCopy)
  {
    ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B6553A8;
    v15[3] = &unk_2787028B0;
    v17 = blockCopy;
    v16 = v13;
    dispatch_async(ckQueue, v15);
  }
}

- (id)createCKRecordforRecoverableMessageMetadata:(id)metadata zoneID:(id)d recordNameToPartIndexAndRowID:(id)iD
{
  v42 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dCopy = d;
  iDCopy = iD;
  v35 = [metadataCopy objectForKeyedSubscript:@"messageGUID"];
  v33 = [metadataCopy objectForKeyedSubscript:@"chatGUID"];
  v34 = [metadataCopy objectForKeyedSubscript:@"deleteDateInterval"];
  if ((![v35 length] || !objc_msgSend(v33, "length") || !v34) && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v39 = v35;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: returning nil record. messageGUID: %@, deleteDateNanosecondIntervalNumber: %@", buf, 0x16u);
    }
  }

  unsignedLongLongValue = [v34 unsignedLongLongValue];
  v30 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:unsignedLongLongValue];
  v11 = [metadataCopy objectForKeyedSubscript:@"partBody"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 attributesAtIndex:0 effectiveRange:0];
    v14 = [v13 objectForKey:*MEMORY[0x277D19160]];
    integerValue = [v14 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  v16 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v16 cachedSalt];

  v17 = [(IMDCKRecoverableMessageSyncController *)self recoverableGUIDFromMessageGUID:v35 chatGUID:v33 partIndex:integerValue];
  v18 = [CKRecordUtilities recordIDUsingSalt:cachedSalt zoneID:dCopy guid:v17];
  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"recoverableMessage" recordID:v18];
    [v19 _setCKRecordString:v35 forKey:@"guid"];
    [v19 _setCKRecordDate:v30 forKey:@"deleteDate"];
    if (v12)
    {
      v20 = JWEncodeCodableObject();
      [v19 _setCKRecordData:v20 forKey:@"partBody"];
    }

    if (v19)
    {
      v36[0] = @"messageRowID";
      v21 = [metadataCopy objectForKeyedSubscript:?];
      v36[1] = @"partIndex";
      v37[0] = v21;
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v37[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      recordID = [v19 recordID];
      recordName = [recordID recordName];
      [iDCopy setObject:v23 forKeyedSubscript:recordName];
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Recently Delete | Was not able to construct CKRecord with given data. This is bad.", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = metadataCopy;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: returning nil record. recordID nil for metadata: %@", buf, 0xCu);
      }
    }

    v19 = 0;
  }

  return v19;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (void)deleteRecoverableMessageZone
{
  ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B655998;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)deleteChatBotRecoverableMessageSyncToken
{
  syncTokenStore = [(IMDCKRecoverableMessageSyncController *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"chatBotRecoverableMessageChangeToken"];
}

@end