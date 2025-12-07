@interface IMDChatRegistry
+ (IMDChatRegistry)sharedInstance;
+ (id)supportedServiceNames;
- (BOOL)_chat:(id)_chat isDuplicateOfChat:(id)chat;
- (BOOL)_contactsBasedMergingEnabled;
- (BOOL)_ensureNoExistingGroupForSyncData:(id)data;
- (BOOL)_existingItemRequiresUpgrade:(id)upgrade itemFromCKRecord:(id)record;
- (BOOL)_hasInconsistentGroupPhotoGUIDAcrossMergedChats:(id)chats;
- (BOOL)_hasInconsistentJoinStateAcrossMergedChats:(id)chats;
- (BOOL)_hasSavedContactCardForHandle:(id)handle;
- (BOOL)_mergeDuplicateGroupsIfNeeded;
- (BOOL)blackholedChatsExist;
- (BOOL)filteredChatsExistForServices:(id)services;
- (BOOL)filterediMessageChatsExist;
- (BOOL)handleMessageUpdate:(id)update;
- (BOOL)hasKnownSenderChatWithChatIdentifier:(id)identifier;
- (BOOL)hasScheduledMessageForHandleID:(id)d;
- (BOOL)loadChatsWithCompletionBlock:(id)block;
- (BOOL)removeIMDHandleFromRegistry:(id)registry;
- (BOOL)repairDuplicateChatsIfNeeded;
- (BOOL)updateProperties:(id)properties chat:(id)chat style:(unsigned __int8)style;
- (BOOL)updateSyncedSyndicationRanges:(id)ranges forGUID:(id)d;
- (BOOL)updateUnreadCountForChat:(id)chat;
- (IMDCKUtilities)ckUtilities;
- (IMDChatRegistry)init;
- (IMDChatStore)chatStore;
- (NSArray)allChats;
- (NSArray)cachedChats;
- (id)_activeTUConversations;
- (id)_addChatFromCacheMiss:(id)miss preferExistingChat:(BOOL)chat;
- (id)_addChatsFromCacheMisses:(id)misses preferExistingChats:(BOOL)chats;
- (id)_aliasToCNIDMapForAliases:(id)aliases;
- (id)_allHandles;
- (id)_bestServiceSessionForService:(id)service accountID:(id)d;
- (id)_cachedChatWithGUID:(id)d;
- (id)_cachedChatsWithGroupID:(id)d;
- (id)_chatForTUConversation:(id)conversation;
- (id)_chatForTUGroupID:(id)d participants:(id)participants;
- (id)_chatGUIDToChatMapForChats:(id)chats;
- (id)_chatInfoForChats:(id)chats;
- (id)_chatInfoInRange:(_NSRange)range wantsBlackholed:(BOOL)blackholed;
- (id)_chatsWithBlackholed:(BOOL)blackholed;
- (id)_cnIDForHandle:(id)handle;
- (id)_conversationItemForChat:(id)chat conversation:(id)conversation;
- (id)_copyDuplicateChatsArrayWithLimit:(int64_t)limit;
- (id)_copyGroupedDuplicateChatsSortedFromWinningToLosingWithLimit:(int64_t)limit;
- (id)_createGroupChatForConversation:(id)conversation onSession:(id)session;
- (id)_createGroupChatsArray;
- (id)_exactGroupChatMatchOrNewestMatchingGroupID:(id)d originalGroupID:(id)iD serviceName:(id)name participants:(id)participants toIdentifier:(id)identifier outNewestSiblingChat:(id *)chat;
- (id)_exactGroupChatMatchOrNewestMatchingIdentifierFromSortedIdentifiers:(id)identifiers participants:(id)participants toIdentifier:(id)identifier;
- (id)_existingChatForSyncData:(id)data;
- (id)_existingChatsForIDs:(id)ds serviceName:(id)name displayName:(id)displayName groupID:(id)d useOriginalGroupID:(BOOL)iD style:(unsigned __int8)style;
- (id)_existingChatsSortedByIdentifiersAndRecencyFromSortedIdentifiers:(id)identifiers;
- (id)_existingiMessageChatForChatIdentifier:(id)identifier style:(unsigned __int8)style;
- (id)_extractHandlesFromMap:(id)map usingCNID:(id)d;
- (id)_findChatWinnerInDuplicateChatArray:(id)array fixDisplayName:(BOOL *)name;
- (id)_findExistingGroupChatForConversation:(id)conversation onSession:(id)session;
- (id)_findLosingChatGUIDsInArrayOfChats:(id)chats withWinner:(id)winner;
- (id)_generateCurrentAliasToCNIDDictionary;
- (id)_handlesWithChangedContactsOriginalMap:(id)map newMap:(id)newMap;
- (id)_initiatorForConversation:(id)conversation chat:(id)chat;
- (id)_lookupChatUsingParentChatID:(id)d service:(id)service;
- (id)_mergedPinningIdentifiersForChats:(id)chats chatGUIDToChatMap:(id)map groupedChatsByPersonCentricIdWithSortedChats:(id)sortedChats;
- (id)_newestExistingChatWithGroupID:(id)d onService:(id)service;
- (id)_newestGroupChatMatchingParticipants:(id)participants displayName:(id)name strictDisplayNameMatching:(BOOL)matching serviceName:(id)serviceName toIdentifier:(id)identifier;
- (id)_oneToOneChatForRemoteHandle:(id)handle;
- (id)_participantIDSetFromHandles:(id)handles toIdentifier:(id)identifier;
- (id)_potentialGUIDsForIdentifier:(id)identifier;
- (id)_preferredFileTransferFromGroupPhotoGUIDs:(id)ds;
- (id)_siblingChatsForChat:(id)chat usingChatGUIDToChatMap:(id)map iMessageChat:(id *)messageChat;
- (id)_spamMessageCreator;
- (id)_tuConversationForChat:(id)chat;
- (id)_uncachedNewestChatWithOriginalGroupID:(id)d onService:(id)service;
- (id)_upgradeChatToGroupChat:(id)chat forConversation:(id)conversation;
- (id)aliasToCNIDMap;
- (id)allChatsWithIdentifier:(id)identifier style:(unsigned __int8)style serviceNames:(id)names;
- (id)allExistingChatsWithIdentifier:(id)identifier;
- (id)allExistingChatsWithIdentifier:(id)identifier style:(unsigned __int8)style;
- (id)allExistingSupportedServiceChatsWithIdentifier:(id)identifier style:(unsigned __int8)style;
- (id)allHandlesForID:(id)d;
- (id)alternateIDForHandle:(id)handle;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d originalGroupID:(id)iD serviceName:(id)serviceName;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants updatingToLatestiMessageGroupID:(id)d sortedIdentifiers:(id)identifiers serviceName:(id)serviceName;
- (id)chatForHandle:(id)handle account:(id)account chatIdentifier:(id)identifier guid:(id)guid lastAddressedHandle:(id)addressedHandle lastAddressedSIMID:(id)d isBlackholed:(BOOL)blackholed;
- (id)chatForHandles:(id)handles account:(id)account chatIdentifier:(id)identifier style:(unsigned __int8)style groupID:(id)d originalGroupID:(id)iD displayName:(id)name guid:(id)self0 lastAddressedHandle:(id)self1 lastAddressedSIMID:(id)self2 isBlackholed:(BOOL)self3;
- (id)chatForRoom:(id)room account:(id)account chatIdentifier:(id)identifier guid:(id)guid;
- (id)chatsToUploadToCloudKitWithLimit:(unint64_t)limit;
- (id)existingChatForID:(id)d account:(id)account;
- (id)existingChatForIDs:(id)ds account:(id)account displayName:(id)name groupID:(id)d style:(unsigned __int8)style;
- (id)existingChatForIDs:(id)ds account:(id)account displayName:(id)name originalGroupID:(id)d style:(unsigned __int8)style;
- (id)existingChatForRoom:(id)room account:(id)account;
- (id)existingChatWithEngramID:(id)d;
- (id)existingChatWithGUID:(id)d;
- (id)existingChatWithGroupID:(id)d onService:(id)service;
- (id)existingChatWithIdentifier:(id)identifier account:(id)account;
- (id)existingChatsFilteredUsingPredicate:(id)predicate;
- (id)existingChatsFilteredUsingPredicate:(id)predicate sortedUsingLastMessageDateAscending:(BOOL)ascending olderThan:(id)than limit:(unint64_t)limit;
- (id)existingChatsForGroupedIDs:(id)ds displayName:(id)name style:(unsigned __int8)style;
- (id)existingChatsForIDs:(id)ds displayName:(id)name groupID:(id)d style:(unsigned __int8)style;
- (id)existingChatsForIDs:(id)ds onService:(id)service displayName:(id)name groupID:(id)d style:(unsigned __int8)style;
- (id)existingChatsForIDs:(id)ds onService:(id)service displayName:(id)name originalGroupID:(id)d style:(unsigned __int8)style;
- (id)existingChatsWithGroupID:(id)d;
- (id)existingChatsWithPinningIdentifier:(id)identifier;
- (id)existingGroupChatsContainingHandles:(id)handles;
- (id)existingOneOnOneChatsWithIdentifiers:(id)identifiers;
- (id)existingSMSChatForID:(id)d withChatStyle:(unsigned __int8)style;
- (id)existingiMessageChatForID:(id)d withChatStyle:(unsigned __int8)style;
- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)account;
- (id)groupChatsBasedOnIdentity:(id)identity;
- (id)groupChatsBasedOnIdentityUsingCacheIfApplicable:(id)applicable;
- (id)messagesPendingUpdateT1ToCloudKitWithLimit:(unint64_t)limit;
- (id)messagesPendingUpdateT2ToCloudKitWithLimit:(unint64_t)limit;
- (id)messagesToUploadToCloudKitWithLimit:(unint64_t)limit;
- (id)newestExistingChatWithOriginalGroupID:(id)d onService:(id)service;
- (id)personCentricGroupedChatsArrayWithMaximumNumberOfChats:(int64_t)chats skipsLastMessageLoading:(BOOL)loading usingChats:(id)usingChats useCachedChatGroups:(BOOL)groups includingPinnedChatIdentifiers:(id)identifiers repairInconsistentMergedChats:(BOOL)mergedChats;
- (id)recoverableMessagesMetadata;
- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)limit;
- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)limit;
- (id)sortPersonCentricChatGroups:(id)groups;
- (id)stringForChatStyle:(unsigned __int8)style;
- (id)truncatedSortedChatsGroupedByPersonCentricID:(id)d count:(int64_t)count pinnedChatIdentifiers:(id)identifiers;
- (int64_t)_compareDuplicateChatsWithFirstChat:(id)chat secondChat:(id)secondChat;
- (unint64_t)cachedChatCount;
- (unint64_t)markAsSpamForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services chatID:(id)d conversationID:(id)iD queryID:(id)queryID autoReport:(BOOL)report isJunkReportedToCarrier:(BOOL)self0 reportReason:(unint64_t)self1;
- (unint64_t)markAsSpamForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services chatID:(id)d queryID:(id)iD autoReport:(BOOL)report isJunkReportedToCarrier:(BOOL)carrier;
- (void)__addChatToGroupIDChatIndex:(id)index;
- (void)__removeChatFromGroupIDChatIndex:(id)index;
- (void)__unassignGroupIDFromAllChats:(id)chats;
- (void)_addItem:(id)item toChat:(id)chat reason:(int64_t)reason;
- (void)_addItemToParentChatIfNotLocationItem:(id)item parentChat:(id)chat updatedLastMessageCount:(unint64_t)count reason:(int64_t)reason;
- (void)_adoptUpdatedStateForExistingItem:(id)item itemFromCKRecord:(id)record;
- (void)_chatGUIDsThatNeedRemerging:(id *)remerging chatDictionaryArray:(id *)array aliasMap:(id)map;
- (void)_chatGUIDsThatNeedRemerging:(id *)remerging chatDictionaryArray:(id *)array oldPersonCentricID:(id)d;
- (void)_chatGUIDsToRemergeForAcceptedContactChange:(id)change;
- (void)_chatGUIDsToRemergeForContactChange:(id)change;
- (void)_checkForContactChangesWithChangeType:(id)type;
- (void)_enumeratePersonMergedChatsWithMaximumNumberOfChats:(int64_t)chats usingChats:(id)usingChats useCachedChatGroups:(BOOL)groups includingPinnedChatIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)_evictCachedChat:(id)chat;
- (void)_finalizeIncomingChat:(id)chat;
- (void)_fixSiblingChatsAndStoreIfNeeded:(id)needed iMessageChat:(id)chat chatsToRegenerate:(id)regenerate;
- (void)_fixUpChatParticipantsIfNeeded:(id)needed usingChatGUIDToChatMap:(id)map;
- (void)_forceReloadChats:(BOOL)chats;
- (void)_insertChatUsingSyncData:(id)data;
- (void)_makeAllAttachmentsClassC;
- (void)_markForksAsSyncedForChat:(id)chat;
- (void)_markGroupPhotosAsUnpurgeableIfNecessary;
- (void)_performCheckForContactChangesWithChangeType:(int64_t)type;
- (void)_performPostUnlockHousekeeping;
- (void)_persistMergeIDMergedChatsIfNeeded;
- (void)_populateContactIDOnHandles;
- (void)_populateLastMessageForChat:(id)chat;
- (void)_reloadChatsForDatabaseMergeOrDatabaseSwitchWithReset:(BOOL)reset;
- (void)_remergeChatsWithParticipantIDsSets:(id)sets;
- (void)_remergeChatsWithPendingParticipantIDSets;
- (void)_repairInconsistentGroupPhotoGuidAcrossMergedChatsIfNecessary:(id)necessary;
- (void)_repairInconsistentJoinStatesAcrossMergedChatsIfNecessary:(id)necessary;
- (void)_reportMessageDictionaryForMessages:(id)messages isAutoReport:(BOOL)report withChat:(id)chat conversationID:(id)d maxMessagesToReport:(unint64_t)toReport totalMessageCount:(unint64_t *)count isJunkReportedToCarrier:(BOOL)carrier reportReason:(unint64_t)self0;
- (void)_reportMessageDictionaryForMessages:(id)messages isAutoReport:(BOOL)report withChat:(id)chat conversationID:(id)d maxMessagesToReport:(unint64_t)toReport totalMessageCount:(unint64_t *)count notifyInternalSecurity:(BOOL)security isJunkReportedToCarrier:(BOOL)self0 reportReason:(unint64_t)self1;
- (void)_serializeChatsForRemerge:(id)remerge guidsThatNeedRemerging:(id *)remerging chatDictionaryArray:(id *)array;
- (void)_setGroupID:(id)d forChatAndAllSiblings:(id)siblings;
- (void)_setInitialLoadForTesting:(BOOL)testing;
- (void)_setSortIDOnIncomingMessage:(id)message forChat:(id)chat;
- (void)_startObservingAcceptedContactChanges;
- (void)_submitAndOpenTapToRadarForSortedIdentifiers:(id)identifiers participants:(id)participants sortedChats:(id)chats;
- (void)_triggerRemergeForPersonCentricID:(id)d;
- (void)_updateAcceptedContactsInAliasToCNIDMapWithCompletionHandler:(id)handler;
- (void)_updateAliasToCNIDMapAndHistoryTokenWithCompletionHandler:(id)handler;
- (void)_updateCachedCNIDMapForHandles:(id)handles;
- (void)_updateChat:(id)chat usingSyncData:(id)data;
- (void)_updatePendingReviewForChatsWithGUIDsInBackground:(id)background pendingReview:(BOOL)review completionBlock:(id)block;
- (void)addChat:(id)chat firstLoad:(BOOL)load store:(BOOL)store;
- (void)addIMDHandleToRegistry:(id)registry;
- (void)addMessage:(id)message toChat:(id)chat reason:(int64_t)reason;
- (void)assignNonHistoricaliMessageIdentifierAndBroadcastForChat:(id)chat identifier:(id)identifier;
- (void)checkBlackholedChatsExistAfterUpdatingChatWithAdd:(BOOL)add;
- (void)clearPendingDeleteTable;
- (void)clearRecoverableMessageTombStones;
- (void)conversationManager:(id)manager conversation:(id)conversation addedMembersLocally:(id)locally;
- (void)dealloc;
- (void)fetchExistingUnreadChatsOlderThan:(id)than predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)handleMessageUpdateConflictType:(id)type serverRecord:(id)record localRowID:(int64_t)d;
- (void)invalidatePersonCentricGroupedChatsCache;
- (void)markChatAsDeferredForSyncingUsingSyncData:(id)data;
- (void)markDeferredChatsAsNeedingSync;
- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date;
- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date;
- (void)pendingAlternateID:(id)d forHandle:(id)handle;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds completionHandler:(id)handler;
- (void)processMessageUsingCKRecord:(id)record updatedLastMessageCount:(int)count;
- (void)recoverMessagesWithChatGUIDs:(id)ds;
- (void)refreshUIWhileSyncing;
- (void)removeChat:(id)chat;
- (void)removeItem:(id)item fromChat:(id)chat;
- (void)removeMessage:(id)message fromChat:(id)chat;
- (void)repairInconsistentMergedChatsIfNecessary:(id)necessary;
- (void)resolveChatConflictUsingSyncData:(id)data localGUID:(id)d;
- (void)setHistoryToken:(id)token;
- (void)setUpInitialConversationManager;
- (void)simulateMessageReceive:(id)receive serviceName:(id)name groupID:(id)d handles:(id)handles sender:(id)sender date:(id)date associatedMessageType:(int64_t)type associatedMessageGuid:(id)self0;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidUnlock;
- (void)updateCachedChatsSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateChatUsingSyncData:(id)data;
- (void)updateChatWithGUID:(id)d serverChangeToken:(id)token recordID:(id)iD;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority;
- (void)updateFaceTimeGroupName:(id)name;
- (void)updateFaceTimeGroupPhoto:(id)photo;
- (void)updateGroupIDForChat:(id)chat newGroupID:(id)d;
- (void)updateLastMessageForChat:(id)chat hintMessage:(id)message historyQuery:(BOOL)query;
- (void)updateMeCardHasUpdatedForAllChats;
- (void)updatePendingReviewForChatsWithGUIDs:(id)ds pendingReview:(BOOL)review;
- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageRowID:(int64_t)d onPartIndex:(int64_t)index;
- (void)updateStateForChat:(id)chat forcePost:(BOOL)post shouldRebuildFailedMessageDate:(BOOL)date setUnreadCountToZero:(BOOL)zero;
- (void)updateStateForChat:(id)chat fromMessage:(id)message toMessage:(id)toMessage forcePost:(BOOL)post hintMessage:(id)hintMessage shouldRebuildFailedMessageDate:(BOOL)date shouldCalculateUnreadCount:(BOOL)count setUnreadCountToZero:(BOOL)self0;
- (void)updateStateForChat:(id)chat hintMessage:(id)message shouldRebuildFailedMessageDate:(BOOL)date setUnreadCountToZero:(BOOL)zero;
- (void)waitForLoadedChatsWithCompletionHandler:(id)handler;
@end

@implementation IMDChatRegistry

+ (IMDChatRegistry)sharedInstance
{
  if (qword_281421170 != -1)
  {
    sub_22B7D6604();
  }

  v3 = qword_281420FF0;

  return v3;
}

+ (id)supportedServiceNames
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];

  return v3;
}

- (id)aliasToCNIDMap
{
  v2 = [(NSMutableDictionary *)self->_cachedAliasToCNIDMap copy];

  return v2;
}

- (BOOL)filterediMessageChatsExist
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277D1A620];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  LOBYTE(self) = [(IMDChatRegistry *)self filteredChatsExistForServices:v3];

  return self;
}

- (IMDChatStore)chatStore
{
  chatStore = self->_chatStore;
  if (!chatStore)
  {
    v4 = +[IMDChatStore sharedInstance];
    v5 = self->_chatStore;
    self->_chatStore = v4;

    chatStore = self->_chatStore;
  }

  return chatStore;
}

- (BOOL)blackholedChatsExist
{
  blackholedChats = [(IMDChatRegistry *)self blackholedChats];
  v3 = [blackholedChats count] != 0;

  return v3;
}

- (id)recoverableMessagesMetadata
{
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  loadRecoverableMessagesMetadataGroupedByChatGUID = [synchronousDatabase loadRecoverableMessagesMetadataGroupedByChatGUID];

  return loadRecoverableMessagesMetadataGroupedByChatGUID;
}

- (void)systemDidUnlock
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "systemDidUnlock", buf, 2u);
  }

  if (!self->_firstUnlockTriggered)
  {
    mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
    isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

    if ((isUnderFirstDataProtectionLock & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Detected an unlock but first unlock notifications were missed, performing first unlock as if we did just now", v7, 2u);
        }
      }

      [(IMDChatRegistry *)self systemDidLeaveFirstDataProtectionLock];
    }
  }

  [(IMDChatRegistry *)self _makeAllAttachmentsClassC];
}

- (IMDChatRegistry)init
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = IMDChatRegistry;
  v2 = [(IMDChatRegistry *)&v44 init];
  if (v2)
  {
    mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
    isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

    v2->_firstUnlockTriggered = isUnderFirstDataProtectionLock ^ 1;
    v5 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v46 = isUnderFirstDataProtectionLock;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Is under first unlock: %{BOOL}d", buf, 8u);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chats = v2->_chats;
    v2->_chats = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chatsByGroupID = v2->_chatsByGroupID;
    v2->_chatsByGroupID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    chatsLock = v2->_chatsLock;
    v2->_chatsLock = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCAC60]);
    handlesLock = v2->_handlesLock;
    v2->_handlesLock = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    idToHandlesMap = v2->_idToHandlesMap;
    v2->_idToHandlesMap = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEA90]);
    historyToken = v2->_historyToken;
    v2->_historyToken = v16;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B5FFC5C;
    aBlock[3] = &unk_2787062E8;
    v18 = v2;
    v43 = v18;
    v19 = _Block_copy(aBlock);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_22B5FFC68;
    v40[3] = &unk_2787062E8;
    v20 = v18;
    v41 = v20;
    v21 = _Block_copy(v40);
    v22 = MEMORY[0x277D85CD0];
    dword_28141EA60 = IMDispatchForNotify();
    dword_28141EA64 = IMDispatchForNotify();

    v39 = v20;
    dword_28141EA68 = IMDispatchForNotify();

    v38 = v39;
    IMDispatchForNotify();

    mEMORY[0x277D1ACB8]2 = [MEMORY[0x277D1ACB8] sharedInstance];
    [mEMORY[0x277D1ACB8]2 addListener:v38];

    v38->_doneLoadingAfterMerge = 0;
    v24 = objc_alloc_init(MEMORY[0x277D6EE98]);
    conversationManager = v38->_conversationManager;
    v38->_conversationManager = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personCentricGroupedChatsCache = v38->_personCentricGroupedChatsCache;
    v38->_personCentricGroupedChatsCache = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingParticipantIDSetsForRemerge = v38->_pendingParticipantIDSetsForRemerge;
    v38->_pendingParticipantIDSetsForRemerge = v28;
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    [MEMORY[0x277CBDAB8] initialize];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contactsChanged_ name:*MEMORY[0x277CBD140] object:0];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      [(IMDChatRegistry *)v2 _startObservingAcceptedContactChanges];
    }
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_updateMeCardHasUpdatedForAllChats name:IMDMeCardUpdatedNotification object:0];

  mEMORY[0x277D1ACB8]3 = [MEMORY[0x277D1ACB8] sharedInstance];
  hasReceivedFirstUnlockNotification = [mEMORY[0x277D1ACB8]3 hasReceivedFirstUnlockNotification];

  if (hasReceivedFirstUnlockNotification)
  {
    v37 = v2;
    im_dispatch_after();
  }

  return v2;
}

- (IMDCKUtilities)ckUtilities
{
  ckUtilities = self->_ckUtilities;
  if (!ckUtilities)
  {
    v4 = +[IMDCKUtilities sharedInstance];
    v5 = self->_ckUtilities;
    self->_ckUtilities = v4;

    ckUtilities = self->_ckUtilities;
  }

  return ckUtilities;
}

- (void)dealloc
{
  if (dword_28141EA60 != -1)
  {
    notify_cancel(dword_28141EA60);
    dword_28141EA60 = -1;
  }

  if (dword_28141EA64 != -1)
  {
    notify_cancel(dword_28141EA64);
    dword_28141EA64 = -1;
  }

  if (dword_28141EA68 != -1)
  {
    notify_cancel(dword_28141EA68);
    dword_28141EA68 = -1;
  }

  acceptedContactsChangeNotifier = [(IMDChatRegistry *)self acceptedContactsChangeNotifier];
  [acceptedContactsChangeNotifier stopObserving];

  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  [mEMORY[0x277D1ACB8] removeListener:self];

  v5.receiver = self;
  v5.super_class = IMDChatRegistry;
  [(IMDChatRegistry *)&v5 dealloc];
}

- (NSArray)allChats
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  allValues = [(NSMutableDictionary *)self->_chats allValues];
  v4 = [allValues copy];

  [(NSRecursiveLock *)self->_chatsLock unlock];

  return v4;
}

- (NSArray)cachedChats
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  allValues = [(NSMutableDictionary *)self->_chats allValues];
  v4 = [allValues copy];

  [(NSRecursiveLock *)self->_chatsLock unlock];

  return v4;
}

- (id)_chatsWithBlackholed:(BOOL)blackholed
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  allValues = [(NSMutableDictionary *)self->_chats allValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B600094;
  v8[3] = &unk_278706308;
  blackholedCopy = blackholed;
  v6 = [allValues __imArrayByFilteringWithBlock:v8];

  [(NSRecursiveLock *)self->_chatsLock unlock];

  return v6;
}

- (unint64_t)cachedChatCount
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  v3 = [(NSMutableDictionary *)self->_chats count];
  [(NSRecursiveLock *)self->_chatsLock unlock];
  return v3;
}

- (id)chatForHandle:(id)handle account:(id)account chatIdentifier:(id)identifier guid:(id)guid lastAddressedHandle:(id)addressedHandle lastAddressedSIMID:(id)d isBlackholed:(BOOL)blackholed
{
  v57 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  accountCopy = account;
  identifierCopy = identifier;
  guidCopy = guid;
  addressedHandleCopy = addressedHandle;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v50 = handleCopy;
      v51 = 2112;
      v52 = accountCopy;
      v53 = 2112;
      v54 = identifierCopy;
      v55 = 2112;
      v56 = guidCopy;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "handle: %@  account: %@  chatIdentifier: %@  guid: %@", buf, 0x2Au);
    }
  }

  v19 = 0;
  if (handleCopy && accountCopy)
  {
    v20 = [(IMDChat *)handleCopy ID];
    v21 = [(IMDChatRegistry *)self existingChatForID:v20 account:accountCopy];

    if (v21)
    {
      v22 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v21;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }

      v19 = v21;
    }

    else
    {
      v23 = [(IMDChat *)handleCopy ID];
      v45 = [(IMDChatRegistry *)self alternateIDForHandle:v23];

      if (v45)
      {
        [(IMDChat *)handleCopy setPersonCentricID:v45];
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [(IMDChat *)handleCopy ID];
            *buf = 138412546;
            v50 = v45;
            v51 = 2112;
            v52 = v25;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Found alternate ID: %@, for handle: %@", buf, 0x16u);
          }
        }
      }

      v26 = [IMDChat alloc];
      accountID = [accountCopy accountID];
      service = [accountCopy service];
      internalName = [service internalName];
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      v31 = IMSingleObjectArray();
      LOWORD(v44) = 0;
      LOBYTE(v43) = blackholed;
      LOBYTE(v42) = 0;
      LOBYTE(v41) = 45;
      v32 = [(IMDChat *)v26 initWithAccountID:accountID service:internalName guid:guidCopy groupID:stringGUID chatIdentifier:identifierCopy participants:v31 roomName:identifierCopy displayName:0 lastAddressedLocalHandle:addressedHandleCopy lastAddressedSIMID:dCopy properties:0 state:3 style:v41 isFiltered:1 hasHadSuccessfulQuery:v42 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:0 lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v43 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v44 isDeletingIncomingMessages:0 domainIdentifiers:?];

      v33 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        lastAddressedLocalHandle = [(IMDChat *)v32 lastAddressedLocalHandle];
        *buf = 138412546;
        v50 = v32;
        v51 = 2112;
        v52 = lastAddressedLocalHandle;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_DEFAULT, "Created chat: %@ lastAddressedHandle %@", buf, 0x16u);
      }

      [(IMDChatRegistry *)self addChat:v32];
      if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled])
      {
        serviceName = [(IMDChat *)v32 serviceName];
        v36 = [serviceName isEqualToString:*MEMORY[0x277D1A620]];

        if (v36)
        {
          chatIdentifier = [(IMDChat *)v32 chatIdentifier];
          v38 = [(IMDChatRegistry *)self existingSMSChatForID:chatIdentifier withChatStyle:[(IMDChat *)v32 style]];

          if (v38)
          {
            -[IMDChat updateSMSHandshakeState:](v32, "updateSMSHandshakeState:", [v38 smsHandshakeState]);
          }
        }
      }

      v39 = +[IMDChatRegistry sharedInstance];
      [v39 addIMDHandleToRegistry:handleCopy];

      v19 = v32;
    }
  }

  return v19;
}

- (id)chatForHandles:(id)handles account:(id)account chatIdentifier:(id)identifier style:(unsigned __int8)style groupID:(id)d originalGroupID:(id)iD displayName:(id)name guid:(id)self0 lastAddressedHandle:(id)self1 lastAddressedSIMID:(id)self2 isBlackholed:(BOOL)self3
{
  v67 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  accountCopy = account;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  guidCopy = guid;
  handleCopy = handle;
  mIDCopy = mID;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v60 = handlesCopy;
      v61 = 2112;
      v62 = accountCopy;
      v63 = 2112;
      v64 = identifierCopy;
      v65 = 2112;
      v66 = guidCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEBUG, "handles: %@  account: %@  chatIdentifier: %@  guid: %@", buf, 0x2Au);
    }
  }

  if (accountCopy)
  {
    v21 = [(IMDChatRegistry *)self existingChatWithIdentifier:identifierCopy account:accountCopy];
    if (v21)
    {
      v22 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v21;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = [IMDChat alloc];
      accountID = [accountCopy accountID];
      service = [accountCopy service];
      internalName = [service internalName];
      if (dCopy)
      {
        LOWORD(v45) = 0;
        LOBYTE(v44) = blackholed;
        LOBYTE(v43) = 0;
        LOBYTE(v42) = style;
        v21 = [(IMDChat *)v23 initWithAccountID:accountID service:internalName guid:guidCopy groupID:dCopy chatIdentifier:identifierCopy participants:handlesCopy roomName:identifierCopy displayName:nameCopy lastAddressedLocalHandle:handleCopy lastAddressedSIMID:mIDCopy properties:0 state:0 style:v42 isFiltered:1 hasHadSuccessfulQuery:v43 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:iDCopy lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v44 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v45 isDeletingIncomingMessages:0 domainIdentifiers:?];
      }

      else
      {
        stringGUID = [MEMORY[0x277CCACA8] stringGUID];
        LOWORD(v45) = 0;
        LOBYTE(v44) = blackholed;
        LOBYTE(v43) = 0;
        LOBYTE(v42) = style;
        v21 = [(IMDChat *)v23 initWithAccountID:accountID service:internalName guid:guidCopy groupID:stringGUID chatIdentifier:identifierCopy participants:handlesCopy roomName:identifierCopy displayName:nameCopy lastAddressedLocalHandle:handleCopy lastAddressedSIMID:mIDCopy properties:0 state:0 style:v42 isFiltered:1 hasHadSuccessfulQuery:v43 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:iDCopy lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v44 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v45 isDeletingIncomingMessages:0 domainIdentifiers:?];
      }

      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

      if (isMissingMessagesEnabled && [(IMDChat *)v21 style]== 43)
      {
        service2 = [accountCopy service];
        internalName2 = [service2 internalName];

        v32 = IMChatLookupDomainForServiceName();
        [(IMDChat *)v21 assignIdentifier:dCopy forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        service3 = [accountCopy service];
        -[IMDChat assignIdentifier:forDomain:isHistoricalIdentifier:](v21, "assignIdentifier:forDomain:isHistoricalIdentifier:", iDCopy, v32, [service3 groupIDIsHistoricalIdentifier] ^ 1);
      }

      v34 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v21;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_DEFAULT, "Created chat: %@", buf, 0xCu);
      }

      [(IMDChatRegistry *)self addChat:v21];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v22 = handlesCopy;
      v35 = [v22 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v35)
      {
        v36 = *v55;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v22);
            }

            v38 = *(*(&v54 + 1) + 8 * i);
            v39 = +[IMDChatRegistry sharedInstance];
            [v39 addIMDHandleToRegistry:v38];
          }

          v35 = [v22 countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v35);
      }
    }

    v40 = v21;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)chatForRoom:(id)room account:(id)account chatIdentifier:(id)identifier guid:(id)guid
{
  v38 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  accountCopy = account;
  identifierCopy = identifier;
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v31 = roomCopy;
      v32 = 2112;
      v33 = accountCopy;
      v34 = 2112;
      v35 = identifierCopy;
      v36 = 2112;
      v37 = guidCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEBUG, "room: %@  account: %@  chatIdentifier: %@  guid: %@", buf, 0x2Au);
    }
  }

  v15 = [(IMDChat *)roomCopy length];
  v16 = 0;
  if (accountCopy && v15)
  {
    v17 = [(IMDChatRegistry *)self existingChatForRoom:roomCopy account:accountCopy];
    if (v17)
    {
      v18 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = [IMDChat alloc];
      accountID = [accountCopy accountID];
      service = [accountCopy service];
      internalName = [service internalName];
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      LOWORD(v29) = 0;
      LOBYTE(v28) = 0;
      LOBYTE(v27) = 0;
      LOBYTE(v26) = 35;
      v17 = [(IMDChat *)v19 initWithAccountID:accountID service:internalName guid:guidCopy groupID:stringGUID chatIdentifier:identifierCopy participants:0 roomName:roomCopy displayName:0 lastAddressedLocalHandle:0 lastAddressedSIMID:0 properties:0 state:0 style:v26 isFiltered:1 hasHadSuccessfulQuery:v27 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:0 lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v28 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v29 isDeletingIncomingMessages:0 domainIdentifiers:?];

      v24 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Created chat: %@", buf, 0xCu);
      }

      [(IMDChatRegistry *)self addChat:v17];
    }

    v16 = v17;
  }

  return v16;
}

- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)account
{
  v4 = MEMORY[0x277D1A918];
  service = [account service];
  internalName = [service internalName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B600F70;
  v9[3] = &unk_278703AF0;
  v9[4] = self;
  v7 = [v4 generateUnusedChatIdentifierForGroupChatWithServiceName:internalName chatWithChatIdentifierExists:v9];

  return v7;
}

- (id)existingiMessageChatForID:(id)d withChatStyle:(unsigned __int8)style
{
  v5 = MEMORY[0x231897A70](d, a2);
  v6 = IMCopyAnyServiceGUIDForChat();

  v7 = [(IMDChatRegistry *)self existingChatWithGUID:v6];

  return v7;
}

- (id)existingSMSChatForID:(id)d withChatStyle:(unsigned __int8)style
{
  v5 = MEMORY[0x231897A70](d, a2);
  v6 = IMCopyAnyServiceGUIDForChat();

  v7 = [(IMDChatRegistry *)self existingChatWithGUID:v6];

  return v7;
}

- (BOOL)hasKnownSenderChatWithChatIdentifier:(id)identifier
{
  v3 = [(IMDChatRegistry *)self existingiMessageChatForID:identifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isFiltered] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasScheduledMessageForHandleID:(id)d
{
  v4 = MEMORY[0x231897A70](d, a2);
  v5 = IMCopyAnyServiceGUIDForChat();

  v6 = [(IMDChatRegistry *)self _cachedChatWithGUID:v5];
  v7 = v6;
  if (v6)
  {
    hasScheduledMessage = [v6 hasScheduledMessage];
  }

  else
  {
    v9 = +[IMDMessageStore sharedInstance];
    hasScheduledMessage = [v9 hasScheduledMessageForChatGUID:v5];
  }

  return hasScheduledMessage;
}

- (id)_cachedChatWithGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    v5 = [(NSMutableDictionary *)self->_chats objectForKeyedSubscript:dCopy];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_cachedChatsWithGroupID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    v5 = [(NSMutableDictionary *)self->_chatsByGroupID objectForKey:dCopy];
    v6 = [v5 copy];

    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)pendingAlternateID:(id)d forHandle:(id)handle
{
  handleCopy = handle;
  dCopy = d;
  pendingChatBotHandleToAlternateID = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];

  if (!pendingChatBotHandleToAlternateID)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IMDChatRegistry *)self setPendingChatBotHandleToAlternateID:v9];
  }

  pendingChatBotHandleToAlternateID2 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];
  [pendingChatBotHandleToAlternateID2 setObject:dCopy forKeyedSubscript:handleCopy];
}

- (id)alternateIDForHandle:(id)handle
{
  handleCopy = handle;
  pendingChatBotHandleToAlternateID = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];

  if (pendingChatBotHandleToAlternateID)
  {
    pendingChatBotHandleToAlternateID2 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];
    pendingChatBotHandleToAlternateID = [pendingChatBotHandleToAlternateID2 objectForKeyedSubscript:handleCopy];

    if (pendingChatBotHandleToAlternateID)
    {
      pendingChatBotHandleToAlternateID3 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];
      [pendingChatBotHandleToAlternateID3 removeObjectForKey:handleCopy];
    }
  }

  return pendingChatBotHandleToAlternateID;
}

- (id)existingChatWithGUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if (isOneChatEnabled)
    {
      v7 = IMAnyServiceGUIDFromLegacyChatGUID();

      dCopy = v7;
    }

    v8 = [(IMDChatRegistry *)self _cachedChatWithGUID:dCopy];
    if (!v8)
    {
      chatStore = [(IMDChatRegistry *)self chatStore];
      v10 = [chatStore chatWithGUID:dCopy];

      v11 = [(IMDChatRegistry *)self _addChatFromCacheMiss:v10 preferExistingChat:0];
      v8 = v11;
      if (v11)
      {
        guid = [v11 guid];
        v13 = [guid isEqualToString:dCopy];

        if ((v13 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              guid2 = [v8 guid];
              v18 = 138412546;
              v19 = guid2;
              v20 = 2112;
              v21 = dCopy;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Chat GUID %@ doesn't match requested GUID %@, may have changed due to inconsistent properties", &v18, 0x16u);
            }
          }

          v8 = 0;
        }
      }

      v16 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = dCopy;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Cache miss for chat with guid: %@ result: %@", &v18, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingChatsFilteredUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v6 = [chatStore chatsFilteredUsingPredicate:predicateCopy];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)existingChatsFilteredUsingPredicate:(id)predicate sortedUsingLastMessageDateAscending:(BOOL)ascending olderThan:(id)than limit:(unint64_t)limit
{
  ascendingCopy = ascending;
  thanCopy = than;
  predicateCopy = predicate;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v13 = [chatStore chatsFilteredUsingPredicate:predicateCopy sortedUsingLastMessageDateAscending:ascendingCopy olderThan:thanCopy limit:limit];

  v14 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v13 preferExistingChats:1];

  return v14;
}

- (void)fetchExistingUnreadChatsOlderThan:(id)than predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  thanCopy = than;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6018A8;
  v15[3] = &unk_278706330;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [chatStore fetchUnreadChatsOlderThan:thanCopy predicate:predicateCopy limit:limit completionHandler:v15];
}

- (id)existingChatsWithGroupID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [dCopy length];
  v6 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = [(IMDChatRegistry *)self _cachedChatsWithGroupID:dCopy];
    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      chatStore = [(IMDChatRegistry *)self chatStore];
      v10 = [chatStore chatsWithGroupID:dCopy];

      v8 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v10 preferExistingChats:1];

      v11 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v8 arrayByApplyingSelector:sel_guid];
        v15 = 138412546;
        v16 = dCopy;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Cache miss for chats with group ID: %@ result: %@", &v15, 0x16u);
      }
    }

    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v6;
    }

    v6 = v13;
  }

  return v6;
}

- (id)existingChatWithGroupID:(id)d onService:(id)service
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  serviceCopy = service;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  v10 = [(IMDChatRegistry *)self existingChatsWithGroupID:dCopy];
  v11 = v10;
  if (isOneChatEnabled)
  {
    firstObject = [v10 firstObject];
LABEL_13:
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          serviceName = [v17 serviceName];
          v19 = [serviceName isEqualToString:serviceCopy];

          if (v19)
          {
            firstObject = v17;

            goto LABEL_13;
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)existingChatWithIdentifier:(id)identifier account:(id)account
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  if ([identifierCopy length])
  {
    service = [accountCopy service];
    internalName = [service internalName];
    v10 = IMCopyAnyServiceGUIDForChat();

    v11 = [(IMDChatRegistry *)self _cachedChatWithGUID:v10];
    if (v11)
    {
      v12 = v11;
      v13 = v12;
    }

    else
    {
      service2 = [accountCopy service];
      internalName2 = [service2 internalName];
      v16 = IMCopyAnyServiceGUIDForChat();

      v17 = [(IMDChatRegistry *)self _cachedChatWithGUID:v16];
      v12 = v17;
      if (v17)
      {
        v13 = v17;
      }

      else
      {
        chatStore = [(IMDChatRegistry *)self chatStore];
        service3 = [accountCopy service];
        v20 = [chatStore chatsWithIdentifier:identifierCopy onService:service3];

        firstObject = [v20 firstObject];
        v13 = [(IMDChatRegistry *)self _addChatFromCacheMiss:firstObject preferExistingChat:1];

        if (v13)
        {
          chatIdentifier = [v13 chatIdentifier];
          v23 = [chatIdentifier isEqualToString:identifierCopy];

          if ((v23 & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                chatIdentifier2 = [v13 chatIdentifier];
                v28 = 138412546;
                v29 = chatIdentifier2;
                v30 = 2112;
                v31 = identifierCopy;
                _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Chat identifier %@ doesn't match requested identifier %@, may have changed due to inconsistent properties", &v28, 0x16u);
              }
            }

            v13 = 0;
          }
        }

        v26 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412802;
          v29 = identifierCopy;
          v30 = 2112;
          v31 = accountCopy;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Cache miss for chat with identifier: %@ account: %@ result: %@", &v28, 0x20u);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)existingChatsWithPinningIdentifier:(id)identifier
{
  identifierCopy = identifier;
  supportedServiceNames = [objc_opt_class() supportedServiceNames];
  v6 = [(IMDChatRegistry *)self allChatsWithIdentifier:identifierCopy style:45 serviceNames:supportedServiceNames];

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v8 = [(IMDChatRegistry *)self existingChatsWithGroupID:identifierCopy];
    if ([v8 count])
    {
      v7 = v8;
    }

    else
    {
      chatStore = [(IMDChatRegistry *)self chatStore];
      v10 = [chatStore chatsWithPinningIdentifier:identifierCopy];

      v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v10 preferExistingChats:1];
    }
  }

  return v7;
}

- (id)existingChatWithEngramID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allChats = [(IMDChatRegistry *)self allChats];
    v6 = [allChats countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allChats);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          engramID = [v9 engramID];
          v11 = [engramID isEqualToString:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [allChats countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)existingChatForID:(id)d account:(id)account
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  v8 = [dCopy length];
  v9 = 0;
  if (accountCopy && v8)
  {
    service = [accountCopy service];
    internalName = [service internalName];
    v12 = IMCopyAnyServiceGUIDForChat();

    v13 = [(IMDChatRegistry *)self existingChatWithGUID:v12];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      chatStore = [(IMDChatRegistry *)self chatStore];
      service2 = [accountCopy service];
      internalName2 = [service2 internalName];
      v18 = [chatStore chatsWithHandle:dCopy onService:internalName2];

      firstObject = [v18 firstObject];
      v9 = [(IMDChatRegistry *)self _addChatFromCacheMiss:firstObject preferExistingChat:1];

      v20 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412802;
        v23 = dCopy;
        v24 = 2112;
        v25 = accountCopy;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Cache miss for chats with ID: %@ account: %@ result: %@", &v22, 0x20u);
      }
    }
  }

  return v9;
}

- (id)existingChatForIDs:(id)ds account:(id)account displayName:(id)name groupID:(id)d style:(unsigned __int8)style
{
  styleCopy = style;
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  service = [account service];
  v16 = [(IMDChatRegistry *)self existingChatsForIDs:dsCopy onService:service displayName:nameCopy groupID:dCopy style:styleCopy];

  firstObject = [v16 firstObject];

  return firstObject;
}

- (id)existingChatForIDs:(id)ds account:(id)account displayName:(id)name originalGroupID:(id)d style:(unsigned __int8)style
{
  styleCopy = style;
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  service = [account service];
  v16 = [(IMDChatRegistry *)self existingChatsForIDs:dsCopy onService:service displayName:nameCopy originalGroupID:dCopy style:styleCopy];

  firstObject = [v16 firstObject];

  return firstObject;
}

- (id)existingChatsForIDs:(id)ds onService:(id)service displayName:(id)name groupID:(id)d style:(unsigned __int8)style
{
  styleCopy = style;
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  internalName = [service internalName];
  v16 = [(IMDChatRegistry *)self _existingChatsForIDs:dsCopy serviceName:internalName displayName:nameCopy groupID:dCopy useOriginalGroupID:0 style:styleCopy];

  return v16;
}

- (id)existingChatsForIDs:(id)ds onService:(id)service displayName:(id)name originalGroupID:(id)d style:(unsigned __int8)style
{
  styleCopy = style;
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  internalName = [service internalName];
  v16 = [(IMDChatRegistry *)self _existingChatsForIDs:dsCopy serviceName:internalName displayName:nameCopy groupID:dCopy useOriginalGroupID:1 style:styleCopy];

  return v16;
}

- (id)existingChatsForIDs:(id)ds displayName:(id)name groupID:(id)d style:(unsigned __int8)style
{
  styleCopy = style;
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  nameCopy = name;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v15 = [(IMDChatRegistry *)self _existingChatsForIDs:dsCopy serviceName:*MEMORY[0x277D1A5F8] displayName:nameCopy groupID:dCopy useOriginalGroupID:0 style:styleCopy];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [objc_opt_class() supportedServiceNames];
    v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [(IMDChatRegistry *)self _existingChatsForIDs:dsCopy serviceName:*(*(&v23 + 1) + 8 * i) displayName:nameCopy groupID:dCopy useOriginalGroupID:0 style:styleCopy];
          [v15 addObjectsFromArray:v20];
        }

        v17 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  return v15;
}

- (id)existingChatsForGroupedIDs:(id)ds displayName:(id)name style:(unsigned __int8)style
{
  styleCopy = style;
  nameCopy = name;
  dsCopy = ds;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v11 = [chatStore chatsWithGroupedHandles:dsCopy displayName:nameCopy style:styleCopy];

  v12 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v11 preferExistingChats:1];

  return v12;
}

- (id)_existingChatsForIDs:(id)ds serviceName:(id)name displayName:(id)displayName groupID:(id)d useOriginalGroupID:(BOOL)iD style:(unsigned __int8)style
{
  styleCopy = style;
  iDCopy = iD;
  dCopy = d;
  displayNameCopy = displayName;
  nameCopy = name;
  dsCopy = ds;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v19 = chatStore;
  if (iDCopy)
  {
    [chatStore chatsWithHandles:dsCopy onService:nameCopy displayName:displayNameCopy originalGroupID:dCopy style:styleCopy];
  }

  else
  {
    [chatStore chatsWithHandles:dsCopy onService:nameCopy displayName:displayNameCopy groupID:dCopy style:styleCopy];
  }
  v20 = ;

  v21 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v20 preferExistingChats:1];

  return v21;
}

- (id)_existingChatsSortedByIdentifiersAndRecencyFromSortedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v6 = [chatStore chatsFromSortedIdentifiers:identifiersCopy];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)existingChatForRoom:(id)room account:(id)account
{
  v38 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  accountCopy = account;
  if (accountCopy && [roomCopy length])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    allChats = [(IMDChatRegistry *)self allChats];
    v9 = [allChats countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(allChats);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          service = [v13 service];
          service2 = [accountCopy service];

          if (service == service2 && [v13 style] == 35)
          {
            roomName = [v13 roomName];
            if ([roomName length])
            {
              roomName2 = [v13 roomName];
              v18 = [roomName2 isEqualToString:roomCopy];

              if (v18)
              {
                v24 = v13;
                goto LABEL_20;
              }
            }

            else
            {
            }
          }
        }

        v10 = [allChats countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v10);
    }

    chatStore = [(IMDChatRegistry *)selfCopy chatStore];
    service3 = [accountCopy service];
    internalName = [service3 internalName];
    allChats = [chatStore chatsWithRoomname:roomCopy onService:internalName];

    firstObject = [allChats firstObject];
    v24 = [(IMDChatRegistry *)selfCopy _addChatFromCacheMiss:firstObject preferExistingChat:1];

    v23 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = roomCopy;
      v33 = 2112;
      v34 = accountCopy;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Cache miss for chat with roomname: %@ account: %@ result: %@", buf, 0x20u);
    }

LABEL_20:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)allChatsWithIdentifier:(id)identifier style:(unsigned __int8)style serviceNames:(id)names
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  namesCopy = names;
  if ([identifierCopy length] && objc_msgSend(namesCopy, "count"))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if (isOneChatEnabled)
    {
      v12 = IMCopyAnyServiceGUIDForChat();
      v13 = [(IMDChatRegistry *)self existingChatWithGUID:v12];
      v14 = v13;
      if (v13)
      {
        v30[0] = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      }

      else
      {
        v15 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = namesCopy;
      v16 = namesCopy;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = IMCopyGUIDForChat();
            v22 = [(IMDChatRegistry *)self existingChatWithGUID:v21];
            if (v22)
            {
              [v9 addObject:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }

      v15 = v9;
      namesCopy = v24;
    }
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (id)allExistingSupportedServiceChatsWithIdentifier:(id)identifier style:(unsigned __int8)style
{
  styleCopy = style;
  identifierCopy = identifier;
  supportedServiceNames = [objc_opt_class() supportedServiceNames];
  v8 = [(IMDChatRegistry *)self allChatsWithIdentifier:identifierCopy style:styleCopy serviceNames:supportedServiceNames];

  return v8;
}

- (id)allExistingChatsWithIdentifier:(id)identifier style:(unsigned __int8)style
{
  styleCopy = style;
  identifierCopy = identifier;
  supportedServiceNames = [objc_opt_class() supportedServiceNames];
  v8 = [(IMDChatRegistry *)self allChatsWithIdentifier:identifierCopy style:styleCopy serviceNames:supportedServiceNames];

  return v8;
}

- (id)allExistingChatsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v6 = [chatStore chatsWithIdentifier:identifierCopy];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)_participantIDSetFromHandles:(id)handles toIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x277CBEB58];
  handlesCopy = handles;
  v8 = objc_alloc_init(v6);
  v9 = [handlesCopy __imArrayByApplyingBlock:&unk_283F1A468];

  [v8 addObjectsFromArray:v9];
  if (identifierCopy)
  {
    [v8 addObject:identifierCopy];
  }

  return v8;
}

- (id)_exactGroupChatMatchOrNewestMatchingIdentifierFromSortedIdentifiers:(id)identifiers participants:(id)participants toIdentifier:(id)identifier
{
  v44 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  participantsCopy = participants;
  identifierCopy = identifier;
  v10 = [(IMDChatRegistry *)self _existingChatsSortedByIdentifiersAndRecencyFromSortedIdentifiers:identifiersCopy];
  firstObject = [v10 firstObject];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v36 = identifiersCopy;
    obj = v12;
    v15 = 0;
    v16 = *v40;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        participants = [v18 participants];
        v20 = [(IMDChatRegistry *)self _participantIDSetFromHandles:participants toIdentifier:identifierCopy];

        if ([participantsCopy isEqualToSet:v20])
        {
          v23 = v18;

          v12 = obj;
          identifiersCopy = v36;
          goto LABEL_27;
        }

        v21 = [participantsCopy mutableCopy];
        [v21 intersectSet:v20];
        if ([v21 count] > v15)
        {
          v22 = v18;

          v15 = [v21 count];
          firstObject = v22;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v12 = obj;

    identifiersCopy = v36;
    if (v15 > 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ([v12 count])
  {
    v24 = [participantsCopy count];
    participants2 = [firstObject participants];
    if (v24 <= [participants2 count])
    {
      participants3 = [firstObject participants];
      v28 = [participants3 count];

      if (v28 < 5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = [participantsCopy count];

      if (v26 <= 4)
      {
        goto LABEL_21;
      }
    }

    [(IMDChatRegistry *)self _submitAndOpenTapToRadarForSortedIdentifiers:identifiersCopy participants:participantsCopy sortedChats:v12];
  }

LABEL_21:
  v29 = [participantsCopy count];
  participants4 = [firstObject participants];
  if (v29 <= [participants4 count])
  {
    participants5 = [firstObject participants];
    v34 = [participants5 count];

    if (v34 <= 7)
    {
      goto LABEL_23;
    }

LABEL_25:
    v32 = 0;
    goto LABEL_26;
  }

  v31 = [participantsCopy count];

  if (v31 >= 8)
  {
    goto LABEL_25;
  }

LABEL_23:
  v32 = firstObject;
LABEL_26:
  v23 = v32;
LABEL_27:

  return v23;
}

- (void)_submitAndOpenTapToRadarForSortedIdentifiers:(id)identifiers participants:(id)participants sortedChats:(id)chats
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  participantsCopy = participants;
  chatsCopy = chats;
  v10 = [chatsCopy __imArrayByApplyingBlock:&unk_283F1A488];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = identifiersCopy;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Matched identifiers %@ to chats with guids %@ with no matching participants!", buf, 0x16u);
    }
  }

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v15 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.MobileSMS" forKey:@"ChatInconsistencyTTRKey"];
    v16 = [v15 intValue] > 0;

    if (!v16)
    {
      mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
      v18 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [mEMORY[0x277D1A990]2 setValue:v18 forDomain:@"com.apple.MobileSMS" forKey:@"ChatInconsistencyTTRKey"];

      v19 = [chatsCopy __imArrayByApplyingBlock:&unk_283F1A4A8];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** If this is an internal group, please request logs from all participants! ***\n\nChats were found using the provided identifiers %@ and participants %@ that had no matching participants.\n\nChats Found: %@\n\nIdentifiers: %@", identifiersCopy, participantsCopy, chatsCopy, v19];
      [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.BestCandidateChatAlert" notificationTitle:@"[Internal] Chat Inconsistencies" notificationBody:@"Please tap here to file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[FindChat] Found Chat By Identifier With No Matching Participants" problemDescription:v20 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EF18 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
    }
  }
}

- (id)_exactGroupChatMatchOrNewestMatchingGroupID:(id)d originalGroupID:(id)iD serviceName:(id)name participants:(id)participants toIdentifier:(id)identifier outNewestSiblingChat:(id *)chat
{
  v90 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  participantsCopy = participants;
  identifierCopy = identifier;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_22B4D7740;
  v79 = sub_22B4D78FC;
  v80 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_22B4D7740;
  v71 = sub_22B4D78FC;
  v72 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B603E74;
  aBlock[3] = &unk_278706378;
  v64 = &v67;
  selfCopy = self;
  v50 = nameCopy;
  v60 = v50;
  selfCopy2 = self;
  v47 = identifierCopy;
  v62 = v47;
  v46 = participantsCopy;
  v63 = v46;
  v65 = v73;
  v66 = &v75;
  v16 = _Block_copy(aBlock);
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    v19 = iDCopy;
  }

  else
  {
    v19 = dCopy;
  }

  if (isMissingMessagesEnabled)
  {
    v20 = dCopy;
  }

  else
  {
    v20 = iDCopy;
  }

  v21 = v19;
  v53 = v20;
  v54 = v21;
  [(IMDChatRegistry *)selfCopy existingChatsWithGroupID:v21];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v22 = v56 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v55 objects:v89 count:16];
  if (v23)
  {
    v24 = *v56;
    do
    {
      v25 = 0;
      do
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v55 + 1) + 8 * v25);
        mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isMissingMessagesEnabled2 = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

        if (isMissingMessagesEnabled2 & 1) != 0 || ([v26 groupID], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToIgnoringCase:", v54), v29, (v30))
        {
          v16[2](v16, v26);
        }

        else if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v82 = v26;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " ==> ERROR sanity check failed: ChatRegistry returned chat that did not match inputs: %@", buf, 0xCu);
          }
        }

        ++v25;
      }

      while (v23 != v25);
      v32 = [v22 countByEnumeratingWithState:&v55 objects:v89 count:16];
      v23 = v32;
    }

    while (v32);
  }

  if (v53 && !v76[5])
  {
    v33 = [(IMDChatRegistry *)selfCopy newestExistingChatWithOriginalGroupID:v53 onService:v50];
    mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled3 = [mEMORY[0x277D1A9B8]3 isMissingMessagesEnabled];

    if ((isMissingMessagesEnabled3 & 1) != 0 || ([v33 originalGroupID], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", iDCopy), v36, v37))
    {
      v16[2](v16, v33);
    }

    mEMORY[0x277D1A9B8]4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled4 = [mEMORY[0x277D1A9B8]4 isMissingMessagesEnabled];

    if (isMissingMessagesEnabled4 && v54 && v76[5] && [v54 length])
    {
      v40 = IMChatLookupDomainForServiceName();
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          guid = [v76[5] guid];
          *buf = 138413058;
          v82 = v53;
          v83 = 2112;
          v84 = v54;
          v85 = 2112;
          v86 = v40;
          v87 = 2112;
          v88 = guid;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Found a chat using fallback identifier %@ rather than identifier %@. Assigning identifier for domain %@ to chat with guid %@ as a historical identifier", buf, 0x2Au);
        }
      }

      [v76[5] assignIdentifier:v54 forDomain:v40 isHistoricalIdentifier:1];
    }
  }

  if (chat)
  {
    v43 = v68[5];
    if (v43)
    {
      *chat = v43;
    }
  }

  v44 = v76[5];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v75, 8);

  return v44;
}

- (id)_newestGroupChatMatchingParticipants:(id)participants displayName:(id)name strictDisplayNameMatching:(BOOL)matching serviceName:(id)serviceName toIdentifier:(id)identifier
{
  matchingCopy = matching;
  v47 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  nameCopy = name;
  serviceNameCopy = serviceName;
  identifierCopy = identifier;
  v37 = participantsCopy;
  v16 = [participantsCopy mutableCopy];
  v35 = identifierCopy;
  [v16 removeObject:identifierCopy];
  v34 = v16;
  allObjects = [v16 allObjects];
  v36 = serviceNameCopy;
  v18 = [(IMDChatRegistry *)self _existingChatsForIDs:allObjects serviceName:serviceNameCopy displayName:nameCopy groupID:0 useOriginalGroupID:0 style:43];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v20)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v39;
  do
  {
    v24 = 0;
    do
    {
      if (*v39 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v38 + 1) + 8 * v24);
      if (matchingCopy && ![nameCopy length])
      {
        displayName = [v25 displayName];
        v29 = [displayName length];

        if (v29)
        {
          v27 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            displayName2 = [v25 displayName];
            *buf = 138412546;
            v43 = displayName2;
            v44 = 2112;
            v45 = v25;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, " ==> Skipping chat with display name of %@, requested display name was zero length, chat: %@", buf, 0x16u);
          }

LABEL_13:

          goto LABEL_14;
        }
      }

      if (!v22 || [v25 isNewerThan:v22])
      {
        v26 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v25;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, " ==> Found a newer chat based on participants and display name: %@", buf, 0xCu);
        }

        v27 = v22;
        v22 = v25;
        goto LABEL_13;
      }

LABEL_14:
      ++v24;
    }

    while (v21 != v24);
    v31 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
    v21 = v31;
  }

  while (v31);
LABEL_22:

  v32 = v22;
  return v22;
}

- (void)_setGroupID:(id)d forChatAndAllSiblings:(id)siblings
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  siblingsCopy = siblings;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = dCopy;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, " ==> Migrating siblings to new groupID if needed: %@", buf, 0xCu);
  }

  chatIdentifier = [siblingsCopy chatIdentifier];
  v22 = siblingsCopy;
  v10 = -[IMDChatRegistry allExistingChatsWithIdentifier:style:](self, "allExistingChatsWithIdentifier:style:", chatIdentifier, [siblingsCopy style]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        groupID = [v16 groupID];
        v18 = IMSharedHelperAreObjectsLogicallySame();

        if ((v18 & 1) == 0)
        {
          v19 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            guid = [v16 guid];
            groupID2 = [v16 groupID];
            *buf = 138412802;
            v28 = guid;
            v29 = 2112;
            v30 = groupID2;
            v31 = 2112;
            v32 = dCopy;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, " ==> Updating chat (%@) group ID from %@ => %@", buf, 0x20u);
          }

          [(IMDChatRegistry *)self updateGroupIDForChat:v16 newGroupID:dCopy];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v13);
  }
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants updatingToLatestiMessageGroupID:(id)d sortedIdentifiers:(id)identifiers serviceName:(id)serviceName
{
  v87 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  identifiersCopy = identifiers;
  serviceNameCopy = serviceName;
  participantsCopy = participants;
  toIdentifierCopy = toIdentifier;
  _stripFZIDPrefix = [identifier _stripFZIDPrefix];
  _stripFZIDPrefix2 = [toIdentifierCopy _stripFZIDPrefix];

  v18 = [participantsCopy __imArrayByApplyingBlock:&unk_283F1A4C8];

  v52 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v18];
  v19 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v58 = _stripFZIDPrefix2;
    v59 = 2112;
    v60 = _stripFZIDPrefix;
    v61 = 2112;
    *v62 = nameCopy;
    *&v62[8] = 2112;
    *v63 = v18;
    *&v63[8] = 2112;
    *v64 = identifiersCopy;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Finding best candidate group chat with toIdentifier: %@ fromIdentifier: %@ displayName: %@ participants: %@ sortedIdentifiers: %@", buf, 0x34u);
  }

  v20 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, " ==> Looking up with identifiers", buf, 2u);
  }

  if (![identifiersCopy count])
  {
    goto LABEL_9;
  }

  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v18];
  v22 = [(IMDChatRegistry *)self _exactGroupChatMatchOrNewestMatchingIdentifierFromSortedIdentifiers:identifiersCopy participants:v21 toIdentifier:_stripFZIDPrefix2];

  v23 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, " ==> Found chat with identifiers.", buf, 2u);
  }

  if (!v22)
  {
LABEL_9:
    v24 = v18;
    v25 = +[IMDServiceController sharedController];
    v26 = [v25 serviceWithName:serviceNameCopy];
    groupsMergeDisplayNames = [v26 groupsMergeDisplayNames];

    v28 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v58) = groupsMergeDisplayNames;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, " ==> groupID lookup failed, falling back to display name, participants, and mergeDisplayNames: %{BOOL}d", buf, 8u);
    }

    if (groupsMergeDisplayNames)
    {
      v29 = 0;
    }

    else
    {
      v29 = nameCopy;
    }

    v22 = [(IMDChatRegistry *)self _newestGroupChatMatchingParticipants:v52 displayName:v29 strictDisplayNameMatching:groupsMergeDisplayNames ^ 1u serviceName:serviceNameCopy toIdentifier:_stripFZIDPrefix2];
    v18 = v24;
  }

  if ([dCopy length] && v22)
  {
    [(IMDChatRegistry *)self assignNonHistoricaliMessageIdentifierAndBroadcastForChat:v22 identifier:dCopy];
    goto LABEL_19;
  }

  if (v22)
  {
LABEL_19:
    v30 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      guid = [v22 guid];
      style = [v22 style];
      state = [v22 state];
      displayName = [v22 displayName];
      chatIdentifier = [v22 chatIdentifier];
      rowID = [v22 rowID];
      originalGroupID = [v22 originalGroupID];
      isFiltered = [v22 isFiltered];
      v44 = ([v22 repairHistory] >> 1) & 1;
      v43 = ([v22 repairHistory] >> 2) & 1;
      v42 = ([v22 repairHistory] >> 3) & 1;
      v41 = ([v22 repairHistory] >> 4) & 1;
      v40 = [v22 repairHistory] & 1;
      v35 = ([v22 repairHistory] >> 5) & 1;
      [v22 domainIdentifiers];
      v36 = v49 = v18;
      [v22 participants];
      v37 = v50 = dCopy;
      v38 = [v37 __imArrayByApplyingBlock:&unk_283F1A4E8];
      *buf = 134222082;
      v58 = v22;
      v59 = 2112;
      v60 = guid;
      v61 = 1024;
      *v62 = style;
      *&v62[4] = 1024;
      *&v62[6] = state;
      *v63 = 2112;
      *&v63[2] = displayName;
      *v64 = 2112;
      *&v64[2] = chatIdentifier;
      v65 = 2048;
      v66 = rowID;
      v67 = 2112;
      v68 = originalGroupID;
      v69 = 1024;
      v70 = isFiltered;
      v71 = 1024;
      v72 = v44;
      v73 = 1024;
      v74 = v43;
      v75 = 1024;
      v76 = v42;
      v77 = 1024;
      v78 = v41;
      v79 = 1024;
      v80 = v40;
      v81 = 1024;
      v82 = v35;
      v83 = 2112;
      v84 = v36;
      v85 = 2112;
      v86 = v38;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, " ==> Found matching chat: [IMDChat: %p  GUID: %@  Style: %c  State: %d  Display Name: %@  Identifier: %@  Row ID: %lld  originalGroupID: %@  isFiltered: %d  repairHistory: (Repaired Participant For Chat ID Handle ID Mismatch: %{BOOL}d  Repaired Blank Service Name: %{BOOL}d  Repaired Chat Identifier: %{BOOL}d  Repaired Participant V2: %{BOOL}d  Repaired GUID: %{BOOL}d  Repaired GUID V2: %{BOOL}d)  Domain Identifiers: %@  Participants: %@]", buf, 0x88u);

      dCopy = v50;
      v18 = v49;
    }

    goto LABEL_21;
  }

  v30 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, " ==> Did not find a matching chat", buf, 2u);
  }

LABEL_21:

  return v22;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d originalGroupID:(id)iD serviceName:(id)serviceName
{
  v53 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  serviceNameCopy = serviceName;
  participantsCopy = participants;
  toIdentifierCopy = toIdentifier;
  _stripFZIDPrefix = [identifier _stripFZIDPrefix];
  _stripFZIDPrefix2 = [toIdentifierCopy _stripFZIDPrefix];

  v22 = [participantsCopy __imArrayByApplyingBlock:&unk_283F1A508];

  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v22];
  v24 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v44 = _stripFZIDPrefix2;
    v45 = 2112;
    v46 = _stripFZIDPrefix;
    v47 = 2112;
    v48 = nameCopy;
    v49 = 2112;
    v50 = v22;
    v51 = 2112;
    v52 = dCopy;
    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Finding best candidate group chat with toIdentifier: %@ fromIdentifier: %@ displayName: %@ partipciants: %@ groupID: %@", buf, 0x34u);
  }

  v25 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = dCopy;
    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, " ==> Looking up with groupID %@", buf, 0xCu);
  }

  v40 = _stripFZIDPrefix;

  v39 = iDCopy;
  if ([dCopy length])
  {
    v42 = 0;
    selfCopy2 = self;
    v27 = [(IMDChatRegistry *)self _exactGroupChatMatchOrNewestMatchingGroupID:dCopy originalGroupID:iDCopy serviceName:serviceNameCopy participants:v23 toIdentifier:_stripFZIDPrefix2 outNewestSiblingChat:&v42, iDCopy, v40];
    v28 = v42;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
    selfCopy2 = self;
    v28 = 0;
  }

  v29 = +[IMDServiceController sharedController];
  v30 = [v29 serviceWithName:serviceNameCopy];
  groupsMergeDisplayNames = [v30 groupsMergeDisplayNames];

  v32 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v44 = nameCopy;
    v45 = 2112;
    v46 = v22;
    v47 = 1024;
    LODWORD(v48) = groupsMergeDisplayNames;
    _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, " ==> groupID lookup failed, falling back to display name: %@ participants: %@ mergeDisplayNames: %{BOOL}d", buf, 0x1Cu);
  }

  if (groupsMergeDisplayNames)
  {
    v33 = 0;
  }

  else
  {
    v33 = nameCopy;
  }

  v27 = [(IMDChatRegistry *)selfCopy2 _newestGroupChatMatchingParticipants:v23 displayName:v33 strictDisplayNameMatching:groupsMergeDisplayNames ^ 1u serviceName:serviceNameCopy toIdentifier:_stripFZIDPrefix2];
LABEL_15:
  if ([dCopy length] && v27)
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if (isOneChatEnabled)
    {
      [(IMDChatRegistry *)selfCopy2 assignNonHistoricaliMessageIdentifierAndBroadcastForChat:v27 identifier:dCopy];
    }

    else
    {
      [(IMDChatRegistry *)selfCopy2 _setGroupID:dCopy forChatAndAllSiblings:v27];
    }
  }

  v36 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v27;
    _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_DEFAULT, " ==> Found matching chat: %@", buf, 0xCu);
  }

  v37 = v27;
  return v27;
}

- (void)updateLastMessageForChat:(id)chat hintMessage:(id)message historyQuery:(BOOL)query
{
  queryCopy = query;
  v25 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  messageCopy = message;
  v9 = messageCopy;
  if (chatCopy)
  {
    if ([messageCopy scheduleType] == 2 && (objc_msgSend(v9, "scheduleState") == 2 || objc_msgSend(v9, "scheduleState") == 1))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Scheduled Messages | Skiping updating last message as hint message is a user scheduled message", &v21, 2u);
        }

LABEL_8:
      }
    }

    else
    {
      if ([v9 isTypingMessage])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_31;
        }

        v10 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Skipping updating last message to %@ because it's a typingMessage.", &v21, 0xCu);
        }

        goto LABEL_8;
      }

      if (v9 && [v9 messageID] && (objc_msgSend(chatCopy, "lastMessage"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isOlderThanItem:", v9), v11, v12))
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            time = [v9 time];
            lastMessage = [chatCopy lastMessage];
            time2 = [lastMessage time];
            v21 = 138412546;
            v22 = time;
            v23 = 2112;
            v24 = time2;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " Hint message for last message was newer than the current last message: %@, current: %@", &v21, 0x16u);
          }
        }

        v17 = v9;
      }

      else
      {
        if (!queryCopy)
        {
          goto LABEL_31;
        }

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v21 = 138412290;
            v22 = chatCopy;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " Querying db for last message: %@", &v21, 0xCu);
          }
        }

        v19 = +[IMDMessageStore sharedInstance];
        v17 = [v19 lastMessageForChatWithRowID:{objc_msgSend(chatCopy, "rowID")}];
      }

      v20 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = v17;
        v23 = 2112;
        v24 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, " => Using last message: %@ for chat: %@", &v21, 0x16u);
      }

      [chatCopy _updateLastMessage:v17];
    }
  }

LABEL_31:
}

- (BOOL)updateUnreadCountForChat:(id)chat
{
  v42 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      guid = [chatCopy guid];
      if ([guid length])
      {
        v7 = IMLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D6618(chatCopy, v7);
        }

        *v38 = 0;
        *&v38[8] = v38;
        *&v38[16] = 0x3032000000;
        v39 = sub_22B4D7740;
        v40 = sub_22B4D78FC;
        v41 = 0;
        synchronousDatabaseQueryProvider = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
        v37 = guid;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_22B605B00;
        v26[3] = &unk_278705FF0;
        v26[4] = v38;
        [synchronousDatabaseQueryProvider generateUnreadCountReportsForChatsWithGUIDs:v9 completionHandler:v26];

        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = *(*&v38[8] + 40);
            unreadCount = [v11 unreadCount];
            guid2 = [chatCopy guid];
            rowID = [chatCopy rowID];
            *buf = 134218754;
            v30 = v11;
            v31 = 2048;
            v32 = unreadCount;
            v33 = 2112;
            v34 = guid2;
            v35 = 2048;
            v36 = rowID;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Fetched unread count report %p with unread count %llu for chat GUID %@ chat row ID %lld", buf, 0x2Au);
          }
        }

        v15 = *(*&v38[8] + 40);
        if (v15 && [v15 unreadCount])
        {
          v16 = +[IMDMessageStore sharedInstance];
          unreadCountController = [v16 unreadCountController];
          v27 = *(*&v38[8] + 40);
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
          v19 = [unreadCountController updateReports:v18];
        }

        else
        {
          v16 = +[IMDMessageStore sharedInstance];
          unreadCountController = [v16 unreadCountController];
          v28 = guid;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          v19 = [unreadCountController clearUnreadCountForChatsWithGUIDs:v18];
        }

        v20 = v19;

        _Block_object_dispose(v38, 8);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      unreadCount2 = [chatCopy unreadCount];
      v22 = +[IMDChatStore sharedInstance];
      v23 = [v22 unreadCountForChat:chatCopy];

      if (v23 < 0)
      {
        v20 = 0;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *v38 = 138412546;
            *&v38[4] = chatCopy;
            *&v38[12] = 1024;
            *&v38[14] = v23;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Updating unread count for chat: %@ to: %d", v38, 0x12u);
          }
        }

        [chatCopy _setUnreadCount:v23 & 0x7FFFFFFF];
        v20 = unreadCount2 != [chatCopy unreadCount];
      }
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)updateStateForChat:(id)chat fromMessage:(id)message toMessage:(id)toMessage forcePost:(BOOL)post hintMessage:(id)hintMessage shouldRebuildFailedMessageDate:(BOOL)date shouldCalculateUnreadCount:(BOOL)count setUnreadCountToZero:(BOOL)self0
{
  dateCopy = date;
  postCopy = post;
  v36 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  messageCopy = message;
  toMessageCopy = toMessage;
  hintMessageCopy = hintMessage;
  if (hintMessageCopy)
  {
    [(IMDChatRegistry *)self updateLastMessageForChat:chatCopy hintMessage:hintMessageCopy];
  }

  isBeingSetup = [(IMDChatRegistry *)self isBeingSetup];
  if ((count || zero) && !isBeingSetup)
  {
    v22 = +[IMDMessageStore sharedInstance];
    guid = [chatCopy guid];
    [v22 updateStampForGUID:guid];
  }

  if (toMessageCopy && messageCopy && dateCopy && ([messageCopy errorCode] || objc_msgSend(toMessageCopy, "errorCode")))
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v34 = 138412290;
        v35 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "We believe the failed message might have changed, lets rebuild with fromMessage: %@", &v34, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v34 = 138412290;
        v35 = toMessageCopy;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "    => toMessage: %@", &v34, 0xCu);
      }
    }

    v26 = 0;
  }

  else
  {
    if (!postCopy)
    {
      goto LABEL_30;
    }

    v26 = 1;
  }

  v27 = [chatCopy copyDictionaryRepresentation:0];
  _sharedMessageStore = [(IMDChatRegistry *)self _sharedMessageStore];
  isSuppressDatabaseUpdates = [_sharedMessageStore isSuppressDatabaseUpdates];

  if (isSuppressDatabaseUpdates ^ 1 | postCopy)
  {
    v30 = +[IMDBroadcastController sharedProvider];
    v31 = [v30 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(chatCopy, "isBlackholed")}];
    guid2 = [chatCopy guid];
    [v31 chat:guid2 updated:v27];
  }

  if (((v26 | [(IMDChatRegistry *)self isBeingSetup]) & 1) == 0)
  {
    _sharedMessageStore2 = [(IMDChatRegistry *)self _sharedMessageStore];
    [_sharedMessageStore2 rebuildLastFailedMessageDate];
  }

LABEL_30:
}

- (void)updateStateForChat:(id)chat hintMessage:(id)message shouldRebuildFailedMessageDate:(BOOL)date setUnreadCountToZero:(BOOL)zero
{
  BYTE1(v6) = zero;
  LOBYTE(v6) = 0;
  [(IMDChatRegistry *)self updateStateForChat:chat fromMessage:0 toMessage:0 forcePost:0 hintMessage:message shouldRebuildFailedMessageDate:date shouldCalculateUnreadCount:v6 setUnreadCountToZero:?];
}

- (void)updateStateForChat:(id)chat forcePost:(BOOL)post shouldRebuildFailedMessageDate:(BOOL)date setUnreadCountToZero:(BOOL)zero
{
  BYTE1(v6) = zero;
  LOBYTE(v6) = 0;
  [(IMDChatRegistry *)self updateStateForChat:chat fromMessage:0 toMessage:0 forcePost:post hintMessage:0 shouldRebuildFailedMessageDate:date shouldCalculateUnreadCount:v6 setUnreadCountToZero:?];
}

- (void)assignNonHistoricaliMessageIdentifierAndBroadcastForChat:(id)chat identifier:(id)identifier
{
  v39 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  identifierCopy = identifier;
  if (chatCopy)
  {
    v8 = *MEMORY[0x277D19780];
    v9 = [chatCopy latestIdentifierForDomain:*MEMORY[0x277D19780]];
    domainIdentifiers = [chatCopy domainIdentifiers];
    v11 = IMSharedHelperAreObjectsLogicallySame();
    [(NSRecursiveLock *)self->_chatsLock lock];
    if ((v11 & 1) == 0)
    {
      [(IMDChatRegistry *)self __unassignGroupIDFromAllChats:identifierCopy];
    }

    [(IMDChatRegistry *)self __removeChatFromGroupIDChatIndex:chatCopy];
    [(NSRecursiveLock *)self->_chatsLock unlock];
    v12 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      chatIdentifier = [chatCopy chatIdentifier];
      *buf = 138412802;
      v34 = v9;
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = chatIdentifier;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updating latest identifier in iMessageGroupID domain from (%@) to (%@) for chat %@ and broadcasting the update to clients.", buf, 0x20u);
    }

    if ((v11 & 1) == 0)
    {
      [chatCopy assignIdentifier:identifierCopy forDomain:v8 isHistoricalIdentifier:0];
      [chatCopy storeAndBroadcastChatChanges];
      v14 = +[IMDMessageStore sharedInstance];
      unreadCountController = [v14 unreadCountController];
      guid = [chatCopy guid];
      [unreadCountController chat:guid groupIDUpdated:identifierCopy];
    }

    if (identifierCopy)
    {
      if (v9)
      {
        chatIdentifier2 = [chatCopy chatIdentifier];

        if (chatIdentifier2)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v19 = *MEMORY[0x277D1AD18];
          v20 = *MEMORY[0x277D1AD28];
          v29 = *MEMORY[0x277D1AD20];
          v30 = v20;
          v32[0] = v9;
          v32[1] = identifierCopy;
          v21 = *MEMORY[0x277D1AD30];
          v22 = MEMORY[0x277CBEC10];
          if (domainIdentifiers)
          {
            v23 = domainIdentifiers;
          }

          else
          {
            v23 = MEMORY[0x277CBEC10];
          }

          v32[2] = v23;
          domainIdentifiers2 = [chatCopy domainIdentifiers];
          v25 = domainIdentifiers2;
          if (domainIdentifiers2)
          {
            v26 = domainIdentifiers2;
          }

          else
          {
            v26 = v22;
          }

          v32[3] = v26;
          v31 = *MEMORY[0x277D1AD10];
          chatIdentifier3 = [chatCopy chatIdentifier];
          v32[4] = chatIdentifier3;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v29 count:5];
          [defaultCenter __mainThreadPostNotificationName:v19 object:0 userInfo:v28];
        }
      }
    }

    [(NSRecursiveLock *)self->_chatsLock lock];
    [(IMDChatRegistry *)self __addChatToGroupIDChatIndex:chatCopy];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }
}

- (void)updateGroupIDForChat:(id)chat newGroupID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dCopy = d;
  if (chatCopy)
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    [(IMDChatRegistry *)self __removeChatFromGroupIDChatIndex:chatCopy];
    [(NSRecursiveLock *)self->_chatsLock unlock];
    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [chatCopy groupID];
      *buf = 138412802;
      v24 = groupID;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating groupID from (%@) to (%@) for chat %@", buf, 0x20u);
    }

    groupID2 = [chatCopy groupID];
    groupID3 = [chatCopy groupID];
    v12 = IMSharedHelperAreObjectsLogicallySame();

    if ((v12 & 1) == 0)
    {
      [chatCopy setGroupID:dCopy];
      [chatCopy storeAndBroadcastChatChanges];
      v13 = +[IMDMessageStore sharedInstance];
      unreadCountController = [v13 unreadCountController];
      guid = [chatCopy guid];
      [unreadCountController chat:guid groupIDUpdated:dCopy];
    }

    if (dCopy)
    {
      if (groupID2)
      {
        chatIdentifier = [chatCopy chatIdentifier];

        if (chatIdentifier)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v18 = *MEMORY[0x277D1AD18];
          chatIdentifier2 = [chatCopy chatIdentifier];
          v22[2] = chatIdentifier2;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:3];
          [defaultCenter __mainThreadPostNotificationName:v18 object:0 userInfo:v20];
        }
      }
    }

    [(NSRecursiveLock *)self->_chatsLock lock];
    [(IMDChatRegistry *)self __addChatToGroupIDChatIndex:chatCopy];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }
}

- (void)checkBlackholedChatsExistAfterUpdatingChatWithAdd:(BOOL)add
{
  blackholedChatsExistCache = self->_blackholedChatsExistCache;
  if (blackholedChatsExistCache != add)
  {
    blackholedChatsExist = [(IMDChatRegistry *)self blackholedChatsExist];
    self->_blackholedChatsExistCache = blackholedChatsExist;
    if (blackholedChatsExistCache != blackholedChatsExist)
    {
      v6 = +[IMDBroadcastController sharedProvider];
      broadcasterForBlackholeChatListeners = [v6 broadcasterForBlackholeChatListeners];
      [broadcasterForBlackholeChatListeners blackholedChatsExist:self->_blackholedChatsExistCache];

      v9 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatListeners = [v9 broadcasterForChatListeners];
      [broadcasterForChatListeners blackholedChatsExist:self->_blackholedChatsExistCache];
    }
  }
}

- (BOOL)filteredChatsExistForServices:(id)services
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = MEMORY[0x277CCAC30];
  servicesCopy = services;
  v7 = [v5 __im_chatPredicateForFilterAction:2];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCAC30] __im_chatPredicateForServiceNames:servicesCopy];

  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v4 andPredicateWithSubpredicates:v9];

  v11 = [(IMDChatRegistry *)self existingChatsFilteredUsingPredicate:v10 sortedUsingLastMessageDateAscending:0 limit:1];
  LOBYTE(self) = [v11 count] != 0;

  return self;
}

- (unint64_t)markAsSpamForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services chatID:(id)d queryID:(id)iD autoReport:(BOOL)report isJunkReportedToCarrier:(BOOL)carrier
{
  BYTE1(v10) = carrier;
  LOBYTE(v10) = report;
  return [(IMDChatRegistry *)self markAsSpamForIDs:ds style:style onServices:services chatID:d conversationID:0 queryID:iD autoReport:v10 isJunkReportedToCarrier:0 reportReason:?];
}

- (unint64_t)markAsSpamForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services chatID:(id)d conversationID:(id)iD queryID:(id)queryID autoReport:(BOOL)report isJunkReportedToCarrier:(BOOL)self0 reportReason:(unint64_t)self1
{
  styleCopy = style;
  v62 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  servicesCopy = services;
  dCopy = d;
  iDCopy = iD;
  queryIDCopy = queryID;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      *buf = 138413058;
      if (report)
      {
        v21 = @"YES";
      }

      v55 = v21;
      v56 = 2112;
      v57 = dsCopy;
      v58 = 2112;
      v59 = servicesCopy;
      v60 = 2112;
      v61 = dCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Handling request (autoReport %@) to mark IDs (%@) for services (%@) as spam for chatGUID (%@)", buf, 0x2Au);
    }
  }

  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    if (styleCopy == 45 && report)
    {
      v22 = +[IMDSpamController sharedInstance];
      lastObject = [dsCopy lastObject];
      [v22 detectSpam:lastObject chatGUID:dCopy];
    }

    v50 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
    v24 = [v50 objectForKey:@"max-spam-messages-per-report"];
    v49 = v24;
    if (v24)
    {
      integerValue = [v24 integerValue];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Server Bag has no value for max-spam-messages-per-report, using the default 2", buf, 2u);
        }
      }

      integerValue = 2;
    }

    if ([(IMDChatRegistry *)self _shouldHandleInternalPhishingAttempts]|| !carrier)
    {
      v27 = 30;
    }

    else
    {
      v27 = 1;
    }

    v28 = +[IMDMessageStore sharedInstance];
    v29 = v28;
    if (styleCopy == 45)
    {
      [v28 itemsWithHandles:dsCopy onServices:servicesCopy messageGUID:0 limit:v27];
    }

    else
    {
      [v28 itemsWithRoomNames:dsCopy onServices:servicesCopy messageGUID:0 limit:v27];
    }
    v48 = ;

    v30 = [(IMDChatRegistry *)self existingChatWithGUID:dCopy];
    v31 = v30;
    if (!report)
    {
      [v30 setSpamDetectionSource:6];
      lastMessage = [v31 lastMessage];
      guid = [lastMessage guid];
      [v31 setSpamDetectedMessage:guid];

      v34 = +[IMDSpamFilteringHelper sharedHelper];
      serviceName = [v31 serviceName];
      [v34 recordJunkMetricsForSpamDetectionSource:6 service:serviceName];
    }

    v53 = 0;
    LOBYTE(v46) = carrier;
    [(IMDChatRegistry *)self _reportMessageDictionaryForMessages:v48 isAutoReport:report withChat:v31 conversationID:iDCopy maxMessagesToReport:integerValue totalMessageCount:&v53 isJunkReportedToCarrier:v46 reportReason:reason];
    if (styleCopy == 43 && !report)
    {
      [v31 setWasReportedAsJunk:1];
      groupID = [v31 groupID];
      if ([groupID length])
      {
        mEMORY[0x277D1A9E8] = [MEMORY[0x277D1A9E8] sharedInstance];
        [mEMORY[0x277D1A9E8] blocklistGroupId:groupID];
      }

      else
      {
        mEMORY[0x277D1A9E8] = IMLogHandleForCategory();
        if (os_log_type_enabled(mEMORY[0x277D1A9E8], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D66D4(v31, mEMORY[0x277D1A9E8], v38, v39, v40, v41, v42, v43);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v55 = v53;
        _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Marked %lu messages as spam", buf, 0xCu);
      }
    }

    v25 = v53;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_reportMessageDictionaryForMessages:(id)messages isAutoReport:(BOOL)report withChat:(id)chat conversationID:(id)d maxMessagesToReport:(unint64_t)toReport totalMessageCount:(unint64_t *)count isJunkReportedToCarrier:(BOOL)carrier reportReason:(unint64_t)self0
{
  reportCopy = report;
  messagesCopy = messages;
  chatCopy = chat;
  dCopy = d;
  v18 = !reportCopy && [(IMDChatRegistry *)self _shouldHandleInternalPhishingAttempts];
  BYTE1(v19) = carrier;
  LOBYTE(v19) = v18;
  [(IMDChatRegistry *)self _reportMessageDictionaryForMessages:messagesCopy isAutoReport:reportCopy withChat:chatCopy conversationID:dCopy maxMessagesToReport:toReport totalMessageCount:count notifyInternalSecurity:v19 isJunkReportedToCarrier:reason reportReason:?];
}

- (id)_spamMessageCreator
{
  v2 = objc_alloc_init(IMDSpamMessageCreator);

  return v2;
}

- (void)_reportMessageDictionaryForMessages:(id)messages isAutoReport:(BOOL)report withChat:(id)chat conversationID:(id)d maxMessagesToReport:(unint64_t)toReport totalMessageCount:(unint64_t *)count notifyInternalSecurity:(BOOL)security isJunkReportedToCarrier:(BOOL)self0 reportReason:(unint64_t)self1
{
  reportCopy = report;
  dCopy = d;
  chatCopy = chat;
  messagesCopy = messages;
  _spamMessageCreator = [(IMDChatRegistry *)self _spamMessageCreator];
  LOWORD(v20) = __PAIR16__(carrier, security);
  [_spamMessageCreator reportMessageDictionariesForMessages:messagesCopy isAutoReport:reportCopy withChat:chatCopy conversationID:dCopy maxMessagesToReport:toReport totalMessageCount:count notifyInternalSecurity:v20 isJunkReportedToCarrier:reason reportReason:?];
}

- (void)_finalizeIncomingChat:(id)chat
{
  chatCopy = chat;
  [(IMDChatRegistry *)self _populateLastMessageForChat:chatCopy];
  [chatCopy _repairChatIfNeeded];
}

- (void)_populateLastMessageForChat:(id)chat
{
  v25 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (![chatCopy lastMessageTimeStampOnLoad] || (objc_msgSend(chatCopy, "lastMessage"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    lastMessage = [chatCopy lastMessage];

    if (!lastMessage)
    {
      v6 = +[IMDMessageStore sharedInstance];
      v7 = [v6 lastMessageForChatWithRowID:{objc_msgSend(chatCopy, "rowID")}];

      [chatCopy setLastMessage:v7];
      v8 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        guid = [chatCopy guid];
        guid2 = [v7 guid];
        *buf = 138412546;
        v22 = guid;
        v23 = 2112;
        v24 = guid2;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Chat %@ did not have final message, loaded %@", buf, 0x16u);
      }
    }

    lastMessage2 = [chatCopy lastMessage];

    if (lastMessage2)
    {
      lastMessage3 = [chatCopy lastMessage];
      time = [lastMessage3 time];
      [chatCopy setLastMessageTimeStampOnLoad:{objc_msgSend(time, "__im_nanosecondTimeInterval")}];
    }

    else
    {
      synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
      guid3 = [chatCopy guid];
      v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
      v20 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22B6071AC;
      v18[3] = &unk_2787042B8;
      v19 = chatCopy;
      [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid3 filteredUsingPredicate:0 sortedUsingDescriptors:v17 limit:1 completionHandler:v18];

      lastMessage3 = v19;
    }
  }
}

- (id)_addChatFromCacheMiss:(id)miss preferExistingChat:(BOOL)chat
{
  v13 = *MEMORY[0x277D85DE8];
  if (miss)
  {
    chatCopy = chat;
    missCopy = miss;
    v6 = MEMORY[0x277CBEA60];
    missCopy2 = miss;
    v8 = [v6 arrayWithObjects:&missCopy count:1];

    v9 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v8 preferExistingChats:chatCopy, missCopy, v13];
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_addChatsFromCacheMisses:(id)misses preferExistingChats:(BOOL)chats
{
  chatsCopy = chats;
  v25 = *MEMORY[0x277D85DE8];
  missesCopy = misses;
  v7 = missesCopy;
  if (chatsCopy)
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22B607528;
    v21[3] = &unk_2787063A0;
    v21[4] = self;
    v8 = [v7 __imArrayByApplyingBlock:v21];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [missesCopy countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            guid = [v13 guid];
            *buf = 138412290;
            v23 = guid;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Adding cache missed chat with GUID %@, not preferring existing chats", buf, 0xCu);
          }

          [(IMDChatRegistry *)self addChat:v13 firstLoad:0 store:0];
        }

        v10 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v10);
    }

    v8 = v7;
  }

  return v8;
}

- (void)addChat:(id)chat firstLoad:(BOOL)load store:(BOOL)store
{
  storeCopy = store;
  v49 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    loadCopy = load;
    if (!load && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Registering chat: %@", buf, 0xCu);
      }
    }

    [(IMDChatRegistry *)self _finalizeIncomingChat:chatCopy];
    [(NSRecursiveLock *)self->_chatsLock lock];
    chats = self->_chats;
    guid = [chatCopy guid];
    [(NSMutableDictionary *)chats setObject:chatCopy forKey:guid];

    if ([chatCopy style] == 43)
    {
      groupID = [chatCopy groupID];
      v12 = [groupID length] == 0;

      if (!v12)
      {
        [(IMDChatRegistry *)self __addChatToGroupIDChatIndex:chatCopy];
      }
    }

    [(NSRecursiveLock *)self->_chatsLock unlock];
    if (!loadCopy)
    {
      if ([chatCopy isBlackholed])
      {
        [(IMDChatRegistry *)self checkBlackholedChatsExistAfterUpdatingChatWithAdd:1];
      }

      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        v13 = +[IMDChatVocabularyUpdater sharedInstance];
        [v13 updateVocabularyForAddedChat:chatCopy completionHandler:0];
      }
    }

    if (storeCopy)
    {
      v14 = +[IMDChatStore sharedInstance];
      [v14 storeChat:chatCopy];

      v15 = +[IMDMessageStore sharedInstance];
      guid2 = [chatCopy guid];
      [v15 updateStampForGUID:guid2];
    }

    participants = [chatCopy participants];
    v31 = [participants __imArrayByApplyingBlock:&unk_283F1A528];

    if ([(IMDChatRegistry *)self _contactsBasedMergingEnabled]&& !loadCopy)
    {
      [(IMDChatRegistry *)self _updateCachedCNIDMapForHandles:v31];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [chatCopy participants];
    v18 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v18)
    {
      v19 = *v37;
      v33 = *MEMORY[0x277D18E68];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = [v21 ID];
          if (v22 && [(IMDChatRegistry *)self _contactsBasedMergingEnabled])
          {

            if (loadCopy)
            {
              goto LABEL_35;
            }

            cachedAliasToCNIDMap = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
            v24 = [v21 ID];
            v22 = [cachedAliasToCNIDMap objectForKeyedSubscript:v24];

            if (([v22 isEqualToString:v33] & 1) == 0)
            {
              [v21 setCNContactID:v22];
            }

            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = [v21 ID];
                cNContactID = [v21 CNContactID];
                guid3 = [chatCopy guid];
                *buf = 138412802;
                v43 = v26;
                v44 = 2112;
                v45 = cNContactID;
                v46 = 2112;
                v47 = guid3;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Adding handle %@ handleCNID  %@ to chat %@", buf, 0x20u);
              }
            }
          }

LABEL_35:
          [(IMDChatRegistry *)self addIMDHandleToRegistry:v21];
        }

        v18 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v18);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v40 = @"__kIMDChatRegistryChatKey";
    v41 = chatCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [defaultCenter postNotificationName:@"__kIMDChatRegistryAddedChatNotification" object:self userInfo:v30];

    if (!loadCopy)
    {
      [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
    }
  }
}

- (void)_evictCachedChat:(id)chat
{
  v12 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v5 = chatCopy;
  if (chatCopy)
  {
    guid = [chatCopy guid];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = guid;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Evicting chat: %@", &v10, 0xCu);
      }
    }

    [(NSRecursiveLock *)self->_chatsLock lock];
    [(NSMutableDictionary *)self->_chats setObject:0 forKeyedSubscript:guid];
    if ([v5 style] == 43)
    {
      groupID = [v5 groupID];
      v9 = [groupID length] == 0;

      if (!v9)
      {
        [(IMDChatRegistry *)self __removeChatFromGroupIDChatIndex:v5];
      }
    }

    [(NSRecursiveLock *)self->_chatsLock unlock];
    [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
  }
}

- (void)removeChat:(id)chat
{
  v53 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    selfCopy = self;
    [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Unregistering chat: %@", buf, 0xCu);
      }
    }

    guid = [chatCopy guid];
    [(IMDChatRegistry *)selfCopy _evictCachedChat:chatCopy];
    if ([chatCopy isBlackholed])
    {
      [(IMDChatRegistry *)selfCopy checkBlackholedChatsExistAfterUpdatingChatWithAdd:0];
    }

    if (!selfCopy->_isLoading && (IMIsRunningInUnitTesting() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = chatCopy;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deleting chat: %@", buf, 0xCu);
        }
      }

      v7 = +[IMDChatStore sharedInstance];
      [v7 deleteChat:chatCopy];

      v8 = +[IMDMessageStore sharedInstance];
      guid2 = [chatCopy guid];
      [v8 updateStampForGUID:guid2];

      mEMORY[0x277D1AA10] = [MEMORY[0x277D1AA10] sharedInstance];
      v50 = guid;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      [mEMORY[0x277D1AA10] deleteInteractionsWithChatGUIDs:v11];

      v12 = +[IMDChatVocabularyUpdater sharedInstance];
      [v12 updateVocabularyForDeletedChat:chatCopy completionHandler:0];

      recordName = [chatCopy recordName];
      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      LOBYTE(v11) = [mEMORY[0x277D1A9B8] isOneChatEnabled];

      if ((v11 & 1) == 0)
      {
        if ([recordName length])
        {
          v15 = +[IMDCKUtilities sharedInstance];
          cloudKitSyncingEnabled = [v15 cloudKitSyncingEnabled];

          if (cloudKitSyncingEnabled)
          {
            if (IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "CloudKit syncing is on. Writing deleted chat to deleted sync table", buf, 2u);
              }
            }

            guid3 = [chatCopy guid];
            recordName2 = [chatCopy recordName];
            lastMessage = [chatCopy lastMessage];
            time = [lastMessage time];
            [time __im_nanosecondTimeInterval];
            IMDChatInsertIntoDeletedChatsTable();
          }
        }
      }
    }

    account = [chatCopy account];
    session = [account session];
    guid4 = [chatCopy guid];
    chatIdentifier = [chatCopy chatIdentifier];
    style = [chatCopy style];
    groupID = [chatCopy groupID];
    originalGroupID = [chatCopy originalGroupID];
    properties = [chatCopy properties];
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    lastAddressedSIMID = [chatCopy lastAddressedSIMID];
    [session didDeleteChatGUID:guid4 chatIdentifier:chatIdentifier style:style groupID:groupID originalGroupID:originalGroupID properties:properties lastAddressedLocalHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID];

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    participants = [chatCopy participants];
    v33 = [participants countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        v35 = 0;
        do
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(participants);
          }

          v36 = *(*(&v45 + 1) + 8 * v35);
          v37 = +[IMDChatRegistry sharedInstance];
          v38 = [v37 removeIMDHandleFromRegistry:v36];

          if (v38)
          {
            v39 = [v36 ID];
            [v31 addObject:v39];
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [participants countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v33);
    }

    v40 = +[IMDNicknameController sharedInstance];
    [v40 cleanUpNicknameForIDs:v31];

    personCentricGroupedChatsCache = [(IMDChatRegistry *)selfCopy personCentricGroupedChatsCache];
    [personCentricGroupedChatsCache removeAllObjects];
  }
}

- (void)_addItem:(id)item toChat:(id)chat reason:(int64_t)reason
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  v9 = chatCopy;
  if (itemCopy)
  {
    if (chatCopy)
    {
      v10 = +[IMDMessageStore sharedInstance];
      serviceName = [v9 serviceName];
      v12 = [v10 canStoreItem:itemCopy onService:serviceName];

      if (v12)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            guid = [itemCopy guid];
            guid2 = [v9 guid];
            v19 = 136315650;
            v20 = "[IMDChatRegistry _addItem:toChat:reason:]";
            v21 = 2112;
            v22 = guid;
            v23 = 2112;
            v24 = guid2;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%s: item: %@ chat: %@\n", &v19, 0x20u);
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          skipIndexing = [itemCopy skipIndexing];
        }

        else
        {
          skipIndexing = 0;
        }

        v17 = +[IMDChatStore sharedInstance];
        guid3 = [itemCopy guid];
        [v17 addMessageWithGUID:guid3 toChat:v9 reason:reason skipIndexing:skipIndexing];
      }
    }
  }
}

- (void)removeItem:(id)item fromChat:(id)chat
{
  itemCopy = item;
  chatCopy = chat;
  if (itemCopy)
  {
    if (chatCopy)
    {
      v7 = +[IMDMessageStore sharedInstance];
      serviceName = [chatCopy serviceName];
      v9 = [v7 canStoreItem:itemCopy onService:serviceName];

      if (v9)
      {
        v10 = +[IMDChatStore sharedInstance];
        guid = [itemCopy guid];
        [v10 removeMessageWithGUID:guid fromChat:chatCopy];

        v12 = +[IMDChatRegistry sharedInstance];
        [v12 updateLastMessageForChat:chatCopy hintMessage:0];

        [(IMDChatRegistry *)self updateStateForChat:chatCopy hintMessage:0];
      }
    }
  }
}

- (void)addMessage:(id)message toChat:(id)chat reason:(int64_t)reason
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      guid2 = [chatCopy guid];
      v23 = 136315650;
      v24 = "[IMDChatRegistry addMessage:toChat:reason:]";
      v25 = 2112;
      v26 = guid;
      v27 = 2112;
      v28 = guid2;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%s: message: %@ chat: %@\n", &v23, 0x20u);
    }
  }

  if (!messageCopy || !chatCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = messageCopy;
      v25 = 2112;
      v26 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "******* Not storing message %@ to chat %@", &v23, 0x16u);
    }

    goto LABEL_23;
  }

  v12 = +[IMDMessageStore sharedInstance];
  serviceName = [chatCopy serviceName];
  v14 = [v12 canStoreMessage:messageCopy onService:serviceName];

  v15 = IMOSLoggingEnabled();
  if ((v14 & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = messageCopy;
      v25 = 2112;
      v26 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "******* IMDMessageStore cannot store message %@ to chat %@", &v23, 0x16u);
    }

LABEL_23:

    goto LABEL_24;
  }

  if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      guid3 = [messageCopy guid];
      guid4 = [chatCopy guid];
      v23 = 136315650;
      v24 = "[IMDChatRegistry addMessage:toChat:reason:]";
      v25 = 2112;
      v26 = guid3;
      v27 = 2112;
      v28 = guid4;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "%s: message: %@ chat: %@\n", &v23, 0x20u);
    }
  }

  if (([messageCopy isFromMe] & 1) == 0 && objc_msgSend(chatCopy, "isFiltered"))
  {
    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A208]];
  }

  v20 = +[IMDChatStore sharedInstance];
  guid5 = [messageCopy guid];
  [v20 addMessageWithGUID:guid5 toChat:chatCopy reason:reason skipIndexing:{objc_msgSend(messageCopy, "skipIndexing")}];

LABEL_24:
}

- (void)removeMessage:(id)message fromChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  if (messageCopy)
  {
    if (chatCopy)
    {
      v7 = +[IMDMessageStore sharedInstance];
      serviceName = [chatCopy serviceName];
      v9 = [v7 canStoreMessage:messageCopy onService:serviceName];

      if (v9)
      {
        v10 = +[IMDChatStore sharedInstance];
        guid = [messageCopy guid];
        [v10 removeMessageWithGUID:guid fromChat:chatCopy];

        v12 = +[IMDChatRegistry sharedInstance];
        [v12 updateLastMessageForChat:chatCopy hintMessage:0];

        [(IMDChatRegistry *)self updateStateForChat:chatCopy hintMessage:0];
      }
    }
  }
}

- (id)stringForChatStyle:(unsigned __int8)style
{
  v3 = @"-";
  if (style == 43)
  {
    v3 = @"+";
  }

  if (style == 35)
  {
    return @"#";
  }

  else
  {
    return v3;
  }
}

- (void)_fixSiblingChatsAndStoreIfNeeded:(id)needed iMessageChat:(id)chat chatsToRegenerate:(id)regenerate
{
  v75 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  chatCopy = chat;
  regenerateCopy = regenerate;
  v59 = chatCopy;
  if (chatCopy)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = neededCopy;
    v55 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    if (!v55)
    {
      goto LABEL_50;
    }

    v54 = *v61;
    v50 = *MEMORY[0x277D19780];
    while (1)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v60 + 1) + 8 * i);
        displayName = [v9 displayName];
        groupID = [v9 groupID];
        mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

        if (isMissingMessagesEnabled)
        {
          serviceName = [v9 serviceName];
          v13 = IMChatLookupDomainForServiceName();

          if (v13)
          {
            v14 = [v9 latestIdentifierForDomain:v13];
            v15 = v14;
            if (v14)
            {
              v16 = v14;

              groupID = v16;
            }
          }
        }

        displayName2 = [v59 displayName];
        groupID2 = [v59 groupID];
        participants = [v59 participants];
        participants2 = [v9 participants];
        serviceSession = [v9 serviceSession];
        v21 = [serviceSession chatCanMergeWithSuperChat:v9];

        if (v21 && (!IMSharedHelperAreObjectsLogicallySame() || (IMSharedHelperAreObjectsLogicallySame() & 1) == 0))
        {
          mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isMissingMessagesEnabled2 = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

          if (isMissingMessagesEnabled2)
          {
            [v9 assignIdentifier:groupID2 forDomain:v50 isHistoricalIdentifier:0];
            serviceName2 = [v9 serviceName];
            v25 = IMChatLookupDomainForServiceName();
            service = [v9 service];
            [v9 assignIdentifier:groupID2 forDomain:v25 isHistoricalIdentifier:{objc_msgSend(service, "groupIDIsHistoricalIdentifier")}];
          }

          else
          {
            [v9 setGroupID:groupID2];
          }

          [v9 setDisplayName:displayName2];
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              guid = [v9 guid];
              displayName3 = [v9 displayName];
              groupID3 = [v9 groupID];
              *buf = 138413314;
              v65 = guid;
              v66 = 2112;
              v67 = displayName;
              v68 = 2112;
              v69 = groupID;
              v70 = 2112;
              v71 = displayName3;
              v72 = 2112;
              v73 = groupID3;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Storing sibling chat %@ old display name %@, old group ID %@ new display name %@, new group ID %@", buf, 0x34u);
            }
          }

          chatStore = [(IMDChatRegistry *)self chatStore];
          [chatStore storeChat:v9];
        }

        if (![participants count] && objc_msgSend(participants2, "count"))
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v65 = v59;
              v66 = 2112;
              v67 = participants2;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Found iMessage chat with zero participants %@. Updating with sibling participants %@", buf, 0x16u);
            }
          }

          [v59 _resetParticipants:participants2];
          v33 = participants2;

          [regenerateCopy addObject:v59];
          participants = v33;
        }

        v34 = sub_22B609310(participants);
        v35 = sub_22B609310(participants2);
        if (([v34 isEqualToSet:v35] & 1) == 0)
        {
          serviceSession2 = [v9 serviceSession];
          v37 = [serviceSession2 chatCanMergeWithSuperChat:v9];

          if (v37)
          {
            if (IMOSLoggingEnabled())
            {
              v38 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v65 = v9;
                v66 = 2112;
                v67 = v59;
                _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Found sibling chat with different participants than its iMessage sibling. Chat: %@. Updating participants using %@", buf, 0x16u);
              }
            }

            [v9 _resetParticipants:participants];
          }

          else
          {
            groupID4 = [v9 groupID];
            groupID5 = [v59 groupID];
            v41 = [groupID4 isEqualToString:groupID5];

            if (v41)
            {
              goto LABEL_48;
            }

            if (IMOSLoggingEnabled())
            {
              v42 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Found sibling chat with different participants than its iMessage sibling, but it is backed by a group server. We must fork 🍴", buf, 2u);
              }
            }

            mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            isMissingMessagesEnabled3 = [mEMORY[0x277D1A9B8]3 isMissingMessagesEnabled];

            stringGUID = [MEMORY[0x277CCACA8] stringGUID];
            if (isMissingMessagesEnabled3)
            {
              [v9 assignIdentifier:stringGUID forDomain:v50 isHistoricalIdentifier:0];
              serviceName3 = [v9 serviceName];
              v46 = IMChatLookupDomainForServiceName();
              service2 = [v9 service];
              [v9 assignIdentifier:stringGUID forDomain:v46 isHistoricalIdentifier:{objc_msgSend(service2, "groupIDIsHistoricalIdentifier")}];
            }

            else
            {
              [v9 setGroupID:stringGUID];
            }
          }

          [regenerateCopy addObject:v9];
        }

LABEL_48:
      }

      v55 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (!v55)
      {
LABEL_50:

        break;
      }
    }
  }
}

- (void)_fixUpChatParticipantsIfNeeded:(id)needed usingChatGUIDToChatMap:(id)map
{
  v27 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  mapCopy = map;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Attempting to fix up chat participants if needed", &buf, 2u);
    }
  }

  if (mapCopy)
  {
    v8 = mapCopy;
  }

  else
  {
    v8 = [(IMDChatRegistry *)self _chatGUIDToChatMapForChats:neededCopy];
  }

  v9 = v8;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = neededCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v20 = 0;
        v16 = [(IMDChatRegistry *)self _siblingChatsForChat:v14 usingChatGUIDToChatMap:v9 iMessageChat:&v20];
        v17 = v20;
        v18 = [v16 count];
        if (self && v18)
        {
          [(IMDChatRegistry *)self _fixSiblingChatsAndStoreIfNeeded:v16 iMessageChat:v17 chatsToRegenerate:0];
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }
}

- (id)_chatGUIDToChatMapForChats:(id)chats
{
  v18 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = chatsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        guid = [v10 guid];
        [v4 setObject:v10 forKey:guid];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_siblingChatsForChat:(id)chat usingChatGUIDToChatMap:(id)map iMessageChat:(id *)messageChat
{
  v33 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  mapCopy = map;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  serviceName = [chatCopy serviceName];
  v9 = [serviceName isEqualToString:*MEMORY[0x277D1A620]];
  messageChatCopy = messageChat;
  if (messageChat && v9)
  {
    v10 = chatCopy;
    *messageChat = chatCopy;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = +[IMDChatRegistry supportedServiceNames];
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if (([v15 isEqualToString:serviceName] & 1) == 0)
        {
          v16 = -[IMDChatRegistry stringForChatStyle:](self, "stringForChatStyle:", [chatCopy style]);
          chatIdentifier = [chatCopy chatIdentifier];
          v18 = IMSharedHelperNSNewStringByAppendingStrings();

          v19 = [mapCopy objectForKeyedSubscript:v18];
          if (v19)
          {
            [v23 addObject:v19];
            v20 = [v15 isEqualToString:*MEMORY[0x277D1A620]];
            if (messageChatCopy)
            {
              if (v20)
              {
                v21 = v19;
                *messageChatCopy = v19;
              }
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  return v23;
}

- (id)_chatInfoForChats:(id)chats
{
  v23 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(chatsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = chatsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 copyDictionaryRepresentation:{1, v15, v16}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v11;
            _os_log_error_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_ERROR, "Could not get chatInfo from chat: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)_chatInfoInRange:(_NSRange)range wantsBlackholed:(BOOL)blackholed
{
  length = range.length;
  location = range.location;
  v54 = *MEMORY[0x277D85DE8];
  v26 = [(IMDChatRegistry *)self _chatsWithBlackholed:blackholed];
  if (location + length <= [v26 count])
  {
    if (!location && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v47 = length;
        v48 = 2048;
        v49 = [v26 count];
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Retrieving %ld most recent chats out of %ld chats", buf, 0x16u);
      }
    }

    v6 = length;
  }

  else
  {
    v6 = [v26 count] - location;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        v47 = location;
        v48 = 2048;
        v49 = length;
        v50 = 2048;
        v51 = location;
        v52 = 2048;
        v53 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Could not retrieve chats in range (%ld,%ld) as there are not that many, so retrieving all chats, range (%ld,%ld).", buf, 0x2Au);
      }
    }
  }

  v9 = [v26 sortedArrayUsingComparator:&unk_283F1A548];
  v10 = [v9 subarrayWithRange:{location, v6}];

  v11 = [v10 count];
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v11];
  v32 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v11];
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v10;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v29 = *v41;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        guid = [v14 guid];
        [v32 setObject:v14 forKey:guid];
        v39 = 0;
        v15 = [(IMDChatRegistry *)self _siblingChatsForChat:v14 usingChatGUIDToChatMap:v32 iMessageChat:&v39];
        v33 = v39;
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([v15 count])
        {
          [(IMDChatRegistry *)self _fixSiblingChatsAndStoreIfNeeded:v15 iMessageChat:v33 chatsToRegenerate:v16];
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v18)
        {
          v19 = *v36;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v35 + 1) + 8 * j);
              if (v21 != v14)
              {
                v22 = [*(*(&v35 + 1) + 8 * j) copyDictionaryRepresentation:1];
                if ([v22 count])
                {
                  guid2 = [v21 guid];
                  [v12 setObject:v22 forKey:guid2];
                }
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v18);
        }

        v24 = [v14 copyDictionaryRepresentation:1];
        if ([v24 count])
        {
          [v12 setObject:v24 forKey:guid];
          [v28 addObject:v24];
        }
      }

      v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v30);
  }

  return v28;
}

- (void)_setInitialLoadForTesting:(BOOL)testing
{
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v5 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "********* Calling setInitialLoadForTesting in non unit tests is not supported ***** ", v7, 2u);
    }

    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.IMDaemonCore.unsupportedAction" reason:0 userInfo:0];
    objc_exception_throw(v6);
  }

  self->_doneLoadingAfterMerge = testing;
}

- (void)_forceReloadChats:(BOOL)chats
{
  chatsCopy = chats;
  v26 = *MEMORY[0x277D85DE8];
  if ((self->_isLoading || self->_doneLoadingAfterMerge) && !chats)
  {
    if ([(IMDChatRegistry *)self cachedChatCount])
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          isLoading = self->_isLoading;
          doneLoadingAfterMerge = self->_doneLoadingAfterMerge;
          v20 = 67109632;
          v21 = isLoading;
          v22 = 1024;
          v23 = doneLoadingAfterMerge;
          v24 = 1024;
          v25 = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "NOT forcing reload of chats _isLoading: %d _doneLoadingAfterMerge: %d forced: %d", &v20, 0x14u);
        }
      }

      return;
    }

    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Would have ignored reload of chats but has zero chats, forcing reload", &v20, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_isLoading;
      v11 = self->_doneLoadingAfterMerge;
      v20 = 67109632;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = chatsCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Forcing reload of chats _isLoading: %d _doneLoadingAfterMerge: %d forced: %d", &v20, 0x14u);
    }
  }

  v12 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Dropping all chats in registry", &v20, 2u);
  }

  [(NSRecursiveLock *)self->_chatsLock lock];
  [(NSMutableDictionary *)self->_chats removeAllObjects];
  [(NSMutableDictionary *)self->_chatsByGroupID removeAllObjects];
  [(NSRecursiveLock *)self->_chatsLock unlock];
  [(NSRecursiveLock *)self->_handlesLock lock];
  [(NSMutableDictionary *)self->_idToHandlesMap removeAllObjects];
  [(NSRecursiveLock *)self->_handlesLock unlock];
  v13 = +[IMDFileTransferCenter sharedInstance];
  [v13 removeFinishedTransfers];

  [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
  [(IMDChatRegistry *)self loadChatsWithCompletionBlock:0];
  v14 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Updating database clients", &v20, 2u);
  }

  v15 = +[IMDMessageStore sharedInstance];
  [v15 updateStamp];

  v16 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Posting the update chat registry to all listeners", &v20, 2u);
  }

  v17 = +[IMDLocalDaemon sharedDaemon];
  [v17 notifyClientsNewSetupInfoAvailableWithRequiredCapabilities:4];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "=> Done notifying clients", &v20, 2u);
    }
  }

  v19 = +[IMDChatVocabularyUpdater sharedInstance];
  [v19 updateVocabularyForDeferredUpdateRequestIfNecessaryWithCompletionHandler:0];
}

- (void)refreshUIWhileSyncing
{
  v2 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Posting the update chat registry to all listeners", v4, 2u);
  }

  v3 = +[IMDLocalDaemon sharedDaemon];
  [v3 notifyClientsNewSetupInfoAvailableWithRequiredCapabilities:4];
}

- (void)waitForLoadedChatsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received request to wait for chats to be loaded", buf, 2u);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B60A86C;
  v7[3] = &unk_278703808;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (BOOL)loadChatsWithCompletionBlock:(id)block
{
  v111[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Loading Chats... ", buf, 2u);
    }

    self = selfCopy;
  }

  self->_isLoading = 1;
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  v96 = IMGetDomainBoolForKeyWithDefaultValue();
  v6 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v96 ^ 1;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Should fix unnamed groupID: %{BOOL}d", buf, 8u);
  }

  v7 = +[IMDChatStore sharedInstance];
  loadRecentChats = [v7 loadRecentChats];

  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [loadRecentChats count];
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, " Found %d chats", buf, 8u);
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v110 = *MEMORY[0x277D1A320];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(loadRecentChats, "count")}];
  v111[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:&v110 count:1];
  [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A0D8] withDictionary:v12];

  if (!loadRecentChats || ![loadRecentChats count])
  {
    v59 = 0;
    goto LABEL_78;
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = loadRecentChats;
  v13 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
  if (!v13)
  {
    LOBYTE(v100) = 0;
    goto LABEL_77;
  }

  v100 = 0;
  v99 = *v102;
  v95 = *MEMORY[0x277D19780];
  do
  {
    v14 = 0;
    do
    {
      if (*v102 != v99)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v101 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      if (v15)
      {
        v17 = +[IMDAccountController sharedInstance];
        accountID = [v15 accountID];
        lastObject = [v17 accountForAccountID:accountID];

        if (lastObject)
        {
          goto LABEL_32;
        }

        service = [v15 service];
        serviceName = [v15 serviceName];
        if (!service && IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = serviceName;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "No service found, looking at name: %@", buf, 0xCu);
          }
        }

        if (serviceName)
        {
          v23 = +[IMDServiceController sharedController];
          v24 = [v23 serviceWithName:serviceName];

          service = v24;
        }

        if (!service && IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = serviceName;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No service found for name: %@: removing this chat [%@]", buf, 0x16u);
          }
        }

        v26 = +[IMDAccountController sharedInstance];
        v27 = [v26 accountsForService:service];
        lastObject = [v27 lastObject];

        if (lastObject)
        {
          accountID2 = [lastObject accountID];
          [v15 setAccountID:accountID2];

LABEL_32:
          [(IMDChatRegistry *)selfCopy addChat:v15 firstLoad:1 store:0];
          groupID = [v15 groupID];
          v30 = [groupID length] == 0;

          if (v30)
          {
            generateNewGroupID = [v15 generateNewGroupID];
            if (!generateNewGroupID)
            {
              *buf = xmmword_278706408;
              *&buf[16] = *off_278706418;
              v108 = 2428;
              v34 = MEMORY[0x277CCACA8];
              v35 = IMFileLocationTrimFileName();
              v36 = v108;
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
              v38 = [v34 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"generatedGroupID", "-[IMDChatRegistry loadChatsWithCompletionBlock:]", v35, v36, v37];

              v39 = IMGetAssertionFailureHandler();
              if (v39)
              {
                v39(v38);
              }

              else
              {
                warning = [MEMORY[0x277D19298] warning];
                if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
                {
                  *v105 = 138412290;
                  v106 = v38;
                  _os_log_error_impl(&dword_22B4CC000, warning, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", v105, 0xCu);
                }
              }
            }

            mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

            if (isMissingMessagesEnabled)
            {
              [v15 assignIdentifier:generateNewGroupID forDomain:v95 isHistoricalIdentifier:0];
            }

            else
            {
              [v15 setGroupID:generateNewGroupID];
            }
          }

          else
          {
            if ((v96 & 1) != 0 || ([v15 displayName], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "length") == 0, v31, !v32))
            {
              IMSetDomainBoolForKey();
              goto LABEL_54;
            }

            v41 = objc_alloc(MEMORY[0x277CCAD78]);
            groupID2 = [v15 groupID];
            v43 = [v41 initWithUUIDString:groupID2];

            if (v43)
            {

              IMSetDomainBoolForKey();
              goto LABEL_54;
            }

            v47 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v15;
              _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_DEFAULT, "Unnamed group with non UUID style groupID, lets fix this chat: %@", buf, 0xCu);
            }

            generateNewGroupID = [v15 generateNewGroupID];
            if (!generateNewGroupID)
            {
              *buf = xmmword_278706430;
              *&buf[16] = *off_278706440;
              v108 = 2443;
              v48 = MEMORY[0x277CCACA8];
              v49 = IMFileLocationTrimFileName();
              v50 = v108;
              v51 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
              v52 = [v48 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"generatedGroupID", "-[IMDChatRegistry loadChatsWithCompletionBlock:]", v49, v50, v51];

              v53 = IMGetAssertionFailureHandler();
              if (v53)
              {
                v53(v52);
              }

              else
              {
                warning2 = [MEMORY[0x277D19298] warning];
                if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
                {
                  *v105 = 138412290;
                  v106 = v52;
                  _os_log_error_impl(&dword_22B4CC000, warning2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", v105, 0xCu);
                }
              }
            }

            mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            isMissingMessagesEnabled2 = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

            if (isMissingMessagesEnabled2)
            {
              [v15 assignIdentifier:generateNewGroupID forDomain:v95 isHistoricalIdentifier:0];
            }

            else
            {
              [v15 setGroupID:generateNewGroupID];
            }

            v57 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = generateNewGroupID;
              _os_log_impl(&dword_22B4CC000, v57, OS_LOG_TYPE_DEFAULT, "    New groupID: %@", buf, 0xCu);
            }
          }

          IMSetDomainBoolForKey();
          [v15 storeAndBroadcastChatChanges];
LABEL_54:
          v100 |= [v15 isBlackholed];
          service = lastObject;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v15;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "No account: removing this chat [%@]", buf, 0xCu);
            }
          }
        }
      }

      objc_autoreleasePoolPop(v16);
      ++v14;
    }

    while (v13 != v14);
    v58 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
    v13 = v58;
  }

  while (v58);
LABEL_77:

  v59 = v100;
LABEL_78:
  selfCopy->_blackholedChatsExistCache = v59 & 1;
  v60 = +[IMDMessageStore sharedInstance];
  [v60 rebuildUnreadMessageCount];

  v61 = +[IMDMessageStore sharedInstance];
  [v61 rebuildLastFailedMessageDate];

  if (IMOSLoggingEnabled())
  {
    v62 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      cachedChats = [(IMDChatRegistry *)selfCopy cachedChats];
      v64 = [cachedChats count];
      *buf = 67109120;
      *&buf[4] = v64;
      _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "=> Done Loading %d Chats", buf, 8u);
    }
  }

  selfCopy->_isLoading = 0;
  selfCopy->_doneLoadingAfterMerge = isUnderFirstDataProtectionLock ^ 1;
  mEMORY[0x277D1ACB8]2 = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock2 = [mEMORY[0x277D1ACB8]2 isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock2)
  {
    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Not merging forks before first unlock", buf, 2u);
      }
    }
  }

  else
  {
    [(IMDChatRegistry *)selfCopy repairDuplicateChatsIfNeeded];
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v69 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.MobileSMS" forKey:@"RebuildMutedChatListVersion"];
    v70 = [v69 intValue] < 1;

    if (v70)
    {
      v72 = IMMutedChatListRebuildLogHandle(v71);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_DEFAULT, "Rebuilding muted chat list.", buf, 2u);
      }

      v73 = objc_alloc_init(IMDMutedChatListRebuilder);
      [(IMDMutedChatListRebuilder *)v73 rebuildMutedChatList];
      mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
      v75 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      [mEMORY[0x277D1A990]2 setValue:v75 forDomain:@"com.apple.MobileSMS" forKey:@"RebuildMutedChatListVersion"];
    }
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    [(IMDChatRegistry *)selfCopy _populateContactIDOnHandles];
  }

  if (IMSharedHelperPersistMergeIDMergedChats())
  {
    [(IMDChatRegistry *)selfCopy _persistMergeIDMergedChatsIfNeeded];
  }

  if ((isUnderFirstDataProtectionLock & 1) == 0)
  {
    [(IMDChatRegistry *)selfCopy _markGroupPhotosAsUnpurgeableIfNecessary];
  }

  mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBGSTMessageProcessingEnabled = [mEMORY[0x277D1A9B8]3 isBGSTMessageProcessingEnabled];

  if (isBGSTMessageProcessingEnabled)
  {
    v78 = selfCopy;
    if (!selfCopy->_bgstMessageProcessingController)
    {
      v79 = objc_alloc_init(IMDBackgroundMessageProcessingController);
      bgstMessageProcessingController = selfCopy->_bgstMessageProcessingController;
      selfCopy->_bgstMessageProcessingController = v79;

      goto LABEL_102;
    }
  }

  else
  {
    v78 = selfCopy;
    if (!selfCopy->_messageProcessingController)
    {
      v81 = objc_alloc_init(IMDMessageProcessingController);
      messageProcessingController = selfCopy->_messageProcessingController;
      selfCopy->_messageProcessingController = v81;

      [(IMDMessageProcessingController *)selfCopy->_messageProcessingController scheduleInitialProcessingCheck];
LABEL_102:
      v78 = selfCopy;
    }
  }

  if (!v78->_messageHistorySyncController)
  {
    v83 = objc_alloc_init(IMDMessageHistorySyncTaskLiveFactory);
    v84 = [[IMDMessageHistorySyncController alloc] initWithMessageHistorySyncTaskFactory:v83];
    messageHistorySyncController = selfCopy->_messageHistorySyncController;
    selfCopy->_messageHistorySyncController = v84;

    if (!selfCopy->_messageHistorySyncController)
    {
      v86 = objc_alloc_init(IMDMessageHistorySyncTaskLiveFactory);
      v87 = [[IMDMessageHistorySyncController alloc] initWithMessageHistorySyncTaskFactory:v86];
      v88 = selfCopy->_messageHistorySyncController;
      selfCopy->_messageHistorySyncController = v87;
    }
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"__kIMDChatsLoadedNotification" object:0];

  v90 = +[IMDCKExitManager sharedInstance];
  [v90 writeInitialSyncCompletedRecordIfNeeded];

  [(IMDChatRegistry *)selfCopy setUpInitialConversationManager];
  +[IMDChatVocabularyUpdater performInitialUpdateIfNeeded];

  return 1;
}

- (void)_persistMergeIDMergedChatsIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if ((byte_281421380 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    _allHandles = [(IMDChatRegistry *)self _allHandles];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v18 = [_allHandles count];
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "try to persist mergeID merged chats for [%lu] handles", buf, 0xCu);
      }
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allChats = [(IMDChatRegistry *)self allChats];
    v7 = [allChats countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allChats);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          [v10 _persistMergedIDMergedChatsIfNeeded:_allHandles];
          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v7 != v9);
        v7 = [allChats countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    byte_281421380 = 1;
    objc_autoreleasePoolPop(v3);
  }
}

- (BOOL)updateProperties:(id)properties chat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v22 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  chatCopy = chat;
  if ([propertiesCopy count] && objc_msgSend(chatCopy, "length"))
  {
    v10 = [(IMDChatRegistry *)self allExistingChatsWithIdentifier:chatCopy style:styleCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v13 |= [*(*(&v17 + 1) + 8 * i) updateProperties:propertiesCopy];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

- (void)addIMDHandleToRegistry:(id)registry
{
  v24 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  [(NSRecursiveLock *)self->_handlesLock lock];
  if (registryCopy && ([registryCopy ID], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    idToHandlesMap = self->_idToHandlesMap;
    v8 = [registryCopy ID];
    v9 = [(NSMutableDictionary *)idToHandlesMap objectForKey:v8];

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v10 = self->_idToHandlesMap;
      v11 = [registryCopy ID];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (*(*(&v17 + 1) + 8 * v15) == registryCopy)
          {

            goto LABEL_18;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [v12 addObject:{registryCopy, v17}];
LABEL_18:
    [(NSRecursiveLock *)self->_handlesLock unlock];
  }

  else
  {
    v16 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = registryCopy;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Will not add malformed IMHandle:%@ to IMDHandleRegistry", buf, 0xCu);
    }

    v12 = 0;
  }
}

- (BOOL)removeIMDHandleFromRegistry:(id)registry
{
  v19 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  [(NSRecursiveLock *)self->_handlesLock lock];
  if (!registryCopy)
  {
    goto LABEL_10;
  }

  v5 = [registryCopy ID];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_13;
  }

  idToHandlesMap = self->_idToHandlesMap;
  v8 = [registryCopy ID];
  v9 = [(NSMutableDictionary *)idToHandlesMap objectForKey:v8];

  if (!v9)
  {
LABEL_10:
    LOBYTE(v6) = 0;
    goto LABEL_13;
  }

  v10 = [v9 indexOfObject:registryCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    v12 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = registryCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Removing IMDHandle:%@ from IMDHandleRegistry", &v17, 0xCu);
    }

    [v9 removeObjectAtIndex:v11];
  }

  v13 = [v9 count];
  LOBYTE(v6) = v13 == 0;
  v14 = self->_idToHandlesMap;
  v15 = [registryCopy ID];
  if (v13)
  {
    [(NSMutableDictionary *)v14 setObject:v9 forKey:v15];
  }

  else
  {
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];
  }

LABEL_13:
  [(NSRecursiveLock *)self->_handlesLock unlock];

  return v6;
}

- (id)allHandlesForID:(id)d
{
  dCopy = d;
  [(NSRecursiveLock *)self->_handlesLock lock];
  if ([dCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_idToHandlesMap objectForKey:dCopy];
    [(NSRecursiveLock *)self->_handlesLock unlock];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)_reloadChatsForDatabaseMergeOrDatabaseSwitchWithReset:(BOOL)reset
{
  resetCopy = reset;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Received merge complete notification, re-syncing chats", buf, 2u);
  }

  if (resetCopy)
  {
    v6 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Forcing reset of IMDP service", v8, 2u);
    }

    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    [synchronousDatabase notifyDatabaseMergeComplete];

    [MEMORY[0x277D18EE0] reset];
  }

  [(IMDChatRegistry *)self _forceReloadChats:1];
  [(IMDChatRegistry *)self _performPostUnlockHousekeeping];
}

- (void)_performPostUnlockHousekeeping
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[IMDMessageStore sharedInstance];
  [v2 performInitialHousekeeping];

  v3 = +[IMDReplayController sharedInstance];
  [v3 replayMessages];

  v4 = +[IMDCKBackupController sharedInstance];
  [v4 _ensureRestoredDatabaseToBackup];

  MessagesSequenceNumber = IMDMessageRecordGetMessagesSequenceNumber();
  v6 = IMOSLoggingEnabled();
  if (MessagesSequenceNumber == -1)
  {
    if (v6)
    {
      v8 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = -1;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not Resetting LastBulletinboardPostedMessageRowID: %lld", &v9, 0xCu);
      }
    }
  }

  else
  {
    if (v6)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = MessagesSequenceNumber;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Resetting LastBulletinboardPostedMessageRowID: %lld", &v9, 0xCu);
      }
    }

    IMSetDomainIntForKey();
  }
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Device left first unlock, re-syncing chats", buf, 2u);
  }

  self->_firstUnlockTriggered = 1;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  [synchronousDatabase notifyFirstUnlockComplete];

  [MEMORY[0x277D18EE0] reset];
  [(IMDChatRegistry *)self _forceReloadChats:0];
  [(IMDChatRegistry *)self _makeAllAttachmentsClassC];
  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 anySessionForServiceName:*MEMORY[0x277D1A620]];

  if (v6 || (+[IMDAccountController sharedInstance](IMDAccountController, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 anySessionForServiceName:*MEMORY[0x277D1A610]], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "calling update routing, expire and watch dog after first unlock", v17, 2u);
    }

    [v6 _updateRoutingTimerWithInterval:120.0];
    [v6 _updateExpireStateTimerWithInterval:120.0];
    [v6 _updateWatchdogTimerWithInterval:120.0];
  }

  v9 = +[IMDCKRecordSaltManager sharedInstance];
  [v9 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:&unk_283F1A568];

  v10 = +[IMDCKRampManager sharedInstance];
  [v10 fetchLatestRampStateFromCK:0];

  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Performing one time account check after upgrade", v16, 2u);
  }

  v12 = +[IMDCKSyncController sharedInstance];
  [v12 performOneTimeAccountUpgradeCheckIfNeeded];

  v13 = +[IMDAccountController sharedInstance];
  activeAliases = [v13 activeAliases];

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];
  IMDNotificationsRetractNotificationsFromFirstUnlockWithContext();
}

- (void)_makeAllAttachmentsClassC
{
  if ((IMGetDomainBoolForKey() & 1) == 0)
  {

    im_dispatch_after();
  }
}

- (BOOL)_chat:(id)_chat isDuplicateOfChat:(id)chat
{
  _chatCopy = _chat;
  chatCopy = chat;
  if ([_chatCopy style] == 43 && objc_msgSend(chatCopy, "style") == 43)
  {
    groupID = [_chatCopy groupID];
    groupID2 = [chatCopy groupID];
    if ([groupID isEqual:groupID2])
    {
      serviceName = [_chatCopy serviceName];
      serviceName2 = [chatCopy serviceName];
      v11 = [serviceName isEqual:serviceName2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)_compareDuplicateChatsWithFirstChat:(id)chat secondChat:(id)secondChat
{
  chatCopy = chat;
  secondChatCopy = secondChat;
  groupID = [chatCopy groupID];
  groupID2 = [secondChatCopy groupID];
  v9 = [groupID compare:groupID2];

  if (!v9)
  {
    serviceName = [chatCopy serviceName];
    serviceName2 = [secondChatCopy serviceName];
    v9 = [serviceName compare:serviceName2];

    if (!v9)
    {
      groupParticipantVersion = [chatCopy groupParticipantVersion];
      groupParticipantVersion2 = [secondChatCopy groupParticipantVersion];
      if (groupParticipantVersion >= groupParticipantVersion2)
      {
        if (groupParticipantVersion <= groupParticipantVersion2)
        {
          displayName = [chatCopy displayName];
          displayName2 = [secondChatCopy displayName];
          if ([displayName length] || !objc_msgSend(displayName2, "length"))
          {
            if (![displayName length] || objc_msgSend(displayName2, "length"))
            {

              v9 = [chatCopy compareBySequenceNumberAndDateDescending:secondChatCopy];
              goto LABEL_15;
            }

            v9 = -1;
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_15;
        }

        v9 = -1;
      }

      else
      {
        v9 = 1;
      }
    }
  }

LABEL_15:

  return v9;
}

- (id)_findChatWinnerInDuplicateChatArray:(id)array fixDisplayName:(BOOL *)name
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v6 = [arrayCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([(IMDChatRegistry *)self _compareDuplicateChatsWithFirstChat:v12 secondChat:v6]== -1)
        {
          displayName = [v6 displayName];
          if ([displayName length])
          {
            displayName2 = [v12 displayName];
            v15 = [displayName2 length];

            if (!v15)
            {
              displayName3 = [v6 displayName];
              [v12 setDisplayName:displayName3];

              if (name)
              {
                *name = 1;
              }
            }
          }

          else
          {
          }

          v17 = v12;

          v6 = v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_findLosingChatGUIDsInArrayOfChats:(id)chats withWinner:(id)winner
{
  v29 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  winnerCopy = winner;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(chatsCopy, "count") - 1}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = chatsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v13 == winnerCopy)
        {
          v10 = 1;
        }

        else
        {
          guid = [v13 guid];
          [v7 addObject:guid];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);

    if (v10)
    {
      v15 = v7;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [winnerCopy description];
      v18 = [v8 description];
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "did not find winner %@ in list of duplicates %@", buf, 0x16u);
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)_createGroupChatsArray
{
  v17 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Finding group chats", buf, 2u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allChats = [(IMDChatRegistry *)self allChats];
  v6 = [allChats countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allChats);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 style] == 43)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [allChats countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_copyDuplicateChatsArrayWithLimit:(int64_t)limit
{
  v5 = +[IMDChatStore sharedInstance];
  v6 = [v5 copyDuplicateGroupChatsWithLimit:limit];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)_copyGroupedDuplicateChatsSortedFromWinningToLosingWithLimit:(int64_t)limit
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(IMDChatRegistry *)self _copyDuplicateChatsArrayWithLimit:limit];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B60D878;
  v25[3] = &unk_278706460;
  v25[4] = self;
  v5 = [v4 sortedArrayUsingComparator:v25];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        groupID = [v12 groupID];
        v14 = [v6 objectForKeyedSubscript:groupID];

        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          groupID2 = [v12 groupID];
          [v6 setObject:v15 forKeyedSubscript:groupID2];
        }

        groupID3 = [v12 groupID];
        v18 = [v6 objectForKeyedSubscript:groupID3];
        [v18 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  allValues = [v6 allValues];

  return allValues;
}

- (BOOL)_mergeDuplicateGroupsIfNeeded
{
  v67 = *MEMORY[0x277D85DE8];
  v43 = [(IMDChatRegistry *)self _copyGroupedDuplicateChatsSortedFromWinningToLosingWithLimit:500];
  v3 = [v43 count];
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (v4)
    {
      v36 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "No duplicate chats found to merge", buf, 2u);
      }
    }

    v9 = 0;
    goto LABEL_71;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v43 count];
      v7 = [v43 description];
      *buf = 134218242;
      v61 = v6;
      v62 = 2112;
      v63 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Found %ld duplicate chats needing merging: %@", buf, 0x16u);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v43;
  v46 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (!v46)
  {
    v9 = 0;
    goto LABEL_70;
  }

  v9 = 0;
  v45 = *v56;
  *&v8 = 134217984;
  v42 = v8;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v56 != v45)
      {
        v11 = v10;
        objc_enumerationMutation(obj);
        v10 = v11;
      }

      v47 = v10;
      v12 = *(*(&v55 + 1) + 8 * v10);
      v54 = 0;
      v13 = [(IMDChatRegistry *)self _findChatWinnerInDuplicateChatArray:v12 fixDisplayName:&v54, v42];
      if (!v13)
      {
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "winningChat unexpectedly nil", buf, 2u);
          }
        }

        goto LABEL_70;
      }

      v48 = [(IMDChatRegistry *)self _findLosingChatGUIDsInArrayOfChats:v12 withWinner:v13];
      v14 = IMOSLoggingEnabled();
      if (!v48)
      {
        if (v14)
        {
          v38 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "losingChats is unexpectedly nil", buf, 2u);
          }
        }

        goto LABEL_69;
      }

      if (v14)
      {
        v15 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v13 description];
          v17 = [v48 description];
          v18 = [v12 description];
          *buf = 138412802;
          v61 = v16;
          v62 = 2112;
          v63 = v17;
          v64 = 2112;
          v65 = v18;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "found winning chat %@, and losing chats %@, in list of chat duplicates: %@", buf, 0x20u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v48 description];
          guid = [v13 guid];
          *buf = 138412546;
          v61 = v20;
          v62 = 2112;
          v63 = guid;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "will merge losing chats %@ into winning chat id %@", buf, 0x16u);
        }
      }

      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        if (v54 == 1)
        {
          displayName = [v13 displayName];
        }

        else
        {
          displayName = 0;
        }

        guid2 = [v13 guid];
        v53 = 0;
        IMDChatRecordRepairDuplicateChats();
        v24 = v53;

        if (!v24)
        {

          goto LABEL_27;
        }

        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            localizedDescription = [v24 localizedDescription];
            *buf = 138412290;
            v61 = localizedDescription;
            _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "repairing duplicate chats failed: %@", buf, 0xCu);
          }
        }

LABEL_69:
        goto LABEL_70;
      }

LABEL_27:
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v48 description];
          guid3 = [v13 guid];
          *buf = 138412546;
          v61 = v26;
          v62 = 2112;
          v63 = guid3;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "merged losing chats %@ into winning chat id %@", buf, 0x16u);
        }
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v28 = v12;
      v29 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v29)
      {
        v30 = *v50;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v50 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v49 + 1) + 8 * i);
            if (([v32 isEqual:v13] & 1) == 0)
            {
              [(IMDChatRegistry *)self removeChat:v32];
              if (IMOSLoggingEnabled())
              {
                v33 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v61 = v32;
                  _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Deleted unwanted chat %@", buf, 0xCu);
                }
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
        }

        while (v29);
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v48 count];
          *buf = v42;
          v61 = v35;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "finished merging %ld duplicate chats", buf, 0xCu);
        }
      }

      v10 = v47 + 1;
      v9 = 1;
    }

    while (v47 + 1 != v46);
    v46 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_70:

LABEL_71:
  return v9 & 1;
}

- (BOOL)repairDuplicateChatsIfNeeded
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if (self->_isLoading)
  {
    *buf = xmmword_278706480;
    v32 = *off_278706490;
    v33 = 3017;
    v4 = MEMORY[0x277CCACA8];
    v5 = IMFileLocationTrimFileName();
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v7 = [v4 stringWithFormat:@"Unexepectedly true '%@' in %s at %s:%d. %@", @"_isLoading", "-[IMDChatRegistry repairDuplicateChatsIfNeeded]", v5, 3017, v6];

    v8 = IMGetAssertionFailureHandler();
    if (v8)
    {
      v8(v7);
    }

    else
    {
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D6740(v7, warning, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  v16 = *MEMORY[0x277D194B8];
  v17 = IMGetCachedDomainValueForKey();
  v18 = v17;
  if (v17 && [v17 integerValue] > 3)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Will NOT check for duplicate chats after checking pref key %@:merged-duplicate-chats", buf, 0xCu);
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "will check for duplicate chats after checking pref key %@:merged-duplicate-chats", buf, 0xCu);
      }
    }

    IMSetDomainValueForKey();
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Set pref for duplicate check (%@:merged-duplicate-chats) to YES", buf, 0xCu);
      }
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v22 = v21;
    if ([(IMDChatRegistry *)self _mergeDuplicateGroupsIfNeeded])
    {
      v23 = 0;
      do
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Finished repairing a batch of duplicate chats", buf, 2u);
          }
        }

        _mergeDuplicateGroupsIfNeeded = [(IMDChatRegistry *)self _mergeDuplicateGroupsIfNeeded];
      }

      while (v23++ < 9 && _mergeDuplicateGroupsIfNeeded);
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        *buf = 134217984;
        *&buf[4] = v29 - v22;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Finished repairing duplicate chats in %f seconds", buf, 0xCu);
      }

LABEL_35:
    }
  }

  objc_autoreleasePoolPop(v3);
  return 1;
}

- (void)_markGroupPhotosAsUnpurgeableIfNecessary
{
  v28 = *MEMORY[0x277D85DE8];
  if ((IMGetDomainBoolForKeyWithDefaultValue() & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSRecursiveLock *)self->_chatsLock lock];
    allValues = [(NSMutableDictionary *)self->_chats allValues];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          groupPhotoGuid = [*(*(&v22 + 1) + 8 * v8) groupPhotoGuid];
          if ([groupPhotoGuid length])
          {
            [v3 addObject:groupPhotoGuid];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    [(NSRecursiveLock *)self->_chatsLock unlock];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = IMDAttachmentRecordCopyAttachmentForGUID();
          if (v15)
          {
            v16 = IMDAttachmentRecordCopyFilename();
            if ([v16 length])
            {
              v17 = +[IMDAttachmentStore sharedInstance];
              [v17 markAttachmentUnpurgeable:v16];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v12);
    }

    IMSetDomainBoolForKey();
  }
}

- (id)_allHandles
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allChats = [(IMDChatRegistry *)self allChats];
  v5 = [allChats countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(allChats);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        participants = [v9 participants];
        v11 = [participants countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(participants);
              }

              if (v3)
              {
                v15 = *(*(&v17 + 1) + 8 * j);
                if (v15)
                {
                  CFArrayAppendValue(v3, v15);
                }
              }
            }

            v12 = [participants countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [allChats countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)groupChatsBasedOnIdentity:(id)identity
{
  v21 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "NOT Using person centric grouped chats cache", buf, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = identityCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        personCentricID = [v10 personCentricID];
        v13 = [v5 objectForKey:personCentricID];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v5 setObject:v13 forKey:personCentricID];
        }

        [v13 addObject:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)groupChatsBasedOnIdentityUsingCacheIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  personCentricGroupedChatsCache = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
  v6 = [personCentricGroupedChatsCache count];

  if (v6)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Using person centric grouped chats cache", v10, 2u);
    }
  }

  else
  {
    v7 = [(IMDChatRegistry *)self groupChatsBasedOnIdentity:applicableCopy];
    [(IMDChatRegistry *)self setPersonCentricGroupedChatsCache:v7];
  }

LABEL_7:
  personCentricGroupedChatsCache2 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];

  return personCentricGroupedChatsCache2;
}

- (id)truncatedSortedChatsGroupedByPersonCentricID:(id)d count:(int64_t)count pinnedChatIdentifiers:(id)identifiers
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Truncating person centric grouped chats to %ld chats.", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:identifiersCopy];
  allValues = [dCopy allValues];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B60EFC0;
  v27[3] = &unk_2787064B0;
  v10 = v8;
  v28 = v10;
  v11 = [allValues sortedArrayUsingComparator:v27];
  v12 = [v11 count];
  if (v12 >= count)
  {
    countCopy2 = count;
  }

  else
  {
    countCopy2 = v12;
  }

  v14 = [v11 subarrayWithRange:{0, countCopy2}];
  v15 = [v11 subarrayWithRange:{countCopy2, objc_msgSend(v11, "count") - countCopy2}];
  v16 = [v15 __imArrayByFilteringWithBlock:&unk_283F1A5A8];
  v17 = [v16 count];
  v18 = 200;
  if (v17 < 0xC8)
  {
    v18 = [v16 count];
  }

  v19 = [v16 subarrayWithRange:{0, v18}];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v16 count];
      v22 = [v15 count];
      *buf = 134218496;
      countCopy = v21;
      v31 = 2048;
      countCopy3 = count;
      v33 = 2048;
      v34 = v22;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found %ld chats with unread messages that would have been cutoff by a count of %ld of out %ld total cutoff chat groups", buf, 0x20u);
    }
  }

  v23 = [v14 arrayByAddingObjectsFromArray:v19];

  return v23;
}

- (id)sortPersonCentricChatGroups:(id)groups
{
  v3 = MEMORY[0x277CBEB38];
  groupsCopy = groups;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B60F2C8;
  v8[3] = &unk_2787030B8;
  v6 = v5;
  v9 = v6;
  [groupsCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (void)_enumeratePersonMergedChatsWithMaximumNumberOfChats:(int64_t)chats usingChats:(id)usingChats useCachedChatGroups:(BOOL)groups includingPinnedChatIdentifiers:(id)identifiers usingBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  usingChatsCopy = usingChats;
  identifiersCopy = identifiers;
  blockCopy = block;
  v28 = [(IMDChatRegistry *)self _chatGUIDToChatMapForChats:usingChatsCopy];
  [(IMDChatRegistry *)self _fixUpChatParticipantsIfNeeded:usingChatsCopy usingChatGUIDToChatMap:?];
  v26 = usingChatsCopy;
  if (groups)
  {
    [(IMDChatRegistry *)self groupChatsBasedOnIdentityUsingCacheIfApplicable:usingChatsCopy];
  }

  else
  {
    [(IMDChatRegistry *)self groupChatsBasedOnIdentity:usingChatsCopy];
  }
  v24 = ;
  v15 = [(IMDChatRegistry *)self sortPersonCentricChatGroups:v24];
  selfCopy = self;
  v25 = identifiersCopy;
  [(IMDChatRegistry *)self truncatedSortedChatsGroupedByPersonCentricID:v15 count:chats pinnedChatIdentifiers:identifiersCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        v23 = [(IMDChatRegistry *)selfCopy _mergedPinningIdentifiersForChats:v21 chatGUIDToChatMap:v28 groupedChatsByPersonCentricIdWithSortedChats:v15];
        blockCopy[2](blockCopy, v21, v23);

        objc_autoreleasePoolPop(v22);
      }

      v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }
}

- (id)personCentricGroupedChatsArrayWithMaximumNumberOfChats:(int64_t)chats skipsLastMessageLoading:(BOOL)loading usingChats:(id)usingChats useCachedChatGroups:(BOOL)groups includingPinnedChatIdentifiers:(id)identifiers repairInconsistentMergedChats:(BOOL)mergedChats
{
  groupsCopy = groups;
  v29 = *MEMORY[0x277D85DE8];
  usingChatsCopy = usingChats;
  identifiersCopy = identifiers;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_22B4D7740;
  v25 = sub_22B4D78FC;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B60F7B4;
  v19[3] = &unk_278706520;
  mergedChatsCopy = mergedChats;
  v19[4] = self;
  v19[5] = &v21;
  [(IMDChatRegistry *)self _enumeratePersonMergedChatsWithMaximumNumberOfChats:chats usingChats:usingChatsCopy useCachedChatGroups:groupsCopy includingPinnedChatIdentifiers:identifiersCopy usingBlock:v19];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22[5], "count")}];
      *buf = 138412290;
      v28 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Number of person centric chats created to send to client %@", buf, 0xCu);
    }
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v17;
}

- (id)_mergedPinningIdentifiersForChats:(id)chats chatGUIDToChatMap:(id)map groupedChatsByPersonCentricIdWithSortedChats:(id)sortedChats
{
  v55 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  mapCopy = map;
  sortedChatsCopy = sortedChats;
  if ([chatsCopy count])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v28 = chatsCopy;
    obj = chatsCopy;
    v33 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v33)
    {
      v30 = *v49;
      do
      {
        v9 = 0;
        do
        {
          if (*v49 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v9;
          v10 = *(*(&v48 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          pinningIdentifier = [v10 pinningIdentifier];
          if (pinningIdentifier)
          {
            [v8 addObject:pinningIdentifier];
          }

          v35 = pinningIdentifier;
          originalGroupID = [v10 originalGroupID];
          if (originalGroupID && [v10 style] != 45)
          {
            [v8 addObject:originalGroupID];
          }

          v34 = originalGroupID;
          v13 = [(IMDChatRegistry *)self _siblingChatsForChat:v10 usingChatGUIDToChatMap:mapCopy iMessageChat:0];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v38 = v13;
          v14 = [v13 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v45;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v45 != v16)
                {
                  objc_enumerationMutation(v38);
                }

                personCentricID = [*(*(&v44 + 1) + 8 * i) personCentricID];
                v19 = [sortedChatsCopy objectForKeyedSubscript:personCentricID];
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v20 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v41;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v41 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      pinningIdentifier2 = [*(*(&v40 + 1) + 8 * j) pinningIdentifier];
                      if (pinningIdentifier2)
                      {
                        [v8 addObject:pinningIdentifier2];
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
                  }

                  while (v21);
                }
              }

              v15 = [v38 countByEnumeratingWithState:&v44 objects:v53 count:16];
            }

            while (v15);
          }

          objc_autoreleasePoolPop(context);
          v9 = v37 + 1;
        }

        while (v37 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v33);
    }

    allObjects = [v8 allObjects];
    v26 = [allObjects copy];

    chatsCopy = v28;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  return v26;
}

- (id)chatsToUploadToCloudKitWithLimit:(unint64_t)limit
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CCAC30];
  v8 = +[IMDServiceController sharedController];
  v9 = [v8 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];
  allObjects = [v9 allObjects];
  v11 = [v7 __im_chatPredicateForServiceNames:allObjects];
  v29[0] = v11;
  v12 = [MEMORY[0x277CCAC30] __im_chatPredicateForSyncState:1];
  v29[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v14 = [v6 andPredicateWithSubpredicates:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  chatStore = [(IMDChatRegistry *)self chatStore];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22B60FF2C;
  v23[3] = &unk_278706548;
  v17 = v15;
  v24 = v17;
  limitCopy = limit;
  v26 = a2;
  [chatStore enumerateBatchedChatsFilteredUsingPredicate:v14 batchSize:limit block:v23];

  allValues = [v17 allValues];
  v19 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:allValues preferExistingChats:1];

  v20 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 count];
    *buf = 134217984;
    v28 = v21;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Got %llu chats to upload", buf, 0xCu);
  }

  return v19;
}

- (void)updateChatWithGUID:(id)d serverChangeToken:(id)token recordID:(id)iD
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  v11 = [(IMDChatRegistry *)self existingChatWithGUID:dCopy];
  v12 = v11;
  if (v11)
  {
    [v11 setServerChangeToken:tokenCopy];
    [v12 setCloudKitRecordID:iDCopy];
    [v12 storeAndBroadcastChatChanges];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Did not find chat for GUID %@", &v14, 0xCu);
    }
  }
}

- (void)_insertChatUsingSyncData:(id)data
{
  v31[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [IMDChat chatWithSyncData:dataCopy];
  guid = [(IMDChat *)v5 guid];
  v7 = [(IMDChatRegistry *)self existingChatWithGUID:guid];

  if (!v7)
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMessagesIniCloudVersion2 = [mEMORY[0x277D1A9B8] isMessagesIniCloudVersion2];

    if (isMessagesIniCloudVersion2)
    {
      v10 = +[IMDChatStore sharedInstance];
      [v10 storeChat:v5];

      v11 = +[IMDMessageStore sharedInstance];
      guid2 = [(IMDChat *)v5 guid];
      [v11 updateStampForGUID:guid2];

      mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      LODWORD(guid2) = [mEMORY[0x277D1A9B8]2 isOneChatEnabled];

      if (guid2)
      {
        synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
        guid3 = [(IMDChat *)v5 guid];
        serviceName = [(IMDChat *)v5 serviceName];
        v31[0] = serviceName;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_22B6106A0;
        v28[3] = &unk_278703C58;
        v18 = v5;
        v29 = v18;
        [synchronousDatabase updateServicesForChatWithGUID:guid3 services:v17 completionHandler:v28];

        v19 = objc_alloc(MEMORY[0x277D18F00]);
        serviceName2 = [(IMDChat *)v18 serviceName];
        sourceRecordName = [dataCopy sourceRecordName];
        v22 = [v19 initWithServiceName:serviceName2 ckRecordID:sourceRecordName];

        synchronousDatabase2 = [MEMORY[0x277D18EB0] synchronousDatabase];
        v30 = v22;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        guid4 = [(IMDChat *)v18 guid];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_22B6107C4;
        v26[3] = &unk_278703C58;
        v27 = v18;
        [synchronousDatabase2 addSyncChatSlices:v24 forChatWithGUID:guid4 completionHandler:v26];
      }
    }

    else
    {
      [(IMDChatRegistry *)self addChat:v5];
    }
  }
}

- (id)_uncachedNewestChatWithOriginalGroupID:(id)d onService:(id)service
{
  serviceCopy = service;
  dCopy = d;
  chatStore = [(IMDChatRegistry *)self chatStore];
  v9 = [chatStore newestChatWithOriginalGroupID:dCopy onService:serviceCopy];

  return v9;
}

- (id)newestExistingChatWithOriginalGroupID:(id)d onService:(id)service
{
  v5 = [(IMDChatRegistry *)self _uncachedNewestChatWithOriginalGroupID:d onService:service];
  v6 = [(IMDChatRegistry *)self _addChatFromCacheMiss:v5 preferExistingChat:1];

  return v6;
}

- (id)_newestExistingChatWithGroupID:(id)d onService:(id)service
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = dCopy;
      v27 = 2112;
      v28 = serviceCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Searching for the newest chat with groupID: %@ service: %@", buf, 0x16u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = dCopy;
  v9 = [(IMDChatRegistry *)self existingChatsWithGroupID:dCopy];
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        serviceName = [v14 serviceName];
        if (![serviceName isEqualToString:serviceCopy])
        {
          goto LABEL_19;
        }

        v16 = [v14 style] == 43;

        if (v16 && (!v10 || [v14 isNewerThan:v10]))
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v14;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Found newer chat match for groupID: %@", buf, 0xCu);
            }
          }

          serviceName = v10;
          v10 = v14;
LABEL_19:

          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v10;
}

- (id)_existingChatForSyncData:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy numberForKey:@"stl"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [dataCopy stringForKey:@"guid"];
  if (unsignedIntegerValue != 45)
  {
    v34 = [dataCopy arrayForKey:@"ptcpts"];
    v10 = [dataCopy stringForKey:@"ogid"];
    v11 = [dataCopy stringForKey:@"svc"];
    if (v7)
    {
      v12 = [(IMDChatRegistry *)self existingChatWithGUID:v7];
      v13 = [v12 hasMatchingParticipantHandles:v34];
      v14 = IMOSLoggingEnabled();
      if (v13)
      {
        if (v14)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v36 = v7;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found matching group chat by original GUID %@", buf, 0xCu);
          }
        }

        v9 = v12;
      }

      else
      {
        if (v14)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Ignoring chat matched by GUID due to mismatching partcipants", buf, 2u);
          }
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = v10;
        v37 = 2112;
        v38 = v11;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Looking for group chat for CKRecord with originalGroupID: %@ and service: %@", buf, 0x16u);
      }
    }

    if (!v9 && v10)
    {
      if ([v10 length])
      {
        v9 = [(IMDChatRegistry *)self _uncachedNewestChatWithOriginalGroupID:v10 onService:v11];
      }

      else
      {
        v9 = 0;
      }
    }

    v18 = [dataCopy stringForKey:@"gid"];
    v19 = v18;
    if (!v9 && v18)
    {
      if ([v18 length])
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            cachedChatCount = [(IMDChatRegistry *)self cachedChatCount];
            *buf = 138412802;
            v36 = v10;
            v37 = 2048;
            v38 = cachedChatCount;
            v39 = 2112;
            v40 = v19;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failed to find group chat with originalGroupID as regular groupID (%@) in %llu chats, trying with client groupID (%@)", buf, 0x20u);
          }
        }

        v9 = [(IMDChatRegistry *)self _newestExistingChatWithGroupID:v19 onService:v11];
        mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

        if (v9)
        {
          v24 = isMissingMessagesEnabled;
        }

        else
        {
          v24 = 0;
        }

        if ((v24 & (v10 != 0)) == 1)
        {
          if (![v10 length]|| ([v19 isEqualToString:v10]& 1) != 0)
          {
            goto LABEL_64;
          }

          v25 = IMChatLookupDomainForServiceName();
          if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              guid = [v9 guid];
              *buf = 138413058;
              v36 = v19;
              v37 = 2112;
              v38 = v10;
              v39 = 2112;
              v40 = v25;
              v41 = 2112;
              v42 = guid;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Found a chat using groupID %@ rather than originalGroupID %@. Assigning identifier for domain %@ to chat with guid %@ as a historical identifier", buf, 0x2Au);
            }
          }

          [v9 assignIdentifier:v10 forDomain:v25 isHistoricalIdentifier:1];
          goto LABEL_62;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 || !v10)
    {
      goto LABEL_64;
    }

    if (![v10 length])
    {
      v9 = 0;
      goto LABEL_64;
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v10;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to find group chat with current group ID, trying with originalGroupID (%@) as groupID", buf, 0xCu);
      }
    }

    v9 = [(IMDChatRegistry *)self _newestExistingChatWithGroupID:v10 onService:v11];
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled2 = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

    if (v9)
    {
      v31 = isMissingMessagesEnabled2;
    }

    else
    {
      v31 = 0;
    }

    if (v31 != 1)
    {
      goto LABEL_64;
    }

    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D67AC(v25);
    }

LABEL_62:

LABEL_64:
    goto LABEL_65;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Looking for 1-1 chat for CKRecord with GUID: %@", buf, 0xCu);
    }
  }

  v9 = [(IMDChatRegistry *)self existingChatWithGUID:v7];
LABEL_65:
  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Found existing chat for CKRecord: %@", buf, 0xCu);
    }
  }

  return v9;
}

- (BOOL)_ensureNoExistingGroupForSyncData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy numberForKey:@"stl"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [dataCopy stringForKey:@"gid"];
  v8 = [dataCopy stringForKey:@"ogid"];
  v9 = [dataCopy stringForKey:@"svc"];
  v10 = v9;
  if (unsignedIntegerValue == 45 || v8 == 0 || v9 == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v32 = 67109634;
        *v33 = unsignedIntegerValue;
        *&v33[4] = 2112;
        *&v33[6] = v8;
        *&v33[14] = 2112;
        *&v33[16] = v10;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Won't _ensureNoExistingGroupForCKRecord style:%hhu, originalGroupID:%@ service:%@", &v32, 0x1Cu);
      }
    }

    v14 = 1;
  }

  else
  {
    chatStore = [(IMDChatRegistry *)self chatStore];
    v16 = [chatStore newestChatWithOriginalGroupID:v8 onService:v10];

    if (v16)
    {
      goto LABEL_44;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v32 = 138412546;
        *v33 = v8;
        *&v33[8] = 2112;
        *&v33[10] = v7;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "No existing chat with originalGroupID (%@) found, checking client groupID (%@)", &v32, 0x16u);
      }
    }

    chatStore2 = [(IMDChatRegistry *)self chatStore];
    v16 = [chatStore2 newestChatWithGroupID:v7 onService:v10];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

    if (isMissingMessagesEnabled)
    {
      v21 = IMChatLookupDomainForServiceName();
      v22 = +[IMDServiceController sharedController];
      v23 = [v22 serviceWithName:v10];

      if (v16)
      {
        if (v21)
        {
          if (v23)
          {
            if ([v8 length])
            {
              v24 = [v16 identifiersForDomain:v21];
              v25 = [v24 containsObject:v8];

              if ((v25 & 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v26 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    guid = [v16 guid];
                    v32 = 138412802;
                    *v33 = v8;
                    *&v33[8] = 2112;
                    *&v33[10] = guid;
                    *&v33[18] = 2112;
                    *&v33[20] = v21;
                    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Found a missing originalGroupID %@ for chat with guid %@. Adding it now to domain %@", &v32, 0x20u);
                  }
                }

                [v16 assignIdentifier:v8 forDomain:v21 isHistoricalIdentifier:1];
                [v16 setCloudKitSyncState:0];
                v28 = +[IMDChatStore sharedInstance];
                [v28 storeChat:v16];
              }
            }
          }
        }
      }
    }

    if (v16)
    {
LABEL_44:
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v32 = 138412546;
          *v33 = v8;
          *&v33[8] = 2112;
          *&v33[10] = v16;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "IMDChatRegistry: Found an existing chat that's not in the registry. This is likely because the registry failed it's chat load. OriginalGroupID:%@ Chat:%@", &v32, 0x16u);
        }
      }

      if (![(IMDChatRegistry *)self hasDumpedLogsForNoExisitingGroup])
      {
        ckUtilities = [(IMDChatRegistry *)self ckUtilities];
        [ckUtilities reportMOCDebuggingErrorWithString:@"TriedToInsertDuplicateChat" internalOnly:1 initialSync:0 reasonString:@"TriedToInsertDuplicateChat"];

        [(IMDChatRegistry *)self setHasDumpedLogsForNoExisitingGroup:1];
      }

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  return v14;
}

- (void)_markForksAsSyncedForChat:(id)chat
{
  v42 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if ([chatCopy style] == 43)
  {
    selfCopy = self;
    serviceName = [chatCopy serviceName];
    groupID = [chatCopy groupID];
    originalGroupID = [chatCopy originalGroupID];
    [(IMDChatRegistry *)selfCopy existingChatsWithGroupID:groupID];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v6 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v6)
    {
      v7 = *v35;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v34 + 1) + 8 * i);
          serviceName2 = [v9 serviceName];
          v11 = [serviceName2 isEqualToString:serviceName];
          if (v9 == chatCopy)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v40 = chatCopy;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found groupd_id fork for chat while applying changes from cloudKit %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v40 = v9;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Marking fork as clean %@", buf, 0xCu);
              }
            }

            [v9 updateCloudKitSyncState:1];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v6);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allChats = [(IMDChatRegistry *)selfCopy allChats];
    v16 = [allChats countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(allChats);
          }

          v19 = *(*(&v30 + 1) + 8 * j);
          if ([v19 style] == 43)
          {
            originalGroupID2 = [v19 originalGroupID];
            if ([originalGroupID2 isEqualToString:originalGroupID])
            {
              serviceName3 = [v19 serviceName];
              v22 = [serviceName3 isEqualToString:serviceName];
              if (v19 == chatCopy)
              {
                v23 = 0;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v40 = chatCopy;
                    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Found original_groupd_id fork for chat while applying changes from cloudKit %@", buf, 0xCu);
                  }
                }

                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v40 = v19;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Marking fork as clean %@", buf, 0xCu);
                  }
                }

                [v19 updateCloudKitSyncState:1];
              }
            }

            else
            {
            }
          }
        }

        v16 = [allChats countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v16);
    }
  }
}

- (void)_updateChat:(id)chat usingSyncData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dataCopy = data;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      v10 = 138412290;
      v11 = guid;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Chat already exists: %@ to apply changes from CKRecord", &v10, 0xCu);
    }
  }

  [chatCopy applyChangesUsingSyncData:dataCopy];
  [(IMDChatRegistry *)self _markForksAsSyncedForChat:chatCopy];
}

- (void)updateChatUsingSyncData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy stringForKey:@"guid"];
  v6 = [(IMDChatRegistry *)self _existingChatForSyncData:dataCopy];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = dataCopy;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Updating existing chat %@ with record %@", &v9, 0x16u);
      }
    }

    [(IMDChatRegistry *)self _updateChat:v6 usingSyncData:dataCopy];
  }

  else if ([(IMDChatRegistry *)self _ensureNoExistingGroupForSyncData:dataCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = dataCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Creating new chat %@ with record %@", &v9, 0x16u);
      }
    }

    [(IMDChatRegistry *)self _insertChatUsingSyncData:dataCopy];
  }
}

- (void)resolveChatConflictUsingSyncData:(id)data localGUID:(id)d
{
  dataCopy = data;
  v7 = [(IMDChatRegistry *)self existingChatWithGUID:d];
  [(IMDChatRegistry *)self _updateChat:v7 usingSyncData:dataCopy];
}

- (void)updateCachedChatsSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(dsCopy);
        }

        v11 = [(IMDChatRegistry *)self _cachedChatWithGUID:*(*(&v13 + 1) + 8 * v10)];
        v12 = v11;
        if (v11)
        {
          [v11 setCloudKitSyncState:to];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)markChatAsDeferredForSyncingUsingSyncData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [(IMDChatRegistry *)self _existingChatForSyncData:dataCopy];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking existing chat %@ as deferred", &v7, 0xCu);
      }
    }

    [v5 updateCloudKitSyncState:2];
    [v5 updateServerChangeToken:0];
    [v5 updateCloudKitRecordID:0];
    [(IMDChatRegistry *)self _markForksAsSyncedForChat:v5];
  }
}

- (void)markDeferredChatsAsNeedingSync
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", *MEMORY[0x277D197D0], 2];
  chatStore = [(IMDChatRegistry *)self chatStore];
  [chatStore enumerateBatchedChatsFilteredUsingPredicate:v4 block:&unk_283F1A5E8];
}

- (void)__addChatToGroupIDChatIndex:(id)index
{
  indexCopy = index;
  chatsByGroupID = self->_chatsByGroupID;
  v10 = indexCopy;
  groupID = [indexCopy groupID];
  v7 = [(NSMutableDictionary *)chatsByGroupID objectForKey:groupID];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v8 = self->_chatsByGroupID;
    groupID2 = [v10 groupID];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:groupID2];
  }

  [v7 addObject:v10];
}

- (void)__removeChatFromGroupIDChatIndex:(id)index
{
  v15 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  groupID = [indexCopy groupID];
  v6 = [groupID length];

  if (v6)
  {
    chatsByGroupID = self->_chatsByGroupID;
    groupID2 = [indexCopy groupID];
    v9 = [(NSMutableDictionary *)chatsByGroupID objectForKey:groupID2];

    [v9 removeObject:indexCopy];
    if (![v9 count])
    {
      v10 = self->_chatsByGroupID;
      groupID3 = [indexCopy groupID];
      [(NSMutableDictionary *)v10 removeObjectForKey:groupID3];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = indexCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Trying to remove chat with nil groupID: %@", &v13, 0xCu);
    }
  }
}

- (void)__unassignGroupIDFromAllChats:(id)chats
{
  v17 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  if ([chatsCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_chatsByGroupID objectForKey:chatsCopy];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = *v12;
      v8 = *MEMORY[0x277D19780];
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) unassignAndPersistIdentifier:chatsCopy forDomain:v8];
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Trying to unassign nil groupID from all chats.", buf, 2u);
    }
  }
}

- (id)messagesToUploadToCloudKitWithLimit:(unint64_t)limit
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messagesThatNeedSyncWithCloudKitWithFilter:0 limit:limit];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = +[IMDMessageStore sharedInstance];
        guid = [v11 guid];
        v14 = [v12 chatForMessageGUID:guid enableVerboseLogging:0];

        service = [v11 service];
        v16 = [v14 cloudKitChatIDForServiceName:service];
        [v11 setCloudKitChatID:v16];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)messagesPendingUpdateT1ToCloudKitWithLimit:(unint64_t)limit
{
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messagesPendingUpdateT1ToCloudKitWithLimit:limit];

  return v5;
}

- (id)messagesPendingUpdateT2ToCloudKitWithLimit:(unint64_t)limit
{
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messagesPendingUpdateT2ToCloudKitWithLimit:limit];

  return v5;
}

- (id)_lookupChatUsingParentChatID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  if ([dCopy __im_isWellFormedChatGUID])
  {
    [(IMDChatRegistry *)self existingChatWithGUID:dCopy];
  }

  else
  {
    [(IMDChatRegistry *)self existingChatWithGroupID:dCopy onService:serviceCopy];
  }
  v8 = ;
  if (!v8)
  {
    v8 = [(IMDChatRegistry *)self _uncachedNewestChatWithOriginalGroupID:dCopy onService:serviceCopy];
    if (!v8)
    {
      v8 = [(IMDChatRegistry *)self _newestExistingChatWithGroupID:dCopy onService:serviceCopy];
    }
  }

  return v8;
}

- (void)_addItemToParentChatIfNotLocationItem:(id)item parentChat:(id)chat updatedLastMessageCount:(unint64_t)count reason:(int64_t)reason
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() addLocationShareItemToMatchingChats:itemCopy];
  }

  else if (chatCopy)
  {
    [(IMDChatRegistry *)self _addItem:itemCopy toChat:chatCopy reason:reason];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (count)
      {
        [(IMDChatRegistry *)self updateLastMessageForChat:chatCopy hintMessage:itemCopy historyQuery:0];
      }

      else
      {
        [(IMDChatRegistry *)self updateLastMessageForChat:chatCopy hintMessage:itemCopy];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      guid = [itemCopy guid];
      v14 = 138412290;
      v15 = guid;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "No chat record found when adding message item %@, this may NOT be visible to the user!", &v14, 0xCu);
    }
  }
}

- (void)_setSortIDOnIncomingMessage:(id)message forChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if (IMSharedHelperSortUsingReplyToGUIDAlgorithm())
  {
    v7 = objc_alloc_init(IMDMessageSortOrderAssigner);
    [(IMDMessageSortOrderAssigner *)v7 assignSortIDToIncomingMessage:messageCopy onChat:chatCopy];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "sortID")}];
        guid = [messageCopy guid];
        guid2 = [chatCopy guid];
        v12 = 138412802;
        v13 = v9;
        v14 = 2112;
        v15 = guid;
        v16 = 2112;
        v17 = guid2;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Setting sort id %@ for message %@ on chat %@ synced from CloudKit", &v12, 0x20u);
      }
    }
  }
}

- (BOOL)_existingItemRequiresUpgrade:(id)upgrade itemFromCKRecord:(id)record
{
  upgradeCopy = upgrade;
  recordCopy = record;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  messageSyncP2Enabled = [mEMORY[0x277D1A9B8] messageSyncP2Enabled];

  if (messageSyncP2Enabled)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = upgradeCopy;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = recordCopy;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v12;
    if (v10)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      threadIdentifier = [v10 threadIdentifier];
      v17 = threadIdentifier;
      if (threadIdentifier)
      {
        threadIdentifier2 = [v13 threadIdentifier];
        v15 = threadIdentifier2 == 0;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_adoptUpdatedStateForExistingItem:(id)item itemFromCKRecord:(id)record
{
  itemCopy = item;
  recordCopy = record;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  messageSyncP2Enabled = [mEMORY[0x277D1A9B8] messageSyncP2Enabled];

  if (messageSyncP2Enabled)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = itemCopy;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = recordCopy;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = v11;
    if (v9)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      threadIdentifier = [v9 threadIdentifier];

      if (!threadIdentifier)
      {
        threadIdentifier2 = [v12 threadIdentifier];
        [v9 setThreadIdentifier:threadIdentifier2];
      }
    }
  }
}

- (void)processMessageUsingCKRecord:(id)record updatedLastMessageCount:(int)count
{
  v58 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = objc_autoreleasePoolPush();
  v8 = [(IMDChatRegistry *)self _itemFromCKRecord:recordCopy];
  if ([v8 isCompatibleWithMiC])
  {
    _sharedMessageStore = [(IMDChatRegistry *)self _sharedMessageStore];
    guid = [v8 guid];
    v11 = [_sharedMessageStore hasStoredMessageWithGUID:guid];

    defaultCenter = [(IMDChatRegistry *)self _parentChatIDFromCKRecord:recordCopy];
    v13 = [recordCopy _stringForKey:@"svc"];
    v14 = [(IMDChatRegistry *)self _lookupChatUsingParentChatID:defaultCenter service:v13];

    if (v11)
    {
      _sharedMessageStore2 = [(IMDChatRegistry *)self _sharedMessageStore];
      guid2 = [v8 guid];
      v17 = [_sharedMessageStore2 itemWithGUID:guid2];

      v18 = [(IMDChatRegistry *)self _existingItemRequiresUpgrade:v17 itemFromCKRecord:v8]^ 1;
      [(IMDChatRegistry *)self _adoptUpdatedStateForExistingItem:v17 itemFromCKRecord:v8];
      [v17 setCloudKitSyncState:v18];
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      [v17 setCloudKitRecordID:recordName];

      recordChangeTag = [recordCopy recordChangeTag];
      [v17 setCloudKitRecordChangeTag:recordChangeTag];

      [v17 setCloudKitServerChangeTokenBlob:0];
      [v17 setCloudKitChatID:defaultCenter];
      objc_opt_class();
      LOBYTE(recordChangeTag) = objc_opt_isKindOfClass();
      _sharedMessageStore3 = [(IMDChatRegistry *)self _sharedMessageStore];
      v23 = _sharedMessageStore3;
      if (recordChangeTag)
      {
        LOBYTE(v49) = 0;
        v24 = [_sharedMessageStore3 storeMessage:v17 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000 updateMessageCache:0 calculateUnreadCount:v49];
      }

      else
      {
        v33 = [_sharedMessageStore3 storeItem:v17 forceReplace:0];
      }

LABEL_38:
      goto LABEL_39;
    }

    if (![v8 shouldStoreMessage])
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v14)
    {
      v28 = v8;
      v29 = +[IMDBackwardCompatibilityMessageIdentifier sharedIdentifier];
      if ([v29 isIgnorableBackwardCompatibilityMessage:v28 inChat:v14])
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            guid3 = [v28 guid];
            *buf = 138412290;
            v53 = guid3;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Message %@ is an ignorable backward compatibility message, ignoring.", buf, 0xCu);
          }
        }

LABEL_19:
        v32 = 0;
LABEL_32:
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            guid4 = [v8 guid];
            v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "cloudKitSyncState")}];
            v47 = v46;
            v48 = @"NO";
            *buf = 138412802;
            v53 = guid4;
            v54 = 2112;
            if (v32)
            {
              v48 = @"YES";
            }

            v55 = v46;
            v56 = 2112;
            v57 = v48;
            _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Updated msg %@ to have CKSyncState %@ stored message: %@", buf, 0x20u);
          }
        }

        goto LABEL_38;
      }
    }

    [(IMDChatRegistry *)self _setSortIDOnIncomingMessage:v8 forChat:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setFlags:{objc_msgSend(v8, "flags") | 0x2000}];
      _sharedMessageStore4 = [(IMDChatRegistry *)self _sharedMessageStore];
      LOBYTE(v49) = 0;
      v35 = [_sharedMessageStore4 storeMessage:v8 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000 updateMessageCache:0 calculateUnreadCount:v49];

      guid5 = [v8 guid];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_22B6137A4;
      v50[3] = &unk_278706590;
      v51 = guid5;
      v37 = guid5;
      [v8 enumerateAttachmentGUIDsWithBlock:v50];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _sharedMessageStore6 = v8;
        timeRead = [_sharedMessageStore6 timeRead];

        if (!timeRead)
        {
          v40 = [MEMORY[0x277CBEAA8] now];
          [_sharedMessageStore6 setTimeRead:v40];
        }

        _sharedMessageStore5 = [(IMDChatRegistry *)self _sharedMessageStore];
        v42 = [_sharedMessageStore5 storeItem:_sharedMessageStore6 forceReplace:0];
      }

      else
      {
        _sharedMessageStore6 = [(IMDChatRegistry *)self _sharedMessageStore];
        v43 = [_sharedMessageStore6 storeItem:v8 forceReplace:0];
      }
    }

    [(IMDChatRegistry *)self _addItemToParentChatIfNotLocationItem:v8 parentChat:v14 updatedLastMessageCount:count reason:1000];
    v32 = 1;
    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v8;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found item that is incompatible with the current device version: %@", buf, 0xCu);
    }
  }

  guid6 = [v8 guid];
  cloudKitRecordID = [v8 cloudKitRecordID];
  IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit();

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
LABEL_39:

  objc_autoreleasePoolPop(v7);
}

- (BOOL)handleMessageUpdate:(id)update
{
  v49 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [updateCopy _stringForKey:@"ut"];
  v6 = [updateCopy _dataForKey:@"up"];
  if ([v5 isEqualToString:@"UT1"])
  {
    v7 = [MEMORY[0x277D1AA28] protobufForUpdateT1:v6];
    msgid = [v7 msgid];
    threadGuid = [v7 threadGuid];
    threadPart = [v7 threadPart];
    ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v42 = msgid;
        v43 = 2112;
        v44 = ThreadIdentifierWithComponents;
        v45 = 2112;
        v46 = threadGuid;
        v47 = 2112;
        v48 = threadPart;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "UpdateSyncT1 relating msgID %@ to thread %@ (threadGuid %@ threadPart %@)", buf, 0x2Au);
      }
    }

    if (!v7 || ![msgid length] || !objc_msgSend(ThreadIdentifierWithComponents, "length"))
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = v7;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Ignoring update message T1: no message ID or thread ID %@", buf, 0xCu);
        }
      }

      goto LABEL_56;
    }

    v13 = +[IMDMessageStore sharedInstance];
    v40 = [v13 itemWithGUID:msgid];

    if (v40)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = v40;
        threadIdentifier = [v39 threadIdentifier];
        v15 = [threadIdentifier length] == 0;

        if (v15)
        {
          [v39 setThreadIdentifier:ThreadIdentifierWithComponents];
        }

        else
        {
          threadIdentifier2 = [v39 threadIdentifier];
          v17 = [ThreadIdentifierWithComponents isEqualToString:threadIdentifier2];

          if ((v17 & 1) == 0 && IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              threadIdentifier3 = [v39 threadIdentifier];
              *buf = 138412546;
              v42 = threadIdentifier3;
              v43 = 2112;
              v44 = ThreadIdentifierWithComponents;
              _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "ThreadIdentifier update rejected, thread identifier already populated as %@, update would be %@", buf, 0x16u);
            }
          }
        }

        if ([v39 cloudKitSyncState] == 8)
        {
          [v39 setCloudKitSyncState:1];
        }

        v33 = +[IMDMessageStore sharedInstance];
        LOBYTE(v38) = 0;
        v34 = [v33 storeMessage:v39 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000 updateMessageCache:0 calculateUnreadCount:v38];

        goto LABEL_45;
      }

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Update record for non-message type, ignoring", buf, 2u);
        }

LABEL_36:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = msgid;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Ignoring update T1 message: message not found for id %@ (it may have been deleted)", buf, 0xCu);
      }

      goto LABEL_36;
    }

LABEL_45:

LABEL_56:
LABEL_57:
    v31 = 1;
    goto LABEL_58;
  }

  if ([v5 isEqualToString:@"UT2"])
  {
    v20 = [MEMORY[0x277D1AA28] protobufForUpdateT2:v6];
    msgid2 = [v20 msgid];
    v22 = [v20 sr];
    if (v20 && [msgid2 length])
    {
      [(IMDChatRegistry *)self updateSyncedSyndicationRanges:v22 forGUID:msgid2];
    }

    goto LABEL_57;
  }

  if ([v5 isEqualToString:@"UT3"])
  {
    v23 = [MEMORY[0x277D1AA28] protobufForUpdateT3:v6];
    msgid3 = [v23 msgid];
    chatid = [v23 chatid];
    if (v23 && [msgid3 length] && objc_msgSend(chatid, "length"))
    {
      v26 = +[IMDMessageStore sharedInstance];
      v27 = [v26 itemWithGUID:msgid3];

      if (v27)
      {
        [IMDaemonCoreBridgeImpl addItem:v27 toParentChatID:chatid updatedLastMessageCount:-1];
        [v27 setCloudKitSyncState:1];
        v28 = +[IMDMessageStore sharedInstance];
        v29 = [v28 storeItem:v27 forceReplace:0];
      }

      else if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = msgid3;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Ignoring update T3 message: message not found for guid %@ (it may have been deleted)", buf, 0xCu);
        }
      }
    }

    goto LABEL_57;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v5;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Ignoring message update %@, unrecognized update type", buf, 0xCu);
    }
  }

  v31 = 0;
LABEL_58:

  return v31;
}

- (void)handleMessageUpdateConflictType:(id)type serverRecord:(id)record localRowID:(int64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  recordCopy = record;
  if ([typeCopy isEqualToString:@"UT1"])
  {
    if (d)
    {
LABEL_3:
      v10 = +[IMDMessageStore sharedInstance];
      [v10 markMessageAsCleanWithROWID:d];
    }
  }

  else
  {
    if ([typeCopy isEqualToString:@"UT2"])
    {
      [(IMDChatRegistry *)self handleMessageUpdate:recordCopy];
      goto LABEL_6;
    }

    if ([typeCopy isEqualToString:@"UT3"])
    {
      if (!d)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = typeCopy;
        v14 = 2048;
        dCopy = d;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Failed to handle conflict for unknown update type %@, rowID %lu", &v12, 0x16u);
      }
    }
  }

LABEL_6:
}

- (BOOL)updateSyncedSyndicationRanges:(id)ranges forGUID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  dCopy = d;
  _sharedMessageStore = [(IMDChatRegistry *)self _sharedMessageStore];
  v9 = [_sharedMessageStore itemWithGUID:dCopy];

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = dCopy;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Can't apply updated syndication ranges for %@, message not found!", buf, 0xCu);
      }

      goto LABEL_16;
    }

LABEL_17:
    v20 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = dCopy;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Can't apply updated syndication ranges for %@, invalid message type for item %@", buf, 0x16u);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v10 = v9;
  v11 = [MEMORY[0x277D1AA98] rangesFromSerializedString:rangesCopy];
  v26 = [MEMORY[0x277D1AA98] maxStartDateForRanges:v11];
  v12 = MEMORY[0x277D1AA98];
  syndicationRanges = [(__CFString *)v10 syndicationRanges];
  v14 = [v12 maxStartDateForRanges:syndicationRanges];

  syndicationRanges2 = [(__CFString *)v10 syndicationRanges];
  if (!syndicationRanges2)
  {
    goto LABEL_19;
  }

  syndicationRanges3 = [(__CFString *)v10 syndicationRanges];
  if (![syndicationRanges3 count] || !v14 || !v26)
  {

    goto LABEL_19;
  }

  v17 = [v14 compare:v26];

  if (v17 == -1)
  {
LABEL_19:
    [(__CFString *)v10 setSyndicationRanges:v11];
    v18 = @"YES";
    goto LABEL_20;
  }

  v18 = @"NO";
LABEL_20:
  [(__CFString *)v10 setSyncedSyndicationRanges:v11];
  _sharedMessageStore2 = [(IMDChatRegistry *)self _sharedMessageStore];
  LOWORD(v25) = 256;
  v22 = [_sharedMessageStore2 storeMessage:v10 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:0 calculateUnreadCount:v25 reindexMessage:?];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = dCopy;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Applied updated syndicationRanges to %@, was newer data? %@)", buf, 0x16u);
    }
  }

  v20 = 1;
LABEL_25:

  return v20;
}

- (void)clearPendingDeleteTable
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Clearing pending chat delete table", v3, 2u);
    }
  }

  IMDChatClearPendingDeleteChatsTable();
}

- (id)_existingiMessageChatForChatIdentifier:(id)identifier style:(unsigned __int8)style
{
  styleCopy = style;
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(IMDChatRegistry *)self allExistingChatsWithIdentifier:identifierCopy style:styleCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = *v23;
    v10 = MEMORY[0x277D1A620];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        serviceName = [v12 serviceName];
        v14 = [serviceName isEqualToString:*v10];

        if (v14)
        {
          if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              guid = [v12 guid];
              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:styleCopy];
              *buf = 138412802;
              v27 = guid;
              v28 = 2112;
              v29 = identifierCopy;
              v30 = 2112;
              v31 = v20;
              _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Found iMessage chat %@ for chatID %@ style %@", buf, 0x20u);
            }
          }

          v17 = v12;

          goto LABEL_19;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:styleCopy];
      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Did not find iMessage chat for ID %@ and style %@", buf, 0x16u);
    }
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (void)simulateMessageReceive:(id)receive serviceName:(id)name groupID:(id)d handles:(id)handles sender:(id)sender date:(id)date associatedMessageType:(int64_t)type associatedMessageGuid:(id)self0
{
  v86 = *MEMORY[0x277D85DE8];
  receiveCopy = receive;
  nameCopy = name;
  dCopy = d;
  handlesCopy = handles;
  senderCopy = sender;
  dateCopy = date;
  guidCopy = guid;
  v70 = handlesCopy;
  v69 = nameCopy;
  if ([handlesCopy count] && objc_msgSend(nameCopy, "length"))
  {
    v19 = +[IMDAccountController sharedInstance];
    v64 = [v19 anySessionForServiceName:nameCopy];

    if (!v64)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v83 = nameCopy;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No session for serviceName %@ -- can't simulate receive", buf, 0xCu);
        }
      }

      goto LABEL_53;
    }

    v61 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:receiveCopy];
    if (type <= 0)
    {
      v26 = objc_alloc(MEMORY[0x277D1AA70]);
      v27 = dateCopy;
      date = dateCopy;
      if (!dateCopy)
      {
        date = [MEMORY[0x277CBEAA8] date];
        v27 = 0;
      }

      v28 = v27 == 0;
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      v63 = [v26 initWithSender:senderCopy time:date body:v61 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:stringGUID threadIdentifier:0];

      if (!v28)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x277D1A8A8]);
      date = dateCopy;
      if (!dateCopy)
      {
        date = [MEMORY[0x277CBEAA8] date];
      }

      stringGUID2 = [MEMORY[0x277CCACA8] stringGUID];
      v23 = stringGUID2;
      if (guidCopy)
      {
        v63 = [v20 initWithSender:senderCopy time:date body:v61 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:stringGUID2 associatedMessageGUID:guidCopy associatedMessageType:type associatedMessageRange:0 messageSummaryInfo:0x7FFFFFFFFFFFFFFFLL threadIdentifier:{0, 0}];
      }

      else
      {
        stringGUID3 = [MEMORY[0x277CCACA8] stringGUID];
        v63 = [v20 initWithSender:senderCopy time:date body:v61 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:v23 associatedMessageGUID:stringGUID3 associatedMessageType:type associatedMessageRange:0 messageSummaryInfo:0x7FFFFFFFFFFFFFFFLL threadIdentifier:{0, 0}];
      }

      if (dateCopy)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    if ([handlesCopy count] <= 1)
    {
      v31 = 45;
    }

    else
    {
      v31 = 43;
    }

    v62 = v31;
    service = [v64 service];
    v32 = [(IMDChatRegistry *)self existingChatsForIDs:handlesCopy onService:service style:v62];
    v33 = [(IMDChatRegistry *)self existingChatsWithGroupID:dCopy];
    v59 = [v32 arrayByAddingObjectsFromArray:v33];

    if ([v59 count])
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v34 = v59;
      v35 = 0;
      v36 = [v34 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v36)
      {
        v37 = *v77;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v77 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v76 + 1) + 8 * i);
            if ([v39 lastMessageTimeStampOnLoad])
            {
              v40 = v39;

              v35 = v40;
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v76 objects:v81 count:16];
        }

        while (v36);
      }

      chatIdentifier = [v35 chatIdentifier];
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([handlesCopy count] < 2)
      {
        v51 = MEMORY[0x277CBEAC0];
        v52 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v53 = [v51 dictionaryWithObjectsAndKeys:{v52, *MEMORY[0x277D192F8], 0, *MEMORY[0x277D193A8], 0}];

        [v35 addObject:v53];
        chatIdentifier = [handlesCopy firstObject];
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        obj = handlesCopy;
        v42 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v42)
        {
          v43 = *v73;
          v44 = *MEMORY[0x277D192F8];
          v45 = *MEMORY[0x277D193A8];
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v73 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v47 = *(*(&v72 + 1) + 8 * j);
              v48 = MEMORY[0x277CBEAC0];
              v49 = [MEMORY[0x277CCABB0] numberWithInt:2];
              v50 = [v48 dictionaryWithObjectsAndKeys:{v49, v44, v47, v45, 0}];

              [v35 addObject:v50];
            }

            v42 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
          }

          while (v42);
        }

        chatIdentifier = [MEMORY[0x277CCACA8] __im_uniqueChatIdentifierForGroupChat];
      }

      v54 = dCopy;
      stringGUID4 = dCopy;
      if (!dCopy)
      {
        stringGUID4 = [MEMORY[0x277CCACA8] stringGUID];
        v54 = 0;
      }

      v56 = v54 == 0;
      account = [v64 account];
      LOBYTE(v58) = 0;
      [v64 didJoinChat:chatIdentifier style:v62 displayName:0 groupID:stringGUID4 handleInfo:v35 account:account isBlackholed:v58];

      if (v56)
      {
      }
    }

    [v63 setRoomName:chatIdentifier];
    [v64 didReceiveMessage:v63 forChat:chatIdentifier style:v62 fromIDSID:0];

LABEL_53:
    goto LABEL_54;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v83 = handlesCopy;
      v84 = 2112;
      v85 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "No handles or servicename to receive a message from: {handles: %@ serviceName: %@}", buf, 0x16u);
    }
  }

LABEL_54:
}

- (void)invalidatePersonCentricGroupedChatsCache
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Invalidating person centric grouped chats cache", v5, 2u);
    }
  }

  personCentricGroupedChatsCache = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
  [personCentricGroupedChatsCache removeAllObjects];
}

- (BOOL)_contactsBasedMergingEnabled
{
  if (qword_2814213C0 != -1)
  {
    sub_22B7D67F0();
  }

  return byte_2814213C9;
}

- (id)_aliasToCNIDMapForAliases:(id)aliases
{
  aliasesCopy = aliases;
  if (IMIsRunningInUnitTesting())
  {
    v5 = 0;
  }

  else
  {
    v6 = IMDCNRecordIDAndHistoryTokenForAliases();
    v7 = [v6 objectForKey:*MEMORY[0x277D18F20]];
    [(IMDChatRegistry *)self setHistoryToken:v7];
    v5 = [v6 objectForKey:*MEMORY[0x277D18F18]];
  }

  return v5;
}

- (void)setHistoryToken:(id)token
{
  v11 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (tokenCopy)
  {
    historyToken = self->_historyToken;
    p_historyToken = &self->_historyToken;
    if (![(NSData *)historyToken isEqualToData:tokenCopy])
    {
      objc_storeStrong(p_historyToken, token);
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "ContactStore history token updated.", &v9, 2u);
        }

LABEL_10:
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not updating the ContactStore history token with %@", &v9, 0xCu);
    }

    goto LABEL_10;
  }
}

- (void)_updateAliasToCNIDMapAndHistoryTokenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aliasToCNIDMap = [(IMDChatRegistry *)self aliasToCNIDMap];
  v5 = [(NSData *)self->_historyToken copy];
  IMDCNRecordIDAndHistoryTokenForAliasesWithCompletionHandler();
}

- (void)_updateAcceptedContactsInAliasToCNIDMapWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277D18EB0];
  handlerCopy = handler;
  database = [v4 database];
  aliasToCNIDMap = [(IMDChatRegistry *)self aliasToCNIDMap];
  [database updateAcceptedContactsInAliasMap:aliasToCNIDMap completionHandler:handlerCopy];
}

- (id)_generateCurrentAliasToCNIDDictionary
{
  [(NSRecursiveLock *)self->_handlesLock lock];
  idToHandlesMap = [(IMDChatRegistry *)self idToHandlesMap];
  allKeys = [idToHandlesMap allKeys];
  v5 = [allKeys copy];

  [(NSRecursiveLock *)self->_handlesLock unlock];
  v6 = [(IMDChatRegistry *)self _aliasToCNIDMapForAliases:v5];
  v7 = [v6 mutableCopy];

  return v7;
}

- (void)_populateContactIDOnHandles
{
  v37 = *MEMORY[0x277D85DE8];
  p_handlesLock = &self->_handlesLock;
  [(NSRecursiveLock *)self->_handlesLock lock];
  idToHandlesMap = [(IMDChatRegistry *)self idToHandlesMap];
  allKeys = [idToHandlesMap allKeys];
  v24 = [allKeys copy];

  [(NSRecursiveLock *)*p_handlesLock unlock];
  _generateCurrentAliasToCNIDDictionary = [(IMDChatRegistry *)self _generateCurrentAliasToCNIDDictionary];
  v7 = [_generateCurrentAliasToCNIDDictionary mutableCopy];

  v23 = v7;
  [(IMDChatRegistry *)self setCachedAliasToCNIDMap:v7];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "All handles and CachedAliasToCNIDMap", buf, 2u);
    }
  }

  [MEMORY[0x277D1A968] logHandleIDs:v24 checkAdditionalLoggingEnabled:1];
  v9 = MEMORY[0x277D1A968];
  cachedAliasToCNIDMap = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
  [v9 logDictionary:cachedAliasToCNIDMap];

  [(NSRecursiveLock *)self->_handlesLock lock];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  cachedAliasToCNIDMap2 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
  obj = [cachedAliasToCNIDMap2 allKeys];

  v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = *v31;
    v14 = *MEMORY[0x277D18E68];
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        cachedAliasToCNIDMap3 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
        v18 = [cachedAliasToCNIDMap3 objectForKey:v16];

        if ([v18 isEqualToString:v14])
        {

          v18 = 0;
        }

        v19 = [(NSMutableDictionary *)self->_idToHandlesMap objectForKey:v16];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v20)
        {
          v21 = *v27;
          do
          {
            v22 = 0;
            do
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v26 + 1) + 8 * v22++) setCNContactID:v18];
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v20);
        }

        ++v15;
      }

      while (v15 != v12);
      v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v12);
  }

  [(NSRecursiveLock *)self->_handlesLock unlock];
}

- (void)_updateCachedCNIDMapForHandles:(id)handles
{
  v4 = [(IMDChatRegistry *)self _aliasToCNIDMapForAliases:handles];
  v5 = v4;
  v9 = v4;
  if (!self->_cachedAliasToCNIDMap)
  {
    v6 = [v4 count];
    v5 = v9;
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      cachedAliasToCNIDMap = self->_cachedAliasToCNIDMap;
      self->_cachedAliasToCNIDMap = v7;

      v5 = v9;
    }
  }

  [(NSMutableDictionary *)self->_cachedAliasToCNIDMap addEntriesFromDictionary:v5];
}

- (id)_cnIDForHandle:(id)handle
{
  v9[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = [(NSMutableDictionary *)self->_cachedAliasToCNIDMap objectForKeyedSubscript:handleCopy];
  if (!v5)
  {
    v9[0] = handleCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(IMDChatRegistry *)self _updateCachedCNIDMapForHandles:v6];

    v5 = [(NSMutableDictionary *)self->_cachedAliasToCNIDMap objectForKeyedSubscript:handleCopy];
  }

  if ([v5 isEqualToString:*MEMORY[0x277D18E68]])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)_hasSavedContactCardForHandle:(id)handle
{
  v3 = [(IMDChatRegistry *)self _cnIDForHandle:handle];
  v4 = v3 != 0;

  return v4;
}

- (id)_extractHandlesFromMap:(id)map usingCNID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dCopy = d;
  [dCopy removeObject:*MEMORY[0x277D18E68]];
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = mapCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v17}];
        if ([dCopy containsObject:v14])
        {
          v15 = [v7 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_opt_new();
            [v7 setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_handlesWithChangedContactsOriginalMap:(id)map newMap:(id)newMap
{
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  newMapCopy = newMap;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [newMapCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [newMapCopy objectForKeyedSubscript:{v13, selfCopy}];
        v15 = [mapCopy objectForKeyedSubscript:v13];
        if (([v14 isEqualToIgnoringCase:v15] & 1) == 0)
        {
          [v7 addObject:v13];
          [v25 addObject:v14];
          if (v15)
          {
            [v25 addObject:v15];
          }
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  [v25 removeObject:*MEMORY[0x277D18E68]];
  v16 = [(IMDChatRegistry *)selfCopy _extractHandlesFromMap:newMapCopy usingCNID:v25];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys2 = [v16 allKeys];
  v18 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(allKeys2);
        }

        v22 = [v16 objectForKeyedSubscript:{*(*(&v26 + 1) + 8 * j), selfCopy}];
        [v7 addObjectsFromArray:v22];
      }

      v19 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  return v7;
}

- (id)_potentialGUIDsForIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v6 = IMCopyAnyServiceGUIDForChat();
    v20[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  else
  {
    v8 = +[IMDChatRegistry supportedServiceNames];
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v8;
    v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-;%@", *(*(&v15 + 1) + 8 * i), identifierCopy, v15];;
          [v7 addObject:v13];
        }

        v10 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (id)existingOneOnOneChatsWithIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [(IMDChatRegistry *)self _potentialGUIDsForIdentifier:v10];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(IMDChatRegistry *)self existingChatWithGUID:*(*(&v19 + 1) + 8 * j)];
              if (v16)
              {
                [v5 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)existingGroupChatsContainingHandles:(id)handles
{
  v109 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  allChats = [(IMDChatRegistry *)self allChats];
  v6 = [allChats countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v99;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v99 != v8)
        {
          objc_enumerationMutation(allChats);
        }

        v10 = *(*(&v98 + 1) + 8 * i);
        if ([v10 style] == 43)
        {
          displayName = [v10 displayName];
          v12 = [displayName length];

          if (v12)
          {
            displayName2 = [v10 displayName];
            v14 = [displayName2 length];

            v15 = v55;
            if (v14)
            {
              v16 = v55 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16 && v10 != 0)
            {
LABEL_19:
              CFArrayAppendValue(v15, v10);
              continue;
            }
          }

          else if (v4)
          {
            v15 = v4;
            if (v10)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v7 = [allChats countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v7);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v4;
  v60 = [(__CFArray *)obj countByEnumeratingWithState:&v94 objects:v107 count:16];
  if (v60)
  {
    v58 = *v95;
    do
    {
      v19 = 0;
      do
      {
        if (*v95 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v19;
        v20 = *(*(&v94 + 1) + 8 * v19);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v70 = handlesCopy;
        v21 = [v70 countByEnumeratingWithState:&v90 objects:v106 count:16];
        if (v21)
        {
          v22 = v21;
          LOBYTE(v23) = 0;
          v24 = *v91;
          v66 = *v91;
          do
          {
            v25 = 0;
            v68 = v22;
            do
            {
              if (*v91 != v24)
              {
                objc_enumerationMutation(v70);
              }

              if (v23)
              {
                LOBYTE(v23) = 1;
              }

              else
              {
                v72 = v25;
                v26 = *(*(&v90 + 1) + 8 * v25);
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                participants = [v20 participants];
                v28 = [participants countByEnumeratingWithState:&v86 objects:v105 count:16];
                if (v28)
                {
                  v29 = v28;
                  v23 = 0;
                  v30 = *v87;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      if (*v87 != v30)
                      {
                        objc_enumerationMutation(participants);
                      }

                      v32 = [*(*(&v86 + 1) + 8 * j) ID];
                      v33 = [v32 isEqualToIgnoringCase:v26];

                      v34 = v33 ^ 1 | v23;
                      v23 |= v34 ^ 1;
                      if ((v34 & 1) == 0 && v18 && v20)
                      {
                        CFArrayAppendValue(v18, v20);
                        v23 = 1;
                      }
                    }

                    v29 = [participants countByEnumeratingWithState:&v86 objects:v105 count:16];
                  }

                  while (v29);
                }

                else
                {
                  LOBYTE(v23) = 0;
                }

                v24 = v66;
                v22 = v68;
                v25 = v72;
              }

              ++v25;
            }

            while (v25 != v22);
            v22 = [v70 countByEnumeratingWithState:&v90 objects:v106 count:16];
          }

          while (v22);
        }

        v19 = v62 + 1;
      }

      while (v62 + 1 != v60);
      v60 = [(__CFArray *)obj countByEnumeratingWithState:&v94 objects:v107 count:16];
    }

    while (v60);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v56 = v55;
  v61 = [(__CFArray *)v56 countByEnumeratingWithState:&v82 objects:v104 count:16];
  if (v61)
  {
    v59 = *v83;
    v65 = v18;
    do
    {
      v36 = 0;
      do
      {
        if (*v83 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v63 = v36;
        v37 = *(*(&v82 + 1) + 8 * v36);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v71 = handlesCopy;
        v38 = [v71 countByEnumeratingWithState:&v78 objects:v103 count:16];
        if (v38)
        {
          v39 = v38;
          LOBYTE(v40) = 0;
          v41 = *v79;
          v67 = *v79;
          do
          {
            v42 = 0;
            v69 = v39;
            do
            {
              if (*v79 != v41)
              {
                objc_enumerationMutation(v71);
              }

              if (v40)
              {
                LOBYTE(v40) = 1;
              }

              else
              {
                v73 = v42;
                v43 = *(*(&v78 + 1) + 8 * v42);
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                participants2 = [v37 participants];
                v45 = [participants2 countByEnumeratingWithState:&v74 objects:v102 count:16];
                if (v45)
                {
                  v46 = v45;
                  v40 = 0;
                  v47 = *v75;
                  do
                  {
                    for (k = 0; k != v46; ++k)
                    {
                      if (*v75 != v47)
                      {
                        objc_enumerationMutation(participants2);
                      }

                      v49 = [*(*(&v74 + 1) + 8 * k) ID];
                      v50 = [v49 isEqualToIgnoringCase:v43];

                      v51 = v50 ^ 1 | v40;
                      v40 |= v51 ^ 1;
                      if ((v51 & 1) == 0 && v35 && v37)
                      {
                        CFArrayAppendValue(v35, v37);
                        v40 = 1;
                      }
                    }

                    v46 = [participants2 countByEnumeratingWithState:&v74 objects:v102 count:16];
                  }

                  while (v46);
                }

                else
                {
                  LOBYTE(v40) = 0;
                }

                v18 = v65;
                v41 = v67;
                v39 = v69;
                v42 = v73;
              }

              ++v42;
            }

            while (v42 != v39);
            v39 = [v71 countByEnumeratingWithState:&v78 objects:v103 count:16];
          }

          while (v39);
        }

        v36 = v63 + 1;
      }

      while (v63 + 1 != v61);
      v61 = [(__CFArray *)v56 countByEnumeratingWithState:&v82 objects:v104 count:16];
    }

    while (v61);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v53 = dictionary;
  if (v18)
  {
    [dictionary setObject:v18 forKey:@"UnnamedGroupChats"];
  }

  if (v35)
  {
    [v53 setObject:v35 forKey:@"NamedGroupChats"];
  }

  return v53;
}

- (void)_startObservingAcceptedContactChanges
{
  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    objc_initWeak(location, self);
    v3 = MEMORY[0x277D1A890];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B616A0C;
    v7[3] = &unk_278705388;
    objc_copyWeak(&v8, location);
    v4 = [v3 notifierWithBlock:v7];
    [(IMDChatRegistry *)self setAcceptedContactsChangeNotifier:v4];

    acceptedContactsChangeNotifier = [(IMDChatRegistry *)self acceptedContactsChangeNotifier];
    [acceptedContactsChangeNotifier startObserving];

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Contacts based merging is disabled. Not establishing an accepted contact change observer.", location, 2u);
    }
  }
}

- (void)_performCheckForContactChangesWithChangeType:(int64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = IMSharedHelperContactsBasedMergingEnabled();
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Contacts changed with change type: %ld", &v11, 0xCu);
      }
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__checkForContactChangesWithChangeType_ object:v8];
    [(IMDChatRegistry *)self performSelector:sel__checkForContactChangesWithChangeType_ withObject:v8 afterDelay:0.5];
    v9 = +[IMDNicknameController sharedInstance];
    [v9 purgeUnknownSenderRecordInfoIfNeeded];
  }

  else if (v6)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Contacts based merging is disabled.", &v11, 2u);
    }
  }
}

- (void)_checkForContactChangesWithChangeType:(id)type
{
  if ([type integerValue] == 1)
  {

    MEMORY[0x2821F9670](self, sel__chatGUIDsToRemergeForAcceptedContactChange_);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel__chatGUIDsToRemergeForContactChange_);
  }
}

- (void)_chatGUIDsToRemergeForContactChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B616F08;
  v6[3] = &unk_2787065D8;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  [(IMDChatRegistry *)self _updateAliasToCNIDMapAndHistoryTokenWithCompletionHandler:v6];
}

- (void)_chatGUIDsToRemergeForAcceptedContactChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B61711C;
  v6[3] = &unk_2787065D8;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  [(IMDChatRegistry *)self _updateAcceptedContactsInAliasToCNIDMapWithCompletionHandler:v6];
}

- (void)_chatGUIDsThatNeedRemerging:(id *)remerging chatDictionaryArray:(id *)array aliasMap:(id)map
{
  v79 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  selfCopy = self;
  cachedAliasToCNIDMap = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
  v49 = [(IMDChatRegistry *)selfCopy _handlesWithChangedContactsOriginalMap:cachedAliasToCNIDMap newMap:mapCopy];

  if ([v49 count])
  {
    array = [MEMORY[0x277CBEB18] array];
    allObjects = [v49 allObjects];
    v8 = [(IMDChatRegistry *)selfCopy existingOneOnOneChatsWithIdentifiers:allObjects];
    [array addObjectsFromArray:v8];

    allObjects2 = [v49 allObjects];
    v10 = [(IMDChatRegistry *)selfCopy existingGroupChatsContainingHandles:allObjects2];
    v11 = [v10 objectForKey:@"UnnamedGroupChats"];
    [array addObjectsFromArray:v11];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(array, "count")}];
        *buf = 138412290;
        v73 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "# chats that need update after contacts changed notification %@", buf, 0xCu);
      }
    }

    v46 = [mapCopy mutableCopy];
    [(IMDChatRegistry *)selfCopy setCachedAliasToCNIDMap:v46];
    blackholedChats = [(IMDChatRegistry *)selfCopy blackholedChats];
    v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v49;
    v53 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v53)
    {
      v52 = *v69;
      v59 = *MEMORY[0x277D18E68];
      do
      {
        v14 = 0;
        do
        {
          if (*v69 != v52)
          {
            v15 = v14;
            objc_enumerationMutation(obj);
            v14 = v15;
          }

          v54 = v14;
          v16 = *(*(&v68 + 1) + 8 * v14);
          idToHandlesMap = [(IMDChatRegistry *)selfCopy idToHandlesMap];
          v18 = [idToHandlesMap objectForKeyedSubscript:v16];

          cachedAliasToCNIDMap2 = [(IMDChatRegistry *)selfCopy cachedAliasToCNIDMap];
          v20 = [cachedAliasToCNIDMap2 objectForKeyedSubscript:v16];

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v58 = v18;
          v21 = [v58 countByEnumeratingWithState:&v64 objects:v77 count:16];
          if (v21)
          {
            v22 = *v65;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v65 != v22)
                {
                  objc_enumerationMutation(v58);
                }

                v24 = *(*(&v64 + 1) + 8 * i);
                if ([v20 isEqualToString:v59])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v25 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      v26 = [v24 ID];
                      *buf = 138412290;
                      v73 = v26;
                      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No CNContact for alias %@", buf, 0xCu);
                    }
                  }

                  if (IMOSLoggingEnabled())
                  {
                    v27 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v73 = v16;
                      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Clean up nickname for alias %@", buf, 0xCu);
                    }
                  }

                  if (v16)
                  {
                    [v57 addObject:v16];
                  }

                  v20 = 0;
                }

                [v24 setCNContactID:v20];
              }

              v21 = [v58 countByEnumeratingWithState:&v64 objects:v77 count:16];
            }

            while (v21);
          }

          if (([v20 isEqualToString:v59] & 1) == 0)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v56 = blackholedChats;
            v28 = [v56 countByEnumeratingWithState:&v60 objects:v76 count:16];
            if (v28)
            {
              v29 = *v61;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v61 != v29)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v31 = *(*(&v60 + 1) + 8 * j);
                  participants = [v31 participants];
                  v33 = [participants __imArrayByApplyingBlock:&unk_283F1A648];

                  if ([v33 containsObject:v16])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v34 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                      {
                        guid = [v31 guid];
                        *buf = 138412546;
                        v73 = v16;
                        v74 = 2112;
                        v75 = guid;
                        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Hawking: New contact (%@) added, removing chat (%@) from blackhole.", buf, 0x16u);
                      }
                    }

                    [v31 updateIsBlackholed:0];
                    _sharedMessageStore = [(IMDChatRegistry *)selfCopy _sharedMessageStore];
                    lastMessage = [v31 lastMessage];
                    guid2 = [lastMessage guid];
                    [_sharedMessageStore markMessageGUIDUnread:guid2];

                    participants2 = [v31 participants];
                    LODWORD(_sharedMessageStore) = [participants2 count] == 1;

                    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
                    v41 = mEMORY[0x277D1AAA8];
                    if (_sharedMessageStore)
                    {
                      v42 = 24;
                    }

                    else
                    {
                      v42 = 25;
                    }

                    [mEMORY[0x277D1AAA8] trackSpamEvent:v42];
                  }
                }

                v28 = [v56 countByEnumeratingWithState:&v60 objects:v76 count:16];
              }

              while (v28);
            }
          }

          v14 = v54 + 1;
        }

        while (v54 + 1 != v53);
        v53 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v53);
    }

    v43 = +[IMDNicknameController sharedInstance];
    [v43 cleanUpNicknameForIDs:v57];

    [(IMDChatRegistry *)selfCopy _serializeChatsForRemerge:array guidsThatNeedRemerging:remerging chatDictionaryArray:array];
  }
}

- (void)_chatGUIDsThatNeedRemerging:(id *)remerging chatDictionaryArray:(id *)array oldPersonCentricID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    personCentricGroupedChatsCache = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
    v9 = [personCentricGroupedChatsCache valueForKey:dCopy];

    personCentricGroupedChatsCache2 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
    [personCentricGroupedChatsCache2 removeObjectForKey:dCopy];

    if ([v9 count])
    {
      v11 = [(IMDChatRegistry *)self groupChatsBasedOnIdentity:v9];
      personCentricGroupedChatsCache3 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
      [personCentricGroupedChatsCache3 addEntriesFromDictionary:v11];

      [(IMDChatRegistry *)self _serializeChatsForRemerge:v9 guidsThatNeedRemerging:remerging chatDictionaryArray:array];
    }
  }
}

- (void)_serializeChatsForRemerge:(id)remerge guidsThatNeedRemerging:(id *)remerging chatDictionaryArray:(id *)array
{
  v28 = *MEMORY[0x277D85DE8];
  remergeCopy = remerge;
  if ([remergeCopy count])
  {
    if (remerging)
    {
      v18 = remergeCopy;
      *remerging = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = remergeCopy;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v8)
      {
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                guid = [v11 guid];
                *buf = 138412290;
                v26 = guid;
                _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Chat %@ needs to be merged / un-merged & updated in spotlight", buf, 0xCu);
              }
            }

            v14 = *remerging;
            guid2 = [v11 guid];
            [v14 addObject:guid2];
          }

          v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v8);
      }

      remergeCopy = v18;
    }

    if (array)
    {
      *array = [(IMDChatRegistry *)self personCentricGroupedChatsArrayWithMaximumNumberOfChats:0x7FFFFFFFFFFFFFFFLL skipsLastMessageLoading:0 usingChats:remergeCopy useCachedChatGroups:0 includingPinnedChatIdentifiers:0 repairInconsistentMergedChats:0];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*array, "count")}];
          *buf = 138412290;
          v26 = v17;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No of entries in chat dictionary %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)updateMeCardHasUpdatedForAllChats
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Update MeCard for all IMDChats", buf, 2u);
    }
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allChats = [(IMDChatRegistry *)self allChats];
  v5 = [allChats countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allChats);
        }

        [*(*(&v8 + 1) + 8 * v7++) meCardHasUpdated];
      }

      while (v5 != v7);
      v5 = [allChats countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date
{
  v5 = MEMORY[0x277D18EB0];
  dateCopy = date;
  deletedCopy = deleted;
  database = [v5 database];
  [database moveMessageRecordsToRecoveryForMessageGUIDs:deletedCopy deleteDate:dateCopy];
}

- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date
{
  v5 = MEMORY[0x277D18EB0];
  dateCopy = date;
  deletedCopy = deleted;
  database = [v5 database];
  [database moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:deletedCopy deleteDate:dateCopy];
}

- (void)recoverMessagesWithChatGUIDs:(id)ds
{
  v3 = MEMORY[0x277D18EB0];
  dsCopy = ds;
  database = [v3 database];
  [database recoverMessageRecordsForChatRecordsWithGUIDs:dsCopy];
}

- (id)_bestServiceSessionForService:(id)service accountID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  if (serviceCopy)
  {
    v7 = +[IMDServiceController sharedController];
    v8 = [v7 serviceWithName:serviceCopy];

    v9 = +[IMDAccountController sharedInstance];
    v10 = [v9 activeAccountsForService:v8];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          session = [v16 session];

          if (session)
          {
            if (!dCopy || ([v8 supportsOneSessionForAllAccounts] & 1) != 0 || (objc_msgSend(v16, "accountID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(dCopy, "isEqualToString:", v18), v18, (v19 & 1) != 0))
            {
              session2 = [v16 session];
              goto LABEL_17;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        session2 = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      session2 = 0;
    }

LABEL_17:
  }

  else
  {
    session2 = 0;
  }

  return session2;
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D18EB0];
  dsCopy = ds;
  synchronousDatabase = [v7 synchronousDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B618354;
  v11[3] = &unk_278706330;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [synchronousDatabase permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:dsCopy completionHandler:v11];
}

- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)limit
{
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v5 = [synchronousDatabase recoverableMessagesMetadataPendingCloudKitSaveWithLimit:limit filter:3];

  return v5;
}

- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)limit
{
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v5 = [synchronousDatabase recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:limit];

  return v5;
}

- (void)clearRecoverableMessageTombStones
{
  database = [MEMORY[0x277D18EB0] database];
  [database clearRecoverableMessageTombStones];
}

- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageRowID:(int64_t)d onPartIndex:(int64_t)index
{
  database = [MEMORY[0x277D18EB0] database];
  [database updateRecoverableMessageSyncState:state forMessageRowID:d onPartIndex:index];
}

- (void)_updatePendingReviewForChatsWithGUIDsInBackground:(id)background pendingReview:(BOOL)review completionBlock:(id)block
{
  reviewCopy = review;
  blockCopy = block;
  v8 = MEMORY[0x277D18EB0];
  backgroundCopy = background;
  database = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B618A8C;
  v12[3] = &unk_278704440;
  v13 = blockCopy;
  v11 = blockCopy;
  [database updatePendingReviewForChatsWithGUIDs:backgroundCopy pendingReview:reviewCopy completionHandler:v12];
}

- (void)updatePendingReviewForChatsWithGUIDs:(id)ds pendingReview:(BOOL)review
{
  reviewCopy = review;
  v35 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count] == 1)
  {
    firstObject = [dsCopy firstObject];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = firstObject;
        *&buf[12] = 1024;
        *&buf[14] = reviewCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Marking %@ with pendingReview: %{BOOL}d", buf, 0x12u);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    firstObject = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = [dsCopy count];
      *&buf[12] = 1024;
      *&buf[14] = reviewCopy;
      _os_log_impl(&dword_22B4CC000, firstObject, OS_LOG_TYPE_INFO, "Marking %ld chats with pendingReview: %{BOOL}d", buf, 0x12u);
    }
  }

LABEL_11:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(IMDChatRegistry *)self _cachedChatWithGUID:*(*(&v26 + 1) + 8 * i)];
        v14 = v13;
        if (v13)
        {
          [v13 setCloudKitSyncState:0];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  v15 = +[IMDMessageStore sharedInstance];
  unreadCountController = [v15 unreadCountController];
  [unreadCountController updatePendingReviewForChatsWithGUIDs:v9 pendingReview:reviewCopy];

  if ([v9 count] > 0x63)
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = sub_22B618EF8;
    v32 = sub_22B618F24;
    v33 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B618F2C;
    aBlock[3] = &unk_278704900;
    v22 = v25;
    v23 = buf;
    v20 = v9;
    selfCopy = self;
    v24 = reviewCopy;
    v17 = _Block_copy(aBlock);
    v18 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v17;

    (*(*(*&buf[8] + 40) + 16))();
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v25, 8);
  }

  else
  {
    [(IMDChatRegistry *)self _updatePendingReviewForChatsWithGUIDsInBackground:v9 pendingReview:reviewCopy completionBlock:0];
  }
}

- (void)_triggerRemergeForPersonCentricID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = 0;
  v12 = 0;
  [(IMDChatRegistry *)self _chatGUIDsThatNeedRemerging:&v12 chatDictionaryArray:&v11 oldPersonCentricID:dCopy];
  v5 = v12;
  v6 = v11;
  if ([v5 count])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 count];
        *buf = 67109378;
        v14 = v8;
        v15 = 2112;
        v16 = dCopy;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Broadcasting remerge for %d chats, invalidated personCentricID=%@", buf, 0x12u);
      }
    }

    v9 = +[IMDBroadcastController sharedProvider];
    broadcasterForChatListeners = [v9 broadcasterForChatListeners];
    [broadcasterForChatListeners chatsNeedRemerging:v5 groupedChats:v6];
  }
}

- (void)_remergeChatsWithParticipantIDsSets:(id)sets
{
  setsCopy = sets;
  pendingParticipantIDSetsForRemerge = [(IMDChatRegistry *)self pendingParticipantIDSetsForRemerge];
  [pendingParticipantIDSetsForRemerge addObjectsFromArray:setsCopy];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__remergeChatsWithPendingParticipantIDSets object:0];

  [(IMDChatRegistry *)self performSelector:sel__remergeChatsWithPendingParticipantIDSets withObject:0 afterDelay:0.0];
}

- (void)_remergeChatsWithPendingParticipantIDSets
{
  v46 = *MEMORY[0x277D85DE8];
  v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
  pendingParticipantIDSetsForRemerge = [(IMDChatRegistry *)self pendingParticipantIDSetsForRemerge];
  allObjects = [pendingParticipantIDSetsForRemerge allObjects];

  pendingParticipantIDSetsForRemerge2 = [(IMDChatRegistry *)self pendingParticipantIDSetsForRemerge];
  [pendingParticipantIDSetsForRemerge2 removeAllObjects];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v8)
  {
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        cachedAliasToCNIDMap = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
        v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v11];
        v14 = [(IMDChatRegistry *)self _extractHandlesFromMap:cachedAliasToCNIDMap usingCNID:v13];
        [v6 addEntriesFromDictionary:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = sub_22B6196A0;
        v32[3] = &unk_278706628;
        v33 = v6;
        v19 = [v18 __imArrayByApplyingBlock:v32];
        v20 = [(IMDChatRegistry *)self existingChatsForGroupedIDs:v19 displayName:0 style:43];
        [v29 addObjectsFromArray:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }

  allObjects2 = [v29 allObjects];
  v30 = 0;
  v31 = 0;
  [(IMDChatRegistry *)self _serializeChatsForRemerge:allObjects2 guidsThatNeedRemerging:&v31 chatDictionaryArray:&v30];
  v22 = v31;
  v23 = v30;

  if ([v22 count])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v22 count];
        *buf = 67109120;
        v43 = v25;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Broadcasting remerge for %d chats", buf, 8u);
      }
    }

    v26 = +[IMDBroadcastController sharedProvider];
    broadcasterForChatListeners = [v26 broadcasterForChatListeners];
    [broadcasterForChatListeners chatsNeedRemerging:v22 groupedChats:v23];
  }
}

- (void)repairInconsistentMergedChatsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  [(IMDChatRegistry *)self _repairInconsistentGroupPhotoGuidAcrossMergedChatsIfNecessary:necessaryCopy];
  [(IMDChatRegistry *)self _repairInconsistentJoinStatesAcrossMergedChatsIfNecessary:necessaryCopy];
}

- (BOOL)_hasInconsistentGroupPhotoGUIDAcrossMergedChats:(id)chats
{
  v19 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  if ([chatsCopy count] >= 2)
  {
    firstObject = [chatsCopy firstObject];
    groupPhotoGuid = [firstObject groupPhotoGuid];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = chatsCopy;
    v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v7);
          }

          groupPhotoGuid2 = [*(*(&v14 + 1) + 8 * i) groupPhotoGuid];
          v11 = groupPhotoGuid2;
          if (groupPhotoGuid2 != groupPhotoGuid)
          {
            v12 = !groupPhotoGuid2 || groupPhotoGuid == 0;
            if (v12 || ([groupPhotoGuid2 isEqualToString:groupPhotoGuid] & 1) == 0)
            {

              LOBYTE(v4) = 1;
              goto LABEL_18;
            }
          }
        }

        v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_preferredFileTransferFromGroupPhotoGUIDs:(id)ds
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = ds;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v4)
  {
    v6 = *v31;
    *&v5 = 138412290;
    v28 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = +[IMDAttachmentStore sharedInstance];
        v10 = [v9 attachmentWithGUID:v8];

        v11 = IMOSLoggingEnabled();
        if (v10)
        {
          if (v11)
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v35 = v8;
              v36 = 2112;
              v37 = v10;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Have file transfer matching groupPhotoGuid: %@. FileTransfer: %@", buf, 0x16u);
            }
          }

          if (v3)
          {
            createdDate = [v10 createdDate];
            if (createdDate)
            {
              createdDate2 = [v3 createdDate];
              v15 = createdDate2;
              if (!createdDate2 || [createdDate2 compare:createdDate] == -1)
              {
                if (IMOSLoggingEnabled())
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    guid = [v10 guid];
                    guid2 = [v3 guid];
                    *buf = 138412546;
                    v35 = guid;
                    v36 = 2112;
                    v37 = guid2;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Preferring %@ over %@ because the creation date is newer.", buf, 0x16u);
                  }
                }

                v23 = v10;

                v3 = v23;
              }

              else if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  guid3 = [v10 guid];
                  guid4 = [v3 guid];
                  *buf = 138412546;
                  v35 = guid3;
                  v36 = 2112;
                  v37 = guid4;
                  _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Not preferring %@ over %@ because the creation date is older.", buf, 0x16u);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                guid5 = [v10 guid];
                *buf = v28;
                v35 = guid5;
                _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Not preferring %@ because it does not have a creation date", buf, 0xCu);
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
                *buf = v28;
                v35 = v8;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Accepting groupPhotoGuid %@ as the initial preferred group photo.", buf, 0xCu);
              }
            }

            v3 = v10;
          }
        }

        else if (v11)
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v28;
            v35 = v8;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Could not find file transfer matching group photo guid: %@", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)_repairInconsistentGroupPhotoGuidAcrossMergedChatsIfNecessary:(id)necessary
{
  v50 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([(IMDChatRegistry *)self _hasInconsistentGroupPhotoGUIDAcrossMergedChats:necessaryCopy])
  {
    selfCopy = self;
    v31 = necessaryCopy;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Group photo inconsistency detected among merged chats. Attempting to repair", buf, 2u);
      }
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = v31;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v8)
    {
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          groupPhotoGuid = [v11 groupPhotoGuid];
          guid = [v11 guid];
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v43 = guid;
              v44 = 2112;
              v45 = groupPhotoGuid;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "    Chat %@ has groupPhotoGuid %@", buf, 0x16u);
            }
          }

          if (groupPhotoGuid)
          {
            [v6 addObject:groupPhotoGuid];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v8);
    }

    v15 = [(IMDChatRegistry *)selfCopy _preferredFileTransferFromGroupPhotoGUIDs:v6];
    v32 = v15;
    if (v15)
    {
      guid2 = [v15 guid];
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v43 = guid2;
          v44 = 2112;
          v45 = v32;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "The preferred groupPhotoGuid is %@. Transfer: %@", buf, 0x16u);
        }
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v48 count:16];
      if (v19)
      {
        v20 = *v35;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v34 + 1) + 8 * j);
            guid3 = [v22 guid];
            groupPhotoGuid2 = [v22 groupPhotoGuid];
            v25 = [groupPhotoGuid2 isEqualToString:guid2];
            v26 = IMOSLoggingEnabled();
            if (v25)
            {
              if (v26)
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v43 = guid3;
                  v44 = 2112;
                  v45 = groupPhotoGuid2;
                  _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Chat %@ already had groupPhotoGuid %@, leaving as is.", buf, 0x16u);
                }
              }
            }

            else
            {
              if (v26)
              {
                v28 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v43 = guid2;
                  v44 = 2112;
                  v45 = guid3;
                  v46 = 2112;
                  v47 = groupPhotoGuid2;
                  _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Applying groupPhotoGuid %@ to chat %@ which previously had groupPhotoGuid %@", buf, 0x20u);
                }
              }

              [v22 updateGroupPhotoGuid:guid2];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v34 objects:v48 count:16];
        }

        while (v19);
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Completed repair of group photo inconsistency.", buf, 2u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Could not determine a preferred group photo among inconsistent merged chats. Leaving inconsistency as is.", buf, 2u);
      }
    }

    necessaryCopy = v31;
  }
}

- (BOOL)_hasInconsistentJoinStateAcrossMergedChats:(id)chats
{
  v18 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  if ([chatsCopy count] >= 2)
  {
    firstObject = [chatsCopy firstObject];
    state = [firstObject state];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = chatsCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v13 + 1) + 8 * i) state] != state)
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_13:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_repairInconsistentJoinStatesAcrossMergedChatsIfNecessary:(id)necessary
{
  v45 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([(IMDChatRegistry *)self _hasInconsistentJoinStateAcrossMergedChats:?])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Join state inconsistency detected among merged chats. Attempting to repair", buf, 2u);
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = necessaryCopy;
    v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v6)
    {
      v7 = *v38;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v38 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v37 + 1) + 8 * i);
          service = [v9 service];
          supportsMutatingGroupMembers = [service supportsMutatingGroupMembers];

          if (supportsMutatingGroupMembers)
          {
            state = [v9 state];

            goto LABEL_33;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMergeBusinessSenderIndiaEnabled = [mEMORY[0x277D1A9B8] isMergeBusinessSenderIndiaEnabled];

    if (isMergeBusinessSenderIndiaEnabled)
    {
      firstObject = [v5 firstObject];
      isMergedBusinessThread = [firstObject isMergedBusinessThread];
      v16 = IMOSLoggingEnabled();
      if (isMergedBusinessThread)
      {
        if (v16)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "First Chat is a mergedBusinessThread. Setting all chats to ReadOnly.", buf, 2u);
          }
        }

        state = 4;
      }

      else
      {
        if (v16)
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Couldn't find a chat whose service supports group mutability. Setting all chats to joined.", buf, 2u);
          }
        }

        state = 3;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Couldn't find a chat whose service supports group mutability. Setting all chats to joined.", buf, 2u);
        }
      }

      state = 3;
    }

LABEL_33:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v5;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
    v23 = 0;
    if (v22)
    {
      v24 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v33 + 1) + 8 * j);
          if ([v26 state] != state)
          {
            if (IMOSLoggingEnabled())
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                guid = [v26 guid];
                *buf = 138412546;
                *v42 = guid;
                *&v42[8] = 2048;
                *&v42[10] = state;
                _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Repairing join state of %@ to %ld", buf, 0x16u);
              }
            }

            [v26 setState:state];
            v29 = +[IMDChatStore sharedInstance];
            [v29 storeChat:v26];

            ++v23;
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v22);
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v21 count];
        *buf = 67109376;
        *v42 = v23;
        *&v42[4] = 2048;
        *&v42[6] = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Repaired join state for %d of %lu chats", buf, 0x12u);
      }
    }
  }
}

- (void)setUpInitialConversationManager
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up conversation manager for imagent", buf, 2u);
    }
  }

  conversationManager = [(IMDChatRegistry *)self conversationManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6E0028;
  v5[3] = &unk_278702FF0;
  v5[4] = self;
  [conversationManager registerWithCompletionHandler:v5];
}

- (id)_activeTUConversations
{
  conversationManager = [(IMDChatRegistry *)self conversationManager];
  activeConversations = [conversationManager activeConversations];

  return activeConversations;
}

- (void)updateFaceTimeGroupName:(id)name
{
  nameCopy = name;
  v4 = [(IMDChatRegistry *)self _tuConversationForChat:?];
  if (v4)
  {
    conversationManager = [(IMDChatRegistry *)self conversationManager];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      conversationManager2 = [(IMDChatRegistry *)self conversationManager];
      displayName = [nameCopy displayName];
      [conversationManager2 updateMessagesGroupName:displayName onConversation:v4];
    }
  }
}

- (void)updateFaceTimeGroupPhoto:(id)photo
{
  v4 = [(IMDChatRegistry *)self _tuConversationForChat:photo];
  if (v4)
  {
    v8 = v4;
    conversationManager = [(IMDChatRegistry *)self conversationManager];
    v6 = objc_opt_respondsToSelector();

    v4 = v8;
    if (v6)
    {
      conversationManager2 = [(IMDChatRegistry *)self conversationManager];
      [conversationManager2 conversationUpdateMessagesGroupPhoto:v8];

      v4 = v8;
    }
  }
}

- (id)_oneToOneChatForRemoteHandle:(id)handle
{
  v35 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = MEMORY[0x277CCABB0];
      chats = [(IMDChatRegistry *)self chats];
      v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(chats, "count")}];
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Chats count: %@", buf, 0xCu);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  chats2 = [(IMDChatRegistry *)self chats];
  v9 = [chats2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = *v27;
  v12 = MEMORY[0x277D1A620];
  *&v10 = 138412546;
  v24 = v10;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(chats2);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      serviceName = [v14 serviceName];
      if ([serviceName isEqualToString:*v12])
      {
        participants = [v14 participants];
        v17 = [participants count] == 1;

        if (!v17)
        {
          continue;
        }

        v18 = MEMORY[0x277D6EEE8];
        participants2 = [v14 participants];
        firstObject = [participants2 firstObject];
        v21 = [firstObject ID];
        serviceName = [v18 normalizedHandleWithDestinationID:v21];

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = v24;
            v31 = serviceName;
            v32 = 2112;
            v33 = handleCopy;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "chat handle %@ vs conversation handle %@", buf, 0x16u);
          }
        }

        if (TUHandlesAreCanonicallyEqual())
        {
          v9 = v14;

          goto LABEL_22;
        }
      }
    }

    v9 = [chats2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_22:

  return v9;
}

- (id)_chatForTUGroupID:(id)d participants:(id)participants
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  participantsCopy = participants;
  v8 = [(IMDChatRegistry *)self existingChatsWithGroupID:dCopy];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_22B4D7850;
  v29 = sub_22B4D7990;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6E0B84;
  v24[3] = &unk_2787064F8;
  v24[4] = &v25;
  [v8 enumerateObjectsUsingBlock:v24];
  participants = [v26[5] participants];
  if (v26[5] && (v10 = [participantsCopy count], v10 == objc_msgSend(participants, "count")))
  {
    v11 = MEMORY[0x277CBEB58];
    v12 = [participants __imArrayByApplyingBlock:&unk_283F1B3E8];
    v13 = [v11 setWithArray:v12];

    v14 = [participantsCopy __imSetByApplyingBlock:&unk_283F1B408];
    [v13 minusSet:v14];
    if ([v13 count])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v32 = participants;
          v33 = 2112;
          v34 = participantsCopy;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v13;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "different handles: (%@)", buf, 0xCu);
        }
      }

      v17 = v26[5];
      v26[5] = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [v26[5] chatIdentifier];
        groupID = [v26[5] groupID];
        *buf = 138412802;
        v32 = chatIdentifier;
        v33 = 2112;
        v34 = dCopy;
        v35 = 2112;
        v36 = groupID;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "We mapped a chat %@ to a TUConversation with messagesGroupUUID %@ for chat groupID %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v32 = participants;
        v33 = 2112;
        v34 = participantsCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) count did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
      }
    }

    v13 = v26[5];
    v26[5] = 0;
  }

  v22 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v22;
}

- (id)_chatForTUConversation:(id)conversation
{
  v21 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  messagesGroupUUID = [conversationCopy messagesGroupUUID];

  if (messagesGroupUUID)
  {
    messagesGroupUUID2 = [conversationCopy messagesGroupUUID];
    uUIDString = [messagesGroupUUID2 UUIDString];
    __im_filteredRemoteMembers = [conversationCopy __im_filteredRemoteMembers];
    v9 = [(IMDChatRegistry *)self _chatForTUGroupID:uUIDString participants:__im_filteredRemoteMembers];

    goto LABEL_13;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isAVLessSharePlayEnabled = [mEMORY[0x277D1A9B8] isAVLessSharePlayEnabled];

  if (!isAVLessSharePlayEnabled)
  {
    goto LABEL_12;
  }

  remoteMembers = [conversationCopy remoteMembers];
  if ([remoteMembers count] != 1)
  {

    goto LABEL_12;
  }

  avMode = [conversationCopy avMode];

  if (avMode)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = conversationCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Attempting to map 1x1 chat for conversation: %@", &v19, 0xCu);
    }
  }

  remoteMembers2 = [conversationCopy remoteMembers];
  anyObject = [remoteMembers2 anyObject];
  handle = [anyObject handle];
  v9 = [(IMDChatRegistry *)self _oneToOneChatForRemoteHandle:handle];

LABEL_13:

  return v9;
}

- (id)_tuConversationForChat:(id)chat
{
  v41 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_22B4D7850;
  v33 = sub_22B4D7990;
  v34 = 0;
  _activeTUConversations = [(IMDChatRegistry *)self _activeTUConversations];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_22B6E131C;
  v26 = &unk_278708800;
  v6 = chatCopy;
  v27 = v6;
  v28 = &v29;
  [_activeTUConversations enumerateObjectsUsingBlock:&v23];

  remoteMembers = [v30[5] remoteMembers];
  participants = [v6 participants];
  v9 = [remoteMembers count];
  if (v9 == [participants count])
  {
    v10 = MEMORY[0x277CBEB58];
    v11 = [participants __imArrayByApplyingBlock:&unk_283F1B428];
    v12 = [v10 setWithArray:v11];

    v13 = [remoteMembers __imSetByApplyingBlock:&unk_283F1B448];
    [v12 minusSet:v13];
    if ([v12 count])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v36 = participants;
          v37 = 2112;
          v38 = remoteMembers;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
        }
      }

      v15 = v30[5];
      v30[5] = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [v6 chatIdentifier];
        messagesGroupUUID = [v30[5] messagesGroupUUID];
        groupID = [v6 groupID];
        *buf = 138412802;
        v36 = chatIdentifier;
        v37 = 2112;
        v38 = messagesGroupUUID;
        v39 = 2112;
        v40 = groupID;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "We mapped a chat %@ to a TUConversation with messagesGroupUUID %@ for chat groupID %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = participants;
        v37 = 2112;
        v38 = remoteMembers;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) count did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
      }
    }

    v12 = v30[5];
    v30[5] = 0;
  }

  v21 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v21;
}

- (id)_initiatorForConversation:(id)conversation chat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  chatCopy = chat;
  if ([conversationCopy isLocallyCreated])
  {
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    if (!lastAddressedLocalHandle)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not able to find lastAddressedLocalHandle, falling back to account's loginID", &v17, 2u);
        }
      }

      account = [chatCopy account];
      loginID = [account loginID];
      lastAddressedLocalHandle = [loginID _stripFZIDPrefix];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      anyObject2 = [conversationCopy performSelector:sel_initiator];
    }

    else
    {
      remoteMembers = [conversationCopy remoteMembers];
      anyObject = [remoteMembers anyObject];

      handles = [anyObject handles];
      anyObject2 = [handles anyObject];
    }

    lastAddressedLocalHandle = [anyObject2 value];
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = lastAddressedLocalHandle;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Conversation initiator handle value %@", &v17, 0xCu);
    }
  }

  return lastAddressedLocalHandle;
}

- (id)_conversationItemForChat:(id)chat conversation:(id)conversation
{
  v44 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  conversationCopy = conversation;
  v7 = [IMDChatRegistry _initiatorForConversation:"_initiatorForConversation:chat:" chat:?];
  if (v7)
  {
    uUID = [conversationCopy UUID];
    uUIDString = [uUID UUIDString];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v41 = uUIDString;
        v42 = 2112;
        v43 = conversationCopy;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "TUConversation UUID %@ for conversation %@", buf, 0x16u);
      }
    }

    v10 = objc_alloc(MEMORY[0x277D1AC80]);
    v38 = *MEMORY[0x277D193A8];
    v39 = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    account = [chatCopy account];
    loginID = [account loginID];
    account2 = [chatCopy account];
    loginID2 = [account2 loginID];
    serviceName = [chatCopy serviceName];
    roomName = [chatCopy roomName];
    v18 = [v10 initWithSenderInfo:v11 time:0 guid:uUIDString messageID:0 account:loginID accountID:loginID2 service:serviceName handle:v7 roomName:roomName unformattedID:0 countryCode:0 type:6];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    participants = [chatCopy participants];
    v20 = [participants countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v20)
    {
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(participants);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          v24 = [v23 ID];
          v25 = [v24 isEqualToString:v7];

          if (v25)
          {
            unformattedID = [v23 unformattedID];
            [v18 setUnformattedID:unformattedID];

            countryCode = [v23 countryCode];
            [v18 setCountryCode:countryCode];
          }
        }

        v20 = [participants countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }

    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    [v18 setDestinationCallerID:lastAddressedLocalHandle];

    if ([conversationCopy isLocallyCreated])
    {
      [v18 setFlags:4];
    }

    [v18 setAvMode:{objc_msgSend(conversationCopy, "avMode")}];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v41 = chatCopy;
        v42 = 2112;
        v43 = conversationCopy;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Not creating IMTUConversationItem - likely a nil lastAddressedHandle on chat: %@ or nil handles in conversation: %@", buf, 0x16u);
      }
    }

    v18 = 0;
  }

  return v18;
}

- (void)conversationManager:(id)manager conversation:(id)conversation addedMembersLocally:(id)locally
{
  v43 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  conversationCopy = conversation;
  locallyCopy = locally;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = conversationCopy;
      v41 = 2112;
      v42 = locallyCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Callback for addedMembersLocally conversation: %@ member: %@", buf, 0x16u);
    }
  }

  __im_filteredRemoteMembers = [conversationCopy __im_filteredRemoteMembers];
  v11 = [__im_filteredRemoteMembers mutableCopy];

  [v11 minusSet:locallyCopy];
  __im_filteredRemoteMembers2 = [conversationCopy __im_filteredRemoteMembers];
  v13 = [__im_filteredRemoteMembers2 mutableCopy];

  [v13 minusSet:v11];
  v14 = [v13 count] == 0;
  v15 = IMOSLoggingEnabled();
  if (!v14)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v13;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Proceeding with addedMembers: %@", buf, 0xCu);
      }
    }

    groupUUID = [conversationCopy groupUUID];
    uUIDString = [groupUUID UUIDString];
    v19 = [v34 _chatForTUGroupID:uUIDString participants:v11];

    if (!v19)
    {
      if ([v11 count] != 1 || objc_msgSend(conversationCopy, "avMode") || (objc_msgSend(v11, "anyObject"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "handle"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "_oneToOneChatForRemoteHandle:", v32), v19 = objc_claimAutoreleasedReturnValue(), v32, v31, !v19))
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D9A0C(conversationCopy, v20);
        }

        v19 = 0;
      }
    }

    if ([v19 style] == 43)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v19;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Found chat to potentially add members to: %@", buf, 0xCu);
        }
      }

      v22 = +[IMDAccountController sharedInstance];
      v23 = [v22 anySessionForServiceName:*MEMORY[0x277D1A620]];

      if (!v23)
      {
        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D9B34();
        }

        goto LABEL_36;
      }

      v24 = [v13 __imSetByApplyingBlock:&unk_283F1B468];
      allObjects = [v24 allObjects];

      if ([allObjects count])
      {
        v26 = MEMORY[0x277D1AA00];
        v27 = *MEMORY[0x277D186B0];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = sub_22B6E2158;
        v36[3] = &unk_278705DB8;
        v37 = v23;
        v38 = v19;
        [v26 refreshIDStatusForDestinations:allObjects service:v27 listenerID:@"IMDChatRegistry_CallManagement" queue:MEMORY[0x277D85CD0] completionBlock:v36];
      }
    }

    if ([v19 style] != 45)
    {
LABEL_37:

      goto LABEL_38;
    }

    v28 = [v34 _upgradeChatToGroupChat:v19 forConversation:conversationCopy];
    if (!v28)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9AC0();
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (v15)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not processing addedMembersLocally since, after filtering, we don't have anyone to add.", buf, 2u);
    }
  }

LABEL_38:
}

- (id)_upgradeChatToGroupChat:(id)chat forConversation:(id)conversation
{
  chatCopy = chat;
  conversationCopy = conversation;
  if ([chatCopy style] == 45)
  {
    v8 = +[IMDAccountController sharedInstance];
    v9 = [v8 anySessionForServiceName:*MEMORY[0x277D1A620]];

    if (v9)
    {
      v10 = [(IMDChatRegistry *)self _findExistingGroupChatForConversation:conversationCopy onSession:v9];
      if (v10)
      {
        goto LABEL_9;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Couldn't find chat, trying to create a new one!", buf, 2u);
        }
      }

      v10 = [(IMDChatRegistry *)self _createGroupChatForConversation:conversationCopy onSession:v9];
      if (v10)
      {
LABEL_9:
        v12 = v10;
        guid = [v10 guid];
        chatIdentifier = [v12 chatIdentifier];
        -[NSObject invitePersonInfo:withMessage:toChatID:identifier:style:](v9, "invitePersonInfo:withMessage:toChatID:identifier:style:", &unk_283F4EF60, 0, guid, chatIdentifier, [v12 style]);

        conversationManager = [(IMDChatRegistry *)self conversationManager];
        LOBYTE(chatIdentifier) = objc_opt_respondsToSelector();

        if ((chatIdentifier & 1) == 0)
        {
          goto LABEL_22;
        }

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v20 = 0;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Indicating to TU that we are now mapped to a messages group.", v20, 2u);
          }
        }

        conversationManager2 = [(IMDChatRegistry *)self conversationManager];
        uUID = [conversationCopy UUID];
        [conversationManager2 registerMessagesGroupUUIDForConversationUUID:uUID];

        goto LABEL_21;
      }

      conversationManager2 = IMLogHandleForCategory();
      if (os_log_type_enabled(conversationManager2, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9C00();
      }
    }

    else
    {
      conversationManager2 = IMLogHandleForCategory();
      if (os_log_type_enabled(conversationManager2, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9B34();
      }
    }

    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D9B74(chatCopy, v9);
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)_findExistingGroupChatForConversation:(id)conversation onSession:(id)session
{
  v29[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  conversationCopy = conversation;
  __im_filteredRemoteMembers = [conversationCopy __im_filteredRemoteMembers];
  v9 = [__im_filteredRemoteMembers __imSetByApplyingBlock:&unk_283F1B488];
  allObjects = [v9 allObjects];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  firstObject = [allObjects firstObject];
  initiator = [conversationCopy initiator];
  normalizedValue = [initiator normalizedValue];
  groupUUID = [conversationCopy groupUUID];
  v17 = groupUUID;
  if (isOneChatEnabled)
  {
    uUIDString = [groupUUID UUIDString];
    groupUUID2 = [conversationCopy groupUUID];

    uUIDString2 = [groupUUID2 UUIDString];
    v29[0] = uUIDString2;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    service = [sessionCopy service];

    internalName = [service internalName];
    v22 = [(IMDChatRegistry *)self bestCandidateGroupChatWithFromIdentifier:firstObject toIdentifier:normalizedValue displayName:0 participants:allObjects updatingToLatestiMessageGroupID:uUIDString sortedIdentifiers:v19 serviceName:internalName];
  }

  else
  {

    uUIDString3 = [v17 UUIDString];
    service2 = [sessionCopy service];

    internalName2 = [service2 internalName];
    v22 = [(IMDChatRegistry *)self bestCandidateGroupChatWithFromIdentifier:firstObject toIdentifier:normalizedValue displayName:0 participants:allObjects groupID:uUIDString3 serviceName:internalName2];
  }

  return v22;
}

- (id)_createGroupChatForConversation:(id)conversation onSession:(id)session
{
  selfCopy = self;
  v38 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  sessionCopy = session;
  account = [sessionCopy account];
  v25 = [(IMDChatRegistry *)selfCopy generateUnusedChatIdentifierForGroupChatWithAccount:account];

  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [conversationCopy __im_filteredRemoteMembers];
  v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v30 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        if ([v8 isLightweightMember])
        {
          if (IMOSLoggingEnabled())
          {
            v9 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v8;
              _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "This is a lightweight member - skipping: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v10 = [IMDHandle alloc];
          handle = [v8 handle];
          normalizedValue = [handle normalizedValue];
          handle2 = [v8 handle];
          value = [handle2 value];
          handle3 = [v8 handle];
          isoCountryCode = [handle3 isoCountryCode];
          v17 = [(IMDHandle *)v10 initWithID:normalizedValue unformattedID:value countryCode:isoCountryCode];
          handleInfo = [(IMDHandle *)v17 handleInfo];

          [array addObject:handleInfo];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  groupUUID = [conversationCopy groupUUID];
  uUIDString = [groupUUID UUIDString];
  [sessionCopy didJoinChat:v25 style:43 displayName:0 groupID:uUIDString handleInfo:array];

  account2 = [sessionCopy account];
  v22 = [(IMDChatRegistry *)selfCopy existingChatWithIdentifier:v25 account:account2];

  return v22;
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries
{
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  v4 = sub_22B7DB588();
  selfCopy = self;
  sub_22B704F28(v4);

  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority
{
  v4 = sub_22B7DB918();
  selfCopy = self;
  sub_22B736F34(v4);

  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
}

@end