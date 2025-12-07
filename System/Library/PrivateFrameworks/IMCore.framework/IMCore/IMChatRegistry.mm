@interface IMChatRegistry
+ (BOOL)hasInitializedChatFiltering;
+ (Class)messageClass;
+ (IMChatRegistry)sharedRegistry;
+ (IMChatRegistry)sharedRegistryIfAvailable;
+ (id)performanceLogHandle;
+ (void)setHasInitializedChatFiltering:(BOOL)filtering;
- (BOOL)_hasChat:(id)chat forService:(id)service;
- (BOOL)_nicknameSharingEnabled;
- (BOOL)_shouldShareMeCardForAlwaysAskAudienceWithChat:(id)chat;
- (BOOL)_shouldShareMeCardForContactsOnlyAudienceWithChat:(id)chat;
- (BOOL)_shouldSwitchAccountAddingMessagesToChat:(id)chat messageItems:(id)items removedGUIDs:(id)ds messagesComingFromStorage:(BOOL)storage chatProperties:(id)properties;
- (BOOL)_shouldUpdateChatPropertyByRecencyOnChat:(id)chat incomingDictionary:(id)dictionary;
- (BOOL)_updateAutoDonationBehavior:(int64_t)behavior forChat:(id)chat shouldPostNotification:(BOOL)notification;
- (BOOL)_updateChat:(id)chat chatIdentifierForGroups:(id)groups shouldPostNotification:(BOOL)notification;
- (IMContactStore)contactStore;
- (IMDaemonProtocol)remoteDaemon;
- (IMDaemonQueryController)daemonQueryController;
- (IMUnreadCountController)unreadCountController;
- (NSArray)allExistingChats;
- (NSArray)cachedChats;
- (TUConversationManager)conversationManager;
- (id)_activeTUConversations;
- (id)_bestChatForHandleIDs:(id)ds;
- (id)_cachedChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash;
- (id)_cachedChatWithDisplayName:(id)name;
- (id)_cachedChatWithGUID:(id)d;
- (id)_cachedChatWithGroupID:(id)d;
- (id)_cachedChatWithHandle:(id)handle;
- (id)_cachedChatWithHandles:(id)handles allowAlternativeService:(BOOL)service groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups;
- (id)_cachedChatWithIdentifier:(id)identifier;
- (id)_cachedChatWithIdentifier:(id)identifier style:(unsigned __int8)style;
- (id)_cachedChatWithPersonID:(id)d;
- (id)_cachedChatsWithDisplayName:(id)name;
- (id)_cachedChatsWithMessage:(id)message;
- (id)_cachedChatsWithMessageGUID:(id)d;
- (id)_cachedGroupChatForGroupChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash;
- (id)_cachedOneToOneChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash;
- (id)_chatForIdentifiers:(id)identifiers;
- (id)_chatPredicateForGUIDs:(id)ds;
- (id)_chatsMatchingHandles:(id)handles;
- (id)_chatsMatchingStatusSubscription:(id)subscription;
- (id)_copyMergedChatsPairedArrayFromMergedChatsArray:(id)array;
- (id)_earliestLastMessageDateFromChatDictionaries:(id)dictionaries;
- (id)_eventForMessage:(id)message;
- (id)_existingChatForHandleUsingPersonID:(id)d;
- (id)_existingChatForTUConversation:(id)conversation;
- (id)_existingChatFromSiblingsForHandle:(id)handle;
- (id)_existingChatWithHandle:(id)handle fixChatHandle:(BOOL)chatHandle;
- (id)_existingChatWithIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (id)_existingChatWithIdentifier:(id)identifier style:(unsigned __int8)style service:(id)service;
- (id)_inPersonFromIMHandle:(id)handle isMe:(BOOL)me;
- (id)_inPersonHandleFromIMHandle:(id)handle contact:(id)contact;
- (id)_inPersonNameForContact:(id)contact imHandle:(id)handle;
- (id)_interactionForMessage:(id)message inChat:(id)chat;
- (id)_lastMessageDateForQueryFromChatDictionary:(id)dictionary;
- (id)_lastMessageItemForChatDictionary:(id)dictionary;
- (id)_mergedChatGUIDsForChatGUIDs:(id)ds;
- (id)_ownerHandleStringsFromSubscription:(id)subscription;
- (id)_participantsForChatDictionary:(id)dictionary;
- (id)_performChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock;
- (id)_performSingleChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock;
- (id)_possiblyUnregisteredCachedChatForRoom:(id)room onAccount:(id)account;
- (id)_possiblyUnregisteredCachedChatWithHandle:(id)handle;
- (id)_possiblyUnregisteredCachedChatWithHandles:(id)handles style:(unsigned __int8)style groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only;
- (id)_possiblyUnregisteredCachedChatWithIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (id)_processLoadedChatDictionaries:(id)dictionaries;
- (id)_sendMessageInteractionForMessage:(id)message inChat:(id)chat;
- (id)_sortedParticipantIDHashForParticipants:(id)participants usesPersonCentricID:(BOOL)d fallbackToContactID:(BOOL)iD;
- (id)_unreadCountGUIDsForChat:(id)chat;
- (id)_unsendMessageInteractionForMessage:(id)message inChat:(id)chat;
- (id)_winningChatIdentifierForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (id)_winningGroupIDForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (id)_winningParticipantsForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (id)activeCallForConversationUUID:(id)d;
- (id)allGUIDsForChat:(id)chat;
- (id)allVisibleChatGUIDsForChats:(id)chats;
- (id)brandLogoDataFromChatIdentifier:(id)identifier;
- (id)brandLogoUrlFromChatIdentifier:(id)identifier;
- (id)cachedChatsWithIdentifier:(id)identifier;
- (id)chatForFaceTimeConversation:(id)conversation;
- (id)chatForFaceTimeRecipientIDs:(id)ds;
- (id)chatForIMHandles:(id)handles chatName:(id)name lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d;
- (id)chatForRoom:(id)room onAccount:(id)account;
- (id)chatForURL:(id)l outMessageText:(id *)text outRecipientIDs:(id *)ds outService:(id *)service outMessageGUID:(id *)d presentOverlay:(BOOL *)overlay outSIMID:(id *)iD;
- (id)chatWithHandle:(id)handle lastAddressedHandle:(id)addressedHandle lastAddressedSIMID:(id)d shouldForceCreate:(BOOL)create;
- (id)chatWithHandles:(id)handles displayName:(id)name joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d;
- (id)chatsWithMyself;
- (id)existingChatForIMHandle:(id)handle allowRetargeting:(BOOL)retargeting fixChatHandle:(BOOL)chatHandle;
- (id)existingChatForIMHandles:(id)handles allowRetargeting:(BOOL)retargeting groupID:(id)d;
- (id)existingChatForIMHandles:(id)handles allowRetargeting:(BOOL)retargeting groupID:(id)d displayName:(id)name ignoresDisplayName:(BOOL)displayName joinedChatsOnly:(BOOL)only;
- (id)existingChatForRoom:(id)room onAccount:(id)account allowRetargeting:(BOOL)retargeting;
- (id)existingChatWithAddresses:(id)addresses allowAlternativeService:(BOOL)service bestHandles:(id *)handles;
- (id)existingChatWithChatIdentifier:(id)identifier;
- (id)existingChatWithContacts:(id)contacts bestHandles:(id *)handles;
- (id)existingChatWithDeviceIndependentID:(id)d;
- (id)existingChatWithDisplayName:(id)name;
- (id)existingChatWithGUID:(id)d;
- (id)existingChatWithGroupID:(id)d;
- (id)existingChatWithHandle:(id)handle allowAlternativeService:(BOOL)service;
- (id)existingChatWithHandles:(id)handles allowAlternativeService:(BOOL)service groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups;
- (id)existingChatWithPersonID:(id)d;
- (id)existingChatWithPinningIdentifier:(id)identifier;
- (id)existingChatsWithGUIDs:(id)ds;
- (id)existingConversationForFaceTimeConversationUUID:(id)d;
- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)account;
- (id)initAsListener:(BOOL)listener;
- (id)messagesURLWithChat:(id)chat;
- (id)messagesURLWithChat:(id)chat orHandles:(id)handles withMessageText:(id)text;
- (id)messagesURLWithMessageGUID:(id)d;
- (id)performanceLogHandle;
- (id)unblackholeChatWithHandles:(id)handles;
- (int64_t)_chat_cachedUnreadCount:(id)count;
- (int64_t)_winningJoinStateForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (unint64_t)_nicknameSharingAudience;
- (unint64_t)numberOfCachedChats;
- (unint64_t)numberOfExistingChats;
- (unint64_t)unreadCount;
- (void)__handleChatReconstructions:(id)reconstructions;
- (void)_account:(id)_account chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated suppressNotification:(BOOL)notification;
- (void)_addChat:(id)chat participantSet:(id)set;
- (void)_asyncSetChatBotUserActivityForChat:(id)chat message:(id)message;
- (void)_automation_markAsReadQuery:(id)query finishedWithResult:(BOOL)result;
- (void)_batchFetchRemainingContactsOnLaunch;
- (void)_chat:(id)_chat appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index;
- (void)_chat:(id)_chat cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)_chat:(id)_chat downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally;
- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type;
- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem retractingPartIndexes:(id)indexes;
- (void)_chat:(id)_chat inviteParticipants:(id)participants reason:(id)reason;
- (void)_chat:(id)_chat joinWithProperties:(id)properties;
- (void)_chat:(id)_chat partiallyUpdated:(id)updated;
- (void)_chat:(id)_chat removeParticipants:(id)participants reason:(id)reason;
- (void)_chat:(id)_chat repositionSticker:(id)sticker;
- (void)_chat:(id)_chat resendEditedMessageItem:(id)item partIndex:(int64_t)index withBackwardCompatabilityText:(id)text;
- (void)_chat:(id)_chat retryGroupPhotoUpload:(id)upload;
- (void)_chat:(id)_chat retryTranscriptBackgroundUpload:(id)upload transferID:(id)d;
- (void)_chat:(id)_chat sendEditedMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type backwardCompatabilityText:(id)text;
- (void)_chat:(id)_chat sendGroupPhotoUpdate:(id)update;
- (void)_chat:(id)_chat sendHQAttachmentsForMessage:(id)message;
- (void)_chat:(id)_chat sendMessage:(id)message;
- (void)_chat:(id)_chat sendMessage:(id)message withAccount:(id)account;
- (void)_chat:(id)_chat sendNotifyRecipientCommandForMessage:(id)message;
- (void)_chat:(id)_chat sendPlayedReceiptForMessage:(id)message;
- (void)_chat:(id)_chat sendReadReceiptForMessages:(id)messages;
- (void)_chat:(id)_chat sendSavedReceiptForMessage:(id)message;
- (void)_chat:(id)_chat sendSyndicationAction:(id)action;
- (void)_chat:(id)_chat sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d;
- (void)_chat:(id)_chat setPlayedExpressiveSendForMessage:(id)message;
- (void)_chat:(id)_chat setProperties:(id)properties ofParticipant:(id)participant;
- (void)_chat:(id)_chat setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d;
- (void)_chat:(id)_chat setValue:(id)value forChatProperty:(id)property;
- (void)_chat:(id)_chat updateBrandLogo:(id)logo;
- (void)_chat:(id)_chat updateDisplayName:(id)name;
- (void)_chat:(id)_chat updateIsBlackholed:(BOOL)blackholed;
- (void)_chat:(id)_chat updateIsDeletingIncomingMessages:(BOOL)messages;
- (void)_chat:(id)_chat updateIsFiltered:(int64_t)filtered synchronously:(BOOL)synchronously;
- (void)_chat:(id)_chat updateIsRecovered:(BOOL)recovered;
- (void)_chat:(id)_chat updateLastAddressedHandle:(id)handle;
- (void)_chat:(id)_chat updateLastAddressedSIMID:(id)d;
- (void)_chatDidRecoverFromJunk:(id)junk;
- (void)_chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats;
- (void)_chat_acceptChat:(id)chat;
- (void)_chat_clearCachedUnreadCount:(id)count;
- (void)_chat_clearHistory:(id)history beforeGUID:(id)d afterGUID:(id)iD queryID:(id)queryID;
- (void)_chat_closeSession:(id)session didDeleteConversation:(BOOL)conversation;
- (void)_chat_declineInvitation:(id)invitation;
- (void)_chat_downloadPurgedAttachmentsForChat:(id)chat;
- (void)_chat_fetchHistorySummary:(id)summary dateInterval:(id)interval synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion;
- (void)_chat_fetchIncomingPendingMessagesOverSatellite:(id)satellite;
- (void)_chat_fetchOldestMessageDateForChat:(id)chat synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion;
- (void)_chat_isDownloadingPurgedAssetsForChat:(id)chat queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_leave:(id)_chat_leave;
- (void)_chat_loadAttachments:(id)attachments queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_loadFrequentReplies:(id)replies limit:(unint64_t)limit queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_loadHistory:(id)history limit:(unint64_t)limit beforeGUID:(id)d afterGUID:(id)iD threadIdentifier:(id)identifier queryID:(id)queryID synchronous:(BOOL)synchronous completion:(id)self0;
- (void)_chat_loadPagedHistory:(id)history numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after messageGUID:(id)d threadIdentifier:(id)identifier queryID:(id)iD synchronous:(BOOL)synchronous completion:(id)self0;
- (void)_chat_loadUncachedAttachmentsCount:(id)count queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_loadUnreadMessages:(id)messages limit:(unint64_t)limit fallbackGUID:(id)d queryID:(id)iD loadImmediately:(BOOL)immediately;
- (void)_chat_markAsSpam:(id)spam queryID:(id)d autoReport:(BOOL)report isJunkReportedToCarrier:(BOOL)carrier reportReason:(unint64_t)reason;
- (void)_chat_markLastMessageAsUnread:(id)unread;
- (void)_chat_markMessageAsUnread:(id)unread message:(id)message;
- (void)_chat_markRepliedForMessageGUID:(id)d;
- (void)_chat_recoverFromJunk:(id)junk;
- (void)_chat_remove:(id)_chat_remove;
- (void)_chat_sendReadReceiptForAllMessages:(id)messages;
- (void)_chat_storeItem:(id)item inChat:(id)chat;
- (void)_checkIfItemIsCorrupt:(id)corrupt;
- (void)_checkLimitAndSetMessagesToKeepLoadedIfNeeded:(unint64_t)needed chat:(id)chat;
- (void)_clearExistingTypingIndicatorsWithMessageGUID:(id)d excludingChatWithIdentifier:(id)identifier;
- (void)_clearMapsUsingChat:(id)chat guids:(id)guids;
- (void)_completeChatLoadQueryWithChat:(id)chat queryID:(id)d;
- (void)_daemonBeganDeferredSetup;
- (void)_daemonCompletedDeferredSetup;
- (void)_daemonMovedChatsToRecentlyDeleted:(id)deleted deletionDate:(id)date;
- (void)_daemonMovedMessagesWithGUIDsToRecentlyDeleted:(id)deleted chatGUID:(id)d deleteDate:(id)date;
- (void)_enumerateChatGUIDPermutationsForChatIdentifier:(id)identifier includingInstantMessageStyle:(BOOL)style includingGroupStyle:(BOOL)groupStyle includingRoomStyle:(BOOL)roomStyle usingBlock:(id)block;
- (void)_fetchInitialBatchOfContactsOnLaunch;
- (void)_handleAddressBookChange:(id)change;
- (void)_handleAvailabilityChangedNotification:(id)notification;
- (void)_handleAvailabilityInvitationReceivedNotification:(id)notification;
- (void)_handleAvailabilityStateChangedNotification:(id)notification;
- (void)_handleCachingAliasToCNIDMap:(id)map;
- (void)_handleChatBotPropertiesDidChangeNotification:(id)notification;
- (void)_handleChatParticipantsDidChange:(id)change;
- (void)_handleChatReconstructions:(id)reconstructions;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification;
- (void)_handleMergedChatReconstructions:(id)reconstructions;
- (void)_handleOffGridChangedNotification:(id)notification;
- (void)_handleOffGridInvitationReceivedNotification:(id)notification;
- (void)_handleOffGridStateChangedNotification:(id)notification;
- (void)_handleStatusChangedForSubscription:(id)subscription;
- (void)_handleStatusInvitationReceivedForSubscription:(id)subscription;
- (void)_handleStatusStateChangedForSubscription:(id)subscription;
- (void)_handleTranslationEnabledChangedNotification:(id)notification;
- (void)_handleTranslationLanguageStatusChangedNotification:(id)notification;
- (void)_handleTranslationSupportChangedNotification:(id)notification;
- (void)_loadAllSiblingChatsForGroupChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(unint64_t)limit waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadPossibleSiblingChatsForHandlesAssociatedWithChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadSiblingsForChatIfNeeded:(id)needed;
- (void)_loadUnreadChatsWithLastMessageOlderThan:(id)than waitForReply:(BOOL)reply predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)_markHasHadSuccessfulQueryForChat:(id)chat;
- (void)_noteChatDealloc:(id)dealloc;
- (void)_noteChatInit:(id)init;
- (void)_postMultiWayStateChangedNotification:(id)notification;
- (void)_previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat;
- (void)_processMessageForAccount:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD message:(id)message;
- (void)_processMessagesForAccount:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messages:(id)messages removed:(id)self0 messagesComingFromStorage:(BOOL)self1;
- (void)_processUnreadCountFullReplacement:(id)replacement;
- (void)_rebuildUnreadCountController;
- (void)_recalculateServiceNamesForChatIdentifierSearch;
- (void)_refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:(id)chat;
- (void)_registerChatDictionary:(id)dictionary forChat:(id)chat isIncoming:(BOOL)incoming newGUID:(id)d shouldPostNotification:(BOOL)notification;
- (void)_removeFromGroupParticipantToChatsMap:(id)map;
- (void)_resetChatRegistry;
- (void)_setChatHasCommunicatedOveriMessage:(id)message;
- (void)_setMeCardSharingOnMessage:(id)message forChat:(id)chat;
- (void)_setReplyToGuidOnMessage:(id)message forChat:(id)chat;
- (void)_setSimulatedChats:(id)chats;
- (void)_trackUsageForMessage:(id)message;
- (void)_unreadCountControllerUpdated:(id)updated;
- (void)_unregisterChat:(id)chat deleted:(BOOL)deleted didClearUnreadCount:(BOOL)count;
- (void)_unregisterChatWithGUID:(id)d deleted:(BOOL)deleted;
- (void)_updateBlackholedChatsExist:(BOOL)exist;
- (void)_updateBrandLogoGuid:(id)guid chatIdentifier:(id)identifier;
- (void)_updateChat:(id)chat groupID:(id)d shouldPostNotification:(BOOL)notification;
- (void)_updateChat:(id)chat originalGroupID:(id)d shouldPostNotification:(BOOL)notification;
- (void)_updateChat:(id)chat updateIsFiltered:(int64_t)filtered;
- (void)_updateChatAutoDonationBehavior:(id)behavior withInfo:(id)info shouldPostNotification:(BOOL)notification;
- (void)_updateDomainIdentifiersForChat:(id)chat incomingDictionary:(id)dictionary shouldPostNotification:(BOOL)notification;
- (void)_updateHasCancellableScheduledMessage:(id)message shouldPostNotification:(BOOL)notification;
- (void)_updateInfo:(id)info forGUID:(id)d updatingUnreadCount:(BOOL)count shouldPostNotifications:(BOOL)notifications;
- (void)_updateIsDownloadingPendingSatelliteMessages:(id)messages shouldPostNotification:(BOOL)notification;
- (void)_updatePendingIncomingSatelliteMessageCount:(id)count shouldPostNotification:(BOOL)notification;
- (void)_updatePersonCentricIDForChat:(id)chat;
- (void)_updatePersonCentricIDToChatMapForChat:(id)chat toNewPersonCentricID:(id)d;
- (void)_updateReplySuggestions:(id)suggestions withInfo:(id)info;
- (void)_updateTranscriptBackgroundForChat:(id)chat shouldPostNotification:(BOOL)notification;
- (void)_updateUnreadCountForChat:(id)chat shouldPostNotification:(BOOL)notification;
- (void)_validateChatQueryResults:(id)results matchCurrentCacheResults:(id)cacheResults;
- (void)_verifyChatMergeWithChat:(id)chat dictionary:(id)dictionary;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties chatPersonCentricID:(id)d member:(id)member statusChanged:(int)changed;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties error:(id)error;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD initialEmergencyQuestionnaireReceived:(id)received;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageReceived:(id)received;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageSent:(id)sent;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messagesReceived:(id)received removed:(id)self0 messagesComingFromStorage:(BOOL)self1;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD statusChanged:(int)changed handleInfo:(id)self0;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties invitationReceived:(id)received;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties updateProperties:(id)updateProperties;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messageUpdated:(id)updated;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messageUpdated:(id)updated suppressNotification:(BOOL)notification;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style notifySentMessage:(id)message sendTime:(id)time isReplicating:(BOOL)replicating;
- (void)account:(id)account handleID:(id)d updatedLastReceivedOnGridMessageDate:(id)date;
- (void)attachmentQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result;
- (void)blackholedChatsExist:(BOOL)exist;
- (void)capabilitiesUpdatedForHandle:(id)handle;
- (void)chat:(id)chat brandLogoUpdated:(id)updated transferGuid:(id)guid;
- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated sender:(id)sender;
- (void)chat:(id)chat engramIDUpdated:(id)updated;
- (void)chat:(id)chat isDeletingIncomingMessagesUpdated:(BOOL)updated;
- (void)chat:(id)chat isFilteredUpdated:(int64_t)updated;
- (void)chat:(id)chat isRecoveredUpdated:(BOOL)updated;
- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated;
- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated lastAddressedSIMIDUpdated:(id)dUpdated;
- (void)chat:(id)chat lastAddressedSIMIDUpdated:(id)updated;
- (void)chat:(id)chat lastMessageTimeStampOnLoadUpdated:(double)updated;
- (void)chat:(id)chat propertiesUpdated:(id)updated;
- (void)chat:(id)chat uncachedAttachmentCountUpdated:(id)updated;
- (void)chat:(id)chat updated:(id)updated;
- (void)chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats;
- (void)chatsNeedRemerging:(id)remerging groupedChats:(id)chats;
- (void)clearHistoryAndReloadLastMessageForChatsWithGUIDs:(id)ds;
- (void)clearHistoryAndReloadLastMessageForMergedFilteredChats;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)downloadedPurgedAssetBatchForChatIDs:(id)ds completedTransferGUIDs:(id)iDs;
- (void)engroupParticipantsUpdatedForChat:(id)chat;
- (void)enumerateAllChatsAndAttachmentSizesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)finishedDownloadingPurgedAssetsForChatIDs:(id)ds;
- (void)forcedReloadingChatRegistryWithQueryID:(id)d;
- (void)frequentRepliesQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit;
- (void)groupPhotoUpdatedForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account userInfo:(id)info;
- (void)historicalMessageGUIDsDeleted:(id)deleted chatGUIDs:(id)ds queryID:(id)d;
- (void)historyQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit;
- (void)isDownloadingQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(BOOL)result;
- (void)lastFailedMessageDateChanged:(int64_t)changed;
- (void)leftChat:(id)chat;
- (void)loadedChats:(id)chats queryID:(id)d;
- (void)loadedRecoverableMessagesMetadata:(id)metadata queryID:(id)d;
- (void)markAsSpamQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result;
- (void)markChatGUIDsAsReviewed:(id)reviewed;
- (void)markChatsAsReadFilteredUsingPredicate:(id)predicate;
- (void)markChatsAsReviewed:(id)reviewed;
- (void)markedAsReadForMessageGUID:(id)d success:(BOOL)success queryID:(id)iD;
- (void)moveMessagesInChatsToRecentlyDeleted:(id)deleted deleteDate:(id)date synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)movedMessageGUIDsToRecentlyDeleted:(id)deleted forChatWithGUID:(id)d queryID:(id)iD deletionDate:(id)date;
- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)ds queryID:(id)d deletionDate:(id)date;
- (void)pagedHistoryQuery:(id)query chatID:(id)d services:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after finishedWithResult:(id)result hasMessagesBefore:(BOOL)messagesBefore hasMessagesAfter:(BOOL)self0;
- (void)permanentlyDeleteRecoverableMessagesInChats:(id)chats synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds;
- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds queryID:(id)d;
- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)ds deletedChatGUIDs:(id)iDs;
- (void)previouslyBlackholedChatLoadedWithChatIdentifier:(id)identifier chats:(id)chats;
- (void)previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat;
- (void)recoverMessagesForChats:(id)chats synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:(id)ds;
- (void)recoveredMessagesWithChatGUIDs:(id)ds queryID:(id)d;
- (void)screenTimeEnablementChanged:(BOOL)changed;
- (void)service:(id)service chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated;
- (void)serviceSwitchRequestReceivedForChatWithIdentifier:(id)identifier;
- (void)setUpInitialCallState;
- (void)setUserActivityForChat:(id)chat message:(id)message orHandles:(id)handles;
- (void)setupComplete:(BOOL)complete info:(id)info;
- (void)transcriptBackgroundUpdatedForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account userInfo:(id)info;
- (void)uncachedAttachmentCountQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result;
- (void)unreadCountChanged:(int64_t)changed;
- (void)unreadCountReportsUpdated:(id)updated;
- (void)unregisterChat:(id)chat;
- (void)unregisterChatWithGUID:(id)d;
- (void)updateBrandLogo:(id)logo transferGuid:(id)guid chatIdentifier:(id)identifier;
- (void)updateChatDictionaryArray:(id)array createdChat:(id)chat joinstate:(int64_t)joinstate setHasCommunicatedOveriMessage:(BOOL *)message;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority;
- (void)updateEarliestMessageDateForChats:(id)chats completion:(id)completion;
- (void)updateRecoverableMessagesMetadataSynchronously:(BOOL)synchronously loadChats:(BOOL)chats completionHandler:(id)handler;
- (void)updatedPriorityForChatsWithGUIDsAndProperties:(id)properties chatsAndMessageGUIDs:(id)ds;
- (void)updatedSummariesForChatsWithGUIDsAndProperties:(id)properties;
- (void)verifyFilteringForAllChats;
@end

@implementation IMChatRegistry

+ (IMChatRegistry)sharedRegistry
{
  if (qword_1ED767798 != -1)
  {
    sub_1A8241A08();
  }

  v3 = qword_1ED767790;

  return v3;
}

- (IMUnreadCountController)unreadCountController
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled && !self->_unreadCountController)
  {
    v5 = objc_alloc(MEMORY[0x1E69A8330]);
    v6 = objc_alloc_init(MEMORY[0x1E69A8338]);
    v7 = [v5 initWithFilteringController:v6];
    unreadCountController = self->_unreadCountController;
    self->_unreadCountController = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__unreadCountControllerUpdated_ name:*MEMORY[0x1E69A7DD0] object:self->_unreadCountController];
  }

  v10 = self->_unreadCountController;

  return v10;
}

- (void)_daemonBeganDeferredSetup
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = IMChatRegistryLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    isFirstLoad = [(IMChatRegistry *)self isFirstLoad];
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Daemon began deferred setup (firstLoad is: %{BOOL}d)", buf, 8u);
  }

  [(IMChatRegistry *)self _recalculateServiceNamesForChatIdentifierSearch];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83C3D1C;
  aBlock[3] = &unk_1E780FCB0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  if (IMIsRunningInMessagesUIProcess())
  {
    networkMonitor = [(IMChatRegistry *)self networkMonitor];

    if (!networkMonitor)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v4);
    }
  }
}

- (void)_recalculateServiceNamesForChatIdentifierSearch
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [IMServiceImpl servicesWithCapabilityName:*MEMORY[0x1E69A79B0]];
  v4 = [v3 sortedArrayUsingComparator:&unk_1F1B6F3E0];
  v5 = [v4 arrayByApplyingSelector:sel_internalName];
  [(IMChatRegistry *)self setServiceNamesForChatIdentifierSearch:v5];

  v7 = IMChatRegistryLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    serviceNamesForChatIdentifierSearch = [(IMChatRegistry *)self serviceNamesForChatIdentifierSearch];
    v9 = 138543362;
    v10 = serviceNamesForChatIdentifierSearch;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Ranked service names for chat resolution: %{public}@", &v9, 0xCu);
  }
}

- (NSArray)cachedChats
{
  simulatedChats = [(IMChatRegistry *)self simulatedChats];
  v4 = simulatedChats;
  if (simulatedChats)
  {
    v5 = simulatedChats;
  }

  else
  {
    cachedChatsInThreadNameMap = [(IMChatRegistry *)self cachedChatsInThreadNameMap];
    v5 = [cachedChatsInThreadNameMap copy];
  }

  return v5;
}

- (void)_daemonCompletedDeferredSetup
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = IMChatRegistryLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = [(IMChatRegistry *)self isFirstLoad];
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Daemon completed deferred setup (firstLoad was: %{BOOL}d)", v4, 8u);
  }

  [(IMChatRegistry *)self setFirstLoad:0];
}

- (void)_resetChatRegistry
{
  [(NSMutableDictionary *)self->_chatGUIDToCurrentThreadMap removeAllObjects];
  [(NSMutableDictionary *)self->_chatGUIDToInfoMap removeAllObjects];
  [(NSMutableDictionary *)self->_chatGUIDToChatMap removeAllObjects];
  [(NSMutableDictionary *)self->_chatGUIDToiMessageSentOrReceivedMap removeAllObjects];
  [(NSMutableArray *)self->_allChatsInProcess removeAllObjects];
  [(NSMutableDictionary *)self->_chatPersonIDToChatMap removeAllObjects];
  [(NSMutableArray *)self->_cachedChatsInThreadNameMap removeAllObjects];
  [(NSMutableDictionary *)self->_threadNameToChatMap removeAllObjects];
  [(NSMutableDictionary *)self->_groupIDToChatMap removeAllObjects];

  [(IMChatRegistry *)self _resetChatReconstructionGroupMaps];
}

- (IMContactStore)contactStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8259C00;
  v10 = sub_1A825AF2C;
  v11 = 0;
  contactStoreQueue = self->_contactStoreQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A825230C;
  v5[3] = &unk_1E78133A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(contactStoreQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_fetchInitialBatchOfContactsOnLaunch
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "ChatRegistry: Fetching the initial batch of Contacts", v9, 2u);
    }
  }

  v4 = +[IMHandleRegistrar sharedInstance];
  getIDsForInitialBatch = [v4 getIDsForInitialBatch];

  v6 = [getIDsForInitialBatch count];
  if (v6)
  {
    v7 = v6 < 0x1A;
    contactStore = [(IMChatRegistry *)self contactStore];
    [contactStore fetchCNContactsForHandlesWithIDs:getIDsForInitialBatch isFinalBatch:v7];
  }

  else
  {
    contactStore = [(IMChatRegistry *)self contactStore];
    [contactStore setBatchFetchingCompleted];
  }
}

- (void)_batchFetchRemainingContactsOnLaunch
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83C14FC;
  aBlock[3] = &unk_1E780FCB0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = dispatch_time(0, 2000000000);
  v4 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83C15EC;
  v6[3] = &unk_1E780FE90;
  v7 = v2;
  v5 = v2;
  dispatch_after(v3, v4, v6);
}

- (void)setUpInitialCallState
{
  v3 = IMIsRunningInUnitTesting();
  if ((v3 & 1) == 0)
  {
    v4 = IMChatRegistryLogHandle(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Setting up initial state of calls", buf, 2u);
    }

    conversationManager = [(IMChatRegistry *)self conversationManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A8255B88;
    v6[3] = &unk_1E780FCB0;
    v6[4] = self;
    [conversationManager registerWithCompletionHandler:v6];
  }
}

- (IMDaemonQueryController)daemonQueryController
{
  daemonController = [(IMChatRegistry *)self daemonController];
  queryController = [daemonController queryController];

  return queryController;
}

+ (Class)messageClass
{
  v2 = qword_1ED7676B8;
  if (!qword_1ED7676B8)
  {
    v2 = objc_opt_class();
    qword_1ED7676B8 = v2;
  }

  return v2;
}

+ (BOOL)hasInitializedChatFiltering
{
  if (qword_1EB2E9FD0 != -1)
  {
    sub_1A84DF1A4();
  }

  return byte_1EB2FEFF0;
}

+ (void)setHasInitializedChatFiltering:(BOOL)filtering
{
  if (byte_1EB2FEFF0 != filtering)
  {
    byte_1EB2FEFF0 = filtering;
    IMSetDomainBoolForKey();
  }
}

- (void)verifyFilteringForAllChats
{
  if ((IMIsRunningInFullClient() & 1) != 0 || IMIsRunningInUnitTesting())
  {
    cachedChats = [(IMChatRegistry *)self cachedChats];
    [cachedChats enumerateObjectsUsingBlock:&unk_1F1B6DD00];

    v4 = objc_opt_class();

    MEMORY[0x1EEE66B58](v4, sel_setHasInitializedChatFiltering_);
  }
}

- (TUConversationManager)conversationManager
{
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  conversationManager = [mEMORY[0x1E69D8A58] conversationManager];

  return conversationManager;
}

- (id)existingConversationForFaceTimeConversationUUID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = dCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Existing TUConversation with UUID: %@", buf, 0xCu);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conversationManager = [(IMChatRegistry *)self conversationManager];
  activeConversations = [conversationManager activeConversations];

  v8 = [activeConversations countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v10 = *v21;
    *&v9 = 138412290;
    v19 = v9;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(activeConversations);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            uUID = [v12 UUID];
            *buf = v19;
            v26 = uUID;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Active TUConversation UUID: %@", buf, 0xCu);
          }
        }

        uUID2 = [v12 UUID];
        v16 = [uUID2 isEqual:dCopy];

        if (v16)
        {
          v17 = v12;
          goto LABEL_19;
        }
      }

      v8 = [activeConversations countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (id)chatForFaceTimeConversation:(id)conversation
{
  remoteMemberHandleStrings = [conversation remoteMemberHandleStrings];
  v5 = [(IMChatRegistry *)self chatForFaceTimeRecipientIDs:remoteMemberHandleStrings];

  return v5;
}

- (id)chatForFaceTimeRecipientIDs:(id)ds
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = +[IMAccountController sharedInstance];
  activeIMessageAccount = [v4 activeIMessageAccount];

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [IMHandle alloc];
        v14 = [(IMHandle *)v13 initWithAccount:activeIMessageAccount ID:v12 alreadyCanonical:0, v18];
        [array addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = +[IMChatRegistry sharedRegistry];
  v16 = [v15 chatWithHandles:array];

  return v16;
}

- (id)chatWithHandles:(id)handles displayName:(id)name joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d
{
  groupsCopy = groups;
  onlyCopy = only;
  v44 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  nameCopy = name;
  handleCopy = handle;
  dCopy = d;
  v18 = [handlesCopy count];
  if (v18)
  {
    if (v18 == 1)
    {
      lastObject = [handlesCopy lastObject];
      v20 = [(IMChatRegistry *)self chatWithHandle:lastObject lastAddressedHandle:handleCopy lastAddressedSIMID:dCopy];
    }

    else if (groupsCopy && ([(IMChatRegistry *)self existingChatWithHandles:handlesCopy allowAlternativeService:0 groupID:0 displayName:nameCopy joinedChatsOnly:onlyCopy], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = v21;
      lastObject = IMChatRegistryLogHandle(v21);
      if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v20;
        _os_log_impl(&dword_1A823F000, lastObject, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }
    }

    else
    {
      lastObject2 = [handlesCopy lastObject];
      lastObject = [lastObject2 account];

      v23 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatWithHandles:handlesCopy style:43 groupID:0 displayName:nameCopy joinedChatsOnly:onlyCopy];
      if (v23)
      {
        v20 = v23;
        v24 = IMChatRegistryLogHandle(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v20;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "Found created chat: %@", buf, 0xCu);
        }
      }

      else
      {
        BYTE2(v34) = 0;
        LOWORD(v34) = 0;
        v20 = [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:0 style:lastObject roomName:43 displayName:0 lastAddressedHandle:nameCopy lastAddressedSIMID:handleCopy items:dCopy participants:0 isFiltered:handlesCopy hasHadSuccessfulQuery:1 isRecovered:v34 isDeletingIncomingMessages:?];
        v24 = IMChatRegistryLogHandle([v20 _setupObservation]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          lastAddressedHandleID = [v20 lastAddressedHandleID];
          *buf = 138412546;
          v37 = v20;
          v38 = 2112;
          v39 = lastAddressedHandleID;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "Created chat: %@ , lastAddressedHandle %@", buf, 0x16u);
        }
      }

      v27 = IMChatRegistryLogHandle(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_DEFAULT, "Registering outgoing chat.", buf, 2u);
      }

      v28 = IMChatRegistryLogHandle([(IMChatRegistry *)self _registerChat:v20 isIncoming:0 guid:0]);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        guid = [v20 guid];
        chatIdentifier = [v20 chatIdentifier];
        joinState = [v20 joinState];
        [v20 personCentricID];
        v32 = v35 = lastObject;
        *buf = 138413058;
        v37 = guid;
        v38 = 2112;
        v39 = chatIdentifier;
        v40 = 2048;
        v41 = joinState;
        v42 = 2112;
        v43 = v32;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Joining chat: [IMChat guid: %@  chat identifier: %@  state: %lu  person centric ID: %@]", buf, 0x2Au);

        lastObject = v35;
      }

      [v20 join];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)allGUIDsForChat:(id)chat
{
  chatCopy = chat;
  if (chatCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82B9EB8;
    v13[3] = &unk_1E7810F78;
    v7 = chatCopy;
    v14 = v7;
    v15 = v5;
    v8 = v5;
    [chatGUIDToChatMap enumerateKeysAndObjectsUsingBlock:v13];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82B9ED4;
    v11[3] = &unk_1E78104A0;
    v12 = v7;
    [v8 sortUsingComparator:v11];
    v9 = [v8 copy];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)existingChatWithGUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    __im_isWellFormedChatGUID = [dCopy __im_isWellFormedChatGUID];
    if (__im_isWellFormedChatGUID)
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isOneChatEnabled = [mEMORY[0x1E69A8070] isOneChatEnabled];

      if (isOneChatEnabled)
      {
        v8 = IMAnyServiceGUIDFromLegacyChatGUID();

        dCopy = v8;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1A82BA190;
      v14[3] = &unk_1E7810FA0;
      v14[4] = self;
      v15 = dCopy;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1A82BA19C;
      v12[3] = &unk_1E7810FF0;
      v12[4] = self;
      dCopy = v15;
      v13 = dCopy;
      v9 = [(IMChatRegistry *)self _performSingleChatCacheLookupWithBlock:v14 cacheMissQueryKey:@"ChatCache-LoadWithGUID" queryBlock:v12];
    }

    else
    {
      v10 = IMChatRegistryLogHandle(__im_isWellFormedChatGUID);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = dCopy;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Existing chat with GUID given malformed guid (%@), only checking cache", buf, 0xCu);
      }

      v9 = [(IMChatRegistry *)self _cachedChatWithGUID:dCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries
{
  summariesCopy = summaries;
  messageSummarizationEnabled = [MEMORY[0x1E69A8090] messageSummarizationEnabled];
  if (messageSummarizationEnabled)
  {
    v6 = IMChatRegistryLogHandle(messageSummarizationEnabled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Requesting to update messages with summaries.", v9, 2u);
    }

    daemonController = [(IMChatRegistry *)self daemonController];
    remoteDaemon = [daemonController remoteDaemon];
    [remoteDaemon updateChatsUsingMessageGUIDsAndSummaries:summariesCopy];
  }
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority
{
  priorityCopy = priority;
  v5 = IMChatRegistryLogHandle(priorityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting to update messages with priority.", v8, 2u);
  }

  daemonController = [(IMChatRegistry *)self daemonController];
  remoteDaemon = [daemonController remoteDaemon];
  [remoteDaemon updateChatsUsingMessageGUIDsWithPriority:priorityCopy];
}

- (void)markChatGUIDsAsReviewed:(id)reviewed
{
  v11 = *MEMORY[0x1E69E9840];
  reviewedCopy = reviewed;
  v5 = IMChatRegistryLogHandle(reviewedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [reviewedCopy count];
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting to mark %ld chat GUIDs as reviewed.", &v9, 0xCu);
  }

  if ([reviewedCopy count])
  {
    unreadCountController = [(IMChatRegistry *)self unreadCountController];
    [unreadCountController updatePendingReviewForChatsWithGUIDs:reviewedCopy pendingReview:0];

    v7 = +[IMDaemonController sharedController];
    remoteDaemon = [v7 remoteDaemon];
    [remoteDaemon markChatGUIDsAsReviewedAndReflectToPeers:reviewedCopy];
  }
}

- (void)markChatsAsReviewed:(id)reviewed
{
  v21 = *MEMORY[0x1E69E9840];
  reviewedCopy = reviewed;
  v5 = IMChatRegistryLogHandle(reviewedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [reviewedCopy count];
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Marking %ld chats as reviewed.", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = reviewedCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        _guids = [*(*(&v14 + 1) + 8 * v11) _guids];
        allObjects = [_guids allObjects];
        [v6 addObjectsFromArray:allObjects];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(IMChatRegistry *)self markChatGUIDsAsReviewed:v6];
}

- (id)existingChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BA7D0;
    v10[3] = &unk_1E7811018;
    v11 = dsCopy;
    selfCopy = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82BA9A0;
    v7[3] = &unk_1E7811068;
    v8 = v11;
    selfCopy2 = self;
    v5 = [(IMChatRegistry *)self _performChatCacheLookupWithBlock:v10 cacheMissQueryKey:@"ChatCache-LoadWithGUID" queryBlock:v7];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_chatPredicateForGUIDs:(id)ds
{
  v3 = [ds __imArrayByApplyingBlock:&unk_1F1B6E180];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

- (id)existingChatWithHandle:(id)handle allowAlternativeService:(BOOL)service
{
  serviceCopy = service;
  v19 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = [handleCopy ID];
  if (serviceCopy)
  {
    v8 = [(IMChatRegistry *)self existingChatWithChatIdentifier:v7];
  }

  else
  {
    service = [handleCopy service];
    internalName = [service internalName];
    v8 = [(IMChatRegistry *)self _existingChatWithIdentifier:v7 style:45 service:internalName];
  }

  if (v8 && [v8 chatStyle] != 45)
  {

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = handleCopy;
        v15 = 1024;
        chatStyle = [0 chatStyle];
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Looked up existing chat for handle %@ but got chat style %c, returning nil chat (found %@)", &v13, 0x1Cu);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)existingChatWithHandles:(id)handles allowAlternativeService:(BOOL)service groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups
{
  serviceCopy = service;
  handlesCopy = handles;
  dCopy = d;
  nameCopy = name;
  v17 = [handlesCopy count];
  if (v17)
  {
    if (v17 == 1)
    {
      firstObject = [handlesCopy firstObject];
      v19 = [(IMChatRegistry *)self existingChatWithHandle:firstObject allowAlternativeService:serviceCopy];
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A82BAFEC;
      v28[3] = &unk_1E78110B0;
      v28[4] = self;
      v29 = handlesCopy;
      v32 = serviceCopy;
      v30 = dCopy;
      v31 = nameCopy;
      onlyCopy = only;
      groupsCopy = groups;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1A82BB008;
      v21[3] = &unk_1E78110F8;
      v22 = v30;
      v23 = v31;
      onlyCopy2 = only;
      v27 = serviceCopy;
      v24 = v29;
      selfCopy = self;
      v19 = [(IMChatRegistry *)self _performSingleChatCacheLookupWithBlock:v28 cacheMissQueryKey:@"ChatCache-LoadWithHandlesDisplayNameGroupID" queryBlock:v21];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)existingChatWithChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] && (objc_msgSend(identifierCopy, "isEqualToString:", @"-1") & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BB314;
    v10[3] = &unk_1E7810FA0;
    v10[4] = self;
    v11 = identifierCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82BB3DC;
    v7[3] = &unk_1E7810FF0;
    v8 = v11;
    selfCopy = self;
    v5 = [(IMChatRegistry *)self _performSingleChatCacheLookupWithBlock:v10 cacheMissQueryKey:@"ChatCache-LoadWithIdentifier" queryBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)existingChatWithGroupID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A82BB668;
    v9[3] = &unk_1E7810FA0;
    v9[4] = self;
    v10 = dCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82BB674;
    v7[3] = &unk_1E7810FF0;
    v7[4] = self;
    v8 = v10;
    v5 = [(IMChatRegistry *)self _performSingleChatCacheLookupWithBlock:v9 cacheMissQueryKey:@"ChatCache-LoadWithGroupID" queryBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)existingChatWithDeviceIndependentID:(id)d
{
  dCopy = d;
  v5 = [(IMChatRegistry *)self existingChatWithGroupID:dCopy];
  if (!v5)
  {
    v5 = [(IMChatRegistry *)self existingChatWithChatIdentifier:dCopy];
  }

  return v5;
}

- (id)existingChatWithDisplayName:(id)name
{
  nameCopy = name;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82BB8E0;
  v11[3] = &unk_1E7810FA0;
  v11[4] = self;
  v12 = nameCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82BB8EC;
  v8[3] = &unk_1E7810FF0;
  v9 = v12;
  selfCopy = self;
  v5 = v12;
  v6 = [(IMChatRegistry *)self _performSingleChatCacheLookupWithBlock:v11 cacheMissQueryKey:@"ChatCache-LoadWithGroupID" queryBlock:v8];

  return v6;
}

- (id)existingChatWithPinningIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_1A8259B10;
    v33 = sub_1A825AEB4;
    v23 = identifierCopy;
    v34 = [(IMChatRegistry *)self existingChatWithDeviceIndependentID:?];
    if (!v30[5])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      cachedChats = [(IMChatRegistry *)self cachedChats];
      v6 = [cachedChats countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v6)
      {
        v7 = *v26;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v26 != v7)
            {
              objc_enumerationMutation(cachedChats);
            }

            v9 = *(*(&v25 + 1) + 8 * i);
            if ([v9 chatStyle] != 45)
            {
              displayName = [v9 displayName];
              if ([displayName length])
              {
              }

              else
              {
                participants = [v9 participants];
                v12 = [(IMChatRegistry *)self _sortedParticipantIDHashForParticipants:participants usesPersonCentricID:0];
                v13 = [v12 isEqualToString:v23];

                if (v13)
                {
                  objc_storeStrong(v30 + 5, v9);
                  goto LABEL_17;
                }
              }
            }
          }

          v6 = [cachedChats countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    daemonController = [(IMChatRegistry *)self daemonController];
    processCapabilities = [daemonController processCapabilities];

    v18 = v30[5];
    if (!v18 && (processCapabilities & 4) != 0)
    {
      v19 = IMChatRegistryLogHandle(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v23;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Cache miss for existingChatWithPinningIdentifier %@", buf, 0xCu);
      }

      daemonController2 = [(IMChatRegistry *)self daemonController];
      synchronousRemoteDaemon = [daemonController2 synchronousRemoteDaemon];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1A82BBD70;
      v24[3] = &unk_1E7811120;
      v24[4] = self;
      v24[5] = &v29;
      [synchronousRemoteDaemon loadChatsWithPinningIdentifier:v23 reply:v24];

      v18 = v30[5];
    }

    v14 = v18;
    _Block_object_dispose(&v29, 8);

    identifierCopy = v23;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)existingChatWithPersonID:(id)d
{
  dCopy = d;
  if (IMSharedHelperPersonCentricMergingEnabled() && [dCopy length])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BBF0C;
    v10[3] = &unk_1E7810FA0;
    v10[4] = self;
    v11 = dCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82BBF18;
    v7[3] = &unk_1E7810FF0;
    v8 = v11;
    selfCopy = self;
    v5 = [(IMChatRegistry *)self _performSingleChatCacheLookupWithBlock:v10 cacheMissQueryKey:@"ChatCache-LoadWithGroupID" queryBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)existingChatWithAddresses:(id)addresses allowAlternativeService:(BOOL)service bestHandles:(id *)handles
{
  serviceCopy = service;
  v33 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  v9 = addressesCopy;
  if (serviceCopy)
  {
    handlesCopy = handles;
    v10 = IMChatRegistryLogHandle(addressesCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "allowAlternativeService is YES, attempting to find better handles for addresses: %@", buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x1E69A7FD0] validateAndCleanupID:{*(*(&v26 + 1) + 8 * i), handlesCopy}];
          contactStore = [(IMChatRegistry *)self contactStore];
          v19 = [contactStore fetchCNContactForHandleWithID:v17];

          if (v19)
          {
            [v11 addObject:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    v20 = [(IMChatRegistry *)self existingChatWithContacts:v11 bestHandles:handlesCopy];
  }

  else
  {
    v21 = [addressesCopy count];
    v22 = IMChatRegistryLogHandle(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "existingChatWithAddresses: %@", buf, 0xCu);
    }

    v23 = IMFindExistingChatForAddresses(v9, 0, v21 > 1, 1);
    v20 = v23;
    if (handles)
    {
      *handles = [v23 participants];
    }
  }

  return v20;
}

- (id)existingChatWithContacts:(id)contacts bestHandles:(id *)handles
{
  v19 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v6 = IMChatRegistryLogHandle(contactsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = contactsCopy;
    _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Finding existing chat for contacts: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_1A8259B10;
  v17 = sub_1A825AEB4;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82BC4B8;
  v10[3] = &unk_1E7811148;
  v7 = contactsCopy;
  p_buf = &buf;
  handlesCopy = handles;
  v11 = v7;
  [IMHandle bestHandlesForContacts:v7 useExtendedAsyncLookup:0 completion:v10];
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v8;
}

- (id)_mergedChatGUIDsForChatGUIDs:(id)ds
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(dsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMChatRegistry *)self _cachedChatWithGUID:*(*(&v37 + 1) + 8 * i)];
        if (v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    currentMessageFilterMode = [(IMChatRegistry *)self currentMessageFilterMode];
    chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1A82BD0F0;
    v33[3] = &unk_1E7811170;
    v15 = v5;
    selfCopy = self;
    v36 = currentMessageFilterMode;
    v34 = v15;
    [chatGUIDToChatMap enumerateKeysAndObjectsUsingBlock:v33];

    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          v23 = [v17 objectForKey:{v22, v29}];
          v24 = v23;
          if (v23)
          {
            v25 = [v23 copy];
            guid = [v22 guid];
            [v16 setObject:v25 forKeyedSubscript:guid];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v19);
    }

    dictionary = [v16 copy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  return dictionary;
}

- (void)clearHistoryAndReloadLastMessageForChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1A8259B10;
  v15 = sub_1A825AEB4;
  v16 = 0;
  v5 = +[IMDaemonController sharedController];
  synchronousRemoteDaemon = [v5 synchronousRemoteDaemon];
  v7 = [(IMChatRegistry *)self _mergedChatGUIDsForChatGUIDs:dsCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82BD38C;
  v10[3] = &unk_1E7811198;
  v10[4] = &v11;
  [synchronousRemoteDaemon loadLastMessageItemsForMergedChatsWithGUIDs:v7 completionHandler:v10];

  v8 = v12[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82BD39C;
  v9[3] = &unk_1E78109A0;
  v9[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v9];
  _Block_object_dispose(&v11, 8);
}

- (void)clearHistoryAndReloadLastMessageForMergedFilteredChats
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedChats = [(IMChatRegistry *)self cachedChats];
  v5 = [cachedChats countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(cachedChats);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsMergingFilteredThreads])
        {
          guid = [v9 guid];
          [v3 addObject:guid];
        }
      }

      v6 = [cachedChats countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(IMChatRegistry *)self clearHistoryAndReloadLastMessageForChatsWithGUIDs:v3];
}

- (void)_loadUnreadChatsWithLastMessageOlderThan:(id)than waitForReply:(BOOL)reply predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  replyCopy = reply;
  thanCopy = than;
  predicateCopy = predicate;
  handlerCopy = handler;
  daemonController = [(IMChatRegistry *)self daemonController];
  v16 = daemonController;
  if (replyCopy)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v17 = ;

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1A8259B10;
  v31 = sub_1A825AEB4;
  v32 = MEMORY[0x1E695E0F0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A82BD8FC;
  aBlock[3] = &unk_1E78101B8;
  aBlock[4] = self;
  v18 = handlerCopy;
  v26 = v18;
  v19 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A82BD998;
  v21[3] = &unk_1E78111C0;
  v24 = replyCopy;
  v23 = &v27;
  v20 = v19;
  v22 = v20;
  [v17 loadUnreadChatsWithLastMessageOlderThan:thanCopy predicate:predicateCopy limit:limit reply:v21];
  if (replyCopy)
  {
    (*(v20 + 2))(v20, v28[5]);
  }

  _Block_object_dispose(&v27, 8);
}

- (void)_loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(unint64_t)limit waitForReply:(BOOL)reply completionHandler:(id)handler
{
  handlerCopy = handler;
  thanCopy = than;
  predicateCopy = predicate;
  daemonController = [(IMChatRegistry *)self daemonController];
  v16 = daemonController;
  if (reply)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v17 = ;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A82BDBA4;
  v19[3] = &unk_1E78111E8;
  v19[4] = self;
  v20 = handlerCopy;
  replyCopy = reply;
  v18 = handlerCopy;
  [v17 loadChatsFilteredUsingPredicate:predicateCopy lastMessageOlderThan:thanCopy limit:limit reply:v19];
}

- (id)_earliestLastMessageDateFromChatDictionaries:(id)dictionaries
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A8259B10;
  v20 = sub_1A825AEB4;
  v21 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dictionariesCopy = dictionaries;
  v5 = [dictionariesCopy countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(dictionariesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1A82BDF6C;
        v11[3] = &unk_1E7811210;
        v11[4] = self;
        v11[5] = v8;
        v11[6] = &v16;
        [v8 enumerateKeysAndObjectsUsingBlock:v11];
      }

      v5 = [dictionariesCopy countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v5);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)_lastMessageDateForQueryFromChatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"lastMessageRecordDateForQuery"];
  if (!v4)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C08]];
    v6 = [v5 objectForKeyedSubscript:@"time"];
    v7 = v6;
    if (v6 && ([v6 doubleValue], v8 > 10.0))
    {
      v9 = MEMORY[0x1E695DF00];
      [v7 doubleValue];
      v4 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)updateEarliestMessageDateForChats:(id)chats completion:(id)completion
{
  chatsCopy = chats;
  completionCopy = completion;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(chatsCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82BE254;
  v14[3] = &unk_1E7811238;
  v8 = v7;
  v15 = v8;
  [chatsCopy enumerateObjectsUsingBlock:v14];
  v9 = +[IMDaemonController sharedController];
  synchronousRemoteDaemon = [v9 synchronousRemoteDaemon];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82BE2AC;
  v12[3] = &unk_1E78100B8;
  v13 = chatsCopy;
  v11 = chatsCopy;
  [synchronousRemoteDaemon fetchEarliestMessageDateForChatsWithGUIDs:v8 completion:v12];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)chatWithHandle:(id)handle lastAddressedHandle:(id)addressedHandle lastAddressedSIMID:(id)d shouldForceCreate:(BOOL)create
{
  createCopy = create;
  v46 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  addressedHandleCopy = addressedHandle;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = handleCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEBUG, "handle: %@", buf, 0xCu);
    }
  }

  if (!handleCopy)
  {
    v15 = 0;
    goto LABEL_32;
  }

  v14 = [(IMChatRegistry *)self existingChatWithHandle:handleCopy];
  v15 = v14;
  if (v14)
  {
LABEL_7:
    if (!createCopy)
    {
      v16 = IMChatRegistryLogHandle(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = v15;
        v40 = 2112;
        v41 = handleCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "Redirecting chat %@ to handle: %@", buf, 0x16u);
      }

      [v15 setRecipient:handleCopy];
      account = [handleCopy account];
      [v15 _setAccount:account];

      goto LABEL_32;
    }

    goto LABEL_17;
  }

  v14 = IMSharedHelperContactsBasedMergingEnabled();
  if (!v14)
  {
    v15 = 0;
    goto LABEL_17;
  }

  v14 = [(IMChatRegistry *)self _existingChatForHandleUsingPersonID:handleCopy];
  v15 = v14;
  if (v14)
  {
    v18 = IMChatRegistryLogHandle(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v15;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Found a chat using PersonID: %@ ", buf, 0xCu);
    }

    v14 = [v15 setRecipient:handleCopy];
    goto LABEL_7;
  }

LABEL_17:
  v19 = IMChatRegistryLogHandle(v14);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "No chat found", buf, 2u);
  }

  v20 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatWithHandle:handleCopy];

  if (!v20 || createCopy)
  {
    v24 = [IMChat alloc];
    account2 = [handleCopy account];
    v26 = IMSingleObjectArray();
    BYTE2(v37) = 0;
    LOWORD(v37) = 0;
    v15 = [IMChat _initWithGUID:v24 account:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" style:0 roomName:account2 displayName:45 lastAddressedHandle:0 lastAddressedSIMID:0 items:addressedHandleCopy participants:dCopy isFiltered:0 hasHadSuccessfulQuery:v26 isRecovered:1 isDeletingIncomingMessages:v37];

    account3 = IMChatRegistryLogHandle([v15 _setupObservation]);
    if (os_log_type_enabled(account3, OS_LOG_TYPE_DEFAULT))
    {
      lastAddressedHandleID = [v15 lastAddressedHandleID];
      lastAddressedSIMID = [v15 lastAddressedSIMID];
      *buf = 138412802;
      v39 = v15;
      v40 = 2112;
      v41 = lastAddressedHandleID;
      v42 = 2112;
      v43 = lastAddressedSIMID;
      _os_log_impl(&dword_1A823F000, account3, OS_LOG_TYPE_DEFAULT, "Created chat: %@ lastaddressed handle %@ last addressed simID %@", buf, 0x20u);
    }
  }

  else
  {
    v22 = IMChatRegistryLogHandle(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v20;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "Found created chat: %@", buf, 0xCu);
    }

    [v20 setRecipient:handleCopy];
    account3 = [handleCopy account];
    [v20 _setAccount:account3];
    v15 = v20;
  }

  v30 = IMChatRegistryLogHandle(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "registering outgoing chat.", buf, 2u);
  }

  v31 = IMChatRegistryLogHandle([(IMChatRegistry *)self _registerChat:v15 isIncoming:0 guid:0]);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    guid = [v15 guid];
    chatIdentifier = [v15 chatIdentifier];
    joinState = [v15 joinState];
    personCentricID = [v15 personCentricID];
    *buf = 138413058;
    v39 = guid;
    v40 = 2112;
    v41 = chatIdentifier;
    v42 = 2048;
    v43 = joinState;
    v44 = 2112;
    v45 = personCentricID;
    _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Joining chat: [IMChat guid: %@  chat identifier: %@  state: %lu  person centric ID: %@]", buf, 0x2Au);
  }

  [v15 join];
LABEL_32:

  return v15;
}

- (void)_validateChatQueryResults:(id)results matchCurrentCacheResults:(id)cacheResults
{
  v23 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  cacheResultsCopy = cacheResults;
  if (![resultsCopy count] && !objc_msgSend(cacheResultsCopy, "count"))
  {
    goto LABEL_23;
  }

  if (![resultsCopy count] && objc_msgSend(cacheResultsCopy, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = cacheResultsCopy;
        v21 = 2112;
        v22 = resultsCopy;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Chat cache now has chats, but query didn't explictly populate it, cache: %@ query: %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {

LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = cacheResultsCopy;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Chat cache does not have results returned from daemon in cache miss query, cache: %@ query: %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v9 = 0;
  v10 = *v15;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 |= [cacheResultsCopy containsObjectIdenticalTo:{*(*(&v14 + 1) + 8 * i), v14}];
    }

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:
}

- (id)_performSingleChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock
{
  blockCopy = block;
  queryBlockCopy = queryBlock;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82BECB4;
  v20[3] = &unk_1E7811260;
  v21 = blockCopy;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_1A82BED7C;
  v18 = &unk_1E7811288;
  v19 = queryBlockCopy;
  v10 = queryBlockCopy;
  v11 = blockCopy;
  v12 = [(IMChatRegistry *)self _performChatCacheLookupWithBlock:v20 cacheMissQueryKey:key queryBlock:&v15];
  firstObject = [v12 firstObject];

  return firstObject;
}

- (id)_performChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock
{
  v48 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  keyCopy = key;
  queryBlockCopy = queryBlock;
  v11 = queryBlockCopy;
  if (blockCopy && queryBlockCopy)
  {
    v38 = 0;
    *&v43 = 0;
    *(&v43 + 1) = &v43;
    v44 = 0x3032000000;
    v45 = sub_1A8259B10;
    v46 = sub_1A825AEB4;
    v47 = blockCopy[2](blockCopy, &v38);
    if ([(IMChatRegistry *)self processingChatCacheMiss])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [*(*(&v43 + 1) + 40) count];
          *buf = 134217984;
          v40 = v13;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Attempting a nested chat cache lookup, returning early with %llu cache results only", buf, 0xCu);
        }
      }
    }

    else
    {
      daemonController = [(IMChatRegistry *)self daemonController];
      v17 = ([daemonController processCapabilities] & 4) == 0;

      if (v17)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            daemonController2 = [(IMChatRegistry *)self daemonController];
            [daemonController2 processCapabilities];
            v21 = IMStringFromClientCapabilities();
            v22 = [*(*(&v43 + 1) + 40) count];
            *buf = 138412546;
            v40 = v21;
            v41 = 2048;
            v42 = v22;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Attempting a chat cache lookup without chats capability (has %@), returning early with %llu cache results only", buf, 0x16u);
          }
        }
      }

      else if (v38 == 1)
      {
        v23 = IMChatRegistryLogHandle(v18);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = keyCopy;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Chat cache miss for key %@", buf, 0xCu);
        }

        v24 = MEMORY[0x1E695DFD8];
        v25 = [*(*(&v43 + 1) + 40) __imArrayByApplyingBlock:&unk_1F1B6E1C0];
        v26 = [v24 setWithArray:v25];

        daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = sub_1A82BF298;
        v35[3] = &unk_1E78112D0;
        v35[4] = self;
        v37 = v11;
        v28 = v26;
        v36 = v28;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_1A82BF338;
        v30[3] = &unk_1E78112F8;
        v34 = &v43;
        v33 = blockCopy;
        v31 = keyCopy;
        selfCopy = self;
        [daemonQueryController performQueryWithKey:v31 expectsSynchronousResult:1 block:v35 completionHandler:v30];
      }
    }

    v15 = *(*(&v43 + 1) + 40);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(v43) = 136315138;
        *(&v43 + 4) = "[IMChatRegistry(Queries_Internal) _performChatCacheLookupWithBlock:cacheMissQueryKey:queryBlock:]";
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Sent nil block to %s", &v43, 0xCu);
      }
    }

    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (id)_existingChatWithIdentifier:(id)identifier style:(unsigned __int8)style service:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x1E69A8070] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v11 = [(IMChatRegistry *)self existingChatWithChatIdentifier:identifierCopy];
  }

  else
  {
    v11 = 0;
    if (identifierCopy && serviceCopy)
    {
      v12 = IMCopyAnyServiceGUIDForChat();
      v11 = [(IMChatRegistry *)self existingChatWithGUID:v12];
    }
  }

  return v11;
}

- (id)_existingChatWithIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  identifierCopy = identifier;
  accountCopy = account;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x1E69A8070] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v12 = [(IMChatRegistry *)self existingChatWithChatIdentifier:identifierCopy];
  }

  else
  {
    v12 = 0;
    if (identifierCopy && accountCopy)
    {
      v13 = IMCopyThreadNameForChat();
      v14 = v13;
      if (!v13 || (-[IMChatRegistry threadNameToChatMap](self, "threadNameToChatMap"), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKey:v14], v12 = objc_claimAutoreleasedReturnValue(), v15, !v12))
      {
        v16 = IMChatRegistryLogHandle(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, " ==> lookup with accountUniqueID failed, looking up with service", v21, 2u);
        }

        v17 = +[IMAccountController sharedInstance];
        v18 = [v17 accountForUniqueID:accountCopy];

        serviceName = [v18 serviceName];
        v12 = [(IMChatRegistry *)self _existingChatWithIdentifier:identifierCopy style:styleCopy service:serviceName];
      }
    }
  }

  return v12;
}

- (id)_existingChatForHandleUsingPersonID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contactStore = [(IMChatRegistry *)self contactStore];
  isBatchFetchingForLaunchCompleted = [contactStore isBatchFetchingForLaunchCompleted];

  if (isBatchFetchingForLaunchCompleted)
  {
    v7 = [dCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
    identifier = [v7 identifier];

    v9 = [identifier length];
    if (v9)
    {
      v10 = IMChatRegistryLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = identifier;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to look up chat using PersonID: %@", &v13, 0xCu);
      }

      v9 = [(IMChatRegistry *)self existingChatWithPersonID:identifier];
    }

    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_existingChatFromSiblingsForHandle:(id)handle
{
  v24 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  _chatSiblingsArray = [handleCopy _chatSiblingsArray];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = _chatSiblingsArray;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, " => siblings: %@", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = _chatSiblingsArray;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [v11 ID];
      service = [v11 service];
      internalName = [service internalName];
      v15 = [(IMChatRegistry *)self _existingChatWithIdentifier:v12 style:45 service:internalName];

      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v15 = 0;
  }

  return v15;
}

- (id)_existingChatWithHandle:(id)handle fixChatHandle:(BOOL)chatHandle
{
  chatHandleCopy = chatHandle;
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (qword_1EB2EA1D8 != -1)
  {
    sub_1A84DF928();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = qword_1EB2EA1D0;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [handleCopy ID];
        internalName = [v12 internalName];
        v15 = [(IMChatRegistry *)self _existingChatWithIdentifier:v13 style:45 service:internalName];

        if (v15)
        {

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    v16 = [(IMChatRegistry *)self _existingChatForHandleUsingPersonID:handleCopy];
    v15 = v16;
    if (v16 && chatHandleCopy)
    {
      v17 = IMChatRegistryLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Found a chat using PersonID: %@ ", buf, 0xCu);
      }

      [v15 setRecipient:handleCopy];
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (void)_loadPossibleSiblingChatsForHandlesAssociatedWithChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler
{
  replyCopy = reply;
  chatCopy = chat;
  handlerCopy = handler;
  if ([chatCopy chatStyle] == 45)
  {
    [(IMChatRegistry *)self _loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:chatCopy waitForReply:replyCopy completionHandler:handlerCopy];
  }

  else if ([chatCopy chatStyle] == 43)
  {
    [(IMChatRegistry *)self _loadAllSiblingChatsForGroupChat:chatCopy waitForReply:replyCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

- (void)_loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler
{
  v70 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([chatCopy chatStyle] == 45)
  {
    selfCopy = self;
    replyCopy = reply;
    v41 = handlerCopy;
    v42 = chatCopy;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [chatCopy participants];
    v47 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v47)
    {
      v45 = *MEMORY[0x1E695C330];
      v46 = *v61;
      v44 = *MEMORY[0x1E695C208];
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v61 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          v68[0] = v45;
          v68[1] = v44;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
          v48 = v12;
          v14 = [v12 cnContactWithKeys:v13];

          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v56 = 0u;
          emailAddresses = [v14 emailAddresses];
          v16 = [emailAddresses countByEnumeratingWithState:&v56 objects:v67 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v57;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v57 != v18)
                {
                  objc_enumerationMutation(emailAddresses);
                }

                value = [*(*(&v56 + 1) + 8 * j) value];
                v21 = IMCanonicalFormForEmail();

                if (v21)
                {
                  [v10 addObject:v21];
                }
              }

              v17 = [emailAddresses countByEnumeratingWithState:&v56 objects:v67 count:16];
            }

            while (v17);
          }

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          phoneNumbers = [v14 phoneNumbers];
          v23 = [phoneNumbers countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v53;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v53 != v25)
                {
                  objc_enumerationMutation(phoneNumbers);
                }

                value2 = [*(*(&v52 + 1) + 8 * k) value];
                stringValue = [value2 stringValue];
                v29 = IMFormatPhoneNumber();

                if (v29)
                {
                  [v10 addObject:v29];
                  v30 = IMChatCanonicalIDSIDsForAddress();
                  _stripFZIDPrefix = [v30 _stripFZIDPrefix];

                  if (_stripFZIDPrefix && ([v29 isEqualToString:_stripFZIDPrefix] & 1) == 0)
                  {
                    [v10 addObject:_stripFZIDPrefix];
                  }
                }
              }

              v24 = [phoneNumbers countByEnumeratingWithState:&v52 objects:v66 count:16];
            }

            while (v24);
          }

          v32 = [v48 ID];
          [v10 addObject:v32];
        }

        v47 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v47);
    }

    v34 = IMChatRegistryLogHandle(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v65 = v10;
      _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEFAULT, "Fetching sibling chats with handles %@", buf, 0xCu);
    }

    daemonController = [(IMChatRegistry *)selfCopy daemonController];
    v36 = daemonController;
    handlerCopy = v41;
    if (replyCopy)
    {
      [daemonController synchronousRemoteDaemon];
    }

    else
    {
      [daemonController remoteDaemon];
    }
    v37 = ;
    chatCopy = v42;

    allObjects = [v10 allObjects];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1A82C0388;
    v49[3] = &unk_1E78111E8;
    v51 = replyCopy;
    v49[4] = selfCopy;
    v50 = v41;
    [v37 loadAnyChatsContainingHandleIDsIn:allObjects reply:v49];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

- (void)_loadAllSiblingChatsForGroupChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler
{
  chatCopy = chat;
  handlerCopy = handler;
  if ([chatCopy chatStyle] == 43)
  {
    participants = [chatCopy participants];
    v11 = [participants __imArrayByApplyingBlock:&unk_1F1B6E200];

    daemonController = [(IMChatRegistry *)self daemonController];
    synchronousRemoteDaemon = [daemonController synchronousRemoteDaemon];
    displayName = [chatCopy displayName];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A82C0658;
    v15[3] = &unk_1E78111E8;
    replyCopy = reply;
    v15[4] = self;
    v16 = handlerCopy;
    [synchronousRemoteDaemon loadChatsWithHandleIDs:v11 groupID:0 displayName:displayName style:43 reply:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)deleted deleteDate:(id)date synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  deletedCopy = deleted;
  dateCopy = date;
  handlerCopy = handler;
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A82C0940;
  v21[3] = &unk_1E7811320;
  v24 = synchronouslyCopy;
  v21[4] = self;
  v22 = deletedCopy;
  v23 = dateCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82C09D8;
  v17[3] = &unk_1E7811348;
  v18 = v22;
  v19 = v23;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = v23;
  v16 = v22;
  [daemonQueryController performQueryWithKey:@"RecentlyDeleted-MoveMessagesWithGUIDsToRecovery" expectsSynchronousResult:synchronouslyCopy block:v21 completionHandler:v17];
}

- (void)moveMessagesInChatsToRecentlyDeleted:(id)deleted deleteDate:(id)date synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  deletedCopy = deleted;
  dateCopy = date;
  handlerCopy = handler;
  v13 = [(IMChatRegistry *)self allVisibleChatGUIDsForChats:deletedCopy];
  allObjects = [v13 allObjects];
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A82C0CC4;
  v24[3] = &unk_1E7811320;
  v27 = synchronouslyCopy;
  v24[4] = self;
  v25 = allObjects;
  v26 = dateCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82C0D5C;
  v20[3] = &unk_1E7811348;
  v21 = deletedCopy;
  v22 = v26;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = v26;
  v18 = deletedCopy;
  v19 = allObjects;
  [daemonQueryController performQueryWithKey:@"RecentlyDeleted-MoveMessagesInChatsToRecovery" expectsSynchronousResult:synchronouslyCopy block:v24 completionHandler:v20];
}

- (void)recoverMessagesForChats:(id)chats synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  chatsCopy = chats;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A82C117C;
  v24[3] = &unk_1E7811370;
  v25 = v10;
  selfCopy = self;
  v11 = v10;
  [chatsCopy enumerateObjectsUsingBlock:v24];
  allObjects = [v11 allObjects];
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A82C11D4;
  v21[3] = &unk_1E7811398;
  v23 = synchronouslyCopy;
  v21[4] = self;
  v22 = allObjects;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82C126C;
  v17[3] = &unk_1E78113C0;
  v17[4] = self;
  v18 = chatsCopy;
  v19 = v22;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = v22;
  v16 = chatsCopy;
  [daemonQueryController performQueryWithKey:@"RecentlyDeleted-RecoverMessages" expectsSynchronousResult:synchronouslyCopy block:v21 completionHandler:v17];
}

- (void)updateRecoverableMessagesMetadataSynchronously:(BOOL)synchronously loadChats:(BOOL)chats completionHandler:(id)handler
{
  chatsCopy = chats;
  synchronouslyCopy = synchronously;
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = IMChatRegistryLogHandle(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v18 = synchronouslyCopy;
    v19 = 1024;
    v20 = chatsCopy;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Loading recoverable message metadata synchronously %{BOOL}d loadsChats %{BOOL}d", buf, 0xEu);
  }

  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82C1544;
  v15[3] = &unk_1E78113E8;
  v16 = synchronouslyCopy;
  v15[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82C15D4;
  v12[3] = &unk_1E7811438;
  v14 = chatsCopy;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [daemonQueryController performQueryWithKey:@"RecentlyDeleted-RecoverableMessagesMetadata" expectsSynchronousResult:synchronouslyCopy block:v15 completionHandler:v12];
}

- (void)permanentlyDeleteRecoverableMessagesInChats:(id)chats synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  chatsCopy = chats;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82C1B4C;
  v23[3] = &unk_1E7811370;
  v24 = v10;
  selfCopy = self;
  v11 = v10;
  [chatsCopy enumerateObjectsUsingBlock:v23];
  allObjects = [v11 allObjects];
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82C1BA4;
  v20[3] = &unk_1E7811398;
  v22 = synchronouslyCopy;
  v20[4] = self;
  v21 = allObjects;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82C1C3C;
  v17[3] = &unk_1E7811460;
  v18 = chatsCopy;
  v19 = handlerCopy;
  v14 = handlerCopy;
  v15 = chatsCopy;
  v16 = allObjects;
  [daemonQueryController performQueryWithKey:@"RecentlyDeleted-PermanentlyDeleteRecoverableMessages" expectsSynchronousResult:synchronouslyCopy block:v20 completionHandler:v17];
}

- (id)allVisibleChatGUIDsForChats:(id)chats
{
  v4 = MEMORY[0x1E695DFA8];
  chatsCopy = chats;
  v6 = objc_alloc_init(v4);
  currentMessageFilterMode = [(IMChatRegistry *)self currentMessageFilterMode];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82C1EAC;
  v12[3] = &unk_1E7811488;
  v12[4] = self;
  v14 = currentMessageFilterMode;
  v8 = v6;
  v13 = v8;
  [chatsCopy enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

- (void)enumerateAllChatsAndAttachmentSizesWithOptions:(unint64_t)options usingBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v6 = +[IMChatRegistry sharedRegistry];
  numberOfCachedChats = [v6 numberOfCachedChats];

  if (numberOfCachedChats)
  {
    v8 = IMDAttachmentFindLargestConversations();
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Found dbLargestConversations: %@", buf, 0xCu);
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = objc_autoreleasePoolPush();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A8303F50;
    v20[3] = &unk_1E7812120;
    v20[4] = self;
    v12 = dictionary;
    v21 = v12;
    [v8 enumerateObjectsUsingBlock:v20];

    objc_autoreleasePoolPop(v11);
    v13 = objc_autoreleasePoolPush();
    v14 = [v12 keysSortedByValueUsingComparator:&unk_1F1B6E620];
    objc_autoreleasePoolPop(v13);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A8304114;
    v17[3] = &unk_1E7812168;
    v17[4] = self;
    v18 = v12;
    v19 = blockCopy;
    v15 = v12;
    [v14 enumerateObjectsUsingBlock:v17];
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "No cached chats are loaded -- client has likely not received setup. Skipping largest conversation load.", buf, 2u);
    }
  }
}

- (id)chatForIMHandles:(id)handles chatName:(id)name lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  nameCopy = name;
  handleCopy = handle;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = handlesCopy;
      v35 = 2112;
      v36 = nameCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "handles: %@  name: %@", buf, 0x16u);
    }
  }

  lastObject = [handlesCopy lastObject];
  service = [lastObject service];

  v17 = [service maxChatParticipantsForHandle:handleCopy simID:dCopy];
  v18 = v17;
  if (v17 < 1 || (v19 = [handlesCopy count], v19 <= objc_msgSend(service, "maxChatParticipantsForHandle:simID:", handleCopy, dCopy)))
  {
    v21 = [(IMChatRegistry *)self existingChatForIMHandles:handlesCopy];
    account = IMChatRegistryLogHandle(v21);
    v23 = os_log_type_enabled(account, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        *buf = 138412290;
        v34 = v21;
        _os_log_impl(&dword_1A823F000, account, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }

LABEL_28:

      goto LABEL_29;
    }

    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, account, OS_LOG_TYPE_DEFAULT, "No chat found", buf, 2u);
    }

    lastObject2 = [handlesCopy lastObject];
    account = [lastObject2 account];

    v25 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatWithHandles:handlesCopy style:43 groupID:0 displayName:0 joinedChatsOnly:0];
    v21 = v25;
    if (v25)
    {
      v26 = IMChatRegistryLogHandle(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v21;
        v27 = "Found created chat: %@";
LABEL_22:
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
      }
    }

    else
    {
      BYTE2(v32) = 0;
      LOWORD(v32) = 0;
      v21 = [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:0 style:account roomName:43 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:handleCopy items:dCopy participants:0 isFiltered:handlesCopy hasHadSuccessfulQuery:1 isRecovered:v32 isDeletingIncomingMessages:?];
      v26 = IMChatRegistryLogHandle([v21 _setupObservation]);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v21;
        v27 = "Created chat: %@";
        goto LABEL_22;
      }
    }

    v29 = IMChatRegistryLogHandle(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Registering outgoing chat: %@", buf, 0xCu);
    }

    v30 = IMChatRegistryLogHandle([(IMChatRegistry *)self _registerChat:v21 isIncoming:0 guid:0]);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Joining chat: %@", buf, 0xCu);
    }

    [v21 join];
    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v34) = v18;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Failing to invite participants that would put us over our max size of: %d", buf, 8u);
    }
  }

  v21 = 0;
LABEL_29:

  return v21;
}

- (id)chatForRoom:(id)room onAccount:(id)account
{
  v26 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = roomCopy;
      v24 = 2112;
      v25 = accountCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "roomName: %@  account: %@", buf, 0x16u);
    }
  }

  if (accountCopy)
  {
    v9 = [accountCopy chatIDForRoomName:roomCopy];

    v11 = IMChatRegistryLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Account pushed room name to: %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = roomCopy;
  }

  v12 = [(IMChatRegistry *)self existingChatForRoom:v9 onAccount:accountCopy];
  v13 = v12;
  if (v12)
  {
    v14 = IMChatRegistryLogHandle(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v15 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatForRoom:v9 onAccount:accountCopy];
  v13 = v15;
  if (v15)
  {
    v16 = IMChatRegistryLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      v17 = "Found created chat: %@";
LABEL_19:
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    }
  }

  else
  {
    BYTE2(v21) = 0;
    LOWORD(v21) = 0;
    v13 = [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:0 style:accountCopy roomName:35 displayName:v9 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:0 hasHadSuccessfulQuery:1 isRecovered:v21 isDeletingIncomingMessages:?];
    v16 = IMChatRegistryLogHandle([v13 _setupObservation]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      v17 = "Created chat: %@";
      goto LABEL_19;
    }
  }

  v19 = IMChatRegistryLogHandle(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Registering chat: %@", buf, 0xCu);
  }

  [(IMChatRegistry *)self _registerChat:v13 isIncoming:0 guid:0];
LABEL_23:

  return v13;
}

- (unint64_t)numberOfExistingChats
{
  simulatedChats = [(IMChatRegistry *)self simulatedChats];
  if (simulatedChats)
  {
    [(IMChatRegistry *)self simulatedChats];
  }

  else
  {
    [(IMChatRegistry *)self cachedChatsInThreadNameMap];
  }
  v4 = ;
  v5 = [v4 count];

  return v5;
}

- (NSArray)allExistingChats
{
  simulatedChats = [(IMChatRegistry *)self simulatedChats];
  v4 = simulatedChats;
  if (simulatedChats)
  {
    cachedChatsInThreadNameMap = simulatedChats;
  }

  else
  {
    cachedChatsInThreadNameMap = [(IMChatRegistry *)self cachedChatsInThreadNameMap];
  }

  v6 = cachedChatsInThreadNameMap;

  return v6;
}

- (id)existingChatForRoom:(id)room onAccount:(id)account allowRetargeting:(BOOL)retargeting
{
  roomCopy = room;
  uniqueID = [account uniqueID];
  v9 = [(IMChatRegistry *)self _existingChatWithIdentifier:roomCopy style:35 account:uniqueID];

  return v9;
}

- (id)existingChatForIMHandles:(id)handles allowRetargeting:(BOOL)retargeting groupID:(id)d displayName:(id)name ignoresDisplayName:(BOOL)displayName joinedChatsOnly:(BOOL)only
{
  onlyCopy = only;
  v49 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  dCopy = d;
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [handlesCopy arrayByApplyingSelector:"ID"];
      v14 = @"NO";
      *buf = 138413058;
      v42 = v13;
      if (onlyCopy)
      {
        v14 = @"YES";
      }

      v43 = 2112;
      v44 = dCopy;
      v45 = 2112;
      v46 = nameCopy;
      v47 = 2112;
      v48 = v14;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "existingChatForHandles: %@  groupID: %@ displayName %@ isJoined %@ ", buf, 0x2Au);
    }
  }

  if ([handlesCopy count])
  {
    if ([nameCopy length])
    {
      v15 = nameCopy;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    cachedChatsInThreadNameMap = [(IMChatRegistry *)self cachedChatsInThreadNameMap];
    v18 = [cachedChatsInThreadNameMap countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v18)
    {
      v19 = *v37;
LABEL_13:
      v20 = 0;
      while (1)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(cachedChatsInThreadNameMap);
        }

        v21 = *(*(&v36 + 1) + 8 * v20);
        if ([v21 chatStyle] != 43)
        {
          goto LABEL_33;
        }

        displayName = [v21 displayName];
        if ([displayName length])
        {
          v23 = displayName;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (![dCopy length])
        {
          goto LABEL_23;
        }

        if (!(v24 | v16))
        {
          goto LABEL_28;
        }

        groupID = [v21 groupID];
        v26 = [dCopy isEqualToString:groupID];

        if (v26)
        {
LABEL_23:
          if (displayName)
          {
            goto LABEL_28;
          }

          if (v24)
          {
            if ([v24 isEqualToString:v16])
            {
              goto LABEL_28;
            }
          }

          else if (!v16)
          {
LABEL_28:
            if (!onlyCopy || [v21 joinState] >= 2)
            {
              v27 = objc_autoreleasePoolPush();
              participants = [v21 participants];
              v29 = [handlesCopy equivalentToRecipients:participants];

              if (v29)
              {
                v30 = v21;
                objc_autoreleasePoolPop(v27);

                goto LABEL_38;
              }

              objc_autoreleasePoolPop(v27);
            }
          }
        }

LABEL_33:
        if (v18 == ++v20)
        {
          v18 = [cachedChatsInThreadNameMap countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v18)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v30 = 0;
LABEL_38:

    nameCopy = v16;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)existingChatForIMHandle:(id)handle allowRetargeting:(BOOL)retargeting fixChatHandle:(BOOL)chatHandle
{
  chatHandleCopy = chatHandle;
  retargetingCopy = retargeting;
  v15 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = handleCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "handle: %@", &v13, 0xCu);
    }
  }

  v10 = [(IMChatRegistry *)self _existingChatWithHandle:handleCopy fixChatHandle:chatHandleCopy];
  v11 = v10;
  if (retargetingCopy)
  {
    [v10 setRecipient:handleCopy];
  }

  return v11;
}

- (id)existingChatForIMHandles:(id)handles allowRetargeting:(BOOL)retargeting groupID:(id)d
{
  retargetingCopy = retargeting;
  v18 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [handlesCopy arrayByApplyingSelector:"ID"];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "handles: %@  groupID: %@", &v14, 0x16u);
    }
  }

  v12 = [(IMChatRegistry *)self existingChatForIMHandles:handlesCopy allowRetargeting:retargetingCopy groupID:dCopy displayName:0 joinedChatsOnly:0];

  return v12;
}

+ (id)performanceLogHandle
{
  if (qword_1EB2E90E0 != -1)
  {
    sub_1A84E1B94();
  }

  v3 = qword_1EB2E90D8;

  return v3;
}

- (id)performanceLogHandle
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_performanceLogHandle);
}

+ (IMChatRegistry)sharedRegistryIfAvailable
{
  if (IMIsRunningInIMDPersistenceAgent())
  {
    sharedRegistry = 0;
  }

  else
  {
    sharedRegistry = [self sharedRegistry];
  }

  return sharedRegistry;
}

- (void)_noteChatInit:(id)init
{
  initCopy = init;
  if ([initCopy _shouldRegisterChat] && (-[NSMutableArray containsObjectIdenticalTo:](self->_allChatsInProcess, "containsObjectIdenticalTo:", initCopy) & 1) == 0)
  {
    [(NSMutableArray *)self->_allChatsInProcess addObject:initCopy];
  }
}

- (void)_noteChatDealloc:(id)dealloc
{
  deallocCopy = dealloc;
  if ([deallocCopy _shouldRegisterChat])
  {
    [(NSMutableArray *)self->_allChatsInProcess removeObjectIdenticalTo:deallocCopy];
  }
}

- (id)initAsListener:(BOOL)listener
{
  listenerCopy = listener;
  v55.receiver = self;
  v55.super_class = IMChatRegistry;
  v4 = [(IMChatRegistry *)&v55 init];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__handleChatParticipantsDidChange_ name:@"__kIMChatParticipantsDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__handleAddressBookChange_ name:*MEMORY[0x1E69A6838] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel__handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v4 selector:sel__handleAvailabilityChangedNotification_ name:IMHandleAvailabilityChangedNotification object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v4 selector:sel__handleAvailabilityInvitationReceivedNotification_ name:IMHandleAvailabilityInvitationReceivedNotification object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v4 selector:sel__handleAvailabilityStateChangedNotification_ name:IMHandleAvailabilityStateChangedNotification object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v4 selector:sel__handleOffGridChangedNotification_ name:*MEMORY[0x1E69A7038] object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v4 selector:sel__handleOffGridInvitationReceivedNotification_ name:*MEMORY[0x1E69A7048] object:0];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v4 selector:sel__handleOffGridStateChangedNotification_ name:*MEMORY[0x1E69A7050] object:0];

    if (IMIsRunningInMessages())
    {
      defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter10 addObserver:v4 selector:sel__handleTranslationSupportChangedNotification_ name:*MEMORY[0x1E69A6AC0] object:0];

      defaultCenter11 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter11 addObserver:v4 selector:sel__handleTranslationEnabledChangedNotification_ name:@"__kIMChatAutomaticTranslationChangedNotification" object:0];

      defaultCenter12 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter12 addObserver:v4 selector:sel__handleTranslationLanguageStatusChangedNotification_ name:*MEMORY[0x1E69A7DB8] object:0];
    }

    defaultCenter13 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter13 addObserver:v4 selector:sel__handleKeyTransparencyStatusChangedNotification_ name:@"__kIMChatKeyTransparencyStatusChangedNotification" object:0];

    defaultCenter14 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter14 addObserver:v4 selector:sel__handleChatBotPropertiesDidChangeNotification_ name:*MEMORY[0x1E69A6AD0] object:0];

    *(v4 + 16) = 1;
    v19 = *(v4 + 13);
    *(v4 + 13) = 0;

    *(v4 + 12) = 1;
    v20 = *(v4 + 14);
    *(v4 + 14) = 0;

    *(v4 + 15) = 0;
    v21 = *(v4 + 17);
    *(v4 + 17) = 0;

    v22 = *(v4 + 33);
    *(v4 + 33) = 0;

    v23 = *(v4 + 32);
    *(v4 + 32) = 0;

    nonRetainingArray = [MEMORY[0x1E695DF70] nonRetainingArray];
    v25 = *(v4 + 20);
    *(v4 + 20) = nonRetainingArray;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = *(v4 + 24);
    *(v4 + 24) = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = *(v4 + 22);
    *(v4 + 22) = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = *(v4 + 23);
    *(v4 + 23) = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = *(v4 + 27);
    *(v4 + 27) = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v35 = *(v4 + 18);
    *(v4 + 18) = v34;

    v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37 = *(v4 + 29);
    *(v4 + 29) = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = *(v4 + 30);
    *(v4 + 30) = v38;

    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = *(v4 + 25);
    *(v4 + 25) = v40;

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = *(v4 + 21);
    *(v4 + 21) = v42;

    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    *(v4 + 13) = [mEMORY[0x1E69A60F0] isInternalInstall];

    *(v4 + 15) = 0;
    if (listenerCopy)
    {
      v45 = +[IMDaemonController sharedController];
      listener = [v45 listener];
      [listener addHandler:v4];

      mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
      [mEMORY[0x1E69A6160] addListener:v4];
    }

    v48 = +[IMChatHistoryController sharedInstance];
    v49 = dispatch_queue_create("IMChatRegistry.contactStoreQueue", 0);
    v50 = *(v4 + 7);
    *(v4 + 7) = v49;

    v51 = *(v4 + 7);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A834E3BC;
    block[3] = &unk_1E780FCB0;
    v54 = v4;
    dispatch_async(v51, block);
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4 = +[IMDaemonController sharedController];
  listener = [v4 listener];
  [listener removeHandler:self];

  v6.receiver = self;
  v6.super_class = IMChatRegistry;
  [(IMChatRegistry *)&v6 dealloc];
}

- (IMDaemonProtocol)remoteDaemon
{
  daemonController = [(IMChatRegistry *)self daemonController];
  remoteDaemon = [daemonController remoteDaemon];

  return remoteDaemon;
}

- (void)_verifyChatMergeWithChat:(id)chat dictionary:(id)dictionary
{
  v46 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (chatCopy && dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"style"];
    intValue = [v8 intValue];

    chatStyle = [chatCopy chatStyle];
    v11 = chatStyle != intValue;
    if (chatStyle == intValue)
    {
      v17 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          guid = [chatCopy guid];
          *buf = 138412802;
          v42 = guid;
          v43 = 1024;
          *v44 = [chatCopy chatStyle];
          *&v44[4] = 1024;
          *&v44[6] = intValue;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "**WARNING** Incorrectly attempting to register dictionary to chat %@ with style %c (expected %c)", buf, 0x18u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          __im_copyChatDictionaryWithRedactedMessageContent = [v7 __im_copyChatDictionaryWithRedactedMessageContent];
          *buf = 138412290;
          v42 = __im_copyChatDictionaryWithRedactedMessageContent;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Dictionary: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = chatCopy;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v17 = @"Mismatched chat style";
    }

    v18 = [v7 objectForKeyedSubscript:@"participants"];
    participants = [chatCopy participants];
    v20 = [participants count];
    LOBYTE(v20) = v20 == [v18 count];

    if ((v20 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          guid2 = [chatCopy guid];
          participants2 = [chatCopy participants];
          *buf = 138412802;
          v42 = guid2;
          v43 = 2112;
          *v44 = participants2;
          *&v44[8] = 2112;
          v45 = v18;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "**WARNING** Incorrectly attempting to register dictionary to chat %@ with participants %@ (expected %@)", buf, 0x20u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          __im_copyChatDictionaryWithRedactedMessageContent2 = [v7 __im_copyChatDictionaryWithRedactedMessageContent];
          *buf = 138412290;
          v42 = __im_copyChatDictionaryWithRedactedMessageContent2;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Dictionary: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = chatCopy;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v11 = 1;
      v17 = @"Mismatched participant count";
    }

    participants3 = [chatCopy participants];
    v28 = [participants3 count] == 0;

    if (v28)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          guid3 = [chatCopy guid];
          *buf = 138412546;
          v42 = guid3;
          v43 = 2112;
          *v44 = v18;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "**WARNING** Zero participants in chat %@ (dictionary has %@)", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          __im_copyChatDictionaryWithRedactedMessageContent3 = [v7 __im_copyChatDictionaryWithRedactedMessageContent];
          *buf = 138412290;
          v42 = __im_copyChatDictionaryWithRedactedMessageContent3;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Dictionary: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = chatCopy;
          _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v17 = @"Zero participants";
    }

    else if (!v11)
    {
LABEL_52:

      goto LABEL_53;
    }

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    v35 = MEMORY[0x1E696ABC0];
    if (v17)
    {
      v36 = v17;
    }

    else
    {
      v36 = @"Generic merge error";
    }

    v39 = *MEMORY[0x1E696A278];
    v40 = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v38 = [v35 errorWithDomain:@"com.apple.Messages.IMChatRegistryErrorDomain" code:2 userInfo:v37];
    [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"Invalid Chat Merge" errorPayload:v38];

    goto LABEL_52;
  }

LABEL_53:
}

- (void)_registerChatDictionary:(id)dictionary forChat:(id)chat isIncoming:(BOOL)incoming newGUID:(id)d shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  incomingCopy = incoming;
  v117 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  chatCopy = chat;
  dCopy = d;
  if (![chatCopy _shouldRegisterChat])
  {
    goto LABEL_109;
  }

  v87 = notificationCopy;
  v95 = dCopy;
  v13 = IMAdditionalChatRegistryLoggingEnabled();
  if ((v13 & 1) != 0 || !self->_firstLoad)
  {
    v14 = IMChatRegistryLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v109 = v95;
      v110 = 1024;
      *v111 = incomingCopy;
      *&v111[4] = 1024;
      *&v111[6] = notificationCopy;
      *v112 = 2112;
      *&v112[2] = chatCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Registering dictionary for with newGUID: %@ isIncoming: %{BOOL}d shouldPostNotification: %{BOOL}d chat: %@", buf, 0x22u);
    }
  }

  account = [chatCopy account];
  uniqueID = [account uniqueID];

  chatIdentifier = [chatCopy chatIdentifier];
  chatStyle = [chatCopy chatStyle];
  if (v95)
  {
    guid = v95;
  }

  else
  {
    guid = [chatCopy guid];
  }

  key = [chatCopy groupID];
  if (dictionaryCopy)
  {
    v16 = [dictionaryCopy objectForKey:@"accountID"];

    if (!guid)
    {
      guid = [dictionaryCopy objectForKey:@"guid"];
    }

    v17 = [dictionaryCopy objectForKey:@"chatIdentifier"];

    v18 = [dictionaryCopy objectForKey:@"style"];
    chatStyle = [v18 intValue];

    chatIdentifier = v17;
    uniqueID = v16;
  }

  [(IMChatRegistry *)self _verifyChatMergeWithChat:chatCopy dictionary:?];
  if (v95)
  {
    v106 = 0;
    IMComponentsFromChatGUID();
    v19 = 0;
    if ([v19 length])
    {
      v20 = v19;

      chatIdentifier = v20;
    }
  }

  v91 = IMCopyThreadNameForChat();
  if (!v91)
  {
    v24 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      guid2 = [chatCopy guid];
      *buf = 138412290;
      v109 = guid2;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, " => empty thread name for guid %@", buf, 0xCu);
    }

    goto LABEL_105;
  }

  v88 = [(NSMutableDictionary *)self->_chatGUIDToChatMap objectForKey:guid];

  if (chatCopy)
  {
    chatGUIDToChatMap = self->_chatGUIDToChatMap;
    guid3 = [chatCopy guid];
    v23 = [(NSMutableDictionary *)chatGUIDToChatMap objectForKey:guid3];
    v86 = v23 != 0;
  }

  else
  {
    v86 = 0;
  }

  if (chatStyle == 43)
  {
    if ([key length])
    {
      v26 = [(NSMutableDictionary *)self->_groupIDToChatMap objectForKey:key];
      v27 = v26 == 0;

      if (v27)
      {
        v28 = chatCopy;
        if (chatCopy)
        {
          CFDictionarySetValue(self->_groupIDToChatMap, key, v28);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A84E1BEC();
        }
      }
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    domainIdentifiers = [chatCopy domainIdentifiers];
    allIdentifiers = [domainIdentifiers allIdentifiers];

    v31 = [allIdentifiers countByEnumeratingWithState:&v102 objects:v116 count:16];
    if (v31)
    {
      v32 = *v103;
      v33 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v103 != v32)
          {
            objc_enumerationMutation(allIdentifiers);
          }

          v35 = *(*(&v102 + 1) + 8 * i);
          v36 = [(NSMutableDictionary *)self->_groupIDToChatMap objectForKey:v35];
          v37 = v36 == 0;

          if (v37)
          {
            v38 = chatCopy;
            if (chatCopy)
            {
              CFDictionarySetValue(self->_groupIDToChatMap, v35, v38);
            }

            else
            {
              v39 = v33;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v109 = v35;
                v110 = 2080;
                *v111 = "_groupIDToChatMap";
                _os_log_error_impl(&dword_1A823F000, v33, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
              }
            }
          }
        }

        v31 = [allIdentifiers countByEnumeratingWithState:&v102 objects:v116 count:16];
      }

      while (v31);
    }
  }

  if (v88)
  {
    goto LABEL_106;
  }

  guid4 = [chatCopy guid];
  if ([guid4 isEqualToString:guid])
  {
    isInternalInstall = 0;
  }

  else
  {
    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];
  }

  chatIdentifier2 = [chatCopy chatIdentifier];
  v44 = chatIdentifier2 == 0;

  if (v44)
  {
    v48 = 0;
  }

  else
  {
    chatIdentifier3 = [chatCopy chatIdentifier];
    v47 = [guid containsString:chatIdentifier3];

    v48 = v47 ^ 1;
  }

  v49 = isInternalInstall ^ 1;
  if (chatStyle != 43)
  {
    v49 = 1;
  }

  if (v49)
  {
    if (chatStyle == 45)
    {
      v68 = isInternalInstall;
    }

    else
    {
      v68 = 0;
    }

    if (v68 != 1)
    {
      goto LABEL_84;
    }

    v55 = IMChatRegistryLogHandle(v45);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6C68]];
      guid5 = [chatCopy guid];
      personCentricID = [chatCopy personCentricID];
      *buf = 138413314;
      v109 = guid;
      v110 = 2112;
      *v111 = v69;
      *&v111[8] = 2048;
      *v112 = chatCopy;
      *&v112[8] = 2112;
      v113 = guid5;
      v114 = 2112;
      v115 = personCentricID;
      _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_DEFAULT, "Registering chat with guid: %@ and personID %@ for chat %p with guid %@ and personID %@", buf, 0x34u);
    }
  }

  else
  {
    v50 = IMChatRegistryLogHandle(v45);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      guid6 = [chatCopy guid];
      groupID = [chatCopy groupID];
      *buf = 138413314;
      v109 = guid;
      v110 = 2112;
      *v111 = key;
      *&v111[8] = 2048;
      *v112 = chatCopy;
      *&v112[8] = 2112;
      v113 = guid6;
      v114 = 2112;
      v115 = groupID;
      _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_DEFAULT, "Registering chat with guid: %@ groupID: %@ for chat %p with guid %@ groupID: %@ ", buf, 0x34u);
    }

    if (!v48)
    {
      goto LABEL_84;
    }

    v53 = [dictionaryCopy objectForKey:@"participants"];
    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v53, "count")}];
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v55 = v53;
    v56 = [v55 countByEnumeratingWithState:&v98 objects:v107 count:16];
    if (v56)
    {
      v57 = *v99;
      v58 = *MEMORY[0x1E69A6310];
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v99 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [*(*(&v98 + 1) + 8 * j) objectForKey:v58];
          if ([v60 length])
          {
            [v54 addObject:v60];
          }

          else
          {
            v61 = IMChatRegistryLogHandle(0);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_DEFAULT, "Skipping an participant with empty ID!", buf, 2u);
            }
          }
        }

        v56 = [v55 countByEnumeratingWithState:&v98 objects:v107 count:16];
      }

      while (v56);
    }

    v63 = IMChatRegistryLogHandle(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v109 = v54;
      _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_DEFAULT, "participants of chat we are registering %@", buf, 0xCu);
    }

    v65 = IMChatRegistryLogHandle(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      participants = [chatCopy participants];
      v67 = [participants arrayByApplyingSelector:"ID"];
      *buf = 138412290;
      v109 = v67;
      _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_DEFAULT, "participants of existing chat %@", buf, 0xCu);
    }
  }

LABEL_84:
  v72 = chatCopy;
  if (chatCopy)
  {
    CFDictionarySetValue(self->_chatGUIDToChatMap, guid, v72);
  }

  else
  {
    v73 = MEMORY[0x1E69E9C10];
    v74 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1C68();
    }
  }

  v75 = v91;
  CFDictionarySetValue(self->_chatGUIDToCurrentThreadMap, guid, v75);

  v76 = v72;
  if (chatCopy)
  {
    CFDictionarySetValue(self->_threadNameToChatMap, v75, v76);
  }

  else
  {
    v77 = MEMORY[0x1E69E9C10];
    v78 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1CE4();
    }
  }

  personCentricID2 = [v76 personCentricID];
  v80 = personCentricID2 == 0;

  if (v80)
  {
    [(IMChatRegistry *)self _updatePersonCentricIDForChat:v76];
  }

  if (([(NSMutableArray *)self->_cachedChatsInThreadNameMap containsObjectIdenticalTo:v76]& 1) == 0)
  {
    [(NSMutableArray *)self->_cachedChatsInThreadNameMap addObject:v76];
  }

  if (incomingCopy)
  {
    v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];

    v81 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v24, @"__kIMChatRegistryIsIncomingKey", 0}];
  }

  else
  {
    v81 = 0;
    v24 = 0;
  }

  if (!v86 && ![(IMChatRegistry *)self isFirstLoad]&& v87)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidRegisterChatNotification" object:v76 userInfo:v81];
  }

  [v76 verifyFiltering];
  _guids = [v76 _guids];
  [_guids addObject:guid];

  [v76 fetchBrandInfoIfNecessary];
LABEL_105:

LABEL_106:
  if ([chatCopy chatStyle] != 45)
  {
    participants2 = [chatCopy participants];
    v85 = [(IMChatRegistry *)self _sortedParticipantIDHashForParticipants:participants2];
    [(IMChatRegistry *)self _addChat:chatCopy participantSet:v85];
  }

  dCopy = v95;
LABEL_109:
}

- (void)unregisterChat:(id)chat
{
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "This call is deprecated, and doesn't do anything anymore, please file bugs if you need some behavior here", v5, 2u);
    }
  }
}

- (void)unregisterChatWithGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "This call is deprecated, and doesn't do anything anymore, please file bugs if you need some behavior here", v5, 2u);
    }
  }
}

- (void)_unregisterChat:(id)chat deleted:(BOOL)deleted didClearUnreadCount:(BOOL)count
{
  deletedCopy = deleted;
  v29[1] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v9 = chatCopy;
  if (chatCopy)
  {
    if (deletedCopy && !count)
    {
      unreadCountController = [(IMChatRegistry *)self unreadCountController];
      guid = [v9 guid];
      v29[0] = guid;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [unreadCountController chatsDeletedWithGUIDs:v12];
    }

    v13 = IMChatRegistryLogHandle(chatCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Unregistering chat: %@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryWillUnregisterChatNotification" object:v9];

    v15 = [(IMChatRegistry *)self allGUIDsForChat:v9];
    [(IMChatRegistry *)self _clearMapsUsingChat:v9 guids:v15];
    [v9 didUnregisterFromRegistry:self];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v22 + 1) + 8 * i);
          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 __mainThreadPostNotificationName:@"__kIMChatRegistryDidUnregisterChatNotification" object:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }
}

- (void)_unregisterChatWithGUID:(id)d deleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v11[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v7 = deletedCopy;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    unreadCountController = [(IMChatRegistry *)self unreadCountController];
    v11[0] = dCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [unreadCountController chatsDeletedWithGUIDs:v9];
  }

  v10 = [(IMChatRegistry *)self _cachedChatWithGUID:dCopy];
  [(IMChatRegistry *)self _unregisterChat:v10 deleted:deletedCopy didClearUnreadCount:v7];
}

- (void)_clearMapsUsingChat:(id)chat guids:(id)guids
{
  v21 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  guidsCopy = guids;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [guidsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(guidsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_chatGUIDToCurrentThreadMap removeObjectForKey:v12];
        [(NSMutableDictionary *)self->_chatGUIDToChatMap removeObjectForKey:v12];
        [(NSMutableDictionary *)self->_chatGUIDToiMessageSentOrReceivedMap removeObjectForKey:v12];
        [(NSMutableDictionary *)self->_chatGUIDToInfoMap removeObjectForKey:v12];
      }

      v9 = [guidsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)self->_allChatsInProcess removeObjectIdenticalTo:chatCopy];
  [(NSMutableArray *)self->_cachedChatsInThreadNameMap removeObjectIdenticalTo:chatCopy];
  v13 = [(NSMutableDictionary *)self->_threadNameToChatMap allKeysForObject:chatCopy];
  if ([v13 count])
  {
    [(NSMutableDictionary *)self->_threadNameToChatMap removeObjectsForKeys:v13];
  }

  v14 = [(NSMutableDictionary *)self->_chatPersonIDToChatMap allKeysForObject:chatCopy];
  if ([v14 count])
  {
    [(NSMutableDictionary *)self->_chatPersonIDToChatMap removeObjectsForKeys:v14];
  }

  if ([chatCopy chatStyle] == 43)
  {
    v15 = [(NSMutableDictionary *)self->_groupIDToChatMap allKeysForObject:chatCopy];
    if ([v15 count])
    {
      [(NSMutableDictionary *)self->_groupIDToChatMap removeObjectsForKeys:v15];
    }

    [(IMChatRegistry *)self _removeFromGroupParticipantToChatsMap:chatCopy];
  }
}

- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)account
{
  v4 = MEMORY[0x1E69A7F78];
  service = [account service];
  internalName = [service internalName];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83503E8;
  v9[3] = &unk_1E7811040;
  v9[4] = self;
  v7 = [v4 generateUnusedChatIdentifierForGroupChatWithServiceName:internalName chatWithChatIdentifierExists:v9];

  return v7;
}

- (BOOL)_hasChat:(id)chat forService:(id)service
{
  v22 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  serviceCopy = service;
  chatIdentifier = [chatCopy chatIdentifier];
  internalName = [serviceCopy internalName];
  [chatCopy chatStyle];
  v10 = IMCopyAnyServiceGUIDForChat();

  v11 = [(NSMutableDictionary *)self->_chatGUIDToChatMap objectForKey:v10];
  v12 = v11 != 0;

  v13 = +[IMServiceImpl iMessageService];

  if (v13 == serviceCopy && v11)
  {
    chatGUIDToiMessageSentOrReceivedMap = self->_chatGUIDToiMessageSentOrReceivedMap;
    guid = [chatCopy guid];
    v16 = [(NSMutableDictionary *)chatGUIDToiMessageSentOrReceivedMap objectForKey:guid];
    v12 = v16 != 0;

    v18 = IMChatRegistryLogHandle(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = chatCopy;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "iMessage map had entry for %@", &v20, 0xCu);
    }
  }

  return v12;
}

- (void)_setChatHasCommunicatedOveriMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    chatGUIDToiMessageSentOrReceivedMap = self->_chatGUIDToiMessageSentOrReceivedMap;
    v10 = messageCopy;
    guid = [messageCopy guid];
    v7 = [(NSMutableDictionary *)chatGUIDToiMessageSentOrReceivedMap objectForKey:guid];

    messageCopy = v10;
    if (!v7)
    {
      v8 = self->_chatGUIDToiMessageSentOrReceivedMap;
      guid2 = [v10 guid];
      [(NSMutableDictionary *)v8 setObject:v10 forKey:guid2];

      messageCopy = v10;
    }
  }
}

- (void)_setSimulatedChats:(id)chats
{
  chatsCopy = chats;
  objc_storeStrong(&self->_simulatedChats, chats);
  if (!self->_simulatedChatGUIDToChatMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    simulatedChatGUIDToChatMap = self->_simulatedChatGUIDToChatMap;
    self->_simulatedChatGUIDToChatMap = Mutable;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A835073C;
  v8[3] = &unk_1E78133D0;
  v8[4] = self;
  [chatsCopy enumerateObjectsUsingBlock:v8];
}

- (void)_removeFromGroupParticipantToChatsMap:(id)map
{
  v26 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_groupParticipantToChatsMap allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_groupParticipantToChatsMap objectForKey:v12];
        if ([v13 containsObject:mapCopy])
        {
          [v13 removeObject:mapCopy];
          ++v9;
          if (![v13 count])
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = IMChatRegistryLogHandle(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 count];
    *buf = 134218240;
    v22 = v9;
    v23 = 2048;
    v24 = v16;
    _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Removed chat from %lu entries, and clearing %lu keys, from Group Participants cache", buf, 0x16u);
  }

  [(NSMutableDictionary *)self->_groupParticipantToChatsMap removeObjectsForKeys:v5];
}

- (void)_addChat:(id)chat participantSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  setCopy = set;
  if (setCopy)
  {
    v8 = [(NSMutableDictionary *)self->_groupParticipantToChatsMap objectForKey:setCopy];
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      [(NSMutableDictionary *)self->_groupParticipantToChatsMap setObject:v8 forKey:setCopy];
    }

    v9 = [v8 addObject:chatCopy];
    if (!self->_firstLoad)
    {
      v10 = IMChatRegistryLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        guid = [chatCopy guid];
        v12 = 138412802;
        v13 = guid;
        v14 = 2112;
        v15 = setCopy;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Added chat %@ to chatsForParticipant[%@], now %@", &v12, 0x20u);
      }
    }
  }
}

- (id)_sortedParticipantIDHashForParticipants:(id)participants usesPersonCentricID:(BOOL)d fallbackToContactID:(BOOL)iD
{
  iDCopy = iD;
  dCopy = d;
  v35 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v8 = IMAdditionalChatRegistryLoggingEnabled();
  if (v8)
  {
    v9 = IMChatRegistryLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = participantsCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Incoming list of participants to get sorted and hashed: %@", buf, 0xCu);
    }
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = participantsCopy;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        personCentricID = [v16 personCentricID];
        v18 = [personCentricID length];

        if (v18)
        {
          v19 = !dCopy;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          _contactID = [v16 _contactID];
          v21 = [_contactID length];

          if (v21)
          {
            v22 = !iDCopy;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = [v16 ID];

            if (!v23)
            {
              continue;
            }

            _contactID2 = [v16 ID];
          }

          else
          {
            _contactID2 = [v16 _contactID];
          }
        }

        else
        {
          _contactID2 = [v16 personCentricID];
        }

        v25 = _contactID2;
        [v10 addObject:_contactID2];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v26 = IMSHA1HashFromStrings();

  return v26;
}

- (void)_handleTranslationEnabledChangedNotification:(id)notification
{
  notificationCopy = notification;
  loading = [(IMChatRegistry *)self loading];
  if (!loading)
  {
    object = [notificationCopy object];
    v6 = object;
    if (object)
    {
      [object _reloadChatItemsForTranslationEnabledChange];
      v7 = [v6 participantsWithState:16];
      v8 = [v7 __imArrayByApplyingBlock:&unk_1F1B6EF40];

      mEMORY[0x1E69A8310] = [MEMORY[0x1E69A8310] sharedMetrics];
      translationLanguageCode = [v6 translationLanguageCode];
      [mEMORY[0x1E69A8310] logLanguageCode:translationLanguageCode forHandles:v8];
    }
  }

  MEMORY[0x1EEE66BB8](loading);
}

- (void)_handleTranslationLanguageStatusChangedNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(IMChatRegistry *)self chatGUIDToChatMap:notification];
  allValues = [v3 allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isAutomaticTranslationEnabled])
        {
          [v9 _reloadChatItemsForTranslationLanguageStatusChange];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_handleTranslationSupportChangedNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    v4 = object;
    [object _reloadChatItemsForTranslationEnabledChange];
    object = v4;
  }
}

- (void)_handleChatParticipantsDidChange:(id)change
{
  v34 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  object = [changeCopy object];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = object;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Participants changed in [%@]", &v30, 0xCu);
    }
  }

  if (object)
  {
    [object invalidateHasKnownParticipantsCache];
    chatGUIDToChatMap = self->_chatGUIDToChatMap;
    guid = [object guid];
    v9 = [(NSMutableDictionary *)chatGUIDToChatMap objectForKey:guid];
    LOBYTE(chatGUIDToChatMap) = v9 == 0;

    if ((chatGUIDToChatMap & 1) == 0)
    {
      if ([object chatStyle] == 45)
      {
        recipient = [object recipient];
        v11 = [recipient ID];
        account = [object account];
        uniqueID = [account uniqueID];
        v14 = IMCopyThreadNameForChat();

        chatGUIDToCurrentThreadMap = self->_chatGUIDToCurrentThreadMap;
        guid2 = [object guid];
        v17 = [(NSMutableDictionary *)chatGUIDToCurrentThreadMap objectForKey:guid2];

        v18 = [v14 isEqualToString:v17];
        if (v14)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1;
        }

        if ((v19 & 1) == 0)
        {
          [(NSMutableDictionary *)self->_threadNameToChatMap setObject:object forKey:v14];
          if (([(NSMutableArray *)self->_cachedChatsInThreadNameMap containsObjectIdenticalTo:object]& 1) == 0)
          {
            [(NSMutableArray *)self->_cachedChatsInThreadNameMap addObject:object];
          }

          v20 = self->_chatGUIDToCurrentThreadMap;
          guid3 = [object guid];
          [(NSMutableDictionary *)v20 setObject:v14 forKey:guid3];

          v22 = self->_chatGUIDToChatMap;
          guid4 = [object guid];
          [(NSMutableDictionary *)v22 setObject:object forKey:guid4];
        }
      }

      else
      {
        [(IMChatRegistry *)self _removeFromGroupParticipantToChatsMap:object];
        participants = [object participants];
        v14 = [(IMChatRegistry *)self _sortedParticipantIDHashForParticipants:participants];

        v25 = IMChatRegistryLogHandle([(IMChatRegistry *)self _addChat:object participantSet:v14]);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          participants2 = [object participants];
          v30 = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = participants2;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "New participantIDHash %@ based on %@", &v30, 0x16u);
        }

        personCentricID = [object personCentricID];
        v28 = personCentricID == 0;

        if (!v28)
        {
          [(IMChatRegistry *)self _updatePersonCentricIDForChat:object];
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMChatMultiWayStateChangedNotification" object:object userInfo:0];
    }
  }
}

- (void)_updatePersonCentricIDForChat:(id)chat
{
  chatCopy = chat;
  contactStore = [(IMChatRegistry *)self contactStore];
  isBatchFetchingForLaunchCompleted = [contactStore isBatchFetchingForLaunchCompleted];

  if (isBatchFetchingForLaunchCompleted)
  {
    _generatePersonCentricID = [chatCopy _generatePersonCentricID];
    [(IMChatRegistry *)self _updatePersonCentricIDToChatMapForChat:chatCopy toNewPersonCentricID:_generatePersonCentricID];
  }
}

- (void)_updatePersonCentricIDToChatMapForChat:(id)chat toNewPersonCentricID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  personCentricID = [chatCopy personCentricID];
  if (personCentricID)
  {
    chatPersonIDToChatMap = [(IMChatRegistry *)self chatPersonIDToChatMap];
    [chatPersonIDToChatMap removeObjectForKey:personCentricID];
  }

  [chatCopy setPersonCentricID:dCopy];
  v10 = chatCopy;
  if (v10)
  {
    chatPersonIDToChatMap2 = [(IMChatRegistry *)self chatPersonIDToChatMap];
    CFDictionarySetValue(chatPersonIDToChatMap2, dCopy, v10);
  }

  v13 = IMChatRegistryLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = personCentricID;
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Updated personCentricID from %@ to %@ for chat %@", &v14, 0x20u);
  }
}

- (void)_handleAddressBookChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69A6868]];

  cachedChats = [(IMChatRegistry *)self cachedChats];
  v7 = [cachedChats copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        [v13 invalidateHasKnownParticipantsCache];
        [v13 _handleAddressBookChangeForRecipientUID:v5];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)_ownerHandleStringsFromSubscription:(id)subscription
{
  v18 = *MEMORY[0x1E69E9840];
  ownerHandles = [subscription ownerHandles];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = ownerHandles;
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

        handleString = [*(*(&v13 + 1) + 8 * i) handleString];
        if ([handleString length])
        {
          [v4 addObject:handleString];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  array = [v4 array];

  return array;
}

- (id)chatsWithMyself
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[IMAccountController sharedInstance];
  accounts = [v3 accounts];

  v5 = [accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = +[IMChatRegistry sharedRegistry];
        loginIMHandle = [v9 loginIMHandle];
        v12 = [v10 _cachedChatWithHandle:loginIMHandle];

        if ([v12 chatStyle] == 45)
        {
          participants = [v12 participants];
          v14 = [participants count];

          if (v14 <= 1)
          {
            recipient = [v12 recipient];
            if ([recipient matchesLoginHandleForAnyAccount])
            {
              [v2 addObject:v12];
            }
          }
        }
      }

      v6 = [accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [v2 copy];

  return v16;
}

- (id)_chatsMatchingHandles:(id)handles
{
  v37 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = handlesCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    v10 = 0x1E695D000uLL;
    *&v7 = 138412290;
    v24 = v7;
    do
    {
      v11 = 0;
      v25 = v8;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v35 = v12;
        v13 = [*(v10 + 3784) arrayWithObjects:&v35 count:{1, v24}];
        v14 = [(IMChatRegistry *)self existingChatWithAddresses:v13 allowAlternativeService:0 bestHandles:0];
        v15 = IMChatRegistryLogHandle(v14);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            [v14 guid];
            v17 = v9;
            selfCopy = self;
            v19 = v5;
            v21 = v20 = v10;
            *buf = 138412546;
            v32 = v21;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "_chatsMatchingHandles: Found existing 1-1 chat %@ matching owner handle: %@", buf, 0x16u);

            v10 = v20;
            v5 = v19;
            self = selfCopy;
            v9 = v17;
            v8 = v25;
          }

          [v5 addObject:v14];
        }

        else
        {
          if (v16)
          {
            *buf = v24;
            v32 = v12;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "_chatsMatchingHandles: Did not find any existing 1-1 chat matching owner handle: %@", buf, 0xCu);
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v8);
  }

  v22 = [v5 copy];

  return v22;
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKey:@"__kIMChatKTStatusChangedAffectedHandlesKey"];
    v9 = [v8 copy];

    if (![v9 count])
    {
      v14 = IMChatRegistryLogHandle(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Received handle key transparency status changed notification with no information about impacted handles", v19, 2u);
      }

      goto LABEL_14;
    }

    object = [notificationCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    object2 = [notificationCopy object];
    v13 = object2;
    if (isKindOfClass)
    {
      if (!object2)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v15 = [v9 count];

      if (v15 != 1)
      {
        goto LABEL_14;
      }

      object3 = [notificationCopy object];
      firstObject = [v9 firstObject];
      v18 = [object3 existingIMHandleWithID:firstObject];

      v13 = [(IMChatRegistry *)self existingChatWithHandle:v18];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    [v13 _reloadChatItemsForKeyTransparencyStatusChange];
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_handleChatBotPropertiesDidChangeNotification:(id)notification
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"brandInfo"];

  if (v5)
  {
    brandURI = [v5 brandURI];
    __im_stripSip = [brandURI __im_stripSip];
    v8 = [(IMChatRegistry *)self cachedChatsWithIdentifier:__im_stripSip];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = *v23;
      v12 = *MEMORY[0x1E69A6A60];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          brandInfo = [v14 brandInfo];
          v16 = brandInfo == 0;

          if (v16)
          {
            if (IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                chatIdentifier = [v14 chatIdentifier];
                *buf = 138412290;
                v27 = chatIdentifier;
                _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "ChatBot Brand - Caching chatbot brand for %@", buf, 0xCu);
              }
            }

            dictionaryRepresentation = [v5 dictionaryRepresentation];
            v20 = [dictionaryRepresentation objectForKeyedSubscript:v12];
            [v14 setValue:v20 forChatProperty:v12];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v10);
    }
  }
}

- (void)updateBrandLogo:(id)logo transferGuid:(id)guid chatIdentifier:(id)identifier
{
  v53 = *MEMORY[0x1E69E9840];
  logoCopy = logo;
  guidCopy = guid;
  identifierCopy = identifier;
  if ((IMIsRunningInMessagesUIProcess() & 1) == 0 && (IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_42;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = identifierCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "ChatBot Logo - Client is not a UI process, skip saving logo data for %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (logoCopy && (-[IMChatRegistry brandLogoDataFromChatIdentifier:](self, "brandLogoDataFromChatIdentifier:", identifierCopy), v7 = objc_claimAutoreleasedReturnValue(), v8 = [logoCopy isEqualToData:v7], v7, (v8 & 1) == 0))
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager im_randomTemporaryFileURLWithFileName:*MEMORY[0x1E69A6FF8]];
    path = [v11 path];

    v12 = path;
    if (path)
    {
      [logoCopy writeToFile:path atomically:1];
      v33 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
      v13 = +[IMFileTransferCenter sharedInstance];
      v14 = v13;
      if (guidCopy)
      {
        [v13 createNewOutgoingFileTransferWithTransferGUID:guidCopy localFileURL:v33];

        v38 = guidCopy;
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = guidCopy;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "ChatBot Logo - Existing transferGuid %@ from relay", buf, 0xCu);
          }

          v38 = guidCopy;
        }
      }

      else
      {
        v38 = [v13 createNewOutgoingGroupPhotoTransferWithLocalFileURL:v33];

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = v38;
            _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "ChatBot Logo - Generating a new transferGuid %@", buf, 0xCu);
          }
        }
      }

      v17 = +[IMFileTransferCenter sharedInstance];
      v32 = [v17 transferForGUID:v38];

      if (v32)
      {
        v18 = +[IMFileTransferCenter sharedInstance];
        [v18 registerTransferWithDaemon:v38];

        [(IMChatRegistry *)self _updateBrandLogoGuid:v38 chatIdentifier:identifierCopy];
      }

      obj = [(IMChatRegistry *)self cachedChatsWithIdentifier:identifierCopy];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v19)
      {
        v20 = *v43;
        v37 = *MEMORY[0x1E696A278];
        v21 = MEMORY[0x1E69A7A00];
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v42 + 1) + 8 * i);
            if ([v23 _serviceSupportsCapability:*v21])
            {
              [(IMChatRegistry *)self _chat:v23 updateBrandLogo:v38];
            }

            else
            {
              v24 = IMLogHandleForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                account = [v23 account];
                service = [account service];
                name = [service name];
                *buf = 138412546;
                v49 = name;
                v50 = 2112;
                v51 = v23;
                _os_log_error_impl(&dword_1A823F000, v24, OS_LOG_TYPE_ERROR, "Chatbot is on an unexpected service: %@, chat: %@", buf, 0x16u);
              }

              v25 = MEMORY[0x1E696ABC0];
              v46 = v37;
              v47 = @"Chatbot is on an unexpected service.";
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
              v27 = [v25 errorWithDomain:@"UnexpectedServiceForChatBot" code:5 userInfo:v26];

              mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
              [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"UnexpectedServiceForChatBot" errorPayload:v27];
            }

            if (guidCopy)
            {
              [v23 fetchBrandInfoIfNecessary];
            }
          }

          v19 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v19);
      }

      v12 = path;
    }

    else
    {
      v38 = guidCopy;
    }

    guidCopy = v38;
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v49 = [logoCopy length];
      v50 = 2112;
      v51 = identifierCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "ChatBot Logo - Same data %lu is already stored, no need to update for %@", buf, 0x16u);
    }

LABEL_8:
  }

LABEL_42:
}

- (id)brandLogoDataFromChatIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  [(IMChatRegistry *)self cachedChatsWithIdentifier:identifier];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        brandLogoData = [*(*(&v11 + 1) + 8 * i) brandLogoData];
        if (brandLogoData)
        {
          v9 = brandLogoData;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)brandLogoUrlFromChatIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(IMChatRegistry *)self cachedChatsWithIdentifier:identifier];
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        brandLogoURL = [*(*(&v12 + 1) + 8 * i) brandLogoURL];
        if (brandLogoURL)
        {
          [v4 addObject:brandLogoURL];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateBrandLogoGuid:(id)guid chatIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  guidCopy = guid;
  identifierCopy = identifier;
  [(IMChatRegistry *)self cachedChatsWithIdentifier:?];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v21 = *v23;
    v9 = *MEMORY[0x1E69A6A60];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        brandInfo = [v11 brandInfo];
        brandLogoGuid = [brandInfo brandLogoGuid];
        v14 = [brandLogoGuid isEqualToString:guidCopy];

        if ((v14 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              guid = [v11 guid];
              brandLogoGuid2 = [brandInfo brandLogoGuid];
              *buf = 138412802;
              v27 = guid;
              v28 = 2112;
              v29 = brandLogoGuid2;
              v30 = 2112;
              v31 = guidCopy;
              _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "ChatBot Logo - Updated chatbot brand logo GUID in %@ properties, from %@ to %@", buf, 0x20u);
            }
          }

          [brandInfo setBrandLogoGuid:guidCopy];
          dictionaryRepresentation = [brandInfo dictionaryRepresentation];
          v19 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          [v11 setValue:v19 forChatProperty:v9];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }
}

- (void)_chat:(id)_chat updateBrandLogo:(id)logo
{
  logoCopy = logo;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v8 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  v9 = 0;
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];
  [remoteDaemon sendBrandLogoUpdate:logoCopy toChatID:v8 identifier:v9 style:chatStyle account:uniqueID];
}

- (void)_handleOffGridChangedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = IMChatRegistryLogHandle(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = object;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle off grid changed notification for subscription: %@", &v6, 0xCu);
  }

  [(IMChatRegistry *)self _handleStatusChangedForSubscription:object];
}

- (void)_handleOffGridInvitationReceivedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = IMChatRegistryLogHandle(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = object;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle off grid invitation received notification for subscription: %@", &v6, 0xCu);
  }

  [(IMChatRegistry *)self _handleStatusInvitationReceivedForSubscription:object];
}

- (void)_handleOffGridStateChangedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = IMChatRegistryLogHandle(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = object;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle off grid state changed notification for subscription: %@", &v6, 0xCu);
  }

  [(IMChatRegistry *)self _handleStatusStateChangedForSubscription:object];
}

- (void)_handleAvailabilityChangedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = IMChatRegistryLogHandle(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = object;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle availability changed notification for subscription: %@", &v6, 0xCu);
  }

  [(IMChatRegistry *)self _handleStatusChangedForSubscription:object];
}

- (void)_handleAvailabilityInvitationReceivedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = IMChatRegistryLogHandle(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = object;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle availability invitation received notification for subscription: %@", &v6, 0xCu);
  }

  [(IMChatRegistry *)self _handleStatusInvitationReceivedForSubscription:object];
}

- (void)_handleAvailabilityStateChangedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = IMChatRegistryLogHandle(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = object;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle availability state changed notification for subscription: %@", &v6, 0xCu);
  }

  [(IMChatRegistry *)self _handleStatusStateChangedForSubscription:object];
}

- (void)_handleStatusChangedForSubscription:(id)subscription
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(IMChatRegistry *)self _chatsMatchingStatusSubscription:subscription];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        isDisplayingUnavailabilityIndicator = [v8 isDisplayingUnavailabilityIndicator];
        if (isDisplayingUnavailabilityIndicator != [v8 shouldDisplayUnavailabilityIndicator])
        {
          [v8 _reloadChatItemsForHandleAvailabilityChange];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_handleStatusInvitationReceivedForSubscription:(id)subscription
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(IMChatRegistry *)self _chatsMatchingStatusSubscription:subscription];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _reloadChatItemsForHandleAvailabilityChange];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleStatusStateChangedForSubscription:(id)subscription
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(IMChatRegistry *)self _chatsMatchingStatusSubscription:subscription];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _reloadChatItemsForHandleAvailabilityChange];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_chatsMatchingStatusSubscription:(id)subscription
{
  v35 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if ([subscriptionCopy isPersonalStatusSubscription])
  {
    chatsWithMyself = [(IMChatRegistry *)self chatsWithMyself];
    v6 = IMChatRegistryLogHandle(chatsWithMyself);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = chatsWithMyself;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Status update is for personal channel. Found matching chats: %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = subscriptionCopy;
    v7 = [(IMChatRegistry *)self _ownerHandleStringsFromSubscription:subscriptionCopy];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v7;
    v24 = [v6 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v24)
    {
      v9 = *v26;
      v10 = 0x1E695D000uLL;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v33 = v12;
          v13 = [*(v10 + 3784) arrayWithObjects:&v33 count:1];
          v14 = [(IMChatRegistry *)self existingChatWithAddresses:v13 allowAlternativeService:0 bestHandles:0];
          v15 = IMChatRegistryLogHandle(v14);
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v16)
            {
              [v14 guid];
              v17 = v9;
              selfCopy = self;
              v19 = v8;
              v21 = v20 = v6;
              *buf = 138412546;
              v30 = v21;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "_chatsMatchingStatusSubscription: Found existing 1-1 chat %@ matching owner handle: %@", buf, 0x16u);

              v6 = v20;
              v8 = v19;
              self = selfCopy;
              v9 = v17;
              v10 = 0x1E695D000;
            }

            [v8 addObject:v14];
          }

          else
          {
            if (v16)
            {
              *buf = 138412290;
              v30 = v12;
              _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "_chatsMatchingStatusSubscription: Did not find any existing 1-1 chat matching owner handle: %@", buf, 0xCu);
            }
          }
        }

        v24 = [v6 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v24);
    }

    chatsWithMyself = [v8 copy];
    subscriptionCopy = v23;
  }

  return chatsWithMyself;
}

- (void)_unreadCountControllerUpdated:(id)updated
{
  v36 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryUnreadCountChangedNotification" object:0];

    userInfo = [updatedCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A7DD8]];

    if (v9)
    {
      updatedReports = [v9 updatedReports];
      v11 = [updatedReports arrayByApplyingSelector:sel_guid];
      deletedGUIDs = [v9 deletedGUIDs];
      v13 = [v11 arrayByAddingObjectsFromArray:deletedGUIDs];

      v14 = [MEMORY[0x1E695DFA8] set];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          v19 = 0;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [(IMChatRegistry *)self _cachedChatWithGUID:*(*(&v30 + 1) + 8 * v19)];
            if (v20)
            {
              [v14 addObject:v20];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v17);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = v14;
      v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v27;
        do
        {
          v25 = 0;
          do
          {
            if (*v27 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v26 + 1) + 8 * v25++) _postNewUnreadCount];
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v23);
      }
    }
  }
}

- (unint64_t)unreadCount
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (!isUnreadCountRefactorEnabled)
  {
    return self->_unreadCount;
  }

  unreadCountController = [(IMChatRegistry *)self unreadCountController];
  unreadCount = [unreadCountController unreadCount];

  return unreadCount;
}

- (id)activeCallForConversationUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  currentVideoCalls = [mEMORY[0x1E69D8A58] currentVideoCalls];

  v6 = [currentVideoCalls countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(currentVideoCalls);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        mEMORY[0x1E69D8A58]2 = [MEMORY[0x1E69D8A58] sharedInstance];
        v13 = [mEMORY[0x1E69D8A58]2 activeConversationForCall:v11];

        uUID = [v13 UUID];
        v15 = [uUID isEqual:dCopy];

        if (v15)
        {
          v16 = v11;

          v8 = v16;
        }
      }

      v7 = [currentVideoCalls countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_activeTUConversations
{
  conversationManager = [(IMChatRegistry *)self conversationManager];
  activeConversations = [conversationManager activeConversations];

  return activeConversations;
}

- (id)_existingChatForTUConversation:(id)conversation
{
  v22 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cachedChats = [(IMChatRegistry *)self cachedChats];
  v6 = [cachedChats countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(cachedChats);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 chatStyle] == 43 && objc_msgSend(v9, "mapsToTUConversation:", conversationCopy))
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v18 = v9;
              v19 = 2112;
              v20 = conversationCopy;
              _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Found chat %@ for TUConversation %@", buf, 0x16u);
            }
          }

          v10 = v9;
          goto LABEL_16;
        }
      }

      v6 = [cachedChats countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "stateChangedForConversation %@", &v9, 0xCu);
    }
  }

  [(IMChatRegistry *)self _postMultiWayStateChangedNotification:conversationCopy];
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[IMChatRegistry(IMChatRegistry_CallManagement) conversationManager:activeRemoteParticipantsChangedForConversation:]";
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "activeRemoteParticipantsChangedForConversation %s", &v9, 0xCu);
    }
  }

  [(IMChatRegistry *)self _postMultiWayStateChangedNotification:conversationCopy];
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "removedActiveConversation %@", &v9, 0xCu);
    }
  }

  [(IMChatRegistry *)self _postMultiWayStateChangedNotification:conversationCopy];
}

- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "activitySessionsChangedForConversation %@", &v9, 0xCu);
    }
  }

  [(IMChatRegistry *)self _postMultiWayStateChangedNotification:conversationCopy];
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "remoteMembersChangedForConversation %@", &v9, 0xCu);
    }
  }

  [(IMChatRegistry *)self _postMultiWayStateChangedNotification:conversationCopy];
}

- (void)_postMultiWayStateChangedNotification:(id)notification
{
  v17[2] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  messagesGroupUUID = [notificationCopy messagesGroupUUID];
  uUIDString = [messagesGroupUUID UUIDString];

  if (uUIDString)
  {
    v17[0] = uUIDString;
    v16[0] = @"__kIMChatMultiWayMessagesGroupID";
    v16[1] = @"__kIMChatMultiWayMessagesConversationUUID";
    uUID = [notificationCopy UUID];
    v17[1] = uUID;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412802;
      v11 = @"__kIMChatMultiWayStateChangedNotification";
      v12 = 2112;
      v13 = uUIDString;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "posting notification %@ for chat with groupID %@ and userInfo %@", &v10, 0x20u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"__kIMChatMultiWayStateChangedNotification" object:0 userInfo:v7];
}

- (void)markChatsAsReadFilteredUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  daemonController = [(IMChatRegistry *)self daemonController];
  synchronousRemoteDaemon = [daemonController synchronousRemoteDaemon];
  [synchronousRemoteDaemon markChatsAsReadFilteredUsingPredicate:predicateCopy];
}

- (unint64_t)numberOfCachedChats
{
  simulatedChats = [(IMChatRegistry *)self simulatedChats];
  v4 = [simulatedChats count];

  if (v4)
  {
    [(IMChatRegistry *)self simulatedChats];
  }

  else
  {
    [(IMChatRegistry *)self cachedChatsInThreadNameMap];
  }
  v5 = ;
  v6 = [v5 count];

  return v6;
}

- (id)cachedChatsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259C60;
  v12 = sub_1A825AF5C;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83981C4;
  v7[3] = &unk_1E7813E38;
  v7[4] = self;
  v7[5] = &v8;
  [(IMChatRegistry *)self _enumerateChatGUIDPermutationsForChatIdentifier:identifierCopy includingInstantMessageStyle:1 includingGroupStyle:0 includingRoomStyle:0 usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_enumerateChatGUIDPermutationsForChatIdentifier:(id)identifier includingInstantMessageStyle:(BOOL)style includingGroupStyle:(BOOL)groupStyle includingRoomStyle:(BOOL)roomStyle usingBlock:(id)block
{
  roomStyleCopy = roomStyle;
  groupStyleCopy = groupStyle;
  styleCopy = style;
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x1E69A8070] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    v31 = 0;
    if (!styleCopy || (v15 = IMCopyAnyServiceGUIDForChat(), blockCopy[2](blockCopy, v15, &v31), v15, (v31 & 1) == 0))
    {
      if (!groupStyleCopy || (v16 = IMCopyAnyServiceGUIDForChat(), blockCopy[2](blockCopy, v16, &v31), v16, (v31 & 1) == 0))
      {
        if (roomStyleCopy)
        {
          v17 = IMCopyAnyServiceGUIDForChat();
          blockCopy[2](blockCopy, v17, &v31);
        }
      }
    }
  }

  else
  {
    v31 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(IMChatRegistry *)self serviceNamesForChatIdentifierSearch];
    v18 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
LABEL_10:
      v21 = 0;
      while (1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        if (styleCopy)
        {
          v22 = IMCopyGUIDForChat();
          blockCopy[2](blockCopy, v22, &v31);

          if (v31)
          {
            break;
          }
        }

        if (groupStyleCopy)
        {
          v23 = IMCopyGUIDForChat();
          blockCopy[2](blockCopy, v23, &v31);

          if (v31)
          {
            break;
          }
        }

        if (roomStyleCopy)
        {
          v24 = IMCopyGUIDForChat();
          blockCopy[2](blockCopy, v24, &v31);

          if (v31)
          {
            break;
          }
        }

        if (v19 == ++v21)
        {
          v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v19)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }
}

- (id)_possiblyUnregisteredCachedChatWithIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allChatsInProcess = [(IMChatRegistry *)self allChatsInProcess];
  v10 = [allChatsInProcess countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v10)
  {
    v25 = 0;
    goto LABEL_17;
  }

  v11 = v10;
  v12 = *v28;
  v24 = *v28;
  v25 = 0;
  do
  {
    v13 = 0;
    do
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(allChatsInProcess);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      chatIdentifier = [v14 chatIdentifier];
      if (![identifierCopy isEqualToString:chatIdentifier] || objc_msgSend(v14, "chatStyle") != styleCopy)
      {
        goto LABEL_10;
      }

      v16 = identifierCopy;
      v17 = allChatsInProcess;
      v18 = styleCopy;
      account = [v14 account];
      uniqueID = [account uniqueID];
      v21 = [accountCopy isEqualToString:uniqueID];

      if (v21)
      {
        chatIdentifier = v25;
        v25 = v14;
        styleCopy = v18;
        allChatsInProcess = v17;
        identifierCopy = v16;
        v12 = v24;
LABEL_10:

        goto LABEL_11;
      }

      styleCopy = v18;
      allChatsInProcess = v17;
      identifierCopy = v16;
      v12 = v24;
LABEL_11:
      ++v13;
    }

    while (v11 != v13);
    v22 = [allChatsInProcess countByEnumeratingWithState:&v27 objects:v31 count:16];
    v11 = v22;
  }

  while (v22);
LABEL_17:

  return v25;
}

- (id)_possiblyUnregisteredCachedChatWithHandle:(id)handle
{
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = [handleCopy ID];
  account = [handleCopy account];
  uniqueID = [account uniqueID];
  v8 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatWithIdentifier:v5 style:45 account:uniqueID];

  if (!v8)
  {
    _chatSiblings = [handleCopy _chatSiblings];
    if ([_chatSiblings count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = _chatSiblings;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v20 = _chatSiblings;
        v13 = *v22;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [v15 ID];
          account2 = [v15 account];
          uniqueID2 = [account2 uniqueID];
          v8 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatWithIdentifier:v16 style:45 account:uniqueID2];

          if (v8)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            v8 = 0;
            break;
          }
        }

        _chatSiblings = v20;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_possiblyUnregisteredCachedChatWithHandles:(id)handles style:(unsigned __int8)style groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only
{
  onlyCopy = only;
  styleCopy = style;
  v42 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  dCopy = d;
  nameCopy = name;
  v33 = handlesCopy;
  if ([handlesCopy count])
  {
    allChatsInProcess = [(IMChatRegistry *)self allChatsInProcess];
    if ([nameCopy length])
    {
      v14 = nameCopy;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = allChatsInProcess;
    v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
LABEL_7:
      v19 = 0;
      while (1)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * v19);
        if ([v20 chatStyle] != styleCopy)
        {
          goto LABEL_28;
        }

        displayName = [v20 displayName];
        v22 = [displayName length];
        if (dCopy && v22 && ([v20 groupID], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v24 = v23;
          groupID = [v20 groupID];
          v26 = [dCopy isEqualToString:groupID];

          if (v26)
          {
            v31 = v20;
            goto LABEL_33;
          }
        }

        else
        {
        }

        displayName2 = [v20 displayName];
        if (![displayName2 length])
        {
          break;
        }

        displayName3 = [v20 displayName];

        if (!displayName3)
        {
          goto LABEL_23;
        }

        if (v15 && ([displayName3 isEqualToString:v15] & 1) != 0)
        {
LABEL_24:
          if (!onlyCopy || [v20 joinState] >= 2)
          {
            participants = [v20 participants];
            v30 = [participants _hasSameMembers:v33];

            if (v30)
            {
              v31 = v20;

              goto LABEL_33;
            }
          }
        }

LABEL_27:

LABEL_28:
        if (v17 == ++v19)
        {
          v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v17)
          {
            goto LABEL_7;
          }

          goto LABEL_30;
        }
      }

LABEL_23:
      displayName3 = 0;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_30:
    v31 = 0;
LABEL_33:
  }

  else
  {
    v31 = 0;
    v15 = nameCopy;
  }

  return v31;
}

- (id)_possiblyUnregisteredCachedChatForRoom:(id)room onAccount:(id)account
{
  roomCopy = room;
  uniqueID = [account uniqueID];
  v8 = [(IMChatRegistry *)self _possiblyUnregisteredCachedChatWithIdentifier:roomCopy style:35 account:uniqueID];

  return v8;
}

- (id)_cachedChatWithGUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    simulatedChats = [(IMChatRegistry *)self simulatedChats];
    if (simulatedChats)
    {
      [(IMChatRegistry *)self simulatedChatGUIDToChatMap];
    }

    else
    {
      [(IMChatRegistry *)self chatGUIDToChatMap];
    }
    v7 = ;
    v6 = [v7 objectForKey:dCopy];

    v9 = IMChatRegistryLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = dCopy;
      v13 = 1024;
      v14 = v6 != 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Getting cached chat with GUID: %@ found chat: %{BOOL}d", &v11, 0x12u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cachedChatWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259C60;
  v12 = sub_1A825AF5C;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8398E9C;
  v7[3] = &unk_1E7813E80;
  v7[4] = self;
  v7[5] = &v8;
  [(IMChatRegistry *)self _enumerateChatGUIDPermutationsForChatIdentifier:identifierCopy includingInstantMessageStyle:1 includingGroupStyle:1 includingRoomStyle:0 usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_cachedChatWithIdentifier:(id)identifier style:(unsigned __int8)style
{
  styleCopy = style;
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1A8259C60;
  v14 = sub_1A825AF5C;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8399038;
  v9[3] = &unk_1E7813E80;
  v9[4] = self;
  v9[5] = &v10;
  [(IMChatRegistry *)self _enumerateChatGUIDPermutationsForChatIdentifier:identifierCopy includingInstantMessageStyle:styleCopy == 45 includingGroupStyle:styleCopy == 43 includingRoomStyle:styleCopy == 35 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_cachedChatWithHandle:(id)handle
{
  handleCopy = handle;
  v5 = [handleCopy ID];
  v6 = [(IMChatRegistry *)self _cachedChatWithIdentifier:v5 style:45];

  if (!v6)
  {
    v7 = [handleCopy ID];
    v6 = [(IMChatRegistry *)self _cachedChatWithPersonID:v7];

    if ([v6 chatStyle] == 45)
    {
      [v6 setRecipient:handleCopy];
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

- (id)_cachedChatWithHandles:(id)handles allowAlternativeService:(BOOL)service groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups
{
  groupsCopy = groups;
  onlyCopy = only;
  v37 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  dCopy = d;
  nameCopy = name;
  v28 = handlesCopy;
  if ([handlesCopy count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    cachedChatsInThreadNameMap = [(IMChatRegistry *)self cachedChatsInThreadNameMap];
    v14 = [cachedChatsInThreadNameMap countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      v27 = cachedChatsInThreadNameMap;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(cachedChatsInThreadNameMap);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          if ([v18 chatStyle] == 43)
          {
            displayName = [v18 displayName];
            groupID = [v18 groupID];
            if ((groupsCopy || ![displayName length]) && (!objc_msgSend(groupID, "length") || !objc_msgSend(dCopy, "length") || objc_msgSend(dCopy, "isEqualToString:", groupID)) && (!objc_msgSend(displayName, "length") || !objc_msgSend(nameCopy, "length") || objc_msgSend(nameCopy, "isEqualToString:", displayName)) && (!onlyCopy || objc_msgSend(v18, "joinState") == 2 || objc_msgSend(v18, "joinState") == 3))
            {
              v21 = groupsCopy;
              v22 = objc_autoreleasePoolPush();
              participants = [v18 participants];
              v24 = [v28 equivalentToRecipients:participants];

              if (v24)
              {
                v25 = v18;
                objc_autoreleasePoolPop(v22);

                cachedChatsInThreadNameMap = v27;
                goto LABEL_27;
              }

              objc_autoreleasePoolPop(v22);
              groupsCopy = v21;
              cachedChatsInThreadNameMap = v27;
            }
          }
        }

        v15 = [cachedChatsInThreadNameMap countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_27:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_cachedChatWithGroupID:(id)d
{
  dCopy = d;
  groupIDToChatMap = [(IMChatRegistry *)self groupIDToChatMap];
  v6 = [groupIDToChatMap objectForKey:dCopy];

  if (v6)
  {
    groupID = [v6 groupID];
    v8 = [groupID isEqualToString:dCopy];

    if ((v8 & 1) == 0)
    {
      v10 = IMChatRegistryLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2764(dCopy, v6, v10);
      }

      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"GroupIDMismatch" errorPayload:0 type:@"ChatProperties" context:@"GroupIDDoesNotMatch"];
    }
  }

  return v6;
}

- (id)_cachedChatWithDisplayName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cachedChats = [(IMChatRegistry *)self cachedChats];
  v6 = [cachedChats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(cachedChats);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        displayName = [v9 displayName];
        v11 = [displayName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [cachedChats countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_cachedChatsWithDisplayName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cachedChats = [(IMChatRegistry *)self cachedChats];
  v7 = [cachedChats countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(cachedChats);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        displayName = [v11 displayName];
        v13 = [displayName isEqualToString:nameCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [cachedChats countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_cachedChatWithPersonID:(id)d
{
  dCopy = d;
  chatPersonIDToChatMap = [(IMChatRegistry *)self chatPersonIDToChatMap];
  v6 = [chatPersonIDToChatMap objectForKey:dCopy];

  return v6;
}

- (id)_cachedChatsWithMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cachedChats = [(IMChatRegistry *)self cachedChats];
  v7 = [cachedChats countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(cachedChats);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        guid = [messageCopy guid];
        v13 = [v11 messageForGUID:guid];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [cachedChats countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_cachedChatsWithMessageGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cachedChats = [(IMChatRegistry *)self cachedChats];
  v7 = [cachedChats countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(cachedChats);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 messageForGUID:dCopy];

        if (v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [cachedChats countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)unblackholeChatWithHandles:(id)handles
{
  v33 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = handlesCopy;
      *&buf[12] = 2048;
      *&buf[14] = [handlesCopy count];
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Request to load chat with handleIDs array %@ of count %lu", buf, 0x16u);
    }
  }

  if (handlesCopy)
  {
    v21 = handlesCopy;
    if ([handlesCopy count])
    {
      array = [MEMORY[0x1E695DF70] array];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = handlesCopy;
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
            v11 = [v10 ID];
            if ([v11 _appearsToBePhoneNumber])
            {
              v12 = IMInternationalForPhoneNumberWithOptions();

              v11 = v12;
            }

            v13 = IMStripFormattingFromAddress();
            [array addObject:v13];

            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = v10;
                *&buf[12] = 2112;
                *&buf[14] = v11;
                _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Adding IMHandle: %@ into rawAddresses set as ID string %@", buf, 0x16u);
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v7);
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [array count];
          *buf = 138412546;
          *&buf[4] = array;
          *&buf[12] = 2048;
          *&buf[14] = v16;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "No exisiting chat. Calling out to daemon to find potential chat rawAddressSet set %@ of count %lu", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = sub_1A8259C80;
      v30 = sub_1A825AF6C;
      v31 = 0;
      daemonController = [(IMChatRegistry *)self daemonController];
      synchronousRemoteDaemon = [daemonController synchronousRemoteDaemon];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1A839BA78;
      v23[3] = &unk_1E7811120;
      v23[4] = self;
      v23[5] = buf;
      [synchronousRemoteDaemon unblackholeAndLoadChatWithHandleIDs:array reply:v23];

      v19 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v19 = 0;
    }

    handlesCopy = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_updateBlackholedChatsExist:(BOOL)exist
{
  [(IMChatRegistry *)self setBlackholedChatsExist:exist];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMChatRegistry blackholedChatsExist](self, "blackholedChatsExist")}];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryBlackholedChatsExistNotification" object:v5];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMChatRegistryBlackholedChatsExistNotification", 0, 0, 1u);
}

- (void)_chat:(id)_chat sendReadReceiptForMessages:(id)messages
{
  v30 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v27 = _chatCopy;
      v28 = 2112;
      v29 = messagesCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@  messages: %@", buf, 0x16u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v21 = +[IMDaemonController sharedController];
      v22 = [v21 capabilitiesForListenerID:0];
      v23 = (*MEMORY[0x1E69A6258] & v22) == 0;

      if (v23)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];
    v15 = chatIdentifier == 0;

    if (!v15)
    {
      if ([messagesCopy count])
      {
        v24 = 0;
        v25 = 0;
        sub_1A839DC70(self, _chatCopy, &v25, &v24);
        v16 = v25;
        v17 = v24;
        v18 = IMCreateSerializedItemsFromArray();
        v19 = +[IMDaemonController sharedController];
        remoteDaemon = [v19 remoteDaemon];
        [remoteDaemon markReadForIDs:v16 style:objc_msgSend(_chatCopy onServices:"chatStyle") messages:v17 clientUnreadCount:{v18, objc_msgSend(_chatCopy, "unreadMessageCount")}];
      }
    }
  }

LABEL_13:
}

- (void)_chat_sendReadReceiptForAllMessages:(id)messages
{
  v29 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = messagesCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v7) == 0)
  {
    v8 = +[IMDaemonController sharedController];
    v9 = [v8 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v9) == 0)
    {
      v20 = +[IMDaemonController sharedController];
      v21 = [v20 capabilitiesForListenerID:0];
      v22 = (*MEMORY[0x1E69A6258] & v21) == 0;

      if (v22)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [messagesCopy account];
  if (account)
  {
    chatIdentifier = [messagesCopy chatIdentifier];
    v12 = chatIdentifier == 0;

    if (!v12)
    {
      v14 = IMChatRegistryLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [messagesCopy account];
        *buf = 138412546;
        v26 = messagesCopy;
        v27 = 2112;
        v28 = account2;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Sending read receipt for all messages in chat: %@   for account: %@", buf, 0x16u);
      }

      v23 = 0;
      v24 = 0;
      sub_1A839DC70(self, messagesCopy, &v24, &v23);
      v16 = v24;
      v17 = v23;
      v18 = +[IMDaemonController sharedController];
      remoteDaemon = [v18 remoteDaemon];
      [remoteDaemon markReadForIDs:v16 style:objc_msgSend(messagesCopy onServices:"chatStyle") messages:v17 clientUnreadCount:0 setUnreadCountToZero:{objc_msgSend(messagesCopy, "unreadMessageCount"), 1}];
    }
  }

LABEL_14:
}

- (void)_chat_markLastMessageAsUnread:(id)unread
{
  v26 = *MEMORY[0x1E69E9840];
  unreadCopy = unread;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = unreadCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v7) == 0)
  {
    v8 = +[IMDaemonController sharedController];
    v9 = [v8 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v9) == 0)
    {
      v17 = +[IMDaemonController sharedController];
      v18 = [v17 capabilitiesForListenerID:0];
      v19 = (*MEMORY[0x1E69A6258] & v18) == 0;

      if (v19)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  lastIncomingFinishedMessage = [unreadCopy lastIncomingFinishedMessage];
  if (!lastIncomingFinishedMessage)
  {
    v11 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_markLastMessageAsUnread:]";
      v24 = 2112;
      v25 = unreadCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", buf, 0x16u);
    }

    lastIncomingFinishedMessage = [unreadCopy lastFinishedMessage];
  }

  guid = [lastIncomingFinishedMessage guid];
  if ([lastIncomingFinishedMessage isFromMe])
  {

    guid = 0;
  }

  else
  {
    [unreadCopy setMarkingUnread:1];
  }

  v20 = 0;
  v21 = 0;
  sub_1A839DC70(self, unreadCopy, &v21, &v20);
  v13 = v21;
  v14 = v20;
  v15 = +[IMDaemonController sharedController];
  remoteDaemon = [v15 remoteDaemon];
  [remoteDaemon markUnreadForMessageGUID:guid IDs:v13 style:objc_msgSend(unreadCopy services:{"chatStyle"), v14}];

LABEL_17:
}

- (void)_chat_markMessageAsUnread:(id)unread message:(id)message
{
  v29 = *MEMORY[0x1E69E9840];
  unreadCopy = unread;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = unreadCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) != 0)
  {
    goto LABEL_8;
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A62B0] & v12) != 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v22 = +[IMDaemonController sharedController];
  v23 = [v22 capabilitiesForListenerID:0];
  v24 = (*MEMORY[0x1E69A6258] & v23) == 0;

  if (v24)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (messageCopy)
  {
    isFromMe = [messageCopy isFromMe];
    if (isFromMe)
    {
      guid = IMChatRegistryLogHandle(isFromMe);
      if (os_log_type_enabled(guid, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "Message is outgoing";
LABEL_19:
        _os_log_impl(&dword_1A823F000, guid, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      }
    }

    else
    {
      isRead = [messageCopy isRead];
      if (isRead)
      {
        [unreadCopy setMarkingUnread:1];
        guid = [messageCopy guid];
        v25 = 0;
        v26 = 0;
        sub_1A839DC70(self, unreadCopy, &v26, &v25);
        v18 = v26;
        v19 = v25;
        v20 = +[IMDaemonController sharedController];
        remoteDaemon = [v20 remoteDaemon];
        [remoteDaemon markUnreadForMessageGUID:guid IDs:v18 style:objc_msgSend(unreadCopy services:{"chatStyle"), v19}];
      }

      else
      {
        guid = IMChatRegistryLogHandle(isRead);
        if (os_log_type_enabled(guid, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v16 = "Message is already unread";
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    guid = IMChatRegistryLogHandle(v13);
    if (os_log_type_enabled(guid, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "No message to mark as unread";
      goto LABEL_19;
    }
  }

LABEL_21:
}

- (void)_chat_recoverFromJunk:(id)junk
{
  v21 = *MEMORY[0x1E69E9840];
  junkCopy = junk;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = junkCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEBUG, "chat: %@", &v17, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) == 0)
  {
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v8) == 0)
    {
      v14 = +[IMDaemonController sharedController];
      v15 = [v14 capabilitiesForListenerID:0];
      v16 = (*MEMORY[0x1E69A6258] & v15) == 0;

      if (v16)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  lastIncomingFinishedMessage = [junkCopy lastIncomingFinishedMessage];
  if (!lastIncomingFinishedMessage)
  {
    v10 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_recoverFromJunk:]";
      v19 = 2112;
      v20 = junkCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", &v17, 0x16u);
    }

    lastIncomingFinishedMessage = [junkCopy lastFinishedMessage];
  }

  guid = [lastIncomingFinishedMessage guid];
  if (guid)
  {
    v12 = +[IMDaemonController sharedController];
    remoteDaemon = [v12 remoteDaemon];
    [remoteDaemon recoverChatsFromJunkContainingMessageWithGUID:guid];
  }

  else
  {
    v12 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2ABC();
    }
  }

LABEL_18:
}

- (void)_chatDidRecoverFromJunk:(id)junk
{
  junkCopy = junk;
  v6 = +[IMDaemonController sharedController];
  remoteDaemon = [v6 remoteDaemon];
  guid = [junkCopy guid];

  [remoteDaemon chatDidRecoverFromJunk:guid];
}

- (void)_chat_acceptChat:(id)chat
{
  v21 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = chatCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEBUG, "chat: %@", &v17, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) == 0)
  {
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v8) == 0)
    {
      v14 = +[IMDaemonController sharedController];
      v15 = [v14 capabilitiesForListenerID:0];
      v16 = (*MEMORY[0x1E69A6258] & v15) == 0;

      if (v16)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  lastIncomingFinishedMessage = [chatCopy lastIncomingFinishedMessage];
  if (!lastIncomingFinishedMessage)
  {
    v10 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_acceptChat:]";
      v19 = 2112;
      v20 = chatCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", &v17, 0x16u);
    }

    lastIncomingFinishedMessage = [chatCopy lastFinishedMessage];
  }

  guid = [lastIncomingFinishedMessage guid];
  if (guid)
  {
    v12 = +[IMDaemonController sharedController];
    remoteDaemon = [v12 remoteDaemon];
    [remoteDaemon acceptChatContainingMessageWithGUID:guid];
  }

  else
  {
    v12 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2AF0();
    }
  }

LABEL_18:
}

- (void)_chat_storeItem:(id)item inChat:(id)chat
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  v7 = chatCopy;
  if (!itemCopy || !chatCopy)
  {
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = itemCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@  item: %@", &v24, 0x16u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v21 = +[IMDaemonController sharedController];
      v22 = [v21 capabilitiesForListenerID:0];
      v23 = (*MEMORY[0x1E69A6258] & v22) == 0;

      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  account = [v7 account];
  if (account)
  {
    chatIdentifier = [v7 chatIdentifier];
    v15 = chatIdentifier == 0;

    if (!v15)
    {
      v17 = IMChatRegistryLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412546;
        v25 = itemCopy;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Storing item: %@ in chat: %@", &v24, 0x16u);
      }

      v18 = +[IMDaemonController sharedController];
      remoteDaemon = [v18 remoteDaemon];
      guid = [v7 guid];
      [remoteDaemon storeItem:itemCopy inChatGUID:guid];
    }
  }

LABEL_16:
}

- (void)_chat:(id)_chat sendPlayedReceiptForMessage:(id)message
{
  v34 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v29 = _chatCopy;
      v30 = 2112;
      v31 = messageCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];
    v15 = chatIdentifier == 0;

    if (!v15)
    {
      v17 = IMChatRegistryLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [_chatCopy account];
        *buf = 138412802;
        v29 = messageCopy;
        v30 = 2112;
        v31 = _chatCopy;
        v32 = 2112;
        v33 = account2;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Sending played receipt for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v26 = 0;
      v27 = 0;
      sub_1A839DC70(self, _chatCopy, &v27, &v26);
      v19 = v27;
      v20 = v26;
      if (messageCopy)
      {
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon markPlayedForIDs:v19 style:objc_msgSend(_chatCopy onServices:"chatStyle") message:{v20, messageCopy}];
      }
    }
  }

LABEL_16:
}

- (void)_chat:(id)_chat setPlayedExpressiveSendForMessage:(id)message
{
  v34 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v29 = _chatCopy;
      v30 = 2112;
      v31 = messageCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];
    v15 = chatIdentifier == 0;

    if (!v15)
    {
      v17 = IMChatRegistryLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [_chatCopy account];
        *buf = 138412802;
        v29 = messageCopy;
        v30 = 2112;
        v31 = _chatCopy;
        v32 = 2112;
        v33 = account2;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Setting played expressive send for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v26 = 0;
      v27 = 0;
      sub_1A839DC70(self, _chatCopy, &v27, &v26);
      v19 = v27;
      v20 = v26;
      if (messageCopy)
      {
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon markPlayedExpressiveSendForIDs:v19 style:objc_msgSend(_chatCopy onServices:"chatStyle") message:{v20, messageCopy}];
      }
    }
  }

LABEL_16:
}

- (void)_chat:(id)_chat sendSavedReceiptForMessage:(id)message
{
  v34 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v29 = _chatCopy;
      v30 = 2112;
      v31 = messageCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];
    v15 = chatIdentifier == 0;

    if (!v15)
    {
      v17 = IMChatRegistryLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [_chatCopy account];
        *buf = 138412802;
        v29 = messageCopy;
        v30 = 2112;
        v31 = _chatCopy;
        v32 = 2112;
        v33 = account2;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Sending saved receipt for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v26 = 0;
      v27 = 0;
      sub_1A839DC70(self, _chatCopy, &v27, &v26);
      v19 = v27;
      v20 = v26;
      if (messageCopy)
      {
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon markSavedForIDs:v19 style:objc_msgSend(_chatCopy onServices:"chatStyle") message:{v20, messageCopy}];
      }
    }
  }

LABEL_16:
}

- (void)_chat:(id)_chat sendNotifyRecipientCommandForMessage:(id)message
{
  v34 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v29 = _chatCopy;
      v30 = 2112;
      v31 = messageCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];
    v15 = chatIdentifier == 0;

    if (!v15)
    {
      v17 = IMChatRegistryLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [_chatCopy account];
        *buf = 138412802;
        v29 = messageCopy;
        v30 = 2112;
        v31 = _chatCopy;
        v32 = 2112;
        v33 = account2;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Sending notify recipient commadn for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v26 = 0;
      v27 = 0;
      sub_1A839DC70(self, _chatCopy, &v27, &v26);
      v19 = v27;
      v20 = v26;
      if (messageCopy)
      {
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon sendNotifyRecipientCommandForIDs:v19 style:objc_msgSend(_chatCopy onServices:"chatStyle") message:{v20, messageCopy}];
      }
    }
  }

LABEL_16:
}

- (void)_markHasHadSuccessfulQueryForChat:(id)chat
{
  v29 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = chatCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v7) == 0)
  {
    v8 = +[IMDaemonController sharedController];
    v9 = [v8 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v9) == 0)
    {
      v20 = +[IMDaemonController sharedController];
      v21 = [v20 capabilitiesForListenerID:0];
      v22 = (*MEMORY[0x1E69A6258] & v21) == 0;

      if (v22)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [chatCopy account];
  if (account)
  {
    chatIdentifier = [chatCopy chatIdentifier];
    v12 = chatIdentifier == 0;

    if (!v12)
    {
      v14 = IMChatRegistryLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [chatCopy account];
        *buf = 138412546;
        v26 = chatCopy;
        v27 = 2112;
        v28 = account2;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Marking chat as had successful ID query in chat: %@   for account: %@", buf, 0x16u);
      }

      v23 = 0;
      v24 = 0;
      sub_1A839DC70(self, chatCopy, &v24, &v23);
      v16 = v24;
      v17 = v23;
      v18 = +[IMDaemonController sharedController];
      remoteDaemon = [v18 remoteDaemon];
      [remoteDaemon markHasHadSuccessfulQueryForIDs:v16 style:objc_msgSend(chatCopy onServices:{"chatStyle"), v17}];
    }
  }

LABEL_14:
}

- (id)_eventForMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!messageCopy || ([messageCopy isTypingMessage] & 1) != 0)
  {
    goto LABEL_35;
  }

  balloonBundleID = [messageCopy balloonBundleID];
  v6 = [balloonBundleID containsString:*MEMORY[0x1E69A69F0]];

  if (v6 && v4 && *MEMORY[0x1E69A72E8])
  {
    CFArrayAppendValue(v4, *MEMORY[0x1E69A72E8]);
  }

  balloonBundleID2 = [messageCopy balloonBundleID];
  v8 = [balloonBundleID2 isEqualToString:*MEMORY[0x1E69A69E0]];

  if (v8 && v4 && *MEMORY[0x1E69A73F0])
  {
    CFArrayAppendValue(v4, *MEMORY[0x1E69A73F0]);
  }

  balloonBundleID3 = [messageCopy balloonBundleID];
  v10 = [balloonBundleID3 isEqualToString:*MEMORY[0x1E69A6A18]];

  if (v10 && v4 && *MEMORY[0x1E69A7590])
  {
    CFArrayAppendValue(v4, *MEMORY[0x1E69A7590]);
  }

  balloonBundleID4 = [messageCopy balloonBundleID];
  v12 = [balloonBundleID4 isEqualToString:*MEMORY[0x1E69A69A8]];

  if (v12 && v4 && *MEMORY[0x1E69A7398])
  {
    CFArrayAppendValue(v4, *MEMORY[0x1E69A7398]);
  }

  expressiveSendStyleID = [messageCopy expressiveSendStyleID];
  if ([expressiveSendStyleID length])
  {
    expressiveSendStyleID2 = [messageCopy expressiveSendStyleID];
    v15 = [expressiveSendStyleID2 rangeOfString:*MEMORY[0x1E69A7028]];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL && v4 && *MEMORY[0x1E69A73D8])
    {
      CFArrayAppendValue(v4, *MEMORY[0x1E69A73D8]);
    }
  }

  else
  {
  }

  expressiveSendStyleID3 = [messageCopy expressiveSendStyleID];
  v17 = [expressiveSendStyleID3 isEqualToString:*MEMORY[0x1E69A7088]];

  if (v17)
  {
    if (!v4)
    {
      goto LABEL_35;
    }

    v18 = MEMORY[0x1E69A7410];
    goto LABEL_32;
  }

  expressiveSendStyleID4 = [messageCopy expressiveSendStyleID];
  if (![expressiveSendStyleID4 length])
  {

    goto LABEL_35;
  }

  expressiveSendStyleID5 = [messageCopy expressiveSendStyleID];
  v21 = [expressiveSendStyleID5 rangeOfString:*MEMORY[0x1E69A7080]];

  if (v21 != 0x7FFFFFFFFFFFFFFFLL && v4)
  {
    v18 = MEMORY[0x1E69A7330];
LABEL_32:
    if (*v18)
    {
      CFArrayAppendValue(v4, *v18);
    }
  }

LABEL_35:

  return v4;
}

- (void)_trackUsageForMessage:(id)message
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(IMChatRegistry *)self _eventForMessage:message];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
        [mEMORY[0x1E69A8168] trackEvent:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_setReplyToGuidOnMessage:(id)message forChat:(id)chat
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  lastFinishedMessageItem = [chat lastFinishedMessageItem];
  guid = [lastFinishedMessageItem guid];

  v8 = IMChatRegistryLogHandle([messageCopy setReplyToGUID:guid]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    guid2 = [messageCopy guid];
    v10 = 138412546;
    v11 = guid;
    v12 = 2112;
    v13 = guid2;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Setting %@ as the reply to guid for %@", &v10, 0x16u);
  }
}

- (BOOL)_nicknameSharingEnabled
{
  mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
  sharingEnabled = [mEMORY[0x1E69A8108] sharingEnabled];

  return sharingEnabled;
}

- (unint64_t)_nicknameSharingAudience
{
  mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
  sharingAudience = [mEMORY[0x1E69A8108] sharingAudience];

  return sharingAudience;
}

- (void)_setMeCardSharingOnMessage:(id)message forChat:(id)chat
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  _nicknameSharingAudience = [(IMChatRegistry *)self _nicknameSharingAudience];
  v9 = IMChatRegistryLogHandle(_nicknameSharingAudience);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    *v15 = _nicknameSharingAudience;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Current me card sharing audience is %lu", &v14, 0xCu);
  }

  _nicknameSharingEnabled = [(IMChatRegistry *)self _nicknameSharingEnabled];
  if (_nicknameSharingEnabled)
  {
    if (_nicknameSharingAudience > 1)
    {
      _nicknameSharingEnabled = [(IMChatRegistry *)self _shouldShareMeCardForAlwaysAskAudienceWithChat:chatCopy];
    }

    else
    {
      _nicknameSharingEnabled = [(IMChatRegistry *)self _shouldShareMeCardForContactsOnlyAudienceWithChat:chatCopy];
    }

    v11 = _nicknameSharingEnabled;
  }

  else
  {
    v11 = 0;
  }

  v12 = IMChatRegistryLogHandle(_nicknameSharingEnabled);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    guid = [messageCopy guid];
    v14 = 67109378;
    v15[0] = v11;
    LOWORD(v15[1]) = 2112;
    *(&v15[1] + 2) = guid;
    _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Setting meCard sharing preference %d on message %@", &v14, 0x12u);
  }

  [messageCopy setShouldSendMeCard:v11];
}

- (BOOL)_shouldShareMeCardForContactsOnlyAudienceWithChat:(id)chat
{
  v19 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if ([chatCopy allParticipantsAreContacts])
  {
    v4 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    participants = [chatCopy participants];
    v6 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(participants);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = +[IMNicknameController sharedInstance];
          if ([v11 handleIsAllowedForSharing:v10])
          {
          }

          else
          {
            isContact = [v10 isContact];

            if ((isContact & 1) == 0)
            {
              v4 = 0;
              goto LABEL_15;
            }
          }
        }

        v7 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 1;
LABEL_15:
  }

  return v4;
}

- (BOOL)_shouldShareMeCardForAlwaysAskAudienceWithChat:(id)chat
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  participants = [chat participants];
  v4 = [participants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(participants);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = +[IMNicknameController sharedInstance];
        LODWORD(v8) = [v9 handleIsAllowedForSharing:v8];

        if (!v8)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [participants countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)_chat:(id)_chat sendMessage:(id)message
{
  messageCopy = message;
  _chatCopy = _chat;
  account = [_chatCopy account];
  [(IMChatRegistry *)self _chat:_chatCopy sendMessage:messageCopy withAccount:account];
}

- (void)_chat:(id)_chat sendMessage:(id)message withAccount:(id)account
{
  v72 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v69 = _chatCopy;
      v70 = 2112;
      v71 = messageCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@  message: %@", buf, 0x16u);
    }
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v12) != 0)
  {
    v13 = 0;
  }

  else
  {
    v14 = +[IMDaemonController sharedController];
    v15 = [v14 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v15) != 0)
    {
      v13 = 0;
    }

    else
    {
      v16 = +[IMDaemonController sharedController];
      v17 = [v16 capabilitiesForListenerID:0];
      v13 = (*MEMORY[0x1E69A6258] & v17) == 0;
    }
  }

  if (messageCopy)
  {
    v18 = v13;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    if (([_chatCopy supportsSendingTypingIndicators] & 1) == 0)
    {
      isTypingMessage = [messageCopy isTypingMessage];
      if (isTypingMessage)
      {
        v20 = IMChatRegistryLogHandle(isTypingMessage);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Bailing sending message as its a typing message and service does not support typing", buf, 2u);
        }

        goto LABEL_63;
      }
    }

    v20 = IMCopyGUIDForChatOnAccount(_chatCopy, accountCopy);
    IMComponentsFromChatGUID();
    v21 = 0;
    if (!accountCopy || !v21)
    {
LABEL_62:

LABEL_63:
      goto LABEL_64;
    }

    v65 = v21;
    v22 = [messageCopy copy];
    [v22 _updateError:0];
    loginIMHandle = [accountCopy loginIMHandle];
    [v22 _updateSender:loginIMHandle];

    if ([v22 scheduleType] != 2)
    {
      [v22 _updateFlags:{objc_msgSend(messageCopy, "flags") & 0xFFFFFFFFFFFF4FFFLL}];
    }

    if (![v22 scheduleType])
    {
      [v22 _updateTime:0];
    }

    [v22 _updateTimeRead:0];
    [v22 _updateTimeDelivered:0];
    [v22 _updateTimePlayed:0];
    _imMessageItem = [v22 _imMessageItem];
    [_imMessageItem setEncrypted:{objc_msgSend(_chatCopy, "supportsEncryption")}];
    [(IMChatRegistry *)self _setMeCardSharingOnMessage:_imMessageItem forChat:_chatCopy];
    if ([_imMessageItem isTypingMessage])
    {
      customTypingIndicatorIcon = [messageCopy customTypingIndicatorIcon];
      [_imMessageItem setTypingIndicatorIcon:customTypingIndicatorIcon];
    }

    if (!_imMessageItem)
    {
LABEL_61:

      v21 = v65;
      goto LABEL_62;
    }

    [(IMChatRegistry *)self _trackUsageForMessage:_imMessageItem];
    tapback = [_imMessageItem tapback];
    v27 = tapback == 0;

    if (!v27)
    {
      mEMORY[0x1E69A82F0] = [MEMORY[0x1E69A82F0] sharedInstance];
      [mEMORY[0x1E69A82F0] sendTapbackSendEvent];
    }

    notificationIDSTokenURI = [messageCopy notificationIDSTokenURI];
    v29 = IMChatRegistryLogHandle(notificationIDSTokenURI);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = notificationIDSTokenURI;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Before Siri passed in following notificationIDSTokenURI %@ so setting it on immessageitem", buf, 0xCu);
    }

    v30 = [notificationIDSTokenURI length];
    if (v30)
    {
      v31 = IMChatRegistryLogHandle(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = notificationIDSTokenURI;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Siri passed in following notificationIDSTokenURI %@ so setting it on immessageitem", buf, 0xCu);
      }

      v32 = IMChatRegistryLogHandle([_imMessageItem setNotificationIDSTokenURI:notificationIDSTokenURI]);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        notificationIDSTokenURI2 = [_imMessageItem notificationIDSTokenURI];
        *buf = 138412290;
        v69 = notificationIDSTokenURI2;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "now it is set to %@", buf, 0xCu);
      }
    }

    balloonBundleID = [_imMessageItem balloonBundleID];
    if ([balloonBundleID isEqualToString:*MEMORY[0x1E69A6A18]])
    {
      fileTransferGUIDs = [_imMessageItem fileTransferGUIDs];
      v36 = [fileTransferGUIDs count] == 0;

      if (v36)
      {
LABEL_42:
        mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
        isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

        if (isInternalInstall)
        {
          expressiveSendStyleID = [_imMessageItem expressiveSendStyleID];
          if (expressiveSendStyleID || !IMGetCachedDomainBoolForKey())
          {
          }

          else
          {
            isTypingMessage2 = [_imMessageItem isTypingMessage];
            if ((isTypingMessage2 & 1) == 0)
            {
              v42 = IMChatRegistryLogHandle(isTypingMessage2);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_DEFAULT, "Forcing laser due to defaults com.apple.MobileSMS AlwaysSendLasers", buf, 2u);
              }

              [_imMessageItem setExpressiveSendStyleID:@"com.apple.messages.effect.CKLasersEffect"];
            }
          }
        }

        if ([_imMessageItem isAssociatedMessageItem])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = _imMessageItem;
            associatedMessageGUID = [v43 associatedMessageGUID];
            v64 = IMAssociatedMessageDecodeGUID();

            v45 = [_chatCopy messageItemForGUID:v64];
            expressiveSendStyleID2 = [v45 expressiveSendStyleID];
            [v43 setAssociatedMessageEffect:expressiveSendStyleID2];
          }
        }

        [(IMChatRegistry *)self _setReplyToGuidOnMessage:_imMessageItem forChat:_chatCopy];
        v47 = +[IMDaemonController sharedController];
        remoteDaemon = [v47 remoteDaemon];

        v50 = IMChatRegistryLogHandle(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = remoteDaemon != 0;
          guid = [_imMessageItem guid];
          *buf = 138412546;
          v69 = guid;
          v70 = 1024;
          LODWORD(v71) = v51;
          _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_DEFAULT, "Sending message: %@ to remote daemon proxy: %{BOOL}d", buf, 0x12u);
        }

        v53 = +[IMDaemonController sharedController];
        remoteDaemon2 = [v53 remoteDaemon];
        chatStyle = [_chatCopy chatStyle];
        uniqueID = [accountCopy uniqueID];
        [remoteDaemon2 sendMessage:_imMessageItem toChatID:v20 identifier:v65 style:chatStyle account:uniqueID];

        if ([_chatCopy isChatBot] && (objc_msgSend(_chatCopy, "cachedBusinessName"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v57 == 0, v57, v58))
        {
          [(IMChatRegistry *)self _asyncSetChatBotUserActivityForChat:_chatCopy message:messageCopy];
        }

        else
        {
          [(IMChatRegistry *)self setUserActivityForChat:_chatCopy message:messageCopy orHandles:0];
        }

        service = [_imMessageItem service];
        v60 = +[IMServiceImpl iMessageService];
        internalName = [v60 internalName];
        v62 = [service isEqualToIgnoringCase:internalName];

        if (v62)
        {
          v63 = +[IMChatRegistry sharedRegistry];
          [v63 _setChatHasCommunicatedOveriMessage:_chatCopy];
        }

        goto LABEL_61;
      }

      body = [_imMessageItem body];
      balloonBundleID = [body mutableCopy];

      [balloonBundleID removeCharactersWithAttribute:*MEMORY[0x1E69A5F68]];
      [_imMessageItem setBody:balloonBundleID];
    }

    goto LABEL_42;
  }

LABEL_64:
}

- (void)_asyncSetChatBotUserActivityForChat:(id)chat message:(id)message
{
  chatCopy = chat;
  messageCopy = message;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  businessHandle = [chatCopy businessHandle];
  normalizedID = [businessHandle normalizedID];

  v10 = +[IMHandleRegistrar sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A83A103C;
  v21[3] = &unk_1E7813F50;
  v24 = v25;
  v21[4] = self;
  v11 = chatCopy;
  v22 = v11;
  v12 = messageCopy;
  v23 = v12;
  v13 = [v10 businessNameForUID:normalizedID updateHandler:v21];

  v14 = dispatch_time(0, 3000000000);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A83A1068;
  v17[3] = &unk_1E7813F78;
  v17[4] = self;
  v18 = v11;
  v19 = v12;
  v20 = v25;
  v15 = v12;
  v16 = v11;
  dispatch_after(v14, MEMORY[0x1E69E96A0], v17);

  _Block_object_dispose(v25, 8);
}

- (void)_chat:(id)_chat sendEditedMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type backwardCompatabilityText:(id)text
{
  _chatCopy = _chat;
  itemCopy = item;
  textCopy = text;
  messageItemCopy = messageItem;
  account = [_chatCopy account];
  v16 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v31 = 0;
  v28 = v16;
  IMComponentsFromChatGUID();
  v17 = 0;
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];
  uniqueID = [account2 uniqueID];

  v22 = IMChatRegistryLogHandle(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited message", buf, 2u);
  }

  v23 = +[IMDaemonController sharedController];
  remoteDaemon = [v23 remoteDaemon];
  [remoteDaemon sendEditedMessage:itemCopy previousMessage:messageItemCopy partIndex:index editType:type toChatIdentifier:v17 style:chatStyle account:uniqueID backwardCompatabilityText:textCopy];

  if (type == 2)
  {
    message = [itemCopy message];
    [(IMChatRegistry *)self setUserActivityForChat:_chatCopy message:message orHandles:0];
  }
}

- (void)_chat:(id)_chat resendEditedMessageItem:(id)item partIndex:(int64_t)index withBackwardCompatabilityText:(id)text
{
  itemCopy = item;
  textCopy = text;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v13 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v26 = 0;
  IMComponentsFromChatGUID();
  v14 = 0;
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];

  retractedPartIndexes = [itemCopy retractedPartIndexes];
  v19 = [retractedPartIndexes containsIndex:index];

  v21 = IMChatRegistryLogHandle(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Asking daemon to resend edited message", buf, 2u);
  }

  if (v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v23 = +[IMDaemonController sharedController];
  remoteDaemon = [v23 remoteDaemon];
  [remoteDaemon sendEditedMessage:itemCopy previousMessage:itemCopy partIndex:index editType:v22 toChatIdentifier:v14 style:chatStyle account:uniqueID backwardCompatabilityText:textCopy];
}

- (void)_chat:(id)_chat cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  dCopy = d;
  destinationsCopy = destinations;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v12 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  account2 = [_chatCopy account];
}

- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type
{
  messageItemCopy = messageItem;
  itemCopy = item;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v15 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v25 = 0;
  IMComponentsFromChatGUID();
  v16 = 0;
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];

  v21 = IMChatRegistryLogHandle(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited scheduled message", buf, 2u);
  }

  v22 = +[IMDaemonController sharedController];
  remoteDaemon = [v22 remoteDaemon];
  [remoteDaemon sendEditedScheduledMessage:itemCopy previousMessage:messageItemCopy partIndex:index editType:type toChatIdentifier:v16 style:chatStyle account:uniqueID];
}

- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem retractingPartIndexes:(id)indexes
{
  indexesCopy = indexes;
  messageItemCopy = messageItem;
  itemCopy = item;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v14 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v24 = 0;
  IMComponentsFromChatGUID();
  v15 = 0;
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];

  v20 = IMChatRegistryLogHandle(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited scheduled message retracting part indexes", v23, 2u);
  }

  v21 = +[IMDaemonController sharedController];
  remoteDaemon = [v21 remoteDaemon];
  [remoteDaemon sendEditedScheduledMessage:itemCopy previousMessage:messageItemCopy retractingPartIndexes:indexesCopy toChatIdentifier:v15 style:chatStyle account:uniqueID];
}

- (void)_chat:(id)_chat repositionSticker:(id)sticker
{
  _chatCopy = _chat;
  stickerCopy = sticker;
  account = [_chatCopy account];
  v8 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v17 = 0;
  IMComponentsFromChatGUID();
  v9 = 0;
  account2 = [_chatCopy account];
  uniqueID = [account2 uniqueID];

  v13 = IMChatRegistryLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Asking daemon to send sticker reposition message", v16, 2u);
  }

  v14 = +[IMDaemonController sharedController];
  remoteDaemon = [v14 remoteDaemon];
  [remoteDaemon sendRepositionStickerMessage:stickerCopy chatIdentifier:v9 accountID:uniqueID style:{objc_msgSend(_chatCopy, "chatStyle")}];
}

- (void)_chat:(id)_chat sendGroupPhotoUpdate:(id)update
{
  updateCopy = update;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v8 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  v9 = 0;
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];
  [remoteDaemon sendGroupPhotoUpdate:updateCopy toChatID:v8 identifier:v9 style:chatStyle account:uniqueID];
}

- (void)_chat:(id)_chat setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d
{
  _chatCopy = _chat;
  chatCopy = chat;
  dCopy = d;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    account = [_chatCopy account];
    v13 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

    v14 = v13;
    IMComponentsFromChatGUID();
    v15 = 0;
    v24 = +[IMDaemonController sharedController];
    remoteDaemon = [v24 remoteDaemon];
    v17 = [MEMORY[0x1E695DFF8] URLWithString:chatCopy];
    v18 = dCopy;
    chatStyle = [_chatCopy chatStyle];
    account2 = [_chatCopy account];
    [account2 uniqueID];
    v22 = v21 = chatCopy;
    v23 = chatStyle;
    dCopy = v18;
    [remoteDaemon setTranscriptBackgroundAndSendToChat:v17 toChatID:v14 identifier:v15 style:v23 transferID:v18 account:v22 completion:&unk_1F1B6F4A0];

    chatCopy = v21;
  }
}

- (void)_chat:(id)_chat retryGroupPhotoUpload:(id)upload
{
  uploadCopy = upload;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v8 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  v9 = 0;
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];
  [remoteDaemon retryGroupPhotoUpload:uploadCopy toChatID:v8 identifier:v9 style:chatStyle account:uniqueID];
}

- (void)_chat:(id)_chat retryTranscriptBackgroundUpload:(id)upload transferID:(id)d
{
  dCopy = d;
  uploadCopy = upload;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v11 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  v12 = 0;
  v13 = +[IMDaemonController sharedController];
  remoteDaemon = [v13 remoteDaemon];
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];
  [remoteDaemon retryTranscriptBackgroundUpload:uploadCopy toChatID:v11 identifier:v12 style:chatStyle transferID:dCopy account:uniqueID];
}

- (void)_refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:(id)chat
{
  chatCopy = chat;
  account = [chatCopy account];
  v5 = IMCopyGUIDForChatOnAccount(chatCopy, account);

  IMComponentsFromChatGUID();
  v6 = 0;
  v7 = +[IMDaemonController sharedController];
  remoteDaemon = [v7 remoteDaemon];
  chatStyle = [chatCopy chatStyle];
  account2 = [chatCopy account];

  uniqueID = [account2 uniqueID];
  [remoteDaemon refetchChatBackgroundIfNeededForChatIdentifier:v6 style:chatStyle account:uniqueID];
}

- (void)_chat:(id)_chat sendSyndicationAction:(id)action
{
  v31 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  actionCopy = action;
  if (!actionCopy)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2B24();
    }

    goto LABEL_15;
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) != 0)
  {
    goto LABEL_5;
  }

  v10 = +[IMDaemonController sharedController];
  v11 = [v10 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A62B0] & v11) != 0)
  {

LABEL_5:
    goto LABEL_6;
  }

  v20 = +[IMDaemonController sharedController];
  v21 = [v20 capabilitiesForListenerID:0];
  v22 = *MEMORY[0x1E69A6258] & v21;

  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_6:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];

    if (chatIdentifier)
    {
      v23 = 0;
      v24 = 0;
      sub_1A839DC70(self, _chatCopy, &v24, &v23);
      v14 = v24;
      v15 = v23;
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v14 count];
          *buf = 134218498;
          v26 = v17;
          v27 = 2112;
          v28 = actionCopy;
          v29 = 2112;
          v30 = v14;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Found %lu chats to send Syndication Action %@ to. chatIDs: %@", buf, 0x20u);
        }
      }

      v18 = +[IMDaemonController sharedController];
      remoteDaemon = [v18 remoteDaemon];
      [remoteDaemon sendSyndicationAction:actionCopy toChatsWithIdentifiers:v14];

LABEL_15:
    }
  }

LABEL_16:
}

- (void)_chat:(id)_chat sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  metadataCopy = metadata;
  dCopy = d;
  if (!metadataCopy)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2B58();
    }

    goto LABEL_15;
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v12) != 0)
  {
    goto LABEL_5;
  }

  v13 = +[IMDaemonController sharedController];
  v14 = [v13 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A62B0] & v14) != 0)
  {

LABEL_5:
    goto LABEL_6;
  }

  v23 = +[IMDaemonController sharedController];
  v24 = [v23 capabilitiesForListenerID:0];
  v25 = *MEMORY[0x1E69A6258] & v24;

  if (!v25)
  {
    goto LABEL_16;
  }

LABEL_6:
  account = [_chatCopy account];
  if (account)
  {
    chatIdentifier = [_chatCopy chatIdentifier];

    if (chatIdentifier)
    {
      v26 = 0;
      v27 = 0;
      sub_1A839DC70(self, _chatCopy, &v27, &v26);
      v17 = v27;
      v18 = v26;
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v17 count];
          *buf = 134218498;
          v29 = v20;
          v30 = 2112;
          v31 = metadataCopy;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Found %lu chats to send updated collaboration metadata %@ to. chatIDs: %@", buf, 0x20u);
        }
      }

      v21 = +[IMDaemonController sharedController];
      remoteDaemon = [v21 remoteDaemon];
      [remoteDaemon sendUpdatedCollaborationMetadata:metadataCopy toChatsWithIdentifiers:v17 forMessageGUID:dCopy];

LABEL_15:
    }
  }

LABEL_16:
}

- (void)_chat:(id)_chat sendHQAttachmentsForMessage:(id)message
{
  _chatCopy = _chat;
  messageCopy = message;
  account = [_chatCopy account];
  v8 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v17 = 0;
  IMComponentsFromChatGUID();
  v9 = 0;
  account2 = [_chatCopy account];
  uniqueID = [account2 uniqueID];

  v13 = IMChatRegistryLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Asking daemon to send HQ Attachments", v16, 2u);
  }

  v14 = +[IMDaemonController sharedController];
  remoteDaemon = [v14 remoteDaemon];
  [remoteDaemon sendHQAttachmentsForMessage:messageCopy toChatID:v9 style:objc_msgSend(_chatCopy account:{"chatStyle"), uniqueID}];
}

- (void)_chat:(id)_chat inviteParticipants:(id)participants reason:(id)reason
{
  v49 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v44 = _chatCopy;
      v45 = 2112;
      v46 = participantsCopy;
      v47 = 2112;
      v48 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  participants: %@  reason: %@", buf, 0x20u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v26 = +[IMDaemonController sharedController];
      v27 = [v26 capabilitiesForListenerID:0];
      v28 = (*MEMORY[0x1E69A6258] & v27) == 0;

      if (v28)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  if (IMMergeNamedGroups())
  {
    account = +[IMChatRegistry sharedRegistry];
    v13 = [account allGUIDsForChat:_chatCopy];
  }

  else
  {
    account = [_chatCopy account];
    v14 = IMCopyGUIDForChatOnAccount(_chatCopy, account);
    v42 = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  }

  account2 = [_chatCopy account];
  loginIMHandle = [account2 loginIMHandle];
  [v30 _updateSender:loginIMHandle];

  _imMessageItem = [v30 _imMessageItem];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v13;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v35)
  {
    v32 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * v17);
        IMComponentsFromChatGUID();
        v19 = 0;
        v20 = +[IMDaemonController sharedController];
        remoteDaemon = [v20 remoteDaemon];
        v22 = [participantsCopy arrayByApplyingSelector:sel__handleInfo];
        chatStyle = [_chatCopy chatStyle];
        account3 = [_chatCopy account];
        uniqueID = [account3 uniqueID];
        [remoteDaemon invitePersonInfo:v22 withMessage:_imMessageItem toChatID:v18 identifier:v19 style:chatStyle account:uniqueID];

        ++v17;
      }

      while (v35 != v17);
      v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v35);
  }

LABEL_20:
}

- (void)_chat:(id)_chat removeParticipants:(id)participants reason:(id)reason
{
  v45 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v40 = _chatCopy;
      v41 = 2112;
      v42 = participantsCopy;
      v43 = 2112;
      v44 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  participants: %@  reason: %@", buf, 0x20u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v24 = +[IMDaemonController sharedController];
      v25 = [v24 capabilitiesForListenerID:0];
      v26 = (*MEMORY[0x1E69A6258] & v25) == 0;

      if (v26)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  if (IMMergeNamedGroups())
  {
    account = +[IMChatRegistry sharedRegistry];
    v13 = [account allGUIDsForChat:_chatCopy];
  }

  else
  {
    account = [_chatCopy account];
    v14 = IMCopyGUIDForChatOnAccount(_chatCopy, account);
    v38 = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v13;
  v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v31)
  {
    v29 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        IMComponentsFromChatGUID();
        v17 = 0;
        v18 = +[IMDaemonController sharedController];
        remoteDaemon = [v18 remoteDaemon];
        v20 = [participantsCopy arrayByApplyingSelector:sel__handleInfo];
        chatStyle = [_chatCopy chatStyle];
        account2 = [_chatCopy account];
        uniqueID = [account2 uniqueID];
        [remoteDaemon removePersonInfo:v20 chatID:v16 identifier:v17 style:chatStyle account:uniqueID];

        ++v15;
      }

      while (v31 != v15);
      v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v31);
  }

LABEL_20:
}

- (void)_chat:(id)_chat joinWithProperties:(id)properties
{
  v53 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  propertiesCopy = properties;
  v8 = IMChatRegistryLogHandle(propertiesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = _chatCopy;
    v45 = 2112;
    v46 = propertiesCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@  joinProperties: %@", buf, 0x16u);
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) != 0)
  {
    goto LABEL_6;
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A62B0] & v12) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v31 = +[IMDaemonController sharedController];
  v32 = [v31 capabilitiesForListenerID:0];
  v33 = *MEMORY[0x1E69A6258] & v32;

  if (!v33)
  {
    goto LABEL_28;
  }

LABEL_7:
  chatIdentifier = [_chatCopy chatIdentifier];
  chatIdentifier2 = [_chatCopy chatIdentifier];
  [_chatCopy chatStyle];
  v15 = IMCopyAnyServiceGUIDForChat();

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v17 = [chatGUIDToChatMap objectForKey:v15];
  if (!v17)
  {

LABEL_12:
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v15];
    chatStyle = [_chatCopy chatStyle];
    account = [_chatCopy account];

    if (!account || !chatIdentifier)
    {
      goto LABEL_27;
    }

    v23 = IMChatRegistryLogHandle(v22);
    v41 = propertiesCopy;
    v42 = chatStyle;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [_chatCopy account];
      guid = [_chatCopy guid];
      chatIdentifier3 = [_chatCopy chatIdentifier];
      joinState = [_chatCopy joinState];
      personCentricID = [_chatCopy personCentricID];
      *buf = 138413314;
      v44 = account2;
      v45 = 2112;
      v46 = guid;
      v47 = 2112;
      v48 = chatIdentifier3;
      v49 = 2048;
      v50 = joinState;
      v51 = 2112;
      v52 = personCentricID;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Forwarding join chat to account %@ for: [IMChat guid: %@  chat identifier: %@  state: %lu  pcid: %@]", buf, 0x34u);

      chatStyle = v42;
    }

    if (chatStyle == 45)
    {
      recipient = [_chatCopy recipient];
      _handleInfo = [recipient _handleInfo];
      chatGUIDToChatMap = IMSingleObjectArray();
    }

    else
    {
      recipient = [_chatCopy participantsWithState:21];
      chatGUIDToChatMap = [recipient arrayByApplyingSelector:sel__handleInfo];
    }

    groupID = [_chatCopy groupID];
    if (!groupID)
    {
      groupID = [MEMORY[0x1E696AEC0] stringGUID];
      v34 = IMChatRegistryLogHandle([_chatCopy setGroupID:groupID]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = chatIdentifier;
        v45 = 2112;
        v46 = groupID;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEFAULT, "Chat with chat identifier %@ had no groupID. A new groupID was created: %@", buf, 0x16u);
      }
    }

    v40 = +[IMDaemonController sharedController];
    remoteDaemon = [v40 remoteDaemon];
    lastAddressedHandleID = [_chatCopy lastAddressedHandleID];
    lastAddressedSIMID = [_chatCopy lastAddressedSIMID];
    account3 = [_chatCopy account];
    uniqueID = [account3 uniqueID];
    propertiesCopy = v41;
    [remoteDaemon joinChatID:v15 handleInfo:chatGUIDToChatMap identifier:chatIdentifier style:v42 groupID:groupID lastAddressedHandle:lastAddressedHandleID lastAddressedSIMID:lastAddressedSIMID joinProperties:v41 account:uniqueID];

    goto LABEL_26;
  }

  groupID = v17;
  if ([_chatCopy joinState] != 3)
  {
    joinState2 = [_chatCopy joinState];

    if (joinState2 == 4)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

LABEL_26:

LABEL_27:
LABEL_28:
}

- (void)_chat_leave:(id)_chat_leave
{
  v47[1] = *MEMORY[0x1E69E9840];
  _chat_leaveCopy = _chat_leave;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v44 = _chat_leaveCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) == 0)
  {
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v8) == 0)
    {
      v34 = +[IMDaemonController sharedController];
      v35 = [v34 capabilitiesForListenerID:0];
      v36 = (*MEMORY[0x1E69A6258] & v35) == 0;

      if (v36)
      {
        goto LABEL_37;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  chatStyle = [_chat_leaveCopy chatStyle];
  v37 = chatStyle;
  if (chatStyle == 45)
  {
    v10 = IMChatRegistryLogHandle(chatStyle);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = _chat_leaveCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Not allowed to leave 1:1 chat: %@", buf, 0xCu);
    }
  }

  else
  {
    if (IMMergeNamedGroups())
    {
      account = +[IMChatRegistry sharedRegistry];
      v12 = [account allGUIDsForChat:_chat_leaveCopy];
    }

    else
    {
      account = [_chat_leaveCopy account];
      v13 = IMCopyGUIDForChatOnAccount(_chat_leaveCopy, account);
      v47[0] = v13;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    }

    v15 = IMChatRegistryLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [_chat_leaveCopy account];
      uniqueID = [account2 uniqueID];
      *buf = 138412546;
      v44 = _chat_leaveCopy;
      v45 = 2112;
      v46 = uniqueID;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Leaving chat %@ with account ID %@", buf, 0x16u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v12;
    v18 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v18)
    {
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v10);
          }

          IMComponentsFromChatGUID();
          v21 = 0;
          if (v21)
          {
            account3 = [_chat_leaveCopy account];

            if (account3)
            {
              v24 = IMChatRegistryLogHandle(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v21;
                _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "Forwarding leave chat for: %@", buf, 0xCu);
              }

              v25 = +[IMDaemonController sharedController];
              remoteDaemon = [v25 remoteDaemon];
              account4 = [_chat_leaveCopy account];
              uniqueID2 = [account4 uniqueID];
              [remoteDaemon leaveChatID:v21 style:v37 account:uniqueID2];
            }
          }
        }

        v18 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v18);
    }

    v30 = IMChatRegistryLogHandle(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      guid = [_chat_leaveCopy guid];
      *buf = 138412290;
      v44 = guid;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Unjoining chat locally: %@", buf, 0xCu);
    }

    if (_chat_leaveCopy)
    {
      v32 = [_chat_leaveCopy _setJoinState:0];
    }

    v33 = IMChatRegistryLogHandle(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_DEFAULT, "Done", buf, 2u);
    }
  }

LABEL_37:
}

- (void)_chat_remove:(id)_chat_remove
{
  v34 = *MEMORY[0x1E69E9840];
  _chat_removeCopy = _chat_remove;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = _chat_removeCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) == 0)
  {
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v8) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v9 = [(IMChatRegistry *)self allGUIDsForChat:_chat_removeCopy];
  v10 = IMChatRegistryLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v9;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Removing chat from the agent too: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  v13 = v12;
  if (v12)
  {
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v17 = IMChatRegistryLogHandle(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v16;
          _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "   Found guid to remove: %@", buf, 0xCu);
        }

        v18 = +[IMDaemonController sharedController];
        remoteDaemon = [v18 remoteDaemon];
        [remoteDaemon removeChat:v16];

        v12 = [(IMChatRegistry *)self _unregisterChatWithGUID:v16 deleted:1];
        ++v15;
      }

      while (v13 != v15);
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v13 = v12;
    }

    while (v12);
  }

  personCentricID = [_chat_removeCopy personCentricID];

  if (personCentricID)
  {
    chatPersonIDToChatMap = [(IMChatRegistry *)self chatPersonIDToChatMap];
    personCentricID2 = [_chat_removeCopy personCentricID];
    [chatPersonIDToChatMap removeObjectForKey:personCentricID2];
  }

LABEL_23:
}

- (void)_chat_declineInvitation:(id)invitation
{
  v30 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = invitationCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) == 0)
  {
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v8) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  chatStyle = [invitationCopy chatStyle];
  account = [invitationCopy account];
  v11 = IMCopyGUIDForChatOnAccount(invitationCopy, account);

  IMComponentsFromChatGUID();
  v12 = 0;
  account2 = [invitationCopy account];
  if (account2)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;

  if (v15)
  {
    v17 = IMChatRegistryLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [invitationCopy account];
      *buf = 138412546;
      v27 = invitationCopy;
      v28 = 2112;
      v29 = account3;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Forwarding decline chat for: %@   to account: %@", buf, 0x16u);
    }

    v19 = +[IMDaemonController sharedController];
    remoteDaemon = [v19 remoteDaemon];
    account4 = [invitationCopy account];
    uniqueID = [account4 uniqueID];
    [remoteDaemon declineInvitationToChatID:v11 identifier:v12 style:chatStyle account:uniqueID];
  }

LABEL_20:
}

- (void)_chat:(id)_chat setProperties:(id)properties ofParticipant:(id)participant
{
  v40 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  propertiesCopy = properties;
  participantCopy = participant;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v35 = _chatCopy;
      v36 = 2112;
      v37 = propertiesCopy;
      v38 = 2112;
      v39 = participantCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@  properties: %@  participant: %@", buf, 0x20u);
    }
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v12) == 0)
  {
    v13 = +[IMDaemonController sharedController];
    v14 = [v13 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v14) == 0)
    {
      v29 = +[IMDaemonController sharedController];
      v30 = [v29 capabilitiesForListenerID:0];
      v31 = (*MEMORY[0x1E69A6258] & v30) == 0;

      if (v31)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v16 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  buf[0] = 0;
  IMComponentsFromChatGUID();
  v17 = 0;
  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v19 = [chatGUIDToChatMap objectForKey:v16];
  LODWORD(account) = v19 == 0;

  if (account)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v16];
  }

  account2 = [_chatCopy account];
  if (account2)
  {
    v21 = v17 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;

  if (v22)
  {
    v23 = +[IMDaemonController sharedController];
    remoteDaemon = [v23 remoteDaemon];
    v25 = [participantCopy ID];
    v26 = buf[0];
    account3 = [_chatCopy account];
    uniqueID = [account3 uniqueID];
    [remoteDaemon setProperties:v33 ofParticipant:v25 inChatID:v16 identifier:v17 style:v26 account:uniqueID];
  }

LABEL_20:
}

- (void)_chat:(id)_chat setValue:(id)value forChatProperty:(id)property
{
  v45 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  valueCopy = value;
  propertyCopy = property;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v40 = _chatCopy;
      v41 = 2112;
      v42 = propertyCopy;
      v43 = 2112;
      v44 = valueCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@  property: %@  value: %@", buf, 0x20u);
    }
  }

  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v10) == 0)
  {
    v11 = +[IMDaemonController sharedController];
    v12 = [v11 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v12) == 0)
    {
      v28 = +[IMDaemonController sharedController];
      v29 = [v28 capabilitiesForListenerID:0];
      v30 = (*MEMORY[0x1E69A6258] & v29) == 0;

      if (v30)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v14 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v16 = [chatGUIDToChatMap objectForKey:v14];
  v17 = v16 == 0;

  if (v17)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v14];
  }

  if (propertyCopy)
  {
    v18 = MEMORY[0x1E695DF20];
    if (valueCopy)
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:valueCopy forKey:propertyCopy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v19 = [v18 dictionaryWithObject:null forKey:propertyCopy];
    }

    v21 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v34 + 1) + 8 * i);
          v26 = +[IMDaemonController sharedController];
          remoteDaemon = [v26 remoteDaemon];
          [remoteDaemon chat:v25 updateProperties:v19];
        }

        v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }
  }

LABEL_24:
}

- (void)_chat:(id)_chat updateDisplayName:(id)name
{
  v43 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v40 = _chatCopy;
      v41 = 2112;
      v42 = nameCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  update display name: %@", buf, 0x16u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v29 = +[IMDaemonController sharedController];
      v30 = [v29 capabilitiesForListenerID:0];
      v31 = (*MEMORY[0x1E69A6258] & v30) == 0;

      if (v31)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v32 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v14 = [chatGUIDToChatMap objectForKey:v32];
  v15 = v14 == 0;

  if (v15)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v32];
  }

  v16 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v19)
  {
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v34 + 1) + 8 * v21);
        if (![_chatCopy shouldIgnoreiMessageSiblingGroupIdentityUpdates] || (IMComponentsFromChatGUID(), v23 = 0, v24 = objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E69A7AF0]), v23, (v24 & 1) == 0))
        {
          v25 = +[IMDaemonController sharedController];
          remoteDaemon = [v25 remoteDaemon];
          [remoteDaemon chat:v22 updateDisplayName:nameCopy messageID:stringGUID];

          mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          LODWORD(v25) = [mEMORY[0x1E69A8070] isOneChatEnabled];

          if (v25)
          {
            stringGUID2 = [MEMORY[0x1E696AEC0] stringGUID];

            stringGUID = stringGUID2;
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

LABEL_23:
}

- (void)_chat:(id)_chat updateLastAddressedHandle:(id)handle
{
  v37 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = _chatCopy;
      v35 = 2112;
      v36 = handleCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  update last address handle: %@", buf, 0x16u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v24 = +[IMDaemonController sharedController];
      v25 = [v24 capabilitiesForListenerID:0];
      v26 = (*MEMORY[0x1E69A6258] & v25) == 0;

      if (v26)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v13 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v15 = [chatGUIDToChatMap objectForKey:v13];
  v16 = v15 == 0;

  if (v16)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v13];
  }

  v17 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        v22 = +[IMDaemonController sharedController];
        remoteDaemon = [v22 remoteDaemon];
        [remoteDaemon chat:v21 updateLastAddressHandle:handleCopy];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

LABEL_19:
}

- (void)_chat:(id)_chat updateLastAddressedSIMID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = _chatCopy;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  update last address uniqueID: %@", buf, 0x16u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v24 = +[IMDaemonController sharedController];
      v25 = [v24 capabilitiesForListenerID:0];
      v26 = (*MEMORY[0x1E69A6258] & v25) == 0;

      if (v26)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v13 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v15 = [chatGUIDToChatMap objectForKey:v13];
  v16 = v15 == 0;

  if (v16)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v13];
  }

  v17 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        v22 = +[IMDaemonController sharedController];
        remoteDaemon = [v22 remoteDaemon];
        [remoteDaemon chat:v21 updateLastAddressedSIMID:dCopy];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

LABEL_19:
}

- (void)_chat:(id)_chat updateIsFiltered:(int64_t)filtered synchronously:(BOOL)synchronously
{
  v44 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = _chatCopy;
      v41 = 1024;
      LODWORD(v42) = filtered;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "chat: %@  update is filtered: %d", buf, 0x12u);
    }
  }

  v10 = +[IMDaemonController sharedController];
  v11 = [v10 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v11) == 0)
  {
    v12 = +[IMDaemonController sharedController];
    v13 = [v12 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v13) == 0)
    {
      v31 = +[IMDaemonController sharedController];
      v32 = [v31 capabilitiesForListenerID:0];
      v33 = (*MEMORY[0x1E69A6258] & v32) == 0;

      if (v33)
      {
        goto LABEL_36;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v15 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v17 = [chatGUIDToChatMap objectForKey:v15];
  v18 = v17 == 0;

  if (v18)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v15];
  }

  v19 = +[IMDaemonController sharedController];
  v20 = v19;
  if (synchronously)
  {
    [v19 synchronousRemoteDaemon];
  }

  else
  {
    [v19 remoteDaemon];
  }
  v21 = ;

  v22 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v23)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [v21 chat:*(*(&v35 + 1) + 8 * i) updateIsFiltered:filtered];
      }

      v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v23);
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled && [_chatCopy isFiltered] == 2)
  {
    lastIncomingFinishedMessage = [_chatCopy lastIncomingFinishedMessage];
    if (!lastIncomingFinishedMessage)
    {
      v29 = IMChatRegistryLogHandle(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v40 = "[IMChatRegistry(IMChatRegistry_Sending) _chat:updateIsFiltered:synchronously:]";
        v41 = 2112;
        v42 = _chatCopy;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", buf, 0x16u);
      }

      lastIncomingFinishedMessage = [_chatCopy lastFinishedMessage];
    }

    guid = [lastIncomingFinishedMessage guid];
    if (guid)
    {
      [v21 junkChatContainingMessageWithGUID:guid];
    }

    else
    {
      v34 = IMChatRegistryLogHandle(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2B8C();
      }
    }
  }

LABEL_36:
}

- (void)_chat:(id)_chat updateIsBlackholed:(BOOL)blackholed
{
  blackholedCopy = blackholed;
  v36 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = _chatCopy;
      v34 = 1024;
      v35 = blackholedCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "chat: %@  update is blackholed: %d", buf, 0x12u);
    }
  }

  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_21;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  if (!blackholedCopy)
  {
    [_chatCopy setValue:MEMORY[0x1E695E118] forChatProperty:@"restoredFromBlackhole"];
  }

  account = [_chatCopy account];
  v26 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  v13 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v15 = [chatGUIDToChatMap objectForKey:v26];

  if (v15)
  {
    [(IMChatRegistry *)self _unregisterChat:_chatCopy deleted:0];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon chat:v20 updateIsBlackholed:blackholedCopy];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

LABEL_21:
}

- (void)_chat:(id)_chat updateIsRecovered:(BOOL)recovered
{
  recoveredCopy = recovered;
  v36 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v33 = recoveredCopy;
      v34 = 2112;
      v35 = _chatCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Update is recovered: %d for chat: %@", buf, 0x12u);
    }
  }

  v7 = +[IMDaemonController sharedController];
  v8 = [v7 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v8) == 0)
  {
    v9 = +[IMDaemonController sharedController];
    v10 = [v9 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v10) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v12 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v14 = [chatGUIDToChatMap objectForKey:v12];
  v15 = v14 == 0;

  if (v15)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v12];
  }

  v16 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon chat:v20 updateIsRecovered:recoveredCopy];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

LABEL_19:
}

- (void)_chat:(id)_chat updateIsDeletingIncomingMessages:(BOOL)messages
{
  messagesCopy = messages;
  v36 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v33 = messagesCopy;
      v34 = 2112;
      v35 = _chatCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Update isDeletingIncomingMessages: %d for chat: %@", buf, 0x12u);
    }
  }

  v7 = +[IMDaemonController sharedController];
  v8 = [v7 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v8) == 0)
  {
    v9 = +[IMDaemonController sharedController];
    v10 = [v9 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v10) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  account = [_chatCopy account];
  v12 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
  v14 = [chatGUIDToChatMap objectForKey:v12];
  v15 = v14 == 0;

  if (v15)
  {
    [(IMChatRegistry *)self _registerChat:_chatCopy isIncoming:0 guid:v12];
  }

  v16 = [(IMChatRegistry *)self allGUIDsForChat:_chatCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon chat:v20 updateIsDeletingIncomingMessages:messagesCopy];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

LABEL_19:
}

- (void)_chat_fetchIncomingPendingMessagesOverSatellite:(id)satellite
{
  v8 = 0;
  v9 = 0;
  sub_1A839DC70(self, satellite, &v9, &v8);
  v4 = v9;
  v5 = v8;
  daemonController = [(IMChatRegistry *)self daemonController];
  remoteDaemon = [daemonController remoteDaemon];
  [remoteDaemon fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs:v4 services:v5];
}

- (void)_loadSiblingsForChatIfNeeded:(id)needed
{
  neededCopy = needed;
  if (([neededCopy hasQueriedForSiblingChats] & 1) == 0)
  {
    [(IMChatRegistry *)self _loadPossibleSiblingChatsForHandlesAssociatedWithChat:neededCopy waitForReply:1 completionHandler:0];
    [neededCopy setHasQueriedForSiblingChats:1];
  }
}

- (void)_chat_loadHistory:(id)history limit:(unint64_t)limit beforeGUID:(id)d afterGUID:(id)iD threadIdentifier:(id)identifier queryID:(id)queryID synchronous:(BOOL)synchronous completion:(id)self0
{
  v71 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  queryIDCopy = queryID;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v62 = historyCopy;
      v63 = 1024;
      limitCopy = limit;
      v65 = 2112;
      v66 = dCopy;
      v67 = 2112;
      v68 = iDCopy;
      v69 = 2112;
      v70 = queryIDCopy;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEBUG, "chat: %@ limit: %d beforeGUID: %@ afterGUID: %@ queryID: %@", buf, 0x30u);
    }
  }

  v18 = +[IMDaemonController sharedController];
  v19 = [v18 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v19) == 0)
  {
    v20 = +[IMDaemonController sharedController];
    v21 = [v20 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v21) == 0)
    {
      v38 = +[IMDaemonController sharedController];
      v39 = [v38 capabilitiesForListenerID:0];
      v40 = (*MEMORY[0x1E69A6258] & v39) == 0;

      if (v40)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(IMChatRegistry *)self _loadSiblingsForChatIfNeeded:historyCopy];
  v59 = 0;
  v60 = 0;
  sub_1A839DC70(self, historyCopy, &v60, &v59);
  v41 = v60;
  v22 = v59;
  daemonController = [(IMChatRegistry *)self daemonController];
  v24 = daemonController;
  if (synchronous)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v42 = ;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A61E4;
  aBlock[3] = &unk_1E7813FA0;
  aBlock[4] = self;
  v55 = queryIDCopy;
  v25 = historyCopy;
  v56 = v25;
  v26 = v22;
  v57 = v26;
  limitCopy2 = limit;
  v27 = _Block_copy(aBlock);
  v28 = IMLogHandleForCategory();
  v29 = os_signpost_id_generate(v28);
  v30 = v28;
  v31 = v30;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "loadHistoryForChatWithGUID", "", buf, 2u);
  }

  guid = [v25 guid];
  chatStyle = [v25 chatStyle];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_1A83A6294;
  v48[3] = &unk_1E7813FF0;
  v52 = v29;
  v49 = v31;
  v50 = v27;
  synchronousCopy = synchronous;
  v51 = completionCopy;
  v34 = v27;
  v35 = v31;
  [v42 loadHistoryForChatWithGUID:guid chatIdentifiers:v41 style:chatStyle services:v26 limit:limit beforeGUID:dCopy afterGUID:iDCopy threadIdentifier:identifierCopy reply:v48];

  if ([v25 isFiltered])
  {
    if (([v25 supportsFilteringExtensions] & 1) == 0)
    {
      v36 = [v25 valueForChatProperty:@"hasViewedPotentialSpamChat"];
      bOOLValue = [v36 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        [v25 setValue:MEMORY[0x1E695E118] forChatProperty:@"hasViewedPotentialSpamChat"];
      }
    }
  }

LABEL_20:
}

- (void)_chat_loadPagedHistory:(id)history numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after messageGUID:(id)d threadIdentifier:(id)identifier queryID:(id)iD synchronous:(BOOL)synchronous completion:(id)self0
{
  v65 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v56 = historyCopy;
      v57 = 1024;
      beforeCopy = before;
      v59 = 1024;
      afterCopy = after;
      v61 = 2112;
      v62 = dCopy;
      v63 = 2112;
      v64 = iDCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "_chat_loadPagedHistory chat: %@ numberOfMessagesBefore: %d numberOfMessagesAfter: %d messageGUID: %@ queryID: %@", buf, 0x2Cu);
    }
  }

  v17 = +[IMDaemonController sharedController];
  v18 = [v17 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v18) == 0)
  {
    v19 = +[IMDaemonController sharedController];
    v20 = [v19 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v20) == 0)
    {
      v33 = +[IMDaemonController sharedController];
      v34 = [v33 capabilitiesForListenerID:0];
      v35 = (*MEMORY[0x1E69A6258] & v34) == 0;

      if (v35)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(IMChatRegistry *)self _loadSiblingsForChatIfNeeded:historyCopy];
  v53 = 0;
  v54 = 0;
  sub_1A839DC70(self, historyCopy, &v54, &v53);
  v36 = v54;
  v21 = v53;
  v22 = IMLogHandleForCategory();
  v23 = os_signpost_id_generate(v22);
  v24 = v22;
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "loadPagedHistoryAroundMessageWithGUID", "", buf, 2u);
  }

  daemonController = [(IMChatRegistry *)self daemonController];
  v27 = daemonController;
  if (synchronous)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v28 = ;

  guid = [historyCopy guid];
  chatStyle = [historyCopy chatStyle];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A68C8;
  v42[3] = &unk_1E7814040;
  v49 = v23;
  v43 = v25;
  selfCopy = self;
  v45 = iDCopy;
  v46 = historyCopy;
  v47 = v21;
  beforeCopy2 = before;
  afterCopy2 = after;
  synchronousCopy = synchronous;
  v48 = completionCopy;
  v31 = v21;
  v32 = v25;
  [v28 loadPagedHistoryAroundMessageWithGUID:dCopy chatGUID:guid chatIdentifiers:v36 style:chatStyle services:v31 numberOfMessagesBefore:before numberOfMessagesAfter:after threadIdentifier:identifierCopy reply:v42];

LABEL_16:
}

- (void)_chat_fetchHistorySummary:(id)summary dateInterval:(id)interval synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion
{
  synchronousCopy = synchronous;
  v44 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  intervalCopy = interval;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v37 = summaryCopy;
      v38 = 2112;
      v39 = intervalCopy;
      v40 = 1024;
      v41 = synchronousCopy;
      v42 = 2112;
      v43 = dCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "_chat_fetchHistorySummary chat: %@ dateInterval: %@ synchronous: %d queryID: %@", buf, 0x26u);
    }
  }

  v17 = +[IMDaemonController sharedController];
  v18 = [v17 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v18) == 0)
  {
    v19 = +[IMDaemonController sharedController];
    v20 = [v19 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v20) == 0)
    {
      v27 = +[IMDaemonController sharedController];
      v28 = [v27 capabilitiesForListenerID:0];
      v29 = (*MEMORY[0x1E69A6258] & v28) == 0;

      if (v29)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(IMChatRegistry *)self _loadSiblingsForChatIfNeeded:summaryCopy];
  v34 = 0;
  v35 = 0;
  sub_1A839DC70(self, summaryCopy, &v35, &v34);
  v21 = v35;
  v22 = v34;
  chatStyle = [summaryCopy chatStyle];
  daemonController = [(IMChatRegistry *)self daemonController];
  v25 = daemonController;
  if (synchronousCopy)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v26 = ;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1A83A6EA8;
  v30[3] = &unk_1E7814068;
  v33 = synchronousCopy;
  v32 = completionCopy;
  v31 = dCopy;
  [v26 fetchMessageHistorySummaryForDateInterval:intervalCopy chatIdentifiers:v21 chatStyle:chatStyle services:v22 reply:v30];

LABEL_13:
}

- (void)_chat_fetchOldestMessageDateForChat:(id)chat synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion
{
  synchronousCopy = synchronous;
  v39 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v34 = chatCopy;
      v35 = 1024;
      v36 = synchronousCopy;
      v37 = 2112;
      v38 = dCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEBUG, "_chat_fetchOldestMessageDateForChat chat: %@ synchronous: %d queryID: %@", buf, 0x1Cu);
    }
  }

  v14 = +[IMDaemonController sharedController];
  v15 = [v14 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v15) == 0)
  {
    v16 = +[IMDaemonController sharedController];
    v17 = [v16 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v17) == 0)
    {
      v24 = +[IMDaemonController sharedController];
      v25 = [v24 capabilitiesForListenerID:0];
      v26 = (*MEMORY[0x1E69A6258] & v25) == 0;

      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(IMChatRegistry *)self _loadSiblingsForChatIfNeeded:chatCopy];
  v31 = 0;
  v32 = 0;
  sub_1A839DC70(self, chatCopy, &v32, &v31);
  v18 = v32;
  v19 = v31;
  chatStyle = [chatCopy chatStyle];
  daemonController = [(IMChatRegistry *)self daemonController];
  v22 = daemonController;
  if (synchronousCopy)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v23 = ;

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A83A7284;
  v27[3] = &unk_1E7814090;
  v30 = synchronousCopy;
  v29 = completionCopy;
  v28 = dCopy;
  [v23 fetchOldestMessageDateForChatIdentifiers:v18 chatStyle:chatStyle services:v19 reply:v27];

LABEL_13:
}

- (void)_chat_clearHistory:(id)history beforeGUID:(id)d afterGUID:(id)iD queryID:(id)queryID
{
  v38 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dCopy = d;
  iDCopy = iD;
  queryIDCopy = queryID;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v31 = historyCopy;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2112;
      v35 = iDCopy;
      v36 = 2112;
      v37 = queryIDCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "chat: %@ beforeGUID: %@ afterGUID: %@ queryID: %@", buf, 0x2Au);
    }
  }

  v15 = +[IMDaemonController sharedController];
  v16 = [v15 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v16) == 0)
  {
    v17 = +[IMDaemonController sharedController];
    v18 = [v17 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v18) == 0)
    {
      v25 = +[IMDaemonController sharedController];
      v26 = [v25 capabilitiesForListenerID:0];
      v27 = (*MEMORY[0x1E69A6258] & v26) == 0;

      if (v27)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v28 = 0;
  v29 = 0;
  sub_1A839DC70(self, historyCopy, &v29, &v28);
  v19 = v29;
  v20 = v28;
  v21 = +[IMDaemonController sharedController];
  remoteDaemon = [v21 remoteDaemon];
  chatStyle = [historyCopy chatStyle];
  guid = [historyCopy guid];
  [remoteDaemon clearHistoryForIDs:v19 style:chatStyle onServices:v20 beforeGUID:dCopy afterGUID:iDCopy chatID:guid queryID:queryIDCopy];

LABEL_10:
}

- (void)_chat_markAsSpam:(id)spam queryID:(id)d autoReport:(BOOL)report isJunkReportedToCarrier:(BOOL)carrier reportReason:(unint64_t)reason
{
  carrierCopy = carrier;
  reportCopy = report;
  v42 = *MEMORY[0x1E69E9840];
  spamCopy = spam;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = spamCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "chat: %@", buf, 0xCu);
    }
  }

  v13 = +[IMDaemonController sharedController];
  v14 = [v13 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v14) == 0)
  {
    v15 = +[IMDaemonController sharedController];
    v16 = [v15 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v16) == 0)
    {
      v28 = +[IMDaemonController sharedController];
      v29 = [v28 capabilitiesForListenerID:0];
      v30 = (*MEMORY[0x1E69A6258] & v29) == 0;

      if (v30)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v38 = 0;
  v39 = 0;
  sub_1A839DC70(self, spamCopy, &v39, &v38);
  v17 = v39;
  v18 = v38;
  if ([dCopy length])
  {
    v19 = !reportCopy;
  }

  else
  {
    v19 = 0;
  }

  daemonController = [(IMChatRegistry *)self daemonController];
  v21 = daemonController;
  if (v19)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v22 = ;

  guid = [spamCopy guid];
  chatStyle = [spamCopy chatStyle];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A83A7994;
  v33[3] = &unk_1E78140B8;
  v37 = v19;
  v33[4] = self;
  v34 = dCopy;
  v25 = spamCopy;
  v35 = v25;
  v26 = v18;
  v36 = v26;
  [v22 markChatAsSpamWithGUID:guid chatIdentifiers:v17 style:chatStyle services:v26 isAutoReport:reportCopy isJunkReportedToCarrier:carrierCopy reportReason:reason reply:v33];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(chatStyle) = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (chatStyle && !reportCopy && [v25 isFiltered] != 2)
  {
    [v25 updateIsFiltered:2];
  }

LABEL_20:
}

- (void)_chat_loadFrequentReplies:(id)replies limit:(unint64_t)limit queryID:(id)d loadImmediately:(BOOL)immediately
{
  v42 = *MEMORY[0x1E69E9840];
  repliesCopy = replies;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v37 = repliesCopy;
      v38 = 1024;
      limitCopy = limit;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEBUG, "chat: %@ limit:%d queryID: %@", buf, 0x1Cu);
    }
  }

  v12 = +[IMDaemonController sharedController];
  v13 = [v12 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v13) == 0)
  {
    v14 = +[IMDaemonController sharedController];
    v15 = [v14 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v15) == 0)
    {
      v24 = +[IMDaemonController sharedController];
      v25 = [v24 capabilitiesForListenerID:0];
      v26 = (*MEMORY[0x1E69A6258] & v25) == 0;

      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v34 = 0;
  v35 = 0;
  sub_1A839DC70(self, repliesCopy, &v35, &v34);
  v16 = v35;
  v17 = v34;
  daemonController = [(IMChatRegistry *)self daemonController];
  v19 = daemonController;
  if (immediately)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v20 = ;

  guid = [repliesCopy guid];
  chatStyle = [repliesCopy chatStyle];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A83A7D44;
  v28[3] = &unk_1E7814108;
  immediatelyCopy = immediately;
  v28[4] = self;
  v29 = dCopy;
  v30 = repliesCopy;
  v31 = v17;
  limitCopy2 = limit;
  v23 = v17;
  [v20 loadFrequentRepliesForChatWithGUID:guid chatIdentifiers:v16 style:chatStyle services:v23 limit:limit reply:v28];

LABEL_13:
}

- (void)_chat_loadUnreadMessages:(id)messages limit:(unint64_t)limit fallbackGUID:(id)d queryID:(id)iD loadImmediately:(BOOL)immediately
{
  v50 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v45 = messagesCopy;
      v46 = 2048;
      limitCopy = limit;
      v48 = 2112;
      v49 = iDCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@ limit:%lu queryID: %@", buf, 0x20u);
    }
  }

  v13 = +[IMDaemonController sharedController];
  v14 = [v13 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v14) == 0)
  {
    v15 = +[IMDaemonController sharedController];
    v16 = [v15 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v16) == 0)
    {
      v28 = +[IMDaemonController sharedController];
      v29 = [v28 capabilitiesForListenerID:0];
      v30 = (*MEMORY[0x1E69A6258] & v29) == 0;

      if (v30)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v42 = 0;
  v43 = 0;
  sub_1A839DC70(self, messagesCopy, &v43, &v42);
  v17 = v43;
  v18 = v42;
  daemonController = [(IMChatRegistry *)self daemonController];
  v20 = daemonController;
  if (immediately)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v21 = ;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A8288;
  aBlock[3] = &unk_1E7813FA0;
  aBlock[4] = self;
  v38 = iDCopy;
  v22 = messagesCopy;
  v39 = v22;
  v40 = v18;
  limitCopy2 = limit;
  v23 = v18;
  v24 = _Block_copy(aBlock);
  guid = [v22 guid];
  chatStyle = [v22 chatStyle];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1A83A8338;
  v34[3] = &unk_1E7814130;
  immediatelyCopy = immediately;
  v35 = v24;
  v27 = v24;
  [v21 loadUnreadHistoryForChatWithGUID:guid chatIdentifiers:v17 style:chatStyle services:v23 limit:limit fallbackMessageGUID:dCopy reply:v34];

LABEL_13:
}

- (void)_chat_loadAttachments:(id)attachments queryID:(id)d loadImmediately:(BOOL)immediately
{
  v37 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = attachmentsCopy;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@ queryID: %@", buf, 0x16u);
    }
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v12) == 0)
  {
    v13 = +[IMDaemonController sharedController];
    v14 = [v13 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v14) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v31 = 0;
  v32 = 0;
  sub_1A839DC70(self, attachmentsCopy, &v32, &v31);
  v15 = v32;
  v16 = v31;
  daemonController = [(IMChatRegistry *)self daemonController];
  v18 = daemonController;
  if (immediately)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v19 = ;

  guid = [attachmentsCopy guid];
  chatStyle = [attachmentsCopy chatStyle];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A83A8730;
  v26[3] = &unk_1E7814158;
  immediatelyCopy = immediately;
  v26[4] = self;
  v27 = dCopy;
  v28 = attachmentsCopy;
  v29 = v16;
  v22 = v16;
  [v19 loadAttachmentsForChatWithGUID:guid chatIdentifiers:v15 style:chatStyle services:v22 reply:v26];

LABEL_13:
}

- (void)_chat_loadUncachedAttachmentsCount:(id)count queryID:(id)d loadImmediately:(BOOL)immediately
{
  v37 = *MEMORY[0x1E69E9840];
  countCopy = count;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = countCopy;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@ queryID: %@", buf, 0x16u);
    }
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v12) == 0)
  {
    v13 = +[IMDaemonController sharedController];
    v14 = [v13 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v14) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = (*MEMORY[0x1E69A6258] & v24) == 0;

      if (v25)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v31 = 0;
  v32 = 0;
  sub_1A839DC70(self, countCopy, &v32, &v31);
  v15 = v32;
  v16 = v31;
  daemonController = [(IMChatRegistry *)self daemonController];
  v18 = daemonController;
  if (immediately)
  {
    [daemonController synchronousRemoteDaemon];
  }

  else
  {
    [daemonController remoteDaemon];
  }
  v19 = ;

  guid = [countCopy guid];
  chatStyle = [countCopy chatStyle];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A83A8BB8;
  v26[3] = &unk_1E78140B8;
  immediatelyCopy = immediately;
  v26[4] = self;
  v27 = dCopy;
  v28 = countCopy;
  v29 = v16;
  v22 = v16;
  [v19 loadUncachedAttachmentCountForChatWithGUID:guid chatIdentifiers:v15 style:chatStyle services:v22 reply:v26];

LABEL_13:
}

- (void)_chat_downloadPurgedAttachmentsForChat:(id)chat
{
  v23 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v5 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = chatCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Download purged attachments for chat %@", buf, 0xCu);
  }

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v7) == 0)
  {
    v8 = +[IMDaemonController sharedController];
    v9 = [v8 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v9) == 0)
    {
      v16 = +[IMDaemonController sharedController];
      v17 = [v16 capabilitiesForListenerID:0];
      v18 = *MEMORY[0x1E69A6258] & v17;

      if (!v18)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v19 = 0;
  v20 = 0;
  sub_1A839DC70(self, chatCopy, &v20, &v19);
  v10 = v20;
  v11 = v19;
  v12 = +[IMDaemonController sharedController];
  remoteDaemon = [v12 remoteDaemon];
  chatStyle = [chatCopy chatStyle];
  guid = [chatCopy guid];
  [remoteDaemon downloadPurgedAttachmentsForIDs:v10 style:chatStyle onServices:v11 chatID:guid];

LABEL_8:
}

- (void)_chat_isDownloadingPurgedAssetsForChat:(id)chat queryID:(id)d loadImmediately:(BOOL)immediately
{
  v35 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  v10 = IMChatRegistryLogHandle(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = chatCopy;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Getting isDownloadingPurgedAssets for chat %@", buf, 0xCu);
  }

  v11 = +[IMDaemonController sharedController];
  v12 = [v11 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v12) == 0)
  {
    v13 = +[IMDaemonController sharedController];
    v14 = [v13 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v14) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = *MEMORY[0x1E69A6258] & v24;

      if (!v25)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v31 = 0;
  v32 = 0;
  sub_1A839DC70(self, chatCopy, &v32, &v31);
  v15 = v32;
  v16 = v31;
  daemonController = [(IMChatRegistry *)self daemonController];
  v18 = daemonController;
  if (immediately)
  {
    [daemonController synchronousReplyingRemoteDaemon];
  }

  else
  {
    [daemonController replyingRemoteDaemon];
  }
  v19 = ;

  guid = [chatCopy guid];
  chatStyle = [chatCopy chatStyle];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A83A9240;
  v26[3] = &unk_1E78141D0;
  immediatelyCopy = immediately;
  v26[4] = self;
  v27 = dCopy;
  v28 = chatCopy;
  v29 = v16;
  v22 = v16;
  [v19 loadIsDownloadingPurgedAttachmentsForChatWithGUID:guid chatIdentifiers:v15 style:chatStyle services:v22 reply:v26];

LABEL_11:
}

- (void)_chat_closeSession:(id)session didDeleteConversation:(BOOL)conversation
{
  conversationCopy = conversation;
  v24 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = IMChatRegistryLogHandle(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = sessionCopy;
    _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Close session for business chat: %@", buf, 0xCu);
  }

  chatStyle = [sessionCopy chatStyle];
  account = [sessionCopy account];
  v9 = IMCopyGUIDForChatOnAccount(sessionCopy, account);

  IMComponentsFromChatGUID();
  v10 = 0;
  if (v10)
  {
    account2 = [sessionCopy account];

    if (account2)
    {
      v13 = IMChatRegistryLogHandle(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [sessionCopy account];
        *buf = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = account3;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Closing chat session with business with chatIdentifier: %@ on account: %@", buf, 0x16u);
      }

      v15 = +[IMDaemonController sharedController];
      remoteDaemon = [v15 remoteDaemon];
      account4 = [sessionCopy account];
      uniqueID = [account4 uniqueID];
      [remoteDaemon closeSessionChatID:v9 identifier:v10 didDeleteConversation:conversationCopy style:chatStyle account:uniqueID];
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = sessionCopy;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "ChatRegistry - Cannot close session. Did not find account for chat: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_chat_markRepliedForMessageGUID:(id)d
{
  dCopy = d;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon markRepliedForMessageGUID:dCopy];
}

- (id)_unreadCountGUIDsForChat:(id)chat
{
  chatCopy = chat;
  v13 = 0;
  v14 = 0;
  sub_1A839DC70(self, chatCopy, &v14, &v13);
  v5 = v14;
  v6 = v13;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count])
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndex:v8];
      v10 = [v6 objectAtIndex:v8];
      [chatCopy chatStyle];
      v11 = IMCopyAnyServiceGUIDForChat();
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [v5 count]);
  }

  return v7;
}

- (int64_t)_chat_cachedUnreadCount:(id)count
{
  countCopy = count;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    unreadCountController = [(IMChatRegistry *)self unreadCountController];
    v8 = [(IMChatRegistry *)self _unreadCountGUIDsForChat:countCopy];
    v9 = [unreadCountController unreadCountForChatsWithGUIDs:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_chat_clearCachedUnreadCount:(id)count
{
  countCopy = count;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    unreadCountController = [(IMChatRegistry *)self unreadCountController];
    v7 = [(IMChatRegistry *)self _unreadCountGUIDsForChat:countCopy];
    [unreadCountController clearUnreadCountForChatsWithGUIDs:v7];
  }
}

- (void)_chat:(id)_chat appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index
{
  itemCopy = item;
  translationCopy = translation;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v13 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  v14 = 0;
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];

  v18 = +[IMDaemonController sharedController];
  remoteDaemon = [v18 remoteDaemon];
  [remoteDaemon appendTranslation:translationCopy toMessageItem:itemCopy partIndex:index toChatIdentifier:v14 style:chatStyle account:uniqueID];
}

- (void)_chat:(id)_chat downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally
{
  locallyCopy = locally;
  codesCopy = codes;
  _chatCopy = _chat;
  account = [_chatCopy account];
  v11 = IMCopyGUIDForChatOnAccount(_chatCopy, account);

  IMComponentsFromChatGUID();
  v12 = 0;
  chatStyle = [_chatCopy chatStyle];
  account2 = [_chatCopy account];

  uniqueID = [account2 uniqueID];

  v16 = +[IMDaemonController sharedController];
  remoteDaemon = [v16 remoteDaemon];
  [remoteDaemon downloadTranslationAssetsForLanguageCodes:codesCopy messageItemsToTranslateLocally:locallyCopy chatIdentifier:v12 style:chatStyle account:uniqueID];
}

- (id)_lastMessageItemForChatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C08]];
  v6 = v5;
  if (!v5)
  {
    IMMessageFromIMMessageItemDictionary = 0;
    goto LABEL_18;
  }

  v7 = v5;
  v8 = dictionaryCopy;
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69A6BC0]];
  integerValue = [v9 integerValue];

  if (integerValue >= 1)
  {
    v11 = +[IMChatRegistry sharedRegistry];
    if ([v11 currentMessageFilterMode] <= 0)
    {
    }

    else
    {
      v12 = MEMORY[0x1E69A8210];
      v13 = +[IMChatRegistry sharedRegistry];
      v14 = [v12 isFilterMode:integerValue subsetOf:{objc_msgSend(v13, "currentMessageFilterMode")}];

      if (!v14)
      {
        goto LABEL_15;
      }
    }
  }

  if (![v7 count])
  {
LABEL_15:
    IMMessageFromIMMessageItemDictionary = 0;
    goto LABEL_16;
  }

  v16 = [v7 objectForKey:@"accountID"];
  v17 = [v7 objectForKey:@"account"];
  v18 = [v7 objectForKey:@"serviceName"];
  if (v16)
  {
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = [v8 objectForKey:@"accountID"];
    if (v17)
    {
      goto LABEL_11;
    }
  }

  v17 = [v8 objectForKey:@"account"];
LABEL_11:
  selfCopy = self;
  if (v18 || ([v8 objectForKey:@"serviceName"], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = [IMServiceImpl serviceWithInternalName:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = +[IMAccountController sharedInstance];
  v21 = [v20 bestAccountForService:v19 login:v17 guid:v16];

  IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v7, v21, 1);
  self = selfCopy;
LABEL_16:

  if (IMMessageFromIMMessageItemDictionary)
  {
    [(IMChatRegistry *)self _checkIfItemIsCorrupt:IMMessageFromIMMessageItemDictionary];
  }

LABEL_18:

  return IMMessageFromIMMessageItemDictionary;
}

- (id)_processLoadedChatDictionaries:(id)dictionaries
{
  v114 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v4 = IMChatRegistryLogHandle(dictionariesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v63 = [dictionariesCopy count];
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Loaded %llu chats from daemon", buf, 0xCu);
  }

  v28 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = dictionariesCopy;
  v36 = [obj countByEnumeratingWithState:&v58 objects:v113 count:16];
  if (v36)
  {
    v35 = *v59;
    do
    {
      v5 = 0;
      do
      {
        if (*v59 != v35)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v51 = v5;
        v7 = *(*(&v58 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v57 = 0;
        v8 = [(IMChatRegistry *)self _lastMessageItemForChatDictionary:v7];
        v54 = v8;
        v9 = v8;
        if (v8)
        {
          v112 = v8;
          v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
          v10 = v50;
          v9 = v54;
        }

        else
        {
          v10 = 0;
        }

        v11 = v9 == 0;
        v56 = 0;
        v12 = sub_1A84E342C(self, v7, v10, 1, &v57, &v56);
        v55 = v56;
        if (!v11)
        {
        }

        if (v12)
        {
          [(IMChatRegistry *)self _registerChatDictionary:v7 forChat:v12 isIncoming:1 newGUID:v55 shouldPostNotification:1];
          [(IMChatRegistry *)self _updateInfo:v7 forGUID:v55 updatingUnreadCount:1];
          v13 = [v28 addObject:v12];
        }

        else
        {
          v13 = IMOSLoggingEnabled();
          if (v13)
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v7 objectForKeyedSubscript:@"guid"];
              *buf = 138412546;
              *v63 = v55;
              *&v63[8] = 2112;
              *&v63[10] = v15;
              _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Failed to reconstruct chat for chatGUID: %@ chatInfo[guid]: %@", buf, 0x16u);
            }
          }
        }

        v16 = IMChatRegistryLogHandle(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v57;
          chatIdentifier = [v12 chatIdentifier];
          guid = [v12 guid];
          persistentID = [v12 persistentID];
          account = [v12 account];
          uniqueID = [account uniqueID];
          chatStyle = [v12 chatStyle];
          joinState = [v12 joinState];
          participants = [v12 participants];
          participants2 = [v12 participants];
          v31 = [participants2 count];
          roomName = [v12 roomName];
          displayName = [v12 displayName];
          lastAddressedHandleID = [v12 lastAddressedHandleID];
          lastAddressedSIMID = [v12 lastAddressedSIMID];
          groupID = [v12 groupID];
          unreadMessageCount = [v12 unreadMessageCount];
          messageFailureCount = [v12 messageFailureCount];
          isFiltered = [v12 isFiltered];
          mergedThreadFilterModes = [v12 mergedThreadFilterModes];
          hasHadSuccessfulQuery = [v12 hasHadSuccessfulQuery];
          bizIntent = [v12 bizIntent];
          personCentricID = [v12 personCentricID];
          isRecovered = [v12 isRecovered];
          isDeletingIncomingMessages = [v12 isDeletingIncomingMessages];
          isPendingReview = [v12 isPendingReview];
          mergedPinningIdentifiers = [v12 mergedPinningIdentifiers];
          *buf = 67115778;
          *v63 = v34;
          *&v63[4] = 2112;
          *&v63[6] = v55;
          *&v63[14] = 2048;
          *&v63[16] = v12;
          v64 = 2112;
          v65 = chatIdentifier;
          v66 = 2112;
          v67 = guid;
          v68 = 2112;
          v69 = persistentID;
          v70 = 2112;
          v71 = uniqueID;
          v72 = 1024;
          v73 = chatStyle;
          v74 = 1024;
          v75 = joinState;
          v76 = 1024;
          v77 = participants != 0;
          v78 = 2048;
          v79 = v31;
          v80 = 2112;
          v81 = roomName;
          v82 = 2112;
          v83 = displayName;
          v84 = 2112;
          v85 = lastAddressedHandleID;
          v86 = 2112;
          v87 = lastAddressedSIMID;
          v88 = 2112;
          v89 = groupID;
          v90 = 1024;
          v91 = unreadMessageCount;
          v92 = 1024;
          v93 = messageFailureCount;
          v94 = 1024;
          v95 = isFiltered;
          v96 = 2112;
          v97 = mergedThreadFilterModes;
          v98 = 1024;
          v99 = hasHadSuccessfulQuery;
          v100 = 2112;
          v101 = bizIntent;
          v102 = 2112;
          v103 = personCentricID;
          v104 = 1024;
          v105 = isRecovered;
          v106 = 1024;
          v107 = isDeletingIncomingMessages;
          v108 = 1024;
          v109 = isPendingReview;
          v110 = 2112;
          v111 = mergedPinningIdentifiers;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "Loaded chat was created: %{BOOL}d guid: %@ chat: <IMChat %p> [Identifier: %@  GUID: %@  Persistent ID: %@  Account: %@  Style: %c  State: %d  hasParticipants: %{BOOL}d  Participants: %lu  Room Name: %@  Display Name: %@  Last Addressed Handle: %@ Last Addressed SIMID: %@  Group ID: %@  Unread Count: %u  Failure Count: %u  isFiltered: %d  filterModes: %@  hasHadSuccessfulQuery: %{BOOL}d  bizIntent: %@  personCentricID: %@  isRecovered: %{BOOL}d  isDeletingIncomingMessages: %{BOOL}d  isPendingReview: %{BOOL}d  mergedPinningIdentifiers: %@]", buf, 0xE4u);
        }

        objc_autoreleasePoolPop(context);
        v5 = v51 + 1;
      }

      while (v36 != v51 + 1);
      v36 = [obj countByEnumeratingWithState:&v58 objects:v113 count:16];
    }

    while (v36);
  }

  array = [v28 array];

  return array;
}

- (void)loadedChats:(id)chats queryID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [(IMChatRegistry *)self _processLoadedChatDictionaries:chats];
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v10 = @"chats";
  v11[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [daemonQueryController completeQuery:dCopy userInfo:v9];
}

- (void)markedAsReadForMessageGUID:(id)d success:(BOOL)success queryID:(id)iD
{
  successCopy = success;
  v14[2] = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  dCopy = d;
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v13[0] = @"messageGUID";
  v13[1] = @"success";
  v14[0] = dCopy;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [daemonQueryController completeQuery:iDCopy userInfo:v12];
}

- (void)forcedReloadingChatRegistryWithQueryID:(id)d
{
  dCopy = d;
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  [daemonQueryController completeQuery:dCopy userInfo:0];
}

- (void)_account:(id)_account chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated suppressNotification:(BOOL)notification
{
  notificationCopy = notification;
  styleCopy = style;
  v49 = *MEMORY[0x1E69E9840];
  _accountCopy = _account;
  chatCopy = chat;
  updatedCopy = updated;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v42 = _accountCopy;
      v43 = 2112;
      v44 = chatCopy;
      v45 = 1024;
      v46 = styleCopy;
      v47 = 2112;
      v48 = updatedCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEBUG, "account: %@  chat: %@   style: %d  messages: %@", buf, 0x26u);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = updatedCopy;
  v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v30 = _IMBestAccountForIMItem(v13, 0, _accountCopy, 0, 0);
        IMMessageFromIMItem = _CreateIMMessageFromIMItem(v13, v30, 1);
        _IMCheckMessageForDDResults(IMMessageFromIMItem);
        v15 = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:_accountCopy];
        if (v15)
        {
          v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v15, 0}];
        }

        else
        {
          v16 = [(IMChatRegistry *)self _cachedChatsWithMessage:IMMessageFromIMItem];
        }

        v17 = v16;
        if ([v16 count])
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v19)
          {
            v20 = *v32;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                [*(*(&v31 + 1) + 8 * j) _handleIncomingItem:v13 updateRecipient:1 suppressNotification:notificationCopy];
              }

              v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v19);
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = chatCopy;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "No chat found for chat ID: %@", buf, 0xCu);
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }
}

- (void)service:(id)service chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated
{
  styleCopy = style;
  v46 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  chatCopy = chat;
  updatedCopy = updated;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v39 = serviceCopy;
      v40 = 2112;
      v41 = chatCopy;
      v42 = 1024;
      v43 = styleCopy;
      v44 = 2048;
      v45 = [updatedCopy count];
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "service: %@ chat: %@ style: %d messages: %lu", buf, 0x26u);
    }
  }

  v23 = serviceCopy;
  firstObject = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy service:serviceCopy];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = IMCreateItemsFromSerializedArray();
  v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (firstObject)
        {
          v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{firstObject, 0}];
        }

        else
        {
          guid = [*(*(&v32 + 1) + 8 * i) guid];
          v16 = [(IMChatRegistry *)self _cachedChatsWithMessageGUID:guid];

          firstObject = [v16 firstObject];
        }

        [v15 _refreshContextWithAccountHandles];
        if ([v16 count])
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v18 = v16;
          v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v19)
          {
            v20 = *v29;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                [*(*(&v28 + 1) + 8 * j) _handleIncomingItem:v15];
              }

              v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v19);
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = chatCopy;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "No chat found for chat ID: %@", buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messageUpdated:(id)updated
{
  styleCopy = style;
  chatCopy = chat;
  accountCopy = account;
  v11 = IMSingleObjectArray();
  [(IMChatRegistry *)self _account:accountCopy chat:chatCopy style:styleCopy messagesUpdated:v11];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messageUpdated:(id)updated suppressNotification:(BOOL)notification
{
  notificationCopy = notification;
  styleCopy = style;
  chatCopy = chat;
  accountCopy = account;
  v13 = IMSingleObjectArray();
  [(IMChatRegistry *)self _account:accountCopy chat:chatCopy style:styleCopy messagesUpdated:v13 suppressNotification:notificationCopy];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated
{
  styleCopy = style;
  chatCopy = chat;
  accountCopy = account;
  v11 = IMCreateItemsFromSerializedArray();
  [(IMChatRegistry *)self _account:accountCopy chat:chatCopy style:styleCopy messagesUpdated:v11];
}

- (BOOL)_shouldUpdateChatPropertyByRecencyOnChat:(id)chat incomingDictionary:(id)dictionary
{
  v5 = *MEMORY[0x1E69A6C38];
  chatCopy = chat;
  v7 = [dictionary objectForKeyedSubscript:v5];
  [v7 doubleValue];
  v9 = v8;
  lastMessage = [chatCopy lastMessage];

  time = [lastMessage time];
  [time timeIntervalSince1970];
  v13 = v9 > v12;

  return v13;
}

- (id)_winningChatIdentifierForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  chatCopy = chat;
  dictionaryCopy = dictionary;
  chatStyle = [chatCopy chatStyle];
  chatIdentifier = [chatCopy chatIdentifier];
  if (chatStyle == 43)
  {
    v10 = *MEMORY[0x1E69A6B18];
    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B18]];
    v12 = [chatIdentifier isEqualToString:v11];

    if (v12 || ![(IMChatRegistry *)self _shouldUpdateChatPropertyByRecencyOnChat:chatCopy incomingDictionary:dictionaryCopy])
    {
      chatIdentifier2 = [chatCopy chatIdentifier];
    }

    else
    {
      chatIdentifier2 = [dictionaryCopy objectForKeyedSubscript:v10];
    }

    chatIdentifier = chatIdentifier2;
  }

  return chatIdentifier;
}

- (id)_winningParticipantsForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  chatCopy = chat;
  dictionaryCopy = dictionary;
  if ([chatCopy chatStyle] == 43 && -[IMChatRegistry _shouldUpdateChatPropertyByRecencyOnChat:incomingDictionary:](self, "_shouldUpdateChatPropertyByRecencyOnChat:incomingDictionary:", chatCopy, dictionaryCopy))
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C58]];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A83B4F34;
    v13[3] = &unk_1E78144E8;
    v14 = chatCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A83B4FC4;
    v11[3] = &unk_1E7814510;
    v12 = v14;
    participants = [v8 __imArrayByApplyingBlock:v13 filter:v11];
  }

  else
  {
    participants = [chatCopy participants];
  }

  return participants;
}

- (id)_winningGroupIDForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  chatCopy = chat;
  dictionaryCopy = dictionary;
  chatStyle = [chatCopy chatStyle];
  groupID = [chatCopy groupID];
  if (chatStyle == 43)
  {
    v10 = *MEMORY[0x1E69A6B78];
    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B78]];
    v12 = [groupID isEqualToString:v11];

    if (v12 || ![(IMChatRegistry *)self _shouldUpdateChatPropertyByRecencyOnChat:chatCopy incomingDictionary:dictionaryCopy])
    {
      groupID2 = [chatCopy groupID];
    }

    else
    {
      groupID2 = [dictionaryCopy objectForKeyedSubscript:v10];
    }

    groupID = groupID2;
  }

  return groupID;
}

- (BOOL)_shouldSwitchAccountAddingMessagesToChat:(id)chat messageItems:(id)items removedGUIDs:(id)ds messagesComingFromStorage:(BOOL)storage chatProperties:(id)properties
{
  storageCopy = storage;
  v67 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  itemsCopy = items;
  dsCopy = ds;
  propertiesCopy = properties;
  v49 = dsCopy;
  if (storageCopy)
  {
    selfCopy = self;
    _items = [chatCopy _items];
    _items2 = [chatCopy _items];
    v16 = [_items2 mutableCopy];

    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    _items3 = [chatCopy _items];
    v19 = [_items3 arrayByApplyingSelector:sel_guid];
    v20 = [v17 initWithArray:v19];

    v21 = objc_alloc(MEMORY[0x1E695DFA8]);
    v22 = [itemsCopy arrayByApplyingSelector:sel_guid];
    v23 = [v21 initWithArray:v22];

    v46 = v23;
    [v20 minusSet:v23];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v24 = _items;
    v25 = [v24 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v25)
    {
      v26 = *v61;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v60 + 1) + 8 * i);
          guid = [v28 guid];
          v30 = [v20 containsObject:guid];

          if ((v30 & 1) == 0)
          {
            [v16 removeObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v25);
    }

    v31 = [v16 arrayByAddingObjectsFromArray:itemsCopy];
    v32 = [v31 sortedArrayUsingFunction:sub_1A83B5638 context:0];

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "We received messages from storage so we are appending current items with items from storage", buf, 2u);
      }
    }

    [chatCopy beginHoldingChatItemsUpdatesForReason:@"IMItemsChanged"];
    if ([v49 count])
    {
      [chatCopy _removeItemsForGuids:v49];
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v35)
    {
      v36 = *v56;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v56 != v36)
          {
            objc_enumerationMutation(v34);
          }

          [chatCopy _handleIncomingItem:*(*(&v55 + 1) + 8 * j) updateRecipient:1 suppressNotification:0 updateReplyCounts:1 messageComingFromStorage:1];
        }

        v35 = [v34 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v35);
    }

    [chatCopy endHoldingChatItemsUpdatesForReason:@"IMItemsChanged"];
    guid2 = [chatCopy guid];
    [(IMChatRegistry *)selfCopy _updateInfo:propertiesCopy forGUID:guid2 updatingUnreadCount:1];

    v39 = 1;
  }

  else
  {
    [chatCopy beginHoldingChatItemsUpdatesForReason:@"IMItemsChanged"];
    if ([dsCopy count])
    {
      [chatCopy _removeItemsForGuids:dsCopy];
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = itemsCopy;
    v41 = [v40 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v41)
    {
      v42 = *v52;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = [chatCopy _handleIncomingItem:*(*(&v51 + 1) + 8 * k) updateRecipient:1 suppressNotification:0 updateReplyCounts:1 messageComingFromStorage:0];
        }

        v39 = v44;
        v41 = [v40 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v41);
    }

    else
    {
      v39 = 1;
    }

    [chatCopy endHoldingChatItemsUpdatesForReason:@"IMItemsChanged"];
  }

  return v39;
}

- (void)_processMessageForAccount:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD message:(id)message
{
  styleCopy = style;
  v16 = MEMORY[0x1E695DEC8];
  messageCopy = message;
  iDCopy = iD;
  dCopy = d;
  propertiesCopy = properties;
  chatCopy = chat;
  accountCopy = account;
  v23 = [v16 arrayWithObjects:&message count:1];

  LOBYTE(v24) = 0;
  [(IMChatRegistry *)self _processMessagesForAccount:accountCopy chat:chatCopy style:styleCopy chatProperties:propertiesCopy groupID:dCopy chatPersonCentricID:iDCopy messages:v23 removed:0 messagesComingFromStorage:v24];
}

- (void)_processMessagesForAccount:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messages:(id)messages removed:(id)self0 messagesComingFromStorage:(BOOL)self1
{
  styleCopy = style;
  v103 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  dCopy = d;
  iDCopy = iD;
  messagesCopy = messages;
  removedCopy = removed;
  v71 = styleCopy;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [messagesCopy arrayByApplyingSelector:sel_guid];
      *buf = 138413314;
      v94 = accountCopy;
      v95 = 2112;
      v96 = chatCopy;
      v97 = 1024;
      v98 = styleCopy;
      v99 = 2112;
      v100 = v17;
      v101 = 2112;
      v102 = propertiesCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Process messages for account: %@  chat: %@   style: %d  messages: %@  properties: %@", buf, 0x30u);
    }

    styleCopy = styleCopy;
  }

  v18 = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:accountCopy];
  v79 = v18;
  if (v18)
  {
    if (propertiesCopy)
    {
      if ([v18 isFiltered] <= 1)
      {
        guid = [v79 guid];
        v20 = [propertiesCopy objectForKey:@"guid"];
        v21 = [guid isEqualToString:v20];

        if ((v21 & 1) == 0)
        {
          v22 = [propertiesCopy objectForKey:@"isFiltered"];
          intValue = [v22 intValue];

          if ([v79 isFiltered] != intValue)
          {
            [(IMChatRegistry *)self _updateChat:v79 updateIsFiltered:?];
          }
        }
      }
    }
  }

  else
  {
    v79 = [(IMChatRegistry *)self existingChatWithPersonID:iDCopy];
    v24 = [propertiesCopy objectForKey:@"guid"];
    [(IMChatRegistry *)self _registerChatDictionary:propertiesCopy forChat:v79 isIncoming:0 newGUID:v24];
    [(IMChatRegistry *)self _updateInfo:propertiesCopy forGUID:v24 updatingUnreadCount:1];
    lastObject = [messagesCopy lastObject];
    if (v79 && [v79 chatStyle] == 45 && (objc_msgSend(lastObject, "isFromMe") & 1) == 0)
    {
      v26 = +[IMAccountController sharedInstance];
      v27 = [v26 accountForUniqueID:accountCopy];

      if (!v27)
      {
        v28 = +[IMAccountController sharedInstance];
        service = [lastObject service];
        v30 = [IMServiceImpl serviceWithInternalName:service];
        v27 = [v28 bestAccountForService:v30];
      }

      handle = [lastObject handle];
      v32 = [v27 imHandleWithID:handle];

      if (v32)
      {
        [v79 setRecipient:v32];
      }
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (!isMergeFilteredThreadsEnabled || ![v79 supportsMergingFilteredThreads] || (objc_msgSend(propertiesCopy, "objectForKey:", @"isFiltered"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "intValue"), v35, objc_msgSend(MEMORY[0x1E69A8210], "isFilterMode:subsetOf:", v36, -[IMChatRegistry currentMessageFilterMode](self, "currentMessageFilterMode"))))
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = messagesCopy;
    v37 = 0;
    v38 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v38)
    {
      v39 = *v88;
      do
      {
        v40 = 0;
        v41 = v37;
        do
        {
          if (*v88 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v87 + 1) + 8 * v40);
          v37 = _IMBestAccountForIMItem(v42, 0, accountCopy, 0, 0);

          IMMessageFromIMItem = _CreateIMMessageFromIMItem(v42, v37, 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            associatedMessageGUID = [IMMessageFromIMItem associatedMessageGUID];
            v45 = IMAssociatedMessageDecodeGUID();

            v46 = [v79 messageItemForGUID:v45];
            errorCode = [v42 errorCode];
            if (errorCode != [v46 errorCode])
            {
              [v46 setErrorCode:{objc_msgSend(v42, "errorCode")}];
            }
          }

          _IMCheckMessageForDDResults(IMMessageFromIMItem);

          ++v40;
          v41 = v37;
        }

        while (v38 != v40);
        v38 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
      }

      while (v38);
    }

    if (v79)
    {
      if ([v79 chatStyle] == 43)
      {
        v48 = [(IMChatRegistry *)self _winningChatIdentifierForExistingChat:v79 incomingDictionary:propertiesCopy];
        v49 = [(IMChatRegistry *)self _winningGroupIDForExistingChat:v79 incomingDictionary:propertiesCopy];
        v50 = [(IMChatRegistry *)self _winningParticipantsForExistingChat:v79 incomingDictionary:propertiesCopy];
      }

      else
      {
        v49 = 0;
        v48 = 0;
        v50 = 0;
      }

      v53 = [(IMChatRegistry *)self _shouldSwitchAccountAddingMessagesToChat:v79 messageItems:obj removedGUIDs:removedCopy messagesComingFromStorage:storage chatProperties:propertiesCopy];
      goto LABEL_45;
    }

    switch(v71)
    {
      case '#':
        v79 = [(IMChatRegistry *)self existingChatForRoom:chatCopy onAccount:v37];
        break;
      case '+':
        v79 = [(IMChatRegistry *)self existingChatWithChatIdentifier:chatCopy];
        break;
      case '-':
        v51 = [v37 imHandleWithID:chatCopy];
        v52 = [(IMChatRegistry *)self existingChatWithHandle:v51];
        v79 = v52;
        if (v52)
        {
          if ([v52 chatStyle] == 43)
          {
            v48 = [(IMChatRegistry *)self _winningChatIdentifierForExistingChat:v79 incomingDictionary:propertiesCopy];
            v49 = [(IMChatRegistry *)self _winningGroupIDForExistingChat:v79 incomingDictionary:propertiesCopy];
            v50 = [(IMChatRegistry *)self _winningParticipantsForExistingChat:v79 incomingDictionary:propertiesCopy];
          }

          else
          {
            v49 = 0;
            v48 = 0;
            v50 = 0;
          }

          v53 = [(IMChatRegistry *)self _shouldSwitchAccountAddingMessagesToChat:v79 messageItems:obj removedGUIDs:removedCopy messagesComingFromStorage:storage chatProperties:propertiesCopy];
        }

        else
        {
          lastObject2 = [obj lastObject];
          isTypingMessage = [lastObject2 isTypingMessage];

          if (isTypingMessage)
          {
            v49 = 0;
            v48 = 0;
            v50 = 0;
            v79 = 0;
          }

          else
          {
            buf[0] = 0;
            v86 = 0;
            v79 = sub_1A84E342C(self, propertiesCopy, obj, 1, buf, &v86);
            v63 = v86;
            if (buf[0] == 1)
            {
              [v79 _setupObservation];
            }

            lastObject3 = [obj lastObject];
            -[IMChatRegistry _registerChat:isIncoming:guid:](self, "_registerChat:isIncoming:guid:", v79, [lastObject3 isFromMe] ^ 1, v63);

            [(IMChatRegistry *)self _updateUnreadCountForChat:v79];
            [v79 join];
            v49 = 0;
            v48 = 0;
            v50 = 0;
          }

          v53 = 1;
        }

LABEL_45:
        if (v48)
        {
          [(IMChatRegistry *)self _updateChat:v79 chatIdentifierForGroups:v48 shouldPostNotification:0];
        }

        if (v49)
        {
          [(IMChatRegistry *)self _updateChat:v79 groupID:v49 shouldPostNotification:0];
        }

        if (v50)
        {
          [v79 _resetParticipants:v50];
          if (!v53)
          {
            goto LABEL_85;
          }
        }

        else if (!v53)
        {
          goto LABEL_85;
        }

LABEL_84:
        lastObject4 = [obj lastObject];
        _senderHandle = [lastObject4 _senderHandle];
        account = [_senderHandle account];
        [v79 _setAccount:account];

LABEL_85:
        if ([v79 serviceSwitchRequested])
        {
          [v79 refreshServiceForSending];
          [v79 setServiceSwitchRequested:0];
        }

        goto LABEL_88;
      default:
        goto LABEL_60;
    }

    if (v79)
    {
      if ([v79 chatStyle] == 43)
      {
        v48 = [(IMChatRegistry *)self _winningChatIdentifierForExistingChat:v79 incomingDictionary:propertiesCopy];
        v49 = [(IMChatRegistry *)self _winningGroupIDForExistingChat:v79 incomingDictionary:propertiesCopy];
        v50 = [(IMChatRegistry *)self _winningParticipantsForExistingChat:v79 incomingDictionary:propertiesCopy];
      }

      else
      {
        v49 = 0;
        v48 = 0;
        v50 = 0;
      }

      [(IMChatRegistry *)self _shouldSwitchAccountAddingMessagesToChat:v79 messageItems:obj removedGUIDs:removedCopy messagesComingFromStorage:storage chatProperties:propertiesCopy];
      v53 = 1;
      goto LABEL_45;
    }

    lastObject5 = [obj lastObject];
    isEmpty = [lastObject5 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      if ([propertiesCopy count])
      {
        buf[0] = 0;
        v85 = 0;
        v79 = sub_1A84E342C(self, propertiesCopy, 0, 1, buf, &v85);
        v58 = v85;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v59 = obj;
        v60 = [v59 countByEnumeratingWithState:&v81 objects:v91 count:16];
        if (v60)
        {
          v61 = *v82;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v82 != v61)
              {
                objc_enumerationMutation(v59);
              }

              [v79 _handleIncomingItem:*(*(&v81 + 1) + 8 * i)];
            }

            v60 = [v59 countByEnumeratingWithState:&v81 objects:v91 count:16];
          }

          while (v60);
        }

        if (buf[0] == 1)
        {
          [v79 _setupObservation];
        }
      }

      else
      {
        BYTE2(v69) = 0;
        LOWORD(v69) = 0;
        v79 = [[IMChat alloc] _initWithGUID:0 account:v37 style:v71 roomName:chatCopy displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:obj participants:0 isFiltered:1 hasHadSuccessfulQuery:v69 isRecovered:dCopy isDeletingIncomingMessages:?];
        [v79 _setupObservation];
        v58 = 0;
      }

      lastObject6 = [obj lastObject];
      -[IMChatRegistry _registerChat:isIncoming:guid:](self, "_registerChat:isIncoming:guid:", v79, [lastObject6 isFromMe] ^ 1, v58);

      [(IMChatRegistry *)self _updateUnreadCountForChat:v79];
      v49 = 0;
      v48 = 0;
      v50 = 0;
      goto LABEL_84;
    }

LABEL_60:
    v49 = 0;
    v48 = 0;
    v50 = 0;
    v79 = 0;
    goto LABEL_84;
  }

LABEL_88:
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageSent:(id)sent
{
  styleCopy = style;
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  dCopy = d;
  iDCopy = iD;
  sentCopy = sent;
  kdebug_trace();
  if ([sentCopy isFinished])
  {
    fileTransferGUIDs = [sentCopy fileTransferGUIDs];
    if ([fileTransferGUIDs count])
    {
      service = [sentCopy service];
      v22 = [service isEqualToString:*MEMORY[0x1E69A7AF0]];

      if (!v22)
      {
        goto LABEL_6;
      }

      fileTransferGUIDs = [sentCopy guid];
      _signpostSendFileMessage();
    }
  }

LABEL_6:
  [(IMChatRegistry *)self _processMessageForAccount:accountCopy chat:chatCopy style:styleCopy chatProperties:propertiesCopy groupID:dCopy chatPersonCentricID:iDCopy message:sentCopy];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style notifySentMessage:(id)message sendTime:(id)time isReplicating:(BOOL)replicating
{
  replicatingCopy = replicating;
  accountCopy = account;
  chatCopy = chat;
  messageCopy = message;
  timeCopy = time;
  if ([(IMChatRegistry *)self _postMessageSentNotifications])
  {
    v17 = _IMBestAccountForIMItem(messageCopy, 0, accountCopy, 0, 0);
    IMMessageFromIMItem = _CreateIMMessageFromIMItem(messageCopy, v17, 1);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = v19;
    if (timeCopy)
    {
      CFDictionarySetValue(v19, @"__kIMChatRegistryMessageSendTimeKey", timeCopy);
    }

    if (IMMessageFromIMItem)
    {
      CFDictionarySetValue(v20, @"__kIMChatRegistryMessageSentMessageKey", IMMessageFromIMItem);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithBool:replicatingCopy];
    if (v21)
    {
      CFDictionarySetValue(v20, @"__kIMChatRegistryMessageSendIsReplicatingKey", v21);
    }

    serviceName = [v17 serviceName];
    if ([serviceName isEqualToString:*MEMORY[0x1E69A7AF8]])
    {
      fallbackHash = [messageCopy fallbackHash];
      v24 = [fallbackHash length];

      if (!v24)
      {
LABEL_12:
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryMessageSentNotification" object:0 userInfo:v20];

        goto LABEL_13;
      }

      serviceName = [messageCopy fallbackHash];
      [(__CFDictionary *)v20 setObject:serviceName forKeyedSubscript:@"__kIMChatRegistryMessageOriginalGUIDKey"];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_clearExistingTypingIndicatorsWithMessageGUID:(id)d excludingChatWithIdentifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  v8 = [(IMChatRegistry *)self _cachedChatsWithMessageGUID:dCopy];
  v9 = IMChatRegistryLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v32 = [v8 count];
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = identifierCopy;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Found %llu chats with message matching GUID: %@ (will exclude chat %@)", buf, 0x20u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    *&v12 = 138412802;
    v25 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        chatIdentifier = [v16 chatIdentifier];
        v18 = [chatIdentifier isEqualToString:identifierCopy];

        if ((v18 & 1) == 0)
        {
          v19 = [v16 _itemForGUID:dCopy];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((isKindOfClass & 1) != 0 && (isKindOfClass = [v19 isTypingMessage], isKindOfClass))
          {
            v21 = IMChatRegistryLogHandle(isKindOfClass);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              guid = [v16 guid];
              *buf = v25;
              v32 = dCopy;
              v33 = 2112;
              v34 = guid;
              v35 = 2112;
              v36 = v19;
              _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Removing typing indicator %@ from chat %@, existing item: %@", buf, 0x20u);
            }

            [v16 _removeItem:v19];
          }

          else
          {
            v23 = IMChatRegistryLogHandle(isKindOfClass);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              guid2 = [v16 guid];
              *buf = v25;
              v32 = dCopy;
              v33 = 2112;
              v34 = guid2;
              v35 = 2112;
              v36 = v19;
              _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Message %@ in chat %@ is not a typing indicator: %@", buf, 0x20u);
            }
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageReceived:(id)received
{
  styleCopy = style;
  receivedCopy = received;
  iDCopy = iD;
  dCopy = d;
  propertiesCopy = properties;
  chatCopy = chat;
  accountCopy = account;
  guid = [receivedCopy guid];
  [(IMChatRegistry *)self _clearExistingTypingIndicatorsWithMessageGUID:guid excludingChatWithIdentifier:chatCopy];

  [(IMChatRegistry *)self _processMessageForAccount:accountCopy chat:chatCopy style:styleCopy chatProperties:propertiesCopy groupID:dCopy chatPersonCentricID:iDCopy message:receivedCopy];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD initialEmergencyQuestionnaireReceived:(id)received
{
  styleCopy = style;
  v23 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v16 = IMChatRegistryLogHandle([(IMChatRegistry *)self account:account chat:chatCopy style:styleCopy chatProperties:properties groupID:d chatPersonCentricID:iD messageReceived:received]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = chatCopy;
    _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "initialEmergencyQuestionnaireReceived - Opening Messages to: %@", buf, 0xCu);
  }

  if (qword_1EB2EA4C0 != -1)
  {
    sub_1A84E3ADC();
  }

  chatCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"messages://open?groupid=%@", chatCopy];
  v18 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = chatCopy;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Launching to messages app. URL String is %@", buf, 0xCu);
  }

  defaultWorkspace = [qword_1EB2EA4B8 defaultWorkspace];
  v20 = [MEMORY[0x1E695DFF8] URLWithString:chatCopy];
  [defaultWorkspace openURL:v20 configuration:0 completionHandler:0];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messagesReceived:(id)received removed:(id)self0 messagesComingFromStorage:(BOOL)self1
{
  styleCopy = style;
  HIDWORD(v26) = storage;
  v35 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  dCopy = d;
  iDCopy = iD;
  receivedCopy = received;
  removedCopy = removed;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = [receivedCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      v24 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(receivedCopy);
        }

        guid = [*(*(&v30 + 1) + 8 * v24) guid];
        [(IMChatRegistry *)self _clearExistingTypingIndicatorsWithMessageGUID:guid excludingChatWithIdentifier:chatCopy];

        ++v24;
      }

      while (v22 != v24);
      v22 = [receivedCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  LOBYTE(v26) = BYTE4(v26);
  [(IMChatRegistry *)self _processMessagesForAccount:accountCopy chat:chatCopy style:styleCopy chatProperties:propertiesCopy groupID:dCopy chatPersonCentricID:iDCopy messages:receivedCopy removed:removedCopy messagesComingFromStorage:v26];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties invitationReceived:(id)received
{
  styleCopy = style;
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v26 = accountCopy;
      v27 = 2112;
      v28 = chatCopy;
      v29 = 1024;
      v30 = styleCopy;
      v31 = 2112;
      v32 = receivedCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "account: %@  chat: %@  style: %d  invitation: %@", buf, 0x26u);
    }
  }

  if ((styleCopy & 0xFFFFFFF7) == 0x23)
  {
    v17 = +[IMAccountController sharedInstance];
    v18 = [v17 accountForUniqueID:accountCopy];

    v19 = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:accountCopy];
    v20 = v19;
    if (v19)
    {
      groupID = [v19 groupID];
      [(IMChatRegistry *)self account:accountCopy chat:chatCopy style:styleCopy chatProperties:propertiesCopy groupID:groupID chatPersonCentricID:0 messageReceived:receivedCopy];
    }

    else
    {
      [receivedCopy _setInvitation:1];
      groupID = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{receivedCopy, 0}];
      if ([propertiesCopy count])
      {
        buf[0] = 0;
        v24 = 0;
        v20 = sub_1A84E342C(self, propertiesCopy, 0, 1, buf, &v24);
        v22 = v24;
        [v20 _handleIncomingItem:receivedCopy];
        if (buf[0] == 1)
        {
          [v20 _setupObservation];
        }
      }

      else
      {
        BYTE2(v23) = 0;
        LOWORD(v23) = 0;
        v20 = [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:0 style:v18 roomName:styleCopy displayName:chatCopy lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:groupID isFiltered:0 hasHadSuccessfulQuery:1 isRecovered:v23 isDeletingIncomingMessages:?];
        [v20 _setupObservation];
        v22 = 0;
      }

      -[IMChatRegistry _registerChat:isIncoming:guid:](self, "_registerChat:isIncoming:guid:", v20, [receivedCopy isFromMe] ^ 1, v22);
      [(IMChatRegistry *)self _updateUnreadCountForChat:v20];
    }
  }

  else
  {
    [(IMChatRegistry *)self account:accountCopy chat:chatCopy style:styleCopy chatProperties:propertiesCopy groupID:0 chatPersonCentricID:0 messageReceived:receivedCopy];
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties updateProperties:(id)updateProperties
{
  styleCopy = style;
  v39 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  updatePropertiesCopy = updateProperties;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v32 = accountCopy;
      v33 = 2112;
      v34 = chatCopy;
      v35 = 1024;
      v36 = styleCopy;
      v37 = 2112;
      v38 = updatePropertiesCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "account: %@  chat: %@  style: %d  properties: %@", buf, 0x26u);
    }
  }

  propertiesCopy = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:accountCopy, propertiesCopy];
  if (propertiesCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys = [updatePropertiesCopy allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(allKeys);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [updatePropertiesCopy objectForKey:v20];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = 0;
          }

          else
          {
            v22 = v21;
          }

          [propertiesCopy setValue:v22 forChatProperty:v20];
        }

        v17 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties error:(id)error
{
  styleCopy = style;
  v27 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138413058;
      v20 = accountCopy;
      v21 = 2112;
      v22 = chatCopy;
      v23 = 1024;
      v24 = styleCopy;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "account: %@  chat: %@  style: %d  error: %@", &v19, 0x26u);
    }
  }

  v17 = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:accountCopy];
  localizedDescription = [errorCopy localizedDescription];
  [v17 _showErrorMessage:localizedDescription];
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD statusChanged:(int)changed handleInfo:(id)self0
{
  styleCopy = style;
  v94 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  propertiesCopy = properties;
  iDCopy = iD;
  infoCopy = info;
  v66 = chatCopy;
  v17 = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:account];
  v18 = IMChatRegistryLogHandle(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    guid = [v17 guid];
    *buf = 134218498;
    v89 = v17;
    v90 = 2112;
    v91 = guid;
    v92 = 2112;
    v93 = iDCopy;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "chat (%p) properties updated for guid %@: personCentricID %@", buf, 0x20u);
  }

  if (v17)
  {
    goto LABEL_6;
  }

  v20 = [(IMChatRegistry *)self existingChatWithPersonID:iDCopy];
  if (v20)
  {
    v17 = v20;
    v21 = [propertiesCopy objectForKey:@"guid"];
    [(IMChatRegistry *)self _registerChatDictionary:propertiesCopy forChat:v17 isIncoming:0 newGUID:v21];
    [(IMChatRegistry *)self _updateInfo:propertiesCopy forGUID:v21 updatingUnreadCount:1];

LABEL_6:
    guid2 = [v17 guid];
    goto LABEL_7;
  }

  buf[0] = 0;
  v85 = 0;
  v17 = sub_1A84E342C(self, propertiesCopy, 0, (changed < 8) & (0xC6u >> changed), buf, &v85);
  guid2 = v85;
  if (buf[0] == 1)
  {
    [v17 _setupObservation];
    [(IMChatRegistry *)self _updatePersonCentricIDToChatMapForChat:v17 toNewPersonCentricID:iDCopy];
  }

  if (!v17)
  {
    v41 = 0;
    goto LABEL_52;
  }

LABEL_7:
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v22 addObject:v17];
  participants = [v17 participants];
  v24 = [(IMChatRegistry *)self _sortedParticipantIDHashForParticipants:participants];

  groupParticipantToChatsMap = [(IMChatRegistry *)self groupParticipantToChatsMap];
  v26 = [groupParticipantToChatsMap objectForKey:v24];
  allObjects = [v26 allObjects];

  if (allObjects)
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = sub_1A83B7EC8;
    v83[3] = &unk_1E7814538;
    v84 = v17;
    v28 = [allObjects __imArrayByFilteringWithBlock:v83];
    [v22 addObjectsFromArray:v28];
  }

  v29 = [v22 count];
  if (v29 >= 2)
  {
    v30 = IMChatRegistryLogHandle(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v22 count];
      *buf = 134218498;
      v89 = v31;
      v90 = 2112;
      v91 = v24;
      v92 = 2112;
      v93 = v22;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Found %ld chats using participantIDHash %@: %@", buf, 0x20u);
    }
  }

  v61 = allObjects;
  v62 = v24;
  selfCopy = self;
  v68 = v17;
  v63 = propertiesCopy;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v32 = v22;
  v33 = [v32 countByEnumeratingWithState:&v79 objects:v87 count:16];
  v67 = v32;
  if (v33)
  {
    v34 = v33;
    v35 = *v80;
    do
    {
      v36 = 0;
      do
      {
        if (*v80 != v35)
        {
          objc_enumerationMutation(v32);
        }

        if ((changed + 1) <= 8)
        {
          v37 = *(*(&v79 + 1) + 8 * v36);
          if (((1 << (changed + 1)) & 0x73) != 0)
          {
            v38 = 0;
          }

          else
          {
            if (changed == 2)
            {
              v39 = IMChatRegistryLogHandle(v33);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v89 = v66;
                _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_DEFAULT, "Joined chat: %@", buf, 0xCu);
              }

              v38 = 3;
            }

            else
            {
              if (changed != 7)
              {
                goto LABEL_31;
              }

              v39 = IMChatRegistryLogHandle(v33);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v89 = v66;
                _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_DEFAULT, "Read Only chat: %@", buf, 0xCu);
              }

              v38 = 4;
            }

            v32 = v67;
          }

          v33 = [v37 _setJoinState:{v38, v61, v62}];
        }

LABEL_31:
        ++v36;
      }

      while (v34 != v36);
      v33 = [v32 countByEnumeratingWithState:&v79 objects:v87 count:16];
      v34 = v33;
    }

    while (v33);
  }

  v41 = v68;
  if ((changed + 1) <= 8)
  {
    if (((1 << (changed + 1)) & 0x73) != 0)
    {
      v42 = IMChatRegistryLogHandle(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_DEFAULT, "We're not in the room, leaving as is", buf, 2u);
      }
    }

    else
    {
      [(IMChatRegistry *)selfCopy _registerChat:v68 isIncoming:0 guid:guid2];
    }
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = infoCopy;
  v43 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v76;
    v46 = *MEMORY[0x1E69A6310];
    v47 = *MEMORY[0x1E69A6390];
    v74 = *MEMORY[0x1E69A62E8];
    v73 = *MEMORY[0x1E69A61D0];
    do
    {
      v48 = 0;
      v70 = v44;
      do
      {
        if (*v76 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v75 + 1) + 8 * v48);
        v50 = [v49 objectForKey:{v46, v61}];
        v51 = [v49 objectForKey:v47];
        v52 = [v49 objectForKey:v74];
        v53 = [v49 objectForKey:v73];
        v54 = v53;
        if (v50)
        {
          v55 = v53 == 0;
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          account = [v41 account];
          [account imHandleWithID:v50 alreadyCanonical:1];
          v57 = v47;
          v58 = v46;
          v60 = v59 = v45;

          v41 = v68;
          [v60 _setOriginalID:v51 countryCode:v52 updateSiblings:1];
          [v60 setPersonCentricID:iDCopy];
          [v68 _setParticipantState:sub_1A8251EAC(objc_msgSend(v54 forHandle:"intValue")) postNotification:{v60, 0}];

          v45 = v59;
          v46 = v58;
          v47 = v57;
          v44 = v70;
        }

        ++v48;
      }

      while (v44 != v48);
      v44 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v44);
  }

  propertiesCopy = v63;
LABEL_52:
}

- (void)leftChat:(id)chat
{
  v10 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v5 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = chatCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Leaving chat with GUID: %@", &v8, 0xCu);
  }

  v6 = [(IMChatRegistry *)self existingChatWithGUID:chatCopy];
  v7 = IMChatRegistryLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Found chat: %@", &v8, 0xCu);
  }

  if (v6)
  {
    [v6 _setJoinState:0];
    [(IMChatRegistry *)self _unregisterChat:v6 deleted:0];
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties chatPersonCentricID:(id)d member:(id)member statusChanged:(int)changed
{
  styleCopy = style;
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  dCopy = d;
  memberCopy = member;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138413314;
      v25 = accountCopy;
      v26 = 2112;
      v27 = chatCopy;
      v28 = 1024;
      v29 = styleCopy;
      v30 = 2112;
      v31 = memberCopy;
      v32 = 1024;
      changedCopy = changed;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEBUG, "Chat status changed: account: %@  chat: %@  style: %d  member: %@  status: %d", &v24, 0x2Cu);
    }
  }

  v21 = [(IMChatRegistry *)self _existingChatWithIdentifier:chatCopy style:styleCopy account:accountCopy];
  if ([v21 canHaveMultipleParticipants])
  {
    account = [v21 account];
    v23 = [account imHandleWithInfo:memberCopy];

    [v21 _participant:v23 statusChanged:changed];
    [(IMChatRegistry *)self _updatePersonCentricIDToChatMapForChat:v21 toNewPersonCentricID:dCopy];
  }
}

- (void)account:(id)account handleID:(id)d updatedLastReceivedOnGridMessageDate:(id)date
{
  if (date)
  {
    v6 = MEMORY[0x1E69A80A8];
    dateCopy = date;
    dCopy = d;
    sharedInstance = [v6 sharedInstance];
    [sharedInstance overrideStatusForHandleWithID:dCopy publishedBeforeDate:dateCopy];
  }
}

- (void)chat:(id)chat propertiesUpdated:(id)updated
{
  v17 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle(updatedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = chatCopy;
    v15 = 2112;
    v16 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@  propertiesUpdated: %@", &v13, 0x16u);
  }

  v9 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  if (!v9)
  {
    v10 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3B04(chatCopy, updatedCopy, v10);
    }
  }

  chatIdentifier = [v9 chatIdentifier];
  [v9 chatStyle];
  v12 = IMCopyGUIDForChat();
  [v9 _setChatProperties:updatedCopy isCurrentGUID:{objc_msgSend(v12, "isEqualToString:", chatCopy)}];
}

- (void)chat:(id)chat brandLogoUpdated:(id)updated transferGuid:(id)guid
{
  v20 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  guidCopy = guid;
  v11 = IMChatRegistryLogHandle(guidCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = chatCopy;
    v16 = 2112;
    v17 = guidCopy;
    v18 = 2048;
    v19 = [updatedCopy length];
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "chat: %@  brandLogoUpdated: %@, %lu bytes", &v14, 0x20u);
  }

  v12 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  chatIdentifier = [v12 chatIdentifier];
  [(IMChatRegistry *)self updateBrandLogo:updatedCopy transferGuid:guidCopy chatIdentifier:chatIdentifier];
}

- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated sender:(id)sender
{
  v20 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  updatedCopy = updated;
  senderCopy = sender;
  v14 = IMChatRegistryLogHandle(senderCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = chatCopy;
    v18 = 2112;
    v19 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "chat: %@  displayName: %@", &v16, 0x16u);
  }

  v15 = [(IMChatRegistry *)self existingChatWithGUID:chatCopy];
  [v15 _updateDisplayName:updatedCopy sender:senderCopy];

  if ([v15 canHaveMultipleParticipants])
  {
    [(IMChatRegistry *)self _updatePersonCentricIDToChatMapForChat:v15 toNewPersonCentricID:dCopy];
  }
}

- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated
{
  v16 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle(updatedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = chatCopy;
    v14 = 2112;
    v15 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedHandleUpdated: %@", &v12, 0x16u);
  }

  v9 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v10 = v9;
  if (v9)
  {
    [v9 _updateLastAddressedHandleID:updatedCopy];
  }

  else
  {
    v11 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = chatCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed handle update", &v12, 0xCu);
    }
  }
}

- (void)chat:(id)chat lastAddressedSIMIDUpdated:(id)updated
{
  v16 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle(updatedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = chatCopy;
    v14 = 2112;
    v15 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedSIMIDUpdated: %@", &v12, 0x16u);
  }

  v9 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v10 = v9;
  if (v9)
  {
    [v9 _updateLastAddressedSIMID:updatedCopy];
  }

  else
  {
    v11 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = chatCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed SIM ID update", &v12, 0xCu);
    }
  }
}

- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated lastAddressedSIMIDUpdated:(id)dUpdated
{
  v21 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  dUpdatedCopy = dUpdated;
  v11 = IMChatRegistryLogHandle(dUpdatedCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = chatCopy;
    v17 = 2112;
    v18 = updatedCopy;
    v19 = 2112;
    v20 = dUpdatedCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedHandleUpdated: %@ lastAddressedSIMIDUpdated: %@", &v15, 0x20u);
  }

  v12 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v13 = v12;
  if (v12)
  {
    [v12 _updateLastAddressedHandleID:updatedCopy lastAddressedSIMID:dUpdatedCopy];
  }

  else
  {
    v14 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = chatCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed handle and last addressed SIM ID update", &v15, 0xCu);
    }
  }
}

- (void)_chat:(id)_chat partiallyUpdated:(id)updated
{
  _chatCopy = _chat;
  updatedCopy = updated;
  chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
  v8 = [chatGUIDToInfoMap objectForKeyedSubscript:_chatCopy];
  v9 = [v8 copy];

  if (v9)
  {
    [v9 updateWithChatDictionary:updatedCopy];
    chatGUIDToInfoMap2 = [(IMChatRegistry *)self chatGUIDToInfoMap];
    [chatGUIDToInfoMap2 setObject:v9 forKeyedSubscript:_chatCopy];
  }
}

- (void)chat:(id)chat isFilteredUpdated:(int64_t)updated
{
  v18 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = chatCopy;
    v16 = 1024;
    updatedCopy = updated;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "chat: %@ isFilteredUpdated: %d", buf, 0x12u);
  }

  v8 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{updated, *MEMORY[0x1E69A6BC0]}];
    v13 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(IMChatRegistry *)self _chat:chatCopy partiallyUpdated:v10];

    [v8 setIsFiltered:updated];
  }

  else
  {
    v11 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = chatCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring is filtered update", buf, 0xCu);
    }
  }
}

- (void)chat:(id)chat isRecoveredUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v15 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = chatCopy;
    v13 = 1024;
    v14 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "chat: %@ isRecoveredUpdated: %{BOOL}d", &v11, 0x12u);
  }

  v8 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setRecovered:updatedCopy];
  }

  else
  {
    v10 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = chatCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring is recover update", &v11, 0xCu);
    }
  }
}

- (void)chat:(id)chat isDeletingIncomingMessagesUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v15 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = chatCopy;
    v13 = 1024;
    v14 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "chat: %@ isDeletingIncomingMessagesUpdated: %{BOOL}d", &v11, 0x12u);
  }

  v8 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setDeletingIncomingMessages:updatedCopy];
  }

  else
  {
    v10 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = chatCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring is is deleting incoming messages update", &v11, 0xCu);
    }
  }
}

- (void)chat:(id)chat engramIDUpdated:(id)updated
{
  v16 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle(updatedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = chatCopy;
    v14 = 2112;
    v15 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ engramIDUpdated: %@", &v12, 0x16u);
  }

  v9 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v10 = v9;
  if (v9)
  {
    [v9 _updateEngramID:updatedCopy];
  }

  else
  {
    v11 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = chatCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring engram ID update", &v12, 0xCu);
    }
  }
}

- (void)engroupParticipantsUpdatedForChat:(id)chat
{
  v11 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v5 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = chatCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@ finished updating group chat", &v9, 0xCu);
  }

  v6 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v7 = v6;
  if (v6)
  {
    [v6 _engroupParticipantsUpdated];
  }

  else
  {
    v8 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = chatCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring engroup update", &v9, 0xCu);
    }
  }
}

- (void)updatedSummariesForChatsWithGUIDsAndProperties:(id)properties
{
  v28 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    [propertiesCopy allKeys];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v20 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v20)
    {
      v19 = *v22;
      v5 = *MEMORY[0x1E69A6B28];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          v8 = propertiesCopy;
          v9 = [propertiesCopy objectForKey:v7];
          v10 = [(IMChatRegistry *)self _cachedChatWithGUID:v7];
          allChatProperties = [v10 allChatProperties];
          v12 = [allChatProperties mutableCopy];

          v13 = [v9 valueForKey:v5];
          null = [MEMORY[0x1E695DFB0] null];

          if (v13 == null)
          {
            [v12 removeObjectForKey:v5];
          }

          else
          {
            [v12 setValue:v13 forKey:v5];
          }

          v15 = [v12 copy];
          [(IMChatRegistry *)self chat:v7 propertiesUpdated:v15];

          propertiesCopy = v8;
        }

        v20 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v20);
    }

    v25 = @"__kIMChatRegistrySummaryDictionaryKey";
    v26 = obj;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidUpdateMessagesWithSummaryNotification" object:0 userInfo:v16];
  }
}

- (void)updatedPriorityForChatsWithGUIDsAndProperties:(id)properties chatsAndMessageGUIDs:(id)ds
{
  v45 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  dsCopy = ds;
  v31 = propertiesCopy;
  [propertiesCopy allKeys];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v32 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v32)
  {
    v28 = *v38;
    v7 = *MEMORY[0x1E69A6CB8];
    v27 = *MEMORY[0x1E69A6CB8];
    selfCopy = self;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [v31 objectForKey:v9];
        v11 = [(IMChatRegistry *)self _cachedChatWithGUID:v9];
        allChatProperties = [v11 allChatProperties];
        v13 = [allChatProperties mutableCopy];

        v14 = [v10 objectForKey:v7];
        null = [MEMORY[0x1E695DFB0] null];

        if (v14 == null)
        {
          [v13 removeObjectForKey:v7];
        }

        else
        {
          [v13 setObject:v14 forKey:v7];
        }

        v16 = [v13 copy];
        [(IMChatRegistry *)self chat:v9 propertiesUpdated:v16];

        v17 = [dsCopy objectForKeyedSubscript:v9];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v34;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v34 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [v11 messageItemForGUID:*(*(&v33 + 1) + 8 * j)];
              v23 = v22;
              if (v22)
              {
                [v22 setIsTimeSensitive:1];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v33 objects:v43 count:16];
          }

          while (v19);
        }

        self = selfCopy;
        v7 = v27;
      }

      v32 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v32);
  }

  v41 = @"__kIMChatRegistryPriorityChatsAndMessagesDictionaryKey";
  v42 = dsCopy;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidUpdateMessagesWithPriorityNotification" object:0 userInfo:v24];
}

- (void)chat:(id)chat uncachedAttachmentCountUpdated:(id)updated
{
  v16 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle(updatedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = chatCopy;
    v14 = 2048;
    v15 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ uncachedAttachmentCountUpdated: %lu", &v12, 0x16u);
  }

  v9 = [(IMChatRegistry *)self _cachedChatWithGUID:chatCopy];
  v10 = v9;
  if (v9)
  {
    [v9 _setCountOfAttachmentsNotCachedLocally:updatedCopy];
  }

  else
  {
    v11 = IMChatRegistryLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = chatCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring attachment count update", &v12, 0xCu);
    }
  }
}

- (void)_updateChat:(id)chat updateIsFiltered:(int64_t)filtered
{
  chatCopy = chat;
  [chatCopy updateIsFiltered:filtered];
  [chatCopy verifyFiltering];
}

- (void)_updateUnreadCountForChat:(id)chat shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v35 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = chatCopy;
  if (chatCopy)
  {
    v24 = notificationCopy;
    v25 = chatCopy;
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      v7 = v25;
      if (v24)
      {
        [v25 _postNewUnreadCount];
      }
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      _guids = [v25 _guids];
      v11 = 0;
      v12 = [_guids countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v12)
      {
        v13 = *v27;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(_guids);
            }

            v15 = *(*(&v26 + 1) + 8 * i);
            chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
            v17 = [chatGUIDToInfoMap objectForKey:v15];

            unreadMessageCount = [v17 unreadMessageCount];
            v19 = unreadMessageCount;
            if (unreadMessageCount)
            {
              v20 = IMChatRegistryLogHandle(unreadMessageCount);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = v15;
                v32 = 1024;
                v33 = v19;
                _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [Unread: %d]", buf, 0x12u);
              }

              v11 += v19;
            }

            else if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v31 = v15;
                v32 = 1024;
                v33 = 0;
                _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEBUG, "Chat [%@] info dictionary has [Unread: %d]", buf, 0x12u);
              }
            }
          }

          v12 = [_guids countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v12);
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          guid = [v25 guid];
          *buf = 138412546;
          v31 = guid;
          v32 = 1024;
          v33 = v11;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEBUG, "Chat [%@] _setDBUnreadCount to %d", buf, 0x12u);
        }
      }

      [v25 _setDBUnreadCount:v11 postNotification:v24];
      v7 = v25;
    }
  }
}

- (void)_updateIsDownloadingPendingSatelliteMessages:(id)messages shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v22 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v7 = messagesCopy;
  if (messagesCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _guids = [messagesCopy _guids];
    v9 = [_guids countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(_guids);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
          v15 = [chatGUIDToInfoMap objectForKey:v13];

          LOBYTE(chatGUIDToInfoMap) = [v15 downloadingPendingSatelliteMessages];
          if (chatGUIDToInfoMap)
          {
            v16 = 1;
            goto LABEL_12;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [_guids countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:

    [v7 _setIsDownloadingPendingSatelliteMessages:v16 postNotification:notificationCopy];
  }
}

- (void)_updateHasCancellableScheduledMessage:(id)message shouldPostNotification:(BOOL)notification
{
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v6 = messageCopy;
  if (messageCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = messageCopy;
    _guids = [messageCopy _guids];
    v8 = [_guids countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(_guids);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
        v15 = [chatGUIDToInfoMap objectForKey:v13];

        hasCancellableScheduledMessage = [v15 hasCancellableScheduledMessage];
        v17 = hasCancellableScheduledMessage;
        v18 = IMChatRegistryLogHandle(hasCancellableScheduledMessage);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v13;
          v29 = 1024;
          v30 = v17;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [hasCancellableScheduledMessage: %{BOOL}d]", buf, 0x12u);
        }

        v10 |= v17;
        if (v17)
        {
          break;
        }

        if (v9 == ++v12)
        {
          v9 = [_guids countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v20 = IMChatRegistryLogHandle(v19);
    v6 = v22;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      guid = [v22 guid];
      *buf = 138412546;
      v28 = guid;
      v29 = 1024;
      v30 = v10 & 1;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Chat [%@] hasCancellableScheduledMessage to %{BOOL}d", buf, 0x12u);
    }

    [v22 setHasCancellableScheduledMessage:v10 & 1];
  }
}

- (void)_updatePendingIncomingSatelliteMessageCount:(id)count shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v34 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v7 = countCopy;
  if (countCopy)
  {
    v24 = notificationCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = countCopy;
    _guids = [countCopy _guids];
    v9 = [_guids countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(_guids);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
          v16 = [chatGUIDToInfoMap objectForKey:v14];

          pendingIncomingSatelliteMessageCount = [v16 pendingIncomingSatelliteMessageCount];
          v18 = IMChatRegistryLogHandle(pendingIncomingSatelliteMessageCount);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (pendingIncomingSatelliteMessageCount)
          {
            if (v19)
            {
              *buf = 138412546;
              v30 = v14;
              v31 = 1024;
              v32 = pendingIncomingSatelliteMessageCount;
              _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [pendingSatelliteCount: %d]", buf, 0x12u);
            }

            v11 += pendingIncomingSatelliteMessageCount;
          }

          else
          {
            if (v19)
            {
              *buf = 138412546;
              v30 = v14;
              v31 = 1024;
              v32 = v11;
              _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [pendingSatelliteCount: %d]", buf, 0x12u);
            }
          }
        }

        v10 = [_guids countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v21 = IMChatRegistryLogHandle(v20);
    v7 = v23;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      guid = [v23 guid];
      *buf = 138412546;
      v30 = guid;
      v31 = 1024;
      v32 = v11;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Chat [%@] _updatePendingSatelliteCount to %d", buf, 0x12u);
    }

    [v23 _setPendingIncomingSatelliteMessageCount:v11 postNotification:v24];
  }
}

- (void)_updateTranscriptBackgroundForChat:(id)chat shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v44 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  transcriptBackgroundVersion = [chatCopy transcriptBackgroundVersion];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  _guids = [chatCopy _guids];
  v30 = [_guids countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (!v30)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v25 = notificationCopy;
  v8 = 0;
  v28 = *v32;
  v27 = *MEMORY[0x1E69A7D40];
  v26 = _guids;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v32 != v28)
      {
        objc_enumerationMutation(_guids);
      }

      v10 = *(*(&v31 + 1) + 8 * i);
      chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
      v12 = [chatGUIDToInfoMap objectForKeyedSubscript:v10];

      transcriptBackgroundDetails = [v12 transcriptBackgroundDetails];
      v14 = [transcriptBackgroundDetails objectForKeyedSubscript:v27];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (!transcriptBackgroundVersion || (v16 = [transcriptBackgroundVersion unsignedLongLongValue], isKindOfClass = objc_msgSend(v14, "unsignedLongLongValue"), v16 < isKindOfClass))
        {
          v17 = IMChatRegistryLogHandle(isKindOfClass);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [chatCopy guid];
            v18 = v8;
            v20 = v19 = chatCopy;
            *buf = 138413058;
            v36 = v20;
            v37 = 2112;
            v38 = transcriptBackgroundVersion;
            v39 = 2112;
            v40 = v10;
            v41 = 2112;
            v42 = v14;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Chat %@ (background set %@) has merged chat info with newer background (%@ at %@), will switch", buf, 0x2Au);

            chatCopy = v19;
            v8 = v18;
            _guids = v26;
          }

          v21 = transcriptBackgroundDetails;
          v8 = v21;
        }
      }
    }

    v30 = [_guids countByEnumeratingWithState:&v31 objects:v43 count:16];
  }

  while (v30);

  if (v8)
  {
    v23 = IMChatRegistryLogHandle(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      guid = [chatCopy guid];
      *buf = 138412546;
      v36 = guid;
      v37 = 1024;
      LODWORD(v38) = v25;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Chat %@ required updated transcript background details (notify: %{BOOL}d)", buf, 0x12u);
    }

    [chatCopy setTranscriptBackgroundDetails:v8];
    if (v25)
    {
      _guids = [MEMORY[0x1E696AD88] defaultCenter];
      [_guids postNotificationName:@"__kIMChatTranscriptBackgroundChangedNotification" object:chatCopy userInfo:0];
LABEL_20:
    }
  }
}

- (void)_updateInfo:(id)info forGUID:(id)d updatingUnreadCount:(BOOL)count shouldPostNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  countCopy = count;
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    if (infoCopy)
    {
      chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
      v12 = [[IMChatInfo alloc] initWithChatDictionary:infoCopy];
      [chatGUIDToInfoMap setObject:v12 forKey:dCopy];
    }

    v13 = [(IMChatRegistry *)self _cachedChatWithGUID:dCopy];
    if (v13)
    {
      if (countCopy)
      {
        [(IMChatRegistry *)self _updateUnreadCountForChat:v13 shouldPostNotification:notificationsCopy];
      }

      v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C50]];
      [(IMChatRegistry *)self _updateChat:v13 originalGroupID:v14 shouldPostNotification:notificationsCopy];

      v15 = [(IMChatRegistry *)self _winningGroupIDForExistingChat:v13 incomingDictionary:infoCopy];
      [(IMChatRegistry *)self _updateChat:v13 groupID:v15 shouldPostNotification:notificationsCopy];

      v16 = [(IMChatRegistry *)self _winningChatIdentifierForExistingChat:v13 incomingDictionary:infoCopy];
      [(IMChatRegistry *)self _updateChat:v13 chatIdentifierForGroups:v16 shouldPostNotification:notificationsCopy];

      if ([v13 chatStyle] == 43)
      {
        v17 = [(IMChatRegistry *)self _winningParticipantsForExistingChat:v13 incomingDictionary:infoCopy];
        [v13 _resetParticipants:v17];
      }

      [(IMChatRegistry *)self _updateChatAutoDonationBehavior:v13 withInfo:infoCopy shouldPostNotification:notificationsCopy];
      [(IMChatRegistry *)self _updateReplySuggestions:v13 withInfo:infoCopy];
      [(IMChatRegistry *)self _updatePendingIncomingSatelliteMessageCount:v13 shouldPostNotification:notificationsCopy];
      [(IMChatRegistry *)self _updateIsDownloadingPendingSatelliteMessages:v13 shouldPostNotification:notificationsCopy];
      [(IMChatRegistry *)self _updateHasCancellableScheduledMessage:v13 shouldPostNotification:notificationsCopy];
      [v13 invalidateMergedThreadFilterModes];
      [(IMChatRegistry *)self _updateTranscriptBackgroundForChat:v13 shouldPostNotification:notificationsCopy];
      [(IMChatRegistry *)self _updateDomainIdentifiersForChat:v13 incomingDictionary:infoCopy shouldPostNotification:notificationsCopy];
    }
  }
}

- (BOOL)_updateChat:(id)chat chatIdentifierForGroups:(id)groups shouldPostNotification:(BOOL)notification
{
  v17 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  groupsCopy = groups;
  _chatIdentifierForGroups = [chatCopy _chatIdentifierForGroups];
  v9 = [_chatIdentifierForGroups isEqualToString:groupsCopy];
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    v11 = IMChatRegistryLogHandle(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = _chatIdentifierForGroups;
      v15 = 2112;
      v16 = groupsCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Updating chat identifier from %@ to %@", &v13, 0x16u);
    }

    [chatCopy __setChatIdentifierForGroups:groupsCopy];
  }

  return v10 ^ 1;
}

- (void)_updateChat:(id)chat originalGroupID:(id)d shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v25 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  originalGroupID = [chatCopy originalGroupID];
  if ((IMAreObjectsLogicallySame() & 1) == 0)
  {
    chatStyle = [chatCopy chatStyle];
    v11 = chatStyle;
    v12 = IMChatRegistryLogHandle(chatStyle);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 != 43)
    {
      if (!v13)
      {
LABEL_16:

        goto LABEL_17;
      }

      chatIdentifier = [chatCopy chatIdentifier];
      v17 = 138413058;
      v18 = originalGroupID;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = chatIdentifier;
      v23 = 1024;
      chatStyle2 = [chatCopy chatStyle];
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring original groupID update (%@ -> %@) because chat is not group chat: [IMChat chat identifier: %@  style: %c]", &v17, 0x26u);
LABEL_15:

      goto LABEL_16;
    }

    if (v13)
    {
      guid = [chatCopy guid];
      v17 = 138412802;
      v18 = guid;
      v19 = 2112;
      v20 = originalGroupID;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Updating original groupID of chat %@ from %@ to %@", &v17, 0x20u);
    }

    if (dCopy)
    {
      [chatCopy setOriginalGroupID:dCopy];
    }

    if (notificationCopy)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      v12 = v15;
      if (originalGroupID)
      {
        [v15 setObject:originalGroupID forKey:@"__kIMChatRegistryPreviousOriginalGroupIDKey"];
      }

      if (dCopy)
      {
        [v12 setObject:dCopy forKey:@"__kIMChatRegistryUpdatedOriginalGroupIDKey"];
      }

      chatIdentifier = [MEMORY[0x1E696AD88] defaultCenter];
      [chatIdentifier __mainThreadPostNotificationName:@"__kIMChatRegistryOriginalGroupIDChangedNotification" object:chatCopy userInfo:v12];
      goto LABEL_15;
    }
  }

LABEL_17:
}

- (void)_updateDomainIdentifiersForChat:(id)chat incomingDictionary:(id)dictionary shouldPostNotification:(BOOL)notification
{
  v34[5] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6B50]];
  v9 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6B18]];
  if ([v8 count] || (objc_msgSend(chatCopy, "domainIdentifiers"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEmpty"), v30, !v31) || !v9)
  {
    chatStyle = [chatCopy chatStyle];
    if (chatStyle == 43)
    {
      if (v9)
      {
        domainIdentifiers = [chatCopy domainIdentifiers];
        [chatCopy chatStyle];
        v12 = IMCopyGUIDForChat();
        v13 = [domainIdentifiers domainIdentifiersForChatGUID:v12];
        v14 = [v13 copy];

        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF20]);
        }

        groupID = [chatCopy groupID];
        if (!groupID)
        {
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1A84E3B8C(chatCopy, v16);
          }

          groupID = &stru_1F1B76F98;
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v18 = *MEMORY[0x1E69A8380];
        v19 = *MEMORY[0x1E69A8390];
        v33[0] = *MEMORY[0x1E69A8388];
        v33[1] = v19;
        v34[0] = groupID;
        v34[1] = groupID;
        v20 = *MEMORY[0x1E69A8398];
        v21 = MEMORY[0x1E695E0F8];
        if (v14)
        {
          v22 = v14;
        }

        else
        {
          v22 = MEMORY[0x1E695E0F8];
        }

        v34[2] = v22;
        v23 = *MEMORY[0x1E69A83A0];
        v33[2] = v20;
        v33[3] = v23;
        v24 = [v8 copy];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v21;
        }

        v33[4] = *MEMORY[0x1E69A8378];
        v34[3] = v26;
        v34[4] = v9;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
        [defaultCenter __mainThreadPostNotificationName:v18 object:0 userInfo:v27];
      }

      domainIdentifiers2 = [chatCopy domainIdentifiers];
      v29 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6B70]];
      [domainIdentifiers2 setDomainIdentifiers:v8 forChatGUID:v29];
    }

    else
    {
      domainIdentifiers2 = IMChatRegistryLogHandle(chatStyle);
      if (os_log_type_enabled(domainIdentifiers2, OS_LOG_TYPE_INFO))
      {
        v32 = 0;
        _os_log_impl(&dword_1A823F000, domainIdentifiers2, OS_LOG_TYPE_INFO, "Ignoring domain identifier update because chat is not a group chat", &v32, 2u);
      }
    }
  }
}

- (void)_updateChat:(id)chat groupID:(id)d shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v36 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  groupID = [chatCopy groupID];
  if ((IMAreObjectsLogicallySame() & 1) == 0)
  {
    chatStyle = [chatCopy chatStyle];
    if (chatStyle == 43)
    {
      if (dCopy)
      {
        groupIDToChatMap = [(IMChatRegistry *)self groupIDToChatMap];
        v13 = [groupIDToChatMap objectForKey:dCopy];

        if (v13)
        {
          chatStyle = [v13 chatStyle];
          if (chatStyle == 43)
          {
            chatIdentifier3 = IMChatRegistryLogHandle(chatStyle);
            if (os_log_type_enabled(chatIdentifier3, OS_LOG_TYPE_DEFAULT))
            {
              guid = [chatCopy guid];
              *buf = 138413058;
              v29 = groupID;
              v30 = 2112;
              v31 = dCopy;
              v32 = 2112;
              v33 = guid;
              v34 = 2112;
              v35 = v13;
              _os_log_impl(&dword_1A823F000, chatIdentifier3, OS_LOG_TYPE_DEFAULT, "Ignoring groupID update (%@ -> %@) for %@ because existing group chat is in groupID map: %@", buf, 0x2Au);
LABEL_27:
            }

LABEL_28:

            goto LABEL_29;
          }
        }
      }

      else
      {
        v13 = 0;
      }

      v16 = IMChatRegistryLogHandle(chatStyle);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        guid2 = [chatCopy guid];
        *buf = 138412802;
        v29 = guid2;
        v30 = 2112;
        v31 = groupID;
        v32 = 2112;
        v33 = dCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "Updating groupID of chat %@ from %@ to %@", buf, 0x20u);
      }

      if (!dCopy)
      {
        v24 = groupID != 0;
        if (!notificationCopy)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      [chatCopy setGroupID:dCopy];
      groupIDToChatMap2 = [(IMChatRegistry *)self groupIDToChatMap];
      [groupIDToChatMap2 setObject:chatCopy forKey:dCopy];

      if (groupID)
      {
        chatIdentifier = [chatCopy chatIdentifier];

        if (chatIdentifier)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v21 = *MEMORY[0x1E69A8380];
          chatIdentifier2 = [chatCopy chatIdentifier];
          v27[2] = chatIdentifier2;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:3];
          [defaultCenter __mainThreadPostNotificationName:v21 object:0 userInfo:v23];
        }

        v24 = 1;
        if (!notificationCopy)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      v24 = 0;
      if (notificationCopy)
      {
LABEL_22:
        v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        chatIdentifier3 = v25;
        if (v24)
        {
          [v25 setObject:groupID forKey:@"__kIMChatRegistryPreviousGroupIDKey"];
        }

        if (dCopy)
        {
          [chatIdentifier3 setObject:dCopy forKey:@"__kIMChatRegistryUpdatedGroupIDKey"];
        }

        guid = [MEMORY[0x1E696AD88] defaultCenter];
        [guid __mainThreadPostNotificationName:@"__kIMChatRegistryGroupIDChangedNotification" object:chatCopy userInfo:chatIdentifier3];
        goto LABEL_27;
      }
    }

    else
    {
      v13 = IMChatRegistryLogHandle(chatStyle);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        chatIdentifier3 = [chatCopy chatIdentifier];
        *buf = 138413058;
        v29 = groupID;
        v30 = 2112;
        v31 = dCopy;
        v32 = 2112;
        v33 = chatIdentifier3;
        v34 = 1024;
        LODWORD(v35) = [chatCopy chatStyle];
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring groupID update (%@ -> %@) because chat is not group chat: [IMChat chat identifier: %@  style: %c]", buf, 0x26u);
        goto LABEL_28;
      }
    }

LABEL_29:
  }
}

- (BOOL)_updateAutoDonationBehavior:(int64_t)behavior forChat:(id)chat shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  chatCopy = chat;
  autoDonationBehavior = [chatCopy autoDonationBehavior];
  if (autoDonationBehavior != behavior)
  {
    [chatCopy setAutoDonationBehavior:behavior];
    if (notificationCopy)
    {
      if ([MEMORY[0x1E69A8288] isSharedWithYouEnabled])
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryChatMarkedForAutoDonatingChangedNotification" object:chatCopy];
      }
    }
  }

  return autoDonationBehavior != behavior;
}

- (void)_updateChatAutoDonationBehavior:(id)behavior withInfo:(id)info shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v25 = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  infoCopy = info;
  v10 = *MEMORY[0x1E69A6B00];
  v11 = [infoCopy objectForKey:*MEMORY[0x1E69A6B00]];

  if (v11)
  {
    v12 = [infoCopy objectForKey:v10];
    integerValue = [v12 integerValue];

    v14 = [(IMChatRegistry *)self _updateAutoDonationBehavior:integerValue forChat:behaviorCopy shouldPostNotification:notificationCopy];
    if (v14)
    {
      v15 = IMChatRegistryLogHandle(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        guid = [behaviorCopy guid];
        v19 = 134218498;
        v20 = integerValue;
        v21 = 2112;
        v22 = guid;
        v23 = 1024;
        v24 = notificationCopy;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Found existing autoDonationBehavior: %ld for chat with GUID: %@ (notify: %{BOOL}d)", &v19, 0x1Cu);
      }

LABEL_8:
    }
  }

  else
  {
    v17 = [(IMChatRegistry *)self _updateAutoDonationBehavior:0 forChat:behaviorCopy shouldPostNotification:notificationCopy];
    if (v17)
    {
      v15 = IMChatRegistryLogHandle(v17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        guid2 = [behaviorCopy guid];
        v19 = 138412546;
        v20 = guid2;
        v21 = 1024;
        LODWORD(v22) = notificationCopy;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Using default autoDonationBehavior for chat with GUID: %@ (notify: %{BOOL}d)", &v19, 0x12u);
      }

      goto LABEL_8;
    }
  }
}

- (void)_updateReplySuggestions:(id)suggestions withInfo:(id)info
{
  v41 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  infoCopy = info;
  lastFinishedMessageItem = [suggestionsCopy lastFinishedMessageItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![lastFinishedMessageItem isTypingMessage])
  {
    v8 = [infoCopy objectForKey:*MEMORY[0x1E69A6C80]];
    if (!v8)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_39:

        goto LABEL_40;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = [suggestionsCopy guid];
        v33 = 138412290;
        v34 = guid;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "[%@] no smart replies in info dictionary", &v33, 0xCu);
      }

LABEL_38:

      goto LABEL_39;
    }

    v10 = [infoCopy objectForKey:*MEMORY[0x1E69A6B70]];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        guid2 = [suggestionsCopy guid];
        v33 = 138412546;
        v34 = guid2;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "[%@] infoGuid = %@", &v33, 0x16u);
      }
    }

    guid3 = [suggestionsCopy guid];
    v14 = [guid3 isEqualToString:v10];

    if ((v14 & 1) == 0)
    {
      lastFinishedMessage = [suggestionsCopy lastFinishedMessage];
      v16 = lastFinishedMessage == 0;

      if (v16)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_38;
        }

        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          guid4 = [suggestionsCopy guid];
          v33 = 138412546;
          v34 = guid4;
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "[%@] returning because last finished message is nil, can't get finished message time with info guid = %@", &v33, 0x16u);
        }

        goto LABEL_19;
      }

      lastFinishedMessageDate = [suggestionsCopy lastFinishedMessageDate];
      __im_nanosecondTimeInterval = [lastFinishedMessageDate __im_nanosecondTimeInterval];

      v19 = [infoCopy objectForKey:*MEMORY[0x1E69A6C10]];
      longLongValue = [v19 longLongValue];
      v21 = IMOSLoggingEnabled();
      if (longLongValue < __im_nanosecondTimeInterval)
      {
        if (v21)
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            guid5 = [suggestionsCopy guid];
            v33 = 138413058;
            v34 = guid5;
            v35 = 2048;
            v36 = longLongValue;
            v37 = 2048;
            v38 = __im_nanosecondTimeInterval;
            v39 = 2112;
            v40 = v10;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "[%@] returning, info timestamp = %lld < chat timestamp = %lld, info guid = %@", &v33, 0x2Au);
          }
        }

LABEL_19:

        goto LABEL_38;
      }

      if (v21)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          guid6 = [suggestionsCopy guid];
          v33 = 138413058;
          v34 = guid6;
          v35 = 2048;
          v36 = longLongValue;
          v37 = 2048;
          v38 = __im_nanosecondTimeInterval;
          v39 = 2112;
          v40 = v10;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "[%@] info timestamp = %lld > chat timestamp = %lld, info guid = %@", &v33, 0x2Au);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        guid7 = [suggestionsCopy guid];
        replySuggestions = [suggestionsCopy replySuggestions];
        v31 = [replySuggestions count];
        v32 = [v8 count];
        v33 = 138412802;
        v34 = guid7;
        v35 = 2048;
        v36 = v31;
        v37 = 2048;
        v38 = v32;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "[%@] Updating smart replies from %tu to %tu", &v33, 0x20u);
      }
    }

    [suggestionsCopy setReplySuggestions:v8];
    [suggestionsCopy updateReplySuggestions];
    goto LABEL_38;
  }

  [suggestionsCopy setReplySuggestions:0];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      guid8 = [suggestionsCopy guid];
      v33 = 138412290;
      v34 = guid8;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "[%@] removing replies for typing indicator", &v33, 0xCu);
    }

    goto LABEL_39;
  }

LABEL_40:
}

- (void)chat:(id)chat updated:(id)updated
{
  v165[2] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v82 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C08]];
  if (v82)
  {
    v80 = [v82 objectForKey:@"guid"];
  }

  else
  {
    v80 = 0;
  }

  v165[0] = 0;
  v165[1] = 0;
  v164[0] = 0;
  v164[1] = 0;
  v163[0] = 0;
  v163[1] = 0;
  v8 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6AF0]];
  IMUUIDForUUIDString();

  v9 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BF8]];
  IMUUIDForUUIDString();

  v10 = *MEMORY[0x1E69A6C70];
  v11 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C70]];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69A6C20]];
  IMUUIDForUUIDString();

  log = IMChatRegistryLogHandle(v13);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v79 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B18]];
    v78 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B78]];
    v69 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B70]];
    v76 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B90]];
    bOOLValue = [v76 BOOLValue];
    v75 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BA8]];
    bOOLValue2 = [v75 BOOLValue];
    v74 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BB0]];
    bOOLValue3 = [v74 BOOLValue];
    v73 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BC0]];
    bOOLValue4 = [v73 BOOLValue];
    v72 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BD8]];
    bOOLValue5 = [v72 BOOLValue];
    v65 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BF0]];
    v64 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C10]];
    v63 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C18]];
    v71 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B00]];
    longValue = [v71 longValue];
    v70 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C38]];
    [v70 doubleValue];
    v15 = v14;
    v32 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C50]];
    v59 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C68]];
    v30 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C88]];
    v68 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C90]];
    intValue = [v68 intValue];
    v29 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C98]];
    v67 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BE0]];
    longValue2 = [v67 longValue];
    v66 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6CA8]];
    longValue3 = [v66 longValue];
    v62 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6CD0]];
    unsignedLongValue = [v62 unsignedLongValue];
    v61 = [updatedCopy objectForKeyedSubscript:v10];
    v60 = [v61 objectForKeyedSubscript:@"LSMD"];
    [v60 timeIntervalSince1970];
    v17 = v16;
    v58 = [updatedCopy objectForKeyedSubscript:v10];
    v56 = [v58 objectForKeyedSubscript:@"RCSGroupIdentityVersion"];
    intValue2 = [v56 intValue];
    v53 = [updatedCopy objectForKeyedSubscript:v10];
    v42 = [v53 objectForKeyedSubscript:@"RCSGroupURI"];
    v50 = [updatedCopy objectForKeyedSubscript:v10];
    v49 = [v50 objectForKeyedSubscript:@"hasViewedPotentialSpamChat"];
    bOOLValue6 = [v49 BOOLValue];
    v47 = [updatedCopy objectForKeyedSubscript:v10];
    v46 = [v47 objectForKeyedSubscript:*MEMORY[0x1E69A6C40]];
    [v46 timeIntervalSince1970];
    v19 = v18;
    v45 = [updatedCopy objectForKeyedSubscript:v10];
    v43 = [v45 objectForKeyedSubscript:@"messageHandshakeState"];
    longValue4 = [v43 longValue];
    v40 = [updatedCopy objectForKeyedSubscript:v10];
    v38 = [v40 objectForKeyedSubscript:@"numberOfTimesRespondedtoThread"];
    intValue3 = [v38 intValue];
    v36 = [updatedCopy objectForKeyedSubscript:v10];
    v35 = [v36 objectForKeyedSubscript:@"pv"];
    longValue5 = [v35 longValue];
    v33 = [updatedCopy objectForKeyedSubscript:v10];
    [v33 objectForKeyedSubscript:@"shouldForceToSMS"];
    v31 = v77 = self;
    bOOLValue7 = [v31 BOOLValue];
    v27 = [updatedCopy objectForKeyedSubscript:v10];
    v21 = [v27 objectForKeyedSubscript:@"supportsEncryption"];
    bOOLValue8 = [v21 BOOLValue];
    v23 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C58]];
    v90 = v165;
    v98 = bOOLValue;
    v100 = bOOLValue2;
    v102 = bOOLValue3;
    v104 = bOOLValue4;
    v106 = bOOLValue5;
    v112 = v164;
    v118 = longValue;
    v128 = intValue;
    v132 = longValue2;
    v134 = longValue3;
    v136 = unsignedLongValue;
    v120 = v15;
    v122 = v32;
    v126 = v30;
    v130 = v29;
    v138 = v17;
    v140 = intValue2;
    v144 = bOOLValue6;
    v87 = 1040;
    v109 = 1040;
    v145 = 1040;
    v88 = 16;
    v110 = 16;
    v146 = 16;
    v89 = 2096;
    v111 = 2096;
    v147 = 2096;
    v148 = v163;
    v152 = longValue4;
    v154 = intValue3;
    v117 = 2048;
    v119 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v149 = 2048;
    v151 = 2048;
    v155 = 2048;
    v156 = longValue5;
    v158 = bOOLValue7;
    v97 = 1024;
    v99 = 1024;
    v101 = 1024;
    v103 = 1024;
    v105 = 1024;
    v127 = 1024;
    v139 = 1024;
    v143 = 1024;
    v153 = 1024;
    v157 = 1024;
    v159 = 1024;
    v160 = bOOLValue8;
    v85 = 2112;
    v91 = 2112;
    v93 = 2112;
    v95 = 2112;
    v107 = 2112;
    v113 = 2112;
    v115 = 2112;
    v121 = 2112;
    v123 = 2112;
    v125 = 2112;
    v129 = 2112;
    v141 = 2112;
    v161 = 2112;
    v142 = v42;
    v150 = v19;
    v162 = v23;
    *buf = 138422274;
    v84 = chatCopy;
    v86 = v80;
    v92 = v79;
    v94 = v78;
    v96 = v69;
    v108 = v65;
    v114 = v64;
    v116 = v63;
    v124 = v59;
    _os_log_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEFAULT, "chat: %@  last message guid %@ updated: [\n     accountID = %{uuid_t}.16P\n     chatIdentifier = %@\n     groupID = %@\n     guid = %@\n     hasHadSuccessfulQuery = %{BOOL}d\n     isBlackholed = %{BOOL}d\n     isDeletingIncomingMessages = %{BOOL}d\n     isFiltered = %{BOOL}d\n     isRecovered = %{BOOL}d\n     lastAddressedLocalHandle = %@\n     lastAddressedSIMID = %{uuid_t}.16P\n     lastMessageTimeStampOnLoad = %@\n     lastReadMessageTimeStamp = %@\n     autoDonationBehavior = %ld\n     latestMessageDate = %f\n     originalGroupID = %@\n     pcmid = %@\n     roomName = %@\n     rowID = %i\n     serviceName = %@\n     state = %ld\n     style = %ld\n     unreadCount = %lu\n     properties = [\n         LSMD = %f\n         RCSGroupIdentityVersion = %i\n         RCSGroupURI = %@\n         hasViewedPotentialSpamChat = %{BOOL}d\n         lastSeenMessageGuid = %{uuid_t}.16P\n         markedAsKnownDate = %f\n         messageHandshakeState = %ld\n         numberOfTimesRespondedtoThread = %i\n         participantVersion = %ld\n         shouldForceToSMS = %{BOOL}d\n         supportsEncryption = %{BOOL}d\n     ]\n     participants = %@\n]", buf, 0x15Au);

    self = v77;
  }

  [(IMChatRegistry *)self _updateInfo:updatedCopy forGUID:chatCopy updatingUnreadCount:1];
}

- (void)unreadCountChanged:(int64_t)changed
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if ((isUnreadCountRefactorEnabled & 1) == 0 && [(IMChatRegistry *)self unreadCount]!= changed)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9[0] = 67109376;
        v9[1] = [(IMChatRegistry *)self unreadCount];
        v10 = 1024;
        changedCopy = changed;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Unread count changed from %d to %d", v9, 0xEu);
      }
    }

    [(IMChatRegistry *)self setUnreadCount:changed];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryUnreadCountChangedNotification" object:0];
  }
}

- (void)_processUnreadCountFullReplacement:(id)replacement
{
  replacementCopy = replacement;
  if (replacementCopy)
  {
    [(IMChatRegistry *)self setUnreadCountReplacementState:0];
    unreadCountController = [(IMChatRegistry *)self unreadCountController];
    [unreadCountController processDelta:replacementCopy];

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Failed to fetch full replacement from daemon", buf, 2u);
    }
  }

  v7 = +[IMDaemonController sharedController];
  isConnected = [v7 isConnected];

  if ((isConnected & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        v12 = "Disconencted from daemon, giving up fetching unread count replacement";
        v13 = v17;
        goto LABEL_15;
      }

LABEL_16:
    }

LABEL_17:
    [(IMChatRegistry *)self setUnreadCountReplacementState:0];
    goto LABEL_23;
  }

  unreadCountReplacementState = [(IMChatRegistry *)self unreadCountReplacementState];
  v10 = IMOSLoggingEnabled();
  if (unreadCountReplacementState == 3)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v12 = "Retry attempt failed, giving up fetching unread count replacement";
        v13 = &v16;
LABEL_15:
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v10)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Retrying fetch for unread count replacement", v15, 2u);
    }
  }

  [(IMChatRegistry *)self setUnreadCountReplacementState:2];
  [(IMChatRegistry *)self performSelector:sel__rebuildUnreadCountController withObject:self afterDelay:0.0];
LABEL_23:
}

- (void)_rebuildUnreadCountController
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__rebuildUnreadCountController object:0];
  if ([(IMChatRegistry *)self unreadCountReplacementState]== 1 || [(IMChatRegistry *)self unreadCountReplacementState]== 3)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Not sending another request to rebuild unread count controller when one is in flight", buf, 2u);
      }
    }
  }

  else
  {
    v4 = +[IMDaemonController sharedController];
    isConnected = [v4 isConnected];

    if (isConnected)
    {
      if ([(IMChatRegistry *)self unreadCountReplacementState]== 2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }

      [(IMChatRegistry *)self setUnreadCountReplacementState:v6];
      *buf = 0;
      v12 = buf;
      v13 = 0x2020000000;
      v14 = 0;
      daemonController = [(IMChatRegistry *)self daemonController];
      synchronousRemoteDaemon = [daemonController synchronousRemoteDaemon];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1A83BCC2C;
      v10[3] = &unk_1E7814560;
      v10[4] = self;
      v10[5] = buf;
      [synchronousRemoteDaemon unreadCountFullReplacementWithCompletion:v10];

      if ((v12[24] & 1) == 0)
      {
        [(IMChatRegistry *)self _processUnreadCountFullReplacement:0];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not sending request to rebuild unread count because we are disconnected", buf, 2u);
        }
      }

      [(IMChatRegistry *)self setUnreadCountReplacementState:0];
    }
  }
}

- (void)unreadCountReportsUpdated:(id)updated
{
  updatedCopy = updated;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    if (([updatedCopy isReplacement] & 1) == 0 && !IMGetDomainBoolForKeyWithDefaultValue() || (-[IMChatRegistry unreadCountController](self, "unreadCountController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "processDelta:", updatedCopy), v6, (v7 & 1) == 0))
    {
      [(IMChatRegistry *)self _rebuildUnreadCountController];
    }
  }
}

- (void)lastFailedMessageDateChanged:(int64_t)changed
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(IMChatRegistry *)self lastFailedMessageDate]!= changed)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 134218240;
        lastFailedMessageDate = [(IMChatRegistry *)self lastFailedMessageDate];
        v9 = 2048;
        changedCopy = changed;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Failed message date changed from %lld to %lld", &v7, 0x16u);
      }
    }

    [(IMChatRegistry *)self setLastFailedMessageDate:changed];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryLastFailedMessageDateChangedNotification" object:0];
  }
}

- (void)historicalMessageGUIDsDeleted:(id)deleted chatGUIDs:(id)ds queryID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  dsCopy = ds;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v29 = deletedCopy;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = dsCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "deletedGUIDs: %@  queryID: %@  chatGUIDs: %@", buf, 0x20u);
    }
  }

  if ([dsCopy count])
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = dsCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [(IMChatRegistry *)self existingChatWithGUID:*(*(&v23 + 1) + 8 * i)];
          if (v17 && ([v12 containsObjectIdenticalTo:v17] & 1) == 0)
          {
            [v17 _handleMessageGUIDDeletions:deletedCopy];
            [v12 addObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }
  }

  else
  {
    chatGUIDToChatMap = [(IMChatRegistry *)self chatGUIDToChatMap];
    v12 = [chatGUIDToChatMap copy];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A83BD118;
    v21[3] = &unk_1E7814588;
    v22 = deletedCopy;
    [v12 enumerateKeysAndObjectsUsingBlock:v21];
    v13 = v22;
  }

  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  [daemonQueryController completeQuery:dCopy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidMoveMessagesInChatsToRecentlyDeletedNotification" object:deletedCopy];
}

- (void)_checkLimitAndSetMessagesToKeepLoadedIfNeeded:(unint64_t)needed chat:(id)chat
{
  v11 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if ([chatCopy numberOfMessagesToKeepLoaded] < needed)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 134218240;
        neededCopy = needed;
        v9 = 2048;
        numberOfMessagesToKeepLoaded = [chatCopy numberOfMessagesToKeepLoaded];
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "The limit (%lu) of number of messages we loaded is higher than our capacity (%lu), bumping our capactity to the new limit", &v7, 0x16u);
      }
    }

    [chatCopy setNumberOfMessagesToKeepLoaded:needed];
  }
}

- (void)_checkIfItemIsCorrupt:(id)corrupt
{
  v15 = *MEMORY[0x1E69E9840];
  corruptCopy = corrupt;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = corruptCopy;
    guid = [v4 guid];
    if ([IMChat isGUIDInAttemptingListInScrutinyMode:guid])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v12 = guid;
          v13 = 2112;
          v14 = v4;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Found attempted guid %@. Marking message as corrupt %@", buf, 0x16u);
        }
      }

      isCorrupt = [v4 isCorrupt];
      [v4 setIsCorrupt:1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1A83BD3EC;
      v8[3] = &unk_1E78145B0;
      v9 = guid;
      v10 = isCorrupt;
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }
  }
}

- (void)_completeChatLoadQueryWithChat:(id)chat queryID:(id)d
{
  v13[1] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  if (dCopy)
  {
    if (chatCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = @"__kIMChatQueryIDKey";
      v13[0] = dCopy;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMChatLoadRequestDidCompleteNotification" object:chatCopy userInfo:v9];

      daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
      [daemonQueryController completeQuery:dCopy];
    }

    else
    {
      daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Messages.IMChatRegistryErrorDomain" code:1 userInfo:0];
      [daemonQueryController failQuery:dCopy error:v11];
    }
  }
}

- (void)historyQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit
{
  v56 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
  v10 = +[IMDaemonController sharedController];
  v11 = [v10 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v11) == 0)
  {
    v12 = +[IMDaemonController sharedController];
    v13 = [v12 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v13) == 0)
    {
      v33 = +[IMDaemonController sharedController];
      v34 = [v33 capabilitiesForListenerID:0];
      v35 = *MEMORY[0x1E69A6258] & v34;

      if (!v35)
      {
        goto LABEL_38;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v48 = queryCopy;
      v49 = 2112;
      v50 = dCopy;
      v51 = 2112;
      v52 = servicesCopy;
      v53 = 1024;
      v54 = [resultCopy count];
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "History query ID: %@   chatID: %@  service: %@  finished with results (%d)", buf, 0x26u);
    }
  }

  v15 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  v16 = IMOSLoggingEnabled();
  if (v15)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v15;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Found chat: %@", buf, 0xCu);
      }
    }

    v18 = +[IMAccountController sharedInstance];
    [v18 _enableCache];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = resultCopy;
    v20 = 0;
    v21 = 0;
    v22 = [v19 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v22)
    {
      v23 = *v44;
      do
      {
        v24 = 0;
        v25 = v21;
        do
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v43 + 1) + 8 * v24);
          v42 = v25;
          v27 = _IMBestAccountForIMMessageItemDictionary(v26, v15, 0, v25, &v42);
          v21 = v42;

          IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v26, v27, 1);
          if (IMMessageFromIMMessageItemDictionary)
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v48 = IMMessageFromIMMessageItemDictionary;
                _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEBUG, "   => Created IMItem: %@", buf, 0xCu);
              }
            }

            if (!v20)
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [(IMChatRegistry *)self _checkIfItemIsCorrupt:IMMessageFromIMMessageItemDictionary];
            if (![IMMessageFromIMMessageItemDictionary type])
            {
              message = [IMMessageFromIMMessageItemDictionary message];
              _IMCheckMessageForDDResults(message);
            }

            [v20 addObject:IMMessageFromIMMessageItemDictionary];
          }

          ++v24;
          v25 = v21;
        }

        while (v22 != v24);
        v22 = [v19 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v22);
    }

    [(IMChatRegistry *)self _checkLimitAndSetMessagesToKeepLoadedIfNeeded:limit chat:v15];
    [v15 _insertHistoricalMessages:v20 queryID:queryCopy isRefresh:0 isHistoryQuery:1 limit:limit];
    v31 = +[IMAccountController sharedInstance];
    [v31 _disableCache];
  }

  else
  {
    if (v16)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v48 = queryCopy;
        v49 = 2112;
        v50 = dCopy;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", buf, 0x16u);
      }
    }

    v21 = 0;
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v15 queryID:queryCopy];
  kdebug_trace();

LABEL_38:
}

- (void)pagedHistoryQuery:(id)query chatID:(id)d services:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after finishedWithResult:(id)result hasMessagesBefore:(BOOL)messagesBefore hasMessagesAfter:(BOOL)self0
{
  v65 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
  v13 = +[IMDaemonController sharedController];
  v14 = [v13 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v14) == 0)
  {
    v15 = +[IMDaemonController sharedController];
    v16 = [v15 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v16) == 0)
    {
      v37 = +[IMDaemonController sharedController];
      v38 = [v37 capabilitiesForListenerID:0];
      v39 = *MEMORY[0x1E69A6258] & v38;

      if (!v39)
      {
        goto LABEL_43;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138413570;
      *v54 = queryCopy;
      *&v54[8] = 2112;
      v55 = dCopy;
      v56 = 2112;
      v57 = servicesCopy;
      v58 = 1024;
      v59 = [resultCopy count];
      v60 = 1024;
      beforeCopy = before;
      v62 = 1024;
      afterCopy = after;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Paged history query ID: %@ chatID: %@ service: %@ finished with results count: %d numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x32u);
    }
  }

  v18 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  if (v18)
  {
    v19 = +[IMAccountController sharedInstance];
    [v19 _enableCache];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = resultCopy;
    v21 = 0;
    v22 = 0;
    v23 = [v20 countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v23)
    {
      v24 = *v50;
      do
      {
        v25 = 0;
        v26 = v22;
        do
        {
          if (*v50 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v49 + 1) + 8 * v25);
          v48 = v26;
          v28 = _IMBestAccountForIMMessageItemDictionary(v27, v18, 0, v26, &v48);
          v22 = v48;

          IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v27, v28, 1);
          if (IMMessageFromIMMessageItemDictionary)
          {
            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [(IMChatRegistry *)self _checkIfItemIsCorrupt:IMMessageFromIMMessageItemDictionary];
            if (![IMMessageFromIMMessageItemDictionary type])
            {
              message = [IMMessageFromIMMessageItemDictionary message];
              _IMCheckMessageForDDResults(message);
            }

            [v21 addObject:IMMessageFromIMMessageItemDictionary];
          }

          ++v25;
          v26 = v22;
        }

        while (v23 != v25);
        v23 = [v20 countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v23);
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v54 = before;
        *&v54[4] = 1024;
        *&v54[6] = after;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Paged history about to call insert historicalMessages numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0xEu);
      }
    }

    v32 = after > 0 && before > 0;
    if (before <= 0)
    {
      messagesBefore = [v18 hasMoreMessagesToLoad];
    }

    if (after <= 0)
    {
      messagesAfter = [v18 hasMoreRecentMessagesToLoad];
    }

    BYTE1(v40) = messagesAfter;
    LOBYTE(v40) = messagesBefore;
    [v18 _insertHistoricalMessages:v21 queryID:queryCopy isRefresh:0 isHistoryQuery:1 isReplacingItems:v32 limit:objc_msgSend(v21 hasMessagesBefore:"count") hasMessagesAfter:v40];
    v36 = +[IMAccountController sharedInstance];
    [v36 _disableCache];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v54 = queryCopy;
        *&v54[8] = 2112;
        v55 = dCopy;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Found no chat object for query: %@  chat ID: %@", buf, 0x16u);
      }
    }

    v22 = 0;
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v18 queryID:queryCopy];

LABEL_43:
}

- (void)attachmentQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result
{
  v38 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
  v14 = +[IMDaemonController sharedController];
  v15 = [v14 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v15) == 0)
  {
    v16 = +[IMDaemonController sharedController];
    v17 = [v16 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v17) == 0)
    {
      v25 = +[IMDaemonController sharedController];
      v26 = [v25 capabilitiesForListenerID:0];
      v27 = *MEMORY[0x1E69A6258] & v26;

      if (!v27)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v31 = queryCopy;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2112;
      v35 = servicesCopy;
      v36 = 1024;
      v37 = [resultCopy count];
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Media attachment filenames query ID: %@   chatID: %@  service: %@  finished with results (%d)", buf, 0x26u);
    }
  }

  v19 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  v20 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found chat: %@", buf, 0xCu);
      }
    }

    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(resultCopy, "count")}];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1A83BE754;
    v28[3] = &unk_1E78145D8;
    v29 = v22;
    v23 = v22;
    [resultCopy enumerateObjectsUsingBlock:v28];
    [v19 _setAttachments:v23];
  }

  else if (v20)
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = queryCopy;
      v32 = 2112;
      v33 = dCopy;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", buf, 0x16u);
    }
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v19 queryID:queryCopy];

LABEL_20:
}

- (void)uncachedAttachmentCountQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
  v14 = +[IMDaemonController sharedController];
  v15 = [v14 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v15) == 0)
  {
    v16 = +[IMDaemonController sharedController];
    v17 = [v16 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v17) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = *MEMORY[0x1E69A6258] & v24;

      if (!v25)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = 138413058;
      v27 = queryCopy;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = servicesCopy;
      v32 = 2048;
      unsignedLongValue = [resultCopy unsignedLongValue];
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Media attachment uncached count query ID: %@   chatID: %@  service: %@  finished with results (%lu)", &v26, 0x2Au);
    }
  }

  v19 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  v20 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v19;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found chat: %@", &v26, 0xCu);
      }
    }

    [v19 _setCountOfAttachmentsNotCachedLocally:resultCopy];
  }

  else if (v20)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = queryCopy;
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v26, 0x16u);
    }
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v19 queryID:queryCopy];

LABEL_20:
}

- (id)_chatForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259C90;
  v12 = sub_1A825AF74;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83BECD8;
  v7[3] = &unk_1E7814600;
  v7[4] = self;
  v7[5] = &v8;
  [identifiersCopy enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)finishedDownloadingPurgedAssetsForChatIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) == 0)
  {
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v8) == 0)
    {
      v12 = +[IMDaemonController sharedController];
      v13 = [v12 capabilitiesForListenerID:0];
      v14 = *MEMORY[0x1E69A6258] & v13;

      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = dsCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Media attachment download purged assets for chatIDs: %@  finished.", &v15, 0xCu);
    }
  }

  v10 = [(IMChatRegistry *)self _chatForIdentifiers:dsCopy];
  if (v10)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatPurgedAttachmentsDownloadCompleteNotification" object:v10 userInfo:0];
  }

LABEL_12:
}

- (void)downloadedPurgedAssetBatchForChatIDs:(id)ds completedTransferGUIDs:(id)iDs
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v9) == 0)
  {
    v10 = +[IMDaemonController sharedController];
    v11 = [v10 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v11) == 0)
    {
      v17 = +[IMDaemonController sharedController];
      v18 = [v17 capabilitiesForListenerID:0];
      v19 = *MEMORY[0x1E69A6258] & v18;

      if (!v19)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dsCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Media attachment download purged assets batch for chatIDs: %@  finished.", buf, 0xCu);
    }
  }

  v13 = [(IMChatRegistry *)self _chatForIdentifiers:dsCopy];
  if (v13)
  {
    if (iDsCopy)
    {
      v14 = iDsCopy;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    v20 = @"completedTransferGUIDs";
    v21 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatPurgedAttachmentsDownloadBatchCompleteNotification" object:v13 userInfo:v15];
  }

LABEL_15:
}

- (void)isDownloadingQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(BOOL)result
{
  resultCopy = result;
  v33 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  v13 = +[IMDaemonController sharedController];
  v14 = [v13 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v14) == 0)
  {
    v15 = +[IMDaemonController sharedController];
    v16 = [v15 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v16) == 0)
    {
      v22 = +[IMDaemonController sharedController];
      v23 = [v22 capabilitiesForListenerID:0];
      v24 = *MEMORY[0x1E69A6258] & v23;

      if (!v24)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = 138413058;
      v26 = queryCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = servicesCopy;
      v31 = 1024;
      v32 = resultCopy;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Media attachment is downloading purged assets query ID: %@   chatID: %@  service: %@  finished with results (%i)", &v25, 0x26u);
    }
  }

  v18 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  v19 = IMOSLoggingEnabled();
  if (v18)
  {
    if (v19)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = v18;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Found chat: %@", &v25, 0xCu);
      }
    }

    [v18 _setIsDownloadingPurgedAssets:resultCopy];
  }

  else if (v19)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = queryCopy;
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v25, 0x16u);
    }
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v18 queryID:queryCopy];

LABEL_20:
}

- (void)markAsSpamQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
  v14 = +[IMDaemonController sharedController];
  v15 = [v14 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v15) == 0)
  {
    v16 = +[IMDaemonController sharedController];
    v17 = [v16 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v17) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = *MEMORY[0x1E69A6258] & v24;

      if (!v25)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = 138413058;
      v27 = queryCopy;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = servicesCopy;
      v32 = 2112;
      v33 = resultCopy;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Mark as Spam query ID: %@   chatID: %@  service: %@  finished with results (%@)", &v26, 0x2Au);
    }
  }

  v19 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  v20 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v19;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found chat: %@", &v26, 0xCu);
      }
    }

    [v19 _setCountOfMessagesMarkedAsSpam:resultCopy];
  }

  else if (v20)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = queryCopy;
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v26, 0x16u);
    }
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v19 queryID:queryCopy];

LABEL_20:
}

- (void)frequentRepliesQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit
{
  v30 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
  v15 = +[IMDaemonController sharedController];
  v16 = [v15 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v16) == 0)
  {
    v17 = +[IMDaemonController sharedController];
    v18 = [v17 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v18) == 0)
    {
      v23 = +[IMDaemonController sharedController];
      v24 = [v23 capabilitiesForListenerID:0];
      v25 = *MEMORY[0x1E69A6258] & v24;

      if (!v25)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v19 = [(IMChatRegistry *)self existingChatWithGUID:dCopy];
  if (v19)
  {
    v20 = +[IMAccountController sharedInstance];
    [v20 _enableCache];

    [v19 setFrequentReplies:resultCopy];
    v21 = +[IMAccountController sharedInstance];
    [v21 _disableCache];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = queryCopy;
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Found no chat object for frequent replies query: %@   chat ID: %@", &v26, 0x16u);
    }
  }

  [(IMChatRegistry *)self _completeChatLoadQueryWithChat:v19 queryID:queryCopy];

LABEL_12:
}

- (void)_automation_markAsReadQuery:(id)query finishedWithResult:(BOOL)result
{
  queryCopy = query;
  v5 = +[IMDaemonController sharedController];
  v6 = [v5 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v6) != 0)
  {
    goto LABEL_4;
  }

  v7 = +[IMDaemonController sharedController];
  v8 = [v7 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A62B0] & v8) != 0)
  {

LABEL_4:
LABEL_5:
    daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
    [daemonQueryController completeQuery:queryCopy];

    goto LABEL_6;
  }

  v10 = +[IMDaemonController sharedController];
  v11 = [v10 capabilitiesForListenerID:0];
  v12 = *MEMORY[0x1E69A6258] & v11;

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)chatsNeedRemerging:(id)remerging groupedChats:(id)chats
{
  v43 = *MEMORY[0x1E69E9840];
  remergingCopy = remerging;
  chatsCopy = chats;
  v8 = IMChatRegistryLogHandle(chatsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Chats need re-merging notification", buf, 2u);
  }

  v9 = [remergingCopy count];
  if (v9 < 2)
  {
    v25 = [remergingCopy count];
    if (v25 == 1)
    {
      lastObject = [remergingCopy lastObject];
      v27 = [(IMChatRegistry *)self existingChatWithGUID:lastObject];
      firstObject = [chatsCopy firstObject];
      v29 = [firstObject objectForKey:*MEMORY[0x1E69A6C68]];
      [(IMChatRegistry *)self _updatePersonCentricIDToChatMapForChat:v27 toNewPersonCentricID:v29];
    }

    v21 = IMChatRegistryLogHandle(v25);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "One GUID presented to merge, not remerging!", buf, 2u);
    }
  }

  else
  {
    v10 = IMChatRegistryLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = remergingCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Asked to remerge %@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if (remergingCopy)
    {
      v12 = remergingCopy;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    v39 = @"__kIMChatRegistryGUIDListKey";
    v40 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:{1, chatsCopy}];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryWillRemergeChatsNotification" object:self userInfo:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = remergingCopy;
    v14 = remergingCopy;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        v18 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * v18);
          v20 = IMChatRegistryLogHandle(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v19;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Unregistering chat guid %@", buf, 0xCu);
          }

          v15 = [(IMChatRegistry *)self _unregisterChatWithGUID:v19 deleted:0];
          ++v18;
        }

        while (v16 != v18);
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
        v16 = v15;
      }

      while (v15);
    }

    chatsCopy = v30;
    v21 = [(IMChatRegistry *)self _copyMergedChatsPairedArrayFromMergedChatsArray:v30];
    sub_1A83BFED0(self, v21, 0);
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v36 = @"__kIMChatRegistryMergedPairsListKey";
    v23 = MEMORY[0x1E695E0F0];
    if (v21)
    {
      v23 = v21;
    }

    v37 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [defaultCenter2 __mainThreadPostNotificationName:@"__kIMChatRegistryDidRemergeChatsNotification" object:self userInfo:v24];

    remergingCopy = v31;
  }
}

- (id)_copyMergedChatsPairedArrayFromMergedChatsArray:(id)array
{
  v28 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    v10 = *MEMORY[0x1E69A6C68];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 objectForKey:v10];
        if (([v8 isEqualToString:v13] & 1) == 0)
        {
          if ([v4 count] && objc_msgSend(v8, "length"))
          {
            v14 = [MEMORY[0x1E69A6128] pairWithFirst:v4 second:v8];
            [v21 addObject:v14];

            v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
          }

          v15 = v13;

          v8 = v15;
        }

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = [v4 count];
  if (v16)
  {
    v16 = [v8 length];
    if (v16)
    {
      v17 = [MEMORY[0x1E69A6128] pairWithFirst:v4 second:v8];
      [v21 addObject:v17];
    }
  }

  v18 = IMChatRegistryLogHandle(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Completed re-constructing merged chat paired array", buf, 2u);
  }

  v19 = v21;
  return v19;
}

- (void)_handleMergedChatReconstructions:(id)reconstructions
{
  v34 = *MEMORY[0x1E69E9840];
  reconstructionsCopy = reconstructions;
  v4 = +[IMDaemonController sharedController];
  processCapabilities = [v4 processCapabilities];

  if ((processCapabilities & 0x2400000) != 0)
  {
    v25 = [(IMChatRegistry *)self _copyMergedChatsPairedArrayFromMergedChatsArray:reconstructionsCopy];
    v6 = +[IMDaemonController sharedController];
    v7 = [v6 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A6260] & v7) != 0)
    {
    }

    else
    {
      v9 = +[IMDaemonController sharedController];
      v10 = [v9 capabilitiesForListenerID:0];
      v11 = *MEMORY[0x1E69A62B0] & v10;

      if (!v11)
      {
        v14 = IMChatRegistryLogHandle(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Clearing chat registry", buf, 2u);
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryWillLoadNotification" object:0];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        cachedChats = [(IMChatRegistry *)self cachedChats];
        v17 = [cachedChats copy];

        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v19 = v18;
        if (v18)
        {
          v20 = *v28;
          do
          {
            v21 = 0;
            do
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v27 + 1) + 8 * v21);
              v23 = IMChatRegistryLogHandle(v18);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v33 = v22;
                _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
              }

              v18 = [(IMChatRegistry *)self _unregisterChat:v22 deleted:0];
              ++v21;
            }

            while (v19 != v21);
            v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
            v19 = v18;
          }

          while (v18);
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 __mainThreadPostNotificationName:@"__kIMChatRegistryDidLoadNotification" object:0];

        v13 = v25;
        goto LABEL_10;
      }
    }

    v13 = v25;
    [(IMChatRegistry *)self __handleMergedChatReconstructions:v25];
    [(IMChatRegistry *)self setUpInitialCallState];
LABEL_10:

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Bailing out of _handleMergedChatReconstructions as no precached chats are expected.", buf, 2u);
    }
  }

LABEL_11:
}

- (void)updateChatDictionaryArray:(id)array createdChat:(id)chat joinstate:(int64_t)joinstate setHasCommunicatedOveriMessage:(BOOL *)message
{
  joinstateCopy = joinstate;
  arrayCopy = array;
  chatCopy = chat;
  if ([arrayCopy count] >= 2)
  {
    v30 = *MEMORY[0x1E69A6B70];
    v29 = *MEMORY[0x1E69A6BE0];
    v28 = *MEMORY[0x1E69A6BC0];
    v27 = *MEMORY[0x1E69A6C08];
    v26 = *MEMORY[0x1E69A6B50];
    v9 = 1;
    do
    {
      v10 = [arrayCopy objectAtIndex:{v9, joinstateCopy}];
      v11 = [v10 objectForKey:v30];
      v12 = [v10 objectForKey:v29];
      intValue = [v12 intValue];

      [(IMChatRegistry *)self _registerChatDictionary:v10 forChat:chatCopy isIncoming:0 newGUID:v11 shouldPostNotification:0];
      [(IMChatRegistry *)self _updateInfo:v10 forGUID:v11 updatingUnreadCount:1 shouldPostNotifications:0];
      v14 = [v10 objectForKeyedSubscript:v28];
      longLongValue = [v14 longLongValue];

      if (!longLongValue)
      {
        [chatCopy setIsFiltered:0];
      }

      v16 = [v10 objectForKey:v27];
      v17 = [v16 objectForKey:@"service"];
      v18 = [IMServiceImpl serviceWithInternalName:v17];
      v19 = v18;
      if (!*message)
      {
        if (v18)
        {
          v20 = +[IMServiceImpl iMessageService];

          if (v19 == v20)
          {
            v21 = +[IMChatRegistry sharedRegistry];
            [v21 _setChatHasCommunicatedOveriMessage:chatCopy];

            *message = 1;
          }
        }
      }

      if ([v19 supportsMutatingGroupMembers])
      {
        isDiscontinued = [v19 isDiscontinued];
        if (joinstateCopy == 3 && (isDiscontinued & 1) == 0)
        {
          [chatCopy _setJoinState:intValue];
        }
      }

      domainIdentifiers = [chatCopy domainIdentifiers];
      v24 = [v10 objectForKey:v26];
      [domainIdentifiers setDomainIdentifiers:v24 forChatGUID:v11];

      ++v9;
    }

    while (v9 < [arrayCopy count]);
  }
}

- (void)_handleCachingAliasToCNIDMap:(id)map
{
  v14 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v5 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v5 startTimingForKey:@"_handleCachingAliasToCNIDMap"];
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v8 = *MEMORY[0x1E69A6298] & v7;

  if (!v8)
  {
    contactStore = [(IMChatRegistry *)self contactStore];
    [contactStore setHandleIDToCNIDMap:mapCopy];

    v9 = IMChatRegistryLogHandle([v5 stopTimingForKey:@"_handleCachingAliasToCNIDMap"]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v5 totalTimeForKey:@"_handleCachingAliasToCNIDMap"];
      v12 = 134217984;
      v13 = v11;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Caching AliasToCNIDMap completed. Took %f seconds", &v12, 0xCu);
    }

    goto LABEL_8;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Bailing out of handle Contacts cache construction due to kFZListenerCapPaginatedChatRegistry", &v12, 2u);
    }

LABEL_8:
  }
}

- (void)_handleChatReconstructions:(id)reconstructions
{
  v37 = *MEMORY[0x1E69E9840];
  reconstructionsCopy = reconstructions;
  v4 = +[IMDaemonController sharedController];
  v5 = [v4 capabilitiesForListenerID:0];
  v6 = *MEMORY[0x1E69A6298] & v5;

  if (!v6)
  {
    v8 = +[IMDaemonController sharedController];
    v9 = [v8 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A6260] & v9) == 0)
    {
      v10 = +[IMDaemonController sharedController];
      v11 = [v10 capabilitiesForListenerID:0];
      if ((*MEMORY[0x1E69A62B0] & v11) == 0)
      {
        v14 = +[IMDaemonController sharedController];
        v15 = [v14 capabilitiesForListenerID:0];
        v16 = *MEMORY[0x1E69A6258] & v15;

        if (!v16)
        {
          v18 = IMChatRegistryLogHandle(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Clearing chat registry", buf, 2u);
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryWillLoadNotification" object:0];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          cachedChats = [(IMChatRegistry *)self cachedChats];
          v21 = [cachedChats copy];

          v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
          v23 = v22;
          if (v22)
          {
            v24 = *v31;
            do
            {
              v25 = 0;
              do
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v30 + 1) + 8 * v25);
                v27 = IMChatRegistryLogHandle(v22);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v36 = v26;
                  _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
                }

                v22 = [(IMChatRegistry *)self _unregisterChat:v26 deleted:0];
                ++v25;
              }

              while (v23 != v25);
              v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
              v23 = v22;
            }

            while (v22);
          }

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 __mainThreadPostNotificationName:@"__kIMChatRegistryDidLoadNotification" object:0];

          goto LABEL_13;
        }

LABEL_10:
        cachedChats2 = [(IMChatRegistry *)self cachedChats];
        [(IMChatRegistry *)self setPreExistingAllChats:cachedChats2];

        chatGUIDToInfoMap = [(IMChatRegistry *)self chatGUIDToInfoMap];
        [chatGUIDToInfoMap removeAllObjects];

        v7 = IMChatRegistryLogHandle([(IMChatRegistry *)self __handleChatReconstructions:reconstructionsCopy]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Not doing 2 step chat registry load", buf, 2u);
        }

        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Bailing out of handle chat reconstructions due to kFZListenerCapPaginatedChatRegistry", buf, 2u);
    }

LABEL_12:
  }

LABEL_13:
}

- (void)__handleChatReconstructions:(id)reconstructions
{
  buf[7] = *MEMORY[0x1E69E9840];
  reconstructionsCopy = reconstructions;
  v4 = IMChatRegistryLogHandle(reconstructionsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Restoring chats", buf, 2u);
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = MarcoLoggingStringForMessageData();
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, " => chats: %@", buf, 0xCu);
    }
  }

  iMCoreSetupTimingCollection = [MEMORY[0x1E69A6170] IMCoreSetupTimingCollection];
  [iMCoreSetupTimingCollection startTimingForKey:@"IMCoreSetup: ChatReconstruction"];
  [(IMChatRegistry *)self setLoading:1];
  isFirstLoad = [(IMChatRegistry *)self isFirstLoad];
  v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cachedChats = [(IMChatRegistry *)self cachedChats];
  [v103 addObjectsFromArray:cachedChats];

  [(IMChatRegistry *)self _resetChatReconstructionGroupMaps];
  groupIDToChatMap = [(IMChatRegistry *)self groupIDToChatMap];
  [groupIDToChatMap removeAllObjects];

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = reconstructionsCopy;
  v107 = [obj countByEnumeratingWithState:&v132 objects:v139 count:16];
  if (!v107)
  {
    v111 = 0;
    goto LABEL_100;
  }

  v111 = 0;
  v105 = *MEMORY[0x1E69A6C08];
  v106 = *v133;
  v102 = *MEMORY[0x1E69A6BC0];
  do
  {
    v9 = 0;
    do
    {
      if (*v133 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v114 = *(*(&v132 + 1) + 8 * v9);
      v115 = [v114 objectForKey:@"guid"];
      v10 = [(IMChatRegistry *)self _cachedChatWithGUID:v115];
      v11 = [v114 objectForKey:v105];
      v113 = v11;
      if (v10)
      {
        if (![(IMChatRegistry *)self wantsHistoryReload])
        {
          [(IMChatRegistry *)self _registerChatDictionary:v114 forChat:v10 isIncoming:0 newGUID:v115 shouldPostNotification:0];
          [(IMChatRegistry *)self _updateInfo:v114 forGUID:v115 updatingUnreadCount:1];
          [v103 removeObjectIdenticalTo:v10];
          v24 = 0;
          goto LABEL_92;
        }

        selfCopy = self;
        if ((v111 & 1) == 0)
        {
          v13 = selfCopy;
          v14 = IMChatRegistryLogHandle(selfCopy);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryWillLoadNotification" object:v13];

          selfCopy = v13;
        }

        v112 = selfCopy;

        v16 = v113;
        v17 = v114;
        v18 = [v17 objectForKeyedSubscript:v102];
        integerValue = [v18 integerValue];

        if (integerValue >= 1)
        {
          v20 = +[IMChatRegistry sharedRegistry];
          if ([v20 currentMessageFilterMode] <= 0)
          {
          }

          else
          {
            v21 = MEMORY[0x1E69A8210];
            v22 = +[IMChatRegistry sharedRegistry];
            v23 = [v21 isFilterMode:integerValue subsetOf:{objc_msgSend(v22, "currentMessageFilterMode")}];

            if (!v23)
            {
              v24 = 0;
              goto LABEL_68;
            }
          }
        }

        if ([v16 count])
        {
          v50 = [v16 objectForKey:@"accountID"];
          v51 = [v16 objectForKey:@"account"];
          v52 = [v16 objectForKey:@"serviceName"];
          if (v50)
          {
            if (v51)
            {
              goto LABEL_55;
            }

LABEL_63:
            v51 = [v17 objectForKey:@"account"];
            if (!v52)
            {
              goto LABEL_64;
            }

LABEL_65:
            v54 = [IMServiceImpl serviceWithInternalName:v52];
          }

          else
          {
            v50 = [v17 objectForKey:@"accountID"];
            if (!v51)
            {
              goto LABEL_63;
            }

LABEL_55:
            if (v52)
            {
              goto LABEL_65;
            }

LABEL_64:
            v52 = [v17 objectForKey:@"serviceName"];
            if (v52)
            {
              goto LABEL_65;
            }

            v54 = 0;
          }

          v55 = +[IMAccountController sharedInstance];
          v56 = [v55 bestAccountForService:v54 login:v51 guid:v50];

          IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v16, v56, 1);
        }

        else
        {
          IMMessageFromIMMessageItemDictionary = 0;
        }

        v24 = IMMessageFromIMMessageItemDictionary;

LABEL_68:
        if (v24)
        {
          [(IMChatRegistry *)v112 _checkIfItemIsCorrupt:v24];
          v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v57 addObject:v24];
          v58 = v24;
          v59 = v10;
          _lastMessage = [v59 _lastMessage];
          v61 = _lastMessage;
          if (!_lastMessage)
          {
            goto LABEL_79;
          }

          if ([_lastMessage messageID] && objc_msgSend(v58, "messageID"))
          {
            time = [v58 time];
            time2 = [v61 time];
            v110 = [time compare:time2] == 1;

            if (!v110)
            {
              goto LABEL_81;
            }

LABEL_80:
            [v59 _insertHistoricalMessages:v57 queryID:@"Reconstruction" isRefresh:!isFirstLoad isHistoryQuery:0];
            goto LABEL_81;
          }

          if (![v61 messageID] && objc_msgSend(v58, "messageID"))
          {
LABEL_79:

            goto LABEL_80;
          }

          if ([v61 messageID])
          {
            [v58 messageID];
          }

LABEL_81:
        }

        [(IMChatRegistry *)v112 _registerChatDictionary:v17 forChat:v10 isIncoming:0 newGUID:v115 shouldPostNotification:0];
        [(IMChatRegistry *)v112 _updateInfo:v17 forGUID:v115 updatingUnreadCount:1];
        if (([v104 containsObjectIdenticalTo:v10] & 1) == 0)
        {
          [v104 addObject:v10];
        }

        [v103 removeObjectIdenticalTo:v10];
        v111 = 1;
        goto LABEL_92;
      }

      v25 = IMChatRegistryLogHandle(v11);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, " => no existing chat, we'll create one", buf, 2u);
      }

      v26 = v113;
      v27 = v114;
      v28 = [v27 objectForKeyedSubscript:v102];
      integerValue2 = [v28 integerValue];

      if (integerValue2 >= 1)
      {
        v30 = +[IMChatRegistry sharedRegistry];
        if ([v30 currentMessageFilterMode] <= 0)
        {
        }

        else
        {
          v31 = MEMORY[0x1E69A8210];
          v32 = +[IMChatRegistry sharedRegistry];
          v33 = [v31 isFilterMode:integerValue2 subsetOf:{objc_msgSend(v32, "currentMessageFilterMode")}];

          if (!v33)
          {
            v24 = 0;
            goto LABEL_31;
          }
        }
      }

      sub_1A84E3C24(v26, v27, buf);
      v24 = buf[0];
LABEL_31:

      if (v24)
      {
        [(IMChatRegistry *)self _checkIfItemIsCorrupt:v24];
        v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v109 addObject:v24];
      }

      else
      {
        v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v131 = 0;
      v130 = 0;
      v10 = sub_1A84E342C(self, v27, v109, 1, &v131, &v130);
      v34 = v130;
      log = v34;
      if (v131 == 1)
      {
        [v10 _startTiming:iMCoreSetupTimingCollection];
        [v98 addObject:v10];
        selfCopy2 = self;
        v36 = selfCopy2;
        if ((v111 & 1) == 0)
        {
          v37 = IMChatRegistryLogHandle(selfCopy2);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
          }

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 __mainThreadPostNotificationName:@"__kIMChatRegistryWillLoadNotification" object:v36];
        }

        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            guid = [v10 guid];
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = guid;
            _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_DEBUG, "   Loaded chat: %@", buf, 0xCu);
          }
        }

        [(IMChatRegistry *)v36 _registerChatDictionary:v27 forChat:v10 isIncoming:0 newGUID:log shouldPostNotification:0];
        v111 = 1;
        goto LABEL_88;
      }

      v41 = IMChatRegistryLogHandle(v34);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        guid2 = [v10 guid];
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = guid2;
        _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_DEFAULT, "Not registering: %@, already existing", buf, 0xCu);
      }

      [(IMChatRegistry *)self _registerChatDictionary:v27 forChat:v10 isIncoming:0 newGUID:log shouldPostNotification:0];
      [v103 removeObjectIdenticalTo:v10];
      v43 = v24;
      v44 = v10;
      _lastMessage2 = [v44 _lastMessage];
      v46 = _lastMessage2;
      if (!_lastMessage2)
      {
        goto LABEL_86;
      }

      if (![_lastMessage2 messageID] || !objc_msgSend(v43, "messageID"))
      {
        if ([v46 messageID] || !objc_msgSend(v43, "messageID"))
        {
          if ([v46 messageID])
          {
            [v43 messageID];
          }

          goto LABEL_88;
        }

LABEL_86:

LABEL_87:
        [v44 _insertHistoricalMessages:v109 queryID:@"Reconstruction" isRefresh:!isFirstLoad isHistoryQuery:0];
        goto LABEL_88;
      }

      time3 = [v43 time];
      time4 = [v46 time];
      v49 = [time3 compare:time4] == 1;

      if (v49)
      {
        goto LABEL_87;
      }

LABEL_88:
      [(IMChatRegistry *)self _updateInfo:v27 forGUID:v115 updatingUnreadCount:1];
      if (v10 && ([v104 containsObjectIdenticalTo:v10] & 1) == 0)
      {
        [v104 addObject:v10];
      }

LABEL_92:
      [(IMChatRegistry *)self _checkIfItemIsCorrupt:v24];
      service = [v24 service];
      v65 = +[IMServiceImpl iMessageService];
      internalName = [v65 internalName];
      v67 = [service isEqualToIgnoringCase:internalName];

      if (v67)
      {
        [(IMChatRegistry *)self _setChatHasCommunicatedOveriMessage:v10];
      }

      [v10 _setJoinState:{-[IMChatRegistry _winningJoinStateForExistingChat:incomingDictionary:](self, "_winningJoinStateForExistingChat:incomingDictionary:", v10, v114)}];

      ++v9;
    }

    while (v107 != v9);
    v68 = [obj countByEnumeratingWithState:&v132 objects:v139 count:16];
    v107 = v68;
  }

  while (v68);
LABEL_100:

  [iMCoreSetupTimingCollection startTimingForKey:@"IMCoreSetup: Updating unread counts"];
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v69 = v104;
  v70 = [v69 countByEnumeratingWithState:&v126 objects:v138 count:16];
  if (v70)
  {
    v71 = *v127;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v127 != v71)
        {
          objc_enumerationMutation(v69);
        }

        [(IMChatRegistry *)self _updateUnreadCountForChat:*(*(&v126 + 1) + 8 * i)];
      }

      v70 = [v69 countByEnumeratingWithState:&v126 objects:v138 count:16];
    }

    while (v70);
  }

  v73 = IMChatRegistryLogHandle([iMCoreSetupTimingCollection stopTimingForKey:@"IMCoreSetup: Updating unread counts"]);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v103;
    _os_log_impl(&dword_1A823F000, v73, OS_LOG_TYPE_DEFAULT, "Removing stale chats: %@", buf, 0xCu);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v74 = v103;
  v75 = [v74 countByEnumeratingWithState:&v122 objects:v137 count:16];
  if (v75)
  {
    v76 = *v123;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v123 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v122 + 1) + 8 * j);
        if ([v78 joinState] == 2)
        {
          v79 = IMChatRegistryLogHandle(2);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_DEFAULT, "We're in process of joining, let's keep this around", buf, 2u);
          }
        }

        else
        {
          selfCopy3 = self;
          v81 = selfCopy3;
          if ((v111 & 1) == 0)
          {
            v82 = IMChatRegistryLogHandle(selfCopy3);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_1A823F000, v82, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
            }

            defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter3 __mainThreadPostNotificationName:@"__kIMChatRegistryWillLoadNotification" object:v81];
          }

          v85 = IMChatRegistryLogHandle(v84);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = v78;
            _os_log_impl(&dword_1A823F000, v85, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
          }

          [(IMChatRegistry *)v81 _unregisterChat:v78 deleted:0];
          v111 = 1;
        }
      }

      v75 = [v74 countByEnumeratingWithState:&v122 objects:v137 count:16];
    }

    while (v75);
  }

  v87 = IMChatRegistryLogHandle(v86);
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A823F000, v87, OS_LOG_TYPE_DEFAULT, "Done restoring chats", buf, 2u);
  }

  if (iMCoreSetupTimingCollection)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    cachedChats2 = [(IMChatRegistry *)self cachedChats];
    v89 = [cachedChats2 countByEnumeratingWithState:&v118 objects:v136 count:16];
    if (v89)
    {
      v90 = *v119;
      do
      {
        for (k = 0; k != v89; ++k)
        {
          if (*v119 != v90)
          {
            objc_enumerationMutation(cachedChats2);
          }

          [*(*(&v118 + 1) + 8 * k) _endTiming];
        }

        v89 = [cachedChats2 countByEnumeratingWithState:&v118 objects:v136 count:16];
      }

      while (v89);
    }
  }

  v92 = [iMCoreSetupTimingCollection stopTimingForKey:@"IMCoreSetup: ChatReconstruction"];
  if (v111)
  {
    v93 = IMChatRegistryLogHandle(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A823F000, v93, OS_LOG_TYPE_DEFAULT, "** Posting did load notification", buf, 2u);
    }

    if (isFirstLoad)
    {
      v94 = 0;
    }

    else
    {
      v95 = MEMORY[0x1E695DF20];
      v96 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v94 = [v95 dictionaryWithObjectsAndKeys:{v96, @"__kIMChatRegistryDidLoadIsRefreshKey", 0}];
    }

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 __mainThreadPostNotificationName:@"__kIMChatRegistryDidLoadNotification" object:self userInfo:v94];
  }

  [(IMChatRegistry *)self setLoading:0];
  [(IMChatRegistry *)self setFirstLoad:0];
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v117 = v98;
    im_dispatch_after();
  }

  [(IMChatRegistry *)self setUpInitialCallState];
}

- (void)setupComplete:(BOOL)complete info:(id)info
{
  v47 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v43 = "[IMChatRegistry(IMChatRegistry_DaemonIncoming) setupComplete:info:]";
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v7 = +[IMDaemonController sharedController];
  listener = [v7 listener];
  v9 = [listener _stampForContext:@"DBModificationStamp"];

  v11 = IMChatRegistryLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v9;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Noting the modification stamp: %@", buf, 0xCu);
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A7C18]];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v17)
    {
      v18 = *v39;
      do
      {
        v19 = 0;
        do
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v38 + 1) + 8 * v19);
          v21 = objc_alloc(MEMORY[0x1E69A8340]);
          v22 = [v21 initWithDictionary:{v20, v38}];
          [v15 addObject:v22];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v17);
    }

    v23 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A7C20]];
    v24 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A7C10]];
    if ([v16 count] || v23 || v24)
    {
      v25 = [objc_alloc(MEMORY[0x1E69A8348]) initWithDeletedGUIDs:0 updatedReports:v15 isReplacement:1 fromStamp:v23 toStamp:v24];
      [(IMChatRegistry *)self unreadCountReportsUpdated:v25];
    }
  }

  else
  {
    v15 = [infoCopy objectForKey:*MEMORY[0x1E69A7C08]];
    -[IMChatRegistry unreadCountChanged:](self, "unreadCountChanged:", [v15 integerValue]);
  }

  v26 = [infoCopy objectForKey:*MEMORY[0x1E69A7BD0]];
  -[IMChatRegistry lastFailedMessageDateChanged:](self, "lastFailedMessageDateChanged:", [v26 longLongValue]);

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      unreadCount = [(IMChatRegistry *)self unreadCount];
      *buf = 67109120;
      LODWORD(v43) = unreadCount;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Unread count is %d", buf, 8u);
    }
  }

  v29 = IMOSLoggingEnabled();
  if (v29)
  {
    v30 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      lastFailedMessageDate = [(IMChatRegistry *)self lastFailedMessageDate];
      *buf = 134217984;
      v43 = lastFailedMessageDate;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Last failed message date is %lld", buf, 0xCu);
    }
  }

  v32 = IMChatRegistryLogHandle(v29);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v33)
    {
      historyModificationStamp = [(IMChatRegistry *)self historyModificationStamp];
      *buf = 138412546;
      v43 = v9;
      v44 = 2112;
      v45 = historyModificationStamp;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "Updating modification stamp to: %@     old was: %@", buf, 0x16u);
    }

    v35 = [(IMChatRegistry *)self setHistoryModificationStamp:v9];
  }

  else
  {
    if (v33)
    {
      historyModificationStamp2 = [(IMChatRegistry *)self historyModificationStamp];
      *buf = 138412290;
      v43 = historyModificationStamp2;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "No modification stamp to update, old is: %@", buf, 0xCu);
    }
  }

  v37 = IMChatRegistryLogHandle(v35);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_DEFAULT, "   history may by out of date at this point, queries will all be non cached", buf, 2u);
  }

  [(IMChatRegistry *)self setWantsHistoryReload:1];
}

- (void)_chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = chats;
  v30 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v30)
  {
    v29 = *v36;
    v25 = *MEMORY[0x1E69A6BC0];
    v26 = *MEMORY[0x1E69A6C08];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v7 = [v6 objectForKey:@"guid"];
        v8 = [v6 objectForKey:@"chatIdentifier"];
        if ([v8 isEqualToIgnoringCase:identifierCopy])
        {
          v32 = [v6 objectForKey:v26];
          v9 = v6;
          v10 = [v9 objectForKeyedSubscript:v25];
          integerValue = [v10 integerValue];

          if (integerValue < 1 || (sub_1A84E3F50(integerValue)) && [v32 count])
          {
            sub_1A84E3DF0(v32, v9, buf);
            v12 = *buf;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            [(IMChatRegistry *)self _checkIfItemIsCorrupt:v12];
          }

          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v15 = v14;
          v16 = v12 == 0;
          if (!v14)
          {
            v16 = 1;
          }

          if (!v16)
          {
            CFArrayAppendValue(v14, v12);
          }

          buf[0] = 0;
          v34 = 0;
          v17 = sub_1A84E342C(self, v9, v15, 1, buf, &v34);
          v18 = v34;
          [(IMChatRegistry *)self _registerChatDictionary:v9 forChat:v17 isIncoming:0 newGUID:v18];
          [(IMChatRegistry *)self _updateInfo:v9 forGUID:v7 updatingUnreadCount:1];
          if (buf[0])
          {
            goto LABEL_35;
          }

          v28 = v12;
          _lastMessage = [v17 _lastMessage];
          v20 = _lastMessage;
          if (_lastMessage)
          {
            if ([_lastMessage messageID] && objc_msgSend(v28, "messageID"))
            {
              time = [v28 time];
              time2 = [v20 time];
              v23 = [time compare:time2] == 1;

              if (!v23)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            if ([v20 messageID] || !objc_msgSend(v28, "messageID"))
            {
              if ([v20 messageID])
              {
                [v28 messageID];
              }

              goto LABEL_35;
            }
          }

LABEL_34:
          [v17 _insertHistoricalMessages:v15 queryID:@"Reconstruction" isRefresh:0 isHistoryQuery:0];
LABEL_35:
          [v17 _setJoinState:{-[IMChatRegistry _winningJoinStateForExistingChat:incomingDictionary:](self, "_winningJoinStateForExistingChat:incomingDictionary:", v17, v9)}];

          goto LABEL_36;
        }

        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = identifierCopy;
            v40 = 2112;
            v41 = v8;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "We got back up the wrong chat. Expected %@, got %@", buf, 0x16u);
          }
        }

LABEL_36:
      }

      v30 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v30);
  }

  chatsBeingLoadedMap = [(IMChatRegistry *)self chatsBeingLoadedMap];
  [chatsBeingLoadedMap removeObjectForKey:identifierCopy];

  [(IMChatRegistry *)self setLoading:0];
  [(IMChatRegistry *)self setFirstLoad:0];
}

- (void)_previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  chatCopy = chat;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:dsCopy];
  v9 = [chatCopy objectForKey:@"participants"];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A83C4578;
  v16[3] = &unk_1E78133D0;
  v11 = v10;
  v17 = v11;
  [v9 enumerateObjectsUsingBlock:v16];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v8, "hash")];
  if ([v11 isEqualToSet:v8])
  {
    v18 = chatCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [(IMChatRegistry *)self _chatLoadedWithChatIdentifier:v12 chats:v13];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "We got back up the wrong chat. Expected %@, got %@", buf, 0x16u);
      }
    }

    chatsBeingLoadedMap = [(IMChatRegistry *)self chatsBeingLoadedMap];
    [chatsBeingLoadedMap removeObjectForKey:v12];

    [(IMChatRegistry *)self setLoading:0];
    [(IMChatRegistry *)self setFirstLoad:0];
  }
}

- (void)chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats
{
  identifierCopy = identifier;
  chatsCopy = chats;
  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  v10 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6260]) & v9;

  if (v10)
  {
    [(IMChatRegistry *)self _chatLoadedWithChatIdentifier:identifierCopy chats:chatsCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Bailing out of handle chatLoadedWithChatIdentifier due to kFZListenerCapOnDemandChatRegistry cap not being present", v12, 2u);
    }
  }
}

- (void)previouslyBlackholedChatLoadedWithChatIdentifier:(id)identifier chats:(id)chats
{
  identifierCopy = identifier;
  chatsCopy = chats;
  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  v10 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6260]) & v9;

  if (v10)
  {
    [(IMChatRegistry *)self _chatLoadedWithChatIdentifier:identifierCopy chats:chatsCopy];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMChatPreviouslyBlackholedChatHasBeenLoaded", 0, 0, 1u);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Bailing out of handle chatLoadedWithChatIdentifier due to kFZListenerCapOnDemandChatRegistry cap not being present", v13, 2u);
    }
  }
}

- (void)previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat
{
  dsCopy = ds;
  chatCopy = chat;
  v8 = +[IMDaemonController sharedController];
  v9 = [v8 capabilitiesForListenerID:0];
  v10 = *MEMORY[0x1E69A6260] & v9;

  if (v10)
  {
    [(IMChatRegistry *)self _previouslyBlackholedChatLoadedWithHandleIDs:dsCopy chat:chatCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Bailing out of handle chatLoadedWithChatIdentifier due to kFZListenerCapChats cap not being present", v12, 2u);
    }
  }
}

- (void)blackholedChatsExist:(BOOL)exist
{
  existCopy = exist;
  v4 = +[IMDaemonController sharedController];
  v5 = [v4 capabilitiesForListenerID:0];
  v6 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6260]) & v5;

  if (v6)
  {
    v8 = +[IMChatRegistry sharedRegistry];
    [v8 _updateBlackholedChatsExist:existCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Bailing out of handle blackholedChatsExist due to kFZListenerCapChats cap not being present", buf, 2u);
    }
  }
}

- (void)screenTimeEnablementChanged:(BOOL)changed
{
  changedCopy = changed;
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[IMDaemonController sharedController];
  v5 = [v4 capabilitiesForListenerID:0];
  if ((*MEMORY[0x1E69A6260] & v5) == 0)
  {
    v6 = +[IMDaemonController sharedController];
    v7 = [v6 capabilitiesForListenerID:0];
    if ((*MEMORY[0x1E69A62B0] & v7) == 0)
    {
      v13 = +[IMDaemonController sharedController];
      v14 = [v13 capabilitiesForListenerID:0];
      v15 = *MEMORY[0x1E69A6258] & v14;

      if (!v15)
      {
        return;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"Disabled";
      if (changedCopy)
      {
        v9 = @"Enabled";
      }

      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "ScreenTime is: %@", &v16, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = defaultCenter;
  v12 = &off_1EB2E5838;
  if (!changedCopy)
  {
    v12 = &off_1EB2E5840;
  }

  [defaultCenter __mainThreadPostNotificationName:*v12 object:0 userInfo:0];
}

- (void)groupPhotoUpdatedForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account userInfo:(id)info
{
  styleCopy = style;
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = infoCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Received groupPhotoUpdatedForChatIdentifier: %@ userInfo: %@", &v17, 0x16u);
    }
  }

  v14 = [(IMChatRegistry *)self _existingChatWithIdentifier:identifierCopy style:styleCopy account:accountCopy];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found chat %@", &v17, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"__kIMChatGroupPhotoChangedNotification" object:v14 userInfo:infoCopy];
}

- (void)transcriptBackgroundUpdatedForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account userInfo:(id)info
{
  styleCopy = style;
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138413058;
      v18 = identifierCopy;
      v19 = 1024;
      v20 = styleCopy;
      v21 = 2112;
      v22 = accountCopy;
      v23 = 2112;
      v24 = infoCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Received transcriptBackgroundUpdatedForChatIdentifier: %@, style: %d, accountID: %@, userInfo: %@", &v17, 0x26u);
    }
  }

  v14 = [(IMChatRegistry *)self _existingChatWithIdentifier:identifierCopy style:styleCopy account:accountCopy];
  if (v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found chat %@", &v17, 0xCu);
      }
    }

    [(IMChatRegistry *)self _updateTranscriptBackgroundForChat:v14 shouldPostNotification:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"__kIMChatTranscriptBackgroundChangedNotification" object:v14 userInfo:0];
  }

  else
  {
    defaultCenter = IMLogHandleForCategory();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3FE4(identifierCopy, defaultCenter);
    }
  }
}

- (id)_participantsForChatDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accountID"];
  v5 = +[IMAccountController sharedInstance];
  v24 = v4;
  v6 = [v5 accountForUniqueID:v4];

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = dictionaryCopy;
  obj = [dictionaryCopy objectForKeyedSubscript:@"participants"];
  v7 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v10 = *MEMORY[0x1E69A6310];
    v30 = *MEMORY[0x1E69A62E8];
    v31 = *MEMORY[0x1E69A6390];
    v29 = *MEMORY[0x1E69A6350];
    do
    {
      v11 = 0;
      v26 = v8;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v12 objectForKeyedSubscript:v31];
        v15 = [v12 objectForKeyedSubscript:v30];
        v16 = [v12 objectForKeyedSubscript:v29];
        v17 = [v6 imHandleWithID:v13 alreadyCanonical:1];
        v18 = v17;
        if (v17)
        {
          [v17 setPersonCentricID:v16];
          [v28 addObject:v18];
          [v18 _setOriginalID:v14 countryCode:v15 updateSiblings:1];
        }

        else
        {
          v19 = v10;
          v20 = v9;
          v21 = v6;
          v22 = IMChatRegistryLogHandle(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v37 = v13;
            v38 = 2112;
            v39 = v14;
            v40 = 2112;
            v41 = v15;
            v42 = 2112;
            v43 = v16;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find handle for participant id: %@ unformatted: %@ countryCode: %@ personCentricID: %@", buf, 0x2Au);
          }

          v6 = v21;
          v9 = v20;
          v10 = v19;
          v8 = v26;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v8);
  }

  return v28;
}

- (id)_cachedChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  participantsCopy = participants;
  hashCopy = hash;
  v11 = [dictionaryCopy objectForKeyedSubscript:@"style"];
  intValue = [v11 intValue];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"guid"];
  v14 = [(IMChatRegistry *)self _cachedChatWithGUID:v13];

  if (!v14)
  {
    switch(intValue)
    {
      case '#':
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            LOWORD(v20[0]) = 0;
            _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Room style chats are no longer supported", v20, 2u);
          }
        }

        v17 = [dictionaryCopy objectForKeyedSubscript:@"roomName"];
        v14 = [(IMChatRegistry *)self _cachedChatWithIdentifier:v17 style:35];

        break;
      case '+':
        v15 = [(IMChatRegistry *)self _cachedGroupChatForGroupChatDictionary:dictionaryCopy participants:participantsCopy participantHash:hashCopy];
        goto LABEL_7;
      case '-':
        v15 = [(IMChatRegistry *)self _cachedOneToOneChatForChatDictionary:dictionaryCopy participants:participantsCopy participantHash:hashCopy];
LABEL_7:
        v14 = v15;
        break;
      default:
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20[0] = 67109120;
            v20[1] = intValue;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Unknown chat style %d", v20, 8u);
          }
        }

        v14 = 0;
        break;
    }
  }

  return v14;
}

- (id)_cachedOneToOneChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  participantsCopy = participants;
  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C68]];
  v10 = [participantsCopy count];
  if (v10 != 1)
  {
    lastObject = IMChatRegistryLogHandle(v10);
    if (!os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:
      __im_copyChatDictionaryWithRedactedMessageContent = 0;
      goto LABEL_13;
    }

    __im_copyChatDictionaryWithRedactedMessageContent = [dictionaryCopy __im_copyChatDictionaryWithRedactedMessageContent];
    v18 = 138412546;
    v19 = participantsCopy;
    v20 = 2112;
    v21 = __im_copyChatDictionaryWithRedactedMessageContent;
    _os_log_impl(&dword_1A823F000, lastObject, OS_LOG_TYPE_DEFAULT, "Chat has 1-1 chat style but incorrect count of participants: %@ dictionary: %@", &v18, 0x16u);
LABEL_11:

    goto LABEL_12;
  }

  lastObject = [participantsCopy lastObject];
  v12 = [(IMChatRegistry *)self _cachedChatWithHandle:lastObject];
  if (v12)
  {
    __im_copyChatDictionaryWithRedactedMessageContent = v12;
  }

  else
  {
    __im_copyChatDictionaryWithRedactedMessageContent = [(IMChatRegistry *)self _cachedChatWithPersonID:v9];
    if (!__im_copyChatDictionaryWithRedactedMessageContent)
    {
      goto LABEL_13;
    }
  }

  chatStyle = [__im_copyChatDictionaryWithRedactedMessageContent chatStyle];
  if (chatStyle != 45)
  {
    v15 = IMChatRegistryLogHandle(chatStyle);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      __im_copyChatDictionaryWithRedactedMessageContent2 = [dictionaryCopy __im_copyChatDictionaryWithRedactedMessageContent];
      v18 = 138413058;
      v19 = lastObject;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = __im_copyChatDictionaryWithRedactedMessageContent;
      v24 = 2112;
      v25 = __im_copyChatDictionaryWithRedactedMessageContent2;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Found chat with handle %@ (pcID: %@) but rejecting as style is not instant message style, chat: %@ dictionary: %@", &v18, 0x2Au);
    }

    goto LABEL_11;
  }

LABEL_13:

  return __im_copyChatDictionaryWithRedactedMessageContent;
}

- (id)_cachedGroupChatForGroupChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash
{
  v126 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  participantsCopy = participants;
  hashCopy = hash;
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B18]];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled && ([v10 hasPrefix:*MEMORY[0x1E69A7DB0]] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_86;
  }

  v101 = v10;
  v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6CA8]];
  intValue = [v14 intValue];

  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B78]];
  v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B48]];
  v103 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C68]];
  v102 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C88]];
  guid = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6AF0]];
  v18 = +[IMAccountController sharedInstance];
  v98 = guid;
  v106 = [v18 accountForUniqueID:guid];

  v100 = v15;
  v19 = [(IMChatRegistry *)self _cachedChatWithGroupID:v15];
  v95 = v19 != 0;
  v104 = v19;
  v105 = v16;
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v21 = IMChatRegistryLogHandle(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    guid = [v20 guid];
    displayName = [v20 displayName];
    personCentricID = [v104 personCentricID];
    *buf = 138413314;
    v119 = guid;
    v120 = 2112;
    *v121 = v15;
    *&v121[8] = 2112;
    v122 = displayName;
    *v123 = 2112;
    *&v123[2] = v16;
    v124 = 2112;
    v125 = personCentricID;
    _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Found existing candidate chat guid: %@ with groupID: %@ ec displayName %@ displayName %@ existing pcmid %@", buf, 0x34u);

    v20 = v104;
  }

  participants = [v20 participants];
  v25 = [(IMChatRegistry *)self _sortedParticipantIDHashForParticipants:participants];

  v93 = v25;
  v92 = [hashCopy isEqualToString:v25];
  v26 = [v16 length];
  if (v26 || ([v20 displayName], guid = objc_claimAutoreleasedReturnValue(), objc_msgSend(guid, "length")))
  {
    [v20 displayName];
    v28 = v27 = v16;
    if (v27 == v28)
    {
      v30 = 1;
    }

    else
    {
      displayName2 = [v20 displayName];
      v30 = [v27 isEqualToString:displayName2];

      v20 = v104;
    }

    if (v26)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = 1;
  }

LABEL_16:
  personCentricID2 = [v20 personCentricID];
  v96 = participantsCopy;
  if (v103 == personCentricID2)
  {
    v33 = 1;
  }

  else
  {
    personCentricID3 = [v20 personCentricID];
    v33 = [v103 isEqualToString:personCentricID3];

    v20 = v104;
  }

  [v20 chatIdentifier];
  v35 = v34 = v20;
  v36 = [v101 isEqualToString:v35];

  service = [v106 service];
  groupsMergeDisplayNames = [service groupsMergeDisplayNames];

  account = [v34 account];
  service2 = [account service];
  groupsMergeDisplayNames2 = [service2 groupsMergeDisplayNames];

  v43 = groupsMergeDisplayNames2 | groupsMergeDisplayNames | v30;
  if (v92 & (v43 & v33 | v36))
  {
    v13 = v34;

    participantsCopy = v96;
    v16 = v105;
    v44 = v34;
    goto LABEL_64;
  }

  v45 = IMChatRegistryLogHandle(v42);
  v16 = v105;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    guid2 = [v104 guid];
    v47 = [dictionaryCopy objectForKeyedSubscript:@"guid"];
    *buf = 138413314;
    v119 = guid2;
    v120 = 1024;
    *v121 = v92;
    *&v121[4] = 1024;
    *&v121[6] = v43 & 1;
    LOWORD(v122) = 1024;
    *(&v122 + 2) = v33;
    HIWORD(v122) = 2112;
    *v123 = v47;
    _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_DEFAULT, "Found candidate chat %@ but rejected matchingParticipantHash: %{BOOL}d matchingDisplayName: %{BOOL}d matchingPersonCentricID: %{BOOL}d dictionary guid: %@", buf, 0x28u);
  }

  participantsCopy = v96;
LABEL_24:
  service3 = [v106 service];
  if (([service3 groupsMergeDisplayNames] & 1) == 0)
  {
LABEL_36:

    v44 = v104;
    goto LABEL_37;
  }

  v49 = [v16 length];

  v44 = v104;
  if (!v49)
  {
    goto LABEL_37;
  }

  v97 = participantsCopy;
  v94 = dictionaryCopy;
  [(IMChatRegistry *)self _cachedChatsWithDisplayName:v16];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  service3 = v115 = 0u;
  v50 = [service3 countByEnumeratingWithState:&v112 objects:v117 count:16];
  if (!v50)
  {
LABEL_35:

    dictionaryCopy = v94;
    participantsCopy = v97;
    v16 = v105;
    goto LABEL_36;
  }

  v51 = v50;
  v52 = *v113;
LABEL_28:
  v53 = 0;
  while (1)
  {
    if (*v113 != v52)
    {
      objc_enumerationMutation(service3);
    }

    v54 = *(*(&v112 + 1) + 8 * v53);
    participants2 = [v54 participants];
    v56 = [(IMChatRegistry *)self _sortedParticipantIDHashForParticipants:participants2];

    account2 = [v54 account];
    serviceName = [account2 serviceName];

    if ([hashCopy isEqualToString:v56])
    {
      serviceName2 = [v106 serviceName];
      v60 = [serviceName isEqualToString:serviceName2];

      if (v60)
      {
        break;
      }
    }

    if (v51 == ++v53)
    {
      v51 = [service3 countByEnumeratingWithState:&v112 objects:v117 count:16];
      if (v51)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  v13 = v54;

  dictionaryCopy = v94;
  participantsCopy = v97;
  v44 = v104;
  v16 = v105;
  if (v13)
  {
    goto LABEL_54;
  }

LABEL_37:
  if (((IMMergeNamedGroups() & 1) != 0 || !v16) && [participantsCopy count])
  {
    groupParticipantToChatsMap = [(IMChatRegistry *)self groupParticipantToChatsMap];
    v62 = [groupParticipantToChatsMap objectForKeyedSubscript:hashCopy];

    v63 = [v62 count];
    if (v63)
    {
      v64 = IMChatRegistryLogHandle(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v119 = participantsCopy;
        _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_DEFAULT, "Existing chats for unnamed group with same participants, participants to match %@", buf, 0xCu);
      }

      v95 = 1;
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v65 = v62;
    v66 = [v65 countByEnumeratingWithState:&v108 objects:v116 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = participantsCopy;
      v69 = *v109;
      while (2)
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v109 != v69)
          {
            objc_enumerationMutation(v65);
          }

          v71 = *(*(&v108 + 1) + 8 * i);
          displayName3 = [v71 displayName];
          v73 = [displayName3 isEqualToString:v105];

          if (v73)
          {
            v75 = IMChatRegistryLogHandle(v74);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              participants3 = [v71 participants];
              personCentricID4 = [v71 personCentricID];
              *buf = 138412546;
              v119 = participants3;
              v120 = 2112;
              *v121 = personCentricID4;
              _os_log_impl(&dword_1A823F000, v75, OS_LOG_TYPE_DEFAULT, "Matched chat with participants %@ pcmid %@", buf, 0x16u);
            }

            v13 = v71;
            goto LABEL_61;
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v108 objects:v116 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_61:
      participantsCopy = v68;
      v16 = v105;
    }

    else
    {
      v13 = 0;
    }

    v44 = v104;
    if (!v95)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v13 = 0;
LABEL_54:
    if (!v44)
    {
      goto LABEL_66;
    }
  }

LABEL_64:
  v78 = [participantsCopy count];
  if (v78 > 1 || intValue == 43)
  {
    v79 = IMChatRegistryLogHandle(v78);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      guid3 = [v13 guid];
      v81 = [participantsCopy arrayByApplyingSelector:"ID"];
      *buf = 138413314;
      v119 = guid3;
      v120 = 2112;
      *v121 = v16;
      *&v121[8] = 2112;
      v122 = v100;
      *v123 = 2112;
      *&v123[2] = v103;
      v124 = 2112;
      v125 = v81;
      _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_DEFAULT, " ==>  chatForChatDictionary info for chat we matched guid %@ displayName %@ groupID: %@ pcmid %@ participants %@", buf, 0x34u);
    }

    if (v13)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

LABEL_66:
  if (!v13)
  {
LABEL_71:
    serviceName3 = [v106 serviceName];
    v83 = IMCopyAnyServiceGUIDForChat();
    v84 = IMAdditionalChatRegistryLoggingEnabled();
    if (v84)
    {
      v85 = IMChatRegistryLogHandle(v84);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v119 = serviceName3;
        v120 = 2112;
        *v121 = v102;
        *&v121[8] = 2112;
        v122 = v83;
        _os_log_impl(&dword_1A823F000, v85, OS_LOG_TYPE_DEFAULT, "Looking up chat based on service name [%@] and roomName [%@] [%@]", buf, 0x20u);
      }
    }

    v13 = [(IMChatRegistry *)self _cachedChatWithGUID:v83];
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x1E69A8070]2 isOneChatEnabled];

    if ((isOneChatEnabled & 1) == 0 && !v13)
    {
      [serviceName3 isEqualToString:*MEMORY[0x1E69A7AE0]];
      v88 = IMCopyGUIDForChat();

      v13 = [(IMChatRegistry *)self _cachedChatWithGUID:v88];
      v83 = v88;
    }

    if (v16)
    {
      v89 = IMAdditionalChatRegistryLoggingEnabled();
      if (v89)
      {
        v90 = IMChatRegistryLogHandle(v89);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v119 = v16;
          _os_log_impl(&dword_1A823F000, v90, OS_LOG_TYPE_DEFAULT, "Updating chat's display name:%@", buf, 0xCu);
        }
      }

      [v13 _updateDisplayName:v16];
    }

    v44 = v104;
  }

LABEL_85:

  v10 = v101;
LABEL_86:

  return v13;
}

- (void)movedMessageGUIDsToRecentlyDeleted:(id)deleted forChatWithGUID:(id)d queryID:(id)iD deletionDate:(id)date
{
  v21 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  v14 = IMChatRegistryLogHandle(dateCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = iDCopy;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: moved messages to recently deleted for query: %@", &v19, 0xCu);
  }

  if (!iDCopy || (-[IMChatRegistry daemonQueryController](self, "daemonQueryController"), v15 = objc_claimAutoreleasedReturnValue(), [v15 queries], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKey:", iDCopy), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, -[IMChatRegistry daemonQueryController](self, "daemonQueryController"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "completeQuery:", iDCopy), v18, !v17))
  {
    [(IMChatRegistry *)self _daemonMovedMessagesWithGUIDsToRecentlyDeleted:deletedCopy chatGUID:dCopy deleteDate:dateCopy];
  }
}

- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)ds queryID:(id)d deletionDate:(id)date
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  dateCopy = date;
  v11 = IMChatRegistryLogHandle(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = dCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: moved messages from chats to recently deleted for query: %@", buf, 0xCu);
  }

  if (!dCopy || (-[IMChatRegistry daemonQueryController](self, "daemonQueryController"), v12 = objc_claimAutoreleasedReturnValue(), [v12 queries], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", dCopy), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, -[IMChatRegistry daemonQueryController](self, "daemonQueryController"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "completeQuery:", dCopy), v15, !v14))
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_1A83C6738;
    v22 = &unk_1E7811580;
    selfCopy = self;
    v24 = array;
    v17 = array;
    [dsCopy enumerateObjectsUsingBlock:&v19];
    [(IMChatRegistry *)self _daemonMovedChatsToRecentlyDeleted:v17 deletionDate:dateCopy, v19, v20, v21, v22, selfCopy];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidMoveMessagesInChatsToRecentlyDeletedNotification" object:dsCopy];
}

- (void)_daemonMovedMessagesWithGUIDsToRecentlyDeleted:(id)deleted chatGUID:(id)d deleteDate:(id)date
{
  dCopy = d;
  deletedCopy = deleted;
  [(IMChatRegistry *)self updateRecoverableMessagesMetadataSynchronously:0 completionHandler:0];
  v9 = +[IMChatRegistry sharedRegistry];
  v10 = [v9 existingChatWithGUID:dCopy];

  [v10 handleDaemonDidDeleteMessageGUIDs:deletedCopy];
}

- (void)_daemonMovedChatsToRecentlyDeleted:(id)deleted deletionDate:(id)date
{
  dateCopy = date;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83C68D4;
  v7[3] = &unk_1E7811238;
  v8 = dateCopy;
  v6 = dateCopy;
  [deleted enumerateObjectsUsingBlock:v7];
}

- (void)recoveredMessagesWithChatGUIDs:(id)ds queryID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  v8 = IMChatRegistryLogHandle(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = dCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: recovered messages for query: %@", buf, 0xCu);
  }

  if (!dCopy || (-[IMChatRegistry daemonQueryController](self, "daemonQueryController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 queries], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", dCopy), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, -[IMChatRegistry daemonQueryController](self, "daemonQueryController"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "completeQuery:", dCopy), v12, !v11))
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1A83C6B10;
    v18 = &unk_1E7811580;
    selfCopy = self;
    v20 = array;
    v14 = array;
    [dsCopy enumerateObjectsUsingBlock:&v15];
    [(IMChatRegistry *)self _completedRecoveringChatsFromRecentlyDeleted:v14, v15, v16, v17, v18, selfCopy];
  }
}

- (void)loadedRecoverableMessagesMetadata:(id)metadata queryID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  v8 = IMChatRegistryLogHandle(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = dCopy;
    v15 = 1024;
    v16 = [metadataCopy count] != 0;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: Loaded recoverableMessagesMetadata for query: %@, hasRecoverableMessages: %{BOOL}d", buf, 0x12u);
  }

  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  v11 = @"recoverableMessagesMetadata";
  v12 = metadataCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [daemonQueryController completeQuery:dCopy userInfo:v10];
}

- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = IMChatRegistryLogHandle(dsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dsCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Fully deleted chats with GUIDs: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(IMChatRegistry *)self _unregisterChatWithGUID:*(*(&v11 + 1) + 8 * v10++) deleted:1, v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds queryID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsCopy = ds;
  v8 = IMChatRegistryLogHandle(dsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: permanently deleted messages in recently deleted from chats for query: %@", &v10, 0xCu);
  }

  [(IMChatRegistry *)self permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:dsCopy];
  daemonQueryController = [(IMChatRegistry *)self daemonQueryController];
  [daemonQueryController completeQuery:dCopy];
}

- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)ds deletedChatGUIDs:(id)iDs
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [iDsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(iDsCopy);
        }

        [(IMChatRegistry *)self _unregisterChatWithGUID:*(*(&v14 + 1) + 8 * v11++) deleted:1];
      }

      while (v9 != v11);
      v9 = [iDsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A83C7114;
  v13[3] = &unk_1E7810C68;
  v13[4] = self;
  [dsCopy enumerateObjectsUsingBlock:v13];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidPermanentlyDeleteRecoverableMessagesInChatsNotification" object:dsCopy];
}

- (void)recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:(id)ds
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A83C7230;
  v5[3] = &unk_1E7810C68;
  v5[4] = self;
  dsCopy = ds;
  [dsCopy enumerateObjectsUsingBlock:v5];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatRegistryDidRecoverMessagesInChatsNotification" object:dsCopy];
}

- (void)chat:(id)chat lastMessageTimeStampOnLoadUpdated:(double)updated
{
  v14 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:updated];
      v10 = 138412546;
      v11 = chatCopy;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | IMChat: %@, updated last message timestamp on load: %@", &v10, 0x16u);
    }
  }

  v8 = +[IMChatRegistry sharedRegistry];
  v9 = [v8 existingChatWithGUID:chatCopy];

  [v9 setLastMessageTimeStampOnLoad:updated];
}

- (void)serviceSwitchRequestReceivedForChatWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[IMChatRegistry sharedRegistry];
  v6 = [v4 _cachedChatWithIdentifier:identifierCopy];

  if (v6)
  {
    [v6 setServiceSwitchRequested:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatServiceSwitchRequestedNotification" object:v6 userInfo:0];
  }
}

- (void)capabilitiesUpdatedForHandle:(id)handle
{
  handleCopy = handle;
  v4 = IMChatRegistryLogHandle(handleCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "capabilitiesUpdatedForHandle: Posting notification", v6, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMChatHandleLazuliCapabilitiesUpdatedNotification" object:handleCopy];
}

- (int64_t)_winningJoinStateForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy valueForKey:*MEMORY[0x1E69A6BE0]];
  intValue = [v7 intValue];

  joinState = [chatCopy joinState];
  if (joinState == intValue)
  {
    v10 = intValue;
  }

  else
  {
    v10 = joinState;
    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C98]];
    v12 = [IMServiceImpl serviceWithInternalName:v11];
    supportsMutatingGroupMembers = [v12 supportsMutatingGroupMembers];

    if (supportsMutatingGroupMembers)
    {
      v10 = intValue;
    }

    else
    {
      guid = [chatCopy guid];
      IMComponentsFromChatGUID();
      v15 = 0;

      v16 = [IMServiceImpl serviceWithInternalName:v15];
      supportsMutatingGroupMembers2 = [v16 supportsMutatingGroupMembers];

      if (supportsMutatingGroupMembers2)
      {
        v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B70]];
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            guid2 = [chatCopy guid];
            *buf = 138413058;
            v23 = guid2;
            v24 = 2048;
            v25 = v10;
            v26 = 2112;
            v27 = v18;
            v28 = 2048;
            v29 = intValue;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Join state inconsistency detected. Existing chat %@ join state %lu incoming chat %@ join state %lu", buf, 0x2Au);
          }
        }
      }

      else
      {
        v10 = intValue;
      }
    }
  }

  return v10;
}

- (id)messagesURLWithChat:(id)chat orHandles:(id)handles withMessageText:(id)text
{
  v61 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  handlesCopy = handles;
  textCopy = text;
  if (chatCopy)
  {
    account = [chatCopy account];
    service = [account service];
    shortName = [service shortName];

    if ([chatCopy chatStyle] == 45)
    {
      recipient = [chatCopy recipient];
      firstObject = recipient;
      if (recipient)
      {
        v15 = MEMORY[0x1E695DEC8];
        v16 = [recipient ID];
        uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v18 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

        v19 = [v15 arrayWithObject:v18];

        groupID = 0;
      }

      else
      {
        groupID = 0;
        v19 = 0;
      }
    }

    else
    {
      groupID = [chatCopy groupID];
      [chatCopy participants];
      v19 = 0;
      handlesCopy = firstObject = handlesCopy;
    }

    v24 = shortName;
  }

  else
  {
    if (![handlesCopy count])
    {
      v25 = 0;
      goto LABEL_34;
    }

    firstObject = [handlesCopy firstObject];
    account2 = [firstObject account];
    service2 = [account2 service];
    shortName2 = [service2 shortName];

    v24 = shortName2;
    groupID = 0;
    v19 = 0;
  }

  v55 = groupID;
  if ([v19 count] || !objc_msgSend(handlesCopy, "count"))
  {
    v26 = v19;
  }

  else
  {
    v52 = textCopy;
    v54 = chatCopy;
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v53 = handlesCopy;
    v27 = handlesCopy;
    v28 = [v27 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v57;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v56 + 1) + 8 * i) ID];
          uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
          v34 = [v32 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];

          [v26 addObject:v34];
        }

        v29 = [v27 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v29);
    }

    handlesCopy = v53;
    chatCopy = v54;
    textCopy = v52;
    groupID = v55;
  }

  v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"messages://open?service=%@", v24];
  v36 = textCopy;
  if (groupID)
  {
    v37 = MEMORY[0x1E696AB08];
    v38 = groupID;
    uRLPathAllowedCharacterSet3 = [v37 URLPathAllowedCharacterSet];
    v40 = [v38 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet3];

    textCopy = v36;
    [v35 appendFormat:@"&groupid=%@", v40];
  }

  displayName = [chatCopy displayName];
  if ([displayName length])
  {
    v42 = MEMORY[0x1E696AB08];
    v43 = displayName;
    uRLPathAllowedCharacterSet4 = [v42 URLPathAllowedCharacterSet];
    v45 = [v43 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet4];

    textCopy = v36;
    [v35 appendFormat:@"&displayname=%@", v45];
  }

  if ([textCopy length])
  {
    v46 = MEMORY[0x1E696AB08];
    v47 = textCopy;
    uRLPathAllowedCharacterSet5 = [v46 URLPathAllowedCharacterSet];
    v49 = [v47 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet5];

    textCopy = v36;
    [v35 appendFormat:@"&body=%@", v49];
  }

  if ([v26 count] >= 2)
  {
    firstObject2 = [v26 componentsJoinedByString:{@", "}];
    [v35 appendFormat:@"&recipients=%@", firstObject2];
LABEL_32:

    goto LABEL_33;
  }

  if ([v26 count] == 1)
  {
    firstObject2 = [v26 firstObject];
    [v35 appendFormat:@"&recipient=%@", firstObject2];
    goto LABEL_32;
  }

LABEL_33:
  v25 = [MEMORY[0x1E695DFF8] URLWithString:v35];

LABEL_34:

  return v25;
}

- (id)messagesURLWithChat:(id)chat
{
  v3 = MEMORY[0x1E696AD60];
  chatCopy = chat;
  v5 = [[v3 alloc] initWithString:@"messages://open?"];
  chatIdentifier = [chatCopy chatIdentifier];

  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v8 = [chatIdentifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  [v5 appendFormat:@"groupid=%@", v8];
  v9 = [MEMORY[0x1E695DFF8] URLWithString:v5];

  return v9;
}

- (id)messagesURLWithMessageGUID:(id)d
{
  dCopy = d;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"messages://open?"];
  v5 = MEMORY[0x1E696AB08];
  v6 = dCopy;
  uRLPathAllowedCharacterSet = [v5 URLPathAllowedCharacterSet];
  v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  [v4 appendFormat:@"message-guid=%@", v8];
  v9 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v9;
}

- (id)chatForURL:(id)l outMessageText:(id *)text outRecipientIDs:(id *)ds outService:(id *)service outMessageGUID:(id *)d presentOverlay:(BOOL *)overlay outSIMID:(id *)iD
{
  v88 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (d)
  {
    *d = 0;
  }

  if (ds)
  {
    *ds = 0;
  }

  if (service)
  {
    *service = 0;
  }

  if (d)
  {
    *d = 0;
  }

  if (overlay)
  {
    *overlay = 0;
  }

  if (iD)
  {
    *iD = 0;
  }

  resourceSpecifier = [lCopy resourceSpecifier];
  if ([(__CFString *)resourceSpecifier rangeOfString:@"open?groupid"]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)resourceSpecifier rangeOfString:@"open?address"]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)resourceSpecifier rangeOfString:@"open?addresses"]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)resourceSpecifier rangeOfString:@"open?message-guid"]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)resourceSpecifier rangeOfString:@"open?recipients"]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)resourceSpecifier rangeOfString:@"open?recipient"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = resourceSpecifier;
LABEL_27:
    v71 = resourceSpecifier;

    goto LABEL_28;
  }

  v15 = [(__CFString *)resourceSpecifier rangeOfString:@"open?service"];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    scheme = [lCopy scheme];
    v17 = scheme;
    v18 = @"sms";
    if (scheme)
    {
      v18 = scheme;
    }

    v19 = v18;

    v20 = resourceSpecifier;
    if ([(__CFString *)resourceSpecifier hasPrefix:@"//"])
    {
      v20 = [(__CFString *)resourceSpecifier substringFromIndex:2];
    }

    v21 = v20;
    v22 = [(__CFString *)v21 rangeOfString:@"?"];
    v23 = 0x1E696A000;
    v70 = v21;
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = &stru_1F1B76F98;
      v25 = v21;
    }

    else
    {
      v61 = v22;
      v77 = [(__CFString *)v21 substringToIndex:v22];

      v62 = MEMORY[0x1E696AEC0];
      v63 = [(__CFString *)v21 substringFromIndex:v61 + 1];
      v24 = [v62 stringWithFormat:@"&%@", v63];

      v25 = v77;
      v23 = 0x1E696A000uLL;
    }

    v64 = MEMORY[0x1E695DFF8];
    v65 = v25;
    v66 = [*(v23 + 3776) stringWithFormat:@"%@://open?address=%@%@", v19, v25, v24];
    v67 = [v64 URLWithString:v66];

    lCopy = v67;
    resourceSpecifier = v70;
    goto LABEL_27;
  }

  v71 = resourceSpecifier;
LABEL_28:
  absoluteString = [lCopy absoluteString];
  v27 = ExtractURLQueries();

  stringByRemovingPercentEncoding = [dictionary objectForKey:@"body"];
  *&v75 = [dictionary objectForKey:@"bot-name"];
  *(&v75 + 1) = [dictionary objectForKey:@"service_id"];
  if (v75 != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "> Incoming messagesURL is detected as a chatbot based on its query parameters.", buf, 2u);
      }
    }

    v30 = [stringByRemovingPercentEncoding stringByReplacingOccurrencesOfString:@"+" withString:@"%20"];

    stringByRemovingPercentEncoding = [v30 stringByRemovingPercentEncoding];
  }

  if (text && stringByRemovingPercentEncoding)
  {
    v31 = stringByRemovingPercentEncoding;
    *text = stringByRemovingPercentEncoding;
  }

  v73 = [dictionary objectForKey:@"groupid"];
  v74 = [dictionary objectForKey:@"chatguid"];
  v32 = [dictionary objectForKey:@"recipient"];
  v33 = [dictionary objectForKeyedSubscript:@"best-match"];
  bOOLValue = [v33 BOOLValue];

  v76 = [dictionary objectForKey:@"simid"];
  if (v76)
  {
    v34 = iD != 0;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    *iD = [v76 copy];
  }

  if (!v32)
  {
    if (*(&v75 + 1))
    {
      v35 = *(&v75 + 1);
    }

    else
    {
      v35 = [dictionary objectForKey:@"address"];
    }

    v32 = v35;
  }

  v36 = [dictionary objectForKey:@"recipients"];
  if (!v36)
  {
    v36 = [dictionary objectForKey:@"addresses"];
  }

  v37 = [dictionary objectForKey:@"overlay"];
  v38 = v37 != 0;

  if (overlay != 0 && v38)
  {
    *overlay = 1;
  }

  v39 = [dictionary objectForKey:@"message-guid"];
  if ([v39 length])
  {
    if (d)
    {
      v40 = v39;
      v41 = 0;
      *d = v39;
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_118;
  }

  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v85 = lCopy;
      _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "finding chat for URL: %@", buf, 0xCu);
    }
  }

  if (v74)
  {
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v85 = v74;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "didn't find chat, lets look for it as chatGUID: %@", buf, 0xCu);
      }
    }

    v41 = [(IMChatRegistry *)self existingChatWithGUID:v74];
    if (v41)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_118;
      }

      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v85 = v41;
        v86 = 2112;
        v87 = v74;
        _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "    => found chat: %@ for chatGUID: %@", buf, 0x16u);
      }

      goto LABEL_67;
    }
  }

  if (v73)
  {
    v41 = [(IMChatRegistry *)self existingChatWithGroupID:v73];
    if (v41)
    {
      goto LABEL_76;
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "didn't find chat, lets look for it as a chat identifier", buf, 2u);
      }
    }

    v41 = [(IMChatRegistry *)self existingChatWithChatIdentifier:v73];
    if (v41)
    {
LABEL_76:
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_118;
      }

      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v85 = v41;
        _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "    => found chat: %@", buf, 0xCu);
      }

LABEL_67:

      goto LABEL_118;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_INFO, "didn't find it, going through participant logic and others", buf, 2u);
    }
  }

  if (v32)
  {
    v47 = [MEMORY[0x1E695DEC8] arrayWithObject:v32];
  }

  else if (v36)
  {
    array = [MEMORY[0x1E695DF70] array];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v49 = [v36 componentsSeparatedByString:{@", "}];
    v50 = [v49 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v50)
    {
      v51 = *v80;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v80 != v51)
          {
            objc_enumerationMutation(v49);
          }

          [array addObject:*(*(&v79 + 1) + 8 * i)];
        }

        v50 = [v49 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v50);
    }

    v47 = array;
  }

  else
  {
    v47 = 0;
  }

  if (![v47 count])
  {
    goto LABEL_114;
  }

  if (ds)
  {
    v53 = v47;
    *ds = v47;
  }

  if (!bOOLValue)
  {
LABEL_114:
    v59 = [dictionary objectForKey:@"displayname"];
    if (((v36 == 0) & ~(v32 != 0)) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = IMFindExistingChatForAddresses(v47, v59, [v47 count] > 1, 1);
    }

    goto LABEL_118;
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v85 = v47;
      _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "URL expects best contacts match for handle IDs %@", buf, 0xCu);
    }
  }

  v55 = [(IMChatRegistry *)self _bestChatForHandleIDs:v47];
  v56 = IMOSLoggingEnabled();
  if (!v55)
  {
    if (v56)
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v85 = v47;
        _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "    => didn't find existing chat with contacts from handle IDs %@", buf, 0xCu);
      }
    }

    goto LABEL_114;
  }

  if (v56)
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v85 = v55;
      _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "    => Found chat based on recipientIDs: %@", buf, 0xCu);
    }
  }

  v41 = v55;

LABEL_118:

  return v41;
}

- (id)_bestChatForHandleIDs:(id)ds
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
        v11 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:v9];

        v12 = IMOSLoggingEnabled();
        if (!v11)
        {
          if (v12)
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v24 = v9;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "    => could not find contact for handle %@, not searching for chat by contacts", buf, 0xCu);
            }
          }

          v14 = 0;
          goto LABEL_22;
        }

        if (v12)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v24 = v11;
            v25 = 2112;
            v26 = v9;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "    => adding contact %@ for handle %@", buf, 0x16u);
          }
        }

        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(IMChatRegistry *)self existingChatWithContacts:v4 bestHandles:0];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "    => found best chat with contacts: %@", buf, 0xCu);
    }
  }

LABEL_22:

  return v14;
}

- (id)_inPersonHandleFromIMHandle:(id)handle contact:(id)contact
{
  v35 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  normalizedID = [handle normalizedID];
  if (!MEMORY[0x1AC56C3C0]())
  {
    if (!IMStringIsEmail())
    {
      v9 = 0;
      v15 = 0;
      goto LABEL_41;
    }

    if (!contactCopy)
    {
      v9 = 0;
      v15 = 1;
      goto LABEL_41;
    }

    v7 = IMNormalizeFormattedString();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v9 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v9)
    {
      v23 = normalizedID;
      v24 = contactCopy;
      v16 = *v26;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          value = [v18 value];
          v20 = IMNormalizeFormattedString();

          if ([v20 isEqual:v7])
          {
            if (qword_1EB2EA6A0[0] != -1)
            {
              sub_1A84E50B8();
            }

            if (off_1EB2EA698)
            {
              v9 = (off_1EB2EA698)(v18);

              v15 = 1;
LABEL_38:
              normalizedID = v23;
              contactCopy = v24;
              goto LABEL_39;
            }
          }

          v17 = v17 + 1;
        }

        while (v9 != v17);
        v9 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      normalizedID = v23;
      contactCopy = v24;
    }

    v15 = 1;
    goto LABEL_39;
  }

  if (!contactCopy)
  {
    v9 = 0;
    v15 = 2;
    goto LABEL_41;
  }

  v7 = [objc_alloc(MEMORY[0x1AC56C550](@"CNPhoneNumber" @"Contacts"))];
  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    emailAddresses = [contactCopy phoneNumbers];
    v9 = [emailAddresses countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v23 = normalizedID;
      v24 = contactCopy;
      v10 = *v30;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          value2 = [v12 value];
          v14 = [value2 isLikePhoneNumber:v7];

          if (v14)
          {
            if (qword_1EB2EA690 != -1)
            {
              sub_1A84E50E0();
            }

            if (off_1EB2EA688)
            {
              v9 = (off_1EB2EA688)(v12);
              v15 = 2;
              goto LABEL_38;
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [emailAddresses countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      normalizedID = v23;
      contactCopy = v24;
    }

    v15 = 2;
LABEL_39:

    goto LABEL_40;
  }

  v9 = 0;
  v15 = 2;
LABEL_40:

LABEL_41:
  v21 = [[qword_1EB2EA040 alloc] initWithValue:normalizedID type:v15 label:v9];

  return v21;
}

- (id)_inPersonNameForContact:(id)contact imHandle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  normalizedID = [handleCopy normalizedID];
  if ([handleCopy isBusiness])
  {
    v8 = MEMORY[0x1E69A7F28];
    v9 = [handleCopy ID];
    v10 = [v8 placeholderNameForBrandURI:v9];

    v11 = dispatch_semaphore_create(0);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1A8259CD0;
    v32 = sub_1A825AF94;
    v33 = 0;
    v12 = +[IMHandleRegistrar sharedInstance];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = sub_1A83E540C;
    v25 = &unk_1E7811E08;
    v27 = &v28;
    v13 = v11;
    v26 = v13;
    v14 = [v12 businessNameForUID:normalizedID updateHandler:&v22];

    v15 = [v14 length];
    v16 = v14;
    if (!v15)
    {
      if (([handleCopy isChatBot] & 1) == 0)
      {
        v17 = dispatch_time(0, 3000000000);
        dispatch_semaphore_wait(v13, v17);
      }

      if (![v29[5] length])
      {
        goto LABEL_8;
      }

      v16 = v29[5];
    }

    v18 = v16;

    v10 = v18;
LABEL_8:
    displayID = v10;

    _Block_object_dispose(&v28, 8);
    goto LABEL_16;
  }

  if (contactCopy)
  {
    nickname = [contactCopy nickname];
    if ([nickname length])
    {
      displayID = nickname;
      goto LABEL_16;
    }

    displayID = [MEMORY[0x1AC56C550](@"CNContactFormatter" @"Contacts")];
    if ([displayID length])
    {

      goto LABEL_16;
    }
  }

  displayID = [handleCopy displayID];
LABEL_16:

  return displayID;
}

- (id)_inPersonFromIMHandle:(id)handle isMe:(BOOL)me
{
  v26[2] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = *MEMORY[0x1AC56C560]("CNContactPhoneNumbersKey", @"Contacts");
  v8 = *MEMORY[0x1AC56C560]("CNContactEmailAddressesKey", @"Contacts");
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v26[0] = v8;
    v26[1] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v11];
  }

  v13 = MEMORY[0x1AC56C550](@"CNContactFormatter", @"Contacts");
  if (v13)
  {
    v14 = [v13 descriptorForRequiredKeysForStyle:0];
    v15 = [v12 arrayByAddingObject:v14];

    v12 = v15;
  }

  descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
  v17 = [v12 arrayByAddingObject:descriptorForUsedKeys];

  v18 = [handleCopy cnContactWithKeys:v17];
  v19 = [(IMChatRegistry *)self _inPersonHandleFromIMHandle:handleCopy contact:v18];
  v20 = [(IMChatRegistry *)self _inPersonNameForContact:v18 imHandle:handleCopy];

  v21 = [MEMORY[0x1E696ADF0] componentsForContact:v18];
  identifier = [v18 identifier];
  LOBYTE(v25) = me;
  v23 = [[qword_1EB2EA048 alloc] initWithPersonHandle:v19 nameComponents:v21 displayName:v20 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v25];

  return v23;
}

- (id)_interactionForMessage:(id)message inChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  if (qword_1EB2EA010 != -1)
  {
    sub_1A84E50A4();
  }

  retractedPartIndexes = [messageCopy retractedPartIndexes];
  v9 = [retractedPartIndexes count];

  if (v9)
  {
    v10 = [(IMChatRegistry *)self _unsendMessageInteractionForMessage:messageCopy inChat:chatCopy];
LABEL_5:
    v11 = v10;
    goto LABEL_14;
  }

  if ([messageCopy isFinished] && (objc_msgSend(messageCopy, "isTypingMessage") & 1) == 0)
  {
    plainBody = [messageCopy plainBody];
    if ([plainBody length] || (objc_msgSend(messageCopy, "hasInlineAttachments") & 1) != 0)
    {
      associatedMessageType = [messageCopy associatedMessageType];

      if (!associatedMessageType)
      {
        v10 = [(IMChatRegistry *)self _sendMessageInteractionForMessage:messageCopy inChat:chatCopy];
        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_sendMessageInteractionForMessage:(id)message inChat:(id)chat
{
  v77 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    guid = [messageCopy guid];
    guid2 = [chatCopy guid];
    *buf = 138412546;
    v74 = guid;
    v75 = 2112;
    v76 = guid2;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Donating send message interaction for message %@ in chat %@", buf, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  v11 = [chatCopy participantsWithState:16];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v68;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v68 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(IMChatRegistry *)self _inPersonFromIMHandle:*(*(&v67 + 1) + 8 * i) isMe:0];
        [array addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v13);
  }

  account = [chatCopy account];
  service = [account service];

  name = [service name];
  sender = [messageCopy sender];
  v64 = [(IMChatRegistry *)self _inPersonFromIMHandle:sender isMe:1];

  v62 = service;
  if ([chatCopy isGroupChat] && (objc_msgSend(chatCopy, "displayName"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v21))
  {
    v22 = [qword_1EB2EA028 alloc];
    guid3 = [chatCopy guid];
    displayName = [chatCopy displayName];
    v25 = [v22 initWithVocabularyIdentifier:guid3 spokenPhrase:displayName pronunciationHint:0];
  }

  else
  {
    v25 = 0;
  }

  v26 = [qword_1EB2EA038 alloc];
  plainBody = [messageCopy plainBody];
  guid4 = [chatCopy guid];
  v29 = [v26 initWithRecipients:array content:plainBody speakableGroupName:v25 conversationIdentifier:guid4 serviceName:name sender:v64];

  [v29 _setLaunchId:@"com.apple.MobileSMS"];
  allChatProperties = [chatCopy allChatProperties];
  v31 = [allChatProperties objectForKey:*MEMORY[0x1E69A6B80]];

  v32 = +[IMFileTransferCenter sharedInstance];
  v60 = v31;
  v33 = [v32 transferForGUID:v31];
  filename = [v33 filename];
  im_lastPathComponent = [filename im_lastPathComponent];

  guid5 = [chatCopy guid];
  v59 = im_lastPathComponent;
  v37 = IMSharedHelperExternalLocationForFile();

  if ([v37 length])
  {
    v38 = [MEMORY[0x1E695DFF8] fileURLWithPath:v37];
  }

  else
  {
    v38 = 0;
  }

  v57 = v38;
  v58 = v37;
  v63 = v25;
  v39 = [qword_1EB2EA060 imageWithURL:v38];
  if (v39)
  {
    [v29 setImage:v39 forParameterNamed:@"speakableGroupName"];
  }

  v56 = v39;
  v40 = [[qword_1EB2EA030 alloc] initWithCode:3 userActivity:0];
  guid6 = [messageCopy guid];
  time = [messageCopy time];
  guid7 = [chatCopy guid];
  v44 = [qword_1EB2EA050 alloc];
  plainBody2 = [messageCopy plainBody];
  v46 = [v44 initWithIdentifier:guid6 conversationIdentifier:guid7 content:plainBody2 dateSent:time sender:v64 recipients:array groupName:v63 messageType:1 serviceName:name];

  v71 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  [v40 setSentMessages:v47];

  v48 = [qword_1EB2EA058 alloc];
  v61 = v29;
  v49 = v29;
  v50 = v40;
  v51 = [v48 initWithIntent:v49 response:v40];
  if (IMIsRunningInMessagesComposeViewService())
  {
    v52 = objc_opt_new();
    [v51 _setContextExtensionUUID:v52];
  }

  [v51 setIdentifier:guid6];
  [v51 setGroupIdentifier:guid7];
  if ([messageCopy isFromMe])
  {
    v53 = 1;
  }

  else
  {
    v53 = 2;
  }

  [v51 setDirection:v53];
  if (time)
  {
    v54 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:time duration:0.0];
    [v51 setDateInterval:v54];
  }

  if ([messageCopy isFinished])
  {
    [IMRemindersIntegration notifyInteractionWithPeople:array];
  }

  [v51 setIntentHandlingStatus:3];

  return v51;
}

- (id)_unsendMessageInteractionForMessage:(id)message inChat:(id)chat
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle(chatCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    guid = [messageCopy guid];
    guid2 = [chatCopy guid];
    *buf = 138412546;
    v20 = guid;
    v21 = 2112;
    v22 = guid2;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Donating unsend message interaction for message %@ in chat %@", buf, 0x16u);
  }

  guid3 = [messageCopy guid];
  if ([guid3 length])
  {
    v18 = guid3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [[qword_1EB2E9218 alloc] initWithMessageIdentifiers:v11];
  [v12 _setLaunchId:@"com.apple.MobileSMS"];
  v13 = [[qword_1EB2E9210 alloc] initWithCode:3 userActivity:0];
  v14 = [[qword_1EB2EA058 alloc] initWithIntent:v12 response:v13];
  dateEdited = [messageCopy dateEdited];
  if (dateEdited)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateEdited duration:0.0];
    [v14 setDateInterval:v16];
  }

  [v14 setIntentHandlingStatus:3];

  return v14;
}

- (void)setUserActivityForChat:(id)chat message:(id)message orHandles:(id)handles
{
  v52 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  messageCopy = message;
  handlesCopy = handles;
  v11 = IMChatRegistryLogHandle(handlesCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    guid = [chatCopy guid];
    guid2 = [messageCopy guid];
    *buf = 138412802;
    v47 = guid;
    v48 = 2112;
    v49 = guid2;
    v50 = 2112;
    v51 = handlesCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Updating user activity with chat: %@ message: %@ handles: %@", buf, 0x20u);
  }

  if (!chatCopy && ![handlesCopy count])
  {
    v37 = messageCopy;
    userActivity = [(IMChatRegistry *)self userActivity];
    [userActivity invalidate];

    [(IMChatRegistry *)self setUserActivity:0];
    goto LABEL_25;
  }

  userActivity2 = [(IMChatRegistry *)self userActivity];

  if (userActivity2)
  {
    if (!chatCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696B090]) initWithActivityType:@"com.apple.Messages"];
    [(IMChatRegistry *)self setUserActivity:v15];

    if (!chatCopy)
    {
LABEL_10:
      displayName = 0;
      goto LABEL_12;
    }
  }

  if ([0 length])
  {
    goto LABEL_10;
  }

  displayName = [chatCopy displayName];
LABEL_12:
  if (![displayName length])
  {
    v17 = [chatCopy displayNameWithRawAddress:0 isSpamFilteringEnabled:{objc_msgSend(MEMORY[0x1E69A8198], "isTextMessageExtensionEnabled")}];

    displayName = v17;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  lastIncomingFinishedMessageWithTextContent = [chatCopy lastIncomingFinishedMessageWithTextContent];
  text = [lastIncomingFinishedMessageWithTextContent text];
  string = [text string];

  if (string)
  {
    [dictionary setObject:string forKey:@"__kIMChatRegistryUserActivityLastMessageKey"];
  }

  v45 = handlesCopy;
  v22 = [(IMChatRegistry *)self messagesURLWithChat:chatCopy orHandles:handlesCopy withMessageText:0];
  v23 = v22;
  if (v22)
  {
    absoluteString = [v22 absoluteString];
    [dictionary setObject:absoluteString forKey:@"__kIMChatRegistryContinuityURLKey"];

    userActivity3 = [(IMChatRegistry *)self userActivity];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      userActivity4 = [(IMChatRegistry *)self userActivity];
      absoluteString2 = [v23 absoluteString];
      [userActivity4 setTargetContentIdentifier:absoluteString2];
    }
  }

  userActivity5 = [(IMChatRegistry *)self userActivity];
  v30 = [dictionary copy];
  [userActivity5 setUserInfo:v30];

  userActivity6 = [(IMChatRegistry *)self userActivity];
  [userActivity6 setTitle:displayName];

  userActivity7 = [(IMChatRegistry *)self userActivity];
  [userActivity7 setNeedsSave:1];

  v33 = [(IMChatRegistry *)self _interactionForMessage:messageCopy inChat:chatCopy];
  v34 = v33;
  if (v33)
  {
    v35 = IMChatRegistryLogHandle(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "Donating user activity with interaction", buf, 2u);
    }

    userActivity8 = [(IMChatRegistry *)self userActivity];
    [userActivity8 setInteraction:v34];
  }

  else
  {
    isFinished = [messageCopy isFinished];
    if (!isFinished)
    {
      v37 = messageCopy;
      v38 = 1;
      goto LABEL_24;
    }

    userActivity8 = IMChatRegistryLogHandle(isFinished);
    if (os_log_type_enabled(userActivity8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, userActivity8, OS_LOG_TYPE_DEFAULT, "Setting user activity for sent message, with no interaction", buf, 2u);
    }
  }

  v37 = messageCopy;

  v38 = 0;
LABEL_24:
  userActivity9 = [(IMChatRegistry *)self userActivity];
  [userActivity9 setEligibleForHandoff:v38];

  userActivity10 = [(IMChatRegistry *)self userActivity];
  [userActivity10 setEligibleForSearch:0];

  userActivity11 = [(IMChatRegistry *)self userActivity];
  [userActivity11 setEligibleForPublicIndexing:0];

  userActivity12 = [(IMChatRegistry *)self userActivity];
  [userActivity12 becomeCurrent];

  handlesCopy = v45;
LABEL_25:
}

@end