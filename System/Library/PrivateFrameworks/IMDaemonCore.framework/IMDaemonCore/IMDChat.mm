@interface IMDChat
+ (BOOL)identifier:(id)identifier equalsIdentifier:(id)equalsIdentifier;
+ (IMDChat)chatWithSyncData:(id)data;
- (BOOL)_addGroupPhotoToCKRecord:(id)record error:(id *)error;
- (BOOL)_addTranscriptBackgroundToCKRecord:(id)record error:(id *)error;
- (BOOL)_applyTranscriptBackgroundChangesUsingSyncData:(id)data;
- (BOOL)_convergesParticipantsForReplicationService:(id)service;
- (BOOL)_resetParticipants:(id)participants;
- (BOOL)applyChangesUsingSyncData:(id)data;
- (BOOL)applyChatServiceChangesUsingSyncData:(id)data;
- (BOOL)applyDomainIdentifierChangesUsingSyncData:(id)data;
- (BOOL)applySyncChatSliceChangesUsingSyncData:(id)data;
- (BOOL)chatRepairController:(id)controller chatExistsWithGUID:(id)d;
- (BOOL)chatRepairController:(id)controller repairChatIdentifierWithIdentifier:(id)identifier onChat:(id)chat;
- (BOOL)chatRepairController:(id)controller repairGUIDWithGUID:(id)d onChat:(id)chat;
- (BOOL)chatRepairController:(id)controller repairParticipantWithIdentifier:(id)identifier onService:(id)service onChat:(id)chat;
- (BOOL)containsActiveBIASession;
- (BOOL)deleteBIAContext;
- (BOOL)hasChatBotBrandInfo;
- (BOOL)hasChatBotPersistentMenu;
- (BOOL)hasHadSuccessfulQuery;
- (BOOL)hasMatchingParticipantHandles:(id)handles;
- (BOOL)hasScheduledMessage;
- (BOOL)isArchived;
- (BOOL)isAutomaticallyTranslating;
- (BOOL)isBlackholed;
- (BOOL)isBusinessChat;
- (BOOL)isChatBot;
- (BOOL)isDeletingIncomingMessages;
- (BOOL)isDownloadingPendingSatelliteMessages;
- (BOOL)isEmergencyChat;
- (BOOL)isMergedBusinessThread;
- (BOOL)isOscarChat;
- (BOOL)isPlaceholder;
- (BOOL)isRecovered;
- (BOOL)isSMS;
- (BOOL)isSMSSpam;
- (BOOL)isStewieChat;
- (BOOL)isStewieEmergencyChat;
- (BOOL)isStewieRoadsideChat;
- (BOOL)isStewieSharingChat;
- (BOOL)isUnnamedChat;
- (BOOL)isiMessageSpam;
- (BOOL)lastKnownHybridState;
- (BOOL)receivedBlackholeError;
- (BOOL)removeParticipant:(id)participant;
- (BOOL)removeParticipants:(id)participants;
- (BOOL)setAutoDonationBehavior:(int64_t)behavior lastModificationDate:(id)date;
- (BOOL)supportsEncryption;
- (BOOL)supportsMergingFilteredThreads;
- (BOOL)updateDonationStateWithSyndicationAction:(id)action;
- (BOOL)updateProperties:(id)properties;
- (BOOL)updateProperties:(id)properties shouldBroadcast:(BOOL)broadcast;
- (IMDAccount)account;
- (IMDChat)initWithAccountID:(id)d service:(id)service guid:(id)guid groupID:(id)iD chatIdentifier:(id)identifier participants:(id)participants roomName:(id)name displayName:(id)self0 lastAddressedLocalHandle:(id)self1 lastAddressedSIMID:(id)self2 properties:(id)self3 state:(int64_t)self4 style:(unsigned __int8)self5 isFiltered:(int64_t)self6 hasHadSuccessfulQuery:(BOOL)self7 engramID:(id)self8 serverChangeToken:(id)self9 cloudKitSyncState:(int64_t)syncState originalGroupID:(id)groupID lastReadMessageTimeStamp:(int64_t)stamp lastMessageTimeStampOnLoad:(int64_t)load cloudKitRecordID:(id)recordID isBlackholed:(BOOL)blackholed autoDonationBehavior:(int64_t)behavior autoDonationBehaviorLastModificationDate:(id)date isRecovered:(BOOL)recovered isDeletingIncomingMessages:(BOOL)messages domainIdentifiers:(id)d0;
- (IMDService)service;
- (IMDServiceSession)serviceSession;
- (IMDaemonListenerChatProtocol)broadcaster;
- (IMMessageItem)lastMessage;
- (IMSharedEmergencyInfo)emergencyUserInfo;
- (NSArray)participants;
- (NSArray)replySuggestions;
- (NSDate)autoDonationBehaviorLastModificationDate;
- (NSDate)lastScheduledMessageCreatedDate;
- (NSDate)lastTUConversationCreatedDate;
- (NSDate)requestedDowngradeExpirationDate;
- (NSDictionary)chatProperties;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)domainIdentifiers;
- (NSDictionary)keyTransparencyURIToUUIDMapping;
- (NSDictionary)properties;
- (NSDictionary)syncedProperties;
- (NSString)accountID;
- (NSString)businessName;
- (NSString)chatIdentifier;
- (NSString)description;
- (NSString)deviceIndependentID;
- (NSString)displayName;
- (NSString)engramID;
- (NSString)groupID;
- (NSString)guid;
- (NSString)incomingTranslatedMessageIdentifier;
- (NSString)lastAddressedLocalHandle;
- (NSString)lastAddressedSIMID;
- (NSString)lastSeenMessageGuid;
- (NSString)originalGroupID;
- (NSString)personCentricID;
- (NSString)pinningIdentifier;
- (NSString)requestedDowngradeService;
- (NSString)roomName;
- (NSString)serverChangeToken;
- (NSString)serviceName;
- (NSString)translationLanguageIdentifier;
- (NSString)userTranslationLanguageIdentifier;
- (id)BIAContext;
- (id)_ckUniqueID;
- (id)_copyCKRecordFromExistingCKMetadataWithZoneID:(id)d salt:(id)salt;
- (id)_findChatParticipantsWithFromID:(id)d;
- (id)_mergeParticipantIDs;
- (id)_sortedParticipantIDHashForParticipants:(id)participants usesPersonCentricID:(BOOL)d;
- (id)associatedBusinessID;
- (id)brandInfo;
- (id)brandLogoData;
- (id)chatRepairController:(id)controller generateUnusedChatIdentifierForGroupChatWithAccount:(id)account;
- (id)cloudKitChatIDForServiceName:(id)name;
- (id)cloudKitDebugDescription;
- (id)compressedProtobufDataForChatProto1;
- (id)copyCKRecordRepresentationWithZoneID:(id)d salt:(id)salt error:(id *)error;
- (id)copyCKRecordRepresentationsWithZoneID:(id)d salt:(id)salt error:(id *)error;
- (id)copyDictionaryRepresentation:(BOOL)representation;
- (id)dictionaryRepresentationIncludingLastMessage;
- (id)generateNewGroupID;
- (id)groupPhotoGuid;
- (id)groupPhotoUploadFailureCount;
- (id)identifiersForDomain:(id)domain;
- (id)lastSentMessageDate;
- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)code;
- (id)lastUsedBIAReferenceID;
- (id)lastUsedBIAUserID;
- (id)latestIdentifierForDomain:(id)domain;
- (id)participantHandles;
- (id)transcriptBackgroundPath;
- (id)transcriptBackgroundProperties;
- (int)emergencyTranscriptSharingState;
- (int)getNumberOfTimesRespondedToThread;
- (int)messageHandshakeState;
- (int)smsHandshakeState;
- (int64_t)autoDonationBehavior;
- (int64_t)cloudKitSyncState;
- (int64_t)compareBySequenceNumberAndDateDescending:(id)descending;
- (int64_t)engroupCreationDate;
- (int64_t)groupParticipantVersion;
- (int64_t)isFiltered;
- (int64_t)lastMessageTimeStampOnLoad;
- (int64_t)lastReadMessageTimeStamp;
- (int64_t)pendingIncomingSatelliteMessageCount;
- (int64_t)rowID;
- (int64_t)spamCategory;
- (int64_t)spamDetectionSource;
- (int64_t)state;
- (unint64_t)_unreadCount;
- (unint64_t)powerLogConversationType;
- (unint64_t)repairHistory;
- (unint64_t)unreadCount;
- (unsigned)style;
- (void)_convergeGroupChatIfNeededWithServiceSession:(id)session account:(id)account replicationService:(id)service groupID:(id)d incomingParticipants:(id)participants fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier receivedGroupParticipantVersion:(id)self0 receivedGroupProtocolVersion:(id)self1 messageTimeStamp:(id)self2 groupPhotoCreationTime:(id)self3;
- (void)_incrementParticipantVersion;
- (void)_indexChatAndMessagesToSpotlightWithReason:(int64_t)reason;
- (void)_modifyGroupWithServiceSession:(id)session groupID:(id)d toParticipants:(id)participants toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier account:(id)account messageTimeStamp:(id)stamp;
- (void)_persistMergedIDMergedChatsIfNeeded:(id)needed;
- (void)_repairChatIfNeeded;
- (void)_repairMissingServiceName;
- (void)_setAutoDonationBehavior:(int64_t)behavior lastModificationDate:(id)date setDirtyFlag:(BOOL)flag;
- (void)_setParticipantVersion:(int64_t)version;
- (void)_setRowID:(int64_t)d;
- (void)_setUnreadCount:(unint64_t)count;
- (void)_submitAndOpenTapToRadarForHistoricalIdentifierReuseForIdentifier:(id)identifier domain:(id)domain;
- (void)_submitAndOpenTapToRadarForInvalidFeatureFlagConfiguration;
- (void)_submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:(id)service;
- (void)_submitAndOpenTapToRadarForMissingLatestIdentifierForDomain:(id)domain;
- (void)_updateCachedParticipants;
- (void)_updateIsRecovered:(BOOL)recovered silently:(BOOL)silently;
- (void)_updateLastMessage:(id)message;
- (void)addBIAContextWithUserID:(id)d referenceID:(id)iD;
- (void)addParticipant:(id)participant;
- (void)addParticipants:(id)participants;
- (void)assignIdentifier:(id)identifier forDomain:(id)domain isHistoricalIdentifier:(BOOL)historicalIdentifier;
- (void)assignUniqueHistoricalDomainIdentifiers:(id)identifiers;
- (void)broadcastTranscriptBackgroundChanges;
- (void)dealloc;
- (void)forceAutoBugCaptureForMissingGroupIDWithMessage:(id)message;
- (void)meCardHasUpdated;
- (void)recoverParticipantsIfNeeded;
- (void)resetCKSyncState;
- (void)setAccountID:(id)d;
- (void)setChatIdentifier:(id)identifier;
- (void)setCloudKitSyncState:(int64_t)state;
- (void)setDeletingIncomingMessages:(BOOL)messages;
- (void)setDisplayName:(id)name;
- (void)setDomainIdentifiers:(id)identifiers;
- (void)setEmergencyUserInfo:(id)info;
- (void)setEngramID:(id)d;
- (void)setGroupID:(id)d;
- (void)setGroupParticipantVersion:(int64_t)version;
- (void)setGuid:(id)guid;
- (void)setHasHadSuccessfulQuery:(BOOL)query;
- (void)setHasScheduledMessage:(BOOL)message;
- (void)setIncomingTranslatedMessageIdentifier:(id)identifier;
- (void)setInitialGroupID:(id)d;
- (void)setInitialOriginalGroupID:(id)d;
- (void)setIsBlackholed:(BOOL)blackholed;
- (void)setIsDownloadingPendingSatelliteMessages:(BOOL)messages;
- (void)setIsFiltered:(int64_t)filtered;
- (void)setLastAddressedLocalHandle:(id)handle;
- (void)setLastAddressedSIMID:(id)d;
- (void)setLastMessage:(id)message;
- (void)setLastMessageTimeStampOnLoad:(int64_t)load;
- (void)setLastReadMessageTimeStamp:(int64_t)stamp;
- (void)setLastScheduledMessageCreatedDate:(id)date;
- (void)setLastSentMessageDate:(id)date;
- (void)setLastTUConversationCreatedDate:(id)date;
- (void)setMergedBusinessThread:(BOOL)thread;
- (void)setOriginalGroupID:(id)d;
- (void)setParticipants:(id)participants;
- (void)setPendingIncomingSatelliteMessageCount:(int64_t)count;
- (void)setProperties:(id)properties;
- (void)setRecovered:(BOOL)recovered;
- (void)setRepairHistory:(unint64_t)history;
- (void)setReplySuggestions:(id)suggestions;
- (void)setRequestedDowngradeExpirationDate:(id)date;
- (void)setRequestedDowngradeService:(id)service;
- (void)setRoomName:(id)name;
- (void)setServerChangeToken:(id)token;
- (void)setServiceName:(id)name;
- (void)setSpamDetectionSource:(int64_t)source;
- (void)setState:(int64_t)state;
- (void)setStyle:(unsigned __int8)style;
- (void)setSupportsEncryption:(BOOL)encryption;
- (void)shouldSatelliteRelayIncomingSMSMessagesWithCompletion:(id)completion;
- (void)storeAndBroadcastChatChanges;
- (void)tearDownToneNotificationSessionIfNeeded;
- (void)unassignAndPersistIdentifier:(id)identifier forDomain:(id)domain;
- (void)updateAssociatedBusinessID:(id)d;
- (void)updateBrandLogo:(id)logo transferGuid:(id)guid;
- (void)updateCloudKitRecordID:(id)d;
- (void)updateCloudKitSyncState:(int64_t)state;
- (void)updateCollaborationMetadata:(id)metadata forMessageGUID:(id)d;
- (void)updateDisplayName:(id)name sender:(id)sender;
- (void)updateEmergencyTranscriptSharingStateChatProperty:(int)property;
- (void)updateEngramID:(id)d;
- (void)updateEngroupCreationDate:(int64_t)date;
- (void)updateGroupPhotoGuid:(id)guid;
- (void)updateGroupPhotoUploadFailureCount:(id)count;
- (void)updateHasCancellableScheduledMessage:(BOOL)message;
- (void)updateHasHadSuccessfulQuery:(BOOL)query;
- (void)updateIsBlackholed:(BOOL)blackholed;
- (void)updateIsDeletingIncomingMessages:(BOOL)messages;
- (void)updateIsDownloadingPendingSatelliteMessages:(BOOL)messages;
- (void)updateIsEmergencyChat:(BOOL)chat;
- (void)updateIsFiltered:(int64_t)filtered fromContact:(BOOL)contact;
- (void)updateIsiMessageSpam:(BOOL)spam;
- (void)updateLastAddressedHandle:(id)handle forceUpdate:(BOOL)update;
- (void)updateLastAddressedHandle:(id)handle forceUpdateHandle:(BOOL)updateHandle lastAddressedSIMID:(id)d;
- (void)updateLastAddressedSIMID:(id)d;
- (void)updateLastKnownHybridStateAndRemergeIfAppropriate:(BOOL)appropriate;
- (void)updateLastMessageGUID:(id)d forLanguageCode:(id)code;
- (void)updateLastReadMessageTimeStampIfNeeded:(int64_t)needed;
- (void)updateLastSeenMessageGuidIfNeeded:(id)needed;
- (void)updateMessageHandshakeState:(int)state;
- (void)updateNicknamesForParticipants:(id)participants;
- (void)updateNumberOfTimesRespondedToThread;
- (void)updateOriginalGroupID:(id)d;
- (void)updatePendingIncomingSatelliteMessageCount:(int64_t)count;
- (void)updateReceivedBlackholeError:(BOOL)error;
- (void)updateRepairHistoryOfChat:(id)chat withRepairHistory:(unint64_t)history;
- (void)updateSMSCategory:(int64_t)category subCategory:(int64_t)subCategory;
- (void)updateSMSHandshakeState:(int)state;
- (void)updateSMSSpamExtensionNameChatProperty:(id)property;
- (void)updateServerChangeToken:(id)token;
- (void)updateShouldForceToSMS:(BOOL)s;
- (void)updateTimeSensitiveExpirationDateForReadIfNeeded;
- (void)updateTimeSensitiveExpirationDateWithMessageTime:(id)time hasOneTimeCode:(BOOL)code;
- (void)updateTranscriptBackgroundProperties:(id)properties;
@end

@implementation IMDChat

- (BOOL)isBlackholed
{
  [(NSRecursiveLock *)self->_lock lock];
  isBlackholed = self->_isBlackholed;
  [(NSRecursiveLock *)self->_lock unlock];
  return isBlackholed;
}

- (NSString)guid
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_guid copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)serviceName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_serviceName copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (unsigned)style
{
  [(NSRecursiveLock *)self->_lock lock];
  style = self->_style;
  [(NSRecursiveLock *)self->_lock unlock];
  return style;
}

- (NSString)chatIdentifier
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_chatIdentifier copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSDate)lastScheduledMessageCreatedDate
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"lastScheduledMessageCreatedDate"];

  return v3;
}

- (IMMessageItem)lastMessage
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_lastMessage;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSDictionary)properties
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_properties;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)pinningIdentifier
{
  if ([(IMDChat *)self isGroupChat]&& [(IMDChat *)self isSMS])
  {
    participants = [(IMDChat *)self participants];
    deviceIndependentID = [(IMDChat *)self _sortedParticipantIDHashForParticipants:participants usesPersonCentricID:0];
  }

  else
  {
    deviceIndependentID = [(IMDChat *)self deviceIndependentID];
  }

  return deviceIndependentID;
}

- (BOOL)isSMS
{
  serviceName = [(IMDChat *)self serviceName];
  v3 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];

  return v3;
}

- (NSString)deviceIndependentID
{
  if ([(IMDChat *)self isGroupChat])
  {
    [(IMDChat *)self groupID];
  }

  else
  {
    [(IMDChat *)self persistentID];
  }
  v3 = ;

  return v3;
}

- (NSString)groupID
{
  v13 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v5 = [(IMDChat *)self latestIdentifierForDomain:*MEMORY[0x277D19780]];
    v6 = [v5 copy];

    if (v6)
    {
      goto LABEL_12;
    }

    groupID = self->_groupID;
    if (!groupID)
    {
      goto LABEL_9;
    }

    if (self->_style == 43)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = self->_groupID;
          v11 = 138412290;
          v12 = v9;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Severe Error Detected! Group Chat is missing latest identifier in iMessageGroupID domain, but groupID is non-nil: %@. Please file a radar!", &v11, 0xCu);
        }
      }

LABEL_9:
      v6 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    groupID = self->_groupID;
  }

  v6 = [(NSString *)groupID copy];
LABEL_12:
  [(NSRecursiveLock *)self->_lock unlock];

  return v6;
}

- (NSArray)participants
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSArray *)self->_participants copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)lastMessageTimeStampOnLoad
{
  [(NSRecursiveLock *)self->_lock lock];
  lastMessageTimeStampOnLoad = self->_lastMessageTimeStampOnLoad;
  [(NSRecursiveLock *)self->_lock unlock];
  return lastMessageTimeStampOnLoad;
}

- (unint64_t)unreadCount
{
  v11[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    guid = [(IMDChat *)self guid];
    if ([guid length])
    {
      v6 = +[IMDMessageStore sharedInstance];
      unreadCountController = [v6 unreadCountController];
      v11[0] = guid;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v9 = [unreadCountController unreadCountForChatsWithGUIDs:v8];
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel__unreadCount);
  }
}

- (NSString)originalGroupID
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_originalGroupID copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)accountID
{
  v21 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  accountID = self->_accountID;
  [(NSRecursiveLock *)self->_lock unlock];
  if (accountID)
  {
    accountID2 = self->_accountID;
  }

  else
  {
    serviceName = [(IMDChat *)self serviceName];

    if (serviceName && (+[IMDServiceController sharedController](IMDServiceController, "sharedController"), v6 = objc_claimAutoreleasedReturnValue(), -[IMDChat serviceName](self, "serviceName"), v7 = objc_claimAutoreleasedReturnValue(), [v6 serviceWithName:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
    {
      v9 = +[IMDAccountController sharedAccountController];
      v10 = [v9 accountsForService:v8];
      __imFirstObject = [v10 __imFirstObject];

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          guid = [(IMDChat *)self guid];
          v17 = 138412546;
          v18 = guid;
          v19 = 2112;
          v20 = __imFirstObject;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Reassociating chat: %@  to account: %@", &v17, 0x16u);
        }
      }

      accountID = [__imFirstObject accountID];
      [(IMDChat *)self setAccountID:accountID];

      internalName = [v8 internalName];
      [(IMDChat *)self setServiceName:internalName];

      accountID2 = [__imFirstObject accountID];
    }

    else
    {
      accountID2 = 0;
    }
  }

  return accountID2;
}

- (NSString)personCentricID
{
  if ([(IMDChat *)self style]== 43)
  {
    groupID = [(IMDChat *)self groupID];
  }

  else
  {
    groupID = 0;
  }

  v3 = MEMORY[0x277D1A918];
  guid = [(IMDChat *)self guid];
  chatIdentifier = [(IMDChat *)self chatIdentifier];
  style = [(IMDChat *)self style];
  displayName = [(IMDChat *)self displayName];
  lastKnownHybridState = [(IMDChat *)self lastKnownHybridState];
  account = [(IMDChat *)self account];
  service = [account service];
  groupsMergeDisplayNames = [service groupsMergeDisplayNames];
  _mergeParticipantIDs = [(IMDChat *)self _mergeParticipantIDs];
  LOBYTE(v15) = groupsMergeDisplayNames;
  v13 = [v3 personCentricIDForChatWithGUID:guid chatIdentifier:chatIdentifier chatStyle:style groupID:groupID displayName:displayName lastKnownToBeHybrid:lastKnownHybridState mergeDisplayNames:v15 participantIDs:_mergeParticipantIDs];

  return v13;
}

- (NSString)displayName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_displayName copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)lastKnownHybridState
{
  properties = [(IMDChat *)self properties];
  v3 = [properties valueForKey:*MEMORY[0x277D19880]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (IMDAccount)account
{
  v22 = *MEMORY[0x277D85DE8];
  accountID = [(IMDChat *)self accountID];

  if (!accountID || (+[IMDAccountController sharedAccountController](IMDAccountController, "sharedAccountController"), v4 = objc_claimAutoreleasedReturnValue(), -[IMDChat accountID](self, "accountID"), v5 = objc_claimAutoreleasedReturnValue(), [v4 accountForAccountID:v5], __imFirstObject = objc_claimAutoreleasedReturnValue(), v5, v4, !__imFirstObject))
  {
    serviceName = [(IMDChat *)self serviceName];

    if (serviceName && (+[IMDServiceController sharedController](IMDServiceController, "sharedController"), v8 = objc_claimAutoreleasedReturnValue(), -[IMDChat serviceName](self, "serviceName"), v9 = objc_claimAutoreleasedReturnValue(), [v8 serviceWithName:v9], v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v10))
    {
      v11 = +[IMDAccountController sharedAccountController];
      v12 = [v11 accountsForService:v10];
      __imFirstObject = [v12 __imFirstObject];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          guid = [(IMDChat *)self guid];
          v18 = 138412546;
          v19 = guid;
          v20 = 2112;
          v21 = __imFirstObject;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Reassociating chat: %@  to account: %@", &v18, 0x16u);
        }
      }

      accountID2 = [__imFirstObject accountID];
      [(IMDChat *)self setAccountID:accountID2];

      internalName = [v10 internalName];
      [(IMDChat *)self setServiceName:internalName];
    }

    else
    {
      __imFirstObject = 0;
    }
  }

  return __imFirstObject;
}

- (id)_mergeParticipantIDs
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  participants = [(IMDChat *)self participants];
  v5 = [v3 initWithCapacity:{objc_msgSend(participants, "count")}];

  if ([(IMDChat *)self style]== 43)
  {
    displayName = [(IMDChat *)self displayName];
    v7 = [displayName length] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    v8 = IMMergeNamedGroups() ^ 1 | v7;
  }

  else
  {
    v8 = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  participants2 = [(IMDChat *)self participants];
  v10 = [participants2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(participants2);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ((v8 & 1) != 0 && ([*(*(&v22 + 1) + 8 * i) personCentricID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "__im_isSipHandle"), v15, (v16 & 1) == 0))
        {
          cNContactID = [v14 CNContactID];
        }

        else
        {
          if (!IMSharedHelperPersonCentricMergingEnabled())
          {
            v18 = 0;
            goto LABEL_19;
          }

          cNContactID = [v14 personCentricID];
        }

        v18 = cNContactID;
LABEL_19:
        if (![(__CFString *)v18 length])
        {
          v19 = [v14 ID];

          v18 = v19;
        }

        if ([(__CFString *)v18 length])
        {
          v20 = v18;
        }

        else
        {
          v20 = @"invalidHandle";
        }

        [v5 addObject:v20];
      }

      v11 = [participants2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v5;
}

- (BOOL)supportsMergingFilteredThreads
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x277D1A9B8] isMergeFilteredThreadsEnabled];

  return isMergeFilteredThreadsEnabled && [(IMDChat *)self isFiltered]> 2;
}

- (int64_t)isFiltered
{
  [(NSRecursiveLock *)self->_lock lock];
  isFiltered = self->_isFiltered;
  [(NSRecursiveLock *)self->_lock unlock];
  return isFiltered;
}

- (id)groupPhotoGuid
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:*MEMORY[0x277D19810]];

  return v3;
}

- (int64_t)state
{
  [(NSRecursiveLock *)self->_lock lock];
  state = self->_state;
  [(NSRecursiveLock *)self->_lock unlock];
  return state;
}

- (NSString)description
{
  v28 = MEMORY[0x277CCACA8];
  guid = [(IMDChat *)self guid];
  style = [(IMDChat *)self style];
  state = [(IMDChat *)self state];
  participants = [(IMDChat *)self participants];
  roomName = [(IMDChat *)self roomName];
  displayName = [(IMDChat *)self displayName];
  chatIdentifier = [(IMDChat *)self chatIdentifier];
  unreadCount = [(IMDChat *)self unreadCount];
  rowID = [(IMDChat *)self rowID];
  groupID = [(IMDChat *)self groupID];
  originalGroupID = [(IMDChat *)self originalGroupID];
  lastAddressedLocalHandle = [(IMDChat *)self lastAddressedLocalHandle];
  lastAddressedSIMID = [(IMDChat *)self lastAddressedSIMID];
  isFiltered = [(IMDChat *)self isFiltered];
  v3 = @"YES";
  if ([(IMDChat *)self hasHadSuccessfulQuery])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v15 = v4;
  serverChangeToken = [(IMDChat *)self serverChangeToken];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat cloudKitSyncState](self, "cloudKitSyncState")}];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IMDChat lastReadMessageTimeStamp](self, "lastReadMessageTimeStamp")}];
  cloudKitRecordID = [(IMDChat *)self cloudKitRecordID];
  if ([(IMDChat *)self isBlackholed])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  groupPhotoGuid = [(IMDChat *)self groupPhotoGuid];
  if ([(IMDChat *)self isRecovered])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (![(IMDChat *)self isDeletingIncomingMessages])
  {
    v3 = @"NO";
  }

  [(IMDChat *)self repairHistory];
  v12 = IMStringFromChatRepairHistory();
  v13 = [v28 stringWithFormat:@"IMDChat: %p [GUID: %@ Style: %c State: %d Participants: %@  Room Name: %@  Display Name: %@  Identifier: %@  Unread count: %d  Row ID: %lld  Group ID: %@ originalGroupID: %@ lastAddressedHandle: %@ lastAddressedSIMID: %@ isFiltered: %d hasHadSuccessfulQuery: %@ serverChangeToken: %@ cKSate:%@ lastReadTime:%@ cloudKitRecordID: %@ isBlackholed: %@ groupPhotoGuid: %@ isRecovered: %@ isDeletingIncomingMessages %@ repairHistory %@ pendingIncomingSatelliteMessageCount: %d]", self, guid, style, state, participants, roomName, displayName, chatIdentifier, unreadCount, rowID, groupID, originalGroupID, lastAddressedLocalHandle, lastAddressedSIMID, isFiltered, v15, serverChangeToken, v6, v7, cloudKitRecordID, v9, groupPhotoGuid, v11, v3, v12, -[IMDChat pendingIncomingSatelliteMessageCount](self, "pendingIncomingSatelliteMessageCount")];

  return v13;
}

- (NSString)roomName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_roomName copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)rowID
{
  [(NSRecursiveLock *)self->_lock lock];
  rowID = self->_rowID;
  [(NSRecursiveLock *)self->_lock unlock];
  return rowID;
}

- (NSString)lastAddressedLocalHandle
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_lastAddressedLocalHandle copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)lastAddressedSIMID
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_lastAddressedSIMID copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)hasHadSuccessfulQuery
{
  [(NSRecursiveLock *)self->_lock lock];
  hasHadSuccessfulQuery = self->_hasHadSuccessfulQuery;
  [(NSRecursiveLock *)self->_lock unlock];
  return hasHadSuccessfulQuery;
}

- (NSString)engramID
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_engramID copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)serverChangeToken
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_serverChangeToken copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)cloudKitSyncState
{
  [(NSRecursiveLock *)self->_lock lock];
  cloudKitSyncState = self->_cloudKitSyncState;
  [(NSRecursiveLock *)self->_lock unlock];
  return cloudKitSyncState;
}

- (int64_t)lastReadMessageTimeStamp
{
  [(NSRecursiveLock *)self->_lock lock];
  lastReadMessageTimeStamp = self->_lastReadMessageTimeStamp;
  [(NSRecursiveLock *)self->_lock unlock];
  return lastReadMessageTimeStamp;
}

- (int64_t)engroupCreationDate
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"EngroupCreationDateKey"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)repairHistory
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x277D19918]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)pendingIncomingSatelliteMessageCount
{
  [(NSRecursiveLock *)self->_lock lock];
  pendingIncomingSatelliteMessageCount = self->_pendingIncomingSatelliteMessageCount;
  [(NSRecursiveLock *)self->_lock unlock];
  return pendingIncomingSatelliteMessageCount;
}

- (BOOL)isRecovered
{
  [(NSRecursiveLock *)self->_lock lock];
  isRecovered = self->_isRecovered;
  [(NSRecursiveLock *)self->_lock unlock];
  return isRecovered;
}

- (BOOL)isDeletingIncomingMessages
{
  [(NSRecursiveLock *)self->_lock lock];
  isDeletingIncomingMessages = self->_isDeletingIncomingMessages;
  [(NSRecursiveLock *)self->_lock unlock];
  return isDeletingIncomingMessages;
}

- (NSDate)autoDonationBehaviorLastModificationDate
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_autoDonationBehaviorLastModificationDate;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)autoDonationBehavior
{
  [(NSRecursiveLock *)self->_lock lock];
  autoDonationBehavior = self->_autoDonationBehavior;
  [(NSRecursiveLock *)self->_lock unlock];
  return autoDonationBehavior;
}

- (BOOL)isArchived
{
  [(NSRecursiveLock *)self->_lock lock];
  isArchived = self->_isArchived;
  [(NSRecursiveLock *)self->_lock unlock];
  return isArchived;
}

- (void)storeAndBroadcastChatChanges
{
  v3 = +[IMDChatStore sharedInstance];
  [v3 storeChat:self];

  v6 = [(IMDChat *)self copyDictionaryRepresentation:0];
  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  [broadcaster chat:guid updated:v6];
}

- (IMDaemonListenerChatProtocol)broadcaster
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [v3 broadcasterForChatListenersUsingBlackholeRegistry:{-[IMDChat isBlackholed](self, "isBlackholed")}];

  return v4;
}

- (BOOL)isStewieChat
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (!stewieEnabled)
  {
    return 0;
  }

  chatIdentifier = [(IMDChat *)self chatIdentifier];
  v6 = MEMORY[0x231897A60]();

  return v6;
}

- (BOOL)isBusinessChat
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  participants = [(IMDChat *)self participants];
  v3 = [participants countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(participants);
        }

        if ([*(*(&v7 + 1) + 8 * i) isBusiness])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [participants countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_findChatParticipantsWithFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  participants = [(IMDChat *)self participants];
  v7 = [participants countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(participants);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) ID];
        if ([v11 length])
        {
          _stripFZIDPrefix = [v11 _stripFZIDPrefix];
          [v5 addObject:_stripFZIDPrefix];
        }
      }

      v8 = [participants countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (dCopy)
  {
    _stripFZIDPrefix2 = [dCopy _stripFZIDPrefix];
    [v5 addObject:_stripFZIDPrefix2];
  }

  return v5;
}

- (void)_setParticipantVersion:(int64_t)version
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = IMOSLoggingEnabled();
  if (version < 0)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received a negative participant version. This is not right!", &v9, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        groupID = [(IMDChat *)self groupID];
        v9 = 138412546;
        v10 = groupID;
        v11 = 2048;
        versionCopy = version;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Setting participant version of chat %@ to %ld", &v9, 0x16u);
      }
    }

    [(IMDChat *)self setGroupParticipantVersion:version];
  }
}

- (void)_incrementParticipantVersion
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      groupID = [(IMDChat *)self groupID];
      v5 = 138412546;
      v6 = groupID;
      v7 = 2048;
      groupParticipantVersion = [(IMDChat *)self groupParticipantVersion];
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Incrementing participant version of chat %@ to %ld", &v5, 0x16u);
    }
  }

  [(IMDChat *)self setGroupParticipantVersion:[(IMDChat *)self groupParticipantVersion]+ 1];
}

- (void)_modifyGroupWithServiceSession:(id)session groupID:(id)d toParticipants:(id)participants toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier account:(id)account messageTimeStamp:(id)stamp
{
  v87 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  participantsCopy = participants;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  accountCopy = account;
  stampCopy = stamp;
  account = accountCopy;
  if (!accountCopy)
  {
    account = [sessionCopy account];
  }

  _stripFZIDPrefix = [identifierCopy _stripFZIDPrefix];

  _stripFZIDPrefix2 = [fromIdentifierCopy _stripFZIDPrefix];

  v20 = [participantsCopy __imArrayByApplyingBlock:&unk_283F198E8];

  v60 = [_stripFZIDPrefix isEqualToIgnoringCase:_stripFZIDPrefix2];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v82 = v20;
      v83 = 2112;
      v84 = _stripFZIDPrefix;
      v85 = 2112;
      v86 = _stripFZIDPrefix2;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, " Updating participants: %@ toIdentifier: %@, fromIdentifier: %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      participants = [(IMDChat *)self participants];
      *buf = 138412290;
      v82 = participants;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Chat participants before converge %@", buf, 0xCu);
    }
  }

  participants2 = [(IMDChat *)self participants];
  v62 = [participants2 arrayByApplyingSelector:sel_ID];

  v70 = [MEMORY[0x277CBEB98] setWithArray:v62];
  v25 = [v62 mutableCopy];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v20;
  v26 = [(__CFString *)obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v26)
  {
    v67 = 0;
    v27 = 0;
    v28 = *v76;
    v29 = _stripFZIDPrefix2;
    if (v60)
    {
      v29 = 0;
    }

    v64 = v29;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v76 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v75 + 1) + 8 * i);
        if (([v70 containsObject:v31] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v82 = v31;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "   Adding participant: %@", buf, 0xCu);
            }
          }

          v33 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:stampCopy];
          if ([(__CFString *)v31 isEqualToString:_stripFZIDPrefix2])
          {
            v34 = [v33 dateByAddingTimeInterval:-0.000002];

            v67 = 1;
            v33 = v34;
          }

          v35 = objc_alloc_init(IMDChatMemberStatusChangeContext);
          [(IMDChatMemberStatusChangeContext *)v35 setStatus:2];
          [(IMDChatMemberStatusChangeContext *)v35 setHandleID:v31];
          [(IMDChatMemberStatusChangeContext *)v35 setFromHandleID:v64];
          chatIdentifier = [(IMDChat *)self chatIdentifier];
          [(IMDChatMemberStatusChangeContext *)v35 setChatIdentifier:chatIdentifier];

          [(IMDChatMemberStatusChangeContext *)v35 setStyle:[(IMDChat *)self style]];
          account2 = [(IMDChat *)self account];
          [(IMDChatMemberStatusChangeContext *)v35 setAccount:account2];

          [(IMDChatMemberStatusChangeContext *)v35 setDestinationCallerID:_stripFZIDPrefix];
          [(IMDChatMemberStatusChangeContext *)v35 setMessageTime:v33];
          [(IMDChatMemberStatusChangeContext *)v35 setUnattributed:1];
          v38 = [sessionCopy didChangeMemberStatus:v35];

          v27 = 1;
        }

        [(__CFString *)v25 removeObject:v31];
      }

      v26 = [(__CFString *)obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v26);
  }

  else
  {
    v67 = 0;
    v27 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v82 = v25;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "   Participants to be removed %@", buf, 0xCu);
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v65 = v25;
  v40 = [(__CFString *)v65 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v40)
  {
    v41 = *v72;
    if (v60)
    {
      v42 = 0;
    }

    else
    {
      v42 = _stripFZIDPrefix2;
    }

    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v72 != v41)
        {
          objc_enumerationMutation(v65);
        }

        v44 = *(*(&v71 + 1) + 8 * j);
        if (([(__CFString *)v44 isEqualToIgnoringCase:_stripFZIDPrefix]& 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v82 = v44;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "   Removing participant: %@", buf, 0xCu);
            }
          }

          v46 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:stampCopy];
          v47 = v46;
          if (v67)
          {
            v48 = [v46 dateByAddingTimeInterval:-0.000001];

            v47 = v48;
          }

          v49 = objc_alloc_init(IMDChatMemberStatusChangeContext);
          [(IMDChatMemberStatusChangeContext *)v49 setStatus:3];
          [(IMDChatMemberStatusChangeContext *)v49 setHandleID:v44];
          [(IMDChatMemberStatusChangeContext *)v49 setFromHandleID:v42];
          chatIdentifier2 = [(IMDChat *)self chatIdentifier];
          [(IMDChatMemberStatusChangeContext *)v49 setChatIdentifier:chatIdentifier2];

          [(IMDChatMemberStatusChangeContext *)v49 setStyle:[(IMDChat *)self style]];
          account3 = [(IMDChat *)self account];
          [(IMDChatMemberStatusChangeContext *)v49 setAccount:account3];

          [(IMDChatMemberStatusChangeContext *)v49 setDestinationCallerID:_stripFZIDPrefix];
          [(IMDChatMemberStatusChangeContext *)v49 setMessageTime:v47];
          [(IMDChatMemberStatusChangeContext *)v49 setUnattributed:1];
          v52 = [sessionCopy didChangeMemberStatus:v49];

          v27 = 1;
        }
      }

      v40 = [(__CFString *)v65 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v40);
  }

  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      participants3 = [(IMDChat *)self participants];
      *buf = 138412290;
      v82 = participants3;
      _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_INFO, "Chat participants after converge %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = @"NO";
      if (v27)
      {
        v56 = @"YES";
      }

      *buf = 138412290;
      v82 = v56;
      _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Group changed and will write to db? %@", buf, 0xCu);
    }
  }

  if (v27)
  {
    v57 = +[IMDChatStore sharedInstance];
    [v57 storeChat:self];
  }
}

- (BOOL)_convergesParticipantsForReplicationService:(id)service
{
  if (service)
  {
    return [service supportsCapability:*MEMORY[0x277D1A568]] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)_convergeGroupChatIfNeededWithServiceSession:(id)session account:(id)account replicationService:(id)service groupID:(id)d incomingParticipants:(id)participants fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier receivedGroupParticipantVersion:(id)self0 receivedGroupProtocolVersion:(id)self1 messageTimeStamp:(id)self2 groupPhotoCreationTime:(id)self3
{
  v85 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  accountCopy = account;
  serviceCopy = service;
  dCopy = d;
  participantsCopy = participants;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  versionCopy = version;
  protocolVersionCopy = protocolVersion;
  stampCopy = stamp;
  timeCopy = time;
  selfCopy = self;
  v60 = [(IMDChat *)self _findChatParticipantsWithFromID:toIdentifierCopy];
  v22 = [participantsCopy __imArrayByApplyingBlock:&unk_283F19908];
  __imSetFromArray = [v22 __imSetFromArray];

  v24 = [v60 isEqualToSet:__imSetFromArray];
  groupParticipantVersion = [(IMDChat *)selfCopy groupParticipantVersion];
  properties = [(IMDChat *)selfCopy properties];
  v62 = [properties objectForKey:qword_27D8CB9D0];

  v55 = toIdentifierCopy;
  v27 = [stampCopy longLongValue] / 1000000000;
  v28 = v27 - [v62 longLongValue];
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      longLongValue = [v62 longLongValue];
      longLongValue2 = [stampCopy longLongValue];
      *buf = 134219778;
      v70 = groupParticipantVersion;
      v71 = 2112;
      v32 = @"NO";
      v72 = versionCopy;
      if (v24)
      {
        v32 = @"YES";
      }

      v73 = 2048;
      v74 = v28;
      v75 = 2048;
      v76 = longLongValue;
      v77 = 2048;
      v78 = longLongValue2 / 1000000000;
      v79 = 2112;
      v80 = participantsCopy;
      v81 = 2112;
      v82 = protocolVersionCopy;
      v83 = 2112;
      v84 = v32;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "receiveMessageData localVersion: %ld, receivedGroupParticipantVersion: %@, timeDifference: %lld, lastUpdated:%lld, timestamp:%lld, incomingParticipants: %@, protocolVersion: %@, isIncomingParticipantSetSame %@", buf, 0x52u);
    }
  }

  if (groupParticipantVersion <= [versionCopy integerValue])
  {
    if (v28 < 11)
    {
      v33 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v33 = 0;
  if (!((protocolVersionCopy != 0) | v24 & 1) && v28 >= 11)
  {
LABEL_13:
    v33 = (groupParticipantVersion != [versionCopy integerValue]) | v24 ^ 1;
  }

LABEL_14:
  v34 = +[IMDFileTransferCenter sharedInstance];
  groupPhotoGuid = [(IMDChat *)selfCopy groupPhotoGuid];
  v36 = [v34 transferForGUID:groupPhotoGuid];

  if ([timeCopy unsignedLongLongValue])
  {
    v37 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:timeCopy];
    v38 = v37;
    if (v36 && v37)
    {
      refreshDate = [v36 refreshDate];
      if ([refreshDate compare:v38] == -1)
      {
        v40 = [(IMDChat *)selfCopy _convergesGroupPhotosForReplicationService:serviceCopy];

        if (!v40)
        {
          goto LABEL_22;
        }

        [v36 setRefreshDate:v38];
        refreshDate = +[IMDAttachmentStore sharedInstance];
        messageGUID = [v36 messageGUID];
        [refreshDate storeAttachment:v36 associateWithMessageWithGUID:messageGUID];
      }
    }
  }

  else
  {
    v38 = 0;
  }

LABEL_22:
  if (protocolVersionCopy)
  {
    if (v33)
    {
      if ([(IMDChat *)selfCopy _convergesParticipantsForReplicationService:serviceCopy])
      {
        v42 = 1;
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Not converging participants, replication service does not permit it", buf, 2u);
        }

LABEL_33:
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Not converging participants. Message from legacy device", buf, 2u);
    }

    goto LABEL_33;
  }

  v42 = 0;
LABEL_35:
  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = @"NO";
      if (v42)
      {
        v45 = @"YES";
      }

      *buf = 138412290;
      v70 = v45;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "shouldConvergeParticipants: %@", buf, 0xCu);
    }
  }

  if ([dCopy length])
  {
    v46 = [__imSetFromArray count];
    if (v55)
    {
      if (identifierCopy && v46 >= 2)
      {
        style = [(IMDChat *)selfCopy style];
        v48 = v42 ^ 1;
        if (style == 45)
        {
          v48 = 1;
        }

        if ((v48 & 1) == 0)
        {
          if (versionCopy)
          {
            if (groupParticipantVersion != [versionCopy integerValue])
            {
              if (IMOSLoggingEnabled())
              {
                v49 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v70 = versionCopy;
                  _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Setting participant version to version received: %@", buf, 0xCu);
                }
              }

              if ([versionCopy integerValue] > groupParticipantVersion)
              {
                chatIdentifier = [(IMDChat *)selfCopy chatIdentifier];
                [sessionCopy didUpdateChatStatus:2 chat:chatIdentifier style:{-[IMDChat style](selfCopy, "style")}];
              }

              -[IMDChat _setParticipantVersion:](selfCopy, "_setParticipantVersion:", [versionCopy integerValue]);
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "Incrementing participant version by 1 on message receive.", buf, 2u);
              }
            }

            [(IMDChat *)selfCopy _incrementParticipantVersion];
            chatIdentifier2 = [(IMDChat *)selfCopy chatIdentifier];
            [sessionCopy didUpdateChatStatus:2 chat:chatIdentifier2 style:{-[IMDChat style](selfCopy, "style")}];
          }

          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = sub_22B533518;
          v67[3] = &unk_278702A40;
          v53 = v55;
          v68 = v53;
          v54 = [participantsCopy __imArrayByFilteringWithBlock:v67];
          [(IMDChat *)selfCopy _modifyGroupWithServiceSession:sessionCopy groupID:dCopy toParticipants:v54 toIdentifier:v53 fromIdentifier:identifierCopy account:accountCopy messageTimeStamp:stampCopy];
        }
      }
    }
  }
}

- (unint64_t)powerLogConversationType
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  participants = [(IMDChat *)self participants];
  v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(participants);
        }

        if ([*(*(&v9 + 1) + 8 * v7) isBusiness])
        {

          return 2;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(IMDChat *)self style]!= 45;
}

- (void)_repairChatIfNeeded
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[IMDChatRepairController alloc] initWithDelegate:self];
  [(IMDChatRepairController *)v4 repairChatIfNecessary:self];

  objc_autoreleasePoolPop(v3);
}

+ (BOOL)identifier:(id)identifier equalsIdentifier:(id)equalsIdentifier
{
  identifierCopy = identifier;
  equalsIdentifierCopy = equalsIdentifier;
  if ((identifierCopy == 0) != (equalsIdentifierCopy == 0))
  {
    v7 = 0;
  }

  else if ([identifierCopy length] >= 5 && objc_msgSend(equalsIdentifierCopy, "length") >= 5)
  {
    if ((IMStringIsEmail() & 1) != 0 || IMStringIsEmail())
    {
      lowercaseString = [identifierCopy lowercaseString];
      lowercaseString2 = [equalsIdentifierCopy lowercaseString];
    }

    else
    {
      lowercaseString = [identifierCopy substringFromIndex:{objc_msgSend(identifierCopy, "length") - 5}];
      lowercaseString2 = [equalsIdentifierCopy substringFromIndex:{objc_msgSend(equalsIdentifierCopy, "length") - 5}];
    }

    v10 = lowercaseString2;
    v7 = [lowercaseString isEqualToString:lowercaseString2];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_repairMissingServiceName
{
  v14[1] = *MEMORY[0x277D85DE8];
  serviceName = [(IMDChat *)self serviceName];
  v4 = [serviceName length];

  if (!v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D190E0];
    v13 = *MEMORY[0x277CCA068];
    v14[0] = @"[IMCreateIMDChat] Chat was missing a service when loaded from the database.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:0 userInfo:v7];

    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Missing chat service name at load" errorPayload:v8 type:@"MissingChatService" context:0];

    guid = [(IMDChat *)self guid];
    IMComponentsFromChatGUID();
    v11 = 0;

    [(IMDChat *)self setServiceName:v11];
    [(IMDChat *)self updateRepairHistoryOfChat:self withRepairHistory:4];
    v12 = +[IMDChatStore sharedInstance];
    [v12 _storeChat:self updateProtectedProperties:1];
  }
}

- (void)updateRepairHistoryOfChat:(id)chat withRepairHistory:(unint64_t)history
{
  v10 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  [chatCopy setRepairHistory:{objc_msgSend(chatCopy, "repairHistory") | history}];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      [chatCopy repairHistory];
      v7 = IMStringFromChatRepairHistory();
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Repair History Updated: %@", &v8, 0xCu);
    }
  }
}

- (BOOL)chatRepairController:(id)controller chatExistsWithGUID:(id)d
{
  v4 = IMDChatRecordCopyChatForGUID();
  v5 = v4 != 0;

  return v5;
}

- (id)chatRepairController:(id)controller generateUnusedChatIdentifierForGroupChatWithAccount:(id)account
{
  v5 = [IMDChatRegistry sharedInstance:controller];
  account = [(IMDChat *)self account];
  v7 = [v5 generateUnusedChatIdentifierForGroupChatWithAccount:account];

  return v7;
}

- (BOOL)chatRepairController:(id)controller repairChatIdentifierWithIdentifier:(id)identifier onChat:(id)chat
{
  chatCopy = chat;
  v8 = [identifier copy];
  [(IMDChat *)self setChatIdentifier:v8];

  v9 = +[IMDChatStore sharedInstance];
  [v9 storeChat:chatCopy];

  return 1;
}

- (BOOL)chatRepairController:(id)controller repairGUIDWithGUID:(id)d onChat:(id)chat
{
  dCopy = d;
  chatCopy = chat;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  guid = [chatCopy guid];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B5DA830;
  v14[3] = &unk_278705EF0;
  v15 = dCopy;
  selfCopy = self;
  v17 = chatCopy;
  v11 = chatCopy;
  v12 = dCopy;
  [synchronousDatabase resolveInconsistentGUIDForChatRecordWithGUID:guid newGUID:v12 completionHandler:v14];

  return 1;
}

- (BOOL)chatRepairController:(id)controller repairParticipantWithIdentifier:(id)identifier onService:(id)service onChat:(id)chat
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  serviceCopy = service;
  chatCopy = chat;
  v13 = IMDHandleRecordCopyHandleForIDOnService();
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = identifierCopy;
        v29 = 2112;
        v30 = serviceCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found handle for ID (%@) on service (%@)", buf, 0x16u);
      }
    }

    v16 = IMDHandleRecordCopyID();
    v17 = IMDHandleRecordCopyCountry();
    v18 = IMDHandleRecordCopyUncanonicalizedID();
    v19 = IMDHandleRecordCopyPersonCentricID();
    CFRelease(v13);
  }

  else
  {
    if (v14)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = identifierCopy;
        v29 = 2112;
        v30 = serviceCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "No handle found for ID (%@) on service (%@). Creating one instead.", buf, 0x16u);
      }
    }

    v16 = identifierCopy;
    v19 = 0;
    v18 = 0;
    v17 = 0;
  }

  v21 = [[IMDHandle alloc] initWithID:v16 unformattedID:v18 countryCode:v17 personCentricID:v19];
  v26 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v23 = [(IMDChat *)self _resetParticipants:v22];

  return v23;
}

- (IMDChat)initWithAccountID:(id)d service:(id)service guid:(id)guid groupID:(id)iD chatIdentifier:(id)identifier participants:(id)participants roomName:(id)name displayName:(id)self0 lastAddressedLocalHandle:(id)self1 lastAddressedSIMID:(id)self2 properties:(id)self3 state:(int64_t)self4 style:(unsigned __int8)self5 isFiltered:(int64_t)self6 hasHadSuccessfulQuery:(BOOL)self7 engramID:(id)self8 serverChangeToken:(id)self9 cloudKitSyncState:(int64_t)syncState originalGroupID:(id)groupID lastReadMessageTimeStamp:(int64_t)stamp lastMessageTimeStampOnLoad:(int64_t)load cloudKitRecordID:(id)recordID isBlackholed:(BOOL)blackholed autoDonationBehavior:(int64_t)behavior autoDonationBehaviorLastModificationDate:(id)date isRecovered:(BOOL)recovered isDeletingIncomingMessages:(BOOL)messages domainIdentifiers:(id)d0
{
  dateCopy = date;
  v95 = *MEMORY[0x277D85DE8];
  dCopy = d;
  serviceCopy = service;
  guidCopy = guid;
  iDCopy = iD;
  identifierCopy = identifier;
  participantsCopy = participants;
  nameCopy = name;
  displayNameCopy = displayName;
  handleCopy = handle;
  mIDCopy = mID;
  propertiesCopy = properties;
  engramIDCopy = engramID;
  tokenCopy = token;
  groupIDCopy = groupID;
  recordIDCopy = recordID;
  dateCopy2 = date;
  identifiersCopy = identifiers;
  if ([(__CFString *)identifierCopy length])
  {
    v92.receiver = self;
    v92.super_class = IMDChat;
    v39 = dCopy;
    v40 = [(IMDChat *)&v92 init];
    if (!v40)
    {
LABEL_56:
      selfCopy = v40;
      v48 = selfCopy;
      goto LABEL_57;
    }

    v41 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v40->_lock;
    v40->_lock = v41;

    [(NSRecursiveLock *)v40->_lock lock];
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chatInfo = v40->_chatInfo;
    v40->_chatInfo = v43;

    if ([(IMDChat *)guidCopy rangeOfString:@";"]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v94 = guidCopy;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_DEBUG, "Attempting to init chat with invalid guid %@", buf, 0xCu);
        }
      }

      v78 = IMCopyAnyServiceGUIDForChat();
    }

    else
    {
      v78 = IMAnyServiceGUIDFromLegacyChatGUID();
    }

    [(IMDChat *)v40 setEngramID:engramIDCopy];
    [(IMDChat *)v40 setProperties:propertiesCopy];
    [(IMDChat *)v40 setIsFiltered:filtered];
    [(IMDChat *)v40 setLastAddressedLocalHandle:handleCopy];
    [(IMDChat *)v40 setLastAddressedSIMID:mIDCopy];
    [(IMDChat *)v40 setChatIdentifier:identifierCopy];
    [(IMDChat *)v40 setState:state];
    [(IMDChat *)v40 setServiceName:serviceCopy];
    [(IMDChat *)v40 setInitialGroupID:iDCopy];
    [(IMDChat *)v40 setStyle:style];
    [(IMDChat *)v40 setParticipants:participantsCopy];
    if (style == 45 && ![(IMDChat *)v40 isBusinessChat]&& (MEMORY[0x231897A60](identifierCopy) & 1) == 0)
    {
      serviceName = [(IMDChat *)v40 serviceName];
      if ([serviceName isEqualToString:*MEMORY[0x277D1A608]])
      {
      }

      else
      {
        isMergedBusinessThread = [(IMDChat *)v40 isMergedBusinessThread];

        if (!isMergedBusinessThread)
        {
          goto LABEL_32;
        }
      }
    }

    v51 = displayNameCopy;
    if (displayNameCopy)
    {
      v52 = [displayNameCopy length];
      v51 = displayNameCopy;
      if (!v52)
      {
        v53 = IMDChatLogHandle(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_DEFAULT, "Attempting to create an IMDChat with an empty display name. Setting display name to nil instead.", buf, 2u);
        }

        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.imagent" code:0 userInfo:0];
        v56 = &stru_283F23018;
        if (identifierCopy)
        {
          v56 = identifierCopy;
        }

        if (v78)
        {
          v57 = v78;
        }

        else
        {
          v57 = v56;
        }

        [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"EmptyStringDisplayName" errorPayload:v55 type:@"ChatProperties" context:{v57, date}];

        v51 = 0;
      }
    }

    [(IMDChat *)v40 setDisplayName:v51, dateCopy];
LABEL_32:
    if (v78)
    {
      [(IMDChat *)v40 setGuid:?];
    }

    else
    {
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      [(IMDChat *)v40 setGuid:stringGUID];
    }

    [(IMDChat *)v40 setHasHadSuccessfulQuery:query];
    [(IMDChat *)v40 setCreateEngramGroupOnMessageSend:0];
    [(IMDChat *)v40 setPendingENGroupParticipantUpdate:0];
    if (style != 45)
    {
      [(IMDChat *)v40 setRoomName:nameCopy];
    }

    [(IMDChat *)v40 setAccountID:dCopy, dateCopy];
    [(IMDChat *)v40 _updateCachedParticipants];
    v40->_rowID = -1;
    v40->_isArchived = 0;
    [(IMDChat *)v40 setServerChangeToken:tokenCopy];
    v59 = groupIDCopy;
    if ([v59 length])
    {
      v60 = v59;
    }

    else
    {
      v61 = +[IMDServiceController sharedController];
      v62 = [v61 serviceWithName:serviceCopy];
      v63 = [v62 supportsCapability:*MEMORY[0x277D1A558]];

      if (v63)
      {
        v64 = iDCopy;
      }

      else
      {
        v64 = _IMDHashParticipants(participantsCopy, handleCopy);
      }

      v60 = v64;
    }

    [(IMDChat *)v40 setInitialOriginalGroupID:v60];
    [(IMDChat *)v40 setLastReadMessageTimeStamp:stamp];
    [(IMDChat *)v40 setLastMessageTimeStampOnLoad:load];
    [(IMDChat *)v40 setCloudKitRecordID:recordIDCopy];
    [(IMDChat *)v40 setIsBlackholed:blackholed];
    [(IMDChat *)v40 setWasReportedAsJunk:0];
    [(IMDChat *)v40 _setAutoDonationBehavior:behavior lastModificationDate:dateCopy2 setDirtyFlag:0];
    [(IMDChat *)v40 setRecovered:recovered];
    [(IMDChat *)v40 setDeletingIncomingMessages:messages];
    [(IMDChat *)v40 setCloudKitSyncState:syncState];
    [(IMDChat *)v40 setPendingIncomingSatelliteMessageCount:0];
    if (identifiersCopy)
    {
      v65 = [identifiersCopy mutableCopy];
      domainIdentifiers = v40->_domainIdentifiers;
      v40->_domainIdentifiers = v65;

      v67 = v40->_domainIdentifiers;
      if (!v67)
      {
LABEL_51:
        if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v94 = v40;
            _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_DEBUG, "Created chat: %@", buf, 0xCu);
          }
        }

        [(NSRecursiveLock *)v40->_lock unlock];

        guidCopy = v78;
        goto LABEL_56;
      }

      v68 = [(NSMutableDictionary *)v67 objectForKey:*MEMORY[0x277D19780]];
      firstObject = [v68 firstObject];

      if (firstObject)
      {
        v70 = *MEMORY[0x277D19808];
        v71 = [(NSMutableDictionary *)v40->_chatInfo objectForKey:*MEMORY[0x277D19808]];
        v72 = [firstObject isEqualToString:v71];

        if ((v72 & 1) == 0)
        {
          [(NSMutableDictionary *)v40->_chatInfo setObject:firstObject forKey:v70];
        }
      }

      [(NSMutableDictionary *)v40->_chatInfo setObject:v40->_domainIdentifiers forKey:*MEMORY[0x277D197E0]];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      firstObject = v40->_domainIdentifiers;
      v40->_domainIdentifiers = dictionary;
    }

    goto LABEL_51;
  }

  selfCopy = self;
  v39 = dCopy;
  if (IMOSLoggingEnabled())
  {
    v47 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v94 = guidCopy;
      _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_DEBUG, "Attempting to init chat with zero length chat identifier, guid: %@", buf, 0xCu);
    }
  }

  v48 = 0;
LABEL_57:

  return v48;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "Dealloc chat: %@", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = IMDChat;
  [(IMDChat *)&v4 dealloc];
}

- (void)setGuid:(id)guid
{
  guidCopy = guid;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_guid != guidCopy)
  {
    v4 = [(NSString *)guidCopy copy];
    guid = self->_guid;
    self->_guid = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19800];
    if (guidCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:guidCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_chatIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    chatIdentifier = self->_chatIdentifier;
    self->_chatIdentifier = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D197A8];
    if (identifierCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:identifierCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setAccountID:(id)d
{
  dCopy = d;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_accountID != dCopy)
  {
    v4 = [(NSString *)dCopy copy];
    accountID = self->_accountID;
    self->_accountID = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19788];
    if (dCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:dCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setServiceName:(id)name
{
  nameCopy = name;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_serviceName != nameCopy)
  {
    v4 = [(NSString *)nameCopy copy];
    serviceName = self->_serviceName;
    self->_serviceName = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19940];
    if (nameCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:nameCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setParticipants:(id)participants
{
  participantsCopy = participants;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_participants != participantsCopy)
  {
    v4 = [(NSArray *)participantsCopy copy];
    participants = self->_participants;
    self->_participants = v4;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (NSArray)replySuggestions
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSArray *)self->_replySuggestions copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setReplySuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_replySuggestions != suggestionsCopy)
  {
    v4 = [(NSArray *)suggestionsCopy copy];
    replySuggestions = self->_replySuggestions;
    self->_replySuggestions = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19920];
    if (suggestionsCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:suggestionsCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setRoomName:(id)name
{
  nameCopy = name;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_roomName != nameCopy)
  {
    v4 = [(NSString *)nameCopy copy];
    roomName = self->_roomName;
    self->_roomName = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19928];
    if (nameCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:nameCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_displayName != nameCopy)
  {
    v4 = [(NSString *)nameCopy copy];
    displayName = self->_displayName;
    self->_displayName = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D197D8];
    if (nameCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:nameCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_setAutoDonationBehavior:(int64_t)behavior lastModificationDate:(id)date setDirtyFlag:(BOOL)flag
{
  flagCopy = flag;
  v17 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_autoDonationBehaviorLastModificationDate, date);
  dateCopy = date;
  v10 = dateCopy;
  self->_autoDonationBehavior = behavior;
  if (flagCopy)
  {
    self->_cloudKitSyncState = 0;
  }

  v11 = IMDChatLogHandle(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    autoDonationBehavior = self->_autoDonationBehavior;
    v15 = 134217984;
    v16 = autoDonationBehavior;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Updating chatInfo with autoDonationBehavior: %ld", &v15, 0xCu);
  }

  chatInfo = self->_chatInfo;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_autoDonationBehavior];
  [(NSMutableDictionary *)chatInfo setObject:v14 forKey:*MEMORY[0x277D19798]];
}

- (BOOL)setAutoDonationBehavior:(int64_t)behavior lastModificationDate:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    [(NSRecursiveLock *)self->_lock lock];
    autoDonationBehaviorLastModificationDate = self->_autoDonationBehaviorLastModificationDate;
    if (autoDonationBehaviorLastModificationDate && [(NSDate *)autoDonationBehaviorLastModificationDate compare:dateCopy]== NSOrderedDescending)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_autoDonationBehaviorLastModificationDate;
        guid = self->_guid;
        v20 = 138413058;
        behaviorCopy2 = v9;
        v22 = 2112;
        v23 = dateCopy;
        v24 = 2048;
        behaviorCopy = behavior;
        v26 = 2112;
        v27 = guid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Syndication Date (%@ vs %@) is in the past. Not setting syndication type %ld for chat: %@", &v20, 0x2Au);
      }

      v11 = 0;
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_guid;
        v20 = 134218498;
        behaviorCopy2 = behavior;
        v22 = 2112;
        v23 = dateCopy;
        v24 = 2112;
        behaviorCopy = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Setting syndication type to: %ld, syndication date to: %@, for chat: %@", &v20, 0x20u);
      }

      v11 = 1;
      [(IMDChat *)self _setAutoDonationBehavior:behavior lastModificationDate:dateCopy setDirtyFlag:1];
      v14 = +[IMDChatStore sharedInstance];
      [v14 storeChat:self];

      guid = [(IMDChat *)self guid];
      IMDCoreSpotlightAddChatGUID();

      v8 = [(IMDChat *)self copyDictionaryRepresentation:0];
      broadcaster = [(IMDChat *)self broadcaster];
      guid2 = [(IMDChat *)self guid];
      [broadcaster chat:guid2 updated:v8];
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v18 = IMDChatLogHandle(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6098();
    }

    v11 = 0;
  }

  return v11;
}

- (void)setInitialGroupID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = dCopy;
    if ([(NSString *)dCopy length])
    {
      [(NSRecursiveLock *)self->_lock lock];
      if (self->_groupID != v7)
      {
        v5 = [(NSString *)v7 copy];
        groupID = self->_groupID;
        self->_groupID = v5;

        [(NSMutableDictionary *)self->_chatInfo setObject:v7 forKey:*MEMORY[0x277D19808]];
      }

      [(NSRecursiveLock *)self->_lock unlock];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setGroupID:(id)d
{
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [(NSString *)dCopy length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_groupID == v5 || (v6 = -[NSString copy](v5, "copy"), groupID = self->_groupID, self->_groupID = v6, groupID, -[NSMutableDictionary setObject:forKey:](self->_chatInfo, "setObject:forKey:", v5, *MEMORY[0x277D19808]), [MEMORY[0x277D1A9B8] sharedFeatureFlags], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isMissingMessagesEnabled"), v8, !v9))
    {
LABEL_13:
      [(NSRecursiveLock *)self->_lock unlock];
      goto LABEL_14;
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if (isOneChatEnabled)
    {
      v12 = *MEMORY[0x277D19780];
      v13 = *MEMORY[0x277D1A620];
      v19[0] = *MEMORY[0x277D1A5F8];
      v19[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v15 = [v14 containsObject:self->_serviceName];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = IMChatLookupDomainForServiceName();
      if ([v12 isEqualToString:*MEMORY[0x277D19780]])
      {
LABEL_10:
        v17 = [(IMDChat *)self identifiersForDomain:v12];
        v18 = [v17 containsObject:v5];

        if ((v18 & 1) == 0)
        {
          [(IMDChat *)self assignIdentifier:v5 forDomain:v12 isHistoricalIdentifier:0];
        }

        goto LABEL_13;
      }
    }

    v16 = [(NSString *)self->_serviceName copy];
    [(IMDChat *)self _submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:v16];

    goto LABEL_10;
  }

LABEL_14:
}

- (void)setEngramID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = dCopy;
    if ([(NSString *)dCopy length])
    {
      [(NSRecursiveLock *)self->_lock lock];
      if (self->_engramID != v7)
      {
        v5 = [(NSString *)v7 copy];
        engramID = self->_engramID;
        self->_engramID = v5;

        [(NSMutableDictionary *)self->_chatInfo setObject:v7 forKey:@"engramID"];
      }

      [(NSRecursiveLock *)self->_lock unlock];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setServerChangeToken:(id)token
{
  tokenCopy = token;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_serverChangeToken != tokenCopy)
  {
    v4 = [(NSString *)tokenCopy copy];
    serverChangeToken = self->_serverChangeToken;
    self->_serverChangeToken = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19938];
    if (tokenCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:tokenCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setCloudKitSyncState:(int64_t)state
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_cloudKitSyncState = state;
  chatInfo = self->_chatInfo;
  if (state)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D197D0]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D197D0]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setInitialOriginalGroupID:(id)d
{
  dCopy = d;
  if ([(NSString *)dCopy length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_originalGroupID != dCopy)
    {
      v4 = [(NSString *)dCopy copy];
      originalGroupID = self->_originalGroupID;
      self->_originalGroupID = v4;

      v6 = self->_originalGroupID;
      if (v6)
      {
        [(NSMutableDictionary *)self->_chatInfo setObject:v6 forKey:*MEMORY[0x277D198E0]];
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (void)setOriginalGroupID:(id)d
{
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(NSString *)dCopy length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_originalGroupID == dCopy || (v5 = -[NSString copy](dCopy, "copy"), originalGroupID = self->_originalGroupID, self->_originalGroupID = v5, originalGroupID, (v7 = self->_originalGroupID) == 0) || (-[NSMutableDictionary setObject:forKey:](self->_chatInfo, "setObject:forKey:", v7, *MEMORY[0x277D198E0]), [MEMORY[0x277D1A9B8] sharedFeatureFlags], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isMissingMessagesEnabled"), v8, !v9))
    {
LABEL_13:
      [(NSRecursiveLock *)self->_lock unlock];
      goto LABEL_14;
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if (isOneChatEnabled)
    {
      v12 = *MEMORY[0x277D19780];
      v13 = *MEMORY[0x277D1A620];
      v19[0] = *MEMORY[0x277D1A5F8];
      v19[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v15 = [v14 containsObject:self->_serviceName];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = IMChatLookupDomainForServiceName();
      if ([v12 isEqualToString:*MEMORY[0x277D19780]])
      {
LABEL_10:
        v17 = [(IMDChat *)self identifiersForDomain:v12];
        v18 = [v17 containsObject:self->_originalGroupID];

        if ((v18 & 1) == 0)
        {
          [(IMDChat *)self assignIdentifier:self->_originalGroupID forDomain:v12 isHistoricalIdentifier:1];
        }

        goto LABEL_13;
      }
    }

    v16 = [(NSString *)self->_serviceName copy];
    [(IMDChat *)self _submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:v16];

    goto LABEL_10;
  }

LABEL_14:
}

- (void)setLastReadMessageTimeStamp:(int64_t)stamp
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_lastReadMessageTimeStamp = stamp;
  chatInfo = self->_chatInfo;
  if (stamp)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:stamp];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19898]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19898]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDate)lastTUConversationCreatedDate
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"lastTUConversationCreatedDate"];

  return v3;
}

- (void)setLastTUConversationCreatedDate:(id)date
{
  v12[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lastTUConversationCreatedDate = [(IMDChat *)self lastTUConversationCreatedDate];
  if (([lastTUConversationCreatedDate isEqual:dateCopy] & 1) == 0)
  {
    v11 = @"lastTUConversationCreatedDate";
    null = dateCopy;
    if (!dateCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v12[0] = null;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!dateCopy)
    {
    }

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (void)setLastScheduledMessageCreatedDate:(id)date
{
  v12[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lastScheduledMessageCreatedDate = [(IMDChat *)self lastScheduledMessageCreatedDate];
  if (([lastScheduledMessageCreatedDate isEqual:dateCopy] & 1) == 0)
  {
    v11 = @"lastScheduledMessageCreatedDate";
    null = dateCopy;
    if (!dateCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v12[0] = null;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!dateCopy)
    {
    }

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (BOOL)isAutomaticallyTranslating
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:*MEMORY[0x277D197F0]];

  LOBYTE(properties) = [v3 BOOLValue];
  return properties;
}

- (NSString)translationLanguageIdentifier
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:*MEMORY[0x277D197A0]];

  return v3;
}

- (NSString)userTranslationLanguageIdentifier
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:*MEMORY[0x277D19988]];

  return v3;
}

- (void)setLastAddressedLocalHandle:(id)handle
{
  handleCopy = handle;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastAddressedLocalHandle != handleCopy)
  {
    v4 = [(NSString *)handleCopy copy];
    lastAddressedLocalHandle = self->_lastAddressedLocalHandle;
    self->_lastAddressedLocalHandle = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19870];
    if (handleCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:handleCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setLastAddressedSIMID:(id)d
{
  dCopy = d;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastAddressedSIMID != dCopy)
  {
    v4 = [(NSString *)dCopy copy];
    lastAddressedSIMID = self->_lastAddressedSIMID;
    self->_lastAddressedSIMID = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19878];
    if (dCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:dCopy forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_properties != propertiesCopy)
  {
    objc_storeStrong(&self->_properties, properties);
    chatInfo = self->_chatInfo;
    v6 = *MEMORY[0x277D19908];
    if (propertiesCopy)
    {
      [(NSMutableDictionary *)chatInfo setObject:propertiesCopy forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v6];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setLastMessage:(id)message
{
  messageCopy = message;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastMessage != messageCopy)
  {
    objc_storeStrong(&self->_lastMessage, message);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setStyle:(unsigned __int8)style
{
  styleCopy = style;
  [(NSRecursiveLock *)self->_lock lock];
  self->_style = styleCopy;
  chatInfo = self->_chatInfo;
  if (styleCopy)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithChar:styleCopy];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19950]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19950]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setState:(int64_t)state
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_state = state;
  chatInfo = self->_chatInfo;
  if (state)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19860]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19860]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (unint64_t)_unreadCount
{
  [(NSRecursiveLock *)self->_lock lock];
  unreadCount = self->_unreadCount;
  [(NSRecursiveLock *)self->_lock unlock];
  return unreadCount;
}

- (void)_setUnreadCount:(unint64_t)count
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_unreadCount = count;
  chatInfo = self->_chatInfo;
  if (count)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19978]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19978]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setIsBlackholed:(BOOL)blackholed
{
  blackholedCopy = blackholed;
  [(NSRecursiveLock *)self->_lock lock];
  self->_isBlackholed = blackholedCopy;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:blackholedCopy];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19830]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)hasScheduledMessage
{
  [(NSRecursiveLock *)self->_lock lock];
  hasScheduledMessage = self->_hasScheduledMessage;
  [(NSRecursiveLock *)self->_lock unlock];
  return hasScheduledMessage;
}

- (void)setHasScheduledMessage:(BOOL)message
{
  messageCopy = message;
  [(NSRecursiveLock *)self->_lock lock];
  self->_hasScheduledMessage = messageCopy;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:messageCopy];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19818]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_setRowID:(int64_t)d
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_rowID = d;
  chatInfo = self->_chatInfo;
  if (d)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19930]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19930]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setIsFiltered:(int64_t)filtered
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_isFiltered = filtered;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:filtered];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19848]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setHasHadSuccessfulQuery:(BOOL)query
{
  queryCopy = query;
  [(NSRecursiveLock *)self->_lock lock];
  self->_hasHadSuccessfulQuery = queryCopy;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:queryCopy];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19820]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setLastMessageTimeStampOnLoad:(int64_t)load
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_lastMessageTimeStampOnLoad = load;
  chatInfo = self->_chatInfo;
  if (load)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:load];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19890]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19890]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setRecovered:(BOOL)recovered
{
  recoveredCopy = recovered;
  [(NSRecursiveLock *)self->_lock lock];
  self->_isRecovered = recoveredCopy;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:recoveredCopy];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19858]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setDeletingIncomingMessages:(BOOL)messages
{
  messagesCopy = messages;
  [(NSRecursiveLock *)self->_lock lock];
  self->_isDeletingIncomingMessages = messagesCopy;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:messagesCopy];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19838]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setPendingIncomingSatelliteMessageCount:(int64_t)count
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_pendingIncomingSatelliteMessageCount = count;
  chatInfo = self->_chatInfo;
  if (count)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D198F8]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D198F8]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)isDownloadingPendingSatelliteMessages
{
  [(NSRecursiveLock *)self->_lock lock];
  isDownloadingPendingSatelliteMessages = self->_isDownloadingPendingSatelliteMessages;
  [(NSRecursiveLock *)self->_lock unlock];
  return isDownloadingPendingSatelliteMessages;
}

- (void)setIsDownloadingPendingSatelliteMessages:(BOOL)messages
{
  messagesCopy = messages;
  [(NSRecursiveLock *)self->_lock lock];
  self->_isDownloadingPendingSatelliteMessages = messagesCopy;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:messagesCopy];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:@"downloadingPendingSatelliteMessages"];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)requestedDowngradeService
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"requestedDowngradeService"];

  return v3;
}

- (void)setRequestedDowngradeService:(id)service
{
  v12[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  requestedDowngradeService = [(IMDChat *)self requestedDowngradeService];
  if (([requestedDowngradeService isEqual:serviceCopy] & 1) == 0)
  {
    v11 = @"requestedDowngradeService";
    null = serviceCopy;
    if (!serviceCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v12[0] = null;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!serviceCopy)
    {
    }

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (NSDate)requestedDowngradeExpirationDate
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"requestedDowngradeExpirationDate"];

  return v3;
}

- (void)setRequestedDowngradeExpirationDate:(id)date
{
  v12[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  requestedDowngradeExpirationDate = [(IMDChat *)self requestedDowngradeExpirationDate];
  if (([requestedDowngradeExpirationDate isEqual:dateCopy] & 1) == 0)
  {
    v11 = @"requestedDowngradeExpirationDate";
    null = dateCopy;
    if (!dateCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v12[0] = null;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!dateCopy)
    {
    }

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (void)_updateCachedParticipants
{
  participants = [(IMDChat *)self participants];
  v6 = [participants arrayByApplyingSelector:sel_handleInfo];

  chatInfo = self->_chatInfo;
  v5 = *MEMORY[0x277D198F0];
  if (v6)
  {
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:v5];
  }

  else
  {
    [(NSMutableDictionary *)chatInfo removeObjectForKey:v5];
  }
}

- (id)participantHandles
{
  participants = [(IMDChat *)self participants];
  v3 = [participants arrayByApplyingSelector:sel_ID];

  return v3;
}

- (void)addParticipants:(id)participants
{
  v45 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy = self;
      v43 = 2112;
      selfCopy2 = participantsCopy;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "Chat: %@  Adding participants: %@", buf, 0x16u);
    }
  }

  if (-[IMDChat style](self, "style") != 45 || (-[IMDChat participants](self, "participants"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count] == 0, v4, v5))
  {
    participants = [(IMDChat *)self participants];
    v8 = [participants mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v30 = [v8 count];
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = participantsCopy;
    v9 = [(IMDChat *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v9)
    {
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          cNContactID = [v12 CNContactID];
          v14 = cNContactID == 0;

          if (v14)
          {
            v15 = +[IMDChatRegistry sharedInstance];
            v16 = [v12 ID];
            v17 = [v15 _cnIDForHandle:v16];
            [v12 setCNContactID:v17];
          }

          v18 = [v8 indexOfObject:v12 matchingComparison:sel_compareIDs_];
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v34 addObject:v12];
            [v8 addObject:v12];
          }

          else
          {
            v19 = [v8 objectAtIndex:v18];
            if (([v19 isBetterDefinedThan:v12] & 1) == 0)
            {
              [v8 replaceObjectAtIndex:v18 withObject:v12];
            }
          }
        }

        v9 = [(IMDChat *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v9);
    }

    [v31 setObject:v34 forKey:@"__kIMDChatParticipantsDidChangeAddedParticipantsKey"];
    [(IMDChat *)self setParticipants:v8];
    participants2 = [(IMDChat *)self participants];
    v21 = [participants2 count] == v30;

    if (!v21)
    {
      [(IMDChat *)self setCloudKitSyncState:0];
      v22 = +[IMDChatStore sharedInstance];
      [v22 storeChat:self];

      mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
      groupID = [(IMDChat *)self groupID];
      [mEMORY[0x277D1AB78] informOfChangedGroupMembership:groupID];

      v25 = +[IMDMessageStore sharedInstance];
      unreadCountController = [v25 unreadCountController];
      guid = [(IMDChat *)self guid];
      participantHandles = [(IMDChat *)self participantHandles];
      [unreadCountController chat:guid participantsUpdated:participantHandles];
    }

    [(IMDChat *)self _updateCachedParticipants];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMDChatParticipantsDidChangeNotification" object:self userInfo:v31];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = participantsCopy;
      v43 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Trying to add participants: %@ to 1:1 chat :%@", buf, 0x16u);
    }
  }
}

- (void)addParticipant:(id)participant
{
  participantCopy = participant;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 invalidatePersonCentricGroupedChatsCache];

  v5 = participantCopy;
  if (participantCopy)
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:participantCopy];
    [(IMDChat *)self addParticipants:v6];

    v5 = participantCopy;
  }
}

- (BOOL)removeParticipants:(id)participants
{
  v43 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v41 = 2112;
      v42 = participantsCopy;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "Chat: %@  Removing participants: %@", buf, 0x16u);
    }
  }

  v4 = +[IMDChatRegistry sharedInstance];
  [v4 invalidatePersonCentricGroupedChatsCache];

  if ([(IMDChat *)self style]== 43)
  {
    participants = [(IMDChat *)self participants];
    if ([participants count] >= 3)
    {
    }

    else
    {
      service = [(IMDChat *)self service];
      v7 = [service supportsCapability:*MEMORY[0x277D1A568]];

      if ((v7 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy2 = self;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Trying to remove participant from a group chat with 2 or less participants %@", buf, 0xCu);
          }
        }

        v9 = 0;
        goto LABEL_28;
      }
    }
  }

  participants2 = [(IMDChat *)self participants];
  v11 = [participants2 mutableCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v30 = [v11 count];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = participantsCopy;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [v11 indexOfObject:*(*(&v34 + 1) + 8 * i) matchingComparison:{sel_compareIDs_, v30}];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v11 objectAtIndex:v17];
          [v12 addObject:v18];

          [v11 removeObjectAtIndex:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  [v32 setObject:v12 forKey:@"__kIMDChatParticipantsDidChangeRemovedParticipantsKey"];
  [(IMDChat *)self setParticipants:v11];
  participants3 = [(IMDChat *)self participants];
  v20 = [participants3 count] == v30;

  if (!v20)
  {
    [(IMDChat *)self setCloudKitSyncState:0];
    v21 = +[IMDChatStore sharedInstance];
    [v21 storeChat:self];

    mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
    groupID = [(IMDChat *)self groupID];
    [mEMORY[0x277D1AB78] informOfChangedGroupMembership:groupID];

    v24 = +[IMDMessageStore sharedInstance];
    unreadCountController = [v24 unreadCountController];
    guid = [(IMDChat *)self guid];
    participantHandles = [(IMDChat *)self participantHandles];
    [unreadCountController chat:guid participantsUpdated:participantHandles];
  }

  [(IMDChat *)self _updateCachedParticipants];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMDChatParticipantsDidChangeNotification" object:self userInfo:v32];

  v9 = 1;
LABEL_28:

  return v9;
}

- (BOOL)removeParticipant:(id)participant
{
  v10 = *MEMORY[0x277D85DE8];
  if (!participant)
  {
    return 0;
  }

  participantCopy = participant;
  v4 = MEMORY[0x277CBEA60];
  participantCopy2 = participant;
  v6 = [v4 arrayWithObjects:&participantCopy count:1];

  v7 = [(IMDChat *)self removeParticipants:v6, participantCopy, v10];
  return v7;
}

- (BOOL)_resetParticipants:(id)participants
{
  v21 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412546;
      *v20 = self;
      *&v20[8] = 2112;
      *&v20[10] = participantsCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Chat: %@  Resetting to participants: %@", &v19, 0x16u);
    }
  }

  v6 = [(IMDChat *)self style]== 43;
  v7 = [participantsCopy count];
  if (!v6)
  {
    if (v7 != 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v12 = +[IMDChatRegistry sharedInstance];
    [v12 invalidatePersonCentricGroupedChatsCache];

    [(IMDChat *)self setParticipants:participantsCopy];
    v13 = +[IMDChatStore sharedInstance];
    [v13 storeChat:self];

    v14 = +[IMDMessageStore sharedInstance];
    unreadCountController = [v14 unreadCountController];
    guid = [(IMDChat *)self guid];
    participantHandles = [(IMDChat *)self participantHandles];
    [unreadCountController chat:guid participantsUpdated:participantHandles];

    [(IMDChat *)self _updateCachedParticipants];
    v11 = 1;
    goto LABEL_14;
  }

  if (v7 > 1)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      style = [(IMDChat *)self style];
      v10 = [participantsCopy count];
      v19 = 67109376;
      *v20 = style;
      *&v20[4] = 2048;
      *&v20[6] = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Rejecting participant reset, style is %c but participant count is %llu", &v19, 0x12u);
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)recoverParticipantsIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self style]== 45)
  {
    participants = [(IMDChat *)self participants];
    v4 = [participants count];

    if (!v4)
    {
      chatIdentifier = [(IMDChat *)self chatIdentifier];
      if ([chatIdentifier length])
      {
        v6 = [[IMDHandle alloc] initWithID:chatIdentifier unformattedID:0 countryCode:0];
        [(IMDChat *)self addParticipant:v6];
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v8 = 138412546;
            selfCopy2 = v6;
            v10 = 2112;
            selfCopy = self;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "1:1 chat was missing participant, re-added %@ to %@", &v8, 0x16u);
          }
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_13:

          return;
        }

        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_INFO))
        {
          v8 = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_22B4CC000, &v6->super, OS_LOG_TYPE_INFO, "Cannot recover participant due to empty chatIdentifier for chat: %@", &v8, 0xCu);
        }
      }

      goto LABEL_13;
    }
  }
}

- (BOOL)hasMatchingParticipantHandles:(id)handles
{
  v4 = MEMORY[0x277CBEB98];
  handlesCopy = handles;
  participantHandles = [(IMDChat *)self participantHandles];
  v7 = [v4 setWithArray:participantHandles];

  v8 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];

  LOBYTE(handlesCopy) = [v7 isEqualToSet:v8];
  return handlesCopy;
}

- (IMDService)service
{
  account = [(IMDChat *)self account];
  service = [account service];

  return service;
}

- (IMDServiceSession)serviceSession
{
  account = [(IMDChat *)self account];
  session = [account session];

  return session;
}

- (NSString)businessName
{
  if ([(IMDChat *)self isChatBot])
  {
    properties = [(IMDChat *)self properties];
    v4 = [properties objectForKeyedSubscript:*MEMORY[0x277D19770]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sortedParticipantIDHashForParticipants:(id)participants usesPersonCentricID:(BOOL)d
{
  dCopy = d;
  v26 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = participantsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        personCentricID = [v12 personCentricID];
        v14 = [personCentricID length];

        if (v14)
        {
          v15 = !dCopy;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = [v12 ID];

          if (!v16)
          {
            continue;
          }

          personCentricID2 = [v12 ID];
        }

        else
        {
          personCentricID2 = [v12 personCentricID];
        }

        v18 = personCentricID2;
        [v6 addObject:personCentricID2];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = IMSHA1HashFromStrings();

  return v19;
}

- (int64_t)compareBySequenceNumberAndDateDescending:(id)descending
{
  descendingCopy = descending;
  lastScheduledMessageCreatedDate = [(IMDChat *)self lastScheduledMessageCreatedDate];
  lastScheduledMessageCreatedDate2 = [descendingCopy lastScheduledMessageCreatedDate];
  lastMessage = [(IMDChat *)self lastMessage];
  time = [lastMessage time];
  if (lastScheduledMessageCreatedDate)
  {
    v9 = [lastScheduledMessageCreatedDate laterDate:time];

    time = v9;
  }

  lastMessage2 = [descendingCopy lastMessage];
  time2 = [lastMessage2 time];
  if (lastScheduledMessageCreatedDate2)
  {
    v12 = [lastScheduledMessageCreatedDate2 laterDate:time2];

    time2 = v12;
  }

  if (time2 && time)
  {
    goto LABEL_7;
  }

  if (time2 | time)
  {
    if (!time2)
    {
      v13 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(descendingCopy, "lastMessageTimeStampOnLoad")}];
      time2 = v13;
LABEL_8:
      v14 = [v13 compare:time];
      if (v14)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (!time)
    {
      time = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{-[IMDChat lastMessageTimeStampOnLoad](self, "lastMessageTimeStampOnLoad")}];
LABEL_7:
      v13 = time2;
      goto LABEL_8;
    }
  }

  else
  {
    lastMessageTimeStampOnLoad = [descendingCopy lastMessageTimeStampOnLoad];
    if (lastMessageTimeStampOnLoad != [(IMDChat *)self lastMessageTimeStampOnLoad])
    {
      lastMessageTimeStampOnLoad2 = [descendingCopy lastMessageTimeStampOnLoad];
      time = 0;
      time2 = 0;
      if (lastMessageTimeStampOnLoad2 < [(IMDChat *)self lastMessageTimeStampOnLoad])
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_23;
    }

    time = 0;
    time2 = 0;
  }

LABEL_15:
  lastMessage3 = [(IMDChat *)self lastMessage];
  messageID = [lastMessage3 messageID];

  lastMessage4 = [descendingCopy lastMessage];
  messageID2 = [lastMessage4 messageID];

  v20 = -1;
  if (messageID2 >= messageID)
  {
    v20 = 1;
  }

  if (messageID2 == messageID)
  {
    v14 = 0;
  }

  else
  {
    v14 = v20;
  }

LABEL_23:

  return v14;
}

- (NSDictionary)chatProperties
{
  v2 = [(IMDChat *)self copyDictionaryRepresentation:0];

  return v2;
}

- (id)dictionaryRepresentationIncludingLastMessage
{
  v2 = [(IMDChat *)self copyDictionaryRepresentation:1];

  return v2;
}

- (id)copyDictionaryRepresentation:(BOOL)representation
{
  representationCopy = representation;
  accountID = [(IMDChat *)self accountID];
  v6 = [accountID length];

  if (v6)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v7 = [(NSMutableDictionary *)self->_chatInfo mutableCopy];
    if (representationCopy)
    {
      lastMessage = [(IMDChat *)self lastMessage];
      copyDictionaryRepresentation = [lastMessage copyDictionaryRepresentation];

      [v7 setObject:copyDictionaryRepresentation forKeyedSubscript:*MEMORY[0x277D19888]];
    }

    lastMessage2 = [(IMDChat *)self lastMessage];
    time = [lastMessage2 time];

    if (time)
    {
      v12 = MEMORY[0x277CCABB0];
      lastMessage3 = [(IMDChat *)self lastMessage];
      time2 = [lastMessage3 time];
      [time2 timeIntervalSince1970];
      v15 = [v12 numberWithDouble:?];
      [v7 setObject:v15 forKeyedSubscript:*MEMORY[0x277D198C0]];
    }

    personCentricID = [(IMDChat *)self personCentricID];
    [v7 setObject:personCentricID forKeyedSubscript:*MEMORY[0x277D19900]];

    [(NSRecursiveLock *)self->_lock unlock];
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDChat unreadCount](self, "unreadCount")}];
      [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x277D19978]];
    }
  }

  else
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D60CC();
    }

    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6100(self);
    }

    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6188(self);
    }

    return 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(IMDChat *)self copyDictionaryRepresentation:0];

  return v2;
}

- (void)_updateLastMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Chat: %@   Updating last message: %@", &v13, 0x16u);
    }
  }

  if ([(IMDChat *)self isGroupChat])
  {
    lastMessage = [(IMDChat *)self lastMessage];
    if (!lastMessage)
    {
      if ([messageCopy isFromMe])
      {
        goto LABEL_14;
      }

      sender = [messageCopy sender];
      lastMessage = [sender _bestGuessURI];

      lastAddressedLocalHandle = [(IMDChat *)self lastAddressedLocalHandle];
      _bestGuessURI = [lastAddressedLocalHandle _bestGuessURI];

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v13 = 138412802;
          selfCopy = lastMessage;
          v15 = 2112;
          v16 = _bestGuessURI;
          v17 = 2112;
          selfCopy2 = self;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEBUG, "This is the first incoming message for this group chat. We will kick off a background request in case others in the chat had previously set one before this device was added. toIdentifier: %@, fromIdentifier: %@, chat: %@", &v13, 0x20u);
        }
      }

      serviceSession = [(IMDChat *)self serviceSession];
      [serviceSession requestTranscriptBackground:self toIdentifier:lastMessage fromIdentifier:_bestGuessURI messageIsFromStorage:0];
    }
  }

LABEL_14:
  [(IMDChat *)self setLastMessage:messageCopy];
  if ([messageCopy isFromMe])
  {
    time = [messageCopy time];
    [(IMDChat *)self setLastSentMessageDate:time];
  }
}

- (BOOL)updateProperties:(id)properties
{
  v21 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if ([propertiesCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = propertiesCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Chat: %@   Property update: %@", &v17, 0x16u);
      }
    }

    [(NSRecursiveLock *)self->_lock lock];
    if ([(NSDictionary *)self->_properties count])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_properties];
    }

    else
    {
      v6 = 0;
    }

    Mutable = [(NSDictionary *)self->_properties mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    [(__CFDictionary *)Mutable addEntriesFromDictionary:propertiesCopy];
    null = [MEMORY[0x277CBEB68] null];
    v10 = [(__CFDictionary *)Mutable allKeysForObject:null];

    if ([v10 count])
    {
      [(__CFDictionary *)Mutable removeObjectsForKeys:v10];
    }

    v7 = [MEMORY[0x277CCAC58] propertyList:Mutable isValidForFormat:200];
    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v17 = 138412290;
          selfCopy = Mutable;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "     Resulting properties: %@", &v17, 0xCu);
        }
      }

      if (v6 && self->_properties)
      {
        v12 = [v6 isEqualToDictionary:Mutable];
        v13 = Mutable ? v12 : 0;
        if (v13)
        {
          v7 = 0;
LABEL_34:
          [(NSRecursiveLock *)self->_lock unlock];

          goto LABEL_35;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEBUG, "     => Saving changes", &v17, 2u);
        }
      }

      [(IMDChat *)self setProperties:Mutable];
      v14 = +[IMDChatStore sharedInstance];
      [v14 storeChat:self];
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D6210();
      }
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_35:

  return v7;
}

- (NSDictionary)syncedProperties
{
  properties = [(IMDChat *)self properties];
  v3 = [properties mutableCopy];

  [v3 removeObjectForKey:*MEMORY[0x277D19968]];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)updateProperties:(id)properties shouldBroadcast:(BOOL)broadcast
{
  broadcastCopy = broadcast;
  v6 = [(IMDChat *)self updateProperties:properties];
  if (v6 && broadcastCopy)
  {
    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }

  return v6;
}

- (BOOL)supportsEncryption
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x277D19958]];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setSupportsEncryption:(BOOL)encryption
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D19958];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:encryption];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(IMDChat *)self updateProperties:v5 shouldBroadcast:1];
}

- (int64_t)spamDetectionSource
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x277D19948]];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setSpamDetectionSource:(int64_t)source
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D19948];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(IMDChat *)self updateProperties:v5];
}

- (void)updateBrandLogo:(id)logo transferGuid:(id)guid
{
  if (logo && guid)
  {
    guidCopy = guid;
    logoCopy = logo;
    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    [broadcaster chat:guid brandLogoUpdated:logoCopy transferGuid:guidCopy];
  }
}

- (NSString)incomingTranslatedMessageIdentifier
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x277D198B8]];

  return v3;
}

- (void)setIncomingTranslatedMessageIdentifier:(id)identifier
{
  v7[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = *MEMORY[0x277D198B8];
    v7[0] = identifierCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(IMDChat *)self updateProperties:v5 shouldBroadcast:1];
  }
}

- (void)broadcastTranscriptBackgroundChanges
{
  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];

  broadcaster2 = [(IMDChat *)self broadcaster];
  chatIdentifier = [(IMDChat *)self chatIdentifier];
  style = [(IMDChat *)self style];
  account = [(IMDChat *)self account];
  accountID = [account accountID];
  [broadcaster2 transcriptBackgroundUpdatedForChatIdentifier:chatIdentifier style:style account:accountID userInfo:0];
}

- (id)generateNewGroupID
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMDChat *)self guid];
    style = [(IMDChat *)self style];
    state = [(IMDChat *)self state];
    displayName = [(IMDChat *)self displayName];
    chatIdentifier = [(IMDChat *)self chatIdentifier];
    rowID = [(IMDChat *)self rowID];
    originalGroupID = [(IMDChat *)self originalGroupID];
    isFiltered = [(IMDChat *)self isFiltered];
    cloudKitSyncState = [(IMDChat *)self cloudKitSyncState];
    cloudKitRecordID = [(IMDChat *)self cloudKitRecordID];
    isRecovered = [(IMDChat *)self isRecovered];
    v24 = ([(IMDChat *)self repairHistory]>> 1) & 1;
    v23 = ([(IMDChat *)self repairHistory]>> 2) & 1;
    v22 = ([(IMDChat *)self repairHistory]>> 3) & 1;
    v21 = ([(IMDChat *)self repairHistory]>> 4) & 1;
    v20 = [(IMDChat *)self repairHistory]& 1;
    v19 = ([(IMDChat *)self repairHistory]>> 5) & 1;
    domainIdentifiers = [(IMDChat *)self domainIdentifiers];
    participants = [(IMDChat *)self participants];
    v11 = [participants __imArrayByApplyingBlock:&unk_283F1A3A8];
    *buf = 134222850;
    selfCopy = self;
    v33 = 2112;
    v34 = guid;
    v35 = 1024;
    v36 = style;
    v37 = 1024;
    v38 = state;
    v39 = 2112;
    v40 = displayName;
    v41 = 2112;
    v42 = chatIdentifier;
    v43 = 2048;
    v44 = rowID;
    v45 = 2112;
    v46 = originalGroupID;
    v47 = 1024;
    v48 = isFiltered;
    v49 = 2048;
    v50 = cloudKitSyncState;
    v51 = 2112;
    v52 = cloudKitRecordID;
    v53 = 1024;
    v54 = isRecovered;
    v55 = 1024;
    v56 = v24;
    v57 = 1024;
    v58 = v23;
    v59 = 1024;
    v60 = v22;
    v61 = 1024;
    v62 = v21;
    v63 = 1024;
    v64 = v20;
    v65 = 1024;
    v66 = v19;
    v67 = 2112;
    v68 = domainIdentifiers;
    v69 = 2112;
    v70 = v11;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, " !! About to generate a new group ID for chat: [IMDChat: %p  GUID: %@  Style: %c  State: %d  Display Name: %@  Identifier: %@  Row ID: %lld  originalGroupID: %@  isFiltered: %d  cKSate:%ld  cloudKitRecordID: %@  isRecovered: %{BOOL}d  repairHistory: (Repaired Participant For Chat ID Handle ID Mismatch: %{BOOL}d  Repaired Blank Service Name: %{BOOL}d  Repaired Chat Identifier: %{BOOL}d  Repaired Participant V2: %{BOOL}d  Repaired GUID: %{BOOL}d  Repaired GUID V2: %{BOOL}d)  Domain Identifiers: %@  Participants: %@]", buf, 0xA2u);
  }

  if ([(IMDChat *)self style]== 45 || ![(IMDChat *)self isUnnamedChat])
  {
    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = stringGUID;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "   Generating new group ID: %@", buf, 0xCu);
    }
  }

  else
  {
    participants2 = [(IMDChat *)self participants];
    lastAddressedLocalHandle = [(IMDChat *)self lastAddressedLocalHandle];
    stringGUID = _IMDHashParticipants(participants2, lastAddressedLocalHandle);

    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      participants3 = [(IMDChat *)self participants];
      v17 = [participants3 __imArrayByApplyingBlock:&unk_283F1A3C8];
      *buf = 138412546;
      selfCopy = stringGUID;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "   Generating new group ID %@  using IDs = %@", buf, 0x16u);
    }
  }

  return stringGUID;
}

- (BOOL)isUnnamedChat
{
  displayName = [(IMDChat *)self displayName];
  if (displayName)
  {
    displayName2 = [(IMDChat *)self displayName];
    v5 = [displayName2 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)updateEngramID:(id)d
{
  dCopy = d;
  engramID = [(IMDChat *)self engramID];
  v5 = IMSharedHelperAreObjectsLogicallySame();

  if ((v5 & 1) == 0)
  {
    [(IMDChat *)self setEngramID:dCopy];
    [(IMDChat *)self storeAndBroadcastChatChanges];
    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    [broadcaster chat:guid engramIDUpdated:dCopy];
  }
}

- (void)updateEngroupCreationDate:(int64_t)date
{
  if (![(IMDChat *)self engroupCreationDate])
  {
    properties = [(IMDChat *)self properties];
    v6 = [properties mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v10 = v8;

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:date];
    [v10 setObject:v9 forKey:@"EngroupCreationDateKey"];

    [(IMDChat *)self updateProperties:v10];
  }
}

- (void)updateLastReadMessageTimeStampIfNeeded:(int64_t)needed
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_lastReadMessageTimeStamp < needed)
  {
    v5 = IMDChatLogHandle(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastReadMessageTimeStamp];
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:needed];
      chatIdentifier = [(IMDChat *)self chatIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = chatIdentifier;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Updating lastReadMessageTimeStamp from: %@ to: %@ for chat: %@", &v9, 0x20u);
    }

    [(IMDChat *)self setLastReadMessageTimeStamp:needed];
    [(IMDChat *)self setCloudKitSyncState:0];
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }
}

- (void)updateServerChangeToken:(id)token
{
  v17 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  serverChangeToken = [(IMDChat *)self serverChangeToken];
  v6 = IMSharedHelperAreObjectsLogicallySame();

  if ((v6 & 1) == 0)
  {
    v8 = IMDChatLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serverChangeToken2 = [(IMDChat *)self serverChangeToken];
      chatIdentifier = [(IMDChat *)self chatIdentifier];
      v11 = 138412802;
      v12 = serverChangeToken2;
      v13 = 2112;
      v14 = tokenCopy;
      v15 = 2112;
      v16 = chatIdentifier;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating record change tag (etag) from: %@ to: %@ for chat: %@", &v11, 0x20u);
    }

    [(IMDChat *)self setServerChangeToken:tokenCopy];
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }
}

- (void)updateCloudKitSyncState:(int64_t)state
{
  if (self->_cloudKitSyncState != state)
  {
    [(IMDChat *)self setCloudKitSyncState:?];

    [(IMDChat *)self storeAndBroadcastChatChanges];
  }
}

- (void)updateOriginalGroupID:(id)d
{
  dCopy = d;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    [(IMDChat *)self setOriginalGroupID:dCopy];
    [(IMDChat *)self storeAndBroadcastChatChanges];
    v4 = +[IMDMessageStore sharedInstance];
    unreadCountController = [v4 unreadCountController];
    guid = [(IMDChat *)self guid];
    [unreadCountController chat:guid originalGroupIDUpdated:dCopy];
  }
}

- (void)updateCloudKitRecordID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cloudKitRecordID = [(IMDChat *)self cloudKitRecordID];
  v6 = IMSharedHelperAreObjectsLogicallySame();

  if ((v6 & 1) == 0)
  {
    v8 = IMDChatLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cloudKitRecordID2 = [(IMDChat *)self cloudKitRecordID];
      chatIdentifier = [(IMDChat *)self chatIdentifier];
      v11 = 138412802;
      v12 = cloudKitRecordID2;
      v13 = 2112;
      v14 = dCopy;
      v15 = 2112;
      v16 = chatIdentifier;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating ck record ID from: %@ to: %@ for chat: %@", &v11, 0x20u);
    }

    [(IMDChat *)self setCloudKitRecordID:dCopy];
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }
}

- (void)resetCKSyncState
{
  v3 = IMDChatLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "resetting CK Sync state", v4, 2u);
  }

  [(IMDChat *)self setCloudKitSyncState:0];
  [(IMDChat *)self setServerChangeToken:0];
  [(IMDChat *)self setCloudKitRecordID:0];
  [(IMDChat *)self storeAndBroadcastChatChanges];
}

- (void)updateLastAddressedHandle:(id)handle forceUpdate:(BOOL)update
{
  updateCopy = update;
  v28 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (updateCopy || ([(IMDChat *)self lastAddressedLocalHandle], v7 = objc_claimAutoreleasedReturnValue(), v8 = IMSharedHelperAreObjectsLogicallySame(), v7, (v8 & 1) == 0))
  {
    if (([handleCopy isEqualToIgnoringCase:*MEMORY[0x277D19478]] & 1) == 0)
    {
      HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
      if (handleCopy || (HasMultipleSubscriptions & 1) != 0 || ([0 trimmedString], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
      {
        v12 = IMDChatLogHandle(HasMultipleSubscriptions);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          lastAddressedLocalHandle = [(IMDChat *)self lastAddressedLocalHandle];
          v14 = @"NO";
          v22 = 138412802;
          v23 = lastAddressedLocalHandle;
          v24 = 2112;
          if (updateCopy)
          {
            v14 = @"YES";
          }

          v25 = handleCopy;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updating last addressed handle ID from %@ to %@. force update %@", &v22, 0x20u);
        }

        [(IMDChat *)self setLastAddressedLocalHandle:handleCopy];
        v15 = +[IMDChatStore sharedInstance];
        [v15 storeChat:self];

        broadcaster = [(IMDChat *)self broadcaster];
        guid = [(IMDChat *)self guid];
        [broadcaster chat:guid lastAddressedHandleUpdated:handleCopy];

        [(IMDChat *)self storeAndBroadcastChatChanges];
        v18 = +[IMDMessageStore sharedInstance];
        unreadCountController = [v18 unreadCountController];
        guid2 = [(IMDChat *)self guid];
        lastAddressedLocalHandle2 = [(IMDChat *)self lastAddressedLocalHandle];
        [unreadCountController chat:guid2 lastAddressedHandleIDUpdated:lastAddressedLocalHandle2];
      }
    }
  }
}

- (void)updateLastAddressedSIMID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    lastAddressedSIMID = [(IMDChat *)self lastAddressedSIMID];
    v6 = IMSharedHelperAreObjectsLogicallySame();

    if ((v6 & 1) == 0)
    {
      v8 = IMDChatLogHandle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        lastAddressedSIMID2 = [(IMDChat *)self lastAddressedSIMID];
        v17 = 138412546;
        v18 = lastAddressedSIMID2;
        v19 = 2112;
        v20 = dCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating last addressed sim ID from %@ to %@", &v17, 0x16u);
      }

      [(IMDChat *)self setLastAddressedSIMID:dCopy];
      v10 = +[IMDChatStore sharedInstance];
      [v10 storeChat:self];

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      [broadcaster chat:guid lastAddressedSIMIDUpdated:dCopy];

      [(IMDChat *)self storeAndBroadcastChatChanges];
      v13 = +[IMDMessageStore sharedInstance];
      unreadCountController = [v13 unreadCountController];
      guid2 = [(IMDChat *)self guid];
      lastAddressedSIMID3 = [(IMDChat *)self lastAddressedSIMID];
      [unreadCountController chat:guid2 lastAddressedSIMIDUpdated:lastAddressedSIMID3];
    }
  }
}

- (void)updateLastAddressedHandle:(id)handle forceUpdateHandle:(BOOL)updateHandle lastAddressedSIMID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  if (updateHandle)
  {
    if ([handleCopy isEqualToIgnoringCase:*MEMORY[0x277D19478]])
    {
      if (updateHandle)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
    if (!handleCopy && (HasMultipleSubscriptions & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    lastAddressedLocalHandle = [(IMDChat *)self lastAddressedLocalHandle];
    if (IMSharedHelperAreObjectsLogicallySame() & 1) != 0 || ([handleCopy isEqualToIgnoringCase:*MEMORY[0x277D19478]])
    {
LABEL_7:

LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }

    v29 = IMSharedHelperDeviceHasMultipleSubscriptions();

    if (!handleCopy && (v29 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v30 = IMDChatLogHandle(HasMultipleSubscriptions);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    lastAddressedLocalHandle2 = [(IMDChat *)self lastAddressedLocalHandle];
    v32 = 138412546;
    v33 = lastAddressedLocalHandle2;
    v34 = 2112;
    v35 = handleCopy;
    _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "Updating last addressed handle ID from %@ to %@", &v32, 0x16u);
  }

  [(IMDChat *)self setLastAddressedLocalHandle:handleCopy];
  v11 = 1;
LABEL_9:
  if ([dCopy length])
  {
    lastAddressedSIMID = [(IMDChat *)self lastAddressedSIMID];
    v13 = IMSharedHelperAreObjectsLogicallySame();

    if ((v13 & 1) == 0)
    {
      v22 = IMDChatLogHandle(v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        lastAddressedSIMID2 = [(IMDChat *)self lastAddressedSIMID];
        v32 = 138412546;
        v33 = lastAddressedSIMID2;
        v34 = 2112;
        v35 = dCopy;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Updating last addressed sim ID from %@ to %@", &v32, 0x16u);
      }

      [(IMDChat *)self setLastAddressedSIMID:dCopy];
      v24 = +[IMDChatStore sharedInstance];
      [v24 storeChat:self];

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      if (v11)
      {
        [broadcaster chat:guid lastAddressedHandleUpdated:handleCopy lastAddressedSIMIDUpdated:dCopy];

        [(IMDChat *)self storeAndBroadcastChatChanges];
        v18 = +[IMDMessageStore sharedInstance];
        unreadCountController = [v18 unreadCountController];
        guid2 = [(IMDChat *)self guid];
        lastAddressedLocalHandle3 = [(IMDChat *)self lastAddressedLocalHandle];
        lastAddressedSIMID3 = [(IMDChat *)self lastAddressedSIMID];
        [unreadCountController chat:guid2 lastAddressedHandleIDUpdated:lastAddressedLocalHandle3 lastAddressedSIMIDUpdated:lastAddressedSIMID3];
      }

      else
      {
        [broadcaster chat:guid lastAddressedSIMIDUpdated:dCopy];

        [(IMDChat *)self storeAndBroadcastChatChanges];
        v18 = +[IMDMessageStore sharedInstance];
        unreadCountController = [v18 unreadCountController];
        guid2 = [(IMDChat *)self guid];
        lastAddressedLocalHandle3 = [(IMDChat *)self lastAddressedSIMID];
        [unreadCountController chat:guid2 lastAddressedSIMIDUpdated:lastAddressedLocalHandle3];
      }

      goto LABEL_21;
    }
  }

  if (v11)
  {
    v15 = +[IMDChatStore sharedInstance];
    [v15 storeChat:self];

    broadcaster2 = [(IMDChat *)self broadcaster];
    guid3 = [(IMDChat *)self guid];
    [broadcaster2 chat:guid3 lastAddressedHandleUpdated:handleCopy];

    [(IMDChat *)self storeAndBroadcastChatChanges];
    v18 = +[IMDMessageStore sharedInstance];
    unreadCountController = [v18 unreadCountController];
    guid2 = [(IMDChat *)self guid];
    lastAddressedLocalHandle3 = [(IMDChat *)self lastAddressedLocalHandle];
    [unreadCountController chat:guid2 lastAddressedHandleIDUpdated:lastAddressedLocalHandle3];
LABEL_21:
  }
}

- (void)updateDisplayName:(id)name sender:(id)sender
{
  v23[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  senderCopy = sender;
  if (self->_displayName != nameCopy)
  {
    if (self->_style != 45 || [(IMDChat *)self isBusinessChat]|| [(IMDChat *)self isStewieChat])
    {
      goto LABEL_8;
    }

    serviceName = [(IMDChat *)self serviceName];
    if ([serviceName isEqualToString:*MEMORY[0x277D1A608]])
    {

LABEL_8:
      v10 = +[IMDChatRegistry sharedInstance];
      [v10 invalidatePersonCentricGroupedChatsCache];

      [(IMDChat *)self setDisplayName:nameCopy];
      [(IMDChat *)self setCloudKitSyncState:0];
      v11 = +[IMDChatStore sharedInstance];
      [v11 storeChat:self];

      v12 = +[IMDChatVocabularyUpdater sharedInstance];
      [v12 updateVocabularyForRenamedChat:self completionHandler:0];

      [(IMDChat *)self storeAndBroadcastChatChanges];
      v13 = +[IMDChatRegistry sharedInstance];
      [v13 updateFaceTimeGroupName:self];

      mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
      groupID = [(IMDChat *)self groupID];
      [mEMORY[0x277D1AB78] informOfChangedGroupDisplayName:groupID];

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      personCentricID = [(IMDChat *)self personCentricID];
      [broadcaster chat:guid chatPersonCentricID:personCentricID displayNameUpdated:nameCopy sender:senderCopy];

      participants = [(IMDChat *)self participants];
      v20 = [participants __imArrayByApplyingBlock:&unk_283F1A3E8];

      v21 = +[IMDChatRegistry sharedInstance];
      v23[0] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [v21 _remergeChatsWithParticipantIDsSets:v22];

      goto LABEL_9;
    }

    isMergedBusinessThread = [(IMDChat *)self isMergedBusinessThread];

    if (isMergedBusinessThread)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)updateIsFiltered:(int64_t)filtered fromContact:(BOOL)contact
{
  contactCopy = contact;
  v63[1] = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self isFiltered]== filtered)
  {
    return;
  }

  isFiltered = [(IMDChat *)self isFiltered];
  isFiltered2 = [(IMDChat *)self isFiltered];
  [(IMDChat *)self setIsFiltered:filtered];
  if (filtered || !isFiltered2 || contactCopy || (v62 = *MEMORY[0x277D198D0], [MEMORY[0x277CBEAA8] now], v9 = objc_claimAutoreleasedReturnValue(), v63[0] = v9, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v63, &v62, 1), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[IMDChat updateProperties:](self, "updateProperties:", v10), v10, v9, !v11))
  {
    v12 = +[IMDChatStore sharedInstance];
    [v12 storeChat:self];
  }

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  [broadcaster chat:guid isFilteredUpdated:filtered];

  v15 = +[IMDMessageStore sharedInstance];
  unreadCountController = [v15 unreadCountController];
  guid2 = [(IMDChat *)self guid];
  [unreadCountController chat:guid2 isFilteredUpdated:filtered];

  if (isFiltered == 2)
  {
    v19 = IMDChatLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      guid3 = [(IMDChat *)self guid];
      *buf = 138412290;
      v61 = guid3;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Indexing with Spotlight as chat was moved out of Junk. Chat with guid: %@", buf, 0xCu);
    }

    [(IMDChat *)self _indexChatAndMessagesToSpotlightWithReason:1002];
  }

  else if (filtered == 2)
  {
    v21 = IMDChatLogHandle(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      guid4 = [(IMDChat *)self guid];
      *buf = 138412290;
      v61 = guid4;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Delete from Spotlight as chat was moved to Junk. Chat with guid: %@", buf, 0xCu);
    }

    guid5 = [(IMDChat *)self guid];
    IMDCoreSpotlightDeleteChatGUID();

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

    if (!isIntroductionsEnabled)
    {
      goto LABEL_28;
    }

    v26 = +[IMDChatRegistry sharedInstance];
    guid6 = [(IMDChat *)self guid];
    v59 = guid6;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    [v26 updatePendingReviewForChatsWithGUIDs:v28 pendingReview:0];
    goto LABEL_27;
  }

  if (filtered)
  {
    goto LABEL_28;
  }

  v29 = objc_alloc(MEMORY[0x277D18ED8]);
  guid7 = [(IMDChat *)self guid];
  v31 = [v29 initWithAssociatedChatGUID:guid7];

  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC28]];
  v28 = IMBalloonExtensionIDWithSuffix();
  v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F78], v28];
  v34 = MEMORY[0x277CCA920];
  v50 = v33;
  v51 = v32;
  v58[0] = v32;
  v58[1] = v33;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v36 = [v34 andPredicateWithSubpredicates:v35];
  [v31 setPredicate:v36];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = v31;
  v37 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    do
    {
      v40 = 0;
      do
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v26);
        }

        v41 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v52 + 1) + 8 * v40), 0, 1);
        if (![v41 type])
        {
          mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
          [mEMORY[0x277D1AB78] informKnownSenderSentMessage:v41];
        }

        ++v40;
      }

      while (v38 != v40);
      v38 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v38);
  }

  guid6 = v51;
LABEL_27:

LABEL_28:
  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled2 = [mEMORY[0x277D1A9B8]2 isIntroductionsEnabled];

  if (isIntroductionsEnabled2)
  {
    isFilterUnknownSendersEnabled = [MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled];
    if (!filtered)
    {
      if (isFilterUnknownSendersEnabled)
      {
        v46 = +[IMDChatRegistry sharedInstance];
        guid8 = [(IMDChat *)self guid];
        v56 = guid8;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        [v46 updatePendingReviewForChatsWithGUIDs:v48 pendingReview:0];
      }
    }
  }

  v49 = IMDChatLogHandle(isFilterUnknownSendersEnabled);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v61) = filtered;
    _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "Updating isFiltered to: %d", buf, 8u);
  }
}

- (void)_indexChatAndMessagesToSpotlightWithReason:(int64_t)reason
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = IMDChatLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMDChat *)self guid];
    *buf = 138412290;
    v24 = guid;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Index chat to Spotlight as it was moved out of Junk. Chat with guid: %@", buf, 0xCu);
  }

  guid2 = [(IMDChat *)self guid];
  IMDCoreSpotlightAddChatGUID();

  [(IMDChat *)self guid];
  v7 = IMDChatRecordCopyChatForGUID();
  v8 = IMDChatRecordCopyMessagesWithLimit();
  v9 = IMDChatLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    *buf = 134217984;
    v24 = v10;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Starting indexing %llu messages to Spotlight", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        guid3 = [*(*(&v18 + 1) + 8 * i) guid];
        if (guid3)
        {
          IMDCoreSpotlightAddMessageGUID();
        }

        else
        {
          v17 = IMDChatLogHandle(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Failed to find messageGUID for spotlight", buf, 2u);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)updateIsBlackholed:(BOOL)blackholed
{
  blackholedCopy = blackholed;
  v39[1] = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self isBlackholed]!= blackholed)
  {
    if (!blackholedCopy)
    {
      mEMORY[0x277D1AA78] = [MEMORY[0x277D1AA78] sharedInstance];
      [mEMORY[0x277D1AA78] acquireAssertionToUnsuspendProcess];
    }

    [(IMDChat *)self setIsBlackholed:blackholedCopy];
    v5 = +[IMDChatStore sharedInstance];
    [v5 storeChat:self];

    v6 = +[IMDBroadcastController sharedProvider];
    v26 = [v6 broadcasterForChatListenersUsingBlackholeRegistry:blackholedCopy];

    v7 = +[IMDBroadcastController sharedProvider];
    v27 = [v7 broadcasterForChatListenersUsingBlackholeRegistry:blackholedCopy ^ 1];

    guid = [(IMDChat *)self guid];
    [v27 leftChat:guid];

    v9 = +[IMDMessageStore sharedInstance];
    unreadCountController = [v9 unreadCountController];
    guid2 = [(IMDChat *)self guid];
    [unreadCountController chat:guid2 isBlackholedUpdated:blackholedCopy];

    if (blackholedCopy)
    {
      chatIdentifier = [(IMDChat *)self chatIdentifier];
      dictionaryRepresentationIncludingLastMessage = [(IMDChat *)self dictionaryRepresentationIncludingLastMessage];
      v38 = dictionaryRepresentationIncludingLastMessage;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      [v26 chatLoadedWithChatIdentifier:chatIdentifier chats:v14];
    }

    else
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMChatPreviouslyBlackholedChatHasBeenLoaded", 0, 0, 1u);
      chatIdentifier = [(IMDChat *)self chatIdentifier];
      dictionaryRepresentationIncludingLastMessage = [(IMDChat *)self dictionaryRepresentationIncludingLastMessage];
      v39[0] = dictionaryRepresentationIncludingLastMessage;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      [v26 previouslyBlackholedChatLoadedWithChatIdentifier:chatIdentifier chats:v14];
    }

    v16 = +[IMDChatRegistry sharedInstance];
    [v16 checkBlackholedChatsExistAfterUpdatingChatWithAdd:blackholedCopy];

    [(IMDChat *)self guid];
    v25 = IMDChatRecordCopyChatForGUID();
    if (!blackholedCopy)
    {
      v36 = @"restoredFromBlackhole";
      v37 = MEMORY[0x277CBEC38];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [(IMDChat *)self updateProperties:v17];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = IMDChatRecordCopyMessagesWithLimit();
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v19)
      {
        v20 = *v30;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v18);
            }

            guid3 = [*(*(&v29 + 1) + 8 * i) guid];
            if (guid3)
            {
              IMDCoreSpotlightAddMessageGUID();
            }

            else if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109120;
                v34 = blackholedCopy;
                _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEBUG, "Failed to find messageGUID for spotlight reindexing when isBlackholed set to (expecting 0): %d", buf, 8u);
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v19);
      }

      _chatRegistry = [(IMDChat *)self _chatRegistry];
      [_chatRegistry updateLastMessageForChat:self hintMessage:0];
    }
  }
}

- (void)updateHasCancellableScheduledMessage:(BOOL)message
{
  messageCopy = message;
  v18 = *MEMORY[0x277D85DE8];
  hasScheduledMessage = [(IMDChat *)self hasScheduledMessage];
  if (hasScheduledMessage != messageCopy)
  {
    v6 = IMDChatLogHandle(hasScheduledMessage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      guid = [(IMDChat *)self guid];
      v14 = 67109378;
      v15 = messageCopy;
      v16 = 2112;
      v17 = guid;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Updating hasScheduledMessage to: %{BOOL}d for chat: %@", &v14, 0x12u);
    }

    [(IMDChat *)self setHasScheduledMessage:messageCopy];
    v8 = +[IMDChatStore sharedInstance];
    [v8 storeChat:self];

    v9 = [(IMDChat *)self copyDictionaryRepresentation:0];
    broadcaster = [(IMDChat *)self broadcaster];
    guid2 = [(IMDChat *)self guid];
    [broadcaster chat:guid2 updated:v9];

    v13 = IMDChatLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Updated hasScheduledMessage to: %{BOOL}d", &v14, 8u);
    }
  }
}

- (void)_updateIsRecovered:(BOOL)recovered silently:(BOOL)silently
{
  recoveredCopy = recovered;
  v15 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self isRecovered]!= recovered)
  {
    v7 = [(IMDChat *)self setRecovered:recoveredCopy];
    if (!silently)
    {
      v8 = +[IMDChatStore sharedInstance];
      [v8 storeChat:self];

      [(IMDChat *)self setCloudKitSyncState:0];
      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      [broadcaster chat:guid isRecoveredUpdated:recoveredCopy];
    }

    v11 = IMDChatLogHandle(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (recoveredCopy)
      {
        v12 = @"YES";
      }

      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Updating isRecovered to: %@", &v13, 0xCu);
    }
  }
}

- (void)updateIsDeletingIncomingMessages:(BOOL)messages
{
  messagesCopy = messages;
  v13 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self isDeletingIncomingMessages]!= messages)
  {
    [(IMDChat *)self setDeletingIncomingMessages:messagesCopy];
    v5 = +[IMDChatStore sharedInstance];
    [v5 storeChat:self];

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    [broadcaster chat:guid isDeletingIncomingMessagesUpdated:messagesCopy];

    v9 = IMDChatLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (messagesCopy)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Updating isDeletingIncomingMessages to: %@", &v11, 0xCu);
    }
  }
}

- (void)updateIsDownloadingPendingSatelliteMessages:(BOOL)messages
{
  messagesCopy = messages;
  v19 = *MEMORY[0x277D85DE8];
  v5 = +[IMDChorosController sharedController];
  isSatelliteConnectionActive = [v5 isSatelliteConnectionActive];

  if (isSatelliteConnectionActive)
  {
    if ([(IMDChat *)self isDownloadingPendingSatelliteMessages]== messagesCopy)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = IMDChatLogHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMDChat *)self guid];
    v17 = 138412290;
    v18 = guid;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Satellite connection is inactive. Immediately setting isDownloadingPendingSatelliteMessages to NO for chat with GUID %@", &v17, 0xCu);
  }

  if ([(IMDChat *)self isDownloadingPendingSatelliteMessages])
  {
    messagesCopy = 0;
LABEL_8:
    [(IMDChat *)self setIsDownloadingPendingSatelliteMessages:messagesCopy];
    v10 = +[IMDChatStore sharedInstance];
    [v10 storeChat:self];

    v11 = [(IMDChat *)self copyDictionaryRepresentation:0];
    broadcaster = [(IMDChat *)self broadcaster];
    guid2 = [(IMDChat *)self guid];
    [broadcaster chat:guid2 updated:v11];

    v15 = IMDChatLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (messagesCopy)
      {
        v16 = @"YES";
      }

      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Updating isDownloadingPendingSatelliteMessages to: %@", &v17, 0xCu);
    }
  }
}

- (void)updatePendingIncomingSatelliteMessageCount:(int64_t)count
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self pendingIncomingSatelliteMessageCount]!= count)
  {
    [(IMDChat *)self setPendingIncomingSatelliteMessageCount:count];
    v5 = +[IMDChatStore sharedInstance];
    [v5 storeChat:self];

    v6 = [(IMDChat *)self copyDictionaryRepresentation:0];
    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    [broadcaster chat:guid updated:v6];

    v10 = IMDChatLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = count;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Updating pendingIncomingSatelliteMessageCount to: %d", v11, 8u);
    }
  }
}

- (void)updateNumberOfTimesRespondedToThread
{
  v10[1] = *MEMORY[0x277D85DE8];
  getNumberOfTimesRespondedToThread = [(IMDChat *)self getNumberOfTimesRespondedToThread];
  if (getNumberOfTimesRespondedToThread <= 2)
  {
    v9 = @"numberOfTimesRespondedtoThread";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:(getNumberOfTimesRespondedToThread + 1)];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(IMDChat *)self updateProperties:v5];

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (void)updateIsiMessageSpam:(BOOL)spam
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"wasDetectedAsiMessageSpam";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:spam];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(IMDChat *)self updateProperties:v5];

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];
}

- (int64_t)spamCategory
{
  v3 = [(NSDictionary *)self->_properties objectForKey:@"wasDetectedAsSMSSpam"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    return 2;
  }

  v6 = MEMORY[0x277D1AB70];
  v7 = [(NSDictionary *)self->_properties objectForKey:@"SMSCategory"];
  v8 = [v6 filterActionForCategory:{objc_msgSend(v7, "intValue")}];

  return v8;
}

- (void)updateSMSCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  v29[1] = *MEMORY[0x277D85DE8];
  v28 = @"wasDetectedAsSMSSpam";
  v29[0] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [(IMDChat *)self updateProperties:v7];

  if ((category - 3) >= 2)
  {
    if (category == 2)
    {
      [(IMDChat *)self updateIsFiltered:2];
      v26 = @"SMSCategory";
      v27 = &unk_283F4E9C0;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v27;
      v14 = &v26;
      v15 = 1;
    }

    else
    {
      v22[0] = @"SMSCategory";
      v22[1] = @"SMSSubCategory";
      v23[0] = &unk_283F4E9D8;
      v23[1] = &unk_283F4E9D8;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v23;
      v14 = v22;
      v15 = 2;
    }

    v9 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    [(IMDChat *)self updateProperties:v9];
  }

  else
  {
    v8 = [MEMORY[0x277D1AB70] fetchSMSFilterParamForCategory:category subCategory:subCategory];
    v9 = v8;
    if (v8)
    {
      category = [v8 category];
      subCategory = [v9 subCategory];
    }

    else
    {
      category = 0;
      subCategory = 0;
    }

    [(IMDChat *)self updateIsFiltered:category + 16 * subCategory];
    v24[0] = @"SMSCategory";
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    v24[1] = @"SMSSubCategory";
    v25[0] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:subCategory];
    v25[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [(IMDChat *)self updateProperties:v18];
  }

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];
}

- (void)updateShouldForceToSMS:(BOOL)s
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"shouldForceToSMS";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:s];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [(IMDChat *)self updateProperties:v5];

  if (v6)
  {
    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (void)updateSMSSpamExtensionNameChatProperty:(id)property
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (property)
  {
    v10 = @"smsSpamExtensionName";
    v11[0] = property;
    v4 = MEMORY[0x277CBEAC0];
    propertyCopy = property;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

    [(IMDChat *)self updateProperties:v6];
    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (void)updateTimeSensitiveExpirationDateWithMessageTime:(id)time hasOneTimeCode:(BOOL)code
{
  codeCopy = code;
  v27 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  if (timeCopy)
  {
    IMSharedHelperMessagePriorityTimeout();
    v7 = [timeCopy dateByAddingTimeInterval:?];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        guid = [(IMDChat *)self guid];
        [v7 timeIntervalSinceReferenceDate];
        *buf = 138412802;
        v22 = guid;
        v23 = 2048;
        v24 = v10;
        v25 = 1024;
        v26 = codeCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Chat.guid: %@, applying time sensitive expiration date: %f, with onetime passcode: %{BOOL}d", buf, 0x1Cu);
      }
    }

    v11 = *MEMORY[0x277D19960];
    v20[0] = v7;
    v12 = *MEMORY[0x277D19828];
    v18 = v11;
    v19 = v12;
    if (codeCopy)
    {
      null = MEMORY[0x277CBEC38];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v20[1] = null;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v18 count:2];
    [(IMDChat *)self updateProperties:v14];

    if (!codeCopy)
    {
    }

    v15 = [(IMDChat *)self broadcaster:v18];
    guid2 = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [v15 chat:guid2 propertiesUpdated:properties];
  }
}

- (void)updateTimeSensitiveExpirationDateForReadIfNeeded
{
  v13[1] = *MEMORY[0x277D85DE8];
  properties = [(IMDChat *)self properties];
  v4 = *MEMORY[0x277D19960];
  v5 = [properties objectForKey:*MEMORY[0x277D19960]];

  date = [MEMORY[0x277CBEAA8] date];
  IMSharedHelperReadMessagePriorityTimeout();
  v7 = [date dateByAddingTimeInterval:?];

  if (v5 && [v5 compare:v7] == 1)
  {
    v12 = v4;
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v8];

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties2 = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties2];
  }
}

- (void)setLastSentMessageDate:(id)date
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"LSMD";
  v11[0] = date;
  v4 = MEMORY[0x277CBEAC0];
  dateCopy = date;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(IMDChat *)self updateProperties:v6];
  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];
}

- (void)updateReceivedBlackholeError:(BOOL)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"RBHE";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:error];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(IMDChat *)self updateProperties:v5];

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];
}

- (void)updateSMSHandshakeState:(int)state
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"smsHandshakeState";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&state];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(IMDChat *)self updateProperties:v5];

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];
}

- (void)updateMessageHandshakeState:(int)state
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"messageHandshakeState";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&state];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(IMDChat *)self updateProperties:v5];

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];
}

- (void)updateLastKnownHybridStateAndRemergeIfAppropriate:(BOOL)appropriate
{
  appropriateCopy = appropriate;
  v14[1] = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self lastKnownHybridState]!= appropriate)
  {
    personCentricID = [(IMDChat *)self personCentricID];
    v13 = *MEMORY[0x277D19880];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:appropriateCopy];
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(IMDChat *)self updateProperties:v7];

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];

    personCentricID2 = [(IMDChat *)self personCentricID];
    LOBYTE(broadcaster) = [personCentricID isEqualToString:personCentricID2];

    if ((broadcaster & 1) == 0)
    {
      v12 = +[IMDChatRegistry sharedInstance];
      [v12 _triggerRemergeForPersonCentricID:personCentricID];
    }
  }
}

- (void)updateEmergencyTranscriptSharingStateChatProperty:(int)property
{
  v3 = *&property;
  v16 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self emergencyTranscriptSharingState]!= property)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Updating transcript sharing state to %@", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{v3, @"emergencyTranscriptSharingState"}];
    v13 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v8];

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (BOOL)isiMessageSpam
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"wasDetectedAsiMessageSpam"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isSMSSpam
{
  properties = [(IMDChat *)self properties];
  v4 = [properties objectForKey:@"wasDetectedAsSMSSpam"];

  properties2 = [(IMDChat *)self properties];
  v6 = [properties2 objectForKey:@"SMSCategory"];

  v7 = v4 && ([v4 BOOLValue] & 1) != 0 || objc_msgSend(v6, "intValue") == 1;
  return v7;
}

- (int)getNumberOfTimesRespondedToThread
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"numberOfTimesRespondedtoThread"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  intValue = [v6 intValue];
  return intValue;
}

- (id)lastSentMessageDate
{
  properties = [(IMDChat *)self properties];
  time = [properties objectForKey:@"LSMD"];

  if (!time)
  {
    lastMessage = [(IMDChat *)self lastMessage];
    isFromMe = [lastMessage isFromMe];

    if (isFromMe)
    {
      lastMessage2 = [(IMDChat *)self lastMessage];
      time = [lastMessage2 time];

      [(IMDChat *)self setLastSentMessageDate:time];
    }

    else
    {
      time = 0;
    }
  }

  return time;
}

- (BOOL)receivedBlackholeError
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"RBHE"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int)smsHandshakeState
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"smsHandshakeState"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  intValue = [v6 intValue];
  return intValue;
}

- (int)messageHandshakeState
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"messageHandshakeState"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  intValue = [v6 intValue];
  return intValue;
}

- (int)emergencyTranscriptSharingState
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"emergencyTranscriptSharingState"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  intValue = [v6 intValue];
  return intValue;
}

- (NSString)lastSeenMessageGuid
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x277D198A8]];

  return v3;
}

- (void)updateLastSeenMessageGuidIfNeeded:(id)needed
{
  v23 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isCatchUpEnabled = [mEMORY[0x277D1A9B8] isCatchUpEnabled];

  if (isCatchUpEnabled)
  {
    properties = [(IMDChat *)self properties];
    v8 = *MEMORY[0x277D198A8];
    v9 = [properties objectForKeyedSubscript:*MEMORY[0x277D198A8]];

    v11 = IMDChatLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = neededCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Checking if last seen message guid needs updating, old %@ new %@", buf, 0x16u);
    }

    if (([v9 isEqualToString:neededCopy] & 1) == 0)
    {
      v17 = v8;
      null = neededCopy;
      if (!neededCopy)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v18 = null;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [(IMDChat *)self updateProperties:v13];

      if (!neededCopy)
      {
      }

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      properties2 = [(IMDChat *)self properties];
      [broadcaster chat:guid propertiesUpdated:properties2];
    }
  }
}

- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)code
{
  codeCopy = code;
  properties = [(IMDChat *)self properties];
  v6 = [properties objectForKeyedSubscript:*MEMORY[0x277D198B0]];

  v7 = [v6 objectForKeyedSubscript:codeCopy];

  return v7;
}

- (void)updateLastMessageGUID:(id)d forLanguageCode:(id)code
{
  v13[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  codeCopy = code;
  properties = [(IMDChat *)self properties];
  v9 = *MEMORY[0x277D198B0];
  dictionary = [properties objectForKeyedSubscript:*MEMORY[0x277D198B0]];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary setValue:dCopy forKey:codeCopy];
  v12 = v9;
  v13[0] = dictionary;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(IMDChat *)self updateProperties:v11];
}

- (BOOL)isEmergencyChat
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:*MEMORY[0x277D19840]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)updateIsEmergencyChat:(BOOL)chat
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D19840];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:chat];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(IMDChat *)self updateProperties:v5];
}

- (BOOL)isMergedBusinessThread
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMergeBusinessSenderIndiaEnabled = [mEMORY[0x277D1A9B8] isMergeBusinessSenderIndiaEnabled];

  if (!isMergeBusinessSenderIndiaEnabled)
  {
    return 0;
  }

  properties = [(IMDChat *)self properties];
  v6 = [properties objectForKey:*MEMORY[0x277D19850]];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setMergedBusinessThread:(BOOL)thread
{
  threadCopy = thread;
  v10[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMergeBusinessSenderIndiaEnabled = [mEMORY[0x277D1A9B8] isMergeBusinessSenderIndiaEnabled];

  if (isMergeBusinessSenderIndiaEnabled)
  {
    v9 = *MEMORY[0x277D19850];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:threadCopy];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(IMDChat *)self updateProperties:v8];
  }
}

- (BOOL)isStewieEmergencyChat
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (!stewieEnabled)
  {
    return 0;
  }

  chatIdentifier = [(IMDChat *)self chatIdentifier];
  v6 = IMIsStringStewieEmergency();

  return v6;
}

- (BOOL)isStewieRoadsideChat
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (!stewieEnabled)
  {
    return 0;
  }

  chatIdentifier = [(IMDChat *)self chatIdentifier];
  v6 = IMIsStringStewieRoadside();

  return v6;
}

- (BOOL)isStewieSharingChat
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x277D1A9B8] isTranscriptSharingEnabled];

  if (!isTranscriptSharingEnabled)
  {
    return 0;
  }

  cachedStewieSharingChat = self->_cachedStewieSharingChat;
  if (!cachedStewieSharingChat)
  {
    v6 = MEMORY[0x277CCABB0];
    emergencyUserInfo = [(IMDChat *)self emergencyUserInfo];
    v8 = [v6 numberWithInt:emergencyUserInfo != 0];
    v9 = self->_cachedStewieSharingChat;
    self->_cachedStewieSharingChat = v8;

    cachedStewieSharingChat = self->_cachedStewieSharingChat;
  }

  return [(NSNumber *)cachedStewieSharingChat BOOLValue];
}

- (void)setEmergencyUserInfo:(id)info
{
  v13[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x277D1A9B8] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    v12 = *MEMORY[0x277D197E8];
    dictionaryRepresentation = [infoCopy dictionaryRepresentation];
    v13[0] = dictionaryRepresentation;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v8];

    broadcaster = [(IMDChat *)self broadcaster];
    guid = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid propertiesUpdated:properties];
  }
}

- (IMSharedEmergencyInfo)emergencyUserInfo
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x277D1A9B8] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    properties = [(IMDChat *)self properties];
    v6 = [properties objectForKey:*MEMORY[0x277D197E8]];

    v7 = [MEMORY[0x277D1ABB8] infoFromDictionary:v6 isStewieTranscriptSharingMessage:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)associatedBusinessID
{
  if ([(IMDChat *)self isStewieRoadsideChat])
  {
    properties = [(IMDChat *)self properties];
    v4 = [properties objectForKey:*MEMORY[0x277D19790]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateAssociatedBusinessID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  isStewieRoadsideChat = [(IMDChat *)self isStewieRoadsideChat];
  if ((isStewieRoadsideChat & 1) == 0)
  {
    broadcaster = IMDChatLogHandle(isStewieRoadsideChat);
    if (os_log_type_enabled(broadcaster, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6244();
    }

    goto LABEL_13;
  }

  _appearsToBeBusinessID = [dCopy _appearsToBeBusinessID];
  if ((_appearsToBeBusinessID & 1) == 0)
  {
    broadcaster = IMDChatLogHandle(_appearsToBeBusinessID);
    if (os_log_type_enabled(broadcaster, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6278(dCopy, broadcaster);
    }

    goto LABEL_13;
  }

  associatedBusinessID = [(IMDChat *)self associatedBusinessID];
  v8 = [dCopy isEqualToString:associatedBusinessID];

  if ((v8 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        guid = [(IMDChat *)self guid];
        *buf = 138412546;
        v18 = dCopy;
        v19 = 2112;
        v20 = guid;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "Updating Associated business ID to: %@ for chat guid: %@", buf, 0x16u);
      }
    }

    v15 = *MEMORY[0x277D19790];
    v16 = dCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [(IMDChat *)self updateProperties:v11];

    broadcaster = [(IMDChat *)self broadcaster];
    guid2 = [(IMDChat *)self guid];
    properties = [(IMDChat *)self properties];
    [broadcaster chat:guid2 propertiesUpdated:properties];

LABEL_13:
  }
}

- (BOOL)isOscarChat
{
  if ([(IMDChat *)self isFiltered]!= 2)
  {
    return 0;
  }

  account = [(IMDChat *)self account];
  service = [account service];
  internalName = [service internalName];
  v6 = [internalName isEqualToString:*MEMORY[0x277D1A620]];

  return v6;
}

- (BOOL)isPlaceholder
{
  lastMessage = [(IMDChat *)self lastMessage];

  lastTUConversationCreatedDate = [(IMDChat *)self lastTUConversationCreatedDate];
  v5 = lastMessage | lastTUConversationCreatedDate;

  lastScheduledMessageCreatedDate = [(IMDChat *)self lastScheduledMessageCreatedDate];

  return (v5 | lastScheduledMessageCreatedDate) == 0;
}

- (void)updateHasHadSuccessfulQuery:(BOOL)query
{
  queryCopy = query;
  if ([(IMDChat *)self hasHadSuccessfulQuery]!= query)
  {
    [(IMDChat *)self setHasHadSuccessfulQuery:queryCopy];
    v5 = +[IMDChatStore sharedInstance];
    [v5 storeChat:self];
  }
}

- (void)updateGroupPhotoGuid:(id)guid
{
  v15[1] = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  groupPhotoGuid = [(IMDChat *)self groupPhotoGuid];
  v6 = groupPhotoGuid;
  if (guidCopy)
  {
    if (([groupPhotoGuid isEqualToString:guidCopy] & 1) == 0)
    {
      [(IMDChat *)self setCloudKitSyncState:0];
      v14 = *MEMORY[0x277D19810];
      v15[0] = guidCopy;
      null = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [(IMDChat *)self updateProperties:null];
LABEL_6:

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      properties = [(IMDChat *)self properties];
      [broadcaster chat:guid propertiesUpdated:properties];
    }
  }

  else if (groupPhotoGuid)
  {
    [(IMDChat *)self setCloudKitSyncState:0];
    v12 = *MEMORY[0x277D19810];
    null = [MEMORY[0x277CBEB68] null];
    v13 = null;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v8];

    goto LABEL_6;
  }
}

- (id)transcriptBackgroundPath
{
  transcriptBackgroundProperties = [(IMDChat *)self transcriptBackgroundProperties];
  v3 = [transcriptBackgroundProperties objectForKeyedSubscript:*MEMORY[0x277D1A7E8]];

  if (v3)
  {
    v4 = IMTranscriptBackgroundDirectory();
    v5 = [v4 URLByAppendingPathComponent:v3];

    path = [v5 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)transcriptBackgroundProperties
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:*MEMORY[0x277D19970]];

  return v3;
}

- (void)updateTranscriptBackgroundProperties:(id)properties
{
  v15[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  transcriptBackgroundProperties = [(IMDChat *)self transcriptBackgroundProperties];
  v6 = transcriptBackgroundProperties;
  if (propertiesCopy)
  {
    if (([transcriptBackgroundProperties isEqualToDictionary:propertiesCopy] & 1) == 0)
    {
      [(IMDChat *)self setCloudKitSyncState:0];
      v14 = *MEMORY[0x277D19970];
      v15[0] = propertiesCopy;
      null = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [(IMDChat *)self updateProperties:null];
LABEL_6:

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      properties = [(IMDChat *)self properties];
      [broadcaster chat:guid propertiesUpdated:properties];
    }
  }

  else if (transcriptBackgroundProperties)
  {
    [(IMDChat *)self setCloudKitSyncState:0];
    v12 = *MEMORY[0x277D19970];
    null = [MEMORY[0x277CBEB68] null];
    v13 = null;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v8];

    goto LABEL_6;
  }
}

- (id)groupPhotoUploadFailureCount
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"GPUFC"];

  return v3;
}

- (void)updateGroupPhotoUploadFailureCount:(id)count
{
  v15[1] = *MEMORY[0x277D85DE8];
  countCopy = count;
  groupPhotoUploadFailureCount = [(IMDChat *)self groupPhotoUploadFailureCount];
  v6 = groupPhotoUploadFailureCount;
  if (countCopy)
  {
    if (([groupPhotoUploadFailureCount isEqualToNumber:countCopy] & 1) == 0)
    {
      v14 = @"GPUFC";
      v15[0] = countCopy;
      null = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [(IMDChat *)self updateProperties:null];
LABEL_6:

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      properties = [(IMDChat *)self properties];
      [broadcaster chat:guid propertiesUpdated:properties];
    }
  }

  else if (groupPhotoUploadFailureCount)
  {
    v12 = @"GPUFC";
    null = [MEMORY[0x277CBEB68] null];
    v13 = null;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v8];

    goto LABEL_6;
  }
}

- (void)_persistMergedIDMergedChatsIfNeeded:(id)needed
{
  v58 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v4 = IMDChatLogHandle(neededCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Trying to persist legacy mergedID-based merged chats - 48047873", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(IMDChat *)self participants];
  v5 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v45;
    *&v6 = 138412290;
    v32 = v6;
    v33 = *v45;
    do
    {
      v9 = 0;
      v34 = v7;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        cNContactID = [v10 CNContactID];
        personCentricID = [v10 personCentricID];
        v13 = personCentricID;
        if (cNContactID)
        {
          v14 = 1;
        }

        else
        {
          v14 = personCentricID == 0;
        }

        if (!v14)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v15 = neededCopy;
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v56 count:16];
          if (v16)
          {
            v17 = v16;
            v37 = cNContactID;
            v38 = v9;
            v18 = 0;
            v19 = *v41;
            v39 = v15;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v40 + 1) + 8 * i);
                if (v21 != v10)
                {
                  cNContactID2 = [*(*(&v40 + 1) + 8 * i) CNContactID];
                  personCentricID2 = [v21 personCentricID];
                  v24 = [personCentricID2 isEqualToString:v13];
                  if (v24)
                  {
                    v25 = v18;
                    v26 = IMDChatLogHandle(v24);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138413058;
                      v49 = v10;
                      v50 = 2112;
                      v51 = v21;
                      v52 = 2112;
                      v53 = cNContactID2;
                      v54 = 2112;
                      v55 = v13;
                      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "For handle [%@] we found another handle [%@] with contactID [%@] that has the same mergedID: [%@]", buf, 0x2Au);
                    }

                    if (cNContactID2)
                    {

                      v29 = cNContactID2;
                      v8 = v33;
                      v7 = v34;
                      cNContactID = v37;
                      v9 = v38;
LABEL_30:
                      v30 = IMDChatLogHandle(v27);
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v49 = v10;
                        v50 = 2112;
                        v51 = v29;
                        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "handle [%@] gets a mergedContactID: [%@]", buf, 0x16u);
                      }

                      v31 = v29;
                      [v10 setCNContactID:v29];
                      goto LABEL_36;
                    }

                    v18 = v25;
                    v15 = v39;
                    if (!v18)
                    {
                      v18 = v13;
                    }
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v40 objects:v56 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

            v8 = v33;
            v7 = v34;
            v28 = v18;
            cNContactID = v37;
            v9 = v38;
            v29 = v28;
            if (v28)
            {
              goto LABEL_30;
            }
          }

          else
          {
          }

          v31 = IMDChatLogHandle(v27);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v49 = v10;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_DEFAULT, "handle [%@] doesn't have mergedID siblings", buf, 0xCu);
          }

LABEL_36:
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v7);
  }
}

- (id)cloudKitChatIDForServiceName:(id)name
{
  nameCopy = name;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

    if ((isMissingMessagesEnabled & 1) == 0)
    {
      [(IMDChat *)self _submitAndOpenTapToRadarForInvalidFeatureFlagConfiguration];
    }

    if ([(IMDChat *)self style]== 45)
    {
      guid = [(IMDChat *)self guid];
      IMComponentsFromChatGUID();
      v10 = 0;

      v11 = IMCopyGUIDForChat();
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([(IMDChat *)self style]== 45)
  {
    guid2 = [(IMDChat *)self guid];
  }

  else
  {
    mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled2 = [mEMORY[0x277D1A9B8]3 isMissingMessagesEnabled];

    if (isMissingMessagesEnabled2)
    {
LABEL_9:
      v10 = IMChatLookupDomainForServiceName();
      v11 = [(IMDChat *)self latestIdentifierForDomain:v10];
      goto LABEL_12;
    }

    guid2 = [(IMDChat *)self originalGroupID];
  }

  v10 = guid2;
  v11 = [guid2 copy];
LABEL_12:
  v15 = v11;

  return v15;
}

- (id)_ckUniqueID
{
  if ([(IMDChat *)self style]== 45)
  {
    guid = [(IMDChat *)self guid];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    serviceName = [(IMDChat *)self serviceName];
    groupID = [(IMDChat *)self groupID];
    guid = [v4 stringWithFormat:@"%@:%@", serviceName, groupID];
  }

  return guid;
}

- (id)cloudKitDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  _ckUniqueID = [(IMDChat *)self _ckUniqueID];
  cloudKitSyncState = [(IMDChat *)self cloudKitSyncState];
  serverChangeToken = [(IMDChat *)self serverChangeToken];
  v7 = [v3 stringWithFormat:@"<IMDChat %p _ckUniqueID %@, ckSyncState %ld recordChangeTag %@>", self, _ckUniqueID, cloudKitSyncState, serverChangeToken];

  return v7;
}

- (int64_t)groupParticipantVersion
{
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKey:@"pv"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setGroupParticipantVersion:(int64_t)version
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = IMDChatLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [(IMDChat *)self groupID];
    *buf = 138412546;
    v12 = groupID;
    v13 = 2048;
    versionCopy = version;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Setting participant version of chat %@ to %ld", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{version, @"pv"}];
  v10 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(IMDChat *)self updateProperties:v8];
}

- (BOOL)isChatBot
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self hasChatBotPersistentMenu]|| [(IMDChat *)self hasChatBotBrandInfo])
  {
    return 1;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  participants = [(IMDChat *)self participants];
  v5 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(participants);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        personCentricID = [v9 personCentricID];
        if ([personCentricID __im_isSipHandle])
        {

LABEL_16:
          v3 = 1;
          goto LABEL_17;
        }

        v11 = [v9 ID];
        __im_isChatBot = [v11 __im_isChatBot];

        if (__im_isChatBot)
        {
          goto LABEL_16;
        }
      }

      v6 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
      v3 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_17:

  return v3;
}

- (BOOL)hasChatBotPersistentMenu
{
  properties = [(IMDChat *)self properties];
  if (properties)
  {
    properties2 = [(IMDChat *)self properties];
    v5 = [properties2 objectForKeyedSubscript:*MEMORY[0x277D1A488]];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasChatBotBrandInfo
{
  properties = [(IMDChat *)self properties];
  if (properties)
  {
    properties2 = [(IMDChat *)self properties];
    v5 = [properties2 objectForKeyedSubscript:*MEMORY[0x277D19748]];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)brandLogoData
{
  brandInfo = [(IMDChat *)self brandInfo];
  brandLogoGuid = [brandInfo brandLogoGuid];

  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:brandLogoGuid];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    localURL = [v5 localURL];
    v8 = [v6 initWithContentsOfURL:localURL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)brandInfo
{
  properties = [(IMDChat *)self properties];

  if (properties)
  {
    v4 = objc_alloc(MEMORY[0x277D1A8D8]);
    properties2 = [(IMDChat *)self properties];
    v6 = [v4 initWithDictionary:properties2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addBIAContextWithUserID:(id)d referenceID:(id)iD
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x277D1A9B8] isBIAEnabled];

  if (isBIAEnabled)
  {
    if ([dCopy length])
    {
      v35 = iDCopy;
      properties = [(IMDChat *)self properties];
      v11 = [properties objectForKey:@"AMB-BIAContext"];
      v12 = [v11 mutableCopy];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v37;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            v20 = [v19 valueForKey:@"userId"];
            if ([dCopy isEqualToString:v20])
            {
              v21 = v19;

              v16 = v21;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      if (!v13)
      {
        v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      }

      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (!v16)
      {
        v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        v24 = [dCopy length];
        if (v24)
        {
          v24 = [v23 setValue:dCopy forKey:@"userId"];
        }

        v25 = IMDChatLogHandle(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "Adding a new BIA Context to Chat Properties", buf, 2u);
        }

        [v13 addObject:v23];
        [v22 setObject:v13 forKeyedSubscript:@"AMB-BIAContext"];
      }

      iDCopy = v35;
      if ([v35 length])
      {
        properties2 = [(IMDChat *)self properties];
        v27 = [properties2 objectForKey:@"AMB-BIALastUsedReferenceID"];

        v28 = [v35 isEqualToString:v27];
        if ((v28 & 1) == 0)
        {
          v29 = IMDChatLogHandle(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "Updating lastUsedBIAReferenceID", buf, 2u);
          }

          [v22 setObject:v35 forKeyedSubscript:@"AMB-BIALastUsedReferenceID"];
        }
      }

      if ([v22 count])
      {
        [(IMDChat *)self updateProperties:v22];
        broadcaster = [(IMDChat *)self broadcaster];
        guid = [(IMDChat *)self guid];
        properties3 = [(IMDChat *)self properties];
        [broadcaster chat:guid propertiesUpdated:properties3];

        v34 = IMDChatLogHandle(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_DEFAULT, "Updated Chat Properties for BIA", buf, 2u);
        }
      }
    }

    else
    {
      v13 = IMDChatLogHandle(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "BIA userID not provided. Early return.", buf, 2u);
      }
    }
  }
}

- (id)BIAContext
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x277D1A9B8] isBIAEnabled];

  if (isBIAEnabled)
  {
    properties = [(IMDChat *)self properties];
    v6 = [properties objectForKey:@"AMB-BIAContext"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)deleteBIAContext
{
  v14[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x277D1A9B8] isBIAEnabled];

  if (!isBIAEnabled)
  {
    return 0;
  }

  v13[0] = @"AMB-BIAContext";
  null = [MEMORY[0x277CBEB68] null];
  v13[1] = @"AMB-BIALastUsedReferenceID";
  v14[0] = null;
  null2 = [MEMORY[0x277CBEB68] null];
  v14[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v8 = [(IMDChat *)self updateProperties:v7];

  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  properties = [(IMDChat *)self properties];
  [broadcaster chat:guid propertiesUpdated:properties];

  return v8;
}

- (id)lastUsedBIAUserID
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x277D1A9B8] isBIAEnabled];

  if (isBIAEnabled)
  {
    properties = [(IMDChat *)self properties];
    v6 = [properties objectForKey:@"AMB-BIAContext"];
    lastObject = [v6 lastObject];

    v8 = [lastObject valueForKey:@"userId"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)lastUsedBIAReferenceID
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x277D1A9B8] isBIAEnabled];

  if (isBIAEnabled)
  {
    properties = [(IMDChat *)self properties];
    v6 = [properties objectForKey:@"AMB-BIALastUsedReferenceID"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsActiveBIASession
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x277D1A9B8] isBIAEnabled];

  if (!isBIAEnabled)
  {
    return 0;
  }

  lastUsedBIAUserID = [(IMDChat *)self lastUsedBIAUserID];
  v6 = [lastUsedBIAUserID length] != 0;

  return v6;
}

- (NSDictionary)keyTransparencyURIToUUIDMapping
{
  v20 = *MEMORY[0x277D85DE8];
  properties = [(IMDChat *)self properties];
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x277D19868]];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v3 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
        [dictionary setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [dictionary copy];

  return v13;
}

- (void)tearDownToneNotificationSessionIfNeeded
{
  mEMORY[0x277D1AA78] = [MEMORY[0x277D1AA78] sharedInstance];
  [mEMORY[0x277D1AA78] tearDownSessionForChatIdentifier:self->_chatIdentifier];
}

- (void)updateNicknamesForParticipants:(id)participants
{
  v26 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = +[IMDNicknameController sharedInstance];
        v11 = [v9 ID];
        v12 = [v10 nicknameForHandleURI:v11];

        if (v12)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v24 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Loaded message profile: %@", buf, 0xCu);
            }
          }

          dictionaryRepresentation = [v12 dictionaryRepresentation];
          v15 = [v9 ID];
          [v4 setObject:dictionaryRepresentation forKey:v15];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  [(NSRecursiveLock *)self->_lock lock];
  if ([v4 count])
  {
    [(NSMutableDictionary *)self->_chatInfo setObject:v4 forKey:*MEMORY[0x277D198E8]];
    objc_storeStrong(&self->_nicknamesForParticipants, v4);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  broadcaster = [(IMDChat *)self broadcaster];
  guid = [(IMDChat *)self guid];
  [broadcaster chat:guid nicknamesUpdated:v4];
}

- (void)meCardHasUpdated
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "The meCard has been edited", v4, 2u);
    }
  }

  [(IMDChat *)self setMeCardUpdated:1];
}

- (void)setRepairHistory:(unint64_t)history
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D19918];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:history];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(IMDChat *)self updateProperties:v5];
}

- (NSDictionary)domainIdentifiers
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_domainIdentifiers copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setDomainIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v16 = identifiersCopy;
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_domainIdentifiers == v16)
    {
      [(NSRecursiveLock *)self->_lock unlock];
    }

    else
    {
      v5 = [(NSMutableDictionary *)v16 mutableCopy];
      domainIdentifiers = self->_domainIdentifiers;
      self->_domainIdentifiers = v5;

      v7 = self->_domainIdentifiers;
      if (v7)
      {
        [(NSMutableDictionary *)self->_chatInfo setObject:v7 forKey:*MEMORY[0x277D197E0]];
      }

      [(NSRecursiveLock *)self->_lock unlock];
      v8 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:*MEMORY[0x277D19780]];
      firstObject = [v8 firstObject];

      if (firstObject)
      {
        v10 = *MEMORY[0x277D19808];
        v11 = [(NSMutableDictionary *)self->_chatInfo objectForKey:*MEMORY[0x277D19808]];
        v12 = [firstObject isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          [(NSMutableDictionary *)self->_chatInfo setObject:firstObject forKey:v10];
        }
      }

      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      dictionaryRepresentation = [(IMDChat *)self dictionaryRepresentation];
      [broadcaster chat:guid updated:dictionaryRepresentation];
    }

    identifiersCopy = v16;
  }
}

- (void)unassignAndPersistIdentifier:(id)identifier forDomain:(id)domain
{
  identifierCopy = identifier;
  domainCopy = domain;
  if (identifierCopy)
  {
    v8 = [identifierCopy length];
    if (domainCopy)
    {
      if (v8 && [domainCopy length])
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        [(NSRecursiveLock *)self->_lock lock];
        v9 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:domainCopy];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          [v10 removeObject:identifierCopy];
          [(NSMutableDictionary *)self->_domainIdentifiers setObject:v10 forKeyedSubscript:domainCopy];
          domainIdentifiers = self->_domainIdentifiers;
          if (domainIdentifiers)
          {
            [(NSMutableDictionary *)self->_chatInfo setObject:domainIdentifiers forKey:*MEMORY[0x277D197E0]];
          }

          [(NSRecursiveLock *)self->_lock unlock];
          synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
          guid = [(IMDChat *)self guid];
          v22 = MEMORY[0x277D85DD0];
          v23 = 3221225472;
          v24 = sub_22B5FCC80;
          v25 = &unk_2787061E0;
          v26 = identifierCopy;
          selfCopy = self;
          v28 = domainCopy;
          v29 = &v30;
          [synchronousDatabase unassignIdentifier:v26 fromChatRecordWithGUID:guid forDomain:v28 completionHandler:&v22];

          if (*(v31 + 24) == 1)
          {
            v14 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:*MEMORY[0x277D19780], v22, v23, v24, v25];
            firstObject = [v14 firstObject];

            if (firstObject)
            {
              v16 = *MEMORY[0x277D19808];
              v17 = [(NSMutableDictionary *)self->_chatInfo objectForKey:*MEMORY[0x277D19808]];
              v18 = [firstObject isEqualToString:v17];

              if ((v18 & 1) == 0)
              {
                [(NSMutableDictionary *)self->_chatInfo setObject:firstObject forKey:v16];
              }
            }

            broadcaster = [(IMDChat *)self broadcaster];
            guid2 = [(IMDChat *)self guid];
            dictionaryRepresentation = [(IMDChat *)self dictionaryRepresentation];
            [broadcaster chat:guid2 updated:dictionaryRepresentation];
          }
        }

        _Block_object_dispose(&v30, 8);
      }
    }
  }
}

- (void)assignUniqueHistoricalDomainIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    [(NSRecursiveLock *)self->_lock lock];
    v5 = [identifiersCopy __im_setDifferenceBetweenSelfAndObject:self->_domainIdentifiers];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B5FCF74;
    v9[3] = &unk_278706208;
    v9[4] = self;
    v9[5] = &v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    if (self->_domainIdentifiers && *(v11 + 24) == 1)
    {
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }

    [(NSRecursiveLock *)self->_lock unlock];
    if (*(v11 + 24) == 1)
    {
      broadcaster = [(IMDChat *)self broadcaster];
      guid = [(IMDChat *)self guid];
      dictionaryRepresentation = [(IMDChat *)self dictionaryRepresentation];
      [broadcaster chat:guid updated:dictionaryRepresentation];
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (void)assignIdentifier:(id)identifier forDomain:(id)domain isHistoricalIdentifier:(BOOL)historicalIdentifier
{
  historicalIdentifierCopy = historicalIdentifier;
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  domainCopy = domain;
  if (identifierCopy)
  {
    v10 = [identifierCopy length];
    if (domainCopy)
    {
      if (v10 && [domainCopy length])
      {
        [(NSRecursiveLock *)self->_lock lock];
        v11 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:domainCopy];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 indexOfObject:identifierCopy];
          if (historicalIdentifierCopy)
          {
            if (v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = [v12 arrayByAddingObject:identifierCopy];
              [(NSMutableDictionary *)self->_domainIdentifiers setObject:v14 forKeyedSubscript:domainCopy];

LABEL_19:
              domainIdentifiers = self->_domainIdentifiers;
              if (domainIdentifiers)
              {
                v24 = [(NSMutableDictionary *)domainIdentifiers objectForKeyedSubscript:*MEMORY[0x277D19780]];
                firstObject = [v24 firstObject];

                if (firstObject)
                {
                  v26 = *MEMORY[0x277D19808];
                  v27 = [(NSMutableDictionary *)self->_chatInfo objectForKey:*MEMORY[0x277D19808]];
                  v28 = [firstObject isEqualToString:v27];

                  if ((v28 & 1) == 0)
                  {
                    [(NSMutableDictionary *)self->_chatInfo setObject:firstObject forKey:v26];
                  }
                }

                [(NSMutableDictionary *)self->_chatInfo setObject:self->_domainIdentifiers forKey:*MEMORY[0x277D197E0]];
              }

              [(NSRecursiveLock *)self->_lock unlock];
              broadcaster = [(IMDChat *)self broadcaster];
              guid = [(IMDChat *)self guid];
              dictionaryRepresentation = [(IMDChat *)self dictionaryRepresentation];
              [broadcaster chat:guid updated:dictionaryRepresentation];

              goto LABEL_25;
            }
          }

          else if (v13)
          {
            if (v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = identifierCopy;
              v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
              v17 = [v16 arrayByAddingObjectsFromArray:v12];
              [(NSMutableDictionary *)self->_domainIdentifiers setObject:v17 forKeyedSubscript:domainCopy];
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v18 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v37 = domainCopy;
                  v38 = 2112;
                  v39 = identifierCopy;
                  _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "Warning! Setting latest identifier in domain %@ to an existing historical identifier %@.", buf, 0x16u);
                }
              }

              [(IMDChat *)self _submitAndOpenTapToRadarForHistoricalIdentifierReuseForIdentifier:identifierCopy domain:domainCopy];
              v35 = identifierCopy;
              v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
              v20 = [v12 arrayByExcludingObjectsInArray:v19];

              v34 = identifierCopy;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
              v22 = [v21 arrayByAddingObjectsFromArray:v20];
              [(NSMutableDictionary *)self->_domainIdentifiers setObject:v22 forKeyedSubscript:domainCopy];
            }

            goto LABEL_19;
          }
        }

        else
        {
          v32 = identifierCopy;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
          [(NSMutableDictionary *)self->_domainIdentifiers setObject:v15 forKeyedSubscript:domainCopy];
        }

        [(NSRecursiveLock *)self->_lock unlock];
LABEL_25:
      }
    }
  }
}

- (id)identifiersForDomain:(id)domain
{
  domainCopy = domain;
  v5 = domainCopy;
  if (domainCopy && [domainCopy length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:v5];
    v7 = [v6 copy];

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)latestIdentifierForDomain:(id)domain
{
  v21 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v5 = domainCopy;
  if (domainCopy && [domainCopy length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:v5];
    firstObject = [v6 firstObject];
    v8 = [firstObject copy];

    [(NSRecursiveLock *)self->_lock unlock];
    if (!v8 && self->_style == 43)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          guid = [(IMDChat *)self guid];
          account = [(IMDChat *)self account];
          service = [account service];
          internalName = [service internalName];
          v15 = 138412802;
          v16 = v5;
          v17 = 2112;
          v18 = guid;
          v19 = 2112;
          v20 = internalName;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "Missing latest identifier for domain %@ on chat with guid %@. The current service is %@", &v15, 0x20u);
        }
      }

      [(IMDChat *)self _submitAndOpenTapToRadarForMissingLatestIdentifierForDomain:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_submitAndOpenTapToRadarForHistoricalIdentifierReuseForIdentifier:(id)identifier domain:(id)domain
{
  identifierCopy = identifier;
  domainCopy = domain;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v9 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = MEMORY[0x277CCACA8];
    guid = [(IMDChat *)self guid];
    mEMORY[0x277D19268] = [v10 stringWithFormat:@"A historical identifier %@ was promoted to the latest identifier in domain %@ for chat %@.", identifierCopy, domainCopy, guid];

    [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Reused Historical Identifier" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Reused Historical Identifier" problemDescription:mEMORY[0x277D19268] attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EEB8 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

LABEL_5:
}

- (void)_submitAndOpenTapToRadarForMissingLatestIdentifierForDomain:(id)domain
{
  domainCopy = domain;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v6 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = MEMORY[0x277CCACA8];
    guid = [(IMDChat *)self guid];
    account = [(IMDChat *)self account];
    service = [account service];
    internalName = [service internalName];
    mEMORY[0x277D19268] = [v7 stringWithFormat:@"An identifier was requested for domain %@ on chat with guid %@. The current service is %@", domainCopy, guid, internalName];

    [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Missing Latest Identifier For Domain" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Missing Latest Identifier For Domain" problemDescription:mEMORY[0x277D19268] attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EED0 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

LABEL_5:
}

- (void)_submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:(id)service
{
  serviceCopy = service;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v5 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

    if (!v5)
    {
      goto LABEL_5;
    }

    mEMORY[0x277D19268] = [MEMORY[0x277CCACA8] stringWithFormat:@"A critical database migration step failed.\n\nEvent: Invalid Use of GroupID\n\nDescription: Updated groupID/originalGroupID on service %@", serviceCopy];
    [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Invalid Use of GroupID" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Invalid Use of GroupID" problemDescription:mEMORY[0x277D19268] attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EEE8 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

LABEL_5:
}

- (void)_submitAndOpenTapToRadarForInvalidFeatureFlagConfiguration
{
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v9 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.MobileSMS" forKey:@"InvalidFeatureFlagConfigurationVersion"];

    v5 = v9;
    if (v9)
    {
      v6 = [v9 intValue] <= 0;
      v5 = v9;
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown issues may occur. This is an undefined state."];
        [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.InvalidFeatureFlagConfiguration" notificationTitle:@"[Internal] Invalid Feature Flag Configuration" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[Messages25] Invalid Feature Flag Configuration" problemDescription:v7 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EF00 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
        mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
        [mEMORY[0x277D1A990]2 setValue:&unk_283F4EA08 forDomain:@"com.apple.MobileSMS" forKey:@"InvalidFeatureFlagConfigurationVersion"];

        v5 = v9;
      }
    }
  }
}

- (void)forceAutoBugCaptureForMissingGroupIDWithMessage:(id)message
{
  v4 = MEMORY[0x277CCAB68];
  messageCopy = message;
  v8 = [[v4 alloc] initWithString:messageCopy];

  if ([(NSString *)self->_groupID length])
  {
    [v8 appendString:self->_groupID];
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.imagent" code:0 userInfo:0];
  [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"MissingGroupID" errorPayload:v7 type:@"ChatRequestHandler" context:v8];
}

- (void)shouldSatelliteRelayIncomingSMSMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isSatelliteRelayEnabled = [mEMORY[0x277D1A9B8] isSatelliteRelayEnabled];

  if (isSatelliteRelayEnabled && -[IMDChat style](self, "style") == 45 && (-[IMDChat participants](self, "participants"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 == 1))
  {
    participants = [(IMDChat *)self participants];
    firstObject = [participants firstObject];
    v11 = [firstObject ID];

    if (v11)
    {
      mEMORY[0x277D1A9F8] = [MEMORY[0x277D1A9F8] sharedInstance];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_22B61C8E8;
      v13[3] = &unk_2787066C8;
      v16 = completionCopy;
      v14 = v11;
      selfCopy = self;
      [mEMORY[0x277D1A9F8] personalOffGridModeWithCompletion:v13];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)updateCollaborationMetadata:(id)metadata forMessageGUID:(id)d
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D18EE0];
  dCopy = d;
  metadataCopy = metadata;
  spotlightQueryProvider = [v5 spotlightQueryProvider];
  v10[0] = dCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  [spotlightQueryProvider reindexMessagesWithCollaborationMetadata:v9 collaborationMetadata:metadataCopy reason:1003 completionBlock:&unk_283F1A828];
}

- (BOOL)updateDonationStateWithSyndicationAction:(id)action
{
  v23 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = actionCopy;
  if (!actionCopy)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7F24(self, v9);
    }

    goto LABEL_14;
  }

  if ([(__CFString *)actionCopy isAutoDonatingMessages])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  syndicationStartDate = [(__CFString *)v5 syndicationStartDate];
  v8 = [(IMDChat *)self setAutoDonationBehavior:v6 lastModificationDate:syndicationStartDate];

  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      guid = [(IMDChat *)self guid];
      v17 = 138412546;
      v18 = guid;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat %@ not updated with incoming SyndicationAction: %@", &v17, 0x16u);
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (v10)
  {
    guid2 = [(IMDChat *)self guid];
    isAutoDonatingMessages = [(__CFString *)v5 isAutoDonatingMessages];
    v13 = @"NO";
    v17 = 138412802;
    v18 = guid2;
    v19 = 2112;
    if (isAutoDonatingMessages)
    {
      v13 = @"YES";
    }

    v20 = v13;
    v21 = 2112;
    v22 = v5;
    v14 = 1;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Updated chat with GUID: %@ donation setting to %@ with SyndicationAction: %@", &v17, 0x20u);
  }

  else
  {
    v14 = 1;
  }

LABEL_15:

  return v14;
}

- (id)_copyCKRecordFromExistingCKMetadataWithZoneID:(id)d salt:(id)salt
{
  dCopy = d;
  saltCopy = salt;
  serverChangeToken = [(IMDChat *)self serverChangeToken];
  cloudKitRecordID = [(IMDChat *)self cloudKitRecordID];
  guid = [(IMDChat *)self guid];
  v11 = [CKRecordUtilities recordNameForRecordChangeTag:serverChangeToken ckRecordID:cloudKitRecordID salt:saltCopy guid:guid];

  if ([v11 length])
  {
    v12 = objc_alloc(MEMORY[0x277CBC5A0]);
    v13 = +[IMDChat _recordType];
    v14 = [CKRecordUtilities recordIDUsingName:v11 zoneID:dCopy];
    v15 = [v12 initWithRecordType:v13 recordID:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_addGroupPhotoToCKRecord:(id)record error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = +[IMDFileTransferCenter sharedInstance];
  groupPhotoGuid = [(IMDChat *)self groupPhotoGuid];
  v9 = [v7 transferForGUID:groupPhotoGuid];

  if (!v9 || ([v9 localURL], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:1 userInfo:0];
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_19;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      groupPhotoGuid2 = [(IMDChat *)self groupPhotoGuid];
      *buf = 138412290;
      v29 = groupPhotoGuid2;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Transfer not found for group photo guid %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (([v9 isFinished] & 1) == 0)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:2 userInfo:0];
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_19;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      groupPhotoGuid3 = [(IMDChat *)self groupPhotoGuid];
      *buf = 138412290;
      v29 = groupPhotoGuid3;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Transfer not finished for group photo guid %@", buf, 0xCu);
    }

LABEL_18:

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  localURL = [v9 localURL];
  v27 = 0;
  v12 = [localURL checkResourceIsReachableAndReturnError:&v27];
  v13 = v27;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277CBC190]);
    localURL2 = [v9 localURL];
    v16 = [v14 initWithFileURL:localURL2];

    v17 = v16 != 0;
    if (v16)
    {
      [recordCopy _setCKRecordAsset:v16 forKey:@"gp"];
      groupPhotoGuid4 = [(IMDChat *)self groupPhotoGuid];
      [recordCopy _setCKRecordString:groupPhotoGuid4 forKey:@"gpid"];
    }

    else
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:4 userInfo:0];
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          localURL3 = [v9 localURL];
          *buf = 138412290;
          v29 = localURL3;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "ckAsset not able to initialize from transfer file URL: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:3 userInfo:0];
    }

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        localURL4 = [v9 localURL];
        *buf = 138412546;
        v29 = localURL4;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Resource not reachable for %@ with error %@", buf, 0x16u);
      }
    }

    v17 = 0;
  }

LABEL_20:
  return v17;
}

- (BOOL)_addTranscriptBackgroundToCKRecord:(id)record error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptBackgroundsMicEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsMicEnabled];

  if (isTranscriptBackgroundsMicEnabled)
  {
    transcriptBackgroundPath = [(IMDChat *)self transcriptBackgroundPath];
    if (transcriptBackgroundPath)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:transcriptBackgroundPath];
      v21 = 0;
      v11 = [(IMDChat *)v10 checkResourceIsReachableAndReturnError:&v21];
      v12 = v21;
      if (v11)
      {
        v13 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v10];
        v14 = v13 != 0;
        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              selfCopy = v13;
              v24 = 2112;
              v25 = recordCopy;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting background asset on record. Asset: %@. Record: %@", buf, 0x16u);
            }
          }

          [recordCopy _setCKRecordAsset:v13 forKey:@"traba"];
        }

        else
        {
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:7 userInfo:0];
          }

          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = v10;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "ckAsset not able to initialize from background file URL: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:6 userInfo:0];
        }

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy = transcriptBackgroundPath;
            v24 = 2112;
            v25 = v12;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Resource not reachable for %@ with error %@", buf, 0x16u);
          }
        }

        v14 = 0;
      }
    }

    else
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:5 userInfo:0];
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "No background for chat: %@", buf, 0xCu);
        }
      }

      v14 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Bailing out of adding background to record, feature flag is off.", buf, 2u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)_applyTranscriptBackgroundChangesUsingSyncData:(id)data
{
  v75[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptBackgroundsMicEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsMicEnabled];

  if (isTranscriptBackgroundsMicEnabled)
  {
    v7 = [dataCopy assetURLForKey:@"traba"];
    if (v7)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v7 path];
      v10 = [defaultManager fileExistsAtPath:path];
    }

    else
    {
      v10 = 0;
    }

    transcriptBackgroundPath = [(IMDChat *)self transcriptBackgroundPath];

    if (transcriptBackgroundPath)
    {
      v13 = MEMORY[0x277CBEBC0];
      transcriptBackgroundPath2 = [(IMDChat *)self transcriptBackgroundPath];
      v55 = [v13 fileURLWithPath:transcriptBackgroundPath2];
    }

    else
    {
      v55 = 0;
    }

    transcriptBackgroundProperties = [(IMDChat *)self transcriptBackgroundProperties];
    v15 = [dataCopy dictForKey:@"prop"];
    v59 = [v15 _dictionaryForKey:@"backgroundProperties"];

    v16 = *MEMORY[0x277D1A7F0];
    v57 = [transcriptBackgroundProperties _numberForKey:*MEMORY[0x277D1A7F0]];
    v58 = [v59 _numberForKey:v16];
    unsignedLongLongValue = [v58 unsignedLongLongValue];
    unsignedLongLongValue2 = [v57 unsignedLongLongValue];
    v11 = (unsignedLongLongValue > unsignedLongLongValue2) & v10;
    if (v11)
    {
      v74 = *MEMORY[0x277D19970];
      v75[0] = v59;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
      [(IMDChat *)self updateProperties:v19];

      transcriptBackgroundPath3 = [(IMDChat *)self transcriptBackgroundPath];
      if ([transcriptBackgroundPath3 length])
      {
        stringByDeletingLastPathComponent = [transcriptBackgroundPath3 stringByDeletingLastPathComponent];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:transcriptBackgroundPath3];
        v63 = 0;
        LOBYTE(stringByDeletingLastPathComponent) = [defaultManager2 moveItemAtURL:v7 toURL:v23 error:&v63];
        v54 = v63;

        if (stringByDeletingLastPathComponent)
        {
          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          v66 = *MEMORY[0x277CCA1B0];
          v67 = *MEMORY[0x277CCA1A0];
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v62 = 0;
          v26 = [defaultManager3 setAttributes:v25 ofItemAtPath:transcriptBackgroundPath3 error:&v62];
          v53 = v62;

          if (v26)
          {
            defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
            v61 = 0;
            v28 = [defaultManager4 removeItemAtURL:v55 error:&v61];
            v29 = v61;

            if ((v28 & 1) == 0 && IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                path2 = [v55 path];
                localizedDescription = [v29 localizedDescription];
                *buf = 138412546;
                v69 = path2;
                v70 = 2112;
                v71 = localizedDescription;
                _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Failed to remove old transcript background asset at: %@. Error: %@", buf, 0x16u);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v69 = transcriptBackgroundPath3;
                _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Transcript background stored at %@", buf, 0xCu);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v69 = transcriptBackgroundPath3;
              v70 = 2112;
              v71 = v53;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Failed making transcript background file class C: %@ with error %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v69 = v7;
              v70 = 2112;
              v71 = transcriptBackgroundPath3;
              v72 = 2112;
              v73 = v54;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Failed to move transcript background file from %@ to %@, error %@", buf, 0x20u);
            }
          }

          [MEMORY[0x277D1A9C0] cleanUpAssetURL:v7];
        }
      }
    }

    if (!v7 && unsignedLongLongValue > unsignedLongLongValue2 && ([v59 _numberForKey:*MEMORY[0x277D1A7E8]], v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v36))
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Incoming version is newer, but there is no transfer ID or asset. Incoming background is nil. Removing current asset.", buf, 2u);
        }
      }

      v64 = *MEMORY[0x277D19970];
      v65 = v59;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      [(IMDChat *)self updateProperties:v41];

      defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
      v60 = 0;
      v43 = [defaultManager5 removeItemAtURL:v55 error:&v60];
      v44 = v60;

      if ((v43 & 1) == 0 && IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          path3 = [v55 path];
          localizedDescription2 = [v44 localizedDescription];
          *buf = 138412546;
          v69 = path3;
          v70 = 2112;
          v71 = localizedDescription2;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Failed to remove current transcript background asset at: %@. Error: %@", buf, 0x16u);
        }
      }

      LOBYTE(v11) = 1;
    }

    else if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        unsignedLongLongValue3 = [v58 unsignedLongLongValue];
        unsignedLongLongValue4 = [v57 unsignedLongLongValue];
        *buf = 134218498;
        v69 = unsignedLongLongValue3;
        v70 = 2048;
        v71 = unsignedLongLongValue4;
        v72 = 2112;
        v73 = v7;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Incoming background version (%lld) is not as new as the local one (%lld). Don't overwrite local asset. Asset from ckrecord has path %@", buf, 0x20u);
      }
    }

    path4 = [v7 path];
    transcriptBackgroundPath4 = [(IMDChat *)self transcriptBackgroundPath];
    v50 = [path4 isEqual:transcriptBackgroundPath4];

    if ((v50 & 1) == 0)
    {
      [MEMORY[0x277D1A9C0] cleanUpAssetURL:v7];
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)copyCKRecordRepresentationWithZoneID:(id)d salt:(id)salt error:(id *)error
{
  v61[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  saltCopy = salt;
  v10 = [(IMDChat *)self _copyCKRecordFromExistingCKMetadataWithZoneID:dCopy salt:saltCopy];
  if (v10)
  {
LABEL_4:
    chatIdentifier = [(IMDChat *)self chatIdentifier];
    [v10 _setCKRecordString:chatIdentifier forKey:@"cid"];

    guid = [(IMDChat *)self guid];
    [v10 _setCKRecordString:guid forKey:@"guid"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[IMDChat style](self, "style")}];
    [v10 _setCKRecordNumber:v17 forKey:@"stl"];

    serviceName = [(IMDChat *)self serviceName];
    [v10 _setCKRecordString:serviceName forKey:@"svc"];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat state](self, "state")}];
    [v10 _setCKRecordNumber:v19 forKey:@"ste"];

    groupID = [(IMDChat *)self groupID];
    [v10 _setCKRecordString:groupID forKey:@"gid"];

    originalGroupID = [(IMDChat *)self originalGroupID];
    [v10 _setCKRecordString:originalGroupID forKey:@"ogid"];

    displayName = [(IMDChat *)self displayName];
    [v10 _setCKRecordString:displayName forKey:@"name"];

    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IMDChat isFiltered](self, "isFiltered")}];
    [v10 _setCKRecordNumber:v23 forKey:@"filt"];

    lastAddressedLocalHandle = [(IMDChat *)self lastAddressedLocalHandle];
    [v10 _setCKRecordString:lastAddressedLocalHandle forKey:@"lah"];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDChat hasHadSuccessfulQuery](self, "hasHadSuccessfulQuery")}];
    [v10 _setCKRecordNumber:v25 forKey:@"sqry"];

    v26 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IMDChat lastReadMessageTimeStamp](self, "lastReadMessageTimeStamp")}];
    [v10 _setCKRecordNumber:v26 forKey:@"rwm"];

    participants = [(IMDChat *)self participants];
    v28 = [participants __imArrayByApplyingBlock:&unk_283F1B308];

    [v10 _setCKRecordArray:v28 forKey:@"ptcpts"];
    groupPhotoGuid = [(IMDChat *)self groupPhotoGuid];
    IsEmpty = IMStringIsEmpty();

    if ((IsEmpty & 1) != 0 || [(IMDChat *)self _addGroupPhotoToCKRecord:v10 error:error])
    {
      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isTranscriptBackgroundsMicEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsMicEnabled];

      if (!isTranscriptBackgroundsMicEnabled || ([(IMDChat *)self transcriptBackgroundPath], v33 = objc_claimAutoreleasedReturnValue(), v34 = IMStringIsEmpty(), v33, (v34 & 1) != 0) || [(IMDChat *)self _addTranscriptBackgroundToCKRecord:v10 error:error])
      {
        mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

        if (isMissingMessagesEnabled && [(IMDChat *)self style]== 43)
        {
          domainIdentifiers = [(IMDChat *)self domainIdentifiers];
          v38 = JWEncodeDictionary();

          if (!v38)
          {
            if (IMOSLoggingEnabled())
            {
              v55 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                LOWORD(v56) = 0;
                _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Failed to encode domain identifiers. Not adding to record.", &v56, 2u);
              }
            }

            [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:8 userInfo:0];
            *error = v52 = 0;
            goto LABEL_32;
          }

          [v10 _setCKRecordData:v38 forKey:@"dids"];
        }

        properties = [(IMDChat *)self properties];
        v40 = JWEncodeDictionary();
        [v10 _setCKRecordData:v40 forKey:@"prop"];

        autoDonationBehaviorLastModificationDate = [(IMDChat *)self autoDonationBehaviorLastModificationDate];

        if (autoDonationBehaviorLastModificationDate)
        {
          v60[0] = @"st";
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat autoDonationBehavior](self, "autoDonationBehavior")}];
          v60[1] = @"sd";
          v61[0] = v42;
          v43 = MEMORY[0x277CCABB0];
          autoDonationBehaviorLastModificationDate2 = [(IMDChat *)self autoDonationBehaviorLastModificationDate];
          v45 = [v43 numberWithLongLong:{objc_msgSend(autoDonationBehaviorLastModificationDate2, "__im_nanosecondTimeInterval")}];
          v61[1] = v45;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
        }

        else
        {
          v58 = @"st";
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat autoDonationBehavior](self, "autoDonationBehavior")}];
          v59 = v42;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        }

        v49 = IMDChatLogHandle(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v56 = 138412290;
          v57 = v46;
          _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "Syncing new syndication attributes up %@", &v56, 0xCu);
        }

        v50 = JWEncodeDictionary();
        [v10 _setCKRecordData:v50 forKey:@"prop001"];

        compressedProtobufDataForChatProto1 = [(IMDChat *)self compressedProtobufDataForChatProto1];
        [v10 _setCKRecordData:compressedProtobufDataForChatProto1 forKey:@"proto001"];

        v52 = v10;
LABEL_32:

        goto LABEL_33;
      }

      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          LOWORD(v56) = 0;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Couldn't add transcript background to CKRecord. Returning nil.", &v56, 2u);
        }

LABEL_30:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        LOWORD(v56) = 0;
        _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Couldn't add group photo to CKRecord. Returning nil.", &v56, 2u);
      }

      goto LABEL_30;
    }

    v52 = 0;
    goto LABEL_32;
  }

  if ([saltCopy length])
  {
    guid2 = [(IMDChat *)self guid];
    v12 = [CKRecordUtilities recordIDUsingSalt:saltCopy zoneID:dCopy guid:guid2];

    v13 = objc_alloc(MEMORY[0x277CBC5A0]);
    v14 = +[IMDChat _recordType];
    v10 = [v13 initWithRecordType:v14 recordID:v12];

    goto LABEL_4;
  }

  v53 = IMDChatLogHandle(0);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v56) = 0;
    _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_DEFAULT, "*********Cannot create record without a salt", &v56, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:0 userInfo:0];
    *error = v52 = 0;
  }

  else
  {
    v52 = 0;
  }

LABEL_33:

  return v52;
}

+ (IMDChat)chatWithSyncData:(id)data
{
  v136 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    sourceRecordType = [(__CFString *)dataCopy sourceRecordType];
    v6 = +[IMDChat _recordType];
    v7 = [sourceRecordType isEqualToString:v6];

    if (v7)
    {
      v114 = [(__CFString *)v4 stringForKey:@"svc"];
      v113 = [(__CFString *)v4 stringForKey:@"guid"];
      v111 = [(__CFString *)v4 stringForKey:@"gid"];
      v117 = [(__CFString *)v4 stringForKey:@"cid"];
      v110 = [(__CFString *)v4 stringForKey:@"ogid"];
      v112 = [(__CFString *)v4 arrayForKey:@"ptcpts"];
      v109 = [v112 __imArrayByApplyingBlock:&unk_283F1B328];
      v119 = [(__CFString *)v4 stringForKey:@"name"];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v9 = [v119 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v10 = [v9 length];

      if (!v10)
      {

        v119 = 0;
      }

      v108 = [(__CFString *)v4 stringForKey:@"lah"];
      v116 = [(__CFString *)v4 dictForKey:@"prop"];
      v11 = [(__CFString *)v4 numberForKey:@"ste"];
      integerValue = [v11 integerValue];

      v12 = [(__CFString *)v4 numberForKey:@"stl"];
      integerValue2 = [v12 integerValue];

      v14 = [(__CFString *)v4 numberForKey:@"filt"];
      integerValue3 = [v14 integerValue];

      v16 = [(__CFString *)v4 numberForKey:@"sqry"];
      bOOLValue = [v16 BOOLValue];

      v18 = [(__CFString *)v4 numberForKey:@"rwm"];
      longLongValue = [v18 longLongValue];

      v20 = v117;
      if (integerValue2 == 45)
      {
        v20 = 0;
      }

      v107 = v20;
      v118 = [(__CFString *)v4 dictForKey:@"prop001"];
      v21 = IMDChatLogHandle(v118);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v118)
      {
        if (v22)
        {
          *buf = 138412290;
          v131 = v118;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Server Chat record has props001 %@, pulling isAutoDonating and donationDate", buf, 0xCu);
        }

        v23 = [(__CFString *)v118 objectForKey:@"st"];
        v21 = v23;
        if (v23)
        {
          intValue = [v23 intValue];
        }

        else
        {
          intValue = 0;
        }

        v27 = [(__CFString *)v118 objectForKey:@"sd"];
        v28 = v27;
        if (v27)
        {
          v106 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v27, "longLongValue")}];
        }

        else
        {
          v106 = 0;
        }
      }

      else
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Server Chat record had props001 data, but we failed to decode to a dictionary!", buf, 2u);
        }

        v106 = 0;
        intValue = 0;
      }

      v115 = [(__CFString *)v4 dataForKey:@"proto001"];
      if ([v115 length])
      {
        v29 = objc_alloc(MEMORY[0x277D1ABD0]);
        _FTOptionallyDecompressData = [v115 _FTOptionallyDecompressData];
        v31 = [v29 initWithData:_FTOptionallyDecompressData];

        isRecovered = [v31 isRecovered];
      }

      else
      {
        isRecovered = 0;
      }

      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

      if (isMissingMessagesEnabled)
      {
        v105 = [(__CFString *)v4 dictForKey:@"dids"];
      }

      else
      {
        v105 = 0;
      }

      v35 = [IMDChat alloc];
      sourceRecordChangeTag = [(__CFString *)v4 sourceRecordChangeTag];
      sourceRecordName = [(__CFString *)v4 sourceRecordName];
      LOWORD(v100) = isRecovered;
      LOBYTE(v99) = 0;
      LOBYTE(v98) = bOOLValue;
      LOBYTE(v97) = integerValue2;
      v26 = [(IMDChat *)v35 initWithAccountID:&stru_283F23018 service:v114 guid:v113 groupID:v111 chatIdentifier:v117 participants:v109 roomName:v107 displayName:v119 lastAddressedLocalHandle:v108 lastAddressedSIMID:0 properties:v116 state:integerValue style:v97 isFiltered:integerValue3 hasHadSuccessfulQuery:v98 engramID:0 serverChangeToken:sourceRecordChangeTag cloudKitSyncState:1 originalGroupID:v110 lastReadMessageTimeStamp:longLongValue lastMessageTimeStampOnLoad:-1 cloudKitRecordID:sourceRecordName isBlackholed:v99 autoDonationBehavior:intValue autoDonationBehaviorLastModificationDate:v106 isRecovered:v100 isDeletingIncomingMessages:v105 domainIdentifiers:?];

      mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      LODWORD(sourceRecordChangeTag) = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

      if (sourceRecordChangeTag && [(IMDChat *)v26 style]== 43)
      {
        v39 = +[IMDServiceController sharedController];
        v40 = [v39 serviceWithName:v114];

        v41 = IMChatLookupDomainForServiceName();
        groupID = [(IMDChat *)v26 groupID];
        -[IMDChat assignIdentifier:forDomain:isHistoricalIdentifier:](v26, "assignIdentifier:forDomain:isHistoricalIdentifier:", groupID, v41, [v40 groupIDIsHistoricalIdentifier]);

        originalGroupID = [(IMDChat *)v26 originalGroupID];
        -[IMDChat assignIdentifier:forDomain:isHistoricalIdentifier:](v26, "assignIdentifier:forDomain:isHistoricalIdentifier:", originalGroupID, v41, [v40 groupIDIsHistoricalIdentifier] ^ 1);
      }

      v44 = [(__CFString *)v4 assetURLForKey:@"gp"];
      v45 = [(__CFString *)v4 stringForKey:@"gpid"];
      style = [(IMDChat *)v26 style];
      v47 = [v116 objectForKeyedSubscript:*MEMORY[0x277D19748]];

      if (v44 && [v45 length] && (style == 43 || v47 != 0))
      {
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = @"NO";
            if (style == 43)
            {
              v50 = @"YES";
            }

            else
            {
              v50 = @"NO";
            }

            if (v47)
            {
              v49 = @"YES";
            }

            *buf = 138412546;
            v131 = v50;
            v132 = 2112;
            v133 = v49;
            _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Group photo: (%@) or brand logo: (%@) exists, setting up transfer", buf, 0x16u);
          }
        }

        v51 = MEMORY[0x277D19E50];
        if (!v47)
        {
          v51 = MEMORY[0x277D19E70];
        }

        v103 = *v51;
        v52 = IMDCopyAttachmentPersistentPath();
        if ([(__CFString *)v52 length])
        {
          stringByDeletingLastPathComponent = [(__CFString *)v52 stringByDeletingLastPathComponent];
          IMSharedHelperEnsureDirectoryExistsAtPath();

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v52];
          v123 = 0;
          v56 = [defaultManager moveItemAtURL:v44 toURL:v55 error:&v123];
          v101 = v123;

          if (v56)
          {
            v57 = +[IMDFileTransferCenter sharedInstance];
            v58 = [MEMORY[0x277CBEBC0] fileURLWithPath:v52];
            v59 = [v57 registerGUID:v45 forNewOutgoingTransferWithLocalURL:v58];

            if (v59)
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v131 = v113;
                  v132 = 2112;
                  v133 = v52;
                  _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Created transfer %@, finalAssetPath %@", buf, 0x16u);
                }
              }

              v61 = +[IMDFileTransferCenter sharedInstance];
              v62 = [v61 transferForGUID:v45];

              if (IMOSLoggingEnabled())
              {
                v63 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v131 = v62;
                  _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Found transfer: %@", buf, 0xCu);
                }
              }

              [(__CFString *)v62 setCloudKitSyncState:1];
              defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
              v128 = *MEMORY[0x277CCA1B0];
              v129 = *MEMORY[0x277CCA1A0];
              v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
              v122 = 0;
              v66 = [defaultManager2 setAttributes:v65 ofItemAtPath:v52 error:&v122];
              v67 = v122;

              if ((v66 & 1) == 0 && IMOSLoggingEnabled())
              {
                v68 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v131 = v52;
                  v132 = 2112;
                  v133 = v67;
                  _os_log_impl(&dword_22B4CC000, v68, OS_LOG_TYPE_INFO, "Failed making group photo file class C: %@ with error %@", buf, 0x16u);
                }
              }

              v69 = +[IMDAttachmentStore sharedInstance];
              v70 = [v69 storeAttachment:v62 associateWithMessageWithGUID:0 chatGUID:v113 storeAtExternalLocation:1];

              if (v70)
              {
                v126 = *MEMORY[0x277D19810];
                v127 = v45;
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                [(IMDChat *)v26 updateProperties:v71];

                v72 = +[IMDFileTransferCenter sharedInstance];
                [v72 updateTransfer:v45];

                if (IMOSLoggingEnabled())
                {
                  v73 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v131 = v113;
                    v132 = 2112;
                    v133 = v62;
                    _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Group photo stored for chat guid %@ with transfer %@", buf, 0x16u);
                  }
                }
              }
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v75 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v131 = v44;
                v132 = 2112;
                v133 = v52;
                v134 = 2112;
                v135 = v101;
                _os_log_impl(&dword_22B4CC000, v75, OS_LOG_TYPE_INFO, "Failed to move group photo file from %@ to %@, error %@", buf, 0x20u);
              }
            }

            [MEMORY[0x277D1A9C0] cleanUpAssetURL:v44];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v131 = v113;
            v132 = 2112;
            v133 = v44;
            v134 = 2112;
            v135 = v52;
            _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "Failed to write asset to disk because of nil path! Asset from ckrecord with guid %@ has path %@, finalAssetPath %@", buf, 0x20u);
          }
        }
      }

      [MEMORY[0x277D1A9C0] cleanUpAssetURL:v44];
      mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isTranscriptBackgroundsMicEnabled = [mEMORY[0x277D1A9B8]3 isTranscriptBackgroundsMicEnabled];

      if (!isTranscriptBackgroundsMicEnabled)
      {
        goto LABEL_110;
      }

      v78 = [(__CFString *)v4 assetURLForKey:@"traba"];
      if (v78)
      {
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        path = [(__CFString *)v78 path];
        v81 = [defaultManager3 fileExistsAtPath:path];

        transcriptBackgroundPath = [(IMDChat *)v26 transcriptBackgroundPath];
        transcriptBackgroundPath2 = transcriptBackgroundPath;
        if (v81 && [(__CFString *)transcriptBackgroundPath length])
        {
          stringByDeletingLastPathComponent2 = [(__CFString *)transcriptBackgroundPath2 stringByDeletingLastPathComponent];
          IMSharedHelperEnsureDirectoryExistsAtPath();

          defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
          v86 = [MEMORY[0x277CBEBC0] fileURLWithPath:transcriptBackgroundPath2];
          v121 = 0;
          v87 = [defaultManager4 moveItemAtURL:v78 toURL:v86 error:&v121];
          v104 = v121;

          if ((v87 & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v95 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v131 = v78;
                v132 = 2112;
                v133 = transcriptBackgroundPath2;
                v134 = 2112;
                v135 = v104;
                _os_log_impl(&dword_22B4CC000, v95, OS_LOG_TYPE_INFO, "Failed to move transcript background file from %@ to %@, error %@", buf, 0x20u);
              }
            }

            [MEMORY[0x277D1A9C0] cleanUpAssetURL:v78];
            goto LABEL_106;
          }

          defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
          v124 = *MEMORY[0x277CCA1B0];
          v125 = *MEMORY[0x277CCA1A0];
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
          v120 = 0;
          v90 = [defaultManager5 setAttributes:v89 ofItemAtPath:transcriptBackgroundPath2 error:&v120];
          v91 = v120;

          v92 = IMOSLoggingEnabled();
          if (v90)
          {
            if (v92)
            {
              v93 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v131 = transcriptBackgroundPath2;
                _os_log_impl(&dword_22B4CC000, v93, OS_LOG_TYPE_INFO, "Transcript background stored at %@", buf, 0xCu);
              }

LABEL_104:
            }
          }

          else if (v92)
          {
            v93 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v131 = transcriptBackgroundPath2;
              v132 = 2112;
              v133 = v91;
              _os_log_impl(&dword_22B4CC000, v93, OS_LOG_TYPE_INFO, "Failed making transcript background file class C: %@ with error %@", buf, 0x16u);
            }

            goto LABEL_104;
          }

LABEL_106:
LABEL_107:
          if (([(__CFString *)v78 isEqual:transcriptBackgroundPath2]& 1) == 0)
          {
            [MEMORY[0x277D1A9C0] cleanUpAssetURL:v78];
          }

LABEL_110:
          goto LABEL_111;
        }
      }

      else
      {
        transcriptBackgroundPath2 = [(IMDChat *)v26 transcriptBackgroundPath];
      }

      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v131 = v113;
          v132 = 2112;
          v133 = v78;
          v134 = 2112;
          v135 = transcriptBackgroundPath2;
          _os_log_impl(&dword_22B4CC000, v94, OS_LOG_TYPE_INFO, "Failed to write background asset to disk because of nil path! Asset from ckrecord with guid %@ has path %@, finalAssetPath %@", buf, 0x20u);
        }
      }

      goto LABEL_107;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v131 = v4;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Invalid record passed to chatWithCKRecord %@", buf, 0xCu);
    }
  }

  v26 = 0;
LABEL_111:

  return v26;
}

- (BOOL)applySyncChatSliceChangesUsingSyncData:(id)data
{
  v21[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sourceRecordName = [dataCopy sourceRecordName];
  v5 = [dataCopy stringForKey:@"svc"];
  v6 = [dataCopy stringForKey:@"guid"];
  v7 = v6;
  v8 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (sourceRecordName && v5 && v6)
  {
    v9 = [objc_alloc(MEMORY[0x277D18F00]) initWithServiceName:v5 ckRecordID:sourceRecordName];
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    v21[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B6DD898;
    v13[3] = &unk_278708768;
    v14 = v5;
    v15 = v7;
    v16 = &v17;
    [synchronousDatabase addSyncChatSlices:v11 forChatWithGUID:v15 completionHandler:v13];

    v8 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

- (BOOL)applyChatServiceChangesUsingSyncData:(id)data
{
  v19[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [dataCopy stringForKey:@"svc"];
  v5 = [dataCopy stringForKey:@"guid"];
  v6 = v5;
  v7 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v4 && v5)
  {
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    v19[0] = v4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B6DDB5C;
    v11[3] = &unk_278708768;
    v12 = v4;
    v13 = v6;
    v14 = &v15;
    [synchronousDatabase updateServicesForChatWithGUID:v13 services:v9 completionHandler:v11];

    v7 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return v7 & 1;
}

- (BOOL)applyDomainIdentifierChangesUsingSyncData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy dictForKey:@"dids"];
  v6 = [dataCopy stringForKey:@"guid"];

  if (v5)
  {
    if (v6)
    {
      [(IMDChat *)self assignUniqueHistoricalDomainIdentifiers:v5];
      domainIdentifiers = [(IMDChat *)self domainIdentifiers];
      v8 = [domainIdentifiers __im_setDifferenceBetweenSelfAndObject:v5];

      if (v8)
      {
        [(IMDChat *)self setCloudKitSyncState:0];
      }
    }
  }

  return 0;
}

- (BOOL)applyChangesUsingSyncData:(id)data
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  cloudKitSyncState = [(IMDChat *)self cloudKitSyncState];
  v6 = IMDChatLogHandle(cloudKitSyncState);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMDChat *)self guid];
    *buf = 138412546;
    v47 = guid;
    v48 = 2048;
    *v49 = cloudKitSyncState;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "applying changes on chat %@ state %ld", buf, 0x16u);
  }

  lastReadMessageTimeStamp = [(IMDChat *)self lastReadMessageTimeStamp];
  v9 = [dataCopy numberForKey:@"rwm"];
  longLongValue = [v9 longLongValue];

  if (lastReadMessageTimeStamp >= longLongValue)
  {
    v12 = IMDChatLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      lastReadMessageTimeStamp2 = [(IMDChat *)self lastReadMessageTimeStamp];
      v15 = [dataCopy numberForKey:@"rwm"];
      *buf = 134218242;
      v47 = lastReadMessageTimeStamp2;
      v48 = 2112;
      *v49 = v15;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Local last read timestamp %lld, server record last read timestamp %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v12 = [dataCopy numberForKey:@"rwm"];
    [(IMDChat *)self setLastReadMessageTimeStamp:[v12 longLongValue]];
    v13 = 1;
  }

  v45 = [(IMDChat *)self _applyTranscriptBackgroundChangesUsingSyncData:dataCopy];
  v16 = v13 + v45;
  v17 = [dataCopy dictForKey:@"prop001"];
  v18 = IMDChatLogHandle(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 138412290;
      v47 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Server Chat record has props001 %@, pulling syndication_type and syndication_ranges", buf, 0xCu);
    }

    v20 = [v17 objectForKey:@"st"];
    v18 = v20;
    if (v20)
    {
      [v20 intValue];
    }

    v21 = [v17 objectForKey:@"sd"];
    v22 = IMDChatLogHandle(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      autoDonationBehaviorLastModificationDate = [(IMDChat *)self autoDonationBehaviorLastModificationDate];
      __im_nanosecondTimeInterval = [autoDonationBehaviorLastModificationDate __im_nanosecondTimeInterval];
      *buf = 138412546;
      v47 = v17;
      v48 = 2048;
      *v49 = __im_nanosecondTimeInterval;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Server Chat record has older props001 %@, local syndicationDate: %lu, skipping", buf, 0x16u);
    }
  }

  else if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Server Chat record had props001 data, but we failed to decode to a dictionary!", buf, 2u);
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled && [(IMDChat *)self style]== 43)
  {
    v16 += [(IMDChat *)self applyDomainIdentifierChangesUsingSyncData:dataCopy];
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8]2 isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v29 = [(IMDChat *)self applyChatServiceChangesUsingSyncData:dataCopy];
    v16 += v29;
  }

  v30 = IMDChatLogHandle(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    guid2 = [(IMDChat *)self guid];
    *buf = 138412802;
    v47 = guid2;
    v48 = 1024;
    *v49 = v16;
    *&v49[4] = 1024;
    *&v49[6] = 1;
    _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "Updating chat:%@ madeChanges %d serverHadMoreRecentData %{BOOL}d", buf, 0x18u);
  }

  if (cloudKitSyncState != 1)
  {
    v32 = [(IMDChat *)self setCloudKitSyncState:1];
    ++v16;
  }

  v33 = IMDChatLogHandle(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    guid3 = [(IMDChat *)self guid];
    sourceRecordName = [dataCopy sourceRecordName];
    sourceRecordChangeTag = [dataCopy sourceRecordChangeTag];
    *buf = 138412802;
    v47 = guid3;
    v48 = 2112;
    *v49 = sourceRecordName;
    *&v49[8] = 2112;
    v50 = sourceRecordChangeTag;
    _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_DEFAULT, "Updating chat %@ record name %@ change tag %@", buf, 0x20u);
  }

  mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled2 = [mEMORY[0x277D1A9B8]3 isOneChatEnabled];

  if (isOneChatEnabled2)
  {
    v16 += [(IMDChat *)self applySyncChatSliceChangesUsingSyncData:dataCopy];
  }

  else
  {
    sourceRecordChangeTag2 = [dataCopy sourceRecordChangeTag];
    [(IMDChat *)self setServerChangeToken:sourceRecordChangeTag2];

    sourceRecordName2 = [dataCopy sourceRecordName];
    [(IMDChat *)self setCloudKitRecordID:sourceRecordName2];
  }

  mEMORY[0x277D1A9B8]4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x277D1A9B8]4 isMessagesIniCloudVersion2];

  if (isMessagesIniCloudVersion2)
  {
    v43 = +[IMDChatStore sharedInstance];
    [v43 storeChat:self];
  }

  else
  {
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }

  if (v45)
  {
    [(IMDChat *)self broadcastTranscriptBackgroundChanges];
  }

  return v16 != 0;
}

- (id)compressedProtobufDataForChatProto1
{
  v3 = objc_alloc(objc_opt_class());
  [v3 setIsRecovered:{-[IMDChat isRecovered](self, "isRecovered")}];
  data = [v3 data];
  _FTCopyGzippedData = [data _FTCopyGzippedData];

  return _FTCopyGzippedData;
}

- (id)copyCKRecordRepresentationsWithZoneID:(id)d salt:(id)salt error:(id *)error
{
  if (salt)
  {
    sub_22B7DB6A8();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  dCopy = d;
  selfCopy = self;
  sub_22B790AD8(d);
  v12 = v11;
  v8, v13, v14, v15, v16, v17, v18, v19, v29, v31;

  sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
  v20 = sub_22B7DB8F8();
  v12, v21, v22, v23, v24, v25, v26, v27, v30, v32;
  return v20;
}

@end