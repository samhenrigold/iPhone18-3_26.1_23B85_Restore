@interface IMDDatabase
+ (IMDRemoteDatabaseProtocol)database;
+ (IMDRemoteDatabaseProtocol)synchronousDatabase;
+ (id)_databaseClientAsync;
+ (id)_databaseClientSync;
+ (id)_databaseServer;
+ (id)_legacyDatabaseClient;
+ (id)_newSyndicationRangeForCMMMessageItem:(id)item syndicationIdentifier:(id)identifier shouldHideFromSyndication:(BOOL)syndication;
- (BOOL)_shouldDisplayGroupNameAndPhotoWithRecord:(id)record;
- (BOOL)_updateSyndicatedMessageItem:(id)item newMessageItem:(id)messageItem newSyndicationRange:(id)range;
- (id)_chatGUIDsForChatsWithJunkMessagesOlderThanDate:(id)date operation:(IMDSqlOperation *)operation;
- (id)_chatGUIDsForChatsWithRecoverableMessagesOlderThanDate:(id)date operation:(IMDSqlOperation *)operation;
- (id)_copyAttachmentRecordsFromCoreSDBResults:(id)results;
- (id)_copyMessageRecordsFromCoreSDBResults:(id)results;
- (id)_deleteChatIfEmptyWithGUID:(id)d lastMessageDate:(id)date operation:(IMDSqlOperation *)operation;
- (id)_initAsSynchronous:(BOOL)synchronous;
- (id)_loadAttributedBodyTextForMessageWithGUID:(id)d;
- (id)_loadRecoverableMessagePartsMetadataForChatGUID:(id)d;
- (id)_messageKeyPathsToColumnsQueryingChatJoinTable:(BOOL)table sortDescriptors:(id)descriptors;
- (id)_mostRecentJunkMessageDateForChatWithGUID:(id)d operation:(IMDSqlOperation *)operation;
- (id)_mostRecentRecoverableMessageDateForChatWithGUID:(id)d operation:(IMDSqlOperation *)operation;
- (id)_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds beforeDate:(id)date;
- (id)_queryForMessageRecordCountWithMessageWhereClause:(id)clause chatWhereClause:(id)whereClause limit:(int64_t)limit;
- (id)_queryForMessageRecordFetchWithMessageWhereClause:(id)clause chatWhereClause:(id)whereClause handleWhereClause:(id)handleWhereClause orderByClauses:(id)clauses parentedOnly:(BOOL)only;
- (id)_restoredAttributedBodyForMessageGUID:(id)d withRecoveredAttributedParts:(id)parts;
- (id)_updateAttachmentsSyncStateQueryFor:(int64_t)for;
- (id)_updateChatsSyncStateQueryFor:(int64_t)for;
- (id)_updateMessageSyncStateQueryFor:(int64_t)for;
- (id)_updateMessageSyncedSyndicationRangesQueryFor:(int64_t)for;
- (id)_updateRecoverableMessageSyncStateForMessageGUIDsQueryFor:(int64_t)for;
- (id)chatRecordsFilteredByPredicate:(id)predicate;
- (id)chatRecordsWithHandles:(id)handles serviceName:(id)name displayName:(id)displayName groupID:(id)d style:(unsigned __int8)style useOriginalGroupID:(BOOL)iD;
- (id)chatRecordsWithIdentifier:(id)identifier;
- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)limit;
- (id)handleRecordsFilteredByPredicate:(id)predicate;
- (id)loadRecoverableMessagesMetadataGroupedByChatGUID;
- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)limit;
- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)limit filter:(unint64_t)filter;
- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)limit;
- (int64_t)_countMessagesExcludingGroupPhotosInChatWithGUID:(id)d isRecoverable:(BOOL)recoverable operation:(IMDSqlOperation *)operation;
- (void)_deleteTransfersInMessagePartsForChatGUID:(id)d;
- (void)_fetchChatRecordsWithHandles:(id)handles allowSubsetMatching:(BOOL)matching serviceNames:(id)names displayName:(id)name groupID:(id)d style:(unsigned __int8)style useOriginalGroupID:(BOOL)iD completionHandler:(id)self0;
- (void)_fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors inChatsFilteredUsingPredicate:(id)usingPredicate fromHandlesUsingPredicate:(id)handlesUsingPredicate parentedOnly:(BOOL)only limit:(unint64_t)limit completionHandler:(id)handler;
- (void)_insertServiceBasedSyncDeletedChatRecordsForChatWithGUID:(id)d lastMessageDate:(id)date;
- (void)_performPersistenceBlock:(id)block;
- (void)_permanentlyDeleteJunkMessagesBeforeDate:(id)date;
- (void)_recoverMessagePartsForChatRecordsWithGUIDs:(id)ds dateRecovered:(id)recovered operation:(IMDSqlOperation *)operation;
- (void)_removeFromRecoverableMessagePartForMessageGUID:(id)d operation:(IMDSqlOperation *)operation;
- (void)_updateMessageItemSyndicationRanges:(id)ranges messagePartDescriptor:(id)descriptor shouldHideFromSyndication:(BOOL)syndication;
- (void)_updateMessageRecordForGUID:(id)d withAttributedBody:(id)body dateRecovered:(id)recovered operation:(IMDSqlOperation *)operation;
- (void)_updateMessagesSyncedSyndicationRangesToSyncedForGUIDs:(id)ds;
- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)kit recordID:(id)d;
- (void)addSyncChatSlices:(id)slices forChatWithGUID:(id)d completionHandler:(id)handler;
- (void)addSyncDeletedChatRecords:(id)records completionHandler:(id)handler;
- (void)assignDomainIdentifiers:(id)identifiers toChatRecordWithGUID:(id)d completionHandler:(id)handler;
- (void)assignIdentifier:(id)identifier toChatRecordWithGUID:(id)d forDomain:(id)domain priority:(int64_t)priority completionHandler:(id)handler;
- (void)clearExpiredTimeSensitiveMessagesWithCompletionHandler:(id)handler;
- (void)clearRecoverableMessageTombStones;
- (void)copyAllChatsWithUnreadMessagesWithLimit:(int64_t)limit beforeDate:(id)date predicate:(id)predicate completionHandler:(id)handler;
- (void)copyChatsFromSortedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)copyChatsWithGroupedHandles:(id)handles style:(int64_t)style displayName:(id)name completionHandler:(id)handler;
- (void)deleteAttachmentsDirectWithPredicate:(id)predicate;
- (void)deleteJunkMessagesOlderThanDays:(int64_t)days;
- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)days;
- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)ds;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchChatGUIDsForMessageGUIDs:(id)ds completionHandler:(id)handler;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingLastMessageDateAscending:(BOOL)ascending olderThan:(id)than limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchChatRecordsWithPinningIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchContactsForIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchCountOfRecordType:(unint64_t)type completionHandler:(id)handler;
- (void)fetchDataForKey:(id)key completionHandler:(id)handler;
- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)ds completionHandler:(id)handler;
- (void)fetchHandleRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchIdentifiersForChatRecordWithGUID:(id)d completionHandler:(id)handler;
- (void)fetchIdentifiersForChatRecordWithGUID:(id)d domain:(id)domain completionHandler:(id)handler;
- (void)fetchInteger64ForKey:(id)key completionHandler:(id)handler;
- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)d completionHandler:(id)handler;
- (void)fetchMessageRecordCountFilteredUsingPredicate:(id)predicate inChatsFilteredUsingPredicate:(id)usingPredicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRecordCountForChatRecordWithGUID:(id)d filteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRecordWithGUID:(id)d excludeRecoverableMessages:(BOOL)messages completionHandler:(id)handler;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors inChatsFilteredUsingPredicate:(id)usingPredicate fromHandlesUsingPredicate:(id)handlesUsingPredicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors inChatsFilteredUsingPredicate:(id)usingPredicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors parentedOnly:(BOOL)only limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRecordsForChatRecordWithGUID:(id)d filteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchMessageRowIDsForGUIDs:(id)ds completionHandler:(id)handler;
- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)handler;
- (void)fetchMetadataForSyndicationIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)d limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchServicesForChatWithGUID:(id)d completionHandler:(id)handler;
- (void)fetchSyncChatSliceForChatWithGUID:(id)d serviceName:(id)name completionHandler:(id)handler;
- (void)fetchSyncChatSlicesForChatWithGUID:(id)d completionHandler:(id)handler;
- (void)fetchTotalMessageCountWithCompletionHandler:(id)handler;
- (void)fetchUnreadIncomingMessagesCount:(id)count;
- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)generateUnreadCountReportsForChatsWithGUIDs:(id)ds completionHandler:(id)handler;
- (void)generateUnreadCountReportsWithCompletionHandler:(id)handler;
- (void)handoffReplyToQueue:(id)queue block:(id)block;
- (void)isRecoverablyDeletedMessageGUID:(id)d completionHandler:(id)handler;
- (void)markMessageRecordsAsReadWithGUIDs:(id)ds;
- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)ds deleteDate:(id)date;
- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)ds deleteDate:(id)date;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds completionHandler:(id)handler;
- (void)postSharePlayNotificationForChatGUID:(id)d faceTimeConversationUUID:(id)iD handleIdentifier:(id)identifier localizedApplicationName:(id)name;
- (void)reassignIdentifierForMessageWithGUID:(id)d newGUID:(id)iD completionHandler:(id)handler;
- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)ds;
- (void)reparentMessagesUsingChatIDWithGUIDs:(id)ds completionHandler:(id)handler;
- (void)reparentableMessagesStartingAtRowID:(int64_t)d limit:(int64_t)limit completionHandler:(id)handler;
- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)d newGUID:(id)iD completionHandler:(id)handler;
- (void)resolveSpotlightItemIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)splitMergedChatsInDatabaseAtPath:(id)path completionHandler:(id)handler;
- (void)storeInteger64:(int64_t)integer64 forKey:(id)key;
- (void)storeRecoverableMessagePartWithBody:(id)body forMessageWithGUID:(id)d deleteDate:(id)date;
- (void)unassignIdentifier:(id)identifier fromChatRecordWithGUID:(id)d forDomain:(id)domain completionHandler:(id)handler;
- (void)updateAcceptedContactsInAliasMap:(id)map completionHandler:(id)handler;
- (void)updateAttachmentSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication;
- (void)updateAttachmentsSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateChatsSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateMessageSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication;
- (void)updateMessagesSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)ds toStatus:(int64_t)status;
- (void)updatePendingReviewForChatsWithGUIDs:(id)ds pendingReview:(BOOL)review completionHandler:(id)handler;
- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageGUIDs:(id)ds;
- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageRowID:(int64_t)d onPartIndex:(int64_t)index;
- (void)updateServicesForChatWithGUID:(id)d services:(id)services completionHandler:(id)handler;
@end

@implementation IMDDatabase

+ (IMDRemoteDatabaseProtocol)synchronousDatabase
{
  if (objc_msgSend_isServerProcess(self, a2, v2, v3))
  {
    objc_msgSend__databaseServer(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__databaseClientSync(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

+ (id)_databaseClientSync
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B47484;
  block[3] = &unk_1E7CB6A70;
  block[4] = self;
  if (qword_1EBA53B48 != -1)
  {
    dispatch_once(&qword_1EBA53B48, block);
  }

  v2 = qword_1EBA53B50;

  return v2;
}

+ (id)_legacyDatabaseClient
{
  if (qword_1EBA53B28 != -1)
  {
    sub_1B7CF17E8();
  }

  v3 = qword_1EBA53B30;

  return v3;
}

+ (id)_databaseServer
{
  if (qword_1EDBE5BD0 != -1)
  {
    sub_1B7AEC614();
  }

  v3 = qword_1EDBE5BC8;

  return v3;
}

- (id)loadRecoverableMessagesMetadataGroupedByChatGUID
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Recently Deleted | Will begin counting recoverable messages per chat", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = sub_1B7AE1A14;
  v12 = sub_1B7AE2520;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7AE1EF4;
  v7[3] = &unk_1E7CB8720;
  v7[4] = buf;
  IMDRunSqlOperation(v7);
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Recently Deleted | Finished counting recoverable messages per chat", v6, 2u);
  }

  v4 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v4;
}

- (void)fetchIdentifiersForChatRecordWithGUID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7AEFE64;
  v9[5] = v8;
  v13[4] = sub_1B7AE47A0;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA7AC0;
  v10 = _Block_copy(v13);

  IMDPersistencePerformBlock(v10, 1, v11, v12);

  _Block_release(v10);
}

- (void)fetchServicesForChatWithGUID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7AF1A74;
  v9[5] = v8;
  v13[4] = sub_1B7AF0048;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA77F0;
  v10 = _Block_copy(v13);

  IMDPersistencePerformBlock(v10, 1, v11, v12);

  _Block_release(v10);
}

- (void)updatePendingReviewForChatsWithGUIDs:(id)ds pendingReview:(BOOL)review completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1B7CFECE0();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = review;
  *(v9 + 24) = v7;
  *(v9 + 32) = sub_1B7AF5954;
  *(v9 + 40) = v8;
  v13[4] = sub_1B7AF5654;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA7688;
  v10 = _Block_copy(v13);

  IMDPersistencePerformBlock(v10, 1, v11, v12);

  _Block_release(v10);
}

- (void)fetchChatGUIDsForMessageGUIDs:(id)ds completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7CBCD94;
  v7[4] = v6;
  v11[4] = sub_1B7AF7F04;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA7D18;
  v8 = _Block_copy(v11);

  IMDPersistencePerformBlock(v8, 1, v9, v10);

  _Block_release(v8);
}

- (void)generateUnreadCountReportsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_1B7CFECC0();
  v9[4] = sub_1B7C14D34;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B7C13228;
  v9[3] = &unk_1F2FA2FD0;
  v8 = _Block_copy(v9);

  [(IMDDatabase *)selfCopy generateUnreadCountReportsForChatsWithGUIDs:v7 completionHandler:v8];

  _Block_release(v8);
}

- (void)generateUnreadCountReportsForChatsWithGUIDs:(id)ds completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1B7CFECE0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = self;
  v8[4] = sub_1B7C14DD0;
  v8[5] = v7;
  v13[4] = sub_1B7AFB940;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA3048;
  v9 = _Block_copy(v13);
  selfCopy = self;

  IMDPersistencePerformBlock(v9, 1, v11, v12);

  _Block_release(v9);
}

- (void)fetchDataForKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = IMDKVValueForKey(key);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v5);
  }
}

- (void)fetchInteger64ForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if (objc_msgSend_length(keyCopy, v7, v8, v9))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B03CA4;
    v10[3] = &unk_1E7CB6700;
    v11 = keyCopy;
    v12 = &v13;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT value FROM kvtable WHERE key = ?", v10);
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v14[3]);
    }

    _Block_object_dispose(&v13, 8);
  }
}

- (void)storeInteger64:(int64_t)integer64 forKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_length(keyCopy, v6, v7, v8))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B03D9C;
    v9[3] = &unk_1E7CB6728;
    v10 = keyCopy;
    integer64Copy = integer64;
    _IMDPerformLockedStatementBlockWithQuery(@"INSERT OR REPLACE INTO kvtable (key, value) VALUES (?, ?)", v9);
  }
}

- (void)fetchCountOfRecordType:(unint64_t)type completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (type >= 4)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB29C(type, v10);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v6 = off_1E7CB6748[type];
    v14 = 0;
    v7 = IMDRowCountForTable(v6, &v14);
    v8 = v14;
    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEB328(v6, v8, v9);
      }

      v7 = 0;
    }

    else
    {
      v9 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v7, v12);
        *buf = 138543618;
        v16 = v6;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Total row count for table %{public}@: %@", buf, 0x16u);
      }
    }

    handlerCopy[2](handlerCopy, v7);
  }
}

- (id)handleRecordsFilteredByPredicate:(id)predicate
{
  v35 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1B7AE18D4;
  v29 = sub_1B7AE2460;
  v30 = 0;
  if (predicateCopy)
  {
    v5 = [IMDPredicateToSQLConverter alloc];
    v9 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v6, v7, v8);
    v11 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v5, v10, predicateCopy, v9);

    if (v11)
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = @"YES";
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Fetching handles filtered by predicate: %@", buf, 0xCu);
      }

      v16 = objc_msgSend_expression(v11, v13, v14, v15);
      v17 = IMDHandleRecordCopyHandlesFilteredUsingPredicateQuery(v16);

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1B7B08618;
      v21[3] = &unk_1E7CB6930;
      selfCopy = self;
      v24 = &v25;
      v22 = v11;
      _IMDPerformLockedStatementBlockWithQuery(v17, v21);
      v18 = v26[5];
      if (!v18)
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v19 = v18;
    }

    else
    {
      v17 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v32 = "[IMDDatabase(Handles) handleRecordsFilteredByPredicate:]";
        v33 = 2112;
        v34 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[IMDDatabase(Handles) handleRecordsFilteredByPredicate:]";
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "No predicate provided to %s", buf, 0xCu);
    }

    v19 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v25, 8);

  return v19;
}

- (void)fetchHandleRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  v76 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1B7AE18D4;
  v67 = sub_1B7AE2460;
  v68 = 0;
  v51 = predicateCopy;
  if (predicateCopy)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v13 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v10, v11, v12);
    v52 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v9, v14, predicateCopy, v13);

    if (!v52)
    {
      v15 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v70 = "[IMDDatabase(Handles) fetchHandleRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
        v71 = 2112;
        v72 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v52 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v17 = descriptorsCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v59, v75, 16);
  if (v19)
  {
    v20 = *v60;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        v23 = [IMDSortDescriptorToSQLConverter alloc];
        v27 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v24, v25, v26);
        v29 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v23, v28, v22, v27);

        if (!v29)
        {
          v47 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v70 = "[IMDDatabase(Handles) fetchHandleRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
            v71 = 2112;
            v72 = v22;
            _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (handlerCopy)
          {
            (handlerCopy[2])();
          }

          goto LABEL_27;
        }

        v33 = objc_msgSend_expression(v29, v30, v31, v32);
        objc_msgSend_addObject_(v16, v34, v33, v35);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v36, &v59, v75, 16);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v37 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_msgSend_count(v17, v38, v39, v40);
    v42 = @"YES";
    *buf = 138412802;
    if (!v51)
    {
      v42 = @"NO";
    }

    v70 = v42;
    v71 = 2048;
    v72 = v41;
    v73 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_DEFAULT, "Fetching handles filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x20u);
  }

  v46 = objc_msgSend_expression(v52, v43, v44, v45);
  v17 = IMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimitQuery(v46, v16);

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1B7B08BAC;
  v54[3] = &unk_1E7CB6958;
  v57 = &v63;
  limitCopy2 = limit;
  v55 = v52;
  selfCopy = self;
  _IMDPerformLockedStatementBlockWithQuery(v17, v54);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v64[5]);
  }

LABEL_27:
LABEL_28:
  _Block_object_dispose(&v63, 8);
}

- (void)fetchContactsForIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "IMDContactQueries: Performing XPC fetch of contacts in IMDP", buf, 2u);
    }
  }

  v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v7, v8, v9);
  v14 = objc_msgSend_batchFetchContactsWithoutCachingForIdentifiers_(v11, v12, identifiersCopy, v13);
  v18 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16, v17);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v14;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v35, v41, 16);
  if (v24)
  {
    v25 = *v36;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        v28 = objc_msgSend_identifier(v27, v21, v22, v23, v35);
        objc_msgSend_setObject_forKey_(v18, v29, v27, v28);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v35, v41, 16);
    }

    while (v24);
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v34 = objc_msgSend_count(v18, v31, v32, v33);
      *buf = 134217984;
      v40 = v34;
      _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "IMDContactQueries: Fetched %tu contacts in IMDP", buf, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, v18);
}

- (void)updateAcceptedContactsInAliasMap:(id)map completionHandler:(id)handler
{
  mapCopy = map;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "IMDContactQueries: Performing updateAcceptedContactsInAliasMap", buf, 2u);
    }
  }

  v11 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v7, v8, v9);
  v14 = objc_msgSend__updateAcceptedContactsInAliasToCNIDMap_(v11, v12, mapCopy, v13);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDContactQueries: updateAcceptedContactsInAliasMap returning updated alias map", v18, 2u);
    }
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = mapCopy;
  }

  v17 = v16;

  handlerCopy[2](handlerCopy, v17);
}

- (id)_copyMessageRecordsFromCoreSDBResults:(id)results
{
  resultsCopy = results;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_count(resultsCopy, v5, v6, v7);
  v11 = objc_msgSend_initWithCapacity_(v4, v9, v8, v10);
  if (objc_msgSend_count(resultsCopy, v12, v13, v14))
  {
    v17 = 0;
    v18 = *MEMORY[0x1E695E480];
    do
    {
      objc_msgSend_objectAtIndex_(resultsCopy, v15, v17, v16);
      ID = CSDBRecordGetID();
      v22 = IMDMessageRecordCreateFromRecordIDUnlocked(v18, ID);
      if (v22)
      {
        objc_msgSend_addObject_(v11, v20, v22, v21);
      }

      ++v17;
    }

    while (v17 < objc_msgSend_count(resultsCopy, v23, v24, v25));
  }

  return v11;
}

- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)d completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], d);
  v7 = v6;
  if (v6)
  {
    Message = IMDChatRecordCopyLastMessage(v6);
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      dCopy2 = Message;
      v12 = 2048;
      dCopy = d;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Fetched last message %@ for chat with rowID: %lld", &v10, 0x16u);
    }
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      dCopy2 = d;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "No chat record for chat with rowID: %lld", &v10, 0xCu);
    }

    Message = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, Message);
  }
}

- (id)_messageKeyPathsToColumnsQueryingChatJoinTable:(BOOL)table sortDescriptors:(id)descriptors
{
  v27 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (qword_1EBA53F20 != -1)
  {
    sub_1B7CF0044();
    if (table)
    {
      goto LABEL_3;
    }

LABEL_16:
    v19 = qword_1EBA53F18;
    goto LABEL_17;
  }

  if (!table)
  {
    goto LABEL_16;
  }

LABEL_3:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = descriptorsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_key(*(*(&v22 + 1) + 8 * i), v9, v10, v11, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"rowID", v17);

        if (isEqualToString)
        {
          v20 = qword_1EBA53F18;

          goto LABEL_18;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v22, v26, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (qword_1EBA53F30 != -1)
  {
    sub_1B7CF0058();
  }

  v19 = qword_1EBA53F28;
LABEL_17:
  v20 = v19;
LABEL_18:

  return v20;
}

- (id)_queryForMessageRecordFetchWithMessageWhereClause:(id)clause chatWhereClause:(id)whereClause handleWhereClause:(id)handleWhereClause orderByClauses:(id)clauses parentedOnly:(BOOL)only
{
  onlyCopy = only;
  clauseCopy = clause;
  whereClauseCopy = whereClause;
  handleWhereClauseCopy = handleWhereClause;
  clausesCopy = clauses;
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v15, 3, v16);
  if (whereClauseCopy)
  {
    v21 = @"INNER";
    if (!onlyCopy)
    {
      v21 = &stru_1F2FA9728;
    }

    v22 = objc_msgSend_stringByAppendingFormat_(&stru_1F2FA9728, v17, @"%@ JOIN chat_message_join ON chat_message_join.message_id = message.rowid %@ JOIN chat ON chat.rowid = chat_message_join.chat_id  ", v19, v21, v21);
LABEL_7:
    v23 = v22;
    if (!handleWhereClauseCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (onlyCopy)
  {
    v22 = objc_msgSend_stringByAppendingString_(&stru_1F2FA9728, v17, @"INNER JOIN chat_message_join ON chat_message_join.message_id = message.rowid ", v19);
    goto LABEL_7;
  }

  v23 = &stru_1F2FA9728;
  if (handleWhereClauseCopy)
  {
LABEL_8:
    v24 = objc_msgSend_stringByAppendingFormat_(v23, v17, @"INNER JOIN handle ON handle.rowid = message.handle_id ", v19);

    v23 = v24;
  }

LABEL_9:
  if (whereClauseCopy)
  {
    objc_msgSend_addObject_(v20, v17, whereClauseCopy, v19);
  }

  if (handleWhereClauseCopy)
  {
    objc_msgSend_addObject_(v20, v17, handleWhereClauseCopy, v19);
  }

  if (clauseCopy)
  {
    objc_msgSend_addObject_(v20, v17, clauseCopy, v19);
  }

  if (objc_msgSend_count(v20, v17, v18, v19))
  {
    v28 = MEMORY[0x1E696AEC0];
    v29 = objc_msgSend_componentsJoinedByString_(v20, v25, @" AND ", v27);
    v32 = objc_msgSend_stringWithFormat_(v28, v30, @"WHERE %@", v31, v29);
  }

  else
  {
    v32 = &stru_1F2FA9728;
  }

  if (objc_msgSend_count(clausesCopy, v25, v26, v27))
  {
    v35 = objc_msgSend_componentsJoinedByString_(clausesCopy, v33, @", ", v34);
    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, @"ORDER BY %@ ", v37, v35);
  }

  else
  {
    v38 = &stru_1F2FA9728;
  }

  v39 = objc_alloc(MEMORY[0x1E696AEC0]);
  v42 = objc_msgSend_allColumnsWithPrefix_(IMDMessageQueryStrings, v40, @"message.", v41);
  v45 = objc_msgSend_initWithFormat_(v39, v43, @"SELECT %@ FROM message %@ %@ %@ LIMIT ?;", v44, v42, v23, v32, v38);

  return v45;
}

- (id)_queryForMessageRecordCountWithMessageWhereClause:(id)clause chatWhereClause:(id)whereClause limit:(int64_t)limit
{
  clauseCopy = clause;
  whereClauseCopy = whereClause;
  v9 = @"SELECT COUNT(*) FROM message %@ %@;";
  if (limit > 0)
  {
    v9 = @"SELECT COUNT(*) FROM (SELECT 1 FROM message %@ %@ LIMIT ?);";
  }

  v10 = MEMORY[0x1E695DF70];
  v11 = v9;
  v17 = objc_msgSend_arrayWithCapacity_(v10, v12, 2, v13);
  if (whereClauseCopy)
  {
    v18 = objc_msgSend_stringByAppendingString_(&stru_1F2FA9728, v14, @"JOIN chat_message_join ON chat_message_join.message_id = message.rowid JOIN chat ON chat.rowid = chat_message_join.chat_id ", v16);
    objc_msgSend_addObject_(v17, v19, whereClauseCopy, v20);
    if (!clauseCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v18 = &stru_1F2FA9728;
  if (clauseCopy)
  {
LABEL_5:
    objc_msgSend_addObject_(v17, v14, clauseCopy, v16);
  }

LABEL_6:
  if (objc_msgSend_count(v17, v14, v15, v16))
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_msgSend_componentsJoinedByString_(v17, v21, @" AND ", v22);
    v27 = objc_msgSend_stringWithFormat_(v23, v25, @"WHERE %@", v26, v24);
  }

  else
  {
    v27 = &stru_1F2FA9728;
  }

  v28 = objc_alloc(MEMORY[0x1E696AEC0]);
  v31 = objc_msgSend_initWithFormat_(v28, v29, v11, v30, v18, v27);

  return v31;
}

- (void)_fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors inChatsFilteredUsingPredicate:(id)usingPredicate fromHandlesUsingPredicate:(id)handlesUsingPredicate parentedOnly:(BOOL)only limit:(unint64_t)limit completionHandler:(id)handler
{
  onlyCopy = only;
  v108 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  usingPredicateCopy = usingPredicate;
  handlesUsingPredicateCopy = handlesUsingPredicate;
  handlerCopy = handler;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = sub_1B7AE1954;
  v97 = sub_1B7AE24B0;
  v98 = 0;
  v80 = usingPredicateCopy;
  selfCopy = self;
  v17 = objc_msgSend__messageKeyPathsToColumnsQueryingChatJoinTable_sortDescriptors_(self, v16, usingPredicateCopy != 0, descriptorsCopy);
  if (predicateCopy)
  {
    v18 = [IMDPredicateToSQLConverter alloc];
    v79 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v18, v19, predicateCopy, v17);
    if (!v79)
    {
      v20 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v100 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
        v101 = 2112;
        v102 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Bad message predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      v78 = 0;
      v79 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v79 = 0;
  }

  if (usingPredicateCopy)
  {
    v21 = [IMDPredicateToSQLConverter alloc];
    v25 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v22, v23, v24);
    v78 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v21, v26, v80, v25, @"chat.");

    if (!v78)
    {
      v27 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v100 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
        v101 = 2112;
        v102 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Bad chat predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      v78 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v78 = 0;
  }

  if (handlesUsingPredicateCopy)
  {
    v28 = [IMDPredicateToSQLConverter alloc];
    v32 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v29, v30, v31);
    v76 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v28, v33, handlesUsingPredicateCopy, v32, @"handle.");

    if (!v76)
    {
      v34 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v100 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
        v101 = 2112;
        v102 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Bad handle predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_44;
    }
  }

  else
  {
    v76 = 0;
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v36 = descriptorsCopy;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v89, v107, 16);
  if (v38)
  {
    v39 = *v90;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v90 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v89 + 1) + 8 * i);
        v42 = [IMDSortDescriptorToSQLConverter alloc];
        v44 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v42, v43, v41, v17);
        v48 = v44;
        if (!v44)
        {
          v72 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v100 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
            v101 = 2112;
            v102 = v41;
            _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (handlerCopy)
          {
            handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
          }

          goto LABEL_43;
        }

        v49 = objc_msgSend_expression(v44, v45, v46, v47);
        objc_msgSend_addObject_(v35, v50, v49, v51);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v52, &v89, v107, 16);
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v53 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v57 = objc_msgSend_count(v36, v54, v55, v56);
    v58 = @"YES";
    *buf = 138413058;
    v101 = 2112;
    v100 = v80;
    if (!predicateCopy)
    {
      v58 = @"NO";
    }

    v102 = v58;
    v103 = 2048;
    v104 = v57;
    v105 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_DEFAULT, "Fetching messages for chat: %@ filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x2Au);
  }

  v62 = objc_msgSend_expression(v79, v59, v60, v61);
  v66 = objc_msgSend_expression(v78, v63, v64, v65);
  v70 = objc_msgSend_expression(v76, v67, v68, v69);
  v36 = objc_msgSend__queryForMessageRecordFetchWithMessageWhereClause_chatWhereClause_handleWhereClause_orderByClauses_parentedOnly_(selfCopy, v71, v62, v66, v70, v35, onlyCopy);

  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = sub_1B7B3B054;
  v82[3] = &unk_1E7CB8540;
  v83 = v78;
  v84 = v76;
  v87 = &v93;
  limitCopy2 = limit;
  v85 = v79;
  v86 = selfCopy;
  _IMDPerformLockedStatementBlockWithQuery(v36, v82);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v94[5]);
  }

LABEL_43:
LABEL_44:

  _Block_object_dispose(&v93, 8);
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors inChatsFilteredUsingPredicate:(id)usingPredicate limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  usingPredicateCopy = usingPredicate;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1B7B3B22C;
  v22[3] = &unk_1E7CB8568;
  v22[4] = self;
  v23 = predicateCopy;
  v24 = descriptorsCopy;
  v25 = usingPredicateCopy;
  v26 = handlerCopy;
  limitCopy = limit;
  v16 = handlerCopy;
  v17 = usingPredicateCopy;
  v18 = descriptorsCopy;
  v19 = predicateCopy;
  objc_msgSend__performPersistenceBlock_(self, v20, v22, v21);
}

- (void)fetchMessageRecordsForChatRecordWithGUID:(id)d filteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  dCopy = d;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1B7B3B378;
  v22[3] = &unk_1E7CB8568;
  v22[4] = self;
  v23 = predicateCopy;
  v24 = descriptorsCopy;
  v25 = dCopy;
  v26 = handlerCopy;
  limitCopy = limit;
  v16 = handlerCopy;
  v17 = dCopy;
  v18 = descriptorsCopy;
  v19 = predicateCopy;
  objc_msgSend__performPersistenceBlock_(self, v20, v22, v21);
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors inChatsFilteredUsingPredicate:(id)usingPredicate fromHandlesUsingPredicate:(id)handlesUsingPredicate limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  usingPredicateCopy = usingPredicate;
  handlesUsingPredicateCopy = handlesUsingPredicate;
  handlerCopy = handler;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1B7B3B58C;
  v26[3] = &unk_1E7CB8590;
  v26[4] = self;
  v27 = predicateCopy;
  v28 = descriptorsCopy;
  v29 = usingPredicateCopy;
  v31 = handlerCopy;
  limitCopy = limit;
  v30 = handlesUsingPredicateCopy;
  v19 = handlerCopy;
  v20 = handlesUsingPredicateCopy;
  v21 = usingPredicateCopy;
  v22 = descriptorsCopy;
  v23 = predicateCopy;
  objc_msgSend__performPersistenceBlock_(self, v24, v26, v25);
}

- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  handlerCopy = handler;
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = predicateCopy;
    *&buf[12] = 2048;
    *&buf[14] = limit;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Fetching unread messages for chat predicate: %@  limit: %llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = sub_1B7AE1954;
  v39 = sub_1B7AE24B0;
  v40 = 0;
  if (!predicateCopy)
  {
    v26 = IMDMessageRecordCopyAllUnreadMessagesQueryWithFilter(0, limit, v11, v12);
    v19 = 0;
    goto LABEL_7;
  }

  v13 = [IMDPredicateToSQLConverter alloc];
  v17 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v14, v15, v16);
  v19 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v13, v18, predicateCopy, v17);

  if (v19)
  {
    v23 = objc_msgSend_expression(v19, v20, v21, v22);
    v26 = IMDMessageRecordCopyAllUnreadMessagesQueryWithFilter(v23, limit, v24, v25);

LABEL_7:
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1B7B3B8AC;
    v29[3] = &unk_1E7CB6930;
    v27 = v19;
    selfCopy = self;
    v32 = buf;
    v30 = v27;
    _IMDPerformLockedStatementBlockWithQuery(v26, v29);
    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));

    goto LABEL_8;
  }

  v28 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v33 = 136315394;
    v34 = "[IMDDatabase(LegacyMessages) fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:limit:completionHandler:]";
    v35 = 2112;
    v36 = predicateCopy;
    _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", v33, 0x16u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
  }

LABEL_8:
  _Block_object_dispose(buf, 8);
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7B3BA34;
  v18[3] = &unk_1E7CB85B8;
  v18[4] = self;
  v19 = predicateCopy;
  v21 = handlerCopy;
  limitCopy = limit;
  v20 = descriptorsCopy;
  v13 = handlerCopy;
  v14 = descriptorsCopy;
  v15 = predicateCopy;
  objc_msgSend__performPersistenceBlock_(self, v16, v18, v17);
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors parentedOnly:(BOOL)only limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1B7B3BB6C;
  v20[3] = &unk_1E7CB85E0;
  v20[4] = self;
  v21 = predicateCopy;
  onlyCopy = only;
  v23 = handlerCopy;
  limitCopy = limit;
  v22 = descriptorsCopy;
  v15 = handlerCopy;
  v16 = descriptorsCopy;
  v17 = predicateCopy;
  objc_msgSend__performPersistenceBlock_(self, v18, v20, v19);
}

- (void)fetchMessageRecordCountFilteredUsingPredicate:(id)predicate inChatsFilteredUsingPredicate:(id)usingPredicate limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  usingPredicateCopy = usingPredicate;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7B3BC9C;
  v18[3] = &unk_1E7CB85B8;
  v18[4] = self;
  v19 = usingPredicateCopy;
  v20 = predicateCopy;
  v21 = handlerCopy;
  limitCopy = limit;
  v13 = handlerCopy;
  v14 = predicateCopy;
  v15 = usingPredicateCopy;
  objc_msgSend__performPersistenceBlock_(self, v16, v18, v17);
}

- (void)fetchMessageRecordCountForChatRecordWithGUID:(id)d filteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  if (d)
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = *MEMORY[0x1E69A6B70];
    handlerCopy = handler;
    handlerCopy2 = predicate;
    predicateCopy2 = objc_msgSend_predicateWithFormat_(v10, v14, @"%K = %@", v15, v11, d);
    objc_msgSend_fetchMessageRecordCountFilteredUsingPredicate_inChatsFilteredUsingPredicate_limit_completionHandler_(self, v16, handlerCopy2, predicateCopy2, limit, handlerCopy);
  }

  else
  {
    handlerCopy2 = handler;
    predicateCopy2 = predicate;
    objc_msgSend_fetchMessageRecordCountFilteredUsingPredicate_inChatsFilteredUsingPredicate_limit_completionHandler_(self, v17, predicateCopy2, 0, limit, handlerCopy2);
  }
}

- (void)fetchMessageRecordWithGUID:(id)d excludeRecoverableMessages:(BOOL)messages completionHandler:(id)handler
{
  messagesCopy = messages;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (dCopy && handlerCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = sub_1B7AE1954;
    v21 = sub_1B7AE24B0;
    v22 = 0;
    if (messagesCopy)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1B7B3C404;
      v15[3] = &unk_1E7CB6930;
      selfCopy = self;
      v18 = buf;
      v16 = dCopy;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message JOIN chat_message_join AS cmj ON message.ROWID = cmj.message_id WHERE message.guid = ?;", v15);
      v11 = v16;
    }

    else
    {
      v14 = IMDMessageRecordCopyMessageForGUID(dCopy);
      v11 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v14;
    }

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = _Block_copy(v10);
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Database | One or more invalid required parameters: messageGUID: %@, completionHandler: %@", buf, 0x16u);
    }
  }
}

- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)d limit:(unint64_t)limit completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1B7AE1954;
  v24 = sub_1B7AE24B0;
  v25 = 0;
  if (dCopy && objc_msgSend_length(dCopy, v9, v10, v11))
  {
    v13 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE c.guid = ?  AND m.schedule_type == 2  AND (m.schedule_state == 1 OR m.schedule_state == 2)  ORDER BY cm.message_date ASC LIMIT ?";
  }

  else
  {
    v13 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.schedule_type == 2  AND (m.schedule_state == 1 OR m.schedule_state == 2)  ORDER BY cm.message_date ASC LIMIT ?";
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B3C61C;
  v15[3] = &unk_1E7CB6958;
  v14 = dCopy;
  v18 = &v20;
  limitCopy = limit;
  v16 = v14;
  selfCopy = self;
  _IMDPerformLockedStatementBlockWithQuery(v13, v15);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v21[5]);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)kit recordID:(id)d
{
  kitCopy = kit;
  dCopy = d;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B3C788;
  v9[3] = &unk_1E7CB8630;
  v10 = kitCopy;
  v11 = dCopy;
  v7 = dCopy;
  v8 = kitCopy;
  _IMDPerformLockedStatementBlockWithQuery(@" INSERT INTO scheduled_messages_pending_cloudkit_delete (guid, recordID) VALUES (?, ?);", v9);
}

- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)ds
{
  dsCopy = ds;
  MutableCopy = CFStringCreateMutableCopy(0, 0, @"DELETE from scheduled_messages_pending_cloudkit_delete");
  if (objc_msgSend_count(dsCopy, v5, v6, v7))
  {
    CFStringAppend(MutableCopy, @" WHERE (recordID = ?");
    if (objc_msgSend_count(dsCopy, v8, v9, v10) >= 2)
    {
      v11 = 1;
      do
      {
        CFStringAppend(MutableCopy, @" OR recordID = ?");
        ++v11;
      }

      while (v11 < objc_msgSend_count(dsCopy, v12, v13, v14));
    }

    CFStringAppend(MutableCopy, @""));
  }

  CFStringAppend(MutableCopy, @";");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B3C928;
  v16[3] = &unk_1E7CB8658;
  v17 = dsCopy;
  v15 = dsCopy;
  _IMDPerformLockedStatementBlockWithQuery(MutableCopy, v16);
}

- (void)markMessageRecordsAsReadWithGUIDs:(id)ds
{
  dsCopy = ds;
  v4 = *MEMORY[0x1E695E480];
  v8 = objc_msgSend_count(dsCopy, v5, v6, v7);
  v12 = IMDGenerateInClauseForCount(v8, v9, v10, v11);
  v13 = CFStringCreateWithFormat(v4, 0, @"UPDATE   message SET   is_read = 1,   date_read = ? WHERE guid %@", v12);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B3CA48;
  v15[3] = &unk_1E7CB8658;
  v16 = dsCopy;
  v14 = dsCopy;
  _IMDPerformLockedStatementBlockWithQuery(v13, v15);
}

- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)limit
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  IMDSqlOperationInitWithSharedCSDBDatabase(v12);
  _IMDSqlOperationBeginQuery(v12, @" select * from scheduled_messages_pending_cloudkit_delete where LENGTH(TRIM(recordID)) > 0 limit ?;");
  IMDSqlStatementBindInt64(v13, limit);
  while (IMDSqlOperationHasRows(v12))
  {
    Row = IMDSqlStatementGetRow(v13);
    if (Row)
    {
      objc_msgSend_addObject_(v4, v5, Row, v6);
    }
  }

  IMDSqlOperationFinishQuery(v12);
  v11 = 0;
  IMDSqlOperationRelease(v12, &v11);
  v8 = v11;
  if (v8)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Got error: %@ while trying to get scheduled messages pending cloudkit delete", buf, 0xCu);
    }
  }

  return v4;
}

- (id)_updateMessageSyncStateQueryFor:(int64_t)for
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, for, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@( %@)", v7, @"UPDATE message SET ck_sync_state = ? where guid in ", v5);

  return v8;
}

- (void)updateMessagesSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  IMDSqlOperationInitWithSharedCSDBDatabase(v25);
  IMDSqlOperationBeginTransaction(v25);
  v10 = objc_msgSend_count(dsCopy, v7, v8, v9);
  updated = objc_msgSend__updateMessageSyncStateQueryFor_(self, v11, v10, v12);
  _IMDSqlOperationBeginQuery(v25, updated);
  IMDSqlStatementBindInt64(v26, to);
  v14 = dsCopy;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v26, v14);
  if (IMDSqlOperationFinishQuery(v25))
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "CloudSync.message | updated ck_sync_state for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = *(&v27 + 1);
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0080();
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v25);
  v24 = 0;
  v17 = IMDSqlOperationRelease(v25, &v24);
  v18 = v24;
  v19 = IMLogHandleForCategory();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if (v17)
  {
    if (v20)
    {
      sub_1B7CF01AC();
    }
  }

  else if (v20)
  {
    sub_1B7CF0120(v18, v19, v21, v22);
  }

  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v14;
    _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "CloudSync.message | Finished updating ck_sync_state for recordIDs %@", buf, 0xCu);
  }
}

- (BOOL)_updateSyndicatedMessageItem:(id)item newMessageItem:(id)messageItem newSyndicationRange:(id)range
{
  v66[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  messageItemCopy = messageItem;
  rangeCopy = range;
  v10 = rangeCopy;
  if (!itemCopy)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0294();
    }

    goto LABEL_16;
  }

  if (!messageItemCopy)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0258();
    }

    goto LABEL_16;
  }

  if (!rangeCopy)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF021C();
    }

LABEL_16:
    v41 = 0;
    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_guid(messageItemCopy, v15, v16, v17);
      *buf = 138412546;
      v60 = v18;
      v61 = 2112;
      v62 = v10;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Updating syndication ranges for message item with guid %@. newSyndicationRange: %@", buf, 0x16u);
    }
  }

  v19 = objc_msgSend_syndicationRanges(messageItemCopy, v11, v12, v13);
  v58 = 0;
  v20 = MEMORY[0x1E69A8158];
  v66[0] = v10;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v66, 1);
  v55 = objc_msgSend_updateMessagesRanges_withMessagePartSyndicationRanges_didUpdate_(v20, v23, v19, v22, &v58);

  if (v58 == 1)
  {
    objc_msgSend_setSyndicationRanges_(messageItemCopy, v24, v55, v25);
    v26 = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError(itemCopy, messageItemCopy, 1, 0, 0, 1, 0);
    v30 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v27, v28, v29);
    v34 = objc_msgSend_guid(v26, v31, v32, v33);
    v65 = v34;
    v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, &v65, 1);
    v39 = objc_msgSend_contextWithReason_(IMDIndexingContext, v37, 1011, v38);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_1B7B3D3F4;
    v56[3] = &unk_1E7CB6C58;
    v57 = messageItemCopy;
    objc_msgSend_addMessageGUIDs_context_completionHandler_(v30, v40, v36, v39, v56);
  }

  else if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v46 = objc_msgSend_guid(messageItemCopy, v43, v44, v45);
      v50 = objc_msgSend_description(v10, v47, v48, v49);
      v53 = objc_msgSend_componentsJoinedByString_(v19, v51, @",\n", v52);
      *buf = 138412802;
      v60 = v46;
      v61 = 2112;
      v62 = v50;
      v63 = 2112;
      v64 = v53;
      _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Did NOT update syndication ranges for message: %@\nNew Range:\n%@\nOriginal Ranges:\n%@", buf, 0x20u);
    }
  }

  v41 = v58;

LABEL_22:
  return v41 & 1;
}

- (void)updateAttachmentSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication
{
  syndicationCopy = syndication;
  v71 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  if (rangesCopy)
  {
    v7 = IMMessageGuidFromIMFileTransferGuid();
    v8 = v7;
    if (!v7)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF064C();
      }

      goto LABEL_48;
    }

    v9 = IMDMessageRecordCopyMessageForGUID(v7);
    if (v9)
    {
      v10 = v9;
      v11 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(v9, 0, 0, 0);
      CFRelease(v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v11)
        {
          v12 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v65 = "[IMDDatabase(LegacyMessages) updateAttachmentSyndicationRanges:shouldHideFromSyndication:]";
            v66 = 2112;
            v67 = rangesCopy;
            _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "%s Found corresponding IMMessageItem for attachment GUID %@", buf, 0x16u);
          }

          v16 = objc_msgSend_fileTransferGUIDs(v11, v13, v14, v15);
          v19 = objc_msgSend_containsObject_(v16, v17, rangesCopy, v18);

          if (v19)
          {
            v25 = rangesCopy;
          }

          else
          {
            v25 = objc_msgSend_findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID_(v11, v20, rangesCopy, v21);
            if (!v25)
            {
              v54 = IMLogHandleForCategory();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF0400();
              }

              v25 = IMLogHandleForCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF04B4(v11, v25, v55, v56);
              }

LABEL_47:

LABEL_48:
              goto LABEL_49;
            }
          }

          v58 = syndicationCopy;
          selfCopy = self;
          objc_msgSend_messageParts(v11, v22, v23, v24);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          obj = v63 = 0u;
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v60, v70, 16);
          if (v28)
          {
            v32 = v28;
            v33 = *v61;
LABEL_25:
            v34 = 0;
            while (1)
            {
              if (*v61 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v60 + 1) + 8 * v34);
              v36 = objc_msgSend_transferGUID(v35, v29, v30, v31);
              isEqualToString = objc_msgSend_isEqualToString_(v25, v37, v36, v38);

              if (isEqualToString)
              {
                break;
              }

              if (v32 == ++v34)
              {
                v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v60, v70, 16);
                if (v32)
                {
                  goto LABEL_25;
                }

                goto LABEL_31;
              }
            }

            v43 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v65 = "[IMDDatabase(LegacyMessages) updateAttachmentSyndicationRanges:shouldHideFromSyndication:]";
              v66 = 2112;
              v67 = rangesCopy;
              v68 = 2112;
              v69 = v25;
              _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_DEFAULT, "%s Found corresponding IMMessagePartDescriptor for attachment GUID %@ (actualAttachmentGUID %@)", buf, 0x20u);
            }

            shouldHideFromSyndication = v35;
            if (shouldHideFromSyndication)
            {
              objc_msgSend__updateMessageItemSyndicationRanges_messagePartDescriptor_shouldHideFromSyndication_(selfCopy, v40, v11, shouldHideFromSyndication, v58);
              goto LABEL_46;
            }
          }

          else
          {
LABEL_31:
          }

          isCMM = objc_msgSend_isCMM(v11, v40, v41, v42);
          shouldHideFromSyndication = IMDatabaseLogHandle();
          v46 = os_log_type_enabled(shouldHideFromSyndication, OS_LOG_TYPE_DEFAULT);
          if (isCMM)
          {
            if (v46)
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, shouldHideFromSyndication, OS_LOG_TYPE_DEFAULT, "messageItem is CMM, routing to alternative path to handle IMMessagePartSyndicationAssetDescriptors", buf, 2u);
            }

            shouldHideFromSyndication = objc_msgSend__newSyndicationRangeForCMMMessageItem_syndicationIdentifier_shouldHideFromSyndication_(IMDDatabase, v47, v11, v25, v58);
            if (shouldHideFromSyndication && (objc_msgSend__updateSyndicatedMessageItem_newMessageItem_newSyndicationRange_(selfCopy, v48, v11, v11, shouldHideFromSyndication) & 1) == 0)
            {
              v49 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v53 = objc_msgSend_guid(v11, v50, v51, v52);
                *buf = 136315394;
                v65 = "[IMDDatabase(LegacyMessages) updateAttachmentSyndicationRanges:shouldHideFromSyndication:]";
                v66 = 2112;
                v67 = v53;
                _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_DEFAULT, "%s message item with GUID %@ did not update its syndication ranges", buf, 0x16u);
              }
            }
          }

          else if (v46)
          {
            *buf = 138412290;
            v65 = v25;
            _os_log_impl(&dword_1B7AD5000, shouldHideFromSyndication, OS_LOG_TYPE_DEFAULT, "Failed to find matching messagePart for attachment GUID %@", buf, 0xCu);
          }

LABEL_46:

          goto LABEL_47;
        }

LABEL_20:
        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF05D0();
        }

        goto LABEL_48;
      }

      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF037C();
      }
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF054C();
      }
    }

    goto LABEL_20;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF06C8();
  }

LABEL_49:
}

- (void)_updateMessageItemSyndicationRanges:(id)ranges messagePartDescriptor:(id)descriptor shouldHideFromSyndication:(BOOL)syndication
{
  syndicationCopy = syndication;
  v112 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  descriptorCopy = descriptor;
  v13 = descriptorCopy;
  if (rangesCopy)
  {
    if (descriptorCopy)
    {
      v14 = objc_msgSend_messagePartRange(descriptorCopy, v10, v11, v12);
      if (!(v14 | v15))
      {
        started = IMLogHandleForCategory();
        if (os_log_type_enabled(started, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF0748(rangesCopy, started, v17, v18);
        }

        goto LABEL_46;
      }

      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_msgSend_guid(rangesCopy, v20, v21, v22);
        v27 = objc_msgSend_messagePartIndex(v13, v24, v25, v26);
        v113.location = objc_msgSend_messagePartRange(v13, v28, v29, v30);
        v31 = NSStringFromRange(v113);
        *buf = 136315906;
        v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
        v106 = 2112;
        v107 = v23;
        v108 = 2048;
        v109 = v27;
        v110 = 2112;
        v111 = v31;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "%s Updating syndication ranges for message guid: %@, part %ld, range: %@", buf, 0x2Au);
      }

      v35 = objc_msgSend_messagePartRange(v13, v32, v33, v34);
      v37 = v36;
      v38 = IMDatabaseLogHandle();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (syndicationCopy)
      {
        if (v39)
        {
          v114.location = v35;
          v114.length = v37;
          v40 = NSStringFromRange(v114);
          v44 = objc_msgSend_guid(rangesCopy, v41, v42, v43);
          *buf = 136315650;
          v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v106 = 2112;
          v107 = v40;
          v108 = 2112;
          v109 = v44;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "%s Removing message part range from syndication %@ for message item with GUID %@", buf, 0x20u);
        }

        v45 = objc_alloc(MEMORY[0x1E69A8158]);
        v49 = objc_msgSend_date(MEMORY[0x1E695DF00], v46, v47, v48);
        started = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_(v45, v50, 4, v35, v37, v49);
      }

      else
      {
        if (v39)
        {
          v115.location = v35;
          v115.length = v37;
          v51 = NSStringFromRange(v115);
          v55 = objc_msgSend_guid(rangesCopy, v52, v53, v54);
          *buf = 136315650;
          v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v106 = 2112;
          v107 = v51;
          v108 = 2112;
          v109 = v55;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "%s Unhiding syndication for message part range %@ for message item with GUID %@", buf, 0x20u);
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v59 = objc_msgSend_syndicationRanges(rangesCopy, v56, v57, v58, 0);
        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v99, v103, 16);
        if (v61)
        {
          v65 = v61;
          v66 = *v100;
LABEL_20:
          v67 = 0;
          while (1)
          {
            if (*v100 != v66)
            {
              objc_enumerationMutation(v59);
            }

            v68 = *(*(&v99 + 1) + 8 * v67);
            if (objc_msgSend_messagePartRange(v68, v62, v63, v64) == v35 && v62 == v37)
            {
              break;
            }

            if (v65 == ++v67)
            {
              v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v99, v103, 16);
              if (v65)
              {
                goto LABEL_20;
              }

              goto LABEL_29;
            }
          }

          v49 = v68;

          if (v49 && (objc_msgSend_syndicationType(v49, v70, v71, v72) & 4) != 0)
          {
            v93 = objc_msgSend_syndicationType(v49, v73, v74, v75);
            v94 = objc_alloc(MEMORY[0x1E69A8158]);
            v76 = objc_msgSend_date(MEMORY[0x1E695DF00], v95, v96, v97);
            started = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_(v94, v98, v93 & 0xFFFFFFFFFFFFFFFBLL, v35, v37, v76);
            goto LABEL_35;
          }
        }

        else
        {
LABEL_29:

          v49 = 0;
        }

        v76 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v80 = objc_msgSend_guid(rangesCopy, v77, v78, v79);
          *buf = 136315650;
          v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v106 = 2112;
          v107 = v80;
          v108 = 2112;
          v109 = v49;
          _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_DEFAULT, "%s NOT updating message syndication ranges for message item with GUID %@ because it is already unhidden. currentSyndicationRange: %@", buf, 0x20u);
        }

        started = 0;
LABEL_35:
      }

      v81 = IMDatabaseLogHandle();
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
      if (!started)
      {
        if (v82)
        {
          v91 = objc_msgSend_guid(rangesCopy, v83, v84, v85);
          *buf = 136315394;
          v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v106 = 2112;
          v107 = v91;
          v92 = "%s newSyndicationRange was nil. Did not update syndication ranges for message with GUID %@";
          goto LABEL_44;
        }

LABEL_45:

        goto LABEL_46;
      }

      if (v82)
      {
        v86 = objc_msgSend_guid(rangesCopy, v83, v84, v85);
        *buf = 136315650;
        v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
        v106 = 2112;
        v107 = v86;
        v108 = 2112;
        v109 = started;
        _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_DEFAULT, "%s Updating message syndication ranges for message item with GUID %@. newSyndicationRange: %@", buf, 0x20u);
      }

      if ((objc_msgSend__updateSyndicatedMessageItem_newMessageItem_newSyndicationRange_(self, v87, rangesCopy, rangesCopy, started) & 1) == 0)
      {
        v81 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v91 = objc_msgSend_guid(rangesCopy, v88, v89, v90);
          *buf = 136315394;
          v105 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v106 = 2112;
          v107 = v91;
          v92 = "%s message item with GUID %@ did not update its syndication ranges";
LABEL_44:
          _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_DEFAULT, v92, buf, 0x16u);

          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else
    {
      started = IMLogHandleForCategory();
      if (os_log_type_enabled(started, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF07E0();
      }
    }
  }

  else
  {
    started = IMLogHandleForCategory();
    if (os_log_type_enabled(started, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0860();
    }
  }

LABEL_46:
}

+ (id)_newSyndicationRangeForCMMMessageItem:(id)item syndicationIdentifier:(id)identifier shouldHideFromSyndication:(BOOL)syndication
{
  syndicationCopy = syndication;
  v326 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  if (!itemCopy)
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0BD0();
    }

    goto LABEL_11;
  }

  v12 = objc_msgSend_fileTransferGUIDs(itemCopy, v8, v9, v10);
  if (!v12 || (v16 = v12, objc_msgSend_fileTransferGUIDs(itemCopy, v13, v14, v15), v17 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_count(v17, v18, v19, v20), v17, v16, !v21))
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0B38(itemCopy, v39, v40, v41);
    }

    goto LABEL_11;
  }

  CMMAssetOffset = objc_msgSend_getCMMAssetOffset(itemCopy, v22, v23, v24);
  v26 = IMCMMAssetIndexFromIMFileTransferGUID();
  v30 = objc_msgSend_fileTransferGUIDs(itemCopy, v27, v28, v29);
  v34 = objc_msgSend_count(v30, v31, v32, v33);

  v38 = v34 - CMMAssetOffset;
  if (v34 >= CMMAssetOffset)
  {
    if (v34 == CMMAssetOffset)
    {
      v39 = IMLogHandleForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF0A24(itemCopy, v39, v44, v45);
      }

      goto LABEL_11;
    }

    if (v26 < CMMAssetOffset)
    {
      v39 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_DEFAULT, "Attachment is CMM preview, aborting since we don't care about donating preview to CoreSpotlight", buf, 2u);
      }

      goto LABEL_11;
    }

    v46 = objc_msgSend_fileTransferGUIDs(itemCopy, v35, v36, v37);
    v39 = objc_msgSend_firstObject(v46, v47, v48, v49);

    if (!v39)
    {
      v74 = IMLogHandleForCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF098C(itemCopy, v74, v75, v76);
      }

      goto LABEL_39;
    }

    v292 = v26;
    v293 = CMMAssetOffset;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v53 = objc_msgSend_messageParts(itemCopy, v50, v51, v52);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v306, v325, 16);
    if (v55)
    {
      v59 = v55;
      v289 = identifierCopy;
      v291 = itemCopy;
      v60 = *v307;
      while (2)
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v307 != v60)
          {
            objc_enumerationMutation(v53);
          }

          v62 = *(*(&v306 + 1) + 8 * i);
          v63 = objc_msgSend_transferGUID(v62, v56, v57, v58);
          isEqualToString = objc_msgSend_isEqualToString_(v39, v64, v63, v65);

          if (isEqualToString)
          {
            v69 = IMDatabaseLogHandle();
            identifierCopy = v289;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v320 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
              v321 = 2112;
              v322 = v39;
              v323 = 2112;
              v324 = v289;
              _os_log_impl(&dword_1B7AD5000, v69, OS_LOG_TYPE_DEFAULT, "%s Found corresponding IMMessagePartDescriptor for fileTransferGUID %@ (actualAttachmentGUID %@)", buf, 0x20u);
            }

            v67 = objc_msgSend_messagePartRange(v62, v70, v71, v72);
            v68 = v73;
            itemCopy = v291;
            goto LABEL_35;
          }
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v306, v325, 16);
        if (v59)
        {
          continue;
        }

        break;
      }

      v67 = 0x7FFFFFFFFFFFFFFFLL;
      v68 = 0x7FFFFFFFFFFFFFFFLL;
      identifierCopy = v289;
      itemCopy = v291;
    }

    else
    {
      v67 = 0x7FFFFFFFFFFFFFFFLL;
      v68 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_35:

    v80 = v293;
    if (v67 == 0x7FFFFFFFFFFFFFFFLL && v68 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v74 = IMLogHandleForCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF08E0();
      }

LABEL_39:
      v42 = 0;
LABEL_117:

      goto LABEL_12;
    }

    v81 = objc_msgSend_syndicationRanges(itemCopy, v77, v78, v79);
    v288 = v68;
    if (v81)
    {
      v85 = v81;
      v86 = objc_msgSend_syndicationRanges(itemCopy, v82, v83, v84);
      v90 = objc_msgSend_count(v86, v87, v88, v89);

      if (v90)
      {
        v94 = objc_msgSend_syndicationRanges(itemCopy, v91, v92, v93);
        v98 = objc_msgSend_firstObject(v94, v95, v96, v97);
        v74 = objc_msgSend_copy(v98, v99, v100, v101);
      }

      else
      {
        v74 = 0;
      }

      v68 = v288;
      v80 = v293;
    }

    else
    {
      v74 = 0;
    }

    v102 = IMDatabaseLogHandle();
    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT);
    if (!syndicationCopy)
    {
      v285 = v39;
      v287 = v74;
      if (v103)
      {
        v161 = objc_msgSend_guid(itemCopy, v104, v105, v106);
        *buf = 136315650;
        v320 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
        v321 = 2048;
        v322 = v292;
        v323 = 2112;
        v324 = v161;
        _os_log_impl(&dword_1B7AD5000, v102, OS_LOG_TYPE_DEFAULT, "%s Updating asset syndication descriptor to be not hidden for part index %ld on message item with GUID %@", buf, 0x20u);
      }

      v300 = 0u;
      v301 = 0u;
      v298 = 0u;
      v299 = 0u;
      v162 = itemCopy;
      v166 = objc_msgSend_syndicationRanges(itemCopy, v163, v164, v165);
      v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v167, &v298, v315, 16);
      if (v168)
      {
        v172 = v168;
        v173 = *v299;
LABEL_61:
        v174 = 0;
        while (1)
        {
          if (*v299 != v173)
          {
            objc_enumerationMutation(v166);
          }

          v175 = *(*(&v298 + 1) + 8 * v174);
          if (objc_msgSend_messagePartRange(v175, v169, v170, v171) == v67 && v169 == v68)
          {
            break;
          }

          if (v172 == ++v174)
          {
            v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v169, &v298, v315, 16);
            if (v172)
            {
              goto LABEL_61;
            }

            goto LABEL_70;
          }
        }

        v196 = v175;

        if (!v196)
        {
          goto LABEL_91;
        }

        v197 = objc_msgSend_syndicationForPartIndex_asset_(v196, v177, v292, 0);
        v148 = v197;
        if (!v197)
        {
          v42 = 0;
          itemCopy = v162;
          v39 = v285;
          v74 = v287;
          goto LABEL_109;
        }

        v201 = objc_msgSend_intValue(v197, v198, v199, v200);
        v204 = v201;
        if ((v201 & 4) != 0)
        {
          v274 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v202, v292, v203);
          v310 = v274;
          v277 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v275, v204 & 0xFFFFFFFFFFFFFFFBLL, v276);
          v311 = v277;
          v205 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v278, &v311, &v310, 1);

          v42 = objc_msgSend_updateAssetInfoWith_asset_range_(MEMORY[0x1E69A8158], v279, v205, 0, v196);
          goto LABEL_102;
        }

        v205 = IMDatabaseLogHandle();
        v74 = v287;
        if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
        {
          itemCopy = v162;
          v209 = objc_msgSend_guid(v162, v206, v207, v208);
          v213 = objc_msgSend_assetDescriptor(v196, v210, v211, v212);
          v217 = objc_msgSend_serializedString(v213, v214, v215, v216);
          *buf = 136315650;
          v320 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
          v321 = 2112;
          v322 = v209;
          v323 = 2112;
          v324 = v217;
          _os_log_impl(&dword_1B7AD5000, v205, OS_LOG_TYPE_DEFAULT, "%s NOT updating CMM asset syndication for message item with GUID %@ because it is already unhidden. current syndications: %@", buf, 0x20u);

          v42 = 0;
        }

        else
        {
          v42 = 0;
          itemCopy = v162;
        }

        v39 = v285;
      }

      else
      {
LABEL_70:

LABEL_91:
        v284 = v67;
        v218 = objc_msgSend_fileTransferGUIDs(v162, v177, v178, v179);
        v220 = objc_msgSend_subarrayWithRange_(v218, v219, v293, v38);

        v221 = MEMORY[0x1E695DF90];
        v225 = objc_msgSend_count(v220, v222, v223, v224);
        v205 = objc_msgSend_dictionaryWithCapacity_(v221, v226, v225, v227);
        v294 = 0u;
        v295 = 0u;
        v296 = 0u;
        v297 = 0u;
        v228 = v220;
        v229 = v293;
        v230 = v228;
        v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v231, &v294, v314, 16);
        if (v232)
        {
          v234 = v232;
          v235 = *v295;
          do
          {
            for (j = 0; j != v234; ++j)
            {
              if (*v295 != v235)
              {
                objc_enumerationMutation(v230);
              }

              if (*(*(&v294 + 1) + 8 * j))
              {
                v237 = IMCMMAssetIndexFromIMFileTransferGUID();
                if (v237 >= v229)
                {
                  v239 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v233, v237, v238);
                  objc_msgSend_setObject_forKeyedSubscript_(v205, v240, &unk_1F2FCA278, v239);

                  v229 = v293;
                }
              }
            }

            v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v230, v233, &v294, v314, 16);
          }

          while (v234);
        }

        v241 = v230;

        v242 = objc_alloc(MEMORY[0x1E69A8150]);
        v312 = &unk_1F2FCA278;
        v313 = v205;
        v244 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v243, &v313, &v312, 1);
        v247 = objc_msgSend_initWithAssetSyndications_(v242, v245, v244, v246);

        v248 = objc_alloc(MEMORY[0x1E69A8158]);
        v252 = objc_msgSend_date(MEMORY[0x1E695DF00], v249, v250, v251);
        started = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_syndicationStatus_assetDescriptor_(v248, v253, 0, v284, v288, v252, 0, v247);

        v148 = v241;
        v196 = started;

        v42 = v196;
LABEL_102:
        itemCopy = v162;
        v39 = v285;
        v74 = v287;
      }

      goto LABEL_106;
    }

    if (v103)
    {
      v107 = objc_msgSend_guid(itemCopy, v104, v105, v106);
      *buf = 136315650;
      v320 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
      v321 = 2048;
      v322 = v292;
      v323 = 2112;
      v324 = v107;
      _os_log_impl(&dword_1B7AD5000, v102, OS_LOG_TYPE_DEFAULT, "%s Updating asset syndication descriptor to be hidden for asset index %ld on message item with GUID %@", buf, 0x20u);

      v80 = v293;
    }

    v111 = objc_msgSend_fileTransferGUIDs(itemCopy, v108, v109, v110);
    v113 = objc_msgSend_subarrayWithRange_(v111, v112, v80, v38);

    v282 = v113;
    if (v74 && (objc_msgSend_assetDescriptor(v74, v114, v115, v116), (v117 = objc_claimAutoreleasedReturnValue()) != 0) && (v118 = v117, objc_msgSend_assetDescriptor(v74, v114, v115, v116), v119 = objc_claimAutoreleasedReturnValue(), objc_msgSend_assetSyndications(v119, v120, v121, v122), v123 = objc_claimAutoreleasedReturnValue(), v123, v119, v80 = v293, v118, v123))
    {
      v124 = MEMORY[0x1E695DF90];
      v125 = objc_msgSend_assetDescriptor(v74, v114, v115, v116);
      v129 = objc_msgSend_assetSyndications(v125, v126, v127, v128);
      v132 = objc_msgSend_dictionaryWithDictionary_(v124, v130, v129, v131);

      if (!v132 || (objc_msgSend_objectForKey_(v132, v133, &unk_1F2FCA278, v134), v135 = objc_claimAutoreleasedReturnValue(), v135, !v135))
      {
        v148 = 0;
        goto LABEL_104;
      }

      v283 = v67;
      v286 = v74;
      v138 = objc_msgSend_objectForKeyedSubscript_(v132, v136, &unk_1F2FCA278, v137);
      v142 = objc_msgSend_mutableCopy(v138, v139, v140, v141);

      v145 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v143, v292, v144);
      v148 = objc_msgSend_objectForKey_(v142, v146, v145, v147);

      if (v148)
      {
        v151 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v149, v292, v150);
        v154 = objc_msgSend_objectForKeyedSubscript_(v142, v152, v151, v153);
        v158 = objc_msgSend_intValue(v154, v155, v156, v157);

        if (v158 == 4)
        {
          v148 = 0;
        }

        else
        {
          v280 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v159, v292, v160);
          objc_msgSend_setObject_forKeyedSubscript_(v142, v281, &unk_1F2FCA290, v280);

          v148 = v142;
        }
      }
    }

    else
    {
      v180 = MEMORY[0x1E695DF90];
      v181 = objc_msgSend_count(v113, v114, v115, v116);
      v148 = objc_msgSend_dictionaryWithCapacity_(v180, v182, v181, v183);
      v302 = 0u;
      v303 = 0u;
      v304 = 0u;
      v305 = 0u;
      v132 = v113;
      v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v184, &v302, v318, 16);
      if (!v185)
      {
LABEL_104:

        if (!v148)
        {
          v42 = 0;
          v196 = v282;
          goto LABEL_109;
        }

        v255 = objc_alloc(MEMORY[0x1E69A8150]);
        v316 = &unk_1F2FCA278;
        v317 = v148;
        v257 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v256, &v317, &v316, 1);
        v205 = objc_msgSend_initWithAssetSyndications_(v255, v258, v257, v259);

        v260 = objc_alloc(MEMORY[0x1E69A8158]);
        v264 = objc_msgSend_date(MEMORY[0x1E695DF00], v261, v262, v263);
        v42 = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_syndicationStatus_assetDescriptor_(v260, v265, 0, v67, v288, v264, 0, v205);

        v196 = v282;
LABEL_106:

LABEL_109:
        v266 = IMDatabaseLogHandle();
        v267 = os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT);
        if (v42)
        {
          if (v267)
          {
            v271 = objc_msgSend_guid(itemCopy, v268, v269, v270);
            *buf = 136315650;
            v320 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
            v321 = 2112;
            v322 = v271;
            v323 = 2112;
            v324 = v42;
            _os_log_impl(&dword_1B7AD5000, v266, OS_LOG_TYPE_DEFAULT, "%s Updating message syndication ranges for message item with GUID %@. newSyndicationRange: %@", buf, 0x20u);
          }

          v272 = v42;
        }

        else
        {
          if (v267)
          {
            v273 = objc_msgSend_guid(itemCopy, v268, v269, v270);
            *buf = 136315394;
            v320 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
            v321 = 2112;
            v322 = v273;
            _os_log_impl(&dword_1B7AD5000, v266, OS_LOG_TYPE_DEFAULT, "%s newSyndicationRange was nil. Did not update syndication ranges for message with GUID %@", buf, 0x16u);
          }
        }

        goto LABEL_117;
      }

      v187 = v185;
      v283 = v67;
      v286 = v74;
      v290 = identifierCopy;
      v188 = *v303;
      do
      {
        for (k = 0; k != v187; ++k)
        {
          if (*v303 != v188)
          {
            objc_enumerationMutation(v132);
          }

          if (*(*(&v302 + 1) + 8 * k))
          {
            v190 = IMCMMAssetIndexFromIMFileTransferGUID();
            if (v190 >= v80)
            {
              if (v190 == v292)
              {
                v192 = &unk_1F2FCA290;
              }

              else
              {
                v192 = &unk_1F2FCA278;
              }

              v193 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v186, v190, v191);
              v194 = v192;
              v80 = v293;
              objc_msgSend_setObject_forKeyedSubscript_(v148, v195, v194, v193);
            }
          }
        }

        v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v186, &v302, v318, 16);
      }

      while (v187);
      identifierCopy = v290;
    }

    v74 = v286;
    v67 = v283;
    goto LABEL_104;
  }

  v39 = IMLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF0ABC();
  }

LABEL_11:
  v42 = 0;
LABEL_12:

  return v42;
}

- (void)updateMessageSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication
{
  syndicationCopy = syndication;
  v64 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v7 = rangesCopy;
  if (rangesCopy)
  {
    v8 = IMDMessageRecordCopyMessageForGUID(rangesCopy);
    if (v8)
    {
      v9 = v8;
      v10 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(v8, 0, 0, 0);
      CFRelease(v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        if (v11)
        {
          v12 = v11;
          v13 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v59 = "[IMDDatabase(LegacyMessages) updateMessageSyndicationRanges:shouldHideFromSyndication:]";
            v60 = 2112;
            v61 = v7;
            _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "%s Found IMMessageItem for message GUID %@", buf, 0x16u);
          }

          v14 = objc_alloc(MEMORY[0x1E69A8148]);
          v20 = objc_msgSend_initWithEncodedMessagePartGUID_(v14, v15, v7, v16);
          if (v20)
          {
            v21 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v25 = objc_msgSend_partNumber(v20, v22, v23, v24);
              *buf = 136315650;
              v59 = "[IMDDatabase(LegacyMessages) updateMessageSyndicationRanges:shouldHideFromSyndication:]";
              v60 = 2048;
              v61 = v25;
              v62 = 2112;
              v63 = v7;
              _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "%s Found partNumber %ld for message GUID %@", buf, 0x20u);
            }

            v29 = objc_msgSend_body(v12, v26, v27, v28);
            v33 = objc_msgSend_partNumber(v20, v30, v31, v32);
            v36 = objc_msgSend___im_messagePartMatchingPartIndex_(v29, v34, v33, v35);

            if (v36)
            {
              objc_msgSend__updateMessageItemSyndicationRanges_messagePartDescriptor_shouldHideFromSyndication_(self, v37, v12, v36, syndicationCopy);
            }

            else
            {
              v51 = IMLogHandleForCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF0CCC(v20, v7, v51, v52);
              }
            }
          }

          else
          {
            v39 = objc_msgSend_messageParts(v12, v17, v18, v19);
            v40 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v44 = objc_msgSend_count(v39, v41, v42, v43);
              *buf = 136315650;
              v59 = "[IMDDatabase(LegacyMessages) updateMessageSyndicationRanges:shouldHideFromSyndication:]";
              v60 = 2112;
              v61 = v7;
              v62 = 2048;
              v63 = v44;
              _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_DEFAULT, "%s messagePart number not foound for message GUID %@, updating all %ld parts", buf, 0x20u);
            }

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v36 = v39;
            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v45, &v53, v57, 16);
            if (v46)
            {
              v48 = v46;
              v49 = *v54;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v54 != v49)
                  {
                    objc_enumerationMutation(v36);
                  }

                  objc_msgSend__updateMessageItemSyndicationRanges_messagePartDescriptor_shouldHideFromSyndication_(self, v47, v12, *(*(&v53 + 1) + 8 * i), syndicationCopy, v53);
                }

                v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v47, &v53, v57, 16);
              }

              while (v48);
            }
          }

LABEL_36:
          goto LABEL_37;
        }
      }

      else
      {
        v38 = IMLogHandleForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF0C50();
        }
      }

      v20 = IMLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF0D74();
      }

      v12 = 0;
      goto LABEL_36;
    }

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0DF0();
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0E6C();
    }
  }

LABEL_37:
}

- (id)_updateMessageSyncedSyndicationRangesQueryFor:(int64_t)for
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, for, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@ (%@)", v7, @"update message set synced_syndication_ranges=syndication_ranges where guid in", v5);

  return v8;
}

- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)ds toStatus:(int64_t)status
{
  dsCopy = ds;
  v9 = dsCopy;
  if (status == 1)
  {
    v12 = dsCopy;
    v10 = objc_msgSend_count(dsCopy, dsCopy, v7, v8);
    v9 = v12;
    if (v10)
    {
      objc_msgSend__updateMessagesSyncedSyndicationRangesToSyncedForGUIDs_(self, v12, v12, v11);
      v9 = v12;
    }
  }
}

- (void)_updateMessagesSyncedSyndicationRangesToSyncedForGUIDs:(id)ds
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v23);
  v8 = objc_msgSend_count(dsCopy, v5, v6, v7);
  updated = objc_msgSend__updateMessageSyncedSyndicationRangesQueryFor_(self, v9, v8, v10);
  _IMDSqlOperationBeginQuery(v23, updated);
  v12 = dsCopy;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v24, v12);
  if (IMDSqlOperationFinishQuery(v23))
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "CloudSync.message | updated synced syndication ranges for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = *(&v25 + 1);
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0EEC();
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v23);
  v22 = 0;
  v15 = IMDSqlOperationRelease(v23, &v22);
  v16 = v22;
  v17 = IMLogHandleForCategory();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    if (v18)
    {
      sub_1B7CF1018();
    }
  }

  else if (v18)
  {
    sub_1B7CF0F8C(v16, v17, v19, v20);
  }

  v21 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "CloudSync.message | Finished updating synced syndication ranges for: %@", buf, 0xCu);
  }
}

- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)ds deleteDate:(id)date
{
  v96 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v8 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, ds, v7);
  v12 = objc_msgSend_allObjects(v8, v9, v10, v11);

  v77 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = dateCopy;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_count(v12, v14, v15, v16);
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin moving messages to recoverable message table with deleteDate: %@ for %lu unique messages", buf, 0x16u);
  }

  v78 = objc_msgSend___im_nanosecondTimeInterval(dateCopy, v17, v18, v19);
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v12;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v83, v92, 16);
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = v21;
  v23 = *v84;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v84 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v83 + 1) + 8 * i);
      v26 = IMDMessageRecordCopyMessageForGUID(v25);
      v30 = objc_msgSend_rowID(v26, v27, v28, v29);
      v34 = objc_msgSend_dateRecovered(v26, v31, v32, v33);
      v37 = objc_msgSend_compare_(v34, v35, dateCopy, v36);

      if (v37 == 1)
      {
        v38 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v42 = objc_msgSend_dateRecovered(v26, v39, v40, v41);
          *v88 = 138412546;
          v89 = v42;
          v90 = 2112;
          v91 = dateCopy;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Message was recovered on %@, ignoring synced deletion that happened on %@", v88, 0x16u);
        }
      }

      else
      {
        _IMDSqlOperationBeginQuery(buf, @"INSERT OR REPLACE INTO chat_recoverable_message_join (chat_id, message_id, delete_date)   SELECT chat_id, message_id, ?   FROM chat_message_join AS cmj   JOIN message AS m   ON m.ROWID = cmj.message_id AND m.guid = ?;");
        IMDSqlStatementBindInt64(v94, v78);
        IMDSqlStatementBindTextFromCFString(v94, v25);
        if (!IMDSqlOperationFinishQuery(buf))
        {
          v47 = *(&v95 + 1);
          v48 = IMLogHandleForCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1088();
          }

          goto LABEL_24;
        }

        _IMDSqlOperationBeginQuery(buf, @"DELETE FROM chat_message_join WHERE message_id = ? AND message_id IN(SELECT message_id FROM chat_recoverable_message_join WHERE message_id = ?);");
        IMDSqlStatementBindInt64(v94, v30);
        IMDSqlStatementBindInt64(v94, v30);
        if (IMDSqlOperationFinishQuery(buf))
        {
          objc_msgSend_addObject_(v77, v43, v25, v44);
          goto LABEL_18;
        }

        v38 = *(&v95 + 1);
        v45 = IMLogHandleForCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF1128(v87, v38);
        }
      }

LABEL_18:
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v83, v92, 16);
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_24:

  IMDSqlOperationCommitOrRevertTransaction(buf);
  v82 = 0;
  v49 = IMDSqlOperationRelease(buf, &v82);
  v53 = v82;
  if (v49)
  {
    v54 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v50, v51, v52);
    v58 = objc_msgSend_allObjects(v77, v55, v56, v57);
    v61 = objc_msgSend_contextWithReason_(IMDIndexingContext, v59, 1005, v60);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = sub_1B7B3FCB8;
    v80[3] = &unk_1E7CB6C58;
    v81 = v77;
    objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v54, v62, v58, v61, v80);

    v66 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v63, v64, v65);
    objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(v66, v67, 1005, v68);

    v69 = v81;
  }

  else
  {
    v69 = IMLogHandleForCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1184(v53, v69, v70, v71);
    }
  }

  v72 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v76 = objc_msgSend_count(obj, v73, v74, v75);
    *v88 = 134217984;
    v89 = v76;
    _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished moving messages to recoverable message table for %lu unique messages", v88, 0xCu);
  }
}

- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)days
{
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, days, v3);
  v11 = objc_msgSend___im_dateByAddingDays_(v6, v7, -days, v8);

  v10 = objc_msgSend__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_(self, v9, 0, v11);
}

- (void)deleteJunkMessagesOlderThanDays:(int64_t)days
{
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, days, v3);
  v11 = objc_msgSend___im_dateByAddingDays_(v6, v7, -days, v8);

  objc_msgSend__permanentlyDeleteJunkMessagesBeforeDate_(self, v9, v11, v10);
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_(self, v6, ds, 0);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7);
  }
}

- (id)_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds beforeDate:(id)date
{
  v79 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dateCopy = date;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = objc_msgSend_count(dsCopy, v9, v10, v11);
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin permanently deleting recoverable messages for %lu chatGUIDs", buf, 0xCu);
  }

  if (!(dsCopy | dateCopy))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Recently Deleted | Cannot delete recoverable messages in chats without chatGUIDs or beforeDate", buf, 2u);
      }
    }

    v62 = MEMORY[0x1E695E0F0];
    goto LABEL_50;
  }

  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = objc_msgSend___im_nanosecondTimeInterval(dateCopy, v13, v14, v15);
  v16 = @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, -1 FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID=crmj.chat_id AND c.guid = ? JOIN message AS m  ON m.ROWID=crmj.message_id AND crmj.delete_date < ? AND crmj.ck_sync_state=1 UNION ALL SELECT c.guid, m.guid, rmp.part_index FROM recoverable_message_part AS rmp JOIN chat AS c  ON c.ROWID=rmp.chat_id JOIN message AS m  ON m.ROWID=rmp.message_id AND rmp.delete_date < ? AND rmp.ck_sync_state=1;";
  if (dateCopy)
  {
    v17 = @"DELETE FROM message AS m WHERE m.ROWID IN( SELECT crmj.message_id   FROM chat_recoverable_message_join AS crmj   JOIN message AS m   ON crmj.message_id = m.ROWID   JOIN chat AS c ON crmj.chat_id = c.ROWID and c.guid = ?   WHERE crmj.delete_date < ?    AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join))));";
  }

  else
  {
    v16 = @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, -1 FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID=crmj.chat_id AND c.guid=? JOIN message AS m  ON m.ROWID=crmj.message_id AND crmj.ck_sync_state=1;";
    v17 = @"DELETE FROM message WHERE NOT (group_action_type IN (1,3) AND (ROWID IN (SELECT message_id FROM message_attachment_join))) AND (ROWID IN (SELECT message_id                FROM chat_recoverable_message_join AS crmj                JOIN chat AS c                ON c.ROWID = crmj.chat_id AND c.guid = ?));";
  }

  theString = v16;
  v64 = v17;
  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  if (!dsCopy)
  {
    dsCopy = objc_msgSend__chatGUIDsForChatsWithRecoverableMessagesOlderThanDate_operation_(self, v18, dateCopy, buf);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = dsCopy;
  v20 = 0;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v68, v75, 16);
  if (!v22)
  {
    goto LABEL_40;
  }

  v63 = *v69;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v69 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v68 + 1) + 8 * i);
      v25 = objc_msgSend__mostRecentRecoverableMessageDateForChatWithGUID_operation_(self, v21, v24, buf);
      _IMDSqlOperationBeginQuery(buf, theString);
      IMDSqlStatementBindTextFromCFString(v77, v24);
      if (dateCopy)
      {
        IMDSqlStatementBindInt64(v77, v66);
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v26 = *(&v78 + 1);
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF1210(v74, v26);
        }
      }

      _IMDSqlOperationBeginQuery(buf, v64);
      IMDSqlStatementBindTextFromCFString(v77, v24);
      if (dateCopy)
      {
        IMDSqlStatementBindInt64(v77, v66);
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v33 = *(&v78 + 1);
        v34 = IMLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF126C(v24, v33, v34, v35);
        }

        goto LABEL_39;
      }

      v20 += IMDMessageRecordCountChangesUnlocked();
      if (!dateCopy)
      {
        objc_msgSend__deleteTransfersInMessagePartsForChatGUID_(self, v28, v24, v29);
        _IMDSqlOperationBeginQuery(buf, @"DELETE FROM recoverable_message_part AS rmp WHERE rmp.chat_id IN( SELECT c.ROWID  FROM chat AS c  WHERE c.guid = ?);");
        IMDSqlStatementBindTextFromCFString(v77, v24);
        if (!IMDSqlOperationFinishQuery(buf))
        {
          v33 = *(&v78 + 1);
          v34 = IMLogHandleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1314(v24, v33, v34, v36);
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      v32 = objc_msgSend__deleteChatIfEmptyWithGUID_lastMessageDate_operation_(self, v28, v24, v25, buf);
      if (v32)
      {
        objc_msgSend_addObject_(v62, v30, v32, v31);
      }
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v68, v75, 16);
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v40 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v37, v38, v39);
  v44 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v41, v20, v42);
  if (dateCopy)
  {
    objc_msgSend_trackDeleteMessages_sourceType_(v40, v43, v44, 4);
  }

  else
  {
    objc_msgSend_trackDeleteMessages_sourceType_(v40, v43, v44, 1);
  }

  IMDSqlOperationCommitOrRevertTransaction(buf);
  v67 = 0;
  v45 = IMDSqlOperationRelease(buf, &v67);
  v49 = v67;
  if (v45)
  {
    v50 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v46, v47, v48);
    objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(v50, v51, 1005, v52);
  }

  else
  {
    v50 = IMLogHandleForCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF13BC(v49, v50, v53, v54);
    }
  }

  v55 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v59 = objc_msgSend_count(obj, v56, v57, v58);
    *v72 = 134217984;
    v73 = v59;
    _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished permanently deleting recoverable messages for %lu chatGUIDs", v72, 0xCu);
  }

LABEL_50:

  return v62;
}

- (id)_mostRecentRecoverableMessageDateForChatWithGUID:(id)d operation:(IMDSqlOperation *)operation
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B4067C;
  v13[3] = &unk_1E7CB8680;
  operationCopy = operation;
  v6 = dCopy;
  v14 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B40688;
  v12[3] = &unk_1E7CB7920;
  v12[4] = &v16;
  v12[5] = operation;
  _IMDSqlOperationRunQuery(operation, @"SELECT m.date FROM chat_recoverable_message_join AS crmj JOIN chat AS c ON c.ROWID = crmj.chat_id AND c.guid = ? JOIN message AS m ON m.ROWID = crmj.message_id ORDER BY m.date DESC LIMIT 1 ", v13, v12);
  v10 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v7, v8, v9, v17[3]);

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)_permanentlyDeleteJunkMessagesBeforeDate:(id)date
{
  v51 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Junk Messages | Will begin permanently deleting junk messages", buf, 2u);
  }

  if (dateCopy)
  {
    v8 = objc_msgSend___im_nanosecondTimeInterval(dateCopy, v5, v6, v7);
    v47 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    *buf = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationBeginTransaction(buf);
    objc_msgSend__chatGUIDsForChatsWithJunkMessagesOlderThanDate_operation_(self, v9, dateCopy, buf);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v11 = 0;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v40, v50, 16);
    if (v13)
    {
      v14 = *v41;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          v17 = objc_msgSend__mostRecentJunkMessageDateForChatWithGUID_operation_(self, v12, v16, buf, dateCopy);
          _IMDSqlOperationBeginQuery(buf, @"DELETE FROM message AS m WHERE m.ROWID IN( SELECT cmj.message_id   FROM chat_message_join AS cmj   JOIN message AS m   ON cmj.message_id = m.ROWID   JOIN chat AS c ON cmj.chat_id = c.ROWID and c.guid = ?   WHERE m.date < ?);");
          IMDSqlStatementBindTextFromCFString(v46, v16);
          IMDSqlStatementBindInt64(v46, v8);
          if (!IMDSqlOperationFinishQuery(buf))
          {
            v21 = *(&v47 + 1);
            v22 = IMLogHandleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF144C(v16, v21, v22, v23);
            }

            goto LABEL_16;
          }

          v18 = IMDMessageRecordCountChangesUnlocked();
          v20 = objc_msgSend__deleteChatIfEmptyWithGUID_lastMessageDate_operation_(self, v19, v16, v17, buf);

          v11 += v18;
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v40, v50, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v27 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v24, v25, v26);
    v30 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v28, v11, v29);
    objc_msgSend_trackDeleteMessages_sourceType_(v27, v31, v30, 5);

    IMDSqlOperationCommitOrRevertTransaction(buf);
    v32 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_msgSend_count(obj, v33, v34, v35);
      *v48 = 134217984;
      v49 = v36;
      _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "Junk Messages | Finished permanently deleting junk messages for %lu chatGUIDs", v48, 0xCu);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Junk Messages | Cannot delete junk messages in chats without beforeDate", buf, 2u);
    }
  }
}

- (id)_mostRecentJunkMessageDateForChatWithGUID:(id)d operation:(IMDSqlOperation *)operation
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B40D5C;
  v13[3] = &unk_1E7CB8680;
  operationCopy = operation;
  v6 = dCopy;
  v14 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B40D68;
  v12[3] = &unk_1E7CB7920;
  v12[4] = &v16;
  v12[5] = operation;
  _IMDSqlOperationRunQuery(operation, @"SELECT m.date FROM chat_message_join AS cmj JOIN chat AS c ON c.ROWID = cmj.chat_id AND c.guid = ? JOIN message AS m ON m.ROWID = cmj.message_id ORDER BY m.date DESC LIMIT 1 ", v13, v12);
  v10 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v7, v8, v9, v17[3]);

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (int64_t)_countMessagesExcludingGroupPhotosInChatWithGUID:(id)d isRecoverable:(BOOL)recoverable operation:(IMDSqlOperation *)operation
{
  recoverableCopy = recoverable;
  dCopy = d;
  v8 = @"SELECT COUNT(*) FROM chat_message_join AS cmj JOIN message AS m ON cmj.message_id = m.ROWID JOIN chat AS c ON cmj.chat_id = c.ROWID WHERE c.guid = ? AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join)))";
  if (recoverableCopy)
  {
    v8 = @"SELECT COUNT(*) FROM chat_recoverable_message_join AS crmj JOIN message AS m ON crmj.message_id = m.ROWID JOIN chat AS c ON crmj.chat_id = c.ROWID WHERE c.guid = ? AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join)))";
  }

  v9 = v8;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B410B0;
  v14[3] = &unk_1E7CB8680;
  operationCopy = operation;
  v10 = dCopy;
  v15 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B410BC;
  v13[3] = &unk_1E7CB7920;
  v13[4] = &v17;
  v13[5] = operation;
  _IMDSqlOperationRunQuery(operation, v9, v14, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)limit filter:(unint64_t)filter
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, limit, v8);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | retrieving recoverable messages pending cloudkit update with resultLimit: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_1B7AE1954;
  v22 = sub_1B7AE24B0;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = @"SELECT c.guid, crmj.message_id, m.guid, crmj.delete_date, -1, NULL FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID = crmj.chat_id JOIN message AS m  ON m.ROWID = crmj.message_id WHERE crmj.ck_sync_state = 0  AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot')  UNION ALL SELECT c.guid, rmp.message_id, m.guid, rmp.delete_date, rmp.part_index, rmp.part_text  FROM recoverable_message_part AS rmp  JOIN chat AS c   ON c.ROWID = rmp.chat_id  JOIN message AS m   ON m.ROWID = rmp.message_id  WHERE rmp.ck_sync_state = 0  AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot') LIMIT ?;";
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B414C8;
  v15[3] = &unk_1E7CB86D0;
  p_buf = &buf;
  limitCopy = limit;
  if (filter == 4)
  {
    v10 = @"SELECT c.guid, crmj.message_id, m.guid, crmj.delete_date, -1, NULL FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID = crmj.chat_id JOIN message AS m  ON m.ROWID = crmj.message_id WHERE crmj.ck_sync_state = 0 AND balloon_bundle_id == 'com.apple.messages.chatbot'   UNION ALL SELECT c.guid, rmp.message_id, m.guid, rmp.delete_date, rmp.part_index, rmp.part_text  FROM recoverable_message_part AS rmp  JOIN chat AS c   ON c.ROWID = rmp.chat_id  JOIN message AS m   ON m.ROWID = rmp.message_id  WHERE rmp.ck_sync_state = 0 AND balloon_bundle_id == 'com.apple.messages.chatbot'  LIMIT ?;";
  }

  v16 = v10;
  IMDRunSqlOperation(v15);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Finished fetching messages metadata pending update", v14, 2u);
  }

  v12 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v12;
}

- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)limit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v5, limit, v6);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted | retrieving recoverable messages pending cloudkit delete with resultLimit: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = sub_1B7AE1954;
  v16 = sub_1B7AE24B0;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B41F20;
  v12[3] = &unk_1E7CB7948;
  v12[4] = &buf;
  v12[5] = limit;
  IMDRunSqlOperation(v12);
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Finished fetching messages metadata pending delete", v11, 2u);
  }

  v9 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v9;
}

- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageRowID:(int64_t)d onPartIndex:(int64_t)index
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, state, v10);
    v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, d, v13);
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v15, index, v16);
    LODWORD(buf[0]) = 138412802;
    *(buf + 4) = v11;
    WORD2(buf[1]) = 2112;
    *(&buf[1] + 6) = v14;
    HIWORD(buf[2]) = 2112;
    buf[3] = v17;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | setting recoverable sync state: %@ for message rowID: %@ partIndex: %@", buf, 0x20u);
  }

  v71 = 0u;
  memset(v70, 0, sizeof(v70));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  if (index == -1)
  {
    _IMDSqlOperationBeginQuery(buf, @"UPDATE chat_recoverable_message_join AS crmj SET ck_sync_state = ? WHERE crmj.message_id = ?;");
    dCopy2 = state;
    indexCopy = d;
  }

  else
  {
    _IMDSqlOperationBeginQuery(buf, @"UPDATE recoverable_message_part AS rmp SET ck_sync_state = ? WHERE rmp.message_id = ? AND rmp.part_index = ?;");
    IMDSqlStatementBindInt64(v70, state);
    dCopy2 = d;
    indexCopy = index;
  }

  IMDSqlStatementBindInt64(v70, dCopy2);
  IMDSqlStatementBindInt64(v70, indexCopy);
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v20 = *(&v71 + 1);
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v22, state, v23);
      v42 = objc_msgSend_localizedDescription(v20, v39, v40, v41);
      v45 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v43, d, v44);
      v48 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v46, index, v47);
      *v61 = 138413058;
      v62 = v38;
      v63 = 2112;
      v64 = v42;
      v65 = 2112;
      v66 = v45;
      v67 = 2112;
      v68 = v48;
      _os_log_error_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed setting recoverable sync state: %@ with op finish error: %@ for message rowID: %@ partIndex: %@", v61, 0x2Au);
    }
  }

  v60 = 0;
  v24 = IMDSqlOperationRelease(buf, &v60);
  v25 = v60;
  if (v24)
  {
    v26 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, state, v28);
      v32 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v30, d, v31);
      v35 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v33, index, v34);
      *v61 = 138412802;
      v62 = v29;
      v63 = 2112;
      v64 = v32;
      v65 = 2112;
      v66 = v35;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Recently Deleted | Successfully set recoverable sync state: %@ for message rowID: %@ partIndex: %@", v61, 0x20u);
    }
  }

  else
  {
    v26 = IMLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v36, state, v37);
      v53 = objc_msgSend_localizedDescription(v25, v50, v51, v52);
      v56 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v54, d, v55);
      v59 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v57, index, v58);
      *v61 = 138413058;
      v62 = v49;
      v63 = 2112;
      v64 = v53;
      v65 = 2112;
      v66 = v56;
      v67 = 2112;
      v68 = v59;
      _os_log_error_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed setting recoverable sync state: %@ with op release error: %@ for message rowID: %@ partIndex: %@", v61, 0x2Au);
    }
  }
}

- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageGUIDs:(id)ds
{
  v51 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, state, v9);
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Recently Deleted | setting recoverable sync state: %@ for message guids: %@", buf, 0x16u);
  }

  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  v14 = objc_msgSend_count(dsCopy, v11, v12, v13);
  v17 = objc_msgSend__updateRecoverableMessageSyncStateForMessageGUIDsQueryFor_(self, v15, v14, v16);
  _IMDSqlOperationBeginQuery(buf, v17);
  IMDSqlStatementBindInt64(v49, state);
  v18 = dsCopy;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v49, v18);
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v19 = *(&v50 + 1);
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, state, v22);
      v35 = objc_msgSend_localizedDescription(v19, v32, v33, v34);
      *v42 = 138412802;
      v43 = v31;
      v44 = 2112;
      v45 = v35;
      v46 = 2112;
      v47 = v18;
      _os_log_error_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed bulk updating recoverable messages sync state: %@ with op finish error: %@ for message guids: %@", v42, 0x20u);
    }
  }

  v41 = 0;
  v23 = IMDSqlOperationRelease(buf, &v41);
  v24 = v41;
  if (v23)
  {
    v25 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v28 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v26, state, v27);
      *v42 = 138412546;
      v43 = v28;
      v44 = 2112;
      v45 = v18;
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Recently Deleted | Successfully bulk updated recoverable sync state: %@ for message guids: %@", v42, 0x16u);
    }
  }

  else
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, state, v30);
      v40 = objc_msgSend_localizedDescription(v24, v37, v38, v39);
      *v42 = 138412802;
      v43 = v36;
      v44 = 2112;
      v45 = v40;
      v46 = 2112;
      v47 = v18;
      _os_log_error_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed bulk updating recoverable sync state: %@ with op release error: %@ for message guids: %@", v42, 0x20u);
    }
  }
}

- (void)storeRecoverableMessagePartWithBody:(id)body forMessageWithGUID:(id)d deleteDate:(id)date
{
  v69 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  dCopy = d;
  dateCopy = date;
  if (objc_msgSend_length(bodyCopy, v10, v11, v12))
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = dCopy;
      WORD2(buf[1]) = 2112;
      *(&buf[1] + 6) = dateCopy;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | Will begin storing message part body for message with GUID: %@ at deleteDate: %@", buf, 0x16u);
    }

    v17 = objc_msgSend___im_nanosecondTimeInterval(dateCopy, v14, v15, v16);
    v19 = objc_msgSend_attributesAtIndex_effectiveRange_(bodyCopy, v18, 0, 0);
    v22 = objc_msgSend_objectForKey_(v19, v20, *MEMORY[0x1E69A5FD8], v21);

    if (v22)
    {
      v26 = objc_msgSend_integerValue(v22, v23, v24, v25);
      v27 = JWEncodeCodableObject();
      if (v27)
      {
        v68 = 0u;
        memset(v67, 0, sizeof(v67));
        memset(buf, 0, sizeof(buf));
        IMDSqlOperationInitWithSharedCSDBDatabase(buf);
        IMDSqlOperationBeginTransaction(buf);
        _IMDSqlOperationBeginQuery(buf, @"INSERT INTO recoverable_message_part (chat_id, message_id, part_index, delete_date, part_text, ck_sync_state)   SELECT cmj.chat_id, cmj.message_id, ?, ?, ?, 0   FROM chat_message_join AS cmj   JOIN message AS m   ON m.ROWID = cmj.message_id AND m.guid = ?;");
        IMDSqlStatementBindInt64(v67, v26);
        IMDSqlStatementBindInt64(v67, v17);
        IMDSqlStatementBindBlob(v67, v27);
        IMDSqlStatementBindTextFromCFString(v67, dCopy);
        if (!IMDSqlOperationFinishQuery(buf))
        {
          v28 = *(&v68 + 1);
          v29 = IMLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v55 = objc_msgSend_localizedDescription(v28, v30, v31, v32);
            *v60 = 138412802;
            v61 = v55;
            v62 = 2112;
            v63 = dCopy;
            v64 = 2112;
            v65 = dateCopy;
            _os_log_error_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed with error: %@ storing message part body for message with GUID: %@ at deleteDate: %@", v60, 0x20u);
          }
        }

        IMDSqlOperationCommitOrRevertTransaction(buf);
        v58 = 0;
        v33 = IMDSqlOperationRelease(buf, &v58);
        v37 = v58;
        if (v33)
        {
          v38 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v34, v35, v36);
          v59 = dCopy;
          v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, &v59, 1);
          v43 = objc_msgSend_contextWithReason_(IMDIndexingContext, v41, 1005, v42);
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = sub_1B7B43200;
          v56[3] = &unk_1E7CB6C58;
          v57 = dCopy;
          objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v38, v44, v40, v43, v56);

          v48 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v45, v46, v47);
          objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(v48, v49, 1005, v50);

          v51 = v57;
        }

        else
        {
          v51 = IMLogHandleForCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1564(v37, v51, v52, v53);
          }
        }

        v54 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *v60 = 138412546;
          v61 = dCopy;
          v62 = 2112;
          v63 = dateCopy;
          _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "Recently Deleted | Finished storing message part body for message with GUID: %@ at deleteDate: %@", v60, 0x16u);
        }
      }

      else
      {
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF15F4();
        }
      }
    }

    else
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF1630();
      }
    }
  }

  else
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF166C();
    }
  }
}

- (void)clearRecoverableMessageTombStones
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Recently Deleted | Will begin clearing recoverable message tombstones", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buf = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  _IMDSqlOperationBeginQuery(buf, @"DELETE FROM unsynced_removed_recoverable_messages;");
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v3 = *(&v25 + 1);
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF16A8(v3, v4, v5, v6);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(buf);
  v14 = 0;
  v7 = IMDSqlOperationRelease(buf, &v14);
  v8 = v14;
  if (!v7)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1184(v8, v9, v10, v11);
    }
  }

  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Recently Deleted | Finished clearing recoverable message tombstones", v13, 2u);
  }
}

- (void)fetchTotalMessageCountWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  handlerCopy = handler;
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v5, v6, v7);
  v9 = v8;
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v23);
  v10 = _IMDColumnTotalCount(v23, @"SELECT COUNT(*) FROM message;");
  IMDSqlOperationCommitOrRevertTransaction(v23);
  v22 = 0;
  IMDSqlOperationRelease(v23, &v22);
  v14 = v22;
  if (v14)
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_localizedDescription(v14, v16, v17, v18);
      v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateTotalMessageCount failed with error: %@", buf, 0xCu);
    }

    v10 = -1;
  }

  else
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v11, v12, v13);
    v21 = v20;
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v25 = v21 - v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Calculated total messages count in %f seconds. Messages: %lld", buf, 0x16u);
    }
  }

  handlerCopy[2](handlerCopy, v10);
}

- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  handlerCopy = handler;
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v5, v6, v7);
  v9 = v8;
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v23);
  v10 = _IMDColumnTotalCount(v23, @"SELECT COUNT(*) FROM message m LEFT JOIN chat_message_join cm ON m.ROWID = cm.message_id LEFT JOIN chat_recoverable_message_join crmj ON m.ROWID = crmj.message_id WHERE cm.message_id IS NULL AND crmj.message_id IS NULL AND m.item_type = 0;");
  IMDSqlOperationCommitOrRevertTransaction(v23);
  v22 = 0;
  IMDSqlOperationRelease(v23, &v22);
  v14 = v22;
  if (v14)
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_localizedDescription(v14, v16, v17, v18);
      v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateMessagesWithoutChatsCount failed with error: %@", buf, 0xCu);
    }

    v10 = -1;
  }

  else
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v11, v12, v13);
    v21 = v20;
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v25 = v21 - v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Calculated messages without chats count in %f seconds. Missing Messages: %lld", buf, 0x16u);
    }
  }

  handlerCopy[2](handlerCopy, v10);
}

- (void)fetchUnreadIncomingMessagesCount:(id)count
{
  countCopy = count;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B438BC;
  v8[3] = &unk_1E7CB67C0;
  v9 = countCopy;
  v5 = countCopy;
  objc_msgSend__performPersistenceBlock_(self, v6, v8, v7);
}

- (id)_updateRecoverableMessageSyncStateForMessageGUIDsQueryFor:(int64_t)for
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, for, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@ (%@)", v7, @"SELECT rowid FROM message WHERE guid IN", v5);

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%@ (%@)", v10, @"UPDATE chat_recoverable_message_join AS crmj SET ck_sync_state = ? WHERE crmj.message_id IN", v8);

  return v11;
}

+ (IMDRemoteDatabaseProtocol)database
{
  if (objc_msgSend_isServerProcess(self, a2, v2, v3))
  {
    if (qword_1EBA53B18 != -1)
    {
      sub_1B7CF17D4();
    }

    v8 = qword_1EBA53B20;
  }

  else
  {
    v8 = objc_msgSend__databaseClientAsync(self, v5, v6, v7);
  }

  return v8;
}

+ (id)_databaseClientAsync
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B47374;
  block[3] = &unk_1E7CB6A70;
  block[4] = self;
  if (qword_1EBA53B58 != -1)
  {
    dispatch_once(&qword_1EBA53B58, block);
  }

  v2 = qword_1EBA53B60;

  return v2;
}

- (id)_initAsSynchronous:(BOOL)synchronous
{
  v5.receiver = self;
  v5.super_class = IMDDatabase;
  result = [(IMDDatabase *)&v5 init];
  if (result)
  {
    *(result + 8) = synchronous;
  }

  return result;
}

- (void)handoffReplyToQueue:(id)queue block:(id)block
{
  queue = queue;
  blockCopy = block;
  v10 = objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v7, v8, v9);

  if (v10)
  {
    objc_msgSend__handoffCurrentReplyToQueue_block_(MEMORY[0x1E696B0B8], v11, queue, blockCopy);
  }

  else if (objc_msgSend_isSynchronous(self, v11, v12, v13))
  {
    dispatch_sync(queue, blockCopy);
  }

  else
  {
    dispatch_async(queue, blockCopy);
  }
}

- (void)_performPersistenceBlock:(id)block
{
  block = block;
  isSynchronous = objc_msgSend_isSynchronous(self, v4, v5, v6);
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, isSynchronous, v8, v9);
}

- (void)deleteAttachmentsDirectWithPredicate:(id)predicate
{
  v28 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = [IMDPredicateToSQLConverter alloc];
    v8 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v5, v6, v7);
    v10 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v4, v9, predicateCopy, v8);

    if (!v10)
    {
      v11 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "[IMDDatabase(LegacyAttachments) deleteAttachmentsDirectWithPredicate:]";
        v26 = 2112;
        v27 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = predicateCopy;
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Deleting attachments filtered by predicate %@", buf, 0xCu);
  }

  v16 = objc_msgSend_expression(v10, v13, v14, v15);
  v20 = IMDAttachmentRecordDeleteUsingPredicateQuery(v16, v17, v18, v19);

  v21 = v20;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1B7B60B14;
  v22[3] = &unk_1E7CB8658;
  v23 = v10;
  v11 = v10;
  _IMDPerformLockedStatementBlockWithQuery(v21, v22);

LABEL_9:
}

- (id)_updateAttachmentsSyncStateQueryFor:(int64_t)for
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, for, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@( %@)", v7, @"UPDATE attachment SET ck_sync_state = ? WHERE guid IN ", v5);

  return v8;
}

- (void)updateAttachmentsSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  v31 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  IMDSqlOperationInitWithSharedCSDBDatabase(v26);
  IMDSqlOperationBeginTransaction(v26);
  v10 = objc_msgSend_count(dsCopy, v7, v8, v9);
  updated = objc_msgSend__updateAttachmentsSyncStateQueryFor_(self, v11, v10, v12);
  _IMDSqlOperationBeginQuery(v26, updated);
  IMDSqlStatementBindInt64(v27, to);
  v14 = dsCopy;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v27, v14);
  if (IMDSqlOperationFinishQuery(v26))
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "CloudSync.message | updated ck_sync_state for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = *(&v28 + 1);
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF49FC(v14, v15, v16, v17);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v26);
  v25 = 0;
  v18 = IMDSqlOperationRelease(v26, &v25);
  v19 = v25;
  v20 = IMLogHandleForCategory();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (v18)
  {
    if (v21)
    {
      sub_1B7CF4B48(v14, v20);
    }
  }

  else if (v21)
  {
    sub_1B7CF4AB0(v19, v20, v22, v23);
  }

  v24 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v14;
    _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "CloudSync.message | Finished updating ck_sync_state for recordIDs %@", buf, 0xCu);
  }
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  handlerCopy = handler;
  if (predicateCopy)
  {
    v10 = [IMDPredicateToSQLConverter alloc];
    v14 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v11, v12, v13);
    v16 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v10, v15, predicateCopy, v14);

    if (!v16)
    {
      v17 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[IMDDatabase(LegacyAttachments) fetchAttachmentRecordsFilteredUsingPredicate:limit:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"YES";
    if (!predicateCopy)
    {
      v19 = @"NO";
    }

    *buf = 138412546;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = limit;
    _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Fetching attachments filtered by predicate: %@ limit: %llu", buf, 0x16u);
  }

  v23 = objc_msgSend_expression(v16, v20, v21, v22);
  v27 = IMDAttachmentRecordCopyFilteredUsingPredicateWithLimitQuery(v23, v24, v25, v26);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = sub_1B7AE19D4;
  v35 = sub_1B7AE24F8;
  v36 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1B7B6117C;
  v29[3] = &unk_1E7CB6930;
  v28 = v16;
  selfCopy = self;
  v32 = buf;
  v30 = v28;
  _IMDPerformLockedStatementBlockWithQuery(v27, v29);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
  }

  _Block_object_dispose(buf, 8);
LABEL_14:
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  v76 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1B7AE19D4;
  v67 = sub_1B7AE24F8;
  v68 = 0;
  v51 = predicateCopy;
  if (predicateCopy)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v13 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v10, v11, v12);
    v52 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v9, v14, predicateCopy, v13);

    if (!v52)
    {
      v15 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v70 = "[IMDDatabase(LegacyAttachments) fetchAttachmentRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
        v71 = 2112;
        v72 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v52 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v17 = descriptorsCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v59, v75, 16);
  if (v19)
  {
    v20 = *v60;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        v23 = [IMDSortDescriptorToSQLConverter alloc];
        v27 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v24, v25, v26);
        v29 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v23, v28, v22, v27);

        if (!v29)
        {
          v47 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v70 = "[IMDDatabase(LegacyAttachments) fetchAttachmentRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
            v71 = 2112;
            v72 = v22;
            _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (handlerCopy)
          {
            (handlerCopy[2])();
          }

          goto LABEL_27;
        }

        v33 = objc_msgSend_expression(v29, v30, v31, v32);
        objc_msgSend_addObject_(v16, v34, v33, v35);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v36, &v59, v75, 16);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v37 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_msgSend_count(v17, v38, v39, v40);
    v42 = @"YES";
    *buf = 138412802;
    if (!v51)
    {
      v42 = @"NO";
    }

    v70 = v42;
    v71 = 2048;
    v72 = v41;
    v73 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_DEFAULT, "Fetching attachments filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x20u);
  }

  v46 = objc_msgSend_expression(v52, v43, v44, v45);
  v17 = IMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimitQuery(v46, v16);

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1B7B61714;
  v54[3] = &unk_1E7CB6958;
  v57 = &v63;
  limitCopy2 = limit;
  v55 = v52;
  selfCopy = self;
  _IMDPerformLockedStatementBlockWithQuery(v17, v54);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v64[5]);
  }

LABEL_27:
LABEL_28:
  _Block_object_dispose(&v63, 8);
}

- (id)_copyAttachmentRecordsFromCoreSDBResults:(id)results
{
  resultsCopy = results;
  if (resultsCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v8 = objc_msgSend_count(resultsCopy, v5, v6, v7);
    v11 = objc_msgSend_initWithCapacity_(v4, v9, v8, v10);
    if (objc_msgSend_count(resultsCopy, v12, v13, v14))
    {
      v18 = 0;
      v19 = *MEMORY[0x1E695E480];
      do
      {
        objc_msgSend_objectAtIndex_(resultsCopy, v15, v18, v17);
        ID = CSDBRecordGetID();
        v21 = IMDAttachmentRecordCreateFromRecordID(v19, ID);
        if (v21)
        {
          v25 = v21;
          objc_msgSend_addObject_(v11, v22, v21, v24);
          CFRelease(v25);
        }

        ++v18;
      }

      while (v18 < objc_msgSend_count(resultsCopy, v22, v23, v24));
    }

    v26 = objc_msgSend_copy(v11, v15, v16, v17);
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

- (void)postSharePlayNotificationForChatGUID:(id)d faceTimeConversationUUID:(id)iD handleIdentifier:(id)identifier localizedApplicationName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  nameCopy = name;
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138413058;
    v20 = dCopy;
    v21 = 2112;
    v22 = iDCopy;
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = nameCopy;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Asked to post Started SharePlay from Messages notification for chat GUID %@, FaceTime conversation UUID %@, handleIdentifier %@, and localizedApplicationName %@", &v19, 0x2Au);
  }

  v17 = objc_msgSend_sharedInstance(IMDNotificationsController, v14, v15, v16);
  objc_msgSend_postSharePlayNotificationForChatGUID_faceTimeConversationUUID_handleIdentifier_localizedApplicationName_(v17, v18, dCopy, iDCopy, identifierCopy, nameCopy);
}

- (id)chatRecordsFilteredByPredicate:(id)predicate
{
  v35 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1B7AE1A14;
  v29 = sub_1B7AE2520;
  v30 = 0;
  if (predicateCopy)
  {
    v5 = [IMDPredicateToSQLConverter alloc];
    v9 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v6, v7, v8);
    v11 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v5, v10, predicateCopy, v9);

    if (v11)
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = @"YES";
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Fetching chats filtered by predicate: %@", buf, 0xCu);
      }

      v16 = objc_msgSend_expression(v11, v13, v14, v15);
      v17 = IMDChatRecordCopyChatsFilteredUsingPredicateQuery(v16);

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1B7B7A91C;
      v21[3] = &unk_1E7CB6930;
      selfCopy = self;
      v24 = &v25;
      v22 = v11;
      _IMDPerformLockedStatementBlockWithQuery(v17, v21);
      v18 = v26[5];
      if (!v18)
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v19 = v18;
    }

    else
    {
      v17 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v32 = "[IMDDatabase(LegacyChats) chatRecordsFilteredByPredicate:]";
        v33 = 2112;
        v34 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    v11 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[IMDDatabase(LegacyChats) chatRecordsFilteredByPredicate:]";
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "No predicate provided to %s", buf, 0xCu);
    }

    v19 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v19;
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  v78 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_1B7AE1A14;
  v69 = sub_1B7AE2520;
  v70 = 0;
  v53 = predicateCopy;
  if (predicateCopy)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v13 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v10, v11, v12);
    v54 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v9, v14, predicateCopy, v13);

    if (!v54)
    {
      v15 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v72 = "[IMDDatabase(LegacyChats) fetchChatRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
        v73 = 2112;
        v74 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v54 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = descriptorsCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v61, v77, 16);
  if (v19)
  {
    v20 = *v62;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v61 + 1) + 8 * i);
        v23 = [IMDSortDescriptorToSQLConverter alloc];
        v27 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v24, v25, v26);
        v29 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v23, v28, v22, v27);

        if (!v29)
        {
          v49 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v72 = "[IMDDatabase(LegacyChats) fetchChatRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
            v73 = 2112;
            v74 = v22;
            _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (handlerCopy)
          {
            (handlerCopy[2])();
          }

          goto LABEL_27;
        }

        v33 = objc_msgSend_expression(v29, v30, v31, v32);
        objc_msgSend_addObject_(v16, v34, v33, v35);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v36, &v61, v77, 16);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v37 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_msgSend_count(v17, v38, v39, v40);
    v42 = @"YES";
    *buf = 138412802;
    if (!v53)
    {
      v42 = @"NO";
    }

    v72 = v42;
    v73 = 2048;
    v74 = v41;
    v75 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_DEFAULT, "Fetching chats filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x20u);
  }

  v46 = objc_msgSend_expression(v54, v43, v44, v45);
  v17 = IMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimitQuery(v46, v16, v47, v48);

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_1B7B7AEB0;
  v56[3] = &unk_1E7CB6958;
  v59 = &v65;
  limitCopy2 = limit;
  v57 = v54;
  selfCopy = self;
  _IMDPerformLockedStatementBlockWithQuery(v17, v56);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v66[5]);
  }

LABEL_27:
LABEL_28:
  _Block_object_dispose(&v65, 8);
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingLastMessageDateAscending:(BOOL)ascending olderThan:(id)than limit:(unint64_t)limit completionHandler:(id)handler
{
  ascendingCopy = ascending;
  v50 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  thanCopy = than;
  handlerCopy = handler;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1B7AE1A14;
  v42 = sub_1B7AE2520;
  v43 = 0;
  if (predicateCopy)
  {
    v15 = [IMDPredicateToSQLConverter alloc];
    v19 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v16, v17, v18);
    v21 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v15, v20, predicateCopy, v19);

    if (!v21)
    {
      v22 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v45 = "[IMDDatabase(LegacyChats) fetchChatRecordsFilteredUsingPredicate:sortedUsingLastMessageDateAscending:olderThan:limit:completionHandler:]";
        v46 = 2112;
        v47 = predicateCopy;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"YES";
    *buf = 138412802;
    if (!predicateCopy)
    {
      v24 = @"NO";
    }

    v45 = v24;
    v46 = 2112;
    v47 = thanCopy;
    v48 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Fetching chats sorted by recent and filtered by predicate: %@ olderThan: %@ limit: %llu", buf, 0x20u);
  }

  v28 = objc_msgSend_expression(v21, v25, v26, v27);
  MessageDateAndFilteredUsingPredicateWithLimitQuery = IMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimitQuery(ascendingCopy, thanCopy, v28, v29);

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1B7B7B2A8;
  v32[3] = &unk_1E7CBAD20;
  v31 = v21;
  v33 = v31;
  v36 = &v38;
  limitCopy2 = limit;
  v34 = thanCopy;
  selfCopy = self;
  _IMDPerformLockedStatementBlockWithQuery(MessageDateAndFilteredUsingPredicateWithLimitQuery, v32);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v39[5]);
  }

LABEL_15:
  _Block_object_dispose(&v38, 8);
}

- (id)chatRecordsWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1B7AE1A14;
  v20 = sub_1B7AE2520;
  v21 = 0;
  if (objc_msgSend_length(identifierCopy, v5, v6, v7))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B7B554;
    v12[3] = &unk_1E7CB6930;
    selfCopy = self;
    v15 = &v16;
    v13 = identifierCopy;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? ORDER BY chat.ROWID ASC;", v12);
    v8 = v17[5];
    if (!v8)
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = v8;
    v10 = v13;
  }

  else
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[IMDDatabase(LegacyChats) chatRecordsWithIdentifier:]";
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "No identifier provided to %s", buf, 0xCu);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)fetchChatRecordsWithPinningIdentifier:(id)identifier completionHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (objc_msgSend_length(identifierCopy, v8, v9, v10))
  {
    v13 = objc_msgSend_chatRecordsWithIdentifier_(self, v11, identifierCopy, v12);
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v79 = objc_msgSend_count(v13, v15, v16, v17);
      v80 = 2112;
      v81 = identifierCopy;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Found %llu pinned chats using chatIdentifier %@", buf, 0x16u);
    }

    if (objc_msgSend_count(v13, v18, v19, v20))
    {
      v24 = v13;
      v25 = objc_msgSend_count(v13, v21, v22, v23);
    }

    else
    {
      v24 = IMDChatRecordCopyChatsWithGroupID(identifierCopy);

      v27 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_msgSend_count(v24, v28, v29, v30);
        *buf = 134218242;
        v79 = v31;
        v80 = 2112;
        v81 = identifierCopy;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Found %llu pinned chats using groupID %@", buf, 0x16u);
      }

      v25 = objc_msgSend_count(v24, v32, v33, v34);
    }

    if (!v25)
    {
      v72 = v24;
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v36 = objc_alloc_init(IMDChatRecordBatchFetcher);
      v39 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v37, @"%K = %@", v38, *MEMORY[0x1E69A6C98], *MEMORY[0x1E69A7AE0]);
      objc_msgSend_setPredicate_(v36, v40, v39, v41);

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v42 = v36;
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v73, v77, 16);
      if (v44)
      {
        v48 = v44;
        v49 = *v74;
        v50 = &selRef__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_;
        v71 = v35;
        while (2)
        {
          v51 = 0;
          v52 = v50[304];
          do
          {
            if (*v74 != v49)
            {
              objc_enumerationMutation(v42);
            }

            v53 = *(*(&v73 + 1) + 8 * v51);
            v54 = objc_msgSend_handleRecords(v53, v45, v46, v47);
            v57 = objc_msgSend_arrayByApplyingSelector_(v54, v55, v52, v56);

            v58 = IMSHA1HashFromStrings();
            if (objc_msgSend_isEqualToString_(identifierCopy, v59, v58, v60))
            {
              v35 = v71;
              objc_msgSend_addObject_(v71, v61, v53, v62);

              goto LABEL_24;
            }

            ++v51;
          }

          while (v48 != v51);
          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v73, v77, 16);
          v35 = v71;
          v50 = &selRef__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_;
          if (v48)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v24 = objc_msgSend_copy(v35, v63, v64, v65);
      v66 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v70 = objc_msgSend_count(v24, v67, v68, v69);
        *buf = 134218242;
        v79 = v70;
        v80 = 2112;
        v81 = identifierCopy;
        _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_DEFAULT, "Found %llu pinned chats using participantHash %@", buf, 0x16u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v24);
    }
  }

  else
  {
    v26 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v79 = identifierCopy;
      v80 = 2080;
      v81 = "[IMDDatabase(LegacyChats) fetchChatRecordsWithPinningIdentifier:completionHandler:]";
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "No pinning identifier (%@) provided to %s", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
    }
  }
}

- (void)_fetchChatRecordsWithHandles:(id)handles allowSubsetMatching:(BOOL)matching serviceNames:(id)names displayName:(id)name groupID:(id)d style:(unsigned __int8)style useOriginalGroupID:(BOOL)iD completionHandler:(id)self0
{
  v83 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  namesCopy = names;
  nameCopy = name;
  dCopy = d;
  handlerCopy = handler;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1B7AE1A14;
  v75 = sub_1B7AE2520;
  v76 = 0;
  if (objc_msgSend_count(handlesCopy, v18, v19, v20) && (objc_msgSend_count(namesCopy, v21, v22, v23) || (objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), isOneChatEnabled = objc_msgSend_isOneChatEnabled(v27, v28, v29, v30), v27, (isOneChatEnabled & 1) != 0)))
  {
    v35 = objc_msgSend_length(nameCopy, v24, v25, v26);
    v55 = v35 != 0;
    if (dCopy)
    {
      v36 = objc_msgSend_length(dCopy, v32, v33, v34) != 0;
    }

    else
    {
      v36 = 0;
    }

    v42 = objc_msgSend_count(handlesCopy, v32, v33, v34);
    v46 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v43, v44, v45);
    if (objc_msgSend_isOneChatEnabled(v46, v47, v48, v49))
    {
      v53 = 0;
    }

    else
    {
      v53 = objc_msgSend_count(namesCopy, v50, v51, v52);
    }

    v54 = IMDChatRecordCopyChatsWithHandlesOnServicesWithDisplayNameGroupIDStyleQuery(v42, v53, matching, v35 != 0, v36 && !iD, v36 & iD);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = sub_1B7B7BDDC;
    v59[3] = &unk_1E7CBAD48;
    v60 = handlesCopy;
    v61 = namesCopy;
    v67 = v55;
    v62 = nameCopy;
    v68 = v36;
    styleCopy = style;
    matchingCopy = matching;
    v65 = &v71;
    v66 = v42;
    v63 = dCopy;
    selfCopy = self;
    _IMDPerformLockedStatementBlockWithQuery(v54, v59);
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v72[5]);
    }
  }

  else
  {
    v37 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v41 = objc_msgSend_count(handlesCopy, v38, v39, v40);
      *buf = 134218498;
      v78 = v41;
      v79 = 2112;
      v80 = namesCopy;
      v81 = 2080;
      v82 = "[IMDDatabase(LegacyChats) _fetchChatRecordsWithHandles:allowSubsetMatching:serviceNames:displayName:groupID:style:useOriginalGroupID:completionHandler:]";
      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "No handles (%llu) or services (%@) provided to %s", buf, 0x20u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
    }
  }

  _Block_object_dispose(&v71, 8);
}

- (id)chatRecordsWithHandles:(id)handles serviceName:(id)name displayName:(id)displayName groupID:(id)d style:(unsigned __int8)style useOriginalGroupID:(BOOL)iD
{
  styleCopy = style;
  v34[1] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  if (nameCopy && objc_msgSend_length(nameCopy, v17, v18, v19))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1B7AE1A14;
    v32 = sub_1B7AE2520;
    v33 = 0;
    v34[0] = nameCopy;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v34, 1);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B7B7C1A8;
    v27[3] = &unk_1E7CB6860;
    v27[4] = &v28;
    iDCopy = iD;
    objc_msgSend__fetchChatRecordsWithHandles_allowSubsetMatching_serviceNames_displayName_groupID_style_useOriginalGroupID_completionHandler_(self, v23, handlesCopy, 0, v22, displayNameCopy, dCopy, styleCopy, iDCopy, v27);

    v24 = v29[5];
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)ds completionHandler:(id)handler
{
  v83 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  if (objc_msgSend_count(dsCopy, v8, v9, v10))
  {
    v65 = handlerCopy;
    v11 = objc_alloc(MEMORY[0x1E695DF90]);
    v15 = objc_msgSend_count(dsCopy, v12, v13, v14);
    v67 = objc_msgSend_initWithCapacity_(v11, v16, v15, v17);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v66 = dsCopy;
    obj = dsCopy;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v72, v82, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v73;
      v70 = *MEMORY[0x1E69A6B80];
      v68 = *v73;
      do
      {
        v22 = 0;
        v69 = v20;
        do
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v72 + 1) + 8 * v22);
          v24 = IMDChatRecordCopyChatsWithGroupID(v23);
          v28 = objc_msgSend_lastObject(v24, v25, v26, v27);
          if (objc_msgSend__shouldDisplayGroupNameAndPhotoWithRecord_(self, v29, v28, v30))
          {
            v34 = objc_msgSend_properties(v28, v31, v32, v33);
            v37 = objc_msgSend_objectForKeyedSubscript_(v34, v35, v70, v36);

            v38 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v77 = v37;
              v78 = 2112;
              v79 = v23;
              _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "Found groupPhotoGUID %@ for chat with groupID %@", buf, 0x16u);
            }

            if (objc_msgSend_length(v37, v39, v40, v41))
            {
              selfCopy = self;
              v43 = IMDAttachmentRecordCopyAttachmentForGUID(v37);
              v47 = objc_msgSend_path(v43, v44, v45, v46);
              v51 = objc_msgSend_transferState(v43, v48, v49, v50);
              if (objc_msgSend_length(v47, v52, v53, v54))
              {
                v57 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v55, v47, v56);
                v58 = objc_alloc(MEMORY[0x1E69A8220]);
                v61 = objc_msgSend_initWithFileURL_(v58, v59, v57, v60);
                objc_msgSend_setObject_forKeyedSubscript_(v67, v62, v61, v23);
              }

              else
              {
                v57 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v77 = v37;
                  v78 = 2112;
                  v79 = v47;
                  v80 = 1024;
                  v81 = v51;
                  _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_DEFAULT, "Transfer invalid for groupPhotoGUID: %@ filename: %@ state: %d", buf, 0x1Cu);
                }
              }

              self = selfCopy;
              v21 = v68;
              v20 = v69;
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v72, v82, 16);
      }

      while (v20);
    }

    handlerCopy = v65;
    if (v65)
    {
      (v65)[2](v65, v67);
    }

    dsCopy = v66;
  }

  else
  {
    v64 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v77 = "[IMDDatabase(LegacyChats) fetchGroupPhotoPathsForChatsWithGroupIDs:completionHandler:]";
      _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_INFO, "No group IDs provided to %s", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)d newGUID:(id)iD completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = dCopy;
    v23 = 2112;
    v24 = iDCopy;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Updating chat GUID from %@ to %@ to resolve inconsistent properties", &v21, 0x16u);
  }

  if (objc_msgSend_length(dCopy, v11, v12, v13) && objc_msgSend_length(iDCopy, v14, v15, v16))
  {
    v17 = IMDChatRecordCopyChatForGUID(dCopy);
    v18 = v17;
    if (v17)
    {
      _IMDChatRecordSetGUID(v17, iDCopy);
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = dCopy;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Failed to find a chat with GUID %@", &v21, 0xCu);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v18 != 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = iDCopy;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Current GUID %@ or new GUID %@ has zero length", &v21, 0x16u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)ds deleteDate:(id)date
{
  v130 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dateCopy = date;
  v8 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, dsCopy, v7);
  v98 = objc_msgSend_allObjects(v8, v9, v10, v11);

  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = dateCopy;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_count(v98, v13, v14, v15);
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin moving messages to recoverable message table with deleteDate: %@ for %lu chatGUIDs", buf, 0x16u);
  }

  v96 = objc_msgSend___im_nanosecondTimeInterval(dateCopy, v16, v17, v18);
  v129 = 0u;
  memset(v128, 0, sizeof(v128));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(dsCopy, v20, v21, v22))
  {
    theString = IMDChatRecordRowIDsWithChatGUIDsQuery(dsCopy, v23, v24, v25);
    v26 = theString;
    if (theString)
    {
      _IMDSqlOperationBeginQuery(buf, theString);
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v27 = dsCopy;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v114, v126, 16);
      if (v29)
      {
        v30 = *v115;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v115 != v30)
            {
              objc_enumerationMutation(v27);
            }

            IMDSqlStatementBindTextFromCFString(v128, *(*(&v114 + 1) + 8 * i));
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v32, &v114, v126, 16);
        }

        while (v29);
      }

      if (IMDSqlOperationHasRows(buf))
      {
        v33 = MEMORY[0x1E69E9820];
        do
        {
          *&v121 = 0;
          *(&v121 + 1) = &v121;
          v122 = 0x3032000000;
          v123 = sub_1B7AE1A14;
          v124 = sub_1B7AE2520;
          v125 = 0;
          v113[0] = v33;
          v113[1] = 3221225472;
          v113[2] = sub_1B7B7CF44;
          v113[3] = &unk_1E7CB78F8;
          v113[4] = &v121;
          IMDSqlOperationIterateRow(buf, v113);
          v36 = *(*(&v121 + 1) + 40);
          if (v36)
          {
            objc_msgSend_addObject_(v19, v34, v36, v35);
          }

          _Block_object_dispose(&v121, 8);
        }

        while (IMDSqlOperationHasRows(buf));
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v40 = *(&v129 + 1);
        v41 = IMLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF753C(v40, v41, v42, v43);
        }
      }

      v44 = IMDInsertMessagesFromChatsWihGUIDsIntoRecoverableMessageJoinQuery(v19, v37, v38, v39);
      if (v44)
      {
        _IMDSqlOperationBeginQuery(buf, v44);
        IMDSqlStatementBindInt64(v128, v96);
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v45 = v19;
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v109, v120, 16);
        if (v50)
        {
          v51 = *v110;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v110 != v51)
              {
                objc_enumerationMutation(v45);
              }

              v53 = objc_msgSend_longLongValue(*(*(&v109 + 1) + 8 * j), v47, v48, v49);
              IMDSqlStatementBindInt64(v128, v53);
            }

            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v109, v120, 16);
          }

          while (v50);
        }

        if (!IMDSqlOperationFinishQuery(buf))
        {
          v57 = *(&v129 + 1);
          v58 = IMLogHandleForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF75CC(v57, v58, v59, v60);
          }
        }

        v61 = IMDDeleteFromChatMessageJoinWhereMessageInRecoveryForChatsWithGUIDsQuery(v45, v54, v55, v56);
        if (v61)
        {
          _IMDSqlOperationBeginQuery(buf, v61);
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v62 = v45;
          v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v105, v119, 16);
          if (v67)
          {
            v68 = *v106;
            do
            {
              for (k = 0; k != v67; ++k)
              {
                if (*v106 != v68)
                {
                  objc_enumerationMutation(v62);
                }

                v70 = objc_msgSend_longLongValue(*(*(&v105 + 1) + 8 * k), v64, v65, v66);
                IMDSqlStatementBindInt64(v128, v70);
              }

              v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v64, &v105, v119, 16);
            }

            while (v67);
          }

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v71 = v62;
          v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v101, v118, 16);
          if (v76)
          {
            v77 = *v102;
            do
            {
              for (m = 0; m != v76; ++m)
              {
                if (*v102 != v77)
                {
                  objc_enumerationMutation(v71);
                }

                v79 = objc_msgSend_longLongValue(*(*(&v101 + 1) + 8 * m), v73, v74, v75);
                IMDSqlStatementBindInt64(v128, v79);
              }

              v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v73, &v101, v118, 16);
            }

            while (v76);
          }

          if (!IMDSqlOperationFinishQuery(buf))
          {
            v80 = *(&v129 + 1);
            v81 = IMLogHandleForCategory();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF765C(v80, v81, v82, v83);
            }
          }

          IMDSqlOperationCommitOrRevertTransaction(buf);
          v100 = 0;
          v84 = IMDSqlOperationRelease(buf, &v100);
          v87 = v100;
          if (v84)
          {
            objc_msgSend_enumerateObjectsUsingBlock_(v98, v85, &unk_1F2FA0310, v86);
            IMDCoreSpotlightScheduleUpdateForDeletedMessages(1005);
          }

          else
          {
            v88 = IMLogHandleForCategory();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF76EC(v87, v88, v89, v90);
            }
          }

          v91 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v95 = objc_msgSend_count(v98, v92, v93, v94);
            LODWORD(v121) = 134217984;
            *(&v121 + 4) = v95;
            _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished moving messages to recoverable message table for %lu chatGUIDs", &v121, 0xCu);
          }
        }
      }

      v26 = theString;
    }
  }
}

- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)ds
{
  v91 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v3, dsCopy, v4);
  v9 = objc_msgSend_allObjects(v5, v6, v7, v8);

  v60 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11, v12);
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = objc_msgSend_count(v9, v14, v15, v16);
    *&buf[12] = 2112;
    *&buf[14] = v60;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin recovering messages for %lu unique chatGUIDs on date %@", buf, 0x16u);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v9;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v63, v80, 16);
  if (!v58)
  {
    goto LABEL_30;
  }

  v57 = *v64;
  while (2)
  {
    for (i = 0; i != v58; ++i)
    {
      if (*v64 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v63 + 1) + 8 * i);
      _IMDSqlOperationBeginQuery(buf, @" SELECT m.guid FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON crmj.chat_id = c.ROWID AND c.guid = ? JOIN message AS m  ON crmj.message_id = m.ROWID;");
      IMDSqlStatementBindTextFromCFString(&v82, v20);
      if (IMDSqlOperationHasRows(buf))
      {
        v21 = MEMORY[0x1E69E9820];
        do
        {
          *v67 = 0;
          *&v67[8] = v67;
          *&v68 = 0x3032000000;
          *(&v68 + 1) = sub_1B7AE1A14;
          *&v69 = sub_1B7AE2520;
          *(&v69 + 1) = 0;
          v62[0] = v21;
          v62[1] = 3221225472;
          v62[2] = sub_1B7B7D6E4;
          v62[3] = &unk_1E7CBAD90;
          v62[4] = v20;
          v62[5] = v67;
          IMDSqlOperationIterateRow(buf, v62);
          v24 = *(*&v67[8] + 40);
          if (v24)
          {
            objc_msgSend_addObject_(v17, v22, v24, v23);
          }

          _Block_object_dispose(v67, 8);
        }

        while (IMDSqlOperationHasRows(buf));
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v32 = *(&v90 + 1);
        v33 = IMLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF777C(v20, v32, v33, v34);
        }

        goto LABEL_29;
      }

      _IMDSqlOperationBeginQuery(buf, @"UPDATE message set date_recovered = ?, ck_sync_state = 0 WHERE ROWID in (SELECT crmj.message_id FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON crmj.chat_id = c.ROWID AND c.guid = ?);");
      v28 = objc_msgSend___im_nanosecondTimeInterval(v60, v25, v26, v27);
      IMDSqlStatementBindInt64(&v82, v28);
      IMDSqlStatementBindTextFromCFString(&v82, v20);
      if (!IMDSqlOperationFinishQuery(buf))
      {
        v32 = *(&v90 + 1);
        v33 = IMLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF781C(v20, v32, v33, v35);
        }

        goto LABEL_29;
      }

      _IMDSqlOperationBeginQuery(buf, @"INSERT INTO chat_message_join (chat_id, message_id, message_date) SELECT crmj.chat_id, crmj.message_id, m.date FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON crmj.chat_id = c.ROWID AND c.guid = ? JOIN message AS m  ON crmj.message_id = m.ROWID;");
      IMDSqlStatementBindTextFromCFString(&v82, v20);
      if (!IMDSqlOperationFinishQuery(buf))
      {
        v32 = *(&v90 + 1);
        v33 = IMLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF78BC(v20, v32, v33, v36);
        }

LABEL_29:

        goto LABEL_30;
      }

      _IMDSqlOperationBeginQuery(buf, @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, -1 FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID=crmj.chat_id AND c.guid=? JOIN message AS m  ON m.ROWID=crmj.message_id AND crmj.ck_sync_state=1;");
      IMDSqlStatementBindTextFromCFString(&v82, v20);
      if (!IMDSqlOperationFinishQuery(buf))
      {
        v30 = *(&v90 + 1);
        v31 = IMLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF795C(v78, v30, &v79, v31);
        }
      }
    }

    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v63, v80, 16);
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_30:

  _IMDSqlOperationBeginQuery(buf, @"DELETE FROM chat_recoverable_message_join WHERE message_id IN(SELECT message_id FROM chat_message_join);");
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v38 = *(&v90 + 1);
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF79D4(v38, v39, v40, v41);
    }
  }

  v74 = v87;
  v75 = v88;
  v76 = v89;
  v77 = v90;
  v70 = v83;
  v71 = v84;
  v72 = v85;
  v73 = v86;
  *v67 = *buf;
  v68 = *&buf[16];
  v69 = v82;
  objc_msgSend__recoverMessagePartsForChatRecordsWithGUIDs_dateRecovered_operation_(self, v37, obj, v60, v67);
  IMDSqlOperationCommitOrRevertTransaction(buf);
  v61 = 0;
  v42 = IMDSqlOperationRelease(buf, &v61);
  v43 = v61;
  if (v42)
  {
    IMDCoreSpotlightAddChatGUIDs(obj, 1005);
    if (objc_msgSend_count(v17, v44, v45, v46))
    {
      IMDCoreSpotlightAddMessageGUIDs(v17, 1005);
    }
  }

  else
  {
    v47 = IMLogHandleForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7A64(v43, v47, v48, v49);
    }
  }

  v50 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v54 = objc_msgSend_count(obj, v51, v52, v53);
    *v67 = 134217984;
    *&v67[4] = v54;
    _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished recovering messages for %lu unique chatGUIDs", v67, 0xCu);
  }
}

- (void)_recoverMessagePartsForChatRecordsWithGUIDs:(id)ds dateRecovered:(id)recovered operation:(IMDSqlOperation *)operation
{
  v70 = *MEMORY[0x1E69E9840];
  recoveredCopy = recovered;
  v10 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v8, ds, v9);
  v14 = objc_msgSend_allObjects(v10, v11, v12, v13);

  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v69 = objc_msgSend_count(v14, v16, v17, v18);
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Will begin recovering message parts for %lu unique chatGUIDs", buf, 0xCu);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = v14;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v63, v67, 16);
  if (v21)
  {
    v25 = v21;
    v26 = *v64;
    v47 = v50;
    *&v24 = 138412290;
    v46 = v24;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v64 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v63 + 1) + 8 * i);
        v29 = objc_msgSend__loadRecoverableMessagePartsMetadataForChatGUID_(self, v22, v28, v23, v46, v47);
        if (objc_msgSend_count(v29, v30, v31, v32))
        {
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v50[0] = sub_1B7B7DB78;
          v50[1] = &unk_1E7CBADB8;
          v50[2] = self;
          v51 = recoveredCopy;
          v33 = *&operation->var4.var7.var4;
          v60 = *&operation->var4.var7.var2;
          v61 = v33;
          v62 = *&operation->var4.var7.var6;
          v34 = *&operation->var4.var7.var0.var0;
          v56 = *&operation->var4.var4;
          v57 = v34;
          v35 = *&operation->var4.var7.var0.var4;
          v58 = *&operation->var4.var7.var0.var2;
          v59 = v35;
          v36 = *&operation->var2;
          v52 = *&operation->var0;
          v53 = v36;
          v37 = *&operation->var4.var2;
          v54 = *&operation->var4.var0;
          v55 = v37;
          objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v29, v38, v49, v39);
        }

        else
        {
          v40 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = v46;
            v69 = v28;
            _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: No parts metadata found for chatGUID: %@. This state is valid if there are no message part deletions.", buf, 0xCu);
          }
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v63, v67, 16);
    }

    while (v25);
  }

  v41 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v45 = objc_msgSend_count(v19, v42, v43, v44);
    *buf = 134217984;
    v69 = v45;
    _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished recovering message parts for %lu unique chatGUIDs", buf, 0xCu);
  }
}

- (id)_restoredAttributedBodyForMessageGUID:(id)d withRecoveredAttributedParts:(id)parts
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  partsCopy = parts;
  v10 = objc_msgSend__loadAttributedBodyTextForMessageWithGUID_(self, v8, dCopy, v9);
  if (!v10)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7AF4();
    }

    v10 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v29 = v10;
  v15 = objc_msgSend_mutableCopy(v10, v11, v12, v13);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = partsCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v36, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        v25 = objc_msgSend___im_insertionIndexForMessagePartBody_(v15, v19, v24, v20);
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = IMLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = dCopy;
            _os_log_error_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_ERROR, "Recently Deleted | Cannot recover: message part number already exists. Not inserting into main message body for messageGUID: %@", buf, 0xCu);
          }
        }

        else
        {
          objc_msgSend_insertAttributedString_atIndex_(v15, v26, v24, v25);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v30, v36, 16);
    }

    while (v21);
  }

  return v15;
}

- (void)_updateMessageRecordForGUID:(id)d withAttributedBody:(id)body dateRecovered:(id)recovered operation:(IMDSqlOperation *)operation
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  recoveredCopy = recovered;
  bodyCopy = body;
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(v34[0]) = 138412290;
    *(v34 + 4) = dCopy;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Writing restored part to message GUID: %@", v34, 0xCu);
  }

  v14 = JWEncodeCodableObject();
  _IMDSqlOperationBeginQuery(operation, @"UPDATE message SET attributedBody = ?, text = ?, date_recovered = ?, ck_sync_state = 0   WHERE message.guid = ?;");
  IMDSqlStatementBindBlob(&operation->var4, v14);
  v18 = objc_msgSend_string(bodyCopy, v15, v16, v17);

  IMDSqlStatementBindTextFromCFString(&operation->var4, v18);
  if (recoveredCopy)
  {
    v22 = objc_msgSend___im_nanosecondTimeInterval(recoveredCopy, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  IMDSqlStatementBindInt64(&operation->var4, v22);
  IMDSqlStatementBindTextFromCFString(&operation->var4, dCopy);
  if (IMDSqlOperationFinishQuery(operation))
  {
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LODWORD(v34[0]) = 138412290;
      *(v34 + 4) = dCopy;
      _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Recently Deleted | updated attributedbody for messageGUID: %@", v34, 0xCu);
    }

    v24 = *&operation->var4.var7.var4;
    v34[8] = *&operation->var4.var7.var2;
    v34[9] = v24;
    v34[10] = *&operation->var4.var7.var6;
    v25 = *&operation->var4.var7.var0.var0;
    v34[4] = *&operation->var4.var4;
    v34[5] = v25;
    v26 = *&operation->var4.var7.var0.var4;
    v34[6] = *&operation->var4.var7.var0.var2;
    v34[7] = v26;
    v27 = *&operation->var2;
    v34[0] = *&operation->var0;
    v34[1] = v27;
    v28 = *&operation->var4.var2;
    v34[2] = *&operation->var4.var0;
    v34[3] = v28;
    objc_msgSend__removeFromRecoverableMessagePartForMessageGUID_operation_(self, v29, dCopy, v34);
    IMDCoreSpotlightAddMessageGUID(dCopy, 1005);
  }

  else
  {
    v30 = operation->var5;
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7B68(dCopy, v30, v31, v32);
    }
  }

  v33 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    LODWORD(v34[0]) = 138412290;
    *(v34 + 4) = dCopy;
    _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished writing restored part to message GUID: %@", v34, 0xCu);
  }
}

- (void)_removeFromRecoverableMessagePartForMessageGUID:(id)d operation:(IMDSqlOperation *)operation
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = dCopy;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Removing recoverable message parts for message GUID: %@", &v16, 0xCu);
  }

  _IMDSqlOperationBeginQuery(operation, @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, rmp.part_index  FROM recoverable_message_part AS rmp  JOIN chat AS c   ON c.ROWID=rmp.chat_id  JOIN message AS m   ON m.ROWID=rmp.message_id AND m.guid=? AND rmp.ck_sync_state=1;");
  IMDSqlStatementBindTextFromCFString(&operation->var4, dCopy);
  if (!IMDSqlOperationFinishQuery(operation))
  {
    v7 = operation->var5;
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7C04(v7, v8, v9, v10);
    }
  }

  _IMDSqlOperationBeginQuery(operation, @"DELETE FROM recoverable_message_part WHERE message_id IN( SELECT ROWID  FROM message AS m  WHERE m.guid = ?);");
  IMDSqlStatementBindTextFromCFString(&operation->var4, dCopy);
  if (!IMDSqlOperationFinishQuery(operation))
  {
    v11 = operation->var5;
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7C90(v11, v12, v13, v14);
    }
  }

  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = dCopy;
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished removing recoverable message parts for message GUID: %@", &v16, 0xCu);
  }
}

- (id)_loadAttributedBodyTextForMessageWithGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Loading attributed message body for message GUID: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1A14;
  v17 = sub_1B7AE2520;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B7E4D8;
  v9[3] = &unk_1E7CBADE0;
  v5 = dCopy;
  v10 = v5;
  p_buf = &buf;
  IMDRunSqlOperation(v9);
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished loading attributed message body for message GUID: %@", v12, 0xCu);
  }

  v7 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v7;
}

- (id)_loadRecoverableMessagePartsMetadataForChatGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Loading message parts metadata for chat GUID: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1A14;
  v17 = sub_1B7AE2520;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B7EBC8;
  v9[3] = &unk_1E7CBADE0;
  v5 = dCopy;
  v10 = v5;
  p_buf = &buf;
  IMDRunSqlOperation(v9);
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished loading message parts metadata for chat GUID: %@", v12, 0xCu);
  }

  v7 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v7;
}

- (id)_chatGUIDsForChatsWithRecoverableMessagesOlderThanDate:(id)date operation:(IMDSqlOperation *)operation
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  operationCopy = operation;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_1B7B7F518;
  v28 = &unk_1E7CB8680;
  v29 = dateCopy;
  operationCopy2 = operation;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1B7B7F554;
  v22 = &unk_1E7CB8680;
  v7 = v6;
  v23 = v7;
  v8 = dateCopy;
  _IMDSqlOperationRunQuery(operation, @"SELECT c.guid FROM chat_recoverable_message_join AS crmj JOIN message AS m ON m.ROWID = crmj.message_id  JOIN chat AS c ON c.ROWID = crmj.chat_id WHERE(  crmj.delete_date < ?  AND   NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join))) ) GROUP BY    c.guid  ", &v25, &v19);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_count(v7, v10, v11, v12, v19, v20, v21, v22, v23, operationCopy, v25, v26, v27, v28, v29, operationCopy2);
    *buf = 134217984;
    v32 = v13;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Found %llu chats affected by message deletion", buf, 0xCu);
  }

  v17 = objc_msgSend_copy(v7, v14, v15, v16);

  return v17;
}

- (id)_chatGUIDsForChatsWithJunkMessagesOlderThanDate:(id)date operation:(IMDSqlOperation *)operation
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  operationCopy = operation;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_1B7B7F900;
  v28 = &unk_1E7CB8680;
  v29 = dateCopy;
  operationCopy2 = operation;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1B7B7F93C;
  v22 = &unk_1E7CB8680;
  v7 = v6;
  v23 = v7;
  v8 = dateCopy;
  _IMDSqlOperationRunQuery(operation, @"SELECT c.guid FROM chat_message_join AS cmj JOIN message AS m ON m.ROWID = cmj.message_id  JOIN chat AS c ON c.ROWID = cmj.chat_id WHERE(  m.date < ?  AND   c.is_filtered = 2) GROUP BY    c.guid  ", &v25, &v19);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_count(v7, v10, v11, v12, v19, v20, v21, v22, v23, operationCopy, v25, v26, v27, v28, v29, operationCopy2);
    *buf = 134217984;
    v32 = v13;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Found %llu chats affected by message deletion", buf, 0xCu);
  }

  v17 = objc_msgSend_copy(v7, v14, v15, v16);

  return v17;
}

- (id)_deleteChatIfEmptyWithGUID:(id)d lastMessageDate:(id)date operation:(IMDSqlOperation *)operation
{
  v110 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  isRecoverable_operation = objc_msgSend__countMessagesExcludingGroupPhotosInChatWithGUID_isRecoverable_operation_(self, v10, dCopy, 0, operation);
  v13 = objc_msgSend__countMessagesExcludingGroupPhotosInChatWithGUID_isRecoverable_operation_(self, v12, dCopy, 1, operation);
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v104 = 138412802;
    v105 = dCopy;
    v106 = 2048;
    v107 = isRecoverable_operation;
    v108 = 2048;
    v109 = v13;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Chat with guid %@ has %lld messages and %lld recoverable messages", &v104, 0x20u);
  }

  v15 = 0;
  if (isRecoverable_operation <= 0 && v13 <= 0)
  {
    v16 = IMDChatRecordCopyChatForGUID(dCopy);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = objc_msgSend_guid(v16, v18, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v22, v21, *MEMORY[0x1E69A6B70]);

    v26 = objc_msgSend_chatIdentifier(v16, v23, v24, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v27, v26, *MEMORY[0x1E69A6B18]);

    v31 = objc_msgSend_serviceName(v16, v28, v29, v30);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v32, v31, *MEMORY[0x1E69A6C98]);

    v33 = MEMORY[0x1E696AD98];
    v37 = objc_msgSend_style(v16, v34, v35, v36);
    v40 = objc_msgSend_numberWithUnsignedChar_(v33, v38, v37, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v41, v40, *MEMORY[0x1E69A6CA8]);

    v45 = objc_msgSend_groupID(v16, v42, v43, v44);

    if (v45)
    {
      v49 = objc_msgSend_groupID(v16, v46, v47, v48);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v50, v49, *MEMORY[0x1E69A6B78]);
    }

    v51 = objc_msgSend_originalGroupID(v16, v46, v47, v48);

    if (v51)
    {
      v55 = objc_msgSend_originalGroupID(v16, v52, v53, v54);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v56, v55, *MEMORY[0x1E69A6C50]);
    }

    v57 = objc_msgSend_accountID(v16, v52, v53, v54);

    if (v57)
    {
      v61 = objc_msgSend_accountID(v16, v58, v59, v60);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v62, v61, *MEMORY[0x1E69A6AF0]);
    }

    v63 = objc_msgSend_properties(v16, v58, v59, v60);

    if (v63)
    {
      v67 = objc_msgSend_properties(v16, v64, v65, v66);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v68, v67, *MEMORY[0x1E69A6C70]);
    }

    v69 = objc_msgSend_lastAddressedHandle(v16, v64, v65, v66);

    if (v69)
    {
      v73 = objc_msgSend_lastAddressedHandle(v16, v70, v71, v72);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v74, v73, *MEMORY[0x1E69A6BF0]);
    }

    v75 = objc_msgSend_lastAddressedSIMID(v16, v70, v71, v72);

    if (v75)
    {
      v79 = objc_msgSend_lastAddressedSIMID(v16, v76, v77, v78);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v80, v79, *MEMORY[0x1E69A6BF8]);
    }

    v81 = IMGetCachedDomainBoolForKey();
    v82 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = @"NO";
      if (v81)
      {
        v83 = @"YES";
      }

      v104 = 138412546;
      v105 = dCopy;
      v106 = 2112;
      v107 = v83;
      _os_log_impl(&dword_1B7AD5000, v82, OS_LOG_TYPE_DEFAULT, "Deleting empty chat %@, cloud sync enabled is %@", &v104, 0x16u);
    }

    if (v81)
    {
      v87 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v84, v85, v86);
      isOneChatEnabled = objc_msgSend_isOneChatEnabled(v87, v88, v89, v90);

      if (isOneChatEnabled)
      {
        objc_msgSend__insertServiceBasedSyncDeletedChatRecordsForChatWithGUID_lastMessageDate_(self, v92, dCopy, dateCopy);
      }

      else
      {
        v95 = objc_msgSend_cloudRecordID(v16, v92, v93, v94);
        v99 = objc_msgSend___im_nanosecondTimeInterval(dateCopy, v96, v97, v98);
        IMDChatInsertIntoDeletedChatsTable(dCopy, v95, v99);
      }
    }

    IMDChatRecordDeleteChatForGUID(dCopy);
    v15 = objc_msgSend_copy(v17, v100, v101, v102);
  }

  return v15;
}

- (void)_insertServiceBasedSyncDeletedChatRecordsForChatWithGUID:(id)d lastMessageDate:(id)date
{
  v57 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1B7AE1A14;
  v54 = sub_1B7AE2520;
  v55 = 0;
  v9 = objc_msgSend_synchronousDatabase(IMDDatabase, v6, v7, v8);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1B7B80368;
  v49[3] = &unk_1E7CBAE30;
  v49[4] = &v50;
  objc_msgSend_fetchSyncChatSlicesForChatWithGUID_completionHandler_(v9, v10, dCopy, v49);

  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = v51[5];
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v45, v56, 16);
  if (v13)
  {
    v14 = *v46;
    do
    {
      v15 = 0;
      do
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        v44 = 0;
        v43 = 0;
        IMComponentsFromChatGUID();
        v17 = 0;
        v21 = objc_msgSend_serviceName(v16, v18, v19, v20);
        v22 = IMCopyGUIDForChat();

        if (v22)
        {
          v23 = [IMDSyncDeletedChatRecord alloc];
          v27 = objc_msgSend_ckRecordID(v16, v24, v25, v26);
          v29 = objc_msgSend_initWithGUID_ckRecordID_date_(v23, v28, v22, v27, dateCopy);

          objc_msgSend_addObject_(v40, v30, v29, v31);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v32, &v45, v56, 16);
    }

    while (v13);
  }

  v36 = objc_msgSend_synchronousDatabase(IMDDatabase, v33, v34, v35);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1B7B803B0;
  v41[3] = &unk_1E7CB6C58;
  v37 = dCopy;
  v42 = v37;
  objc_msgSend_addSyncDeletedChatRecords_completionHandler_(v36, v38, v40, v41);

  _Block_object_dispose(&v50, 8);
}

- (void)_deleteTransfersInMessagePartsForChatGUID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend__loadRecoverableMessagePartsMetadataForChatGUID_(self, v5, dCopy, v6);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, &unk_1F2FA0C90, v9);
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Parts: Finished deleting recoverable message parts transfers for chatGUID: %@", &v11, 0xCu);
  }
}

- (id)_updateChatsSyncStateQueryFor:(int64_t)for
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, for, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@ (%@)", v7, @"UPDATE chat SET ck_sync_state = ? where guid in ", v5);

  return v8;
}

- (void)updateChatsSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  IMDSqlOperationInitWithSharedCSDBDatabase(v25);
  IMDSqlOperationBeginTransaction(v25);
  v10 = objc_msgSend_count(dsCopy, v7, v8, v9);
  updated = objc_msgSend__updateChatsSyncStateQueryFor_(self, v11, v10, v12);
  _IMDSqlOperationBeginQuery(v25, updated);
  IMDSqlStatementBindInt64(v26, to);
  v14 = dsCopy;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v26, v14);
  if (IMDSqlOperationFinishQuery(v25))
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "CloudSync | updated ck_sync_state for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = *(&v27 + 1);
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7D70(v14, v15, v16, v17);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v25);
  v24 = 0;
  v18 = IMDSqlOperationRelease(v25, &v24);
  v19 = v24;
  if (v18)
  {
    v20 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "CloudSync.chat | Update status Query success for: %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7E0C(v19, v20, v21, v22);
    }
  }

  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v14;
    _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "CloudSync.chat | Finished updating ck_sync_state for recordIDs %@", buf, 0xCu);
  }
}

- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)limit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1B7AE1A14;
  v10 = sub_1B7AE2520;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B80BE4;
  v5[3] = &unk_1E7CBAEA0;
  v5[5] = &v6;
  v5[6] = limit;
  v5[4] = self;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages    FROM chat c   WHERE style = 43   AND (SELECT count(*) FROM chat cdupe WHERE cdupe.group_id = c.group_id AND cdupe.service_name = c.service_name) > 1   LIMIT ?", v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)fetchMessageRowIDsForGUIDs:(id)ds completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7C14D64;
  v7[4] = v6;
  v11[4] = sub_1B7C14DAC;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA3138;
  v8 = _Block_copy(v11);

  IMDPersistencePerformBlock(v8, 1, v9, v10);

  _Block_release(v8);
}

- (void)clearExpiredTimeSensitiveMessagesWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B7C14DEC;
  *(v5 + 24) = v4;
  v9[4] = sub_1B7C14D5C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B7AE14D0;
  v9[3] = &unk_1F2FA30C0;
  v6 = _Block_copy(v9);

  IMDPersistencePerformBlock(v6, 1, v7, v8);

  _Block_release(v6);
}

- (void)reparentableMessagesStartingAtRowID:(int64_t)d limit:(int64_t)limit completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (d < 0)
  {
    selfCopy = self;
    _Block_copy(v8);
    v16 = sub_1B7CFECC0();
    (*(v8 + 2))(v8, v16, -1, 0);
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = d;
    v10[3] = limit;
    v10[4] = sub_1B7C14D20;
    v10[5] = v9;
    v17[4] = sub_1B7C14D28;
    v17[5] = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B7AE14D0;
    v17[3] = &unk_1F2F9F6E0;
    v11 = _Block_copy(v17);
    selfCopy2 = self;
    _Block_copy(v8);

    IMDPersistencePerformBlock(v11, 1, v13, v14);
    _Block_release(v11);
  }

  _Block_release(v8);
}

- (void)reparentMessagesUsingChatIDWithGUIDs:(id)ds completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7C14CB4;
  v7[4] = v6;
  v11[4] = sub_1B7C14D14;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA2F30;
  v8 = _Block_copy(v11);

  IMDPersistencePerformBlock(v8, 1, v9, v10);

  _Block_release(v8);
}

- (void)reassignIdentifierForMessageWithGUID:(id)d newGUID:(id)iD completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = sub_1B7CFEA60();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_1B7C14A9C(v7, v9, v10, v12, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)isRecoverablyDeletedMessageGUID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7C21F8C;
  v9[5] = v8;
  v13[4] = sub_1B7C21F94;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2F9F7F8;
  v10 = _Block_copy(v13);

  IMDPersistencePerformBlock(v10, 1, v11, v12);

  _Block_release(v10);
}

- (void)fetchMetadataForSyndicationIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1B7CFECE0();
  _Block_copy(v5);
  selfCopy = self;
  sub_1B7C8C278(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)copyAllChatsWithUnreadMessagesWithLimit:(int64_t)limit beforeDate:(id)date predicate:(id)predicate completionHandler:(id)handler
{
  v10 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = aBlock - v15;
  v17 = _Block_copy(handler);
  if (date)
  {
    sub_1B7CFE0F0();
    v18 = sub_1B7CFE120();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = sub_1B7CFE120();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1B7C108AC(v16, v13);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v22[2] = sub_1B7CBCC3C;
  v22[3] = v20;
  v22[4] = limit;
  sub_1B7CBCC44(v13, v22 + v21);
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = predicate;
  aBlock[4] = sub_1B7CBCCB4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA7CA0;
  v23 = _Block_copy(aBlock);
  predicateCopy = predicate;

  IMDPersistencePerformBlockWithHandoffIfNeeded(v23, 0, v25, v26);
  _Block_release(v23);

  sub_1B7C10844(v16);
}

- (void)assignDomainIdentifiers:(id)identifiers toChatRecordWithGUID:(id)d completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  v7 = sub_1B7CFE990();
  v8 = sub_1B7CFEA60();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = self;
  v12[4] = v8;
  v12[5] = v10;
  v12[6] = sub_1B7CBCBB4;
  v12[7] = v11;
  v17[4] = sub_1B7CBCC0C;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B7AE14D0;
  v17[3] = &unk_1F2FA7C28;
  v13 = _Block_copy(v17);
  selfCopy = self;

  IMDPersistencePerformBlock(v13, 1, v15, v16);

  _Block_release(v13);
}

- (void)assignIdentifier:(id)identifier toChatRecordWithGUID:(id)d forDomain:(id)domain priority:(int64_t)priority completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_1B7CFEA60();
  v12 = v11;
  v13 = sub_1B7CFEA60();
  v15 = v14;
  v16 = sub_1B7CFEA60();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  v20 = swift_allocObject();
  v20[2] = self;
  v20[3] = v10;
  v20[4] = v12;
  v20[5] = v13;
  v20[6] = v15;
  v20[7] = v16;
  v20[8] = v18;
  v20[9] = priority;
  v20[10] = sub_1B7C14DEC;
  v20[11] = v19;
  v25[4] = sub_1B7CBCB7C;
  v25[5] = v20;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1B7AE14D0;
  v25[3] = &unk_1F2FA7BB0;
  v21 = _Block_copy(v25);
  selfCopy = self;

  IMDPersistencePerformBlock(v21, 1, v23, v24);

  _Block_release(v21);
}

- (void)unassignIdentifier:(id)identifier fromChatRecordWithGUID:(id)d forDomain:(id)domain completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = sub_1B7CFEA60();
  v12 = v11;
  v13 = sub_1B7CFEA60();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v9;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = v10;
  v17[7] = v12;
  v17[8] = sub_1B7C14DEC;
  v17[9] = v16;
  v21[4] = sub_1B7CBCB68;
  v21[5] = v17;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1B7AE14D0;
  v21[3] = &unk_1F2FA7B38;
  v18 = _Block_copy(v21);

  IMDPersistencePerformBlock(v18, 1, v19, v20);

  _Block_release(v18);
}

- (void)fetchIdentifiersForChatRecordWithGUID:(id)d domain:(id)domain completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1B7CFEA60();
  v8 = v7;
  v9 = sub_1B7CFEA60();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = sub_1B7CBCD90;
  v13[7] = v12;
  v17[4] = sub_1B7CBCB10;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B7AE14D0;
  v17[3] = &unk_1F2FA7A48;
  v14 = _Block_copy(v17);

  IMDPersistencePerformBlock(v14, 1, v15, v16);

  _Block_release(v14);
}

- (void)fetchSyncChatSliceForChatWithGUID:(id)d serviceName:(id)name completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1B7CFEA60();
  v8 = v7;
  v9 = sub_1B7CFEA60();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = sub_1B7C542DC;
  v13[7] = v12;
  v17[4] = sub_1B7CBCAB0;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B7AE14D0;
  v17[3] = &unk_1F2FA79D0;
  v14 = _Block_copy(v17);

  IMDPersistencePerformBlock(v14, 1, v15, v16);

  _Block_release(v14);
}

- (void)fetchSyncChatSlicesForChatWithGUID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7CBCA9C;
  v9[5] = v8;
  v13[4] = sub_1B7CBCAA4;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA7958;
  v10 = _Block_copy(v13);

  IMDPersistencePerformBlock(v10, 1, v11, v12);

  _Block_release(v10);
}

- (void)addSyncChatSlices:(id)slices forChatWithGUID:(id)d completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  type metadata accessor for IMDSyncChatSliceRecord(0);
  v6 = sub_1B7CFECE0();
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = sub_1B7C14DEC;
  v11[6] = v10;
  v15[4] = sub_1B7CBCA8C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B7AE14D0;
  v15[3] = &unk_1F2FA78E0;
  v12 = _Block_copy(v15);

  IMDPersistencePerformBlock(v12, 1, v13, v14);

  _Block_release(v12);
}

- (void)updateServicesForChatWithGUID:(id)d services:(id)services completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = sub_1B7CFECE0();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = self;
  v12[4] = v7;
  v12[5] = v9;
  v12[6] = sub_1B7C14DEC;
  v12[7] = v11;
  v17[4] = sub_1B7CBCA74;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B7AE14D0;
  v17[3] = &unk_1F2FA7868;
  v13 = _Block_copy(v17);
  selfCopy = self;

  IMDPersistencePerformBlock(v13, 1, v15, v16);

  _Block_release(v13);
}

- (void)addSyncDeletedChatRecords:(id)records completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  type metadata accessor for IMDSyncDeletedChatRecord(0);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7C14DEC;
  v7[4] = v6;
  v11[4] = sub_1B7CBCA68;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA7778;
  v8 = _Block_copy(v11);

  IMDPersistencePerformBlock(v8, 1, v9, v10);

  _Block_release(v8);
}

- (void)resolveSpotlightItemIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7CBCA54;
  v7[4] = v6;
  v11[4] = sub_1B7CBCA5C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B7AE14D0;
  v11[3] = &unk_1F2FA7700;
  v8 = _Block_copy(v11);

  IMDPersistencePerformBlock(v8, 1, v9, v10);

  _Block_release(v8);
}

- (void)copyChatsFromSortedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1B7CFECE0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = self;
  v8[4] = sub_1B7CBCD8C;
  v8[5] = v7;
  v13[4] = sub_1B7CBC9E0;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B7AE14D0;
  v13[3] = &unk_1F2FA7610;
  v9 = _Block_copy(v13);
  selfCopy = self;

  IMDPersistencePerformBlock(v9, 1, v11, v12);

  _Block_release(v9);
}

- (void)copyChatsWithGroupedHandles:(id)handles style:(int64_t)style displayName:(id)name completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  v9 = sub_1B7CFECE0();
  if (name)
  {
    v10 = sub_1B7CFEA60();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = style;
  v14[6] = sub_1B7CBBDF0;
  v14[7] = v13;
  v18[4] = sub_1B7CBBDF8;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B7AE14D0;
  v18[3] = &unk_1F2F9F988;
  v15 = _Block_copy(v18);

  IMDPersistencePerformBlock(v15, 1, v16, v17);

  _Block_release(v15);
}

- (BOOL)_shouldDisplayGroupNameAndPhotoWithRecord:(id)record
{
  sub_1B7CFE300();
  recordCopy = record;
  [recordCopy isFiltered];
  handleRecords = [recordCopy handleRecords];
  sub_1B7AEE088(0, &qword_1EBA53638, off_1E7CB50B0);
  sub_1B7CFECE0();

  v6 = sub_1B7CFE2F0();

  return v6 & 1;
}

- (void)splitMergedChatsInDatabaseAtPath:(id)path completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1B7CFEA60();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1B7CD66B0(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end