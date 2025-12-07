@interface IMDMessageStore
+ (BOOL)_updateCacheForMessageGUID:(id)d fromMessage:(id)message toMessage:(id)toMessage updateLastMessage:(BOOL)lastMessage calculateUnreadCount:(BOOL)count;
+ (IMDMessageStore)sharedInstance;
+ (id)_missingMessageReadReceiptCache;
+ (void)_displayDatabaseFullAlert;
+ (void)databaseFull;
+ (void)databaseNoLongerFull;
- (BOOL)_checkIfRecord:(id)record hasBadChatIDForMessageGUID:(id)d;
- (BOOL)_hasMessagesWithGUIDs:(id)ds;
- (BOOL)_isUnreadLoggingRateLimited;
- (BOOL)_isValidPhoneNumber:(id)number forCountryCode:(id)code;
- (BOOL)_itemClassShouldUpdateTransferForItem:(id)item;
- (BOOL)_preflightLogAllUnreadMessages;
- (BOOL)_shouldBroadcastDeltas;
- (BOOL)_shouldMarkAllMessagesAsNeedingSync;
- (BOOL)_shouldSendBackwardsCompatibleUnreadCountUpdates;
- (BOOL)canStoreItem:(id)item onService:(id)service;
- (BOOL)canStoreMessage:(id)message onService:(id)service;
- (BOOL)hasScheduledMessageForChatGUID:(id)d;
- (BOOL)hasStoredMessageWithGUID:(id)d;
- (BOOL)isAttachmentReferencedByMessage:(id)message;
- (BOOL)markMessageGUIDUnread:(id)unread;
- (BOOL)popReadReceiptForMissingGUID:(id)d;
- (BOOL)updateSyndicatedMessageWithMessageItem:(id)item newRange:(id)range;
- (BOOL)wasMessageDeduplicatedWithGUID:(id)d;
- (CKRecordZoneID)recordZoneID;
- (IMDMessageStore)init;
- (IMUnreadCountReportDelta)unreadCountReportDeltaForSetupInfo;
- (id)_cachedUnreadCountReports;
- (id)_chatsForMessageGUID:(id)d enableVerboseLogging:(BOOL)logging;
- (id)_chatsForMessageIdentifier:(int64_t)identifier;
- (id)_fileTransferGUIDsInMessageBody:(id)body;
- (id)_handleIDsForChat:(id)chat;
- (id)_handleStringsForChat:(id)chat;
- (id)_itemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order;
- (id)_itemsWithAssociatedGUID:(id)d shouldLoadAttachments:(BOOL)attachments;
- (id)_itemsWithGUIDs:(id)ds;
- (id)_itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages;
- (id)_itemsWithHandlesBeforeAndAfterGUID:(id)d handles:(id)handles onServices:(id)services numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0;
- (id)_itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages;
- (id)_logAllUnreadMessages;
- (id)_messageItemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order;
- (id)_messagesPendingUpdateT1ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_messagesPendingUpdateT2ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_messagesPendingUpdateT3ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_messagesThatNeedSyncWithCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)_unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)_updateAssociatedMessageItemsFromMessage:(id)message toMessage:(id)toMessage;
- (id)addEditHistoryToMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage;
- (id)attachmentsWithHandles:(id)handles onServices:(id)services;
- (id)attachmentsWithRoomNames:(id)names onServices:(id)services;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error;
- (id)chatForMessage:(id)message;
- (id)chatForMessageGUID:(id)d enableVerboseLogging:(BOOL)logging;
- (id)chatForMessageIdentifier:(int64_t)identifier;
- (id)chatsForMessage:(id)message;
- (id)cleanUnformattedPhoneNumber:(id)number countryCode:(id)code;
- (id)deleteMessageGUIDs:(id)ds;
- (id)deleteMessageGUIDs:(id)ds inChat:(id)chat;
- (id)deleteMessagesWithChatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services completion:(id)completion;
- (id)deleteMessagesWithReplaceMessageID:(int)d fromHandle:(id)handle onService:(id)service;
- (id)existingChatForMessageGUID:(id)d;
- (id)existingMessageSimilarToMessage:(id)message skipServices:(id)services skipGUIDs:(id)ds withinTimeInterval:(double)interval participants:(id)participants;
- (id)existingSOSMessageSimilarToMessage:(id)message matchingService:(id)service withinTimeInterval:(double)interval;
- (id)frequentRepliesForForChatIdentifiers:(id)identifiers onServices:(id)services limit:(unint64_t)limit;
- (id)itemWithGUID:(id)d;
- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0;
- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit;
- (id)itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit;
- (id)lastIncomingMessageForChatWithIdentifier:(id)identifier chatStyle:(unsigned __int8)style onService:(id)service;
- (id)lastMessageForChatWithRowID:(int64_t)d;
- (id)lastMessageWithHandles:(id)handles onServices:(id)services;
- (id)lastMessageWithRoomNames:(id)names onServices:(id)services;
- (id)lastTUConversationItemForChat:(id)chat;
- (id)markMessagesAsReadWithChatGUIDs:(id)ds upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me;
- (id)markMessagesAsReadWithIdentifiers:(id)identifiers onServices:(id)services chatStyle:(unsigned __int8)style upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me;
- (id)messageActionItemsForOriginalMessageGUID:(id)d;
- (id)messageForAttachmentGUID:(id)d;
- (id)messageHistorySummaryForDateInterval:(id)interval chatIdentifiers:(id)identifiers chatStyle:(unsigned __int8)style services:(id)services;
- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit;
- (id)messageWithGUID:(id)d registerAttachments:(BOOL)attachments;
- (id)messageWithReplaceMessageID:(int)d fromHandle:(id)handle onService:(id)service;
- (id)messagesInChat:(id)chat earliestDate:(id)date limit:(unint64_t)limit;
- (id)messagesWithAssociatedGUID:(id)d shouldLoadAttachments:(BOOL)attachments;
- (id)messagesWithGUIDs:(id)ds;
- (id)messagesWithReplyToGUID:(id)d;
- (id)notificationContext;
- (id)oldestMessageDateForChatIdentifiers:(id)identifiers chatStyle:(unsigned __int8)style services:(id)services;
- (id)reassignIdentifierForExistingMessageWithGUID:(id)d toNewGUID:(id)iD;
- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)limit;
- (id)recordZoneIDForFilter:(unint64_t)filter;
- (id)replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender;
- (id)replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender;
- (id)scheduledMessagesBatchFetcherForChat:(id)chat;
- (id)scheduledMessagesBatchFetcherForSyncState:(int64_t)state;
- (id)sortedMessageItemsWithFallbackHash:(id)hash inChat:(id)chat limit:(unint64_t)limit;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)storeEditedMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items;
- (id)storeEditedMessage:(id)message editedPartIndexes:(id)indexes editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items;
- (id)storeItem:(id)item forceReplace:(BOOL)replace;
- (id)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block;
- (id)storeMessage:(id)message forceReplace:(BOOL)replace modifyError:(BOOL)error modifyFlags:(BOOL)flags flagMask:(unint64_t)mask updateMessageCache:(BOOL)cache calculateUnreadCount:(BOOL)count reindexMessage:(BOOL)self0;
- (id)storeMessage:(id)message forceReplace:(BOOL)replace modifyError:(BOOL)error modifyFlags:(BOOL)flags flagMask:(unint64_t)mask updateMessageCache:(BOOL)cache calculateUnreadCount:(BOOL)count reindexMessage:(BOOL)self0 isCloudImport:(BOOL)self1;
- (id)storeMessage:(id)message forceReplace:(BOOL)replace modifyError:(BOOL)error modifyFlags:(BOOL)flags flagMask:(unint64_t)mask updateMessageCache:(BOOL)cache calculateUnreadCount:(BOOL)count reindexMessage:(BOOL)self0 isCloudImport:(BOOL)self1 isIncomingMessage:(BOOL)self2 didReplaceBlock:(id)self3;
- (id)storeRepositionedStickerLocally:(id)locally;
- (id)storeRepositionedStickerWithMetadata:(id)metadata fileTransferGUID:(id)d repositioningFromLocalChange:(BOOL)change;
- (id)syncTokenStore;
- (id)unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)updateSyndicatedMessageWithMessageGUID:(id)d newRange:(id)range;
- (id)updateSyndicatedMessageWithSyndicationMessageAction:(id)action;
- (id)updatedMessagesForMessages:(id)messages;
- (int64_t)_calculateUnreadMessagesCountFilteredByFocus:(BOOL)focus filteredByAssistiveAccess:(BOOL)access;
- (int64_t)lastFailedMessageDate;
- (int64_t)unreadMessagesCount;
- (void)__postDBUpdate;
- (void)_clearExpiredTimeSensitiveMessages;
- (void)_deleteMessagesWithGUIDs:(id)ds chatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services batchNumber:(unint64_t)number completion:(id)completion;
- (void)_expiredTimeSensitiveMessagesDetected:(id)detected;
- (void)_fixupStoringMessageIfNecessaryWithMessage:(id)message;
- (void)_hasMarkedAllMessagesAsNeedingSync;
- (void)_needsToMarkAllMessagesAsNeedingSync;
- (void)_notifyWidgetKitTimeline:(int64_t)timeline;
- (void)_performDeferredUnreadCountRefreshIfNeeded;
- (void)_postDBUpdate;
- (void)_rebuildUnreadMessageCountRefreshingReports:(BOOL)reports guids:(id)guids delta:(id)delta;
- (void)_refreshUnreadCountControllerForGUIDs:(id)ds;
- (void)_registerTransfersWithGUIDs:(id)ds forMessageGUID:(id)d;
- (void)_resetSyncStateForMessageWithGUID:(id)d toState:(int64_t)state;
- (void)_setLastUnreadDumpToNow;
- (void)_storeAttachmentsForMessage:(id)message;
- (void)_suppressDBUpdateTimerFired;
- (void)_unreadCountControllerDidUpdate:(id)update;
- (void)_updateModificationDate;
- (void)_updateStamp;
- (void)addMissingMessageReadReceipt:(id)receipt;
- (void)cleanseAttachments;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)clearMessagesTombStoneTable;
- (void)clearTombstonesForRecordIDs:(id)ds;
- (void)databaseChatSpamUpdated:(id)updated;
- (void)dealloc;
- (void)enumerateMessagesToRelayOnService:(id)service usingBlock:(id)block;
- (void)focusStateDidChange;
- (void)legacyImport:(id)import;
- (void)loadConsumedSessionPayloadsForItems:(id)items;
- (void)markMessageAsDeduplicated:(id)deduplicated;
- (void)performInitialHousekeeping;
- (void)postCountChanges;
- (void)postUrgentNotificationsForMessageGUIDs:(id)ds;
- (void)rebuildLastFailedMessageDate;
- (void)rebuildUnreadMessageCount;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
- (void)registerTransfersForMessage:(id)message;
- (void)resetLocalSyncStateIfAppropriate;
- (void)resolveUnformattedRepresentationsForHandles:(id)handles onService:(id)service message:(id)message completionBlock:(id)block;
- (void)retractPostedNotificationsForMessageGUIDs:(id)ds;
- (void)retractPostedNotificationsForMessagesMatchingChatGUIDs:(id)ds;
- (void)setSuppressDatabaseUpdates:(BOOL)updates;
- (void)signalUnreadChangeForHandle:(id)handle;
- (void)storeTranslation:(id)translation onMessage:(id)message partIndex:(int64_t)index chat:(id)chat;
- (void)updateFileTransfer:(id)transfer;
- (void)updatePostedNotificationsForMessageGUIDs:(id)ds;
- (void)updateStamp;
- (void)updateStampForGUID:(id)d;
- (void)updateStampForGUIDs:(id)ds;
- (void)updateUnformattedID:(id)d forBuddyID:(id)iD onService:(id)service;
@end

@implementation IMDMessageStore

+ (IMDMessageStore)sharedInstance
{
  if (qword_281421158 != -1)
  {
    sub_22B7D5A50();
  }

  v3 = qword_281420FD8;

  return v3;
}

- (int64_t)unreadMessagesCount
{
  v28 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    [(IMDMessageStore *)self _performDeferredUnreadCountRefreshIfNeeded];
    unreadCountController = [(IMDMessageStore *)self unreadCountController];
    unreadCount = [unreadCountController unreadCount];
  }

  else if (self->_cachedUnreadMessageCount)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      cachedUnreadMessageCount = self->_cachedUnreadMessageCount;
      v24 = 138412290;
      v25 = cachedUnreadMessageCount;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Returning _cachedUnreadMessageCount %@", &v24, 0xCu);
    }

    return [(NSNumber *)self->_cachedUnreadMessageCount longLongValue];
  }

  else
  {
    mEMORY[0x277D1A9D0] = [MEMORY[0x277D1A9D0] sharedManager];
    shouldFilterUnreadMessageCount = [mEMORY[0x277D1A9D0] shouldFilterUnreadMessageCount];

    mEMORY[0x277D1A8A0] = [MEMORY[0x277D1A8A0] sharedManager];
    shouldFilterIncomingMessages = [mEMORY[0x277D1A8A0] shouldFilterIncomingMessages];

    v13 = IMOSLoggingEnabled();
    if ((shouldFilterUnreadMessageCount | shouldFilterIncomingMessages))
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (shouldFilterUnreadMessageCount)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          if (shouldFilterIncomingMessages)
          {
            v15 = @"YES";
          }

          v24 = 138412546;
          v25 = v16;
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Calculating unread message count by focus [%@] and/or by assistive access [%@].", &v24, 0x16u);
        }
      }

      v17 = [(IMDMessageStore *)self _calculateUnreadMessagesCountFilteredByFocus:shouldFilterUnreadMessageCount filteredByAssistiveAccess:shouldFilterIncomingMessages & 1];
    }

    else
    {
      if (v13)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Counting all unread messages.", &v24, 2u);
        }
      }

      v17 = IMDMessageRecordCountAllUnreadMessages();
    }

    unreadCount = v17;
    v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v17];
    v20 = self->_cachedUnreadMessageCount;
    self->_cachedUnreadMessageCount = v19;

    v21 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_cachedUnreadMessageCount;
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Computed _cachedUnreadMessageCount %@", &v24, 0xCu);
    }
  }

  return unreadCount;
}

- (void)_performDeferredUnreadCountRefreshIfNeeded
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    if (self->_deferredUnreadCountRefresh)
    {
      [(IMDMessageStore *)self _refreshUnreadCountControllerForGUIDs:0];
      self->_deferredUnreadCountRefresh = 0;
    }
  }
}

- (int64_t)lastFailedMessageDate
{
  cachedLastFailedMessageDate = self->_cachedLastFailedMessageDate;
  if (cachedLastFailedMessageDate)
  {

    return [(NSNumber *)cachedLastFailedMessageDate longLongValue];
  }

  else
  {
    FailedMessageDate = IMDMessageRecordLastFailedMessageDate();
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:FailedMessageDate];
    v7 = self->_cachedLastFailedMessageDate;
    self->_cachedLastFailedMessageDate = v6;

    return FailedMessageDate;
  }
}

- (void)updateStamp
{
  deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [deferredRebuildGUIDs removeAllObjects];

  MEMORY[0x2821F9670](self, sel__updateStamp);
}

- (void)_updateModificationDate
{
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDMessageStore *)self setModificationStamp:stringGUID];

  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Resetting _cachedUnreadMessageCount because _updateModificationDate", v6, 2u);
  }

  cachedUnreadMessageCount = self->_cachedUnreadMessageCount;
  self->_cachedUnreadMessageCount = 0;
}

- (void)_postDBUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel___postDBUpdate object:0];

  [(IMDMessageStore *)self performSelector:sel___postDBUpdate withObject:0 afterDelay:0.2];
}

- (void)rebuildUnreadMessageCount
{
  deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [deferredRebuildGUIDs removeAllObjects];

  [(IMDMessageStore *)self rebuildUnreadMessageCountForGUIDs:0];
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"allUnreadMessages";
  _logAllUnreadMessages = [(IMDMessageStore *)self _logAllUnreadMessages];
  v6[0] = _logAllUnreadMessages;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (BOOL)_isUnreadLoggingRateLimited
{
  _lastUnreadDumpDate = [(IMDMessageStore *)self _lastUnreadDumpDate];
  v3 = _lastUnreadDumpDate;
  if (_lastUnreadDumpDate)
  {
    [_lastUnreadDumpDate timeIntervalSinceNow];
    v5 = fabs(v4) < 3600.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setLastUnreadDumpToNow
{
  date = [MEMORY[0x277CBEAA8] date];
  [(IMDMessageStore *)self _setLastUnreadDumpDate:date];
}

- (BOOL)_preflightLogAllUnreadMessages
{
  if ([(IMDMessageStore *)self _isUnreadLoggingRateLimited])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v5 = "Not logging all unread messages because we have already logged in the past hour.";
        v6 = &v14;
LABEL_20:
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!sub_22B5095C0() || !sub_22B5094BC())
    {
      goto LABEL_17;
    }

    v15 = 0;
    v7 = [sub_22B5094BC() isSysdiagnoseInProgressWithError:&v15];
    v8 = v15;
    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7CFFE4(v8, v9);
      }
    }

    if (v7)
    {
      [(IMDMessageStore *)self _setLastUnreadDumpToNow];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Proceeding with logging all unread messages", v12, 2u);
        }
      }

      LOBYTE(v3) = 1;
    }

    else
    {
LABEL_17:
      v3 = IMOSLoggingEnabled();
      if (v3)
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v5 = "Not logging all unread messages because sysdiagnosed is not running.";
          v6 = buf;
          goto LABEL_20;
        }

LABEL_21:

        LOBYTE(v3) = 0;
      }
    }
  }

  return v3;
}

- (id)_logAllUnreadMessages
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageStore *)self _preflightLogAllUnreadMessages])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_22B4D7620;
    v32 = sub_22B4D7868;
    v33 = 0;
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", *MEMORY[0x277D19848], 2];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B5094AC;
    v27[3] = &unk_2787031A0;
    v27[4] = &v28;
    [synchronousDatabase fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:v3 limit:100 completionHandler:v27];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v29[5];
    v5 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v5)
    {
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          chatRecord = [v8 chatRecord];
          guid = [chatRecord guid];
          v11 = guid;
          if (guid)
          {
            v12 = guid;
          }

          else
          {
            v12 = @"nilChatGUID";
          }

          v13 = v12;

          v14 = [dictionary objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v17 = v16;

          guid2 = [v8 guid];
          v19 = guid2;
          if (guid2)
          {
            v20 = guid2;
          }

          else
          {
            v20 = @"nilMessageGUID";
          }

          [v17 addObject:v20];

          [dictionary setObject:v17 forKey:v13];
        }

        v5 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  return dictionary;
}

- (id)syncTokenStore
{
  if (qword_27D8CFEF0 != -1)
  {
    sub_22B7D44E4();
  }

  v3 = qword_27D8CFEE8;

  return v3;
}

- (CKRecordZoneID)recordZoneID
{
  v2 = +[IMDRecordZoneManager sharedInstance];
  messageRecordZoneID = [v2 messageRecordZoneID];

  return messageRecordZoneID;
}

- (id)recordZoneIDForFilter:(unint64_t)filter
{
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (filter == 4)
  {
    [v4 chatBotMessageRecordZoneID];
  }

  else
  {
    [v4 messageRecordZoneID];
  }
  v6 = ;

  return v6;
}

- (void)resetLocalSyncStateIfAppropriate
{
  if ([(IMDMessageStore *)self _shouldMarkAllMessagesAsNeedingSync])
  {
    [(IMDMessageStore *)self clearLocalSyncState:3];

    [(IMDMessageStore *)self _hasMarkedAllMessagesAsNeedingSync];
  }
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
    syncTokenStore = [(IMDMessageStore *)self syncTokenStore];
    [syncTokenStore persistToken:0 forKey:@"messagesChangeToken"];
  }

  if ((stateCopy & 2) != 0)
  {
    [(IMDMessageStore *)self markAllMessagesAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDMessageStore *)self _needsToMarkAllMessagesAsNeedingSync];
  }
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

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  error = [(IMDMessageStore *)self messagesThatNeedSyncWithCloudKitWithFilter:filter limit:limit, error];
  selfCopy = self;
  v42 = [(IMDMessageStore *)self recordZoneIDForFilter:filter];
  v8 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v8 cachedSalt];

  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = error;
  v9 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v9)
  {
    v43 = *v45;
    *&v10 = 138412290;
    v36 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          if ([v14 isTypingMessage])
          {
            -[IMDMessageStore markMessageAsCleanWithROWID:](selfCopy, "markMessageAsCleanWithROWID:", [v14 messageID]);
            goto LABEL_25;
          }
        }

        v15 = +[IMDChatStore sharedInstance];
        guid = [v12 guid];
        v14 = [v15 chatsGUIDsForMessageWithGUID:guid];

        v17 = +[IMDChatStore sharedInstance];
        __imFirstObject = [v14 __imFirstObject];
        v19 = [v17 chatWithGUID:__imFirstObject];

        service = [v12 service];
        v21 = [v19 cloudKitChatIDForServiceName:service];
        [v12 setCloudKitChatID:v21];

        cloudKitChatID = [v12 cloudKitChatID];
        LODWORD(v21) = cloudKitChatID == 0;

        if (v21 && IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            guid2 = [v12 guid];
            *buf = v36;
            v49 = guid2;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Message %@ is orphaned (parentChatID is nil)", buf, 0xCu);
          }
        }

        v25 = [v12 copyCKRecordRepresentationWithZoneID:v42 salt:cachedSalt];
        v26 = [v25 objectAtIndexedSubscript:0];

        if (!v26)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              guid3 = [v12 guid];
              *buf = v36;
              v49 = guid3;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Cannot generate CKRecord for message %@", buf, 0xCu);
            }
          }

          -[IMDMessageStore markMessageAsCleanWithROWID:](selfCopy, "markMessageAsCleanWithROWID:", [v12 messageID]);
          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          recordName2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.messages.sync" code:0 userInfo:0];
          [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"FailCreateCKRecordForMessage" errorPayload:recordName2 type:@"MiCSync" context:@"Failed to create CKRecord for message"];
          goto LABEL_23;
        }

        recordID = [v26 recordID];
        recordName = [recordID recordName];
        v29 = [v40 containsObject:recordName];

        if ((v29 & 1) == 0)
        {
          guid4 = [v12 guid];
          [v37 setObject:v26 forKey:guid4];

          mEMORY[0x277D1AAA8] = [v26 recordID];
          recordName2 = [mEMORY[0x277D1AAA8] recordName];
          [v40 addObject:recordName2];
LABEL_23:
        }

LABEL_25:
        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v9);
  }

  return v37;
}

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 processMessageUsingCKRecord:recordCopy];
}

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  mEMORY[0x277D1AC70] = [MEMORY[0x277D1AC70] sharedInstance];
  v12 = +[IMDCKUtilities sharedInstance];
  v13 = [v12 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  if (![mEMORY[0x277D1AC70] wasRecordAlreadyChanged:errorCopy])
  {
    v20 = [mEMORY[0x277D1AC70] wasZoneNotFound:errorCopy];
    if (v20)
    {
      v21 = IMDMessageStoreLogHandle(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        recordName = [dCopy recordName];
        *v39 = 138412546;
        *&v39[4] = recordName;
        *&v39[12] = 2112;
        *&v39[14] = iDCopy;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Zone was not found for recordName (%@) with local guid (%@)", v39, 0x16u);
      }

      selfCopy4 = self;
      v24 = iDCopy;
      v25 = 0;
      goto LABEL_22;
    }

    v30 = [mEMORY[0x277D1AC70] wasUnknownItem:errorCopy];
    if (v30)
    {
      v26 = IMDMessageStoreLogHandle(v30);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        selfCopy4 = self;
        v24 = iDCopy;
        v25 = 2;
LABEL_22:
        [(IMDMessageStore *)selfCopy4 _resetSyncStateForMessageWithGUID:v24 toState:v25, *v39, *&v39[8]];
        goto LABEL_23;
      }

      *v39 = 0;
      v31 = "Record had invalid arguments, we'll try this record again on the next sync";
      v32 = v26;
      v33 = 2;
    }

    else
    {
      v34 = [mEMORY[0x277D1AC70] wasRecordArchived:errorCopy];
      if (v34)
      {
        v35 = [(IMDMessageStore *)self _checkIfRecord:v13 hasBadChatIDForMessageGUID:iDCopy];
        v36 = v35;
        v37 = IMDMessageStoreLogHandle(v35);
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v36)
        {
          if (v38)
          {
            *v39 = 0;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_DEFAULT, "Archived Server Record has incorrect parent Chat ID, marking record as needing T3 update", v39, 2u);
          }

          selfCopy4 = self;
          v24 = iDCopy;
          v25 = 9;
        }

        else
        {
          if (v38)
          {
            *v39 = 0;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_DEFAULT, "Record was archived, marking record as synced", v39, 2u);
          }

          selfCopy4 = self;
          v24 = iDCopy;
          v25 = 1;
        }

        goto LABEL_22;
      }

      v26 = IMDMessageStoreLogHandle(v34);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *v39 = 134217984;
      *&v39[4] = [errorCopy code];
      v31 = "Encountered an unknown error.  We'll try syncing this message again on the next sync. Error code: %llu";
      v32 = v26;
      v33 = 12;
    }

    _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, v31, v39, v33);
    goto LABEL_21;
  }

  recordName2 = [dCopy recordName];
  recordID = [v13 recordID];
  recordName3 = [recordID recordName];
  v17 = [recordName2 isEqualToString:recordName3];

  if (!v17)
  {
    v26 = IMDMessageStoreLogHandle(v18);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      recordID2 = [v13 recordID];
      recordName4 = [recordID2 recordName];
      recordName5 = [dCopy recordName];
      *v39 = 138412546;
      *&v39[4] = recordName4;
      *&v39[12] = 2112;
      *&v39[14] = recordName5;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", v39, 0x16u);
    }

    goto LABEL_21;
  }

  v19 = +[IMDChatRegistry sharedInstance];
  [v19 processMessageUsingCKRecord:v13];

LABEL_23:
}

- (BOOL)_checkIfRecord:(id)record hasBadChatIDForMessageGUID:(id)d
{
  recordCopy = record;
  v7 = [(IMDMessageStore *)self chatForMessageGUID:d];
  if (v7)
  {
    v8 = [recordCopy _stringForKey:@"svc"];
    v9 = [v7 cloudKitChatIDForServiceName:v8];
    parentChatIDForMessage = [recordCopy parentChatIDForMessage];
    v11 = parentChatIDForMessage;
    if (v9)
    {
      v12 = [parentChatIDForMessage isEqualToString:v9] ^ 1;

      v11 = v9;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_resetSyncStateForMessageWithGUID:(id)d toState:(int64_t)state
{
  v9 = [(IMDMessageStore *)self itemWithGUID:d];
  [v9 setCloudKitRecordID:0];
  [v9 setCloudKitRecordChangeTag:0];
  [v9 setCloudKitSyncState:state];
  [v9 setCloudKitServerChangeTokenBlob:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    BYTE2(v8) = 1;
    LOWORD(v8) = 0;
    v6 = [IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:updateMessageCache:calculateUnreadCount:reindexMessage:isCloudImport:" forceReplace:v9 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:0x2000 calculateUnreadCount:1 reindexMessage:v8 isCloudImport:?];
  }

  else
  {
    v7 = [(IMDMessageStore *)self storeItem:v9 forceReplace:0];
  }
}

- (void)legacyImport:(id)import
{
  v20 = *MEMORY[0x277D85DE8];
  importCopy = import;
  v5 = [importCopy _stringForKey:@"chatID"];
  if (v5)
  {
    visitedChats = [(IMDMessageStore *)self visitedChats];
    v7 = [visitedChats objectForKey:v5];

    visitedChats2 = [(IMDMessageStore *)self visitedChats];
    v9 = visitedChats2;
    if (v7)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
      [v9 setObject:v10 forKey:v5];
    }

    else
    {
      [visitedChats2 setObject:&unk_283F4E750 forKey:v5];
    }

    visitedChats3 = [(IMDMessageStore *)self visitedChats];
    v13 = [visitedChats3 objectForKey:v5];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 138412546;
        v17 = v5;
        v18 = 1024;
        intValue = [v13 intValue];
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found parentChatID: %@, updatedLastMessageCount: %d", &v16, 0x12u);
      }
    }

    v15 = +[IMDChatRegistry sharedInstance];
    [v15 processMessageUsingCKRecord:importCopy updatedLastMessageCount:{objc_msgSend(v13, "intValue")}];
  }

  else
  {
    v11 = +[IMDChatRegistry sharedInstance];
    [v11 processMessageUsingCKRecord:importCopy];
  }
}

- (IMDMessageStore)init
{
  v30.receiver = self;
  v30.super_class = IMDMessageStore;
  v2 = [(IMDMessageStore *)&v30 init];
  if (v2)
  {
    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] addListener:v2];

    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDMessageStore *)v2 setModificationStamp:stringGUID];

    v2->_suppressedUpdates = 0;
    mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
    if ([(IMDMessageStore *)v2 _isPrimaryMessageStore])
    {
      [(IMDMessageStore *)v2 performInitialHousekeeping];
      mEMORY[0x277D1A9D0] = [MEMORY[0x277D1A9D0] sharedManager];
      [mEMORY[0x277D1A9D0] addDelegate:v2];
    }

    v7 = objc_alloc(MEMORY[0x277D1AC68]);
    v8 = [v7 initWithObject:v2 title:@"IMDChatStore-AllUnreadMessages" queue:MEMORY[0x277D85CD0]];
    [(IMDMessageStore *)v2 setStateCaptureAssistant:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IMDMessageStore *)v2 setVisitedChats:v9];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled && [(IMDMessageStore *)v2 _isPrimaryMessageStore])
    {
      v12 = objc_alloc(MEMORY[0x277D1ACC0]);
      v13 = objc_alloc_init(MEMORY[0x277D1ACC8]);
      v14 = [v12 initWithFilteringController:v13];
      unreadCountController = v2->_unreadCountController;
      v2->_unreadCountController = v14;

      v2->_deferredUnreadCountRefresh = 1;
      v16 = [MEMORY[0x277CBEB58] set];
      deferredRebuildGUIDs = v2->_deferredRebuildGUIDs;
      v2->_deferredRebuildGUIDs = v16;

      objc_initWeak(&location, v2);
      v18 = v2->_unreadCountController;
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = sub_22B5DB030;
      v27 = &unk_278705388;
      objc_copyWeak(&v28, &location);
      [(IMUnreadCountController *)v18 replaceDataExpirationHandler:&v24];
      [(IMUnreadCountController *)v2->_unreadCountController setIsDaemon:1, v24, v25, v26, v27];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v20 = *MEMORY[0x277D1A868];
      unreadCountController = [(IMDMessageStore *)v2 unreadCountController];
      [defaultCenter addObserver:v2 selector:sel__unreadCountControllerDidUpdate_ name:v20 object:unreadCountController];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel__expiredTimeSensitiveMessagesDetected_ name:*MEMORY[0x277D1A860] object:0];

      [MEMORY[0x277D1A9C8] registerForFiltrationSettingChangeNotifications];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (void)performInitialHousekeeping
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Performing initial database housekeeping", buf, 2u);
  }

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v4 = IMIsRunningInUnitTesting();

    if (v4)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Bailing out of initial housekeeping, currently under unit testing", v10, 2u);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_281421260 != -1)
  {
    sub_22B7D5A64();
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "  => Failing all unsent, unfailed messages", v9, 2u);
  }

  IMDMessageRecordMarkFailedAllUnsentUnfailedMessages();
  if (IMDSMSRecordIsFull())
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "  => Database was full, waiting to post", v8, 2u);
    }

    im_dispatch_after();
  }
}

- (void)dealloc
{
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  v4.receiver = self;
  v4.super_class = IMDMessageStore;
  [(IMDMessageStore *)&v4 dealloc];
}

- (void)focusStateDidChange
{
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Focus state changed, rebuilding unread message count", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5DB610;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (BOOL)_updateCacheForMessageGUID:(id)d fromMessage:(id)message toMessage:(id)toMessage updateLastMessage:(BOOL)lastMessage calculateUnreadCount:(BOOL)count
{
  countCopy = count;
  lastMessageCopy = lastMessage;
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  toMessageCopy = toMessage;
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = dCopy;
    v43 = 1024;
    v44 = countCopy;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Updating cache for message guid: %@ calculateUnreadCount %{BOOL}d", buf, 0x12u);
  }

  if (dCopy)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = +[IMDChatRegistry sharedInstance];
    cachedChats = [v15 cachedChats];

    v17 = [cachedChats countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v32 = lastMessageCopy;
      v33 = countCopy;
      v34 = toMessageCopy;
      v35 = messageCopy;
      v19 = *v37;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(cachedChats);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          lastMessage = [v21 lastMessage];
          guid = [lastMessage guid];
          v25 = [guid isEqualToString:dCopy];

          if (v25)
          {
            v27 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "  **** Updating this chat!", buf, 2u);
            }

            toMessageCopy = v34;
            messageCopy = v35;
            if (v32)
            {
              v28 = +[IMDChatRegistry sharedInstance];
              [v28 updateLastMessageForChat:v21 hintMessage:v34];
            }

            v29 = +[IMDChatRegistry sharedInstance];
            LOWORD(v31) = v33;
            v26 = 1;
            [v29 updateStateForChat:v21 fromMessage:v35 toMessage:v34 forcePost:0 hintMessage:0 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:v31 setUnreadCountToZero:?];

            objc_autoreleasePoolPop(v22);
            goto LABEL_20;
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [cachedChats countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v26 = 0;
      toMessageCopy = v34;
      messageCopy = v35;
    }

    else
    {
      v26 = 0;
    }

LABEL_20:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)_storeAttachmentsForMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [messageCopy fileTransferGUIDs];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v7 = *v24;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v4 transferForGUID:{*(*(&v23 + 1) + 8 * v8), v21}];
        if (v9)
        {
          v10 = +[IMDAttachmentStore sharedInstance];
          guid = [messageCopy guid];
          [v10 storeAttachment:v9 associateWithMessageWithGUID:guid];

          if ([v9 isAuxImage])
          {
            v12 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v28 = v9;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Storing Aux image transfer %@", buf, 0xCu);
            }

            v13 = +[IMDFileTransferCenter sharedInstance];
            v14 = MEMORY[0x277D1A9C0];
            guid2 = [v9 guid];
            v16 = [v14 AuxGUIDFromFileTransferGUID:guid2];
            v17 = [v13 transferForGUID:v16];

            if (v17)
            {
              v18 = +[IMDAttachmentStore sharedInstance];
              [v18 storeAttachment:v17 associateWithMessageWithGUID:0];
            }

            else if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                guid3 = [v9 guid];
                *buf = v21;
                v28 = guid3;
                _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "_storeAttachmentsForMessage did not find Aux video transfer %@", buf, 0xCu);
              }
            }
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }
}

- (void)updateFileTransfer:(id)transfer
{
  v15 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  if (transferCopy)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = transferCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Updating transfer: %@", &v13, 0xCu);
    }

    v5 = +[IMDAttachmentStore sharedInstance];
    [v5 storeAttachment:transferCopy associateWithMessageWithGUID:0];

    v6 = +[IMDAttachmentStore sharedInstance];
    guid = [transferCopy guid];
    v8 = [v6 attachmentWithGUID:guid];

    messageGUID = [transferCopy messageGUID];
    [v8 setMessageGUID:messageGUID];

    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Posting resulting transfer to clients; %@", &v13, 0xCu);
    }

    v11 = +[IMDFileTransferCenter sharedInstance];
    guid2 = [v8 guid];
    [v11 addTransfer:v8 forGUID:guid2];
  }
}

- (id)storeItem:(id)item forceReplace:(BOOL)replace
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy)
  {
    v7 = itemCopy;
    v8 = +[IMDServiceController sharedController];
    service = [v7 service];
    v10 = [v8 serviceWithName:service];

    if (v10 && ([v10 supportsDatabase] & 1) == 0)
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v10;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, " => Not storing item, service: %@  does not support a database", &v25, 0xCu);
      }

      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v7;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Not storing: %@", &v25, 0xCu);
      }

      AttachmentIfNeededRef = v7;
    }

    else
    {

      v11 = objc_autoreleasePoolPush();
      IsFull = IMDSMSRecordIsFull();
      guid = [v7 guid];
      v14 = IMSingleObjectArray();
      v15 = [(IMDMessageStore *)self _itemsWithGUIDs:v14];

      if ([v15 count])
      {
        lastObject = [v15 lastObject];
        if (lastObject)
        {
          AttachmentIfNeededRef = IMDUpdateIMItemWithIMItemForceReplace();
        }

        else
        {
          AttachmentIfNeededRef = 0;
        }
      }

      else
      {
        v20 = IMDCreateIMDMessageRecordRefFromIMMessageItem();
        handle = [v7 handle];
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v20, handle, 0, 1);

        if (v20)
        {
          CFRelease(v20);
        }
      }

      v22 = IMDSMSRecordIsFull();

      objc_autoreleasePoolPop(v11);
      v23 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = v7;
        v27 = 2112;
        v28 = AttachmentIfNeededRef;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Stored item to database: %@:%@", &v25, 0x16u);
      }

      [(IMDMessageStore *)self updateStamp];
      sub_22B5DC120(IsFull != 0, v22 != 0);
    }
  }

  else
  {
    AttachmentIfNeededRef = 0;
  }

  return AttachmentIfNeededRef;
}

- (id)updateSyndicatedMessageWithSyndicationMessageAction:(id)action
{
  v16 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (actionCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277D1AA98]) initWithSyndicationAction:actionCopy];
    messagePartGUID = [actionCopy messagePartGUID];
    messageGUID = [messagePartGUID messageGUID];
    v8 = [(IMDMessageStore *)self updateSyndicatedMessageWithMessageGUID:messageGUID newRange:v5];

    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = actionCopy;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated syndication ranges with SyndicationAction %@. newRange: %@", &v12, 0x16u);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = actionCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Did NOT update IMMessageItem's syndication ranges for SyndicationAction %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5AA0();
    }

    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)updateSyndicatedMessageWithMessageGUID:(id)d newRange:(id)range
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  rangeCopy = range;
  if (!dCopy)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5ADC();
    }

    goto LABEL_19;
  }

  v8 = [(IMDMessageStore *)self messageWithGUID:dCopy];
  if (!v8)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Message not found for syndication action for guid: %@", &v17, 0xCu);
      }

      goto LABEL_18;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v9 = [(IMDMessageStore *)self updateSyndicatedMessageWithMessageItem:v8 newRange:rangeCopy];
  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        guid = [v8 guid];
        v17 = 138412546;
        v18 = guid;
        v19 = 2112;
        v20 = rangeCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Did not updated syndication ranges for message item with guid %@. newRange: %@", &v17, 0x16u);
      }

LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      guid2 = [v8 guid];
      v17 = 138412546;
      v18 = guid2;
      v19 = 2112;
      v20 = rangeCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updated syndication ranges for message item with guid %@. newRange: %@", &v17, 0x16u);
    }
  }

  v8 = v8;
  v13 = v8;
LABEL_20:

  return v13;
}

- (BOOL)updateSyndicatedMessageWithMessageItem:(id)item newRange:(id)range
{
  v31[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rangeCopy = range;
  v8 = rangeCopy;
  if (!itemCopy)
  {
    syndicationRanges = IMLogHandleForCategory();
    if (os_log_type_enabled(syndicationRanges, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B54();
    }

    goto LABEL_14;
  }

  if (!rangeCopy)
  {
    syndicationRanges = IMLogHandleForCategory();
    if (os_log_type_enabled(syndicationRanges, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B18();
    }

LABEL_14:
    v18 = 0;
    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      guid = [itemCopy guid];
      *buf = 138412546;
      v26 = guid;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Updating syndication ranges for message item with guid %@. newRange: %@", buf, 0x16u);
    }
  }

  syndicationRanges = [itemCopy syndicationRanges];
  v24 = 0;
  v12 = MEMORY[0x277D1AA98];
  v31[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v14 = [v12 updateMessagesRanges:syndicationRanges withMessagePartSyndicationRanges:v13 didUpdate:&v24];

  if (v24 == 1)
  {
    [itemCopy setSyndicationRanges:v14];
    LOWORD(v23) = 256;
    v15 = [(IMDMessageStore *)self storeMessage:itemCopy forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v23 reindexMessage:?];
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      guid2 = [itemCopy guid];
      *buf = 138412290;
      v26 = guid2;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updated syndication ranges for message: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      guid3 = [itemCopy guid];
      v20 = [v8 description];
      v21 = [syndicationRanges componentsJoinedByString:@", \n"];
      *buf = 138412802;
      v26 = guid3;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Did NOT update syndication ranges for message: %@\nNew Range:\n%@\nOriginal Ranges:\n%@", buf, 0x20u);
    }
  }

  v18 = v24;
LABEL_18:

  return v18 & 1;
}

- (void)_fixupStoringMessageIfNecessaryWithMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy scheduleType] == 2)
  {
    if ([messageCopy errorCode])
    {
      scheduleState = [messageCopy scheduleState];
      if (scheduleState != 4)
      {
        v7 = IMDMessageStoreLogHandle(scheduleState);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D5B90();
        }

        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDMessageStoreDomain" code:objc_msgSend(messageCopy userInfo:{"errorCode"), 0}];
        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"MessageStore attempted to store scheduled message with an invalid scheduleState" errorPayload:v8 type:@"ScheduledMessageFailureStateNotSet" context:0];

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"IMDMessageStore.m" lineNumber:716 description:{@"Scheduled message is marked as a failure, but didn't transition the scheduleState"}];

        [messageCopy setScheduleState:4];
      }
    }
  }
}

- (id)storeMessage:(id)message forceReplace:(BOOL)replace modifyError:(BOOL)error modifyFlags:(BOOL)flags flagMask:(unint64_t)mask updateMessageCache:(BOOL)cache calculateUnreadCount:(BOOL)count reindexMessage:(BOOL)self0
{
  BYTE2(v11) = 0;
  LOWORD(v11) = __PAIR16__(reindexMessage, count);
  return [IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:updateMessageCache:calculateUnreadCount:reindexMessage:isCloudImport:" forceReplace:message modifyError:replace modifyFlags:error flagMask:flags updateMessageCache:mask calculateUnreadCount:cache reindexMessage:v11 isCloudImport:?];
}

- (id)storeMessage:(id)message forceReplace:(BOOL)replace modifyError:(BOOL)error modifyFlags:(BOOL)flags flagMask:(unint64_t)mask updateMessageCache:(BOOL)cache calculateUnreadCount:(BOOL)count reindexMessage:(BOOL)self0 isCloudImport:(BOOL)self1
{
  BYTE3(v12) = 0;
  *(&v12 + 1) = __PAIR16__(import, reindexMessage);
  LOBYTE(v12) = count;
  return [IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:updateMessageCache:calculateUnreadCount:reindexMessage:isCloudImport:isIncomingMessage:didReplaceBlock:" forceReplace:message modifyError:replace modifyFlags:error flagMask:flags updateMessageCache:mask calculateUnreadCount:cache reindexMessage:v12 isCloudImport:0 isIncomingMessage:? didReplaceBlock:?];
}

- (id)storeMessage:(id)message forceReplace:(BOOL)replace modifyError:(BOOL)error modifyFlags:(BOOL)flags flagMask:(unint64_t)mask updateMessageCache:(BOOL)cache calculateUnreadCount:(BOOL)count reindexMessage:(BOOL)self0 isCloudImport:(BOOL)self1 isIncomingMessage:(BOOL)self2 didReplaceBlock:(id)self3
{
  cacheCopy = cache;
  flagsCopy = flags;
  errorCopy = error;
  replaceCopy = replace;
  blockCopy = block;
  messageCopy = message;
  v22 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v22 setForceReplace:replaceCopy];
  [(IMDMessageStorageContext *)v22 setModifyError:errorCopy];
  [(IMDMessageStorageContext *)v22 setModifyFlags:flagsCopy];
  [(IMDMessageStorageContext *)v22 setFlagMask:mask];
  [(IMDMessageStorageContext *)v22 setUpdateMessageCache:cacheCopy];
  [(IMDMessageStorageContext *)v22 setCalculateUnreadCount:count];
  [(IMDMessageStorageContext *)v22 setReindexMessage:reindexMessage];
  [(IMDMessageStorageContext *)v22 setCloudImport:import];
  [(IMDMessageStorageContext *)v22 setIncomingMessage:incomingMessage];
  v23 = [(IMDMessageStore *)self chatForMessage:messageCopy];
  [(IMDMessageStorageContext *)v22 setChat:v23];

  v24 = [(IMDMessageStore *)self storeMessage:messageCopy context:v22 didReplaceBlock:blockCopy];

  return v24;
}

- (id)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block
{
  v76 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  contextCopy = context;
  blockCopy = block;
  if (!messageCopy)
  {
    AttachmentIfNeededRef = 0;
    goto LABEL_70;
  }

  if ([contextCopy isCloudImport])
  {
LABEL_3:
    context = objc_autoreleasePoolPush();
    [(IMDMessageStore *)self _fixupStoringMessageIfNecessaryWithMessage:messageCopy];
    IsFull = IMDSMSRecordIsFull();
    guid = [messageCopy guid];
    v13 = IMSingleObjectArray();
    v14 = [(IMDMessageStore *)self _itemsWithGUIDs:v13];

    v64 = v14;
    if ([v14 count])
    {
      lastObject = [v14 lastObject];
      v16 = lastObject;
      v61 = lastObject != 0;
      if (lastObject)
      {
        v17 = [lastObject copy];
        [contextCopy forceReplace];
        [contextCopy modifyError];
        [contextCopy modifyFlags];
        [contextCopy flagMask];
        [contextCopy flagMask];
        AttachmentIfNeededRef = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
        if (blockCopy)
        {
          blockCopy[2](blockCopy, v17, AttachmentIfNeededRef);
        }
      }

      else
      {
        AttachmentIfNeededRef = 0;
      }
    }

    else
    {
      v24 = IMDCreateIMDMessageRecordRefFromIMMessageItem();
      if (!v24)
      {
        v25 = IMLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D5BF8();
        }
      }

      [(IMDMessageStore *)self _storeAttachmentsForMessage:messageCopy];
      if ([messageCopy isFromMe])
      {
        [messageCopy handle];
      }

      else
      {
        [messageCopy sender];
      }
      v31 = ;
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v24, v31, 0, 1);

      if (!AttachmentIfNeededRef)
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D5C60();
        }
      }

      if (v24)
      {
        CFRelease(v24);
      }

      v61 = 0;
    }

    v62 = IMDSMSRecordIsFull();
    retractedPartIndexes = [AttachmentIfNeededRef retractedPartIndexes];
    v34 = [retractedPartIndexes count];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isInboxSummaryEnabled = [mEMORY[0x277D1A9B8] isInboxSummaryEnabled];

    if (isInboxSummaryEnabled && v34)
    {
      guid2 = [AttachmentIfNeededRef guid];
      v38 = [(IMDMessageStore *)self chatForMessageGUID:guid2];

      if (v38)
      {
        v72 = *MEMORY[0x277D197B8];
        null = [MEMORY[0x277CBEB68] null];
        v73 = null;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        [v38 updateProperties:v40 shouldBroadcast:1];
      }
    }

    v41 = v64;
    if ([contextCopy reindexMessage])
    {
      v60 = IsFull;
      guid3 = [AttachmentIfNeededRef guid];
      if ([guid3 length])
      {
        isFullyRetracted = [AttachmentIfNeededRef isFullyRetracted];
        reindexReason = [contextCopy reindexReason];
        if ([contextCopy isCloudImport])
        {
          v45 = 1001;
        }

        else if ([contextCopy isIncomingMessage])
        {
          v45 = 1000;
        }

        else
        {
          v45 = reindexReason;
        }

        queryProvider = [MEMORY[0x277D18EC0] queryProvider];
        if (isFullyRetracted)
        {
          v71 = guid3;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
          v48 = [MEMORY[0x277D18EB8] contextWithReason:v45];
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = sub_22B5DD724;
          v67[3] = &unk_278703C58;
          v49 = &v68;
          v68 = guid3;
          [queryProvider deleteMessageGUIDs:v47 context:v48 completionHandler:v67];
        }

        else
        {
          v70 = guid3;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
          v48 = [MEMORY[0x277D18EB8] contextWithReason:v45];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = sub_22B5DD818;
          v65[3] = &unk_278703C58;
          v49 = &v66;
          v66 = guid3;
          [queryProvider addMessageGUIDs:v47 context:v48 completionHandler:v65];
        }

        v41 = v64;
      }

      IsFull = v60;
    }

    objc_autoreleasePoolPop(context);
    v69[0] = 0;
    v69[1] = 0;
    guid4 = [AttachmentIfNeededRef guid];
    IMUUIDForUUIDString();

    v51 = IMDatabaseLogHandle();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v61)
    {
      if (v52)
      {
        *buf = 68157954;
        *v75 = 16;
        *&v75[4] = 2096;
        *&v75[6] = v69;
        v53 = "Replaced message: %{uuid_t}.16P";
LABEL_63:
        _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_DEFAULT, v53, buf, 0x12u);
      }
    }

    else if (v52)
    {
      *buf = 68157954;
      *v75 = 16;
      *&v75[4] = 2096;
      *&v75[6] = v69;
      v53 = "Stored message: %{uuid_t}.16P";
      goto LABEL_63;
    }

    if ([contextCopy updateMessageCache])
    {
      guid5 = [AttachmentIfNeededRef guid];
      +[IMDMessageStore _updateCacheForMessageGUID:fromMessage:toMessage:updateLastMessage:calculateUnreadCount:](IMDMessageStore, "_updateCacheForMessageGUID:fromMessage:toMessage:updateLastMessage:calculateUnreadCount:", guid5, messageCopy, AttachmentIfNeededRef, 1, [contextCopy calculateUnreadCount]);
    }

    [(IMDMessageStore *)self _storeAttachmentsForMessage:AttachmentIfNeededRef];
    chat = [contextCopy chat];

    if (chat)
    {
      chat2 = [contextCopy chat];
      guid6 = [chat2 guid];
      [(IMDMessageStore *)self updateStampForGUID:guid6];
    }

    else
    {
      [(IMDMessageStore *)self updateStamp];
    }

    sub_22B5DC120(IsFull != 0, v62 != 0);
    notificationIDSTokenURI = [messageCopy notificationIDSTokenURI];
    [AttachmentIfNeededRef setNotificationIDSTokenURI:notificationIDSTokenURI];

    goto LABEL_70;
  }

  v19 = messageCopy;
  v20 = +[IMDServiceController sharedController];
  service = [v19 service];
  v22 = [v20 serviceWithName:service];

  if (v22 && ([v22 supportsDatabase] & 1) == 0)
  {
    v26 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v75 = v22;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, " => Not storing message, service: %@  does not support a database", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (([v19 isTypingMessage] & 1) != 0 || objc_msgSend(v19, "isSuggestedActionResponse"))
  {
LABEL_24:

    goto LABEL_25;
  }

  isRCSEncryptionTest = [v19 isRCSEncryptionTest];

  if (!isRCSEncryptionTest)
  {
    goto LABEL_3;
  }

LABEL_25:
  isTypingMessage = [v19 isTypingMessage];
  v28 = IMDatabaseLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (isTypingMessage)
  {
    if (v29)
    {
      guid7 = [v19 guid];
      *buf = 138412546;
      *v75 = guid7;
      *&v75[8] = 2112;
      *&v75[10] = v19;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Message %@ is a typing message, not storing %@", buf, 0x16u);
    }
  }

  else if (v29)
  {
    *buf = 138412290;
    *v75 = v19;
    _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Not storing: %@", buf, 0xCu);
  }

  AttachmentIfNeededRef = v19;
LABEL_70:

  return AttachmentIfNeededRef;
}

- (void)updateUnformattedID:(id)d forBuddyID:(id)iD onService:(id)service
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  if ([dCopy length] && objc_msgSend(iDCopy, "length") && objc_msgSend(serviceCopy, "length") && (objc_msgSend(dCopy, "isEqualToIgnoringCase:", iDCopy) & 1) == 0)
  {
    v10 = IMDHandleRecordCopyHandleForIDOnService();
    if (v10)
    {
      v11 = IMDHandleRecordCopyCountry();
      IMDHandleRecordBulkUpdate();
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412802;
        v14 = iDCopy;
        v15 = 2112;
        v16 = dCopy;
        v17 = 2112;
        v18 = serviceCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updated from %@->%@  on service: %@", &v13, 0x20u);
      }
    }
  }
}

- (id)_itemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order
{
  attachmentsCopy = attachments;
  cacheCopy = cache;
  v30 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dCopy = d;
  if (recordsCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = recordsCopy;
    if (order)
    {
      reverseObjectEnumerator = [recordsCopy reverseObjectEnumerator];
    }

    else
    {
      reverseObjectEnumerator = recordsCopy;
    }

    v15 = reverseObjectEnumerator;
    v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v20, dCopy, cacheCopy, attachmentsCopy);
          if (AttachmentIfNeededRef)
          {
            [v13 addObject:AttachmentIfNeededRef];
          }

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    recordsCopy = v24;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)_messageItemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order
{
  attachmentsCopy = attachments;
  cacheCopy = cache;
  v30 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dCopy = d;
  if (recordsCopy)
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    if (order)
    {
      reverseObjectEnumerator = [recordsCopy reverseObjectEnumerator];
    }

    else
    {
      reverseObjectEnumerator = recordsCopy;
    }

    v14 = reverseObjectEnumerator;
    v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:{16, recordsCopy}];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v19, dCopy, cacheCopy, attachmentsCopy);
          if (AttachmentIfNeededRef)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v24 addObject:AttachmentIfNeededRef];
            }
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    recordsCopy = v23;
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  return v24;
}

- (BOOL)_hasMessagesWithGUIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessagesForGUIDs();
  v6 = [v5 count] != 0;

  objc_autoreleasePoolPop(v4);
  return v6;
}

- (id)_itemsWithAssociatedGUID:(id)d shouldLoadAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v23 = dCopy;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = IMDMessageRecordCopyMessagesForAssociatedGUID();
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v10, 0, 1, attachmentsCopy);
        if (AttachmentIfNeededRef)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = AttachmentIfNeededRef;
            associatedMessageGUID = [v12 associatedMessageGUID];
            v14 = [associatedMessageGUID isEqualToString:v23];

            if (v14)
            {
              [v22 addObject:v12];
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "************* Please file a radar!!!!!!!!!!! *******************************", buf, 2u);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v17 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  associatedMessageGUID2 = [v12 associatedMessageGUID];
                  associatedMessageGUID3 = [v10 associatedMessageGUID];
                  *buf = 138412546;
                  v29 = associatedMessageGUID2;
                  v30 = 2112;
                  v31 = associatedMessageGUID3;
                  _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "A message returned by IMDMessageRecordCopyMessagesForAssociatedGUID is associated to %@ instead of the requested GUID %@.", buf, 0x16u);
                }
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v29 = AttachmentIfNeededRef;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesForAssociatedGUID resulted in a non-associated message item: %@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);

  return v22;
}

- (id)_itemsWithGUIDs:(id)ds
{
  v35 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:dsCopy];
  v22 = dsCopy;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = IMDMessageRecordCopyMessagesForGUIDs();
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v9, 0, 1, 1);
        v11 = AttachmentIfNeededRef;
        if (AttachmentIfNeededRef)
        {
          guid = [AttachmentIfNeededRef guid];
          if ([v4 containsObject:guid])
          {

LABEL_10:
            [v23 addObject:v11];
            goto LABEL_11;
          }

          service = [v11 service];
          v14 = [service isEqualToIgnoringCase:*MEMORY[0x277D1A610]];

          if (v14)
          {
            goto LABEL_10;
          }

          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "************* Please file a radar!!!!!!!!!!! *******************************", buf, 2u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              guid2 = [v11 guid];
              guid3 = [v9 guid];
              *buf = 138412802;
              v29 = guid2;
              v30 = 2112;
              v31 = guid3;
              v32 = 2112;
              v33 = v22;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "GUID we got from IMDMessageRecordCopyMessagesForGUIDs wasn't one of the guids we requested. IMItem we got back was: %@, IMDMessageRecordRef guid we got was: %@, requested guids was: %@", buf, 0x20u);
            }
          }
        }

LABEL_11:

        ++v8;
      }

      while (v6 != v8);
      v19 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
      v6 = v19;
    }

    while (v19);
  }

  objc_autoreleasePoolPop(context);

  return v23;
}

- (id)_itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages
{
  messagesCopy = messages;
  v41 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v18 = objc_autoreleasePoolPush();
  v19 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v19 startTimingForKey:@"history query"];
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138413570;
    v30 = dCopy;
    v31 = 2112;
    v32 = handlesCopy;
    v33 = 2112;
    v34 = servicesCopy;
    v35 = 2048;
    limitCopy = limit;
    v37 = 2112;
    v38 = identifierCopy;
    v39 = 1024;
    v40 = messagesCopy;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Requesting history with guid: %@ handles: %@ services: %@ limit: %llu thread identifier: %@ only messages: %{BOOL}d", &v29, 0x3Au);
  }

  v21 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier();
  [v19 stopTimingForKey:@"history query"];
  [v19 startTimingForKey:@"generate chat items"];
  v22 = [handlesCopy count];
  if (v22 == 1)
  {
    firstObject = [handlesCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v24 = [(IMDMessageStore *)self _itemsForMessageRecords:v21 handleID:firstObject useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
  if (v22 == 1)
  {
  }

  [v19 stopTimingForKey:@"generate chat items"];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      v30 = v19;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "history query timing: %@", &v29, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v18);
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = v26;

  return v26;
}

- (id)_itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages
{
  limitCopy = limit;
  v32 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v17 = objc_autoreleasePoolPush();
  v18 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier();
  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138413058;
    v25 = namesCopy;
    v26 = 2112;
    v27 = servicesCopy;
    v28 = 1024;
    v29 = limitCopy;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "_messagesWithRoomNames: %@ onServices %@ limit %d recordStoreRecords: %@", &v24, 0x26u);
  }

  v20 = [(IMDMessageStore *)self _itemsForMessageRecords:v18 handleID:0 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];

  objc_autoreleasePoolPop(v17);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = v21;

  return v21;
}

- (id)_itemsWithHandlesBeforeAndAfterGUID:(id)d handles:(id)handles onServices:(id)services numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlesCopy = handles;
  servicesCopy = services;
  identifierCopy = identifier;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v20 startTimingForKey:@"paged history query"];
  v21 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v32 = dCopy;
    v33 = 2112;
    v34 = handlesCopy;
    v35 = 2112;
    v36 = servicesCopy;
    v37 = 2048;
    *v38 = before;
    *&v38[8] = 2048;
    afterCopy = after;
    v40 = 2112;
    v41 = identifierCopy;
    _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Requesting history with guid: %@ handles: %@ services: %@ number before: %llu number after: %llu thread identifier: %@", buf, 0x3Eu);
  }

  v22 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();
  [v20 stopTimingForKey:@"paged history query"];
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 count];
    *buf = 138413570;
    v32 = handlesCopy;
    v33 = 2112;
    v34 = servicesCopy;
    v35 = 2112;
    v36 = dCopy;
    v37 = 1024;
    *v38 = before;
    *&v38[4] = 1024;
    *&v38[6] = after;
    LOWORD(afterCopy) = 1024;
    *(&afterCopy + 2) = v24;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "_limitedNumberOfMessagesWithHandles: %@ services: %@ messageGUID: %@ numberOfMessagesBefore: %d, numberOfMessagesAfter: %d record count: %d", buf, 0x32u);
  }

  [v20 startTimingForKey:@"generate chat items"];
  v25 = [(IMDMessageStore *)self _itemsForMessageRecords:v22 handleID:0 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
  [v20 stopTimingForKey:@"generate chat items"];
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v20;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "paged history query timing: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = v27;

  return v27;
}

- (id)_unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  limitCopy = limit;
  v30 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  v14 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID();
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413058;
    v23 = handlesCopy;
    v24 = 2112;
    v25 = servicesCopy;
    v26 = 1024;
    v27 = limitCopy;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "_unreadMessagesWithHandles: %@ onServices %@ limit %d recordStoreRecords: %@", &v22, 0x26u);
  }

  v16 = [handlesCopy count];
  if (v16 == 1)
  {
    firstObject = [handlesCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v18 = [(IMDMessageStore *)self _messageItemsForMessageRecords:v14 handleID:firstObject useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
  if (v16 == 1)
  {
  }

  objc_autoreleasePoolPop(v13);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = v19;

  return v19;
}

- (id)_unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  limitCopy = limit;
  v30 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  v14 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID();
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138413314;
    v21 = namesCopy;
    v22 = 2112;
    v23 = servicesCopy;
    v24 = 1024;
    v25 = limitCopy;
    v26 = 2112;
    v27 = dCopy;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "_unreadMessagesWithRoomNames: %@ onServices %@ limit %d fallbackGUID %@ recordStoreRecords: %@", &v20, 0x30u);
  }

  v16 = [(IMDMessageStore *)self _messageItemsForMessageRecords:v14 handleID:0 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];

  objc_autoreleasePoolPop(v13);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = v17;

  return v17;
}

- (void)registerTransfersForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = messageCopy;
    fileTransferGUIDs = [v4 fileTransferGUIDs];
    guid = [v4 guid];
    [(IMDMessageStore *)self _registerTransfersWithGUIDs:fileTransferGUIDs forMessageGUID:guid];

    threadOriginator = [v4 threadOriginator];

    if (threadOriginator)
    {
      threadOriginator2 = [v4 threadOriginator];
      fileTransferGUIDs2 = [threadOriginator2 fileTransferGUIDs];
      guid2 = [threadOriginator2 guid];
      [(IMDMessageStore *)self _registerTransfersWithGUIDs:fileTransferGUIDs2 forMessageGUID:guid2];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_registerTransfersWithGUIDs:(id)ds forMessageGUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  v27 = [dsCopy count];
  if (v27)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v35 = [dsCopy count];
      v36 = 2112;
      v37 = dsCopy;
      v38 = 2112;
      v39 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Ensure transfers(count=%lu) with GUIDs registered: %@ for message: %@", buf, 0x20u);
    }

    v26 = dCopy;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = dsCopy;
    obj = dsCopy;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v30;
      v13 = *MEMORY[0x277D18F28];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          _fileTransferCenter = [(IMDMessageStore *)self _fileTransferCenter];
          v17 = [_fileTransferCenter transferForGUID:v15];

          v18 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v35 = v11 + 1;
            v36 = 2048;
            v37 = v27;
            v38 = 2112;
            v39 = v17;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Existing transfer: %lu/%lu %@", buf, 0x20u);
          }

          if (v17)
          {
            _fileTransferCenter2 = [(IMDMessageStore *)self _fileTransferCenter];
            [_fileTransferCenter2 addTransfer:v17 forGUID:v15];
          }

          else
          {
            v20 = +[IMDAttachmentStore sharedInstance];
            _fileTransferCenter2 = [v20 attachmentWithGUID:v15];

            v21 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = _fileTransferCenter2;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Found saved transfer from DB: %@", buf, 0xCu);
            }

            if (_fileTransferCenter2)
            {
              if (v26)
              {
                [_fileTransferCenter2 setMessageGUID:?];
              }

              v22 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v35 = _fileTransferCenter2;
                _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "New transfer: %@", buf, 0xCu);
              }

              _fileTransferCenter3 = [(IMDMessageStore *)self _fileTransferCenter];
              [_fileTransferCenter3 addTransfer:_fileTransferCenter2 forGUID:v15];
            }
          }

          if (++v11 >= v13)
          {
            v24 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v35 = v27 - v13;
              v36 = 2048;
              v37 = v27;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Not registering %lu/%lu transfers, too many for one message", buf, 0x16u);
            }

            goto LABEL_28;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    dsCopy = v25;
    dCopy = v26;
  }
}

- (id)messagesWithAssociatedGUID:(id)d shouldLoadAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v23) = attachmentsCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Should load attachments for associated messages %{BOOL}d", buf, 8u);
    }

    context = objc_autoreleasePoolPush();
    v8 = [(IMDMessageStore *)self _itemsWithAssociatedGUID:dCopy shouldLoadAttachments:attachmentsCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v11 addObject:v14];
          if (attachmentsCopy)
          {
            [(IMDMessageStore *)self registerTransfersForMessage:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(context);
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Found messages with associated guids: %@  (%@)", buf, 0x16u);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)messagesWithGUIDs:(id)ds
{
  v25 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    context = objc_autoreleasePoolPush();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(IMDMessageStore *)self _itemsWithGUIDs:dsCopy];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (![v11 type])
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v8 addObject:v11];
            v12 = +[IMDMessageStore sharedInstance];
            [v12 registerTransfersForMessage:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(context);
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = dsCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found messages with guids: %@  (%@)", buf, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sortedMessageItemsWithFallbackHash:(id)hash inChat:(id)chat limit:(unint64_t)limit
{
  v20[1] = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  chatCopy = chat;
  if (chatCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
    hashCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D19F90], hashCopy];
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    guid = [chatCopy guid];
    v20[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22B5E0468;
    v18[3] = &unk_2787042B8;
    v15 = v8;
    v19 = v15;
    [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid filteredUsingPredicate:hashCopy sortedUsingDescriptors:v14 limit:1 completionHandler:v18];

    objc_autoreleasePoolPop(v9);
    v16 = [v15 copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (BOOL)canStoreItem:(id)item onService:(id)service
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    v5 = +[IMDServiceController sharedController];
    service = [itemCopy service];
    v7 = [v5 serviceWithName:service];

    if (v7 && ([v7 supportsDatabase] & 1) == 0)
    {
      v9 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, " => Not storing item, service: %@  does not support a database", &v11, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canStoreMessage:(id)message onService:(id)service
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    v6 = messageCopy;
    v7 = +[IMDServiceController sharedController];
    service = [v6 service];
    v9 = [v7 serviceWithName:service];

    if (v9 && ([v9 supportsDatabase] & 1) == 0)
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, " => Not storing message, service: %@  does not support a database", &v13, 0xCu);
      }
    }

    else if (([v6 isTypingMessage] & 1) == 0 && (objc_msgSend(v6, "isSuggestedActionResponse") & 1) == 0)
    {
      v10 = [v6 isRCSEncryptionTest] ^ 1;
LABEL_12:

      goto LABEL_13;
    }

    LOBYTE(v10) = 0;
    goto LABEL_12;
  }

  LOBYTE(v10) = 0;
LABEL_13:

  return v10;
}

- (BOOL)hasStoredMessageWithGUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v5 = IMSingleObjectArray();
    v6 = [(IMDMessageStore *)self _hasMessagesWithGUIDs:v5];

    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = dCopy;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Have stored message for guid (%@): %{BOOL}d", &v9, 0x12u);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)itemWithGUID:(id)d
{
  v15[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v15[0] = dCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v7 = [(IMDMessageStore *)self _itemsWithGUIDs:v6];
    firstObject = [v7 firstObject];

    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2048;
      v14 = firstObject;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Fetched item from database for guid (%@): %p", &v11, 0x16u);
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)messageWithGUID:(id)d registerAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v205 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [(IMDMessageStore *)self itemWithGUID:?];
  if ([v6 type])
  {

    v6 = 0;
  }

  else if (attachmentsCopy)
  {
    [(IMDMessageStore *)self registerTransfersForMessage:v6];
  }

  v7 = v6;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isFromMe = [v7 isFromMe];
    sender = [v7 sender];
    service = [v7 service];
    encrypted = [v7 encrypted];
    handle = [v7 handle];
    destinationCallerID = [v7 destinationCallerID];
    unformattedID = [v7 unformattedID];
    countryCode = [v7 countryCode];
    roomName = [v7 roomName];
    flags = [v7 flags];
    messageID = [v7 messageID];
    sortID = [v7 sortID];
    time = [v7 time];
    [time timeIntervalSinceReferenceDate];
    v12 = v11;
    timeDelivered = [v7 timeDelivered];
    [timeDelivered timeIntervalSinceReferenceDate];
    v14 = v13;
    timeRead = [v7 timeRead];
    [timeRead timeIntervalSinceReferenceDate];
    v16 = v15;
    timePlayed = [v7 timePlayed];
    [timePlayed timeIntervalSinceReferenceDate];
    v18 = v17;
    fileTransferGUIDs = [v7 fileTransferGUIDs];
    isEmpty = [v7 isEmpty];
    isFinished = [v7 isFinished];
    isSent = [v7 isSent];
    isRead = [v7 isRead];
    isDelivered = [v7 isDelivered];
    scheduleType = [v7 scheduleType];
    scheduleState = [v7 scheduleState];
    isAudioMessage = [v7 isAudioMessage];
    isPlayed = [v7 isPlayed];
    isFromMe2 = [v7 isFromMe];
    hasDataDetectorResults = [v7 hasDataDetectorResults];
    wasDataDetected = [v7 wasDataDetected];
    wasDowngraded = [v7 wasDowngraded];
    isEmote = [v7 isEmote];
    isExpirable = [v7 isExpirable];
    expireState = [v7 expireState];
    balloonBundleID = [v7 balloonBundleID];
    expressiveSendStyleID = [v7 expressiveSendStyleID];
    timeExpressiveSendPlayed = [v7 timeExpressiveSendPlayed];
    bizIntent = [v7 bizIntent];
    locale = [v7 locale];
    biaReferenceID = [v7 biaReferenceID];
    errorCode = [v7 errorCode];
    cloudKitSyncState = [v7 cloudKitSyncState];
    isCorrupt = [v7 isCorrupt];
    shouldSendMeCard = [v7 shouldSendMeCard];
    isSpam = [v7 isSpam];
    hasUnseenMention = [v7 hasUnseenMention];
    threadIdentifier = [v7 threadIdentifier];
    threadOriginator = [v7 threadOriginator];
    replyCountsByPart = [v7 replyCountsByPart];
    isStewie = [v7 isStewie];
    stewieConversationID = [v7 stewieConversationID];
    syndicationRanges = [v7 syndicationRanges];
    v35 = [syndicationRanges componentsJoinedByString:{@", "}];
    syncedSyndicationRanges = [v7 syncedSyndicationRanges];
    v34 = [syncedSyndicationRanges componentsJoinedByString:{@", "}];
    dateEdited = [v7 dateEdited];
    [dateEdited timeIntervalSinceReferenceDate];
    v25 = v24;
    dateRecovered = [v7 dateRecovered];
    [dateRecovered timeIntervalSinceReferenceDate];
    v27 = v26;
    groupActivity = [v7 groupActivity];
    wasDetonated = [v7 wasDetonated];
    isSOS = [v7 isSOS];
    isCritical = [v7 isCritical];
    fallbackHash = [v7 fallbackHash];
    v28 = [fallbackHash length];
    v88 = isFromMe;
    v94 = encrypted;
    v106 = flags;
    v108 = messageID;
    v110 = sortID;
    *buf = 138427394;
    v86 = dCopy;
    v122 = isEmpty;
    v87 = 1024;
    v124 = isFinished;
    v89 = 2112;
    v90 = sender;
    v91 = 2112;
    v92 = service;
    v93 = 1024;
    v95 = 2112;
    v96 = handle;
    v97 = 2112;
    v98 = destinationCallerID;
    v99 = 2112;
    v100 = unformattedID;
    v101 = 2112;
    v102 = countryCode;
    v103 = 2112;
    v104 = roomName;
    v126 = isSent;
    v105 = 2048;
    v107 = 2048;
    v109 = 2048;
    v111 = 2048;
    v112 = v12;
    v113 = 2048;
    v114 = v14;
    v115 = 2048;
    v116 = v16;
    v117 = 2048;
    v118 = v18;
    v119 = 2112;
    v120 = fileTransferGUIDs;
    v121 = 1024;
    v123 = 1024;
    v125 = 1024;
    v127 = 1024;
    v128 = isRead;
    v129 = 1024;
    v130 = isDelivered;
    v131 = 2048;
    v132 = scheduleType;
    v133 = 2048;
    v134 = scheduleState;
    v135 = 1024;
    v136 = isAudioMessage;
    v137 = 1024;
    v138 = isPlayed;
    v139 = 1024;
    v140 = isFromMe2;
    v141 = 1024;
    v142 = hasDataDetectorResults;
    v143 = 1024;
    v144 = wasDataDetected;
    v145 = 1024;
    v146 = wasDowngraded;
    v147 = 1024;
    v148 = isEmote;
    v149 = 1024;
    v150 = isExpirable;
    v151 = 1024;
    v152 = expireState;
    v153 = 2112;
    v154 = balloonBundleID;
    v155 = 2112;
    v156 = expressiveSendStyleID;
    v157 = 2112;
    v158 = timeExpressiveSendPlayed;
    v159 = 2112;
    v160 = bizIntent;
    v161 = 2112;
    v162 = locale;
    v163 = 2112;
    v164 = biaReferenceID;
    v165 = 1024;
    v166 = errorCode;
    v167 = 2048;
    v168 = cloudKitSyncState;
    v169 = 1024;
    v170 = isCorrupt;
    v171 = 1024;
    v172 = shouldSendMeCard;
    v173 = 1024;
    v174 = isSpam;
    v175 = 1024;
    v176 = hasUnseenMention;
    v177 = 2112;
    v178 = threadIdentifier;
    v179 = 2112;
    v180 = threadOriginator;
    v181 = 2112;
    v182 = replyCountsByPart;
    v183 = 1024;
    v184 = isStewie;
    v185 = 2048;
    v186 = stewieConversationID;
    v187 = 2112;
    v188 = v35;
    v189 = 2112;
    v190 = v34;
    v191 = 2048;
    v192 = v25;
    v193 = 2048;
    v194 = v27;
    v195 = 1024;
    v196 = groupActivity != 0;
    v197 = 1024;
    v198 = wasDetonated;
    v199 = 1024;
    v200 = isSOS;
    v201 = 1024;
    v202 = isCritical;
    v203 = 2048;
    v204 = v28;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Stored message for guid (%@): IMMessageItem[outgoing: %{BOOL}d sender=%@; service=%@; encrypted=%{BOOL}d; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; messageID: %lld sortID: %lu date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %{BOOL}d finished: %{BOOL}d sent: %{BOOL}d read: %{BOOL}d delivered: %{BOOL}d scheduleType: %lu, scheduleState: %lu, audio: %{BOOL}d played: %{BOOL}d from-me: %{BOOL}d DD results: %{BOOL}d DD Scanned: %{BOOL}d Downgraded: %{BOOL}d emote: %{BOOL}d expirable: %{BOOL}d expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %lli corrupt: %{BOOL}d shouldSendMeCard: %{BOOL}d isSpam: %{BOOL}d hasUnseenMention: %{BOOL}d threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %{BOOL}d, chorosConversationID: %ld, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %{BOOL}d, wasDetonated: %{BOOL}d, isSOS: %{BOOL}d, isCritical %{BOOL}d, fallbackHash (len): %llu]", buf, 0x1F2u);
  }

  return v7;
}

- (id)messageForAttachmentGUID:(id)d
{
  v3 = IMDAttachmentRecordCopyMessageForAttachmentGUID();
  AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v3, 0, 1, 1);
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = AttachmentIfNeededRef;
  }

  return v5;
}

- (id)existingMessageSimilarToMessage:(id)message skipServices:(id)services skipGUIDs:(id)ds withinTimeInterval:(double)interval participants:(id)participants
{
  v82 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  servicesCopy = services;
  dsCopy = ds;
  participantsCopy = participants;
  if (messageCopy)
  {
    v15 = [servicesCopy __imArrayByApplyingBlock:&unk_283F1A208];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    body = [messageCopy body];
    string = [body string];
    __stringByStrippingAttachmentAndControlCharacters = [string __stringByStrippingAttachmentAndControlCharacters];

    sender = [messageCopy sender];
    v56 = sender;
    if ([participantsCopy count] < 2)
    {
      v47 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs();
    }

    else
    {
      v52 = v15;
      v54 = dsCopy;
      v55 = messageCopy;
      v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v21 = participantsCopy;
      v22 = [v21 countByEnumeratingWithState:&v65 objects:v81 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v66;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v66 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v65 + 1) + 8 * i) ID];
            if ([v26 length])
            {
              [v20 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v65 objects:v81 count:16];
        }

        while (v23);
      }

      v51 = __stringByStrippingAttachmentAndControlCharacters;
      v53 = participantsCopy;

      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v28 = +[IMDServiceController sharedController];
      allServices = [v28 allServices];

      v30 = [allServices countByEnumeratingWithState:&v61 objects:v80 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v62;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v62 != v32)
            {
              objc_enumerationMutation(allServices);
            }

            v34 = *(*(&v61 + 1) + 8 * j);
            if (([servicesCopy containsObject:{v34, v51}] & 1) == 0)
            {
              v35 = +[IMDChatRegistry sharedInstance];
              v36 = [v35 existingChatsForIDs:v20 onService:v34 style:43];
              [v27 addObjectsFromArray:v36];
            }
          }

          v31 = [allServices countByEnumeratingWithState:&v61 objects:v80 count:16];
        }

        while (v31);
      }

      v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v39 = v27;
      v40 = [v39 countByEnumeratingWithState:&v57 objects:v79 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v58;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v58 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v57 + 1) + 8 * k);
            serviceName = [v44 serviceName];
            [v37 addObject:serviceName];

            chatIdentifier = [v44 chatIdentifier];
            [v38 addObject:chatIdentifier];
          }

          v41 = [v39 countByEnumeratingWithState:&v57 objects:v79 count:16];
        }

        while (v41);
      }

      dsCopy = v54;
      v47 = IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs();

      __stringByStrippingAttachmentAndControlCharacters = v51;
      v15 = v52;

      sender = v56;
      messageCopy = v55;
      participantsCopy = v53;
    }

    if (v47 && (AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v47, sender, 1, 1), CFRelease(v47), AttachmentIfNeededRef))
    {
      v49 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v70 = AttachmentIfNeededRef;
        v71 = 2112;
        v72 = messageCopy;
        v73 = 2112;
        v74 = servicesCopy;
        v75 = 2112;
        intervalCopy2 = *&dsCopy;
        v77 = 2048;
        intervalCopy = interval;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "Found existing message: %@ similar to: %@   (Skip Services: %@   Skip GUIDs: %@   Within Time Interval: %f)", buf, 0x34u);
      }
    }

    else
    {
      v49 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v70 = messageCopy;
        v71 = 2112;
        v72 = servicesCopy;
        v73 = 2112;
        v74 = dsCopy;
        v75 = 2048;
        intervalCopy2 = interval;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "No existing message similar to: %@   (Skip Services: %@   Skip GUIDs: %@   Within Time Interval: %f)", buf, 0x2Au);
      }

      AttachmentIfNeededRef = 0;
    }
  }

  else
  {
    AttachmentIfNeededRef = 0;
  }

  return AttachmentIfNeededRef;
}

- (id)existingSOSMessageSimilarToMessage:(id)message matchingService:(id)service withinTimeInterval:(double)interval
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  serviceCopy = service;
  if (messageCopy)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    body = [messageCopy body];
    string = [body string];
    __stringByStrippingAttachmentAndControlCharacters = [string __stringByStrippingAttachmentAndControlCharacters];

    sender = [messageCopy sender];
    v13 = [messageCopy isSOS] ^ 1;
    guid = [messageCopy guid];
    v15 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID();
    if (v15 && (v16 = v15, AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v15, sender, 1, 1), CFRelease(v16), AttachmentIfNeededRef))
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138413314;
        v21 = serviceCopy;
        v22 = 1024;
        v23 = v13;
        v24 = 2048;
        intervalCopy2 = interval;
        v26 = 2112;
        v27 = AttachmentIfNeededRef;
        v28 = 2112;
        v29 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Found existing SOS message (Matching service: %@  Matching isSOS: %d  Within Time Interval: %f) - found message: %@ similar to: %@", &v20, 0x30u);
      }
    }

    else
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138413058;
        v21 = serviceCopy;
        v22 = 1024;
        v23 = v13;
        v24 = 2048;
        intervalCopy2 = interval;
        v26 = 2112;
        v27 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "No existing SOS message (Matching service: %@  Matching isSOS: %d  Within Time Interval: %f) - similar to: %@", &v20, 0x26u);
      }

      AttachmentIfNeededRef = 0;
    }
  }

  else
  {
    AttachmentIfNeededRef = 0;
  }

  return AttachmentIfNeededRef;
}

- (void)markMessageAsDeduplicated:(id)deduplicated
{
  deduplicatedCopy = deduplicated;
  if (deduplicatedCopy)
  {
    v5 = deduplicatedCopy;
    guid = [deduplicatedCopy guid];

    deduplicatedCopy = v5;
    if (guid)
    {
      [v5 guid];
      IMDMessageRecordMarkMessageGUIDAsDeduplicated();
      deduplicatedCopy = v5;
    }
  }
}

- (BOOL)wasMessageDeduplicatedWithGUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v4 = IMDMessageRecordCopyMessageForGUID();
    wasDeduplicated = [v4 wasDeduplicated];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[IMDMessageStore wasMessageDeduplicatedWithGUID:]";
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%s received zero-length message GUID", &v8, 0xCu);
      }
    }

    wasDeduplicated = 0;
  }

  return wasDeduplicated;
}

- (id)messageWithReplaceMessageID:(int)d fromHandle:(id)handle onService:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  AttachmentIfNeededRef = 0;
  if (handleCopy && service)
  {
    v9 = IMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID();
    if (v9)
    {
      v10 = v9;
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v9, handleCopy, 1, 1);
      CFRelease(v10);
    }

    else
    {
      AttachmentIfNeededRef = 0;
    }

    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109378;
      v13[1] = d;
      v14 = 2112;
      v15 = AttachmentIfNeededRef;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Stored message for replace ID (%d): %@", v13, 0x12u);
    }
  }

  return AttachmentIfNeededRef;
}

- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit
{
  v41 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v16 = objc_autoreleasePoolPush();
  limitCopy = limit;
  v27 = dCopy;
  [(IMDMessageStore *)self _itemsWithHandles:handlesCopy onServices:servicesCopy messageGUID:dCopy threadIdentifier:identifierCopy limit:limit onlyMessages:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v31 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        if (![v22 type])
        {
          [(IMDMessageStore *)self registerTransfersForMessage:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(v16);
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 count];
    *buf = 67109890;
    v33 = v24;
    v34 = 2112;
    v35 = handlesCopy;
    v36 = 2112;
    v37 = servicesCopy;
    v38 = 1024;
    v39 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Found %d messages with handles: %@ on services: %@  limit: %d", buf, 0x22u);
  }

  return v17;
}

- (id)itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit
{
  v41 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v16 = objc_autoreleasePoolPush();
  limitCopy = limit;
  v27 = dCopy;
  [(IMDMessageStore *)self _itemsWithRoomNames:namesCopy onServices:servicesCopy messageGUID:dCopy threadIdentifier:identifierCopy limit:limit onlyMessages:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v31 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        if (![v22 type])
        {
          [(IMDMessageStore *)self registerTransfersForMessage:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(v16);
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 count];
    *buf = 67109890;
    v33 = v24;
    v34 = 2112;
    v35 = namesCopy;
    v36 = 2112;
    v37 = servicesCopy;
    v38 = 1024;
    v39 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Found %d messages with room names: %@ on services: %@  limit: %d", buf, 0x22u);
  }

  return v17;
}

- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0
{
  v52 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v20 = objc_autoreleasePoolPush();
  afterCopy = after;
  v36 = dCopy;
  beforeCopy = before;
  beforeCopy2 = before;
  v22 = identifierCopy;
  [(IMDMessageStore *)self _itemsWithHandlesBeforeAndAfterGUID:dCopy handles:handlesCopy onServices:servicesCopy numberOfMessagesBefore:beforeCopy2 numberOfMessagesAfter:after threadIdentifier:identifierCopy hasMessagesBefore:messagesBefore hasMessagesAfter:messagesAfter];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v40 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v37 + 1) + 8 * i);
        if (![v28 type])
        {
          [(IMDMessageStore *)self registerTransfersForMessage:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(v20);
  v29 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v23 count];
    v31 = [handlesCopy count];
    v32 = [servicesCopy count];
    *buf = 67110144;
    v42 = v30;
    v43 = 1024;
    v44 = v31;
    v45 = 1024;
    v46 = v32;
    v47 = 1024;
    v48 = beforeCopy;
    v49 = 1024;
    v50 = afterCopy;
    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "messagesWithHandlesBeforeAndAfterGUID found %d messages for number of ids: %d on number of services: %d numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x20u);
  }

  return v23;
}

- (id)lastMessageWithHandles:(id)handles onServices:(id)services
{
  v19 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  v8 = objc_autoreleasePoolPush();
  v9 = [(IMDMessageStore *)self _itemsWithHandles:handlesCopy onServices:servicesCopy messageGUID:0 threadIdentifier:0 limit:1 onlyMessages:1];
  firstObject = [v9 firstObject];

  objc_autoreleasePoolPop(v8);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = firstObject;
    v15 = 2112;
    v16 = handlesCopy;
    v17 = 2112;
    v18 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found last message: %@ with handles: %@ on services: %@", &v13, 0x20u);
  }

  return firstObject;
}

- (id)unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  limitCopy = limit;
  context = objc_autoreleasePoolPush();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = dCopy;
  v13 = [(IMDMessageStore *)self _unreadMessagesWithHandles:handlesCopy onServices:servicesCopy limit:limit fallbackGUID:dCopy];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        if (v19)
        {
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v16 addObject:v19];
          if (![v19 type])
          {
            [(IMDMessageStore *)self registerTransfersForMessage:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(context);
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 count];
    *buf = 67109890;
    v31 = v21;
    v32 = 2112;
    v33 = handlesCopy;
    v34 = 2112;
    v35 = servicesCopy;
    v36 = 1024;
    v37 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Found %d messages with handle: %@ on service: %@  limit: %d", buf, 0x22u);
  }

  return v16;
}

- (id)unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  limitCopy = limit;
  context = objc_autoreleasePoolPush();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = dCopy;
  v13 = [(IMDMessageStore *)self _unreadMessagesWithRoomNames:namesCopy onServices:servicesCopy limit:limit fallbackGUID:dCopy];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        if (v19)
        {
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v16 addObject:v19];
          if (![v19 type])
          {
            [(IMDMessageStore *)self registerTransfersForMessage:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(context);
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 count];
    *buf = 67109890;
    v31 = v21;
    v32 = 2112;
    v33 = namesCopy;
    v34 = 2112;
    v35 = servicesCopy;
    v36 = 1024;
    v37 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Found %d messages with handle: %@ on service: %@  limit: %d", buf, 0x22u);
  }

  return v16;
}

- (id)lastMessageWithRoomNames:(id)names onServices:(id)services
{
  v19 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  v8 = objc_autoreleasePoolPush();
  v9 = [(IMDMessageStore *)self _itemsWithRoomNames:namesCopy onServices:servicesCopy messageGUID:0 threadIdentifier:0 limit:1 onlyMessages:1];
  firstObject = [v9 firstObject];

  objc_autoreleasePoolPop(v8);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = firstObject;
    v15 = 2112;
    v16 = namesCopy;
    v17 = 2112;
    v18 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found last message: %@ with room names: %@ on services: %@", &v13, 0x20u);
  }

  return firstObject;
}

- (id)lastIncomingMessageForChatWithIdentifier:(id)identifier chatStyle:(unsigned __int8)style onService:(id)service
{
  v28[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceCopy = service;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC28]];
  serviceCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19FC8], serviceCopy];
  v11 = MEMORY[0x277CCA920];
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = serviceCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
  v15 = IMCopyAnyServiceGUIDForChat();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_22B4D7730;
  v25 = sub_22B4D78F4;
  v26 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v27 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B5E2EA0;
  v20[3] = &unk_2787031A0;
  v20[4] = &v21;
  [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:v15 filteredUsingPredicate:v13 sortedUsingDescriptors:v17 limit:1 completionHandler:v20];

  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

- (id)messagesInChat:(id)chat earliestDate:(id)date limit:(unint64_t)limit
{
  v29[2] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dateCopy = date;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v10 = *MEMORY[0x277D19F88];
  dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277D19F88], dateCopy];
  v12 = MEMORY[0x277CCA920];
  v29[0] = v9;
  v29[1] = dateCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v10 ascending:0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_22B4D7730;
  v26 = sub_22B4D78F4;
  v27 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  guid = [chatCopy guid];
  v28 = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B5E31F4;
  v21[3] = &unk_2787031A0;
  v21[4] = &v22;
  [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid filteredUsingPredicate:v14 sortedUsingDescriptors:v18 limit:limit completionHandler:v21];

  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

- (BOOL)hasScheduledMessageForChatGUID:(id)d
{
  v17[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu OR %K = %lu", *MEMORY[0x277D19FB8], 1, *MEMORY[0x277D19FB8], 2];
  v7 = MEMORY[0x277CCA920];
  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B5E3628;
  v12[3] = &unk_278705F18;
  v12[4] = &v13;
  [synchronousDatabase fetchMessageRecordCountForChatRecordWithGUID:dCopy filteredUsingPredicate:v9 limit:1 completionHandler:v12];

  LOBYTE(synchronousDatabase) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return synchronousDatabase & 1;
}

- (id)scheduledMessagesBatchFetcherForChat:(id)chat
{
  v14[3] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v4 = chatCopy;
  if (chatCopy && [chatCopy length])
  {
    v5 = [objc_alloc(MEMORY[0x277D18ED8]) initWithAssociatedChatGUID:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D18ED8]);
  }

  v6 = v5;
  [v5 setBatchSize:100];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu OR %K = %lu", *MEMORY[0x277D19FB8], 1, *MEMORY[0x277D19FB8], 2];
  v10 = MEMORY[0x277CCA920];
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v6 setPredicate:v12];

  return v6;
}

- (id)scheduledMessagesBatchFetcherForSyncState:(int64_t)state
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D18ED8]);
  [v4 setBatchSize:100];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  state = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19F80], state];
  v8 = MEMORY[0x277CCA920];
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = state;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  [v4 setPredicate:v10];

  return v4;
}

- (id)messageHistorySummaryForDateInterval:(id)interval chatIdentifiers:(id)identifiers chatStyle:(unsigned __int8)style services:(id)services
{
  styleCopy = style;
  v43[3] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  identifiersCopy = identifiers;
  servicesCopy = services;
  startDate = [intervalCopy startDate];
  v36 = intervalCopy;
  endDate = [intervalCopy endDate];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v14 = *MEMORY[0x277D19F88];
  v35 = startDate;
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277D19F88], startDate];
  v34 = endDate;
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", v14, endDate];
  v17 = MEMORY[0x277CCA920];
  v32 = v15;
  v33 = v13;
  v43[0] = v13;
  v43[1] = v15;
  v31 = v16;
  v43[2] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  v38 = [v17 andPredicateWithSubpredicates:v18];

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v14 ascending:0];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  if ([identifiersCopy count])
  {
    v21 = 0;
    do
    {
      v22 = [identifiersCopy objectAtIndexedSubscript:v21];
      v23 = [servicesCopy objectAtIndexedSubscript:v21];
      v24 = IMCopyGUIDForChat();
      v42 = v19;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v26 = v25 = styleCopy;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_22B5E3CC4;
      v40[3] = &unk_2787042B8;
      v41 = v20;
      [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:v24 filteredUsingPredicate:v38 sortedUsingDescriptors:v26 limit:10000 completionHandler:v40];

      styleCopy = v25;
      ++v21;
    }

    while (v21 < [identifiersCopy count]);
  }

  v27 = objc_alloc(MEMORY[0x277D1AA60]);
  v28 = [v20 copy];
  v29 = [v27 initWithDateInterval:v36 messages:v28];

  return v29;
}

- (id)oldestMessageDateForChatIdentifiers:(id)identifiers chatStyle:(unsigned __int8)style services:(id)services
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:1];
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v9 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_22B4D7730;
  v23 = sub_22B4D78F4;
  v24 = 0;
  while (v9 < [identifiersCopy count])
  {
    v10 = [identifiersCopy objectAtIndexedSubscript:v9];
    v11 = [servicesCopy objectAtIndexedSubscript:v9];
    v12 = IMCopyGUIDForChat();
    v25[0] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22B5E40FC;
    v18[3] = &unk_2787031A0;
    v18[4] = &v19;
    [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:v16 sortedUsingDescriptors:v13 limit:1 completionHandler:v18];

    ++v9;
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)lastMessageForChatWithRowID:(int64_t)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_22B4D7730;
  v12 = sub_22B4D78F4;
  v13 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B5E4364;
  v7[3] = &unk_278705F40;
  v7[4] = &v8;
  [synchronousDatabase fetchLastMessageRecordForChatRecordWithRowID:d completionHandler:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)lastTUConversationItemForChat:(id)chat
{
  v18[1] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7730;
  v16 = sub_22B4D78F4;
  v17 = 0;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 6];
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  guid = [chatCopy guid];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
  v18[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B5E4610;
  v11[3] = &unk_2787031A0;
  v11[4] = &v12;
  [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid filteredUsingPredicate:v4 sortedUsingDescriptors:v8 limit:1 completionHandler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)attachmentsWithHandles:(id)handles onServices:(id)services
{
  v16 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  v7 = objc_autoreleasePoolPush();
  v8 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices();
  objc_autoreleasePoolPop(v7);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = [v8 count];
    v12 = 2112;
    v13 = handlesCopy;
    v14 = 2112;
    v15 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Found %d filenames with handles: %@ on services: %@", v11, 0x1Cu);
  }

  return v8;
}

- (id)attachmentsWithRoomNames:(id)names onServices:(id)services
{
  v16 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  v7 = objc_autoreleasePoolPush();
  v8 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices();
  objc_autoreleasePoolPop(v7);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = [v8 count];
    v12 = 2112;
    v13 = namesCopy;
    v14 = 2112;
    v15 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Found %d filenames with room names: %@ on services: %@ ", v11, 0x1Cu);
  }

  return v8;
}

- (id)messageActionItemsForOriginalMessageGUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID();
  if ([v5 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndex:v6];
      if (v8)
      {
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v8, 0, 1, 1);
        if (AttachmentIfNeededRef)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v7 addObject:AttachmentIfNeededRef];
        }
      }

      ++v6;
    }

    while ([v5 count] > v6);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = [v7 count];
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Found %d message action items for original message guid: %@", v12, 0x12u);
  }

  return v7;
}

- (id)frequentRepliesForForChatIdentifiers:(id)identifiers onServices:(id)services limit:(unint64_t)limit
{
  limitCopy = limit;
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  v9 = objc_autoreleasePoolPush();
  v10 = IMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesUpToLimit();
  objc_autoreleasePoolPop(v9);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109890;
    v13[1] = [v10 count];
    v14 = 2112;
    v15 = identifiersCopy;
    v16 = 2112;
    v17 = servicesCopy;
    v18 = 1024;
    v19 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found %d messages with handles: %@ on services: %@  limit: %d", v13, 0x22u);
  }

  return v10;
}

- (id)messagesWithReplyToGUID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessagesWithReplyToGUIDs();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef([v5 objectAtIndex:v7], 0, 0, 1);
      if (AttachmentIfNeededRef)
      {
        [v6 addObject:AttachmentIfNeededRef];
      }

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while ([v5 count] > v7);
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

+ (id)_missingMessageReadReceiptCache
{
  if (qword_281421390 != -1)
  {
    sub_22B7D5DB4();
  }

  v3 = qword_281421388;

  return v3;
}

- (void)addMissingMessageReadReceipt:(id)receipt
{
  v11 = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  v4 = +[IMDMessageStore _missingMessageReadReceiptCache];
  [v4 addObject:receiptCopy];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[IMDMessageStore _missingMessageReadReceiptCache];
      v7 = 138412546;
      v8 = receiptCopy;
      v9 = 2048;
      v10 = [v6 count];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Adding message GUID to readReceiptsForMissingMessage cache: %@ (size: %lu)", &v7, 0x16u);
    }
  }
}

- (BOOL)popReadReceiptForMissingGUID:(id)d
{
  dCopy = d;
  if ([dCopy length] && (+[IMDMessageStore _missingMessageReadReceiptCache](IMDMessageStore, "_missingMessageReadReceiptCache"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", dCopy), v4, v5))
  {
    v6 = +[IMDMessageStore _missingMessageReadReceiptCache];
    [v6 removeObject:dCopy];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateMessagesToRelayOnService:(id)service usingBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  blockCopy = block;
  v7 = objc_alloc_init(MEMORY[0x277D18ED8]);
  v8 = MEMORY[0x277CCAC30];
  v9 = *MEMORY[0x277D19FA8];
  v10 = *MEMORY[0x277D19FC8];
  v23 = serviceCopy;
  internalName = [serviceCopy internalName];
  v12 = [v8 predicateWithFormat:@"%K = %@ AND %K = %@", v9, MEMORY[0x277CBEC38], v10, internalName];

  v22 = v12;
  [v7 setPredicate:v12];
  [v7 setBatchSize:100];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if (![v18 itemType])
        {
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v18, 0, 1, 1);
          if (AttachmentIfNeededRef)
          {
            blockCopy[2](blockCopy, AttachmentIfNeededRef);
          }

          else
          {
            v20 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              guid = [v18 guid];
              *buf = 138412290;
              v29 = guid;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Could not fetch IMMessageItem from record guid: %@", buf, 0xCu);
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v15);
  }
}

- (id)chatForMessage:(id)message
{
  guid = [message guid];
  v5 = [(IMDMessageStore *)self chatForMessageGUID:guid];

  return v5;
}

- (id)chatForMessageGUID:(id)d enableVerboseLogging:(BOOL)logging
{
  v4 = [(IMDMessageStore *)self _chatsForMessageGUID:d enableVerboseLogging:logging];
  __imFirstObject = [v4 __imFirstObject];

  return __imFirstObject;
}

- (id)chatsForMessage:(id)message
{
  guid = [message guid];
  v5 = [(IMDMessageStore *)self chatsForMessageGUID:guid];

  return v5;
}

- (id)_chatsForMessageGUID:(id)d enableVerboseLogging:(BOOL)logging
{
  loggingCopy = logging;
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v23 = loggingCopy;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v6 = +[IMDChatStore sharedInstance];
  v7 = [v6 chatsGUIDsForMessageWithGUID:dCopy];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = v7;
      v32 = 2112;
      v33 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found chat guids: %@ for message guid: %@", buf, 0x16u);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = +[IMDChatRegistry sharedInstance];
        v15 = [v14 existingChatWithGUID:v13];

        if (v15)
        {
          [v5 addObject:v15];
        }

        else if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v31 = v13;
            v32 = 2112;
            v33 = dCopy;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Couldn't find existing chat with guid: %@ in IMDChatRegistry for messageGUID: %@", buf, 0x16u);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  if (v23)
  {
    v18 = IMDMessageStoreLogHandle(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "   Found Chats: %@", buf, 0xCu);
    }

LABEL_26:

    goto LABEL_27;
  }

  v19 = [v5 count];
  if (v19)
  {
    v18 = IMDMessageStoreLogHandle(v19);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v5 __imArrayByApplyingBlock:&unk_283F1A248];
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "   Found Chats: %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

LABEL_27:

  objc_autoreleasePoolPop(context);
LABEL_28:

  return v5;
}

- (id)chatForMessageIdentifier:(int64_t)identifier
{
  v3 = [(IMDMessageStore *)self _chatsForMessageIdentifier:identifier];
  __imFirstObject = [v3 __imFirstObject];

  return __imFirstObject;
}

- (id)existingChatForMessageGUID:(id)d
{
  dCopy = d;
  v4 = +[IMDChatStore sharedInstance];
  v5 = [v4 chatsGUIDsForMessageWithGUID:dCopy];

  __imFirstObject = [v5 __imFirstObject];

  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:__imFirstObject];

  return v8;
}

- (id)_chatsForMessageIdentifier:(int64_t)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = +[IMDChatStore sharedInstance];
  v5 = [v4 chatsGUIDsForMessageWithIdentifier:identifier];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v5;
      v26 = 2048;
      identifierCopy2 = identifier;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Found chat guids: %@ for message identifier: %lld", buf, 0x16u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v10 = *v20;
    *&v9 = 138412546;
    v17 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = +[IMDChatRegistry sharedInstance];
        v14 = [v13 existingChatWithGUID:v12];

        if (v14)
        {
          [v3 addObject:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v25 = v12;
            v26 = 2048;
            identifierCopy2 = identifier;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Couldn't find existing chat with guid: %@ in IMDChatRegistry for messageIdentifier: %lld", buf, 0x16u);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v3;
}

- (BOOL)_isValidPhoneNumber:(id)number forCountryCode:(id)code
{
  codeCopy = code;
  numberCopy = number;
  v7 = MEMORY[0x231897B50]("PNIsValidPhoneNumberForCountry", @"CorePhoneNumbers");
  v8 = v7(numberCopy, codeCopy);

  return v8;
}

- (id)cleanUnformattedPhoneNumber:(id)number countryCode:(id)code
{
  v20 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  codeCopy = code;
  v8 = numberCopy;
  v9 = [(IMDMessageStore *)self _isValidPhoneNumber:v8 forCountryCode:codeCopy];
  v10 = (([v8 hasPrefix:@"#"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"*")) && objc_msgSend(v8, "length") >= 5 && objc_msgSend(v8, "length") < 0xA;
  if ([v8 hasPrefix:@"444"])
  {
    v10 |= [v8 length] == 7;
  }

  v11 = v8;
  if ((v10 & 1) == 0)
  {
    v11 = v8;
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = 138412802;
          v15 = v8;
          v16 = 1024;
          v17 = 1;
          v18 = 1024;
          v19 = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Cleaning up symbols from unformatted phone number %@ based on phoneNumberIsValid %d and phoneNumberIsShortCode %d", &v14, 0x18u);
        }
      }

      v11 = [(IMDMessageStore *)self _cleanupPhoneNumber:v8];
    }
  }

  return v11;
}

- (id)updatedMessagesForMessages:(id)messages
{
  v37 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v26 = [messagesCopy arrayByApplyingSelector:sel_guid];
  v5 = [(IMDMessageStore *)self messagesWithGUIDs:?];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        guid = [v12 guid];
        [v6 setObject:v12 forKeyedSubscript:guid];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = messagesCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        guid2 = [v20 guid];
        v22 = [v6 objectForKeyedSubscript:guid2];

        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v20;
        }

        [v14 addObject:v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  v24 = [v14 copy];

  return v24;
}

- (void)resolveUnformattedRepresentationsForHandles:(id)handles onService:(id)service message:(id)message completionBlock:(id)block
{
  v76 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  serviceCopy = service;
  messageCopy = message;
  blockCopy = block;
  if (blockCopy)
  {
    v10 = blockCopy;
    v52 = [blockCopy copy];

    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = handlesCopy;
    v57 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (!v57)
    {
      goto LABEL_58;
    }

    v56 = *v64;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v64 != v56)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v61 = v11;
        v13 = *(*(&v63 + 1) + 8 * v11);
        v14 = [v13 ID];
        internalName = [serviceCopy internalName];
        v16 = [(IMDMessageStore *)self _copyHandle:v14 onService:internalName];

        if (v16)
        {
          countryCode = IMDHandleRecordCopyCountry();
          v18 = IMDHandleRecordCopyUncanonicalizedID();
          unformattedID = v18;
          if (countryCode)
          {
            if (v18)
            {
              goto LABEL_10;
            }

LABEL_17:
            unformattedID = [messageCopy unformattedID];
            if (!countryCode)
            {
              goto LABEL_18;
            }

LABEL_11:
            if (!unformattedID)
            {
              goto LABEL_19;
            }
          }

          else
          {
            countryCode = [messageCopy countryCode];
            if (!unformattedID)
            {
              goto LABEL_17;
            }

LABEL_10:
            if (countryCode)
            {
              goto LABEL_11;
            }

LABEL_18:
            countryCode = [v13 countryCode];
            if (!unformattedID)
            {
LABEL_19:
              unformattedID = [v13 unformattedID];
            }
          }

          v23 = [v13 ID];
          im_stripCategoryLabel = [v23 im_stripCategoryLabel];

          v60 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:im_stripCategoryLabel isoCountryCode:countryCode];
          v25 = MEMORY[0x277D6EEE8];
          im_stripCategoryLabel2 = [unformattedID im_stripCategoryLabel];
          if (countryCode)
          {
            v27 = [v25 normalizedPhoneNumberHandleForValue:im_stripCategoryLabel2 isoCountryCode:countryCode];
          }

          else
          {
            isoCountryCode = [v60 isoCountryCode];
            v27 = [v25 normalizedPhoneNumberHandleForValue:im_stripCategoryLabel2 isoCountryCode:isoCountryCode];
          }

          if (v27 && ([v27 isEquivalentToHandle:v60] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v68 = im_stripCategoryLabel;
                v69 = 2112;
                v70 = unformattedID;
                v71 = 2112;
                v72 = v60;
                v73 = 2112;
                v74 = v27;
                _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Canonicalized handle (%@) and unformatted handle (%@) were not equal - TU canonical: (%@) TU unformatted: (%@)", buf, 0x2Au);
              }
            }

            unformattedID = 0;
          }

          v30 = [(IMDMessageStore *)self cleanUnformattedPhoneNumber:unformattedID countryCode:countryCode];
          im_stripCategoryLabel3 = [v30 im_stripCategoryLabel];

          internalName2 = [serviceCopy internalName];
          if ([internalName2 isEqualToString:*MEMORY[0x277D1A608]])
          {
            personCentricID = [v13 personCentricID];
            __im_isSipHandle = [personCentricID __im_isSipHandle];

            if (__im_isSipHandle)
            {
              if (IMOSLoggingEnabled())
              {
                v35 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  personCentricID2 = [v13 personCentricID];
                  *buf = 138412546;
                  v68 = personCentricID2;
                  v69 = 2112;
                  v70 = im_stripCategoryLabel;
                  _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Found a chat bot sip handle %@, for %@", buf, 0x16u);
                }
              }

              v37 = MEMORY[0x277CBEAC0];
              personCentricID3 = [v13 personCentricID];
              v39 = [v37 dictionaryWithObjectsAndKeys:{im_stripCategoryLabel, @"__kIMDMessageStoreHandleCanonicalIDKey", personCentricID3, @"__kIMDMessageStoreHandleAlternateSIPID", im_stripCategoryLabel3, @"__kIMDMessageStoreHandleUnformattedIDKey", countryCode, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];

              if (!v39)
              {
                goto LABEL_41;
              }

LABEL_40:
              [v55 addObject:v39];
LABEL_41:

              CFRelease(v16);
              goto LABEL_56;
            }
          }

          else
          {
          }

          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{im_stripCategoryLabel, @"__kIMDMessageStoreHandleCanonicalIDKey", im_stripCategoryLabel3, @"__kIMDMessageStoreHandleUnformattedIDKey", countryCode, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];
          if (v39)
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        countryCode2 = [messageCopy countryCode];
        unformattedID2 = [messageCopy unformattedID];
        unformattedID3 = unformattedID2;
        if (countryCode2)
        {
          if (!unformattedID2)
          {
            goto LABEL_43;
          }
        }

        else
        {
          countryCode2 = [v13 countryCode];
          if (!unformattedID3)
          {
LABEL_43:
            unformattedID3 = [v13 unformattedID];
          }
        }

        v40 = MEMORY[0x277D6EEE8];
        v41 = [v13 ID];
        v42 = [v40 normalizedPhoneNumberHandleForValue:v41 isoCountryCode:countryCode2];

        v43 = MEMORY[0x277D6EEE8];
        if (countryCode2)
        {
          v44 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:unformattedID3 isoCountryCode:countryCode2];
        }

        else
        {
          isoCountryCode2 = [v42 isoCountryCode];
          v44 = [v43 normalizedPhoneNumberHandleForValue:unformattedID3 isoCountryCode:isoCountryCode2];
        }

        if (([v44 isEquivalentToHandle:v42] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = [v13 ID];
              *buf = 138413058;
              v68 = v47;
              v69 = 2112;
              v70 = unformattedID3;
              v71 = 2112;
              v72 = v42;
              v73 = 2112;
              v74 = v44;
              _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Canonicalized handle (%@) and unformatted handle (%@) were not equal - TU canonical: (%@) TU unformatted: (%@)", buf, 0x2Au);
            }
          }

          unformattedID3 = 0;
        }

        v48 = [(IMDMessageStore *)self cleanUnformattedPhoneNumber:unformattedID3 countryCode:countryCode2];
        v49 = MEMORY[0x277CBEAC0];
        v50 = [v13 ID];
        v51 = [v49 dictionaryWithObjectsAndKeys:{v50, @"__kIMDMessageStoreHandleCanonicalIDKey", v48, @"__kIMDMessageStoreHandleUnformattedIDKey", countryCode2, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];

        if (v51)
        {
          [v55 addObject:v51];
        }

LABEL_56:
        v11 = v61 + 1;
      }

      while (v57 != v61 + 1);
      v57 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (!v57)
      {
LABEL_58:

        (v52)[2](v52, v55);
        break;
      }
    }
  }
}

- (id)deleteMessageGUIDs:(id)ds inChat:(id)chat
{
  v47 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  chatCopy = chat;
  if (chatCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    IsFull = IMDSMSRecordIsFull();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    selfCopy = self;
    v30 = dsCopy;
    v9 = [(IMDMessageStore *)self _itemsWithGUIDs:dsCopy];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          guid = [v14 guid];
          if (guid)
          {
            [v8 addObject:guid];
          }

          v16 = +[IMDChatRegistry sharedInstance];
          [v16 removeMessage:v14 fromChat:chatCopy];
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v11);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    dsCopy = v30;
    v17 = v30;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [IMDMessageStore _updateCacheForMessageGUID:*(*(&v31 + 1) + 8 * j) fromMessage:0 toMessage:0 updateLastMessage:1 calculateUnreadCount:1, context];
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v19);
    }

    v22 = IMDSMSRecordIsFull();
    objc_autoreleasePoolPop(context);
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v8 count];
      *buf = 67109634;
      v40 = v24;
      v41 = 2112;
      v42 = v17;
      v43 = 2112;
      v44 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Deleted %d messages with guids: %@ in chat: %@", buf, 0x1Cu);
    }

    if (![v8 count])
    {

      v8 = 0;
    }

    guid2 = [chatCopy guid];
    [(IMDMessageStore *)selfCopy updateStampForGUID:guid2];

    sub_22B5DC120(IsFull != 0, v22 != 0);
  }

  else
  {
    v8 = [(IMDMessageStore *)self deleteMessageGUIDs:dsCopy];
  }

  return v8;
}

- (id)deleteMessageGUIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  IsFull = IMDSMSRecordIsFull();
  v22 = 0;
  IMDMessageRecordDeleteMessagesForGUIDs();
  v7 = 0;
  if (v7)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [IMDMessageStore _updateCacheForMessageGUID:*(*(&v18 + 1) + 8 * i) fromMessage:0 toMessage:0 updateLastMessage:1 calculateUnreadCount:1, v18];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v10);
    }

    v13 = IMDSMSRecordIsFull();
    mEMORY[0x277D1AA10] = [MEMORY[0x277D1AA10] sharedInstance];
    [mEMORY[0x277D1AA10] deleteInteractionsWithMessageGUIDs:v8];

    objc_autoreleasePoolPop(v5);
    [(IMDMessageStore *)self updateStamp];
    sub_22B5DC120(IsFull != 0, v13 != 0);
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 count];
      *buf = 67109378;
      v24 = v16;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Deleted %d messages with guids: %@", buf, 0x12u);
    }
  }

  return dsCopy;
}

- (void)_deleteMessagesWithGUIDs:(id)ds chatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services batchNumber:(unint64_t)number completion:(id)completion
{
  dsCopy = ds;
  identifiersCopy = identifiers;
  servicesCopy = services;
  completionCopy = completion;
  v28 = dsCopy;
  v16 = [dsCopy count];
  numberCopy = number;
  v17 = 1000 * number;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([identifiersCopy count])
  {
    v19 = 0;
    do
    {
      v20 = [identifiersCopy objectAtIndex:{v19, numberCopy}];
      v21 = [servicesCopy objectAtIndex:v19];
      v22 = IMCopyGUIDForChat();

      if ([v22 length])
      {
        [v18 addObject:v22];
      }

      ++v19;
    }

    while (v19 < [identifiersCopy count]);
  }

  if (v17 >= v16)
  {
    v24 = completionCopy;
    v23 = v28;
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B5E6F18;
    v29[3] = &unk_278705FA8;
    v36 = v16;
    v37 = v17;
    v23 = v28;
    v30 = v28;
    v38 = numberCopy;
    v31 = identifiersCopy;
    v32 = servicesCopy;
    v24 = completionCopy;
    v33 = v18;
    selfCopy = self;
    styleCopy = style;
    v35 = completionCopy;
    [(IMDMessageStore *)self _performBlock:v29 afterDelay:2.0];
  }
}

- (id)deleteMessagesWithChatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services completion:(id)completion
{
  styleCopy = style;
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  completionCopy = completion;
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = identifiersCopy;
    v21 = 2112;
    v22 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "deleteMessageswithChatIdentifiers: %@ onServices: %@", &v19, 0x16u);
  }

  v14 = objc_autoreleasePoolPush();
  v15 = IMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices();
  v16 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v15 count];
    v19 = 67109120;
    LODWORD(v20) = v17;
    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Found %d messages to delete", &v19, 8u);
  }

  [(IMDMessageStore *)self _deleteMessagesWithGUIDs:v15 chatIdentifiers:identifiersCopy style:styleCopy onServices:servicesCopy batchNumber:0 completion:completionCopy];
  objc_autoreleasePoolPop(v14);
  if (![v15 count])
  {

    v15 = 0;
  }

  return v15;
}

- (id)deleteMessagesWithReplaceMessageID:(int)d fromHandle:(id)handle onService:(id)service
{
  v6 = *&d;
  v28 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  serviceCopy = service;
  v10 = [(IMDMessageStore *)self messageWithReplaceMessageID:v6 fromHandle:handleCopy onService:serviceCopy];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    guid = [v10 guid];

    if (guid)
    {
      guid2 = [v10 guid];
      [v11 addObject:guid2];

      guid3 = [v10 guid];
      v15 = IMSingleObjectArray();
      v16 = [(IMDMessageStore *)self deleteMessageGUIDs:v15];
    }

    v17 = +[IMDBroadcastController sharedProvider];
    broadcasterForChatListeners = [v17 broadcasterForChatListeners];
    [broadcasterForChatListeners historicalMessageGUIDsDeleted:v11 chatGUIDs:0 queryID:0];
  }

  else
  {
    v11 = 0;
  }

  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67109890;
    v21[1] = [v11 count];
    v22 = 1024;
    v23 = v6;
    v24 = 2112;
    v25 = handleCopy;
    v26 = 2112;
    v27 = serviceCopy;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Deleted %d messages with replace ID: %d from handle: %@ on service: %@", v21, 0x22u);
  }

  return v11;
}

- (void)signalUnreadChangeForHandle:(id)handle
{
  handleCopy = handle;
  v4 = [handleCopy copy];
  v5 = IMBiomeQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B5E7620;
  v8[3] = &unk_278702FA0;
  v9 = v4;
  v10 = handleCopy;
  v6 = handleCopy;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (BOOL)markMessageGUIDUnread:(id)unread
{
  v21[1] = *MEMORY[0x277D85DE8];
  unreadCopy = unread;
  v5 = [(IMDMessageStore *)self chatForMessageGUID:unreadCopy];
  if (v5)
  {
    IMDMessageRecordMarkMessageGUIDUnread();
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Reindexing messages as unread in spotlight", &v19, 2u);
      }
    }

    v21[0] = unreadCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    IMDCoreSpotlightReindexMessagesWhileBlocking();

    v8 = [(IMDMessageStore *)self messageWithGUID:unreadCopy];
    v9 = v8 != 0;
    if (v8)
    {
      v10 = +[IMDBroadcastController sharedProvider];
      v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v5, "isBlackholed")}];

      accountID = [v5 accountID];
      chatIdentifier = [v5 chatIdentifier];
      -[NSObject account:chat:style:messageUpdated:suppressNotification:](v11, "account:chat:style:messageUpdated:suppressNotification:", accountID, chatIdentifier, [v5 style], v8, 1);

      if (([objc_opt_class() _updateCacheForMessageGUID:unreadCopy fromMessage:0 toMessage:0 updateLastMessage:0 calculateUnreadCount:1] & 1) == 0)
      {
        v14 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = unreadCopy;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Attempted to mark a message as unread that wasn't the last message: %@", &v19, 0xCu);
        }

        v15 = +[IMDChatRegistry sharedInstance];
        [v15 updateStateForChat:v5 forcePost:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
      }

      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = unreadCopy;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Marked %@ as unread", &v19, 0xCu);
      }

      handle = [v8 handle];
      [(IMDMessageStore *)self signalUnreadChangeForHandle:handle];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5DC8();
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5E30();
    }

    v9 = 0;
  }

  return v9;
}

- (id)markMessagesAsReadWithIdentifiers:(id)identifiers onServices:(id)services chatStyle:(unsigned __int8)style upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me
{
  meCopy = me;
  selfCopy = self;
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  dCopy = d;
  dateCopy = date;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([identifiersCopy count])
  {
    v16 = 0;
    do
    {
      v17 = [identifiersCopy objectAtIndex:{v16, selfCopy}];
      v18 = [servicesCopy objectAtIndex:v16];
      v19 = IMCopyGUIDForChat();

      if (v19)
      {
        [v15 addObject:v19];
      }

      ++v16;
    }

    while (v16 < [identifiersCopy count]);
  }

  v20 = dCopy;
  selfCopy = [(IMDMessageStore *)selfCopy markMessagesAsReadWithChatGUIDs:v15 upToGUID:dCopy readDate:dateCopy fromMe:meCopy, selfCopy];
  if (![selfCopy count])
  {

    selfCopy = 0;
  }

  v22 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v27 = [selfCopy count];
    v28 = 2112;
    v29 = identifiersCopy;
    v30 = 2112;
    v31 = servicesCopy;
    v32 = 1024;
    v33 = meCopy;
    _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Marked %d messages as read with handles: %@ on service: %@  from me: %{BOOL}d", buf, 0x22u);
  }

  return selfCopy;
}

- (id)markMessagesAsReadWithChatGUIDs:(id)ds upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  dateCopy = date;
  v13 = objc_autoreleasePoolPush();
  MessagesPriorToGuidMatchingChatGUIDs = IMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs();
  objc_autoreleasePoolPop(v13);
  if (![MessagesPriorToGuidMatchingChatGUIDs count])
  {

    MessagesPriorToGuidMatchingChatGUIDs = 0;
  }

  if ([MessagesPriorToGuidMatchingChatGUIDs count])
  {
    [(IMDMessageStore *)self updateStampForGUIDs:dsCopy];
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    v28 = dCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = dsCopy;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = +[IMDChatRegistry sharedInstance];
          v24 = [v23 existingChatWithGUID:v22];

          if (v24)
          {
            [v24 updateTimeSensitiveExpirationDateForReadIfNeeded];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v19);
    }

    dCopy = v28;
  }

  v25 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MessagesPriorToGuidMatchingChatGUIDs count];
    *buf = 67109634;
    v34 = v26;
    v35 = 2112;
    v36 = dsCopy;
    v37 = 1024;
    v38 = meCopy;
    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "Marked %d messages as read with chat guid: %@ from me: %{BOOL}d", buf, 0x18u);
  }

  return MessagesPriorToGuidMatchingChatGUIDs;
}

- (void)_unreadCountControllerDidUpdate:(id)update
{
  updateCopy = update;
  object = [updateCopy object];
  unreadCountController = [(IMDMessageStore *)self unreadCountController];

  if (object == unreadCountController)
  {
    userInfo = [updateCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D1A870]];

    [(IMDMessageStore *)self _rebuildUnreadMessageCountRefreshingReports:0 guids:0 delta:v7];
  }
}

- (IMUnreadCountReportDelta)unreadCountReportDeltaForSetupInfo
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    [(IMDMessageStore *)self _performDeferredUnreadCountRefreshIfNeeded];
    unreadCountController = [(IMDMessageStore *)self unreadCountController];
    fullReplacementDelta = [unreadCountController fullReplacementDelta];
  }

  else
  {
    fullReplacementDelta = 0;
  }

  return fullReplacementDelta;
}

- (int64_t)_calculateUnreadMessagesCountFilteredByFocus:(BOOL)focus filteredByAssistiveAccess:(BOOL)access
{
  focusCopy = focus;
  v38 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9D0] = [MEMORY[0x277D1A9D0] sharedManager];
  mEMORY[0x277D1A8A0] = [MEMORY[0x277D1A8A0] sharedManager];
  v22 = +[IMDChatRegistry sharedInstance];
  cachedChats = [v22 cachedChats];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v34 = [cachedChats count];
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Calculating unread message count from %ld cached chats.", buf, 0xCu);
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = cachedChats;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v8)
  {
    v28 = 0;
    v9 = 0;
    goto LABEL_35;
  }

  v28 = 0;
  v9 = 0;
  v10 = *v30;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * i);
      unreadCount = [v12 unreadCount];
      if (unreadCount)
      {
        if (!focusCopy)
        {
          if (access)
          {
            goto LABEL_20;
          }

          goto LABEL_25;
        }

        v4 = [(IMDMessageStore *)self _handleStringsForChat:v12];
        if ([mEMORY[0x277D1A9D0] activeFocusModeMatchesConversationWithHandleStrings:v4])
        {
          if (!access)
          {

            goto LABEL_25;
          }

LABEL_20:
          v16 = [(IMDMessageStore *)self _handleIDsForChat:v12];
          v17 = [mEMORY[0x277D1A8A0] allowsConversationWithHandleIDs:v16];

          if (focusCopy)
          {

            if ((v17 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_25:
            v28 += unreadCount;
LABEL_30:
            v9 += unreadCount;
            continue;
          }

          if (v17)
          {
            goto LABEL_25;
          }
        }

        else
        {
        }

LABEL_26:
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            guid = [v12 guid];
            *buf = 138412290;
            v34 = guid;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Chat with guid is not allowed: %@", buf, 0xCu);
          }
        }

        goto LABEL_30;
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          guid2 = [v12 guid];
          *buf = 138412290;
          v34 = guid2;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Chat with guid (%@) did not have an unread count greater than 0.", buf, 0xCu);
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v8);
LABEL_35:

  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v34 = v28;
    v35 = 2048;
    v36 = v9;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Determined unread badge count is %ld after filtering, totalUnreadCount: %ld", buf, 0x16u);
  }

  return v28;
}

- (id)_handleStringsForChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  participants = [chat participants];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = participants;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) ID];
        im_stripCategoryLabel = [v10 im_stripCategoryLabel];

        if ([im_stripCategoryLabel length])
        {
          [v4 addObject:im_stripCategoryLabel];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)_handleIDsForChat:(id)chat
{
  participants = [chat participants];
  v4 = [participants __imArrayByApplyingBlock:&unk_283F1A288];

  return v4;
}

- (void)cleanseAttachments
{
  mEMORY[0x277D18EE8] = [MEMORY[0x277D18EE8] sharedInstance];
  [mEMORY[0x277D18EE8] cleanseOrphanedFileTransfers];
}

- (BOOL)isAttachmentReferencedByMessage:(id)message
{
  *&v19[13] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = IMMessageGuidFromIMFileTransferGuid();
  if (v5)
  {
    v6 = [(IMDMessageStore *)self itemWithGUID:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        balloonBundleID = [v7 balloonBundleID];
        v9 = [balloonBundleID length];

        v10 = [v7 messagePartIndexForAttachmentMessagePartWithTransferGUID:messageCopy];
        if (!v9 && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            balloonBundleID2 = [v7 balloonBundleID];
            v16 = 138412802;
            v17 = messageCopy;
            v18 = 1024;
            *v19 = 0;
            v19[2] = 2112;
            *&v19[3] = balloonBundleID2;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Attachment %@ orphaned: not in message(nil:%{BOOL}d), bundle %@", &v16, 0x1Cu);
          }

LABEL_19:

          goto LABEL_20;
        }

        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        if (([v7 actionIsGroupPhoto]& 1) == 0)
        {
          v11 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412546;
            v17 = messageCopy;
            v18 = 2048;
            *v19 = [v7 actionType];
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Attachment %@ orphaned: not in group action type %lu", &v16, 0x16u);
          }

          goto LABEL_19;
        }

LABEL_13:

        v13 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = messageCopy;
        v18 = 2048;
        *v19 = [v6 type];
        v14 = "Attachment %@ orphaned: not in item type %lu";
        goto LABEL_16;
      }
    }

    else
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = messageCopy;
        v18 = 2112;
        *v19 = v5;
        v14 = "Attachment %@ orphaned: mssage %@ not found";
LABEL_16:
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x16u);
      }
    }

LABEL_20:

    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (void)_suppressDBUpdateTimerFired
{
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "suppress DB update timer fired", v5, 2u);
  }

  [(NSTimer *)self->_suppressedUpdatesTimer invalidate];
  suppressedUpdatesTimer = self->_suppressedUpdatesTimer;
  self->_suppressedUpdatesTimer = 0;

  self->_suppressedUpdates = 0;
  [(IMDMessageStore *)self updateStamp];
}

- (void)setSuppressDatabaseUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v12 = *MEMORY[0x277D85DE8];
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = updatesCopy;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "setSuppressDatabaseUpdates called with suppressUpdates %d ", buf, 8u);
  }

  suppressedUpdatesTimer = self->_suppressedUpdatesTimer;
  if (suppressedUpdatesTimer)
  {
    [(NSTimer *)suppressedUpdatesTimer invalidate];
    v7 = self->_suppressedUpdatesTimer;
    self->_suppressedUpdatesTimer = 0;
  }

  self->_suppressedUpdates = updatesCopy;
  if (updatesCopy)
  {
    mainThread = [MEMORY[0x277CCACC8] mainThread];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B5E8B58;
    v9[3] = &unk_278702FF0;
    v9[4] = self;
    [mainThread __im_performBlock:v9];
  }

  else
  {
    [(IMDMessageStore *)self updateStamp];
  }
}

- (void)retractPostedNotificationsForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  v4 = IMSupportsUserNotifications();
  if (dsCopy && v4 && [dsCopy count])
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Going to retract user notifications for read messages", v6, 2u);
    }

    IMDNotificationsRetractNotificationsForReadMessages();
  }
}

- (void)retractPostedNotificationsForMessagesMatchingChatGUIDs:(id)ds
{
  v8 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = IMSupportsUserNotifications();
  if (dsCopy && v4 && [dsCopy count])
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = dsCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Retract notification for messages matching chats: %@", &v6, 0xCu);
    }

    IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs();
  }
}

- (void)postUrgentNotificationsForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  if (IMSupportsUserNotifications() && [dsCopy count])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Posting urgent notifications for messages", v8, 2u);
    }

    v5 = +[IMDAccountController sharedInstance];
    activeAliases = [v5 activeAliases];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];
    IMDNotificationsPostUrgentNotificationsForMessages();
  }
}

- (void)updatePostedNotificationsForMessageGUIDs:(id)ds
{
  v10 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (IMSupportsUserNotifications() && [dsCopy count])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = dsCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Updating posted notifications for messages: %@", &v8, 0xCu);
    }

    v5 = +[IMDAccountController sharedInstance];
    activeAliases = [v5 activeAliases];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];
    IMDNotificationsUpdatePostedNotificationsForMessages();
  }
}

- (void)__postDBUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel___postDBUpdate object:0];
  v3 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatDatabaseListeners = [v3 broadcasterForChatDatabaseListeners];
  modificationStamp = [(IMDMessageStore *)self modificationStamp];
  [broadcasterForChatDatabaseListeners databaseUpdated:modificationStamp];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(broadcasterForChatDatabaseListeners) = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (broadcasterForChatDatabaseListeners)
  {
    deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
    allObjects = [deferredRebuildGUIDs allObjects];

    deferredRebuildGUIDs2 = [(IMDMessageStore *)self deferredRebuildGUIDs];
    [deferredRebuildGUIDs2 removeAllObjects];

    [(IMDMessageStore *)self rebuildUnreadMessageCountForGUIDs:allObjects];
  }

  else
  {
    [(IMDMessageStore *)self postCountChanges];
  }

  if (IMSupportsUserNotifications())
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Going to post user notifications", v12, 2u);
    }

    notificationContext = [(IMDMessageStore *)self notificationContext];
    IMDNotificationsPostNotificationsWithContext();
  }
}

- (void)_updateStamp
{
  [(IMDMessageStore *)self _updateModificationDate];
  if (!self->_suppressedUpdates)
  {

    MEMORY[0x2821F9670](self, sel__postDBUpdate);
  }
}

- (void)updateStampForGUID:(id)d
{
  v7[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v7[0] = dCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(IMDMessageStore *)self updateStampForGUIDs:v6];
  }

  else
  {
    [(IMDMessageStore *)self updateStamp];
  }
}

- (void)updateStampForGUIDs:(id)ds
{
  dsCopy = ds;
  deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [deferredRebuildGUIDs addObjectsFromArray:dsCopy];

  MEMORY[0x2821F9670](self, sel__updateStamp);
}

- (id)reassignIdentifierForExistingMessageWithGUID:(id)d toNewGUID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy && iDCopy)
  {
    v9 = [(IMDMessageStore *)self messageWithGUID:dCopy];
    v10 = IMDatabaseLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412546;
        v19 = dCopy;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Updating message GUID from %@ to %@", buf, 0x16u);
      }

      [v9 setGuid:v8];
      [v9 setOriginalGUID:dCopy];
      synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
      [synchronousDatabase reassignIdentifierForMessageWithGUID:dCopy newGUID:v8 completionHandler:&unk_283F1A2A8];

      v17 = dCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      IMDCoreSpotlightDeleteMessageGUIDS();

      v14 = [(IMDMessageStore *)self storeMessage:v9 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];
      v9 = v9;
      v15 = v9;
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "No existing item for updating for %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Either oldGUID or newGUID is nil.", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)databaseChatSpamUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatDatabaseListeners = [v5 broadcasterForChatDatabaseListeners];
  [broadcasterForChatDatabaseListeners databaseChatSpamUpdated:updatedCopy];
}

- (id)notificationContext
{
  v2 = +[IMDAccountController sharedInstance];
  activeAliases = [v2 activeAliases];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];

  return v4;
}

- (void)rebuildLastFailedMessageDate
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    cachedLastFailedMessageDate = self->_cachedLastFailedMessageDate;
    self->_cachedLastFailedMessageDate = 0;

    if (self->_suppressedUpdates)
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Suppressed: Rebuilding lastFailedMessageDateChanged", &v9, 2u);
      }
    }

    else
    {
      lastFailedMessageDate = [(IMDMessageStore *)self lastFailedMessageDate];
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = lastFailedMessageDate;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Rebuilding lastFailedMessageDateChanged with new value: %lld ", &v9, 0xCu);
      }

      v7 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatCountsListeners = [v7 broadcasterForChatCountsListeners];
      [broadcasterForChatCountsListeners lastFailedMessageDateChanged:lastFailedMessageDate];

      v4 = +[IMDBadgeUtilities sharedInstance];
      [v4 updateBadgeForLastFailedMessageDateChangeIfNeeded:lastFailedMessageDate];
    }
  }
}

- (void)_refreshUnreadCountControllerForGUIDs:(id)ds
{
  v31 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_22B4D7730;
    v28 = sub_22B4D78F4;
    v29 = 0;
    if (-[IMDMessageStore _shouldBroadcastDeltas](self, "_shouldBroadcastDeltas") && [dsCopy count])
    {
      synchronousDatabaseQueryProvider = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22B5E9B30;
      v23[3] = &unk_278705FF0;
      v23[4] = &v24;
      [synchronousDatabaseQueryProvider generateUnreadCountReportsForChatsWithGUIDs:dsCopy completionHandler:v23];

      if (v25[5])
      {
        unreadCountController3 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = v25[5];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
        if (v10)
        {
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v9);
              }

              guid = [*(*(&v19 + 1) + 8 * v12) guid];
              [unreadCountController3 removeObject:guid];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
          }

          while (v10);
        }

        if ([v25[5] count])
        {
          unreadCountController = [(IMDMessageStore *)self unreadCountController];
          [unreadCountController updateReports:v25[5]];
        }

        if ([unreadCountController3 count])
        {
          unreadCountController2 = [(IMDMessageStore *)self unreadCountController];
          allObjects = [unreadCountController3 allObjects];
          [unreadCountController2 clearUnreadCountForChatsWithGUIDs:allObjects];
        }

        goto LABEL_18;
      }
    }

    else
    {
      synchronousDatabaseQueryProvider2 = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22B5E9B40;
      v18[3] = &unk_278705FF0;
      v18[4] = &v24;
      [synchronousDatabaseQueryProvider2 generateUnreadCountReportsWithCompletionHandler:v18];

      if (v25[5])
      {
        unreadCountController3 = [(IMDMessageStore *)self unreadCountController];
        [unreadCountController3 replaceReports:v25[5]];
LABEL_18:

        _Block_object_dispose(&v24, 8);
        goto LABEL_20;
      }
    }

    _Block_object_dispose(&v24, 8);
  }

LABEL_20:
}

- (void)_expiredTimeSensitiveMessagesDetected:(id)detected
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5E9BC4;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_clearExpiredTimeSensitiveMessages
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Clearing expired time sensitive messages", v4, 2u);
  }

  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  [synchronousDatabase clearExpiredTimeSensitiveMessagesWithCompletionHandler:&unk_283F1A2C8];
}

- (id)_cachedUnreadCountReports
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    unreadCountController = [(IMDMessageStore *)self unreadCountController];
    cachedUnreadReports = [unreadCountController cachedUnreadReports];
  }

  else
  {
    cachedUnreadReports = 0;
  }

  return cachedUnreadReports;
}

- (BOOL)_shouldBroadcastDeltas
{
  unreadCountController = [(IMDMessageStore *)self unreadCountController];
  cachedUnreadReportsCount = [unreadCountController cachedUnreadReportsCount];
  LOBYTE(cachedUnreadReportsCount) = cachedUnreadReportsCount > IMGetCachedDomainIntForKeyWithDefaultValue();

  return cachedUnreadReportsCount;
}

- (BOOL)_shouldSendBackwardsCompatibleUnreadCountUpdates
{
  if (qword_281421370 != -1)
  {
    sub_22B7D5E98();
  }

  return byte_27D8CFF08;
}

- (void)_rebuildUnreadMessageCountRefreshingReports:(BOOL)reports guids:(id)guids delta:(id)delta
{
  reportsCopy = reports;
  *&v38[5] = *MEMORY[0x277D85DE8];
  guidsCopy = guids;
  deltaCopy = delta;
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v37 = 67109376;
          v38[0] = reportsCopy;
          LOWORD(v38[1]) = 1024;
          *(&v38[1] + 2) = deltaCopy != 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Rebuilding unread message count refreshing reports %{BOOL}d should broadcast %{BOOL}d", &v37, 0xEu);
        }
      }
    }

    else
    {
      cachedUnreadMessageCount = self->_cachedUnreadMessageCount;
      self->_cachedUnreadMessageCount = 0;
    }

    suppressedUpdates = self->_suppressedUpdates;
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled2 = [mEMORY[0x277D1A9B8]2 isUnreadCountRefactorEnabled];

    if (suppressedUpdates)
    {
      if (isUnreadCountRefactorEnabled2)
      {
        self->_deferredUnreadCountRefresh = 1;
      }

      v17 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Suppressed: Rebuilding/Broadcasting unreadCountChanged", &v37, 2u);
      }

LABEL_39:

      goto LABEL_40;
    }

    if ((isUnreadCountRefactorEnabled2 & reportsCopy) == 1)
    {
      [(IMDMessageStore *)self _refreshUnreadCountControllerForGUIDs:guidsCopy];
    }

    unreadMessagesCount = [(IMDMessageStore *)self unreadMessagesCount];
    if (deltaCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v37 = 134217984;
          *v38 = unreadMessagesCount;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Broadcasting unreadCountChanged with new value: %lld ", &v37, 0xCu);
        }
      }

      mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isUnreadCountRefactorEnabled3 = [mEMORY[0x277D1A9B8]3 isUnreadCountRefactorEnabled];

      if (isUnreadCountRefactorEnabled3)
      {
        if ([deltaCopy isReplacement])
        {
          v22 = 1;
        }

        else if ([(IMDMessageStore *)self _shouldBroadcastDeltas])
        {
          v22 = 0;
        }

        else
        {
          unreadCountController = [(IMDMessageStore *)self unreadCountController];
          fullReplacementDelta = [unreadCountController fullReplacementDelta];

          v22 = 1;
          deltaCopy = fullReplacementDelta;
        }

        v27 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatCountsListeners = [v27 broadcasterForChatCountsListeners];
        [broadcasterForChatCountsListeners unreadCountReportsUpdated:deltaCopy];

        if (![(IMDMessageStore *)self _shouldSendBackwardsCompatibleUnreadCountUpdates])
        {
          goto LABEL_34;
        }

        if (v22)
        {
          fullReplacementDelta2 = deltaCopy;
        }

        else
        {
          unreadCountController2 = [(IMDMessageStore *)self unreadCountController];
          fullReplacementDelta2 = [unreadCountController2 fullReplacementDelta];
        }

        broadcasterForChatCountsListeners2 = +[IMDBroadcastController sharedProvider];
        v30 = [broadcasterForChatCountsListeners2 broadcasterForChatCountsListenersWithAdditionalCapabilities:0x100000000];
        updatedReports = [fullReplacementDelta2 updatedReports];
        [v30 unreadCountChanged:unreadMessagesCount reports:updatedReports];
      }

      else
      {
        fullReplacementDelta2 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatCountsListeners2 = [fullReplacementDelta2 broadcasterForChatCountsListeners];
        [broadcasterForChatCountsListeners2 unreadCountChanged:unreadMessagesCount];
      }
    }

    else
    {
      deltaCopy = 0;
    }

LABEL_34:
    [(IMDMessageStore *)self _notifyWidgetKitTimeline:unreadMessagesCount];
    if ([(IMDMessageStore *)self _shouldUseBadgeUtilities])
    {
      v32 = +[IMDBadgeUtilities sharedInstance];
      [v32 updateBadgeForUnreadCountChangeIfNeeded:unreadMessagesCount];
    }

    lastFailedMessageDate = [(IMDMessageStore *)self lastFailedMessageDate];
    v34 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 134217984;
      *v38 = lastFailedMessageDate;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_DEFAULT, "Broadcasting lastFailedMessageDateChanged with new value: %lld ", &v37, 0xCu);
    }

    v35 = +[IMDBroadcastController sharedProvider];
    broadcasterForChatCountsListeners3 = [v35 broadcasterForChatCountsListeners];
    [broadcasterForChatCountsListeners3 lastFailedMessageDateChanged:lastFailedMessageDate];

    v17 = +[IMDBadgeUtilities sharedInstance];
    [v17 updateBadgeForLastFailedMessageDateChangeIfNeeded:lastFailedMessageDate];
    goto LABEL_39;
  }

LABEL_40:
}

- (void)postCountChanges
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    if (self->_suppressedUpdates)
    {
      v3 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Suppressed: Broadcasting unreadCountChanged", &v14, 2u);
      }

      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Suppressed: Broadcasting lastFailedMessageDateChanged", &v14, 2u);
      }
    }

    else
    {
      unreadMessagesCount = [(IMDMessageStore *)self unreadMessagesCount];
      lastFailedMessageDate = [(IMDMessageStore *)self lastFailedMessageDate];
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = unreadMessagesCount;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting unreadCountChanged with new value: %lld ", &v14, 0xCu);
      }

      v8 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatCountsListeners = [v8 broadcasterForChatCountsListeners];
      [broadcasterForChatCountsListeners unreadCountChanged:unreadMessagesCount];

      [(IMDMessageStore *)self _notifyWidgetKitTimeline:unreadMessagesCount];
      if ([(IMDMessageStore *)self _shouldUseBadgeUtilities])
      {
        v10 = +[IMDBadgeUtilities sharedInstance];
        [v10 updateBadgeForUnreadCountChangeIfNeeded:unreadMessagesCount];
      }

      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = lastFailedMessageDate;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Broadcasting lastFailedMessageDateChanged with new value: %lld ", &v14, 0xCu);
      }

      v12 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatCountsListeners2 = [v12 broadcasterForChatCountsListeners];
      [broadcasterForChatCountsListeners2 lastFailedMessageDateChanged:lastFailedMessageDate];

      v4 = +[IMDBadgeUtilities sharedInstance];
      [v4 updateBadgeForLastFailedMessageDateChangeIfNeeded:lastFailedMessageDate];
    }
  }
}

- (void)_notifyWidgetKitTimeline:(int64_t)timeline
{
  if ([(IMDMessageStore *)self _isPrimaryMessageStore]&& [(IMDMessageStore *)self lastNotifiedUnreadCount]!= timeline)
  {

    MEMORY[0x2821F9670](self, sel_setLastNotifiedUnreadCount_);
  }
}

- (id)replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender
{
  v53 = *MEMORY[0x277D85DE8];
  acknowledgmentCopy = acknowledgment;
  dCopy = d;
  senderCopy = sender;
  if (!acknowledgmentCopy)
  {
    v9 = dCopy;
    *buf = xmmword_278706010;
    *&buf[16] = *off_278706020;
    v52 = 3200;
    v10 = MEMORY[0x277CCACA8];
    v11 = IMFileLocationTrimFileName();
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v13 = [v10 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"newGUID", "-[IMDMessageStore replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v11, 3200, v12];

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v9;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!dCopy)
  {
LABEL_10:
    v16 = dCopy;
    *buf = xmmword_278706038;
    *&buf[16] = *off_278706048;
    v52 = 3201;
    v17 = MEMORY[0x277CCACA8];
    v18 = IMFileLocationTrimFileName();
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v20 = [v17 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"associatedMessageGUID", "-[IMDMessageStore replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v18, 3201, v19];

    v21 = IMGetAssertionFailureHandler();
    if (v21)
    {
      v21(v20);
    }

    else
    {
      warning2 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v16;
  }

LABEL_16:
  v48 = dCopy;
  v23 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender();
  v49 = 0;
  if (v49)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v49 localizedDescription];
        *buf = 138412290;
        *&buf[4] = localizedDescription;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Deleting previous acknowledgments failed with error: %@", buf, 0xCu);
      }
    }

    v26 = 0;
    goto LABEL_47;
  }

  Count = CFArrayGetCount(v23);
  if (Count < 1)
  {
    v26 = 0;
    v28 = 0;
    goto LABEL_46;
  }

  v26 = 0;
  v28 = 0;
  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
    if (!ValueAtIndex)
    {
      continue;
    }

    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(ValueAtIndex, 0, 1, 1);
    v32 = AttachmentIfNeededRef;
    if (AttachmentIfNeededRef)
    {
      v33 = [AttachmentIfNeededRef associatedMessageType] & 0xFFFFFFFFFFFFFFF8;
      if (v33 != 3000 && v33 != 2000 || ([v32 guid], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", acknowledgmentCopy), v34, (v35 & 1) != 0))
      {
        v36 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          guid = [v32 guid];
          associatedMessageGUID = [v32 associatedMessageGUID];
          associatedMessageType = [v32 associatedMessageType];
          *buf = 138412802;
          *&buf[4] = guid;
          *&buf[12] = 2112;
          *&buf[14] = associatedMessageGUID;
          *&buf[22] = 2048;
          *&buf[24] = associatedMessageType;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Will NOT delete old ack %@: %@: %lld", buf, 0x20u);
        }

        goto LABEL_40;
      }

      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        guid2 = [v32 guid];
        associatedMessageGUID2 = [v32 associatedMessageGUID];
        associatedMessageType2 = [v32 associatedMessageType];
        *buf = 138412802;
        *&buf[4] = guid2;
        *&buf[12] = 2112;
        *&buf[14] = associatedMessageGUID2;
        *&buf[22] = 2048;
        *&buf[24] = associatedMessageType2;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Will delete old ack %@: %@: %lld", buf, 0x20u);
      }

      if (v26)
      {
        if (!v28)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!v28)
        {
LABEL_38:
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }
      }

      guid3 = [v32 guid];
      [v28 addObject:guid3];

      [v26 addObject:v32];
    }

LABEL_40:
  }

  if (v28 && [v28 count])
  {
    v45 = [(IMDMessageStore *)self deleteMessageGUIDs:v28];
  }

LABEL_46:

LABEL_47:
  if (v23)
  {
    CFRelease(v23);
  }

  return v26;
}

- (id)replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender
{
  v53 = *MEMORY[0x277D85DE8];
  acknowledgmentCopy = acknowledgment;
  dCopy = d;
  senderCopy = sender;
  v50 = acknowledgmentCopy;
  if (!acknowledgmentCopy)
  {
    v9 = dCopy;
    *buf = xmmword_278706060;
    *&buf[16] = *off_278706070;
    v52 = 3258;
    v10 = MEMORY[0x277CCACA8];
    v11 = IMFileLocationTrimFileName();
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v13 = [v10 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"newGUID", "-[IMDMessageStore replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v11, 3258, v12];

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v9;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!dCopy)
  {
LABEL_10:
    v16 = dCopy;
    *buf = xmmword_278706088;
    *&buf[16] = *off_278706098;
    v52 = 3259;
    v17 = MEMORY[0x277CCACA8];
    v18 = IMFileLocationTrimFileName();
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v20 = [v17 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"associatedMessageGUID", "-[IMDMessageStore replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v18, 3259, v19];

    v21 = IMGetAssertionFailureHandler();
    if (v21)
    {
      v21(v20);
    }

    else
    {
      warning2 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v16;
  }

LABEL_16:
  v48 = dCopy;
  v23 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender();
  v24 = 0;
  if (v24)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v24 localizedDescription];
        *buf = 138412290;
        *&buf[4] = localizedDescription;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Deleting previous custom acknowledgments failed with error: %@", buf, 0xCu);
      }
    }

    v27 = 0;
    goto LABEL_46;
  }

  Count = CFArrayGetCount(v23);
  if (Count < 1)
  {
    v27 = 0;
    v29 = 0;
    goto LABEL_45;
  }

  v27 = 0;
  v29 = 0;
  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
    if (!ValueAtIndex)
    {
      continue;
    }

    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(ValueAtIndex, 0, 1, 1);
    v33 = AttachmentIfNeededRef;
    if (AttachmentIfNeededRef)
    {
      if ([AttachmentIfNeededRef associatedMessageType] != 4000 || (objc_msgSend(v33, "guid"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", v50), v34, (v35 & 1) != 0))
      {
        v36 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          guid = [v33 guid];
          associatedMessageGUID = [v33 associatedMessageGUID];
          associatedMessageType = [v33 associatedMessageType];
          *buf = 138412802;
          *&buf[4] = guid;
          *&buf[12] = 2112;
          *&buf[14] = associatedMessageGUID;
          *&buf[22] = 2048;
          *&buf[24] = associatedMessageType;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Will NOT delete old ack %@: %@: %lld", buf, 0x20u);
        }

        goto LABEL_39;
      }

      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        guid2 = [v33 guid];
        associatedMessageGUID2 = [v33 associatedMessageGUID];
        associatedMessageType2 = [v33 associatedMessageType];
        *buf = 138412802;
        *&buf[4] = guid2;
        *&buf[12] = 2112;
        *&buf[14] = associatedMessageGUID2;
        *&buf[22] = 2048;
        *&buf[24] = associatedMessageType2;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Will delete old ack %@: %@: %lld", buf, 0x20u);
      }

      if (v27)
      {
        if (!v29)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!v29)
        {
LABEL_37:
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }
      }

      guid3 = [v33 guid];
      [v29 addObject:guid3];

      [v27 addObject:v33];
    }

LABEL_39:
  }

  if (v29 && [v29 count])
  {
    v45 = [(IMDMessageStore *)self deleteMessageGUIDs:v29];
  }

LABEL_45:

LABEL_46:
  if (v23)
  {
    CFRelease(v23);
  }

  return v27;
}

- (id)_fileTransferGUIDsInMessageBody:(id)body
{
  bodyCopy = body;
  v4 = [bodyCopy length];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v6 = *MEMORY[0x277D19100];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B5EB2C8;
  v10[3] = &unk_2787060B8;
  v11 = v5;
  v7 = v5;
  [bodyCopy enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v10}];

  array = [v7 array];

  return array;
}

- (id)addEditHistoryToMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage
{
  messageCopy = message;
  previousMessageCopy = previousMessage;
  body = [messageCopy body];
  body2 = [previousMessageCopy body];
  if (!body2)
  {
    plainBody = [previousMessageCopy plainBody];
    v13 = plainBody;
    v14 = &stru_283F23018;
    if (plainBody)
    {
      v14 = plainBody;
    }

    v15 = v14;

    body2 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15];
  }

  v16 = [previousMessageCopy translationsForMessagePart:index];
  v17 = objc_alloc(MEMORY[0x277D1ACB0]);
  v53 = v16;
  firstObject = [v16 firstObject];
  v19 = [v17 initWithDictionaryRepresentation:firstObject];
  translatedText = [v19 translatedText];

  originalTextRangesByPartIndex = [messageCopy originalTextRangesByPartIndex];
  v21 = [originalTextRangesByPartIndex count];

  if (v21)
  {
    __im_messagePartIndexToRangeMap = IMDatabaseLogHandle();
    if (os_log_type_enabled(__im_messagePartIndexToRangeMap, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, __im_messagePartIndexToRangeMap, OS_LOG_TYPE_DEFAULT, "Message already had originalTextRangesByPartIndex, messages is being edited for a second (or more) time. Not overriding original values.", buf, 2u);
    }
  }

  else
  {
    __im_messagePartIndexToRangeMap = [body2 __im_messagePartIndexToRangeMap];
    [messageCopy setOriginalTextRangesByPartIndex:__im_messagePartIndexToRangeMap];
  }

  v51 = [messageCopy historyForMessagePart:index];
  v23 = [v51 mutableCopy];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v26 = v25;

  v54 = body2;
  if (![v26 count])
  {
    v27 = [body2 __im_messagePartMatchingPartIndex:index];
    messagePartBody = [v27 messagePartBody];
    v29 = messagePartBody;
    if (messagePartBody)
    {
      v30 = messagePartBody;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CCA898]);
    }

    v31 = v30;

    v32 = objc_alloc(MEMORY[0x277D1AA90]);
    time = [previousMessageCopy time];
    v34 = [v32 initWithMessagePartText:v31 messagePartTranslation:translatedText dateSent:time backwardCompatibleMessageGUID:0];

    [v26 addObject:v34];
  }

  v55 = body;
  v35 = [body __im_messagePartMatchingPartIndex:index];
  messagePartBody2 = [v35 messagePartBody];
  v37 = messagePartBody2;
  if (messagePartBody2)
  {
    v38 = messagePartBody2;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  v39 = v38;

  v40 = [messageCopy translationsForMessagePart:index];
  v41 = objc_alloc(MEMORY[0x277D1ACB0]);
  firstObject2 = [v40 firstObject];
  v43 = [v41 initWithDictionaryRepresentation:firstObject2];
  translatedText2 = [v43 translatedText];

  v45 = objc_alloc(MEMORY[0x277D1AA90]);
  dateEdited = [messageCopy dateEdited];
  v47 = [v45 initWithMessagePartText:v39 messagePartTranslation:translatedText2 dateSent:dateEdited backwardCompatibleMessageGUID:0];

  [v26 addObject:v47];
  if (type == 2)
  {
    if ([messageCopy scheduleType] == 2)
    {
      v49 = [v26 copy];
      [messageCopy setHistory:v49 forMessagePart:index];
    }

    else
    {
      [messageCopy setHistory:MEMORY[0x277CBEBF8] forMessagePart:index];
    }

    [messageCopy removeTranslationsForMessagePart:index];
  }

  else if (type == 1)
  {
    v48 = [v26 copy];
    [messageCopy setHistory:v48 forMessagePart:index];
  }

  return messageCopy;
}

- (id)storeEditedMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items
{
  v14 = MEMORY[0x277CCAA78];
  chatCopy = chat;
  previousMessageCopy = previousMessage;
  messageCopy = message;
  v18 = [v14 indexSetWithIndex:index];
  v19 = [(IMDMessageStore *)self storeEditedMessage:messageCopy editedPartIndexes:v18 editType:type previousMessage:previousMessageCopy chat:chatCopy updatedAssociatedMessageItems:items];

  return v19;
}

- (id)storeEditedMessage:(id)message editedPartIndexes:(id)indexes editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items
{
  v107 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  indexesCopy = indexes;
  previousMessageCopy = previousMessage;
  chatCopy = chat;
  guid = [previousMessageCopy guid];
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = guid;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Applying edits to the content of message: %@", &buf, 0xCu);
  }

  body = [messageCopy body];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v103 = 0x3032000000;
  v104 = sub_22B4D7730;
  v105 = sub_22B4D78F4;
  v15 = messageCopy;
  v106 = v15;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = sub_22B5EC3A4;
  v89[3] = &unk_2787060E0;
  v89[4] = self;
  p_buf = &buf;
  typeCopy = type;
  v75 = previousMessageCopy;
  v90 = v75;
  [indexesCopy enumerateIndexesUsingBlock:v89];
  v16 = *(*(&buf + 1) + 40);

  v17 = body;
  if ([v16 isFullyRetracted])
  {
    if ([v16 isRead])
    {
      v76 = 0;
    }

    else
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Message no longer contains any parts, all parts have been retracted, marking message as read", v93, 2u);
      }

      [v16 setFlags:{objc_msgSend(v16, "flags") | 0x2000}];
      __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [v16 setTimeRead:__im_dateWithCurrentServerTime];

      v76 = 0x2000;
    }

    payloadData = [v16 payloadData];
    v21 = [payloadData length] == 0;

    if (v21)
    {
      goto LABEL_14;
    }

    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v93 = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Message is fully retracted, deleting payload data", v93, 2u);
    }

    [v16 setPayloadData:0];
    retractedPartIndexes = [v16 retractedPartIndexes];
    v24 = [retractedPartIndexes count] == 0;

    if (v24)
    {
      v25 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "We retracted the payload data on a message that had no body and was a payload only. Inserting a retraction stamp at index 0.", v93, 2u);
      }

      [v16 addRetractedPartIndex:0];
      v17 = body;
    }

    else
    {
LABEL_14:
      v17 = body;
    }
  }

  else
  {
    v76 = 0;
  }

  if ([v16 errorCode])
  {
    [v16 setErrorCode:0];
  }

  [v16 setCloudKitSyncState:0];
  if ([MEMORY[0x277D1A9A0] supportsDataDetectors])
  {
    v26 = [v17 mutableCopy];
    string = [v17 string];
    [v16 isFromMe];
    time = [v16 time];
    v29 = IMDDataDectorDictionaryForMessageItem();
    sender = [v16 sender];
    v31 = sender;
    if (sender)
    {
      handle = sender;
    }

    else
    {
      handle = [v16 handle];
    }

    v33 = handle;

    v34 = IMDDScanAttributedStringWithExtendedContext();
    v35 = [v26 copy];
    [v16 setBody:v35];

    v36 = [v16 flags] & 0xFFFFFFFFFFFEFFFFLL;
    v37 = 0x10000;
    if (!v34)
    {
      v37 = 0;
    }

    [v16 setFlags:v36 | v37];

    v76 |= 0x10000uLL;
  }

  v38 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v38 setForceReplace:1];
  [(IMDMessageStorageContext *)v38 setModifyError:1];
  [(IMDMessageStorageContext *)v38 setModifyFlags:v76 != 0];
  [(IMDMessageStorageContext *)v38 setFlagMask:v76];
  [(IMDMessageStorageContext *)v38 setUpdateMessageCache:1];
  [(IMDMessageStorageContext *)v38 setCalculateUnreadCount:1];
  [(IMDMessageStorageContext *)v38 setReindexMessage:1];
  [(IMDMessageStorageContext *)v38 setIncomingMessage:1];
  [(IMDMessageStorageContext *)v38 setChat:chatCopy];
  v39 = [(IMDMessageStore *)self storeMessage:v16 context:v38 didReplaceBlock:0];
  v70 = v38;
  v78 = [(IMDMessageStore *)self messageWithGUID:guid];
  v40 = +[IMDChatRegistry sharedInstance];
  [v40 updateStateForChat:chatCopy forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
  v69 = v40;
  v73 = [(IMDMessageStore *)self _updateAssociatedMessageItemsFromMessage:v75 toMessage:v78];
  if (items)
  {
    v41 = v73;
    *items = v73;
  }

  fileTransferGUIDs = [v75 fileTransferGUIDs];
  v43 = [(IMDMessageStore *)self _fileTransferGUIDsInMessageBody:body];
  if ([v16 scheduleType] == 2)
  {
    [v16 setScheduledMessageOriginalTransferGUIDs:fileTransferGUIDs];
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v44 = fileTransferGUIDs;
  v45 = [v44 countByEnumeratingWithState:&v85 objects:v101 count:16];
  if (!v45)
  {
    v54 = v44;
    goto LABEL_49;
  }

  v46 = 0;
  v47 = *v86;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v86 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v85 + 1) + 8 * i);
      if (([v43 containsObject:v49] & 1) == 0)
      {
        v50 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 138412290;
          v94 = v49;
          _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_DEFAULT, "Edited message does not contain file transfer guid: %@", v93, 0xCu);
        }

        if ([v16 scheduleType] == 2 && objc_msgSend(v16, "scheduleState") == 2)
        {
          fileTransferGUIDs2 = [v16 fileTransferGUIDs];
          v52 = [fileTransferGUIDs2 mutableCopy];

          [v52 removeObject:v49];
          [v16 setFileTransferGUIDs:v52];
          v46 = 1;
        }

        else
        {
          v52 = +[IMDAttachmentStore sharedInstance];
          [v52 deleteAttachmentWithGUID:v49];
        }
      }
    }

    v45 = [v44 countByEnumeratingWithState:&v85 objects:v101 count:16];
  }

  while (v45);

  if (v46)
  {
    LOWORD(v68) = 257;
    v53 = [IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:updateMessageCache:calculateUnreadCount:reindexMessage:" forceReplace:v16 modifyError:1 modifyFlags:1 flagMask:v76 != 0 updateMessageCache:v68 calculateUnreadCount:? reindexMessage:?];
    v54 = v78;
    v78 = v53;
LABEL_49:
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v55 = v43;
  v56 = [v55 countByEnumeratingWithState:&v81 objects:v100 count:16];
  if (v56)
  {
    v57 = *v82;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v82 != v57)
        {
          objc_enumerationMutation(v55);
        }

        v59 = *(*(&v81 + 1) + 8 * j);
        if (([v44 containsObject:v59] & 1) == 0)
        {
          v60 = IMLogHandleForCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *v93 = 138412290;
            v94 = v59;
            _os_log_error_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_ERROR, "Edited message contains a file transfer not found in original message. FileTransferGuid: %@", v93, 0xCu);
          }
        }
      }

      v56 = [v55 countByEnumeratingWithState:&v81 objects:v100 count:16];
    }

    while (v56);
  }

  if (guid)
  {
    v99 = guid;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
  }

  else
  {
    v61 = MEMORY[0x277CBEBF8];
  }

  [(IMDMessageStore *)self updatePostedNotificationsForMessageGUIDs:v61];
  if (!v78)
  {
    v62 = IMLogHandleForCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5F14();
    }

    v63 = IMLogHandleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      *v93 = 138412802;
      v94 = indexesCopy;
      v95 = 2112;
      v96 = v67;
      v97 = 2112;
      v98 = v75;
      _os_log_error_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_ERROR, "partIndexes: %@ editType: %@ previousMessage: %@", v93, 0x20u);
    }

    v64 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDMessageStoreDomain" code:0 userInfo:0];
    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Store Edited Message Failed" errorPayload:v64];
  }

  _Block_object_dispose(&buf, 8);

  return v78;
}

- (void)storeTranslation:(id)translation onMessage:(id)message partIndex:(int64_t)index chat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  [messageCopy addTranslation:translation forMessagePart:index];
  v11 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v11 setForceReplace:1];
  [(IMDMessageStorageContext *)v11 setModifyError:1];
  [(IMDMessageStorageContext *)v11 setFlagMask:0];
  [(IMDMessageStorageContext *)v11 setUpdateMessageCache:1];
  [(IMDMessageStorageContext *)v11 setCalculateUnreadCount:1];
  [(IMDMessageStorageContext *)v11 setReindexMessage:1];
  [(IMDMessageStorageContext *)v11 setIncomingMessage:1];
  [(IMDMessageStorageContext *)v11 setChat:chatCopy];
  v12 = [(IMDMessageStore *)self storeMessage:messageCopy context:v11 didReplaceBlock:0];
  v13 = +[IMDChatRegistry sharedInstance];
  [v13 updateStateForChat:chatCopy forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
}

- (id)_updateAssociatedMessageItemsFromMessage:(id)message toMessage:(id)toMessage
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  toMessageCopy = toMessage;
  guid = [toMessageCopy guid];
  retractedPartIndexes = [toMessageCopy retractedPartIndexes];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_22B5EC764;
  v21 = &unk_278706108;
  objc_copyWeak(&v24, &location);
  v12 = guid;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  [retractedPartIndexes enumerateIndexesUsingBlock:&v18];
  if ([v13 count])
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Deleting associated message GUIDs: %@", buf, 0xCu);
    }

    v15 = [(IMDMessageStore *)self deleteMessageGUIDs:v13];
  }

  v16 = [v11 copy];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v16;
}

- (id)storeRepositionedStickerWithMetadata:(id)metadata fileTransferGUID:(id)d repositioningFromLocalChange:(BOOL)change
{
  changeCopy = change;
  metadataCopy = metadata;
  dCopy = d;
  v10 = +[IMDFileTransferCenter sharedInstance];
  v11 = [v10 transferForGUID:dCopy];

  stickerUserInfo = [v11 stickerUserInfo];
  v13 = [stickerUserInfo mutableCopy];

  v14 = *MEMORY[0x277D1A768];
  v15 = [v13 objectForKey:*MEMORY[0x277D1A768]];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = [metadataCopy objectForKey:v14];
  unsignedIntegerValue2 = [v17 unsignedIntegerValue];

  if (unsignedIntegerValue >= unsignedIntegerValue2)
  {
    v35 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_DEFAULT, "Don't store the new sticker user info", buf, 2u);
    }

    v33 = 0;
  }

  else
  {
    selfCopy = self;
    v43 = changeCopy;
    v45 = v11;
    v46 = dCopy;
    v19 = *MEMORY[0x277D1A778];
    v20 = [metadataCopy objectForKey:*MEMORY[0x277D1A778]];
    v41 = *MEMORY[0x277D1A780];
    v50 = [metadataCopy objectForKey:?];
    v40 = *MEMORY[0x277D1A730];
    v49 = [metadataCopy objectForKey:?];
    v39 = *MEMORY[0x277D1A728];
    v21 = [metadataCopy objectForKey:?];
    v38 = *MEMORY[0x277D1A720];
    v22 = [metadataCopy objectForKey:?];
    v23 = [metadataCopy objectForKey:v14];
    v24 = *MEMORY[0x277D1A718];
    v48 = [metadataCopy objectForKey:*MEMORY[0x277D1A718]];
    v25 = [metadataCopy objectForKey:v24];
    v26 = v25;
    v27 = &unk_283F4E9A8;
    if (v25)
    {
      v27 = v25;
    }

    v44 = v27;

    v47 = v20;
    if (v20 && v50 && v49 && v21 && v22 && v23 && v48)
    {
      [v13 setValue:v20 forKey:v19];
      [v13 setValue:v50 forKey:v41];
      [v13 setValue:v49 forKey:v40];
      [v13 setValue:v21 forKey:v39];
      [v13 setValue:v22 forKey:v38];
      [v13 setValue:v23 forKey:v14];
      v28 = v48;
      [v13 setValue:v48 forKey:v24];
      v29 = v44;
      [v13 setValue:v44 forKey:*MEMORY[0x277D1A710]];
      [v13 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D1A758]];
      [(IMDMessageStore *)selfCopy _fileTransferCenter];
      v31 = v30 = v22;
      v32 = v21;
      dCopy = v46;
      [v31 setUpdatedStickerUserInfo:v13 forTransfer:v46 repositioningFromLocalChange:v43];

      v33 = [v13 copy];
      v34 = v23;
      v11 = v45;
    }

    else
    {
      v34 = v23;
      v30 = v22;
      v32 = v21;
      v36 = IMLogHandleForCategory();
      dCopy = v46;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5F7C();
      }

      v33 = 0;
      v29 = v44;
      v11 = v45;
      v28 = v48;
    }

    v35 = v47;
  }

  return v33;
}

- (id)storeRepositionedStickerLocally:(id)locally
{
  locallyCopy = locally;
  messageSummaryInfo = [locallyCopy messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKey:*MEMORY[0x277D1A048]];

  fileTransferGUIDs = [locallyCopy fileTransferGUIDs];

  firstObject = [fileTransferGUIDs firstObject];

  if (v6)
  {
    v9 = firstObject == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(IMDMessageStore *)self storeRepositionedStickerWithMetadata:v6 fileTransferGUID:firstObject repositioningFromLocalChange:1];
  }

  return v10;
}

- (void)loadConsumedSessionPayloadsForItems:(id)items
{
  v33 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v3 = [itemsCopy __imArrayByFilteringWithBlock:&unk_283F1A308];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        pluginSessionGUID = [v9 pluginSessionGUID];
        if ([v4 containsObject:pluginSessionGUID])
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              balloonBundleID = [v9 balloonBundleID];
              *buf = 138412802;
              v27 = v9;
              v28 = 2112;
              v29 = balloonBundleID;
              v30 = 2112;
              v31 = pluginSessionGUID;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Observed more than one unconsumed breadcrumb: %@ for '%@' session %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v13 = +[IMDMessageStore sharedInstance];
          v14 = [v13 messagesWithAssociatedGUID:pluginSessionGUID shouldLoadAttachments:0];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = sub_22B5ED23C;
          v21[3] = &unk_278706150;
          v21[4] = v9;
          v15 = [v14 __imArrayByFilteringWithBlock:v21];

          v16 = IMGetConsumedSessionPayloadsForBreadcrumbItems();
          [v9 setConsumedSessionPayloads:v16];

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              consumedSessionPayloads = [v9 consumedSessionPayloads];
              v19 = [consumedSessionPayloads count];
              *buf = 138412546;
              v27 = v9;
              v28 = 2048;
              v29 = v19;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "History query found breadcrumb %@ with payload history: %tu items.", buf, 0x16u);
            }
          }

          [v4 addObject:pluginSessionGUID];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v6);
  }
}

- (BOOL)_itemClassShouldUpdateTransferForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit
{
  v4 = IMDMessageStoreLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Trying to Load Message Records that need CK Sync", v7, 2u);
  }

  v5 = IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit();

  return v5;
}

- (id)_messagesThatNeedSyncWithCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit attemptCount:(unint64_t)count
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = IMDMessageStoreLogHandle(self);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v10)
    {
      *buf = 134218240;
      limitCopy = limit;
      v34 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "load messages needing CK sync with limit %ld, attemptCount %lu", buf, 0x16u);
    }

    v9 = [(IMDMessageStore *)self messageRecordsToUploadToCloudKitWithFilter:filter limit:limit];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [v9 count];
    if (!v13)
    {
      goto LABEL_24;
    }

    countCopy2 = count;
    filterCopy = filter;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [v9 objectAtIndex:v14];
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v16, 0, 0, 1);
      if (!AttachmentIfNeededRef)
      {
        v18 = *(v16 + 16);
        v19 = IMDMessageStoreLogHandle(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          limitCopy = v18;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "**** Marking message with rowID %lld as clean ***", buf, 0xCu);
        }

        IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit();
        v15 = 1;
      }

      if ([(IMDMessageStore *)self _itemClassShouldUpdateTransferForItem:AttachmentIfNeededRef])
      {
        v20 = +[IMDAttachmentStore sharedInstance];
        v21 = [v20 updateTemporaryTransferGUIDsOnMessageIfNeeded:AttachmentIfNeededRef];

        if (v21)
        {
          guid = [AttachmentIfNeededRef guid];
          v23 = +[IMDMessageStore sharedInstance];
          v24 = [v23 itemWithGUID:guid];

          AttachmentIfNeededRef = v24;
        }
      }

      if (v12 && AttachmentIfNeededRef)
      {
        CFArrayAppendValue(v12, AttachmentIfNeededRef);
      }

      ++v14;
      v13 = [v9 count];
    }

    while (v13 > v14);
    if (v15)
    {
      v25 = IMDMessageStoreLogHandle(v13);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        limitCopy = countCopy2;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "**** We had corrupt messages amongst dirty messages. Trying to load messages again. numberOfAttempts %lu", buf, 0xCu);
      }

      v26 = [(IMDMessageStore *)self _messagesThatNeedSyncWithCloudKitWithFilter:filterCopy limit:limit attemptCount:countCopy2 + 1];
    }

    else
    {
LABEL_24:
      v27 = IMDMessageStoreLogHandle(v13);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(__CFArray *)v12 count];
        *buf = 134217984;
        limitCopy = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing CK sync with limit", buf, 0xCu);
      }

      v26 = v12;
    }

    v11 = v26;
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages. Bailing for now", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_messagesPendingUpdateT1ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v7)
    {
      v11 = 134218240;
      limitCopy = limit;
      v13 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T1 with limit %ld, attemptCount %lu", &v11, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle(updated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v11 = 134217984;
      limitCopy = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing T1 update with limit", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages needing a T1 update. Bailing for now", &v11, 2u);
    }

    updated = 0;
  }

  return updated;
}

- (id)_messagesPendingUpdateT2ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v7)
    {
      v11 = 134218240;
      limitCopy = limit;
      v13 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T2 with limit %ld, attemptCount %lu", &v11, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle(updated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v11 = 134217984;
      limitCopy = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing T2 update with limit", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages needing a T2 update. Bailing for now", &v11, 2u);
    }

    updated = 0;
  }

  return updated;
}

- (id)_messagesPendingUpdateT3ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v7)
    {
      v11 = 134218240;
      limitCopy = limit;
      v13 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T3 with limit %ld, attemptCount %lu", &v11, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle(updated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v11 = 134217984;
      limitCopy = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing T3 update with limit", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages needing a T2 update. Bailing for now", &v11, 2u);
    }

    updated = 0;
  }

  return updated;
}

- (void)clearMessagesTombStoneTable
{
  v2 = IMDMessageStoreLogHandle(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Clearing tombstone message table", v3, 2u);
  }

  IMDMessageRecordClearDeleteTombStones();
}

+ (void)databaseFull
{
  if ((byte_27D8CFF10 & 1) == 0)
  {
    byte_27D8CFF10 = 1;
    v3 = objc_opt_class();

    MEMORY[0x2821F9670](v3, sel__displayDatabaseFullAlert);
  }
}

+ (void)databaseNoLongerFull
{
  if (byte_27D8CFF10 == 1)
  {
    byte_27D8CFF10 = 0;
  }
}

+ (void)_displayDatabaseFullAlert
{
  v2 = MEMORY[0x277CCACA8];
  v8 = IMSharedUtilitiesFrameworkBundle();
  v3 = [v8 localizedStringForKey:@"SMS_FULL_WARNING" value:&stru_283F23018 table:@"IMSharedUtilities"];
  v4 = [v2 localizedStringWithFormat:v3, 0];
  v5 = MEMORY[0x277CCACA8];
  v6 = IMSharedUtilitiesFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"DISMISS" value:&stru_283F23018 table:@"IMSharedUtilities"];
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v4, 0, [v5 localizedStringWithFormat:v7, 0], 0, 0, 0);
}

- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)limit
{
  v3 = _sSo15IMDMessageStoreC12IMDaemonCoreE25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0(limit, a2);
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v4 = sub_22B7DB8F8();
  v3, v5, v6, v7, v8, v9, v10, v11, v13, v14;

  return v4;
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  IMDMessageStore.batchOfRecordIDsToDelete(limit:)(limit);
  v7 = v6;

  sub_22B71EEC0();
  sub_22B71EF0C();
  v8 = sub_22B7DB568();
  v7, v9, v10, v11, v12, v13, v14, v15, v17, v18;

  return v8;
}

- (void)clearTombstonesForRecordIDs:(id)ds
{
  sub_22B71EEC0();
  v4 = sub_22B7DB918();
  selfCopy = self;
  _sSo15IMDMessageStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);

  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
}

@end