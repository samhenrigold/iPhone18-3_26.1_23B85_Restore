@interface IMChat
+ (BOOL)isGUIDInAttemptingListInScrutinyMode:(id)mode;
+ (Class)_NPSManagerClass;
+ (Class)chatItemRulesClass;
+ (id)_participantsWorkQueue;
+ (id)chatItemUpdaterLogHandle;
+ (id)pendingChatForHandle:(id)handle;
+ (id)stateCaptureRecents;
+ (id)watermarkComparator;
+ (void)cleanWatermarkCache;
- (BOOL)_accountIsOperational:(id)operational forService:(id)service;
- (BOOL)_canLeaveChatIgnoringParticipantCount:(BOOL)count;
- (BOOL)_canPossiblyBecomeHybrid;
- (BOOL)_canShareStatus;
- (BOOL)_chatStyleSupportsTypingAndCancelTypingIndicators;
- (BOOL)_handleIncomingItem:(id)item updateRecipient:(BOOL)recipient suppressNotification:(BOOL)notification updateReplyCounts:(BOOL)counts messageComingFromStorage:(BOOL)storage;
- (BOOL)_hasCommunicatedOnService:(id)service;
- (BOOL)_hasJustSentAMessage;
- (BOOL)_idsQueryResultsHaveMixedIDSStatus:(id)status;
- (BOOL)_isBlackHoled;
- (BOOL)_isChatBot;
- (BOOL)_isHybridGroup;
- (BOOL)_isHybridGroupEligibleByCarrier;
- (BOOL)_isRCSService;
- (BOOL)_isReplicatingService;
- (BOOL)_isSMSSatelliteService;
- (BOOL)_isSMSService;
- (BOOL)_isSatelliteServiceActive;
- (BOOL)_isSendToMakoAllowed;
- (BOOL)_isiMessageLiteServiceOrInCompatibleMode;
- (BOOL)_isiMessageService;
- (BOOL)_itemsAreRelayItemsFromMeWithServiceSwitch:(id)switch otherItem:(id)item;
- (BOOL)_lastKnownHybridState;
- (BOOL)_processSupportsHistory;
- (BOOL)_reachabilityResultHasMixedStatus:(id)status;
- (BOOL)_recipientIsPhoneNumber;
- (BOOL)_sanityCheckAccounts;
- (BOOL)_serverBagPreventsScrutinyMode;
- (BOOL)_serviceCapabilityEnabled:(id)enabled;
- (BOOL)_serviceSupportsCapability:(id)capability;
- (BOOL)_shouldSendCancelTypingIndicator;
- (BOOL)_supportsAlternativeCommunicationActions;
- (BOOL)_supportsAttachments;
- (BOOL)_supportsAudioMessages;
- (BOOL)_supportsAutomaticTranslation;
- (BOOL)_supportsDeliveryReceipts;
- (BOOL)_supportsEditMessage;
- (BOOL)_supportsExpressiveText;
- (BOOL)_supportsFaceTime;
- (BOOL)_supportsFocusMode;
- (BOOL)_supportsGroupIdentity;
- (BOOL)_supportsGroupMutability;
- (BOOL)_supportsInlineAdaptiveImageGlyphs;
- (BOOL)_supportsInlineReply;
- (BOOL)_supportsMentions;
- (BOOL)_supportsMessageEffects;
- (BOOL)_supportsMultiPart;
- (BOOL)_supportsNameAndPhoto;
- (BOOL)_supportsPolls;
- (BOOL)_supportsSendLater;
- (BOOL)_supportsSendMenu;
- (BOOL)_supportsShareLocation;
- (BOOL)_supportsSimSwitch;
- (BOOL)_supportsStickers;
- (BOOL)_supportsTapbacks;
- (BOOL)_supportsTranscriptBackgrounds;
- (BOOL)_supportsUndoSend;
- (BOOL)_suppressesMutationsFromLocalDevice;
- (BOOL)_uncachedHybridGroupStatusWithIDSQueryResults:(id)results;
- (BOOL)_uncachedHybridGroupStatusWithReachabilityResult:(id)result;
- (BOOL)_updateJoinStateWithMessageIfNeeded:(id)needed;
- (BOOL)_updateLastAddressedHandleID:(id)d lastAddressedSIMID:(id)iD;
- (BOOL)_updateLastAddressedHandleID:(id)d postGeneralNotification:(BOOL)notification;
- (BOOL)_updateLastAddressedSIMID:(id)d postGeneralNotification:(BOOL)notification;
- (BOOL)_updateLastKnownHybridState:(BOOL)state;
- (BOOL)accountMatchesLastFinishedMessageItem;
- (BOOL)allParticipantsAreContacts;
- (BOOL)allParticipantsBlocked;
- (BOOL)allRecipientsFollowingLocation;
- (BOOL)allRecipientsSharingLocation;
- (BOOL)allowedByScreenTime;
- (BOOL)allowedToShowConversation;
- (BOOL)allowedToShowConversationSync;
- (BOOL)authorizationToSendCurrentLocationMessageDenied;
- (BOOL)authorizationToSendCurrentLocationMessageDetermined;
- (BOOL)authorizedToSendCurrentLocationMessage;
- (BOOL)canAddParticipant:(id)participant;
- (BOOL)canAddParticipants:(id)participants;
- (BOOL)canBeMessageLevelFiltered;
- (BOOL)canRemoveParticipants:(id)participants;
- (BOOL)canSend;
- (BOOL)canSendInlineReply;
- (BOOL)canSendMessage:(id)message;
- (BOOL)canSendTransfer:(id)transfer;
- (BOOL)canSuggestRecipientContact;
- (BOOL)canUnsubscribe;
- (BOOL)containsActiveBIASession;
- (BOOL)containsMessageFromContact;
- (BOOL)containsMessageFromContactOrMe;
- (BOOL)deleteAllHistory;
- (BOOL)hasBlockedParticipant;
- (BOOL)hasCommSafetySensitiveMessage;
- (BOOL)hasCommSafetySensitiveMessageFromSomeoneElse;
- (BOOL)hasKnownParticipants;
- (BOOL)hasKnownParticipantsCache;
- (BOOL)hasLeftGroup;
- (BOOL)hasMessageFromService:(id)service;
- (BOOL)hasMessageWithServiceCapability:(id)capability;
- (BOOL)hasOfferedAutomaticTranslationInTranslateMenu;
- (BOOL)hasRecipientsFollowingLocation;
- (BOOL)hasRecipientsSharingLocation;
- (BOOL)hasSentMessageToBusiness;
- (BOOL)hasSiblingRecipientsSharingLocation;
- (BOOL)hasStoredMessageWithGUID:(id)d;
- (BOOL)hasSurfRequestNotFromMe:(id)me;
- (BOOL)hasVerifiedBusiness;
- (BOOL)inUnknownSendersFilter;
- (BOOL)isAppleChat;
- (BOOL)isAutoDonatingMessages;
- (BOOL)isAutomaticTranslationEnabled;
- (BOOL)isBusinessChat;
- (BOOL)isCategorized;
- (BOOL)isChatBot;
- (BOOL)isCommSafetySensitiveMessageRecent;
- (BOOL)isCurrentlyDownloadingPurgedAttachments;
- (BOOL)isDisplayingUnavailabilityIndicator;
- (BOOL)isEmergencyChat;
- (BOOL)isEncryptionTestOptedIn;
- (BOOL)isInScrutinyMode;
- (BOOL)isInterworking;
- (BOOL)isKnownSenderWithUnknownFilteringEnabled:(BOOL)enabled;
- (BOOL)isLastIncomingFinishedMessageNotiMessage;
- (BOOL)isLastMessageTypingIndicator;
- (BOOL)isMakoChat;
- (BOOL)isMapKitBusinessChat;
- (BOOL)isMergedBusinessThread;
- (BOOL)isMessagesAuthorizedToAccessFocusStatus;
- (BOOL)isMuted;
- (BOOL)isOscarChat;
- (BOOL)isPendingReview;
- (BOOL)isPinned;
- (BOOL)isRCS;
- (BOOL)isReadOnly;
- (BOOL)isRecipientAbleToDowngradeToSMS;
- (BOOL)isReplyEnabled;
- (BOOL)isSMS;
- (BOOL)isSatelliteMessagingCompatible;
- (BOOL)isShowingEditHistoryForAnyChatItem;
- (BOOL)isShowingEditHistoryForChatItemGUID:(id)d;
- (BOOL)isShowingTranslationText;
- (BOOL)isStewieChat;
- (BOOL)isStewieEmergencyChat;
- (BOOL)isStewieRoadsideChat;
- (BOOL)isStewieSharingChat;
- (BOOL)lastMessageExists;
- (BOOL)mapsToTUConversation:(id)conversation;
- (BOOL)needBrandInfoFromRelay;
- (BOOL)needPersistentMenuFromRelay;
- (BOOL)preferredLanguagesContainVariantForCode:(id)code;
- (BOOL)receivedResponseForChat;
- (BOOL)repliedToChat;
- (BOOL)reportJunk;
- (BOOL)shouldBeAllowListed;
- (BOOL)shouldDisplayAutomaticTranslation;
- (BOOL)shouldDisplayOffGridModeStatus;
- (BOOL)shouldDisplayUnavailabilityIndicator;
- (BOOL)shouldForceServerStatusRefresh;
- (BOOL)shouldForceToSMS;
- (BOOL)shouldShowAudioButtonInEntryView;
- (BOOL)shouldShowAutoDonationAction;
- (BOOL)shouldShowIncomingTranslationIndicator;
- (BOOL)shouldShowIntroductionsButtons;
- (BOOL)supportsCapabilities:(unint64_t)capabilities;
- (BOOL)supportsEncryption;
- (BOOL)supportsMergingFilteredThreads;
- (BOOL)wantsSenderBlackholeWarning;
- (BOOL)wasDetectedAsSMSCategory;
- (BOOL)wasDetectedAsSMSSpam;
- (IMBrand)brand;
- (IMChat)init;
- (IMChatItemRules)chatItemRules;
- (IMDaemonProtocol)remoteDaemon;
- (IMHandle)businessHandle;
- (IMHandle)emergencyUserHandle;
- (IMMessage)firstMessage;
- (IMMessage)lastFinishedMessage;
- (IMMessage)lastIncomingFinishedMessage;
- (IMMessage)lastIncomingFinishedMessageWithTextContent;
- (IMMessage)lastIncomingMessage;
- (IMMessage)lastIncomingReplyableMessage;
- (IMMessage)lastMessage;
- (IMMessage)lastPendingSatelliteSendMessage;
- (IMMessage)lastSentMessage;
- (IMMessageItem)firstUnreadMessageItem;
- (IMMomentSharePresentationCache)momentSharePresentationCache;
- (IMSharedEmergencyInfo)emergencyUserInfo;
- (NSArray)attachments;
- (NSArray)chatItems;
- (NSArray)participantDNDContactHandles;
- (NSArray)replySuggestions;
- (NSDate)availabilityStatusPublishedDate;
- (NSDate)lastFinishedMessageDate;
- (NSDate)lastSentMessageDate;
- (NSDate)watermarkDate;
- (NSDictionary)internalLastAddressedHandleAndSimIDForDebugMenu;
- (NSNumber)countOfAttachmentsNotCachedLocally;
- (NSNumber)transcriptBackgroundVersion;
- (NSSet)allSiblingFMFHandles;
- (NSSet)allSiblingFindMyHandles;
- (NSSet)findMyHandles;
- (NSSet)fmfHandles;
- (NSSet)mergedThreadFilterModes;
- (NSString)cachedBusinessName;
- (NSString)chatIdentifier;
- (NSString)description;
- (NSString)deviceIndependentID;
- (NSString)downgradeStateForDebugMenu;
- (NSString)identityHash;
- (NSString)interworkingService;
- (NSString)pinningIdentifier;
- (NSString)roomNameWithoutSuffix;
- (NSString)stewieSharingSuggestedName;
- (NSString)transcriptBackgroundGUID;
- (NSString)transcriptBackgroundPath;
- (NSString)unsubscribeText;
- (NSString)userTranslationLanguageCode;
- (_NSRange)_loggingRangeForLatestChatItems:(id)items;
- (_NSRange)_loggingRangeForUpdates:(id)updates chatItemsCount:(int64_t)count;
- (double)typingIndicatorResendDelayInSecs;
- (id)_archivedItemsToReplace:(id)replace isReplacingItems:(BOOL)items;
- (id)_attributedDisplayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor withBlockingAttachment:(id)attachment;
- (id)_chatItemLogSummaryForChatItems:(id)items withIndex:(int64_t)index;
- (id)_chatItemLogSummaryForChatItems:(id)items withUpdates:(id)updates;
- (id)_consecutiveDowngradeAttemptsViaManualDowngrades:(BOOL)downgrades;
- (id)_existingMessageFromMessagePartGUID:(id)d;
- (id)_fetchMessagesBeforeAndAfterGUID:(id)d numberOfMessagesToLoadBeforeGUID:(unint64_t)iD numberOfMessagesToLoadAfterGUID:(unint64_t)uID threadIdentifier:(id)identifier synchronous:(BOOL)synchronous completion:(id)completion;
- (id)_fetchMessagesUpToGUID:(id)d limit:(unint64_t)limit synchronous:(BOOL)synchronous completion:(id)completion;
- (id)_fetchMessagesUpToLimit:(unint64_t)limit synchronous:(BOOL)synchronous completion:(id)completion;
- (id)_generatePersonCentricID;
- (id)_getCurrentLocale;
- (id)_getDeleteChatItemMap:(id)map;
- (id)_getMessageChatItemMap:(id)map withDeleteMap:(id)deleteMap andAllChatItems:(id)items;
- (id)_initWithDictionaryRepresentation:(id)representation items:(id)items participantsHint:(id)hint accountHint:(id)accountHint;
- (id)_initWithGUID:(id)d account:(id)account style:(unsigned __int8)style roomName:(id)name displayName:(id)displayName lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD items:(id)self0 participants:(id)self1 isFiltered:(int64_t)self2 hasHadSuccessfulQuery:(BOOL)self3 isRecovered:(BOOL)self4 isDeletingIncomingMessages:(BOOL)self5;
- (id)_initWithItems:(id)items;
- (id)_keyTransparencyVerifier;
- (id)_ktQueue;
- (id)_lastChatItemMatchingCriteria:(id)criteria;
- (id)_lastFinishedMessageDateForChat:(id)chat;
- (id)_lastKTVerifierResultForParticipant:(id)participant;
- (id)_lastMessageItemFromContactOrFromMe:(BOOL)me;
- (id)_mergeParticipantIDs;
- (id)_participantListStringForNames:(id)names visibleNameCount:(int64_t)count;
- (id)_performQueryWithKey:(id)key loadImmediately:(BOOL)immediately block:(id)block completion:(id)completion;
- (id)_previousAccountForService:(id)service;
- (id)_privateInitWithAccount:(id)account style:(unsigned __int8)style roomName:(id)name messages:(id)messages participants:(id)participants isFiltered:(int64_t)filtered hasHadSuccessfulQuery:(BOOL)query isRecovered:(BOOL)self0 isDeletingIncomingMessages:(BOOL)self1;
- (id)_renderingDataDictionary;
- (id)_serviceForCapabilityCheck;
- (id)_storedWatermarkMessageID;
- (id)activeParticipantsForTUConversation;
- (id)allMessagesToReportAsSpam;
- (id)allPropertiesOfParticipant:(id)participant;
- (id)associatedBusinessID;
- (id)attachmentFileNameForTest;
- (id)attachmentMessageForTest;
- (id)beginObservingHandleStatuses;
- (id)brandLogoData;
- (id)brandLogoURL;
- (id)callDurationStringForTuCall;
- (id)chatItemUpdaterLogHandle;
- (id)chatItemsForItems:(id)items;
- (id)chatSummary;
- (id)chatSummaryMessageGUID;
- (id)contacts;
- (id)conversation;
- (id)conversationContext;
- (id)conversationWithUUID:(id)d;
- (id)currentTUCall;
- (id)displayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor;
- (id)ensureUserTranslationLanguageIsResolvedForCode:(id)code;
- (id)filterControllers;
- (id)getParticipantsWithKTUIStatus:(unint64_t)status;
- (id)hashOfParticipantIDs;
- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)code;
- (id)loadFrequentRepliesLimit:(unint64_t)limit loadImmediately:(BOOL)immediately;
- (id)loadMessagesBeforeDate:(id)date limit:(unint64_t)limit;
- (id)loadMessagesUpToGUID:(id)d limit:(unint64_t)limit;
- (id)loadUnreadMessagesWithLimit:(unint64_t)limit fallbackToMessagesUpToGUID:(id)d loadImmediately:(BOOL)immediately;
- (id)localizedUnreadShortcutTitle;
- (id)messageForGUID:(id)d;
- (id)messageGuidsForMyUnreadMentions;
- (id)messageGuidsForRequery;
- (id)messagesForScheduledMessageSectionWithTranscriptItem:(id)item;
- (id)messagesToReportAsSpamFromChatItems:(id)items;
- (id)momentShareCache;
- (id)muteUntilDate;
- (id)participantHandleIDs;
- (id)participantsWithState:(unint64_t)state;
- (id)randomDataWithSize:(int64_t)size;
- (id)randomStringWithLength:(int64_t)length;
- (id)rcsChat;
- (id)recentIncomingMessagesWithTextContentForReplySuggestions;
- (id)recentOugoingMessagesWithTextContentForReplySuggestions;
- (id)remoteMembersForTUConversation;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)tempfileURLFor:(id)for;
- (id)textMessageForTest;
- (id)usersPreferredLanguageIdentifier;
- (id)valueForChatProperty:(id)property;
- (id)valueForProperty:(id)property ofParticipant:(id)participant;
- (int64_t)_compareChat:(id)chat withDate:(id)date withDate:(id)withDate;
- (int64_t)_uncachedInterworkingState;
- (int64_t)chatPropertyValueFor:(int64_t)for;
- (int64_t)checkTranslationLanguageStatusForLanguageCode:(id)code;
- (int64_t)compareChatByDate:(id)date;
- (int64_t)compareChatByLastFinishedMessageDate:(id)date;
- (int64_t)lastFinishedMessageID;
- (int64_t)maximumChatParticipantsForHandles:(id)handles;
- (int64_t)numberOfTimesRespondedToThread;
- (int64_t)priorityClassification;
- (int64_t)randomIntWithUpTo:(int64_t)to;
- (int64_t)smsCategory;
- (int64_t)transcriptBackgroundCommSafetyState;
- (int64_t)transcriptSharingState;
- (int64_t)watermarkMessageID;
- (unint64_t)_flagsForCancelTypingIndicatorMessage;
- (unint64_t)_flagsForTypingIndicatorMessage:(BOOL)message;
- (unint64_t)capabilities;
- (unint64_t)conversationKTUIStatus;
- (unint64_t)getKTDisplayStatusAndRelatedPeerHandles:(id *)handles;
- (unint64_t)markAsSpam:(unint64_t)spam isJunkReportedToCarrier:(BOOL)carrier;
- (unint64_t)messageCount;
- (unint64_t)messageFailureCount;
- (unint64_t)overallChatStatus;
- (unint64_t)paymentTypeForMessage:(id)message;
- (unint64_t)scrutinyModeAttemptCount;
- (unint64_t)stateForParticipant:(id)participant;
- (unint64_t)unreadMessageCount;
- (void)__clearReadMessageCache;
- (void)__setChatIdentifierForGroups:(id)groups;
- (void)_accountControllerUpdated:(id)updated;
- (void)_accountLoggedOut:(id)out;
- (void)_addParticipants:(id)participants withState:(unint64_t)state;
- (void)_automation_markAsRead:(BOOL)read messageGUID:(id)d forChatGUID:(id)iD fromMe:(BOOL)me;
- (void)_calculateDowngradeState;
- (void)_calculateDowngradeStateTimerFired;
- (void)_clearCachedIdentifier;
- (void)_clearDowngradeMarkers;
- (void)_clearHistoryAndReplaceLastMessage:(id)message;
- (void)_clearPendingMessages;
- (void)_clearUnreadCount;
- (void)_closeSession:(BOOL)session;
- (void)_configureLocationShareItem:(id)item;
- (void)_daemonAlive:(id)alive;
- (void)_daemonDied:(id)died;
- (void)_delayedInvalidateDowngradeState;
- (void)_deleteTransfersWithGUIDs:(id)ds fromChatItems:(id)items;
- (void)_engroupParticipantsUpdated;
- (void)_enumerateUnderlyingChatInfo:(id)info;
- (void)_fixItemForSendingMessageTime:(id)time;
- (void)_fixSendingItemDateAndSortID:(id)d;
- (void)_handleAddressBookChangeForRecipientUID:(id)d;
- (void)_handleItem:(id)item;
- (void)_handleItem:(id)item forChatStyle:(unsigned __int8)style updateReplyCounts:(BOOL)counts keepExistingIndex:(BOOL)index messageComingFromStorage:(BOOL)storage;
- (void)_handleItem:(id)item keepExistingIndex:(BOOL)index;
- (void)_handleMessageGUIDDeletions:(id)deletions;
- (void)_insertHistoricalMessages:(id)messages queryID:(id)d isRefresh:(BOOL)refresh isHistoryQuery:(BOOL)query;
- (void)_insertHistoricalMessages:(id)messages queryID:(id)d isRefresh:(BOOL)refresh isHistoryQuery:(BOOL)query isReplacingItems:(BOOL)items limit:(unint64_t)limit hasMessagesBefore:(BOOL)before hasMessagesAfter:(BOOL)self0;
- (void)_introductionsForParticipantsWithCompletion:(id)completion;
- (void)_itemsDidChange:(id)change;
- (void)_markItemAsPlayed:(id)played;
- (void)_participant:(id)_participant statusChanged:(int)changed;
- (void)_participant:(id)_participant statusChanged:(int)changed postNotification:(BOOL)notification;
- (void)_participants:(id)_participants statusChanged:(int)changed postNotification:(BOOL)notification;
- (void)_persistSortIDFromReplacedItem:(id)item toItem:(id)toItem;
- (void)_persistThreadOriginatorReplyCountsByPartFromReplacedItemIfNecessary:(id)necessary toItem:(id)item;
- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems;
- (void)_postNewUnreadCount;
- (void)_postNotification:(id)notification userInfo:(id)info;
- (void)_recalculateIsInterworking;
- (void)_recordMarkedAsKnownForParticipantsWithCompletion:(id)completion;
- (void)_refreshKTData;
- (void)_refreshServiceForSendingIfNeededWithMessage:(id)message;
- (void)_refreshServiceForSendingWithDaemonWithCompletion:(id)completion;
- (void)_reloadChatItemsForBlockedContactsListChange;
- (void)_reloadChatItemsForFilteringChange;
- (void)_reloadChatItemsForHandleAvailabilityChange;
- (void)_reloadChatItemsForJunkFilteringSettingChange;
- (void)_reloadChatItemsForKeyTransparencyStatusChange;
- (void)_reloadChatItemsForPhotoSaveStatusChange;
- (void)_reloadChatItemsForSatelliteStateChangeIfRequired:(id)required;
- (void)_reloadChatItemsForScreenTimeChange;
- (void)_reloadChatItemsForServiceChange;
- (void)_reloadChatItemsForTranslationEnabledChange;
- (void)_reloadChatItemsForTranslationLanguageStatusChange;
- (void)_reloadChatItemsForUnknownSendersFilteringSettingChange;
- (void)_removeItem:(id)item;
- (void)_removeItemsForGuids:(id)guids;
- (void)_replaceItems:(id)items;
- (void)_replaceStaleChatItems;
- (void)_resetForceServerStatusRefresh;
- (void)_resetParticipants:(id)participants;
- (void)_resetUnsubscribeText;
- (void)_sendMessage:(id)message adjustingSender:(BOOL)sender shouldQueue:(BOOL)queue;
- (void)_sendMessage:(id)message withAccount:(id)account adjustingSender:(BOOL)sender shouldQueue:(BOOL)queue;
- (void)_setAccount:(id)account;
- (void)_setAndIncrementDowngradeMarkersForManual:(BOOL)manual;
- (void)_setAttachments:(id)attachments;
- (void)_setChatProperties:(id)properties isCurrentGUID:(BOOL)d;
- (void)_setCountOfAttachmentsNotCachedLocally:(id)locally;
- (void)_setCountOfMessagesMarkedAsSpam:(id)spam;
- (void)_setDBFailedCount:(unint64_t)count;
- (void)_setDBUnreadCount:(unint64_t)count;
- (void)_setDBUnreadCount:(unint64_t)count postNotification:(BOOL)notification;
- (void)_setDisplayName:(id)name;
- (void)_setIsDownloadingPendingSatelliteMessages:(BOOL)messages postNotification:(BOOL)notification;
- (void)_setJoinState:(int64_t)state quietly:(BOOL)quietly;
- (void)_setLocalUserIsComposing:(id)composing suppliedGUID:(id)d typingIndicatorData:(id)data;
- (void)_setParticipantState:(unint64_t)state forHandle:(id)handle postNotification:(BOOL)notification;
- (void)_setParticipantState:(unint64_t)state forHandles:(id)handles postNotification:(BOOL)notification;
- (void)_setPendingIncomingSatelliteMessageCount:(unint64_t)count postNotification:(BOOL)notification;
- (void)_setPreviousAccount:(id)account forService:(id)service;
- (void)_setRenderingDataDictionary:(id)dictionary;
- (void)_setStartSendProgressImmediatelyIfNecessary;
- (void)_setTimerForReadMessageCache;
- (void)_setupObservation;
- (void)_showErrorMessage:(id)message;
- (void)_startTiming:(id)timing;
- (void)_syncChatItemProperties:(id)properties;
- (void)_targetToService:(id)service newComposition:(BOOL)composition supportsEncryption:(BOOL)encryption;
- (void)_updateBizIntentForMessageIfNeeded:(id)needed;
- (void)_updateBreadcrumbingAssociationForMessageIfNeeded:(id)needed;
- (void)_updateChatItemsWithDataDetectorResultsForReason:(id)reason;
- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post;
- (void)_updateDisplayName:(id)name sender:(id)sender;
- (void)_updateDowngradeState:(char)state checkAgainInterval:(double)interval;
- (void)_updateEngramID:(id)d;
- (void)_updateExistingMessageWithSyndicationAction:(id)action;
- (void)_updateFileAttachmentGUIDsForMessageIfNeeded:(id)needed withPayloadAttachments:(id)attachments;
- (void)_updateHybridGroupStateWithPerParticipantIDSStatus:(id)status;
- (void)_updateHybridGroupStateWithReachabilityResult:(id)result;
- (void)_updateLocaleForMessageIfNeeded:(id)needed;
- (void)_updateLocationShareItemsForSender:(id)sender;
- (void)_updateMessageItemStewieIfNeeded:(id)needed;
- (void)_updateMessageItemTimeIfNeeded:(id)needed;
- (void)_updatePayloadForMessageIfNeeded:(id)needed;
- (void)_updateRepliesIfNecessaryWithItem:(id)item;
- (void)_updateRepliesIfNecessaryWithRemovedItems:(id)items threadIdentifiersOfRemovedParts:(id)parts;
- (void)_updateScheduledMessageTimeOffsetIfNeeded:(id)needed;
- (void)_updateSenderForMessageIfNeeded:(id)needed adjustingSender:(BOOL)sender;
- (void)_updateSenderForMessageIfNeeded:(id)needed adjustingSender:(BOOL)sender withAccount:(id)account;
- (void)_updateTypingGUIDForMessageIfNeeded:(id)needed;
- (void)_validateChatRegistrationWithRegistry;
- (void)acceptInvitation;
- (void)addHandlesToGroupFaceTimeChatIfRegistered:(id)registered;
- (void)appendTranslation:(id)translation toMessageItem:(id)item forPartIndex:(int64_t)index;
- (void)autoInviteToViewAvailabilityIfNeeded;
- (void)autoInviteToViewOffGridModeIfNeeded;
- (void)autoReportSpam;
- (void)beginHoldingChatItemsUpdatesForReason:(id)reason;
- (void)beginListeningToAttributionChanges;
- (void)beginShowingEditHistoryForChatItemGUID:(id)d;
- (void)canShareFocusStatusWithCompletion:(id)completion;
- (void)cancelScheduledMessageItem:(id)item atPartIndex:(int64_t)index shouldRetractSubject:(BOOL)subject;
- (void)cancelScheduledMessageItem:(id)item cancelType:(unint64_t)type;
- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)clear;
- (void)clearScrutinyMode;
- (void)closeSession;
- (void)consumeSummaryIfNeeded;
- (void)createIMChatItemForTransientAttachmentWithAssetUUID:(id)d parentChatItemGUID:(id)iD;
- (void)dealloc;
- (void)declineInvitation;
- (void)deleteChatItems:(id)items;
- (void)deleteChatItems:(id)items fromChatItems:(id)chatItems;
- (void)deleteChatItemsWithTransferGUIDs:(id)ds fromMessageItem:(id)item;
- (void)deleteIMMessageItems:(id)items;
- (void)deleteTransfers:(id)transfers;
- (void)didUnregisterFromRegistry:(id)registry;
- (void)downgradeMessage:(id)message manualDowngrade:(BOOL)downgrade downgradeChat:(BOOL)chat;
- (void)downloadPurgedAttachments;
- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally;
- (void)downtimeControllerInitializedContextWithAllowedByScreenTime:(BOOL)time;
- (void)editMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation backwardCompatabilityText:(id)compatabilityText;
- (void)editScheduledMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation;
- (void)editScheduledMessageItem:(id)item scheduleType:(unint64_t)type deliveryTime:(id)time;
- (void)editScheduledMessageItems:(id)items scheduleType:(unint64_t)type deliveryTime:(id)time;
- (void)endAllHoldsOnChatItemsUpdatesForReason:(id)reason;
- (void)endHoldingChatItemsUpdatesForAllReasons;
- (void)endHoldingChatItemsUpdatesForReason:(id)reason;
- (void)endListeningToAttributionChanges;
- (void)endShowingEditHistoryForAllChatItems;
- (void)endShowingEditHistoryForChatItemGUID:(id)d;
- (void)fetchBrandInfoIfNecessary;
- (void)fetchIncomingPendingMessagesOverSatellite;
- (void)fetchIsCurrentlyDownloadingPurgedAttachments:(id)attachments;
- (void)fetchKTStatus;
- (void)fetchMessageHistoryForDateInterval:(id)interval completion:(id)completion;
- (void)fetchOldestMessageDateWithCompletion:(id)completion;
- (void)forceCancelTypingIndicator;
- (void)handleDaemonDidDeleteMessageGUIDs:(id)ds;
- (void)ignoreKTFailure;
- (void)initiateTUConversationWithScreenShareType:(unint64_t)type;
- (void)initiateTUConversationWithVideoEnabled:(BOOL)enabled;
- (void)initiateTUDialRequestWithVideoEnabled:(BOOL)enabled;
- (void)invalidateMergedThreadFilterModes;
- (void)invalidateSpamIndicatorCachedValues;
- (void)invalidateSpamIndicatorCachedValuesIfNeeded;
- (void)inviteParticipants:(id)participants reason:(id)reason;
- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)completion;
- (void)join;
- (void)joinExistingConversation:(id)conversation;
- (void)joinExistingTUConversation;
- (void)joinExistingTUConversationWithUUID:(id)d;
- (void)leave;
- (void)leaveConversation;
- (void)leaveCurrentTUCall;
- (void)loadAttachments:(id)attachments;
- (void)loadInlineRepliesForThreadIdentifier:(id)identifier threadOriginator:(id)originator messageGuid:(id)guid;
- (void)loadParticipantContactsIfNecessary;
- (void)markAllLocationShareItemsAsUnactionable;
- (void)markAllMessagesAsRead;
- (void)markAsKnownAndSaveInContacts:(BOOL)contacts completion:(id)completion;
- (void)markBusinessChatAsSpam:(unint64_t)spam;
- (void)markChatItemAsNotifyRecipient:(id)recipient;
- (void)markChatItemAsPlayed:(id)played;
- (void)markChatItemAsPlayedExpressiveSend:(id)send;
- (void)markChatItemAsSaved:(id)saved;
- (void)markKTFailureSeen;
- (void)markLastMessageAsUnread;
- (void)markMessageAsRead:(id)read;
- (void)markMessageAsUnread:(id)unread;
- (void)markMessagesAsRead:(id)read;
- (void)markRepliedForMessageGUID:(id)d;
- (void)queryTrustKitDecisioningIfNeededWithItems:(id)items reply:(id)reply;
- (void)recalculateMergedThreadFilterModes;
- (void)recomputeChatItemsForScreenTimeStatusChanged;
- (void)recoverFromJunkTo:(int64_t)to;
- (void)refetchLocalTranscriptBackgroundAssetIfNecessary;
- (void)refreshServiceForSendingWithCompletion:(id)completion;
- (void)reloadChatItemsForSuggestedRepliesChange;
- (void)remove;
- (void)removeMentionMessageGUID:(id)d;
- (void)removeParticipants:(id)participants reason:(id)reason;
- (void)replaceItemWhenReplied:(id)replied;
- (void)reportJunkToCarrierViaRelay:(BOOL)relay;
- (void)reportLazuliSpam:(unint64_t)spam isBot:(BOOL)bot;
- (void)reportNotJunkToTrustKit;
- (void)repositionSticker:(id)sticker associatedChatItem:(id)item;
- (void)resendEditedMessageItem:(id)item forPartIndex:(int64_t)index withBackwardCompatabilityText:(id)text;
- (void)resendGroupPhoto;
- (void)retractMessagePart:(id)part;
- (void)retractScheduledMessagePartIndexes:(id)indexes fromChatItem:(id)item;
- (void)retryGroupPhotoUploadIfNecessary;
- (void)retryTranscriptBackgroundUploadIfNecessary;
- (void)saveWatermark;
- (void)sendAutoDonationUpdate:(BOOL)update;
- (void)sendCurrentLocationMessage;
- (void)sendGroupPhotoUpdate:(id)update;
- (void)sendHQAttachmentsForMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message onAccount:(id)account;
- (void)sendMessage:(id)message onService:(id)service;
- (void)sendPendingSatelliteMessages;
- (void)sendProgress:(id)progress progressDidChange:(float)change sendingMessages:(id)messages sendCount:(unint64_t)count totalCount:(unint64_t)totalCount finished:(BOOL)finished;
- (void)sendRCSEncryptionTestMessageIfNecessary;
- (void)sendRCSMessage:(id)message fromChat:(id)chat;
- (void)sendSyndicationAction:(unsigned __int8)action forMessagePartGUID:(id)d syndicatedMessagePartRange:(_NSRange)range;
- (void)sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d;
- (void)setAutoDonationBehavior:(int64_t)behavior;
- (void)setAutomaticallyTranslate:(BOOL)translate languageCode:(id)code userLanguageCode:(id)languageCode;
- (void)setDeletingIncomingMessages:(BOOL)messages;
- (void)setDisplayName:(id)name;
- (void)setFilterControllersNeedsUpdateChatItems;
- (void)setHasHadSuccessfulQuery:(BOOL)query;
- (void)setHasOfferedAutomaticTranslationInTranslateMenu:(BOOL)menu;
- (void)setIsFiltered:(int64_t)filtered;
- (void)setKeyTransparencyURIToUUIDMapping:(id)mapping;
- (void)setLastAddressedHandleID:(id)d;
- (void)setLastAddressedSIMID:(id)d;
- (void)setMuteUntilDate:(id)date;
- (void)setRecipient:(id)recipient;
- (void)setRecovered:(BOOL)recovered;
- (void)setRoomName:(id)name;
- (void)setSelectedIndexOnCarouselChatItem:(id)item selectedIndex:(int64_t)index;
- (void)setSendProgressDelegate:(id)delegate;
- (void)setShouldShowAudioButtonInEntryView:(BOOL)view;
- (void)setShowingTranslatedText:(BOOL)text;
- (void)setSupportsEncryption:(BOOL)encryption;
- (void)setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d;
- (void)setValue:(id)value forChatProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property ofParticipant:(id)participant;
- (void)shareLocationWithDuration:(int64_t)duration;
- (void)startTrackingParticipantLocations;
- (void)stickerRepositionedForAssociatedChatItem:(id)item;
- (void)stopSharingLocation;
- (void)stopTrackingParticipantLocations;
- (void)stopTranscriptSharingWithChat;
- (void)unsubscribe;
- (void)updateAssociatedBusinessID:(id)d;
- (void)updateCachedAllowedByScreenTime:(BOOL)time;
- (void)updateCommSafety:(int64_t)safety forChatItem:(id)item;
- (void)updateCommSafety:(int64_t)safety forChatItems:(id)items parentChatItem:(id)item;
- (void)updateIsBlackholed:(BOOL)blackholed;
- (void)updateIsEmergencyChat:(BOOL)chat;
- (void)updateIsFiltered:(int64_t)filtered;
- (void)updateLastMessageGUID:(id)d forLanguageCode:(id)code;
- (void)updateLineSwitchedTo:(id)to;
- (void)updateMessage:(id)message withIndexesOfDeletedItems:(id)items withIndexToRangeMapOfDeletedItems:(id)deletedItems deleteDate:(id)date;
- (void)updateReplySuggestions;
- (void)updateSMSCategory:(int64_t)category subCategory:(int64_t)subCategory;
- (void)updateSendProgressForPendingTranslation;
- (void)updateShouldForceToSMS:(BOOL)s;
- (void)updateTranscriptBackgroundChannelTransferGUID:(id)d;
- (void)updateTranscriptBackgroundCommSafetyState:(int64_t)state;
- (void)updateTranscriptSharingState:(int64_t)state;
- (void)updateWatermarks;
- (void)userToggledReadReceiptSwitch:(BOOL)switch;
- (void)verifyFiltering;
- (void)watermarkInForScrutinyMode;
- (void)watermarkOutForScrutinyMode;
@end

@implementation IMChat

+ (id)chatItemUpdaterLogHandle
{
  if (qword_1EB2EA120 != -1)
  {
    sub_1A8252720();
  }

  v3 = qword_1EB2EA100;

  return v3;
}

- (BOOL)isBusinessChat
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self chatStyle]== 45)
  {
    brandInfo = [(IMChat *)self brandInfo];

    if (brandInfo)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      participants = [(IMChat *)self participants];
      v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        v6 = *v10;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(participants);
            }

            if ([*(*(&v9 + 1) + 8 * i) isBusiness])
            {
              LOBYTE(v4) = 1;
              goto LABEL_15;
            }
          }

          v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isStewieEmergencyChat
{
  chatIdentifier = [(IMChat *)self chatIdentifier];
  v3 = IMIsStringStewieEmergency();

  return v3;
}

- (NSString)chatIdentifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    style = self->_style;
    switch(style)
    {
      case '#':
        roomName = [(IMChat *)self roomName];
        v13 = self->_identifier;
        self->_identifier = roomName;

        break;
      case '+':
        chatIdentifierForGroups = self->__chatIdentifierForGroups;
        if (!chatIdentifierForGroups)
        {
          guid = [(IMChat *)self guid];
          IMComponentsFromChatGUID();
          v10 = 0;

          if (v10)
          {
            roomName2 = v10;
          }

          else
          {
            roomName2 = [(IMChat *)self roomName];
          }

          v14 = self->__chatIdentifierForGroups;
          self->__chatIdentifierForGroups = roomName2;

          uppercaseString = [(NSString *)self->_identifier uppercaseString];
          [(IMChat *)self setGroupChatIdentifierUppercase:uppercaseString];

          chatIdentifierForGroups = self->__chatIdentifierForGroups;
        }

        objc_storeStrong(&self->_identifier, chatIdentifierForGroups);
        break;
      case '-':
        recipient = [(IMChat *)self recipient];
        v6 = [recipient ID];
        v7 = self->_identifier;
        self->_identifier = v6;

        break;
    }

    identifier = self->_identifier;
  }

  v16 = identifier;

  return v16;
}

- (id)associatedBusinessID
{
  if ([(IMChat *)self isStewieRoadsideChat])
  {
    v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6AF8]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_delayedInvalidateDowngradeState
{
  downgradeStateUpdater = [(IMChat *)self downgradeStateUpdater];

  if (!downgradeStateUpdater)
  {
    v4 = [objc_alloc(MEMORY[0x1E69A6158]) initWithTarget:self action:sel__invalidateDowngradeState];
    [(IMChat *)self setDowngradeStateUpdater:v4];
  }

  downgradeStateUpdater2 = [(IMChat *)self downgradeStateUpdater];
  [downgradeStateUpdater2 setNeedsUpdate];
}

- (void)invalidateSpamIndicatorCachedValuesIfNeeded
{
  if ([(IMChat *)self cachedShouldShowReportSpam]== 2)
  {
    [(IMChat *)self setCachedShouldShowReportSpam:0];
  }

  if ([(IMChat *)self cachedShouldShowSpam]== 2)
  {

    [(IMChat *)self setCachedShouldShowSpam:0];
  }
}

- (void)_clearPendingMessages
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_joinState == 3 && self->_messagesPendingJoin)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        messagesPendingJoin = self->_messagesPendingJoin;
        *buf = 138412290;
        v21 = messagesPendingJoin;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "messages pending join: %@", buf, 0xCu);
      }
    }

    v5 = [(NSMutableArray *)self->_messagesPendingJoin copy];
    v6 = self->_messagesPendingJoin;
    self->_messagesPendingJoin = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v10 = *v16;
      *&v9 = 138412290;
      v14 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v14;
              v21 = v12;
              _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Un-pending message: %@", buf, 0xCu);
            }
          }

          [(IMChat *)self _sendMessage:v12 adjustingSender:0 shouldQueue:1, v14, v15];
          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)isStewieRoadsideChat
{
  chatIdentifier = [(IMChat *)self chatIdentifier];
  v3 = IMIsStringStewieRoadside();

  return v3;
}

- (BOOL)isAutomaticTranslationEnabled
{
  v2 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B60]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDate)lastFinishedMessageDate
{
  _lastFinishedMessage = [(IMItemsController *)self _lastFinishedMessage];
  time = [_lastFinishedMessage time];

  if (!time)
  {
    time = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{-[IMChat lastMessageTimeStampOnLoad](self, "lastMessageTimeStampOnLoad")}];
  }

  return time;
}

- (BOOL)supportsMergingFilteredThreads
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (!isMergeFilteredThreadsEnabled || [(IMChat *)self isFiltered]< 1)
  {
    return 0;
  }

  mergedThreadFilterModes = [(IMChat *)self mergedThreadFilterModes];
  v6 = [mergedThreadFilterModes count] > 1;

  return v6;
}

- (void)verifyFiltering
{
  if (![(IMChat *)self isFiltered])
  {
    return;
  }

  isCategorized = [(IMChat *)self isCategorized];
  supportsFilteringExtensions = [(IMChat *)self supportsFilteringExtensions];
  v5 = supportsFilteringExtensions;
  if (supportsFilteringExtensions && !isCategorized)
  {
    return;
  }

  if ((IMIsRunningInFullClient() & 1) == 0 && !IMIsRunningInUnitTesting() || ![(IMChat *)self isFiltered])
  {
    return;
  }

  if (!v5)
  {
    account = [(IMChat *)self account];
    service = [account service];
    v12 = +[IMServiceImpl smsService];

    if (service != v12)
    {
      [(IMChat *)self clearSMSCategory];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled] && -[IMChat containsMessageFromContact](self, "containsMessageFromContact"))
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            v16 = "iMessage Chat has messages from a contact: Updating isFiltered to NO";
LABEL_67:
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, v16, v21, 2u);
            goto LABEL_68;
          }

          goto LABEL_68;
        }
      }

      else
      {
        if (([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled] & 1) != 0 || !-[IMChat containsMessageFromContactOrMe](self, "containsMessageFromContactOrMe"))
        {
          if (![(IMChat *)self hasKnownParticipants])
          {
            goto LABEL_70;
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_69;
          }

          v15 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          *v21 = 0;
          v16 = "iMessage Chat has known participants: Updating isFiltered to NO";
          goto LABEL_67;
        }

        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            v16 = "iMessage Chat has replies: Updating isFiltered to NO";
            goto LABEL_67;
          }

          goto LABEL_68;
        }
      }
    }

    else if ([(IMChat *)self containsMessageFromContactOrMe])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v16 = "iMessage Chat has replies: Updating isFiltered to NO";
          goto LABEL_67;
        }

LABEL_68:
      }
    }

    else
    {
      if (![(IMChat *)self hasKnownParticipants])
      {
        goto LABEL_70;
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v16 = "iMessage Chat has known participants: Updating isFiltered to NO";
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

LABEL_69:
    [(IMChat *)self updateIsFiltered:0, *v21];
LABEL_70:
    if ([(IMChat *)self shouldBeAllowListed])
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v20 = "Allow listed iMessage: Updating isFiltered to NO";
LABEL_79:
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, v20, v21, 2u);
          goto LABEL_80;
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (![(IMChat *)self isStewieChat]&& ![(IMChat *)self isStewieSharingChat])
      {
        goto LABEL_82;
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v20 = "Stewie Chat: Updating isFiltered to NO";
          goto LABEL_79;
        }

LABEL_80:
      }
    }

    [(IMChat *)self updateIsFiltered:0, *v21];
LABEL_82:
    if (+[IMChatRegistry hasInitializedChatFiltering])
    {
      [(IMChat *)self autoReportSpam];
    }

    else
    {
      [(IMChat *)self markAsAutoSpamReported];
    }

    return;
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled2 = [mEMORY[0x1E69A8070]2 isIntroductionsEnabled];

  if (isIntroductionsEnabled2)
  {
    if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled] && -[IMChat isOscarChat](self, "isOscarChat") && -[IMChat containsMessageFromContact](self, "containsMessageFromContact"))
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v9 = "iMessage junk chat has messages from a contact: Updating isFiltered to NO";
LABEL_95:
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, v9, v21, 2u);
          goto LABEL_96;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if (([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled] & 1) == 0 && -[IMChat isOscarChat](self, "isOscarChat") && -[IMChat containsMessageFromContactOrMe](self, "containsMessageFromContactOrMe"))
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v9 = "iMessage junk chat has replies: Updating isFiltered to NO";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled] && -[IMChat containsMessageFromContact](self, "containsMessageFromContact") && -[IMChat isFiltered](self, "isFiltered") <= 1 && !isCategorized)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v18 = "SMS Chat has messages from a contact: Updating isFiltered to NO";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if (([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled] & 1) == 0 && -[IMChat containsMessageFromContactOrMe](self, "containsMessageFromContactOrMe") && -[IMChat isFiltered](self, "isFiltered") <= 1 && !isCategorized)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v18 = "SMS Chat has replies: Updating isFiltered to NO";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if ([(IMChat *)self hasKnownParticipants])
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v18 = "SMS Chat has known participants: Updating isFiltered to NO";
LABEL_107:
          _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, v18, v21, 2u);
          goto LABEL_108;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if ([(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieSharingChat])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v9 = "Stewie Chat, supports filtering extensions: Updating isFiltered to NO";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }
  }

  else
  {
    if ([(IMChat *)self isOscarChat]&& [(IMChat *)self containsMessageFromContactOrMe])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v9 = "iMessage junk chat has replies: Updating isFiltered to NO";
          goto LABEL_95;
        }

LABEL_96:
      }

LABEL_97:
      [(IMChat *)self updateIsFiltered:0, *v21];
      return;
    }

    if ([(IMChat *)self containsMessageFromContactOrMe]&& [(IMChat *)self isFiltered]<= 1 && !isCategorized)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v18 = "SMS Chat has replies: Updating isFiltered to NO";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if ([(IMChat *)self hasKnownParticipants])
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v18 = "SMS Chat has known participants: Updating isFiltered to NO";
          goto LABEL_107;
        }

LABEL_108:
      }

LABEL_109:
      [(IMChat *)self updateIsFiltered:0, *v21];
      [(IMChat *)self clearSMSCategory];
      return;
    }

    if ([(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieSharingChat])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          v9 = "Stewie Chat, supports filtering extensions: Updating isFiltered to NO";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }
  }
}

- (void)fetchBrandInfoIfNecessary
{
  selfCopy = self;
  sub_1A82534F8();
}

- (void)_postNewUnreadCount
{
  v17 = *MEMORY[0x1E69E9840];
  unreadMessageCount = [(IMChat *)self unreadMessageCount];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      dbUnreadCount = self->_dbUnreadCount;
      guid = [(IMChat *)self guid];
      *buf = 67109634;
      v12 = dbUnreadCount;
      v13 = 1024;
      v14 = unreadMessageCount;
      v15 = 2112;
      v16 = guid;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "_dbUnreadCount changed to %d: Posting new unread count of %d for chat with guid %@", buf, 0x18u);
    }
  }

  [(IMChat *)self setMarkingUnread:0];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{unreadMessageCount, @"__kIMChatUnreadKey"}];
  v10 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(IMChat *)self _postNotification:@"__kIMChatUnreadCountChangedNotification" userInfo:v8];
}

- (unint64_t)unreadMessageCount
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    v6 = [chatRegistry _chat_cachedUnreadCount:self];

    return v6;
  }

  else
  {
    dbUnreadCount = self->_dbUnreadCount;
    if ((dbUnreadCount | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return dbUnreadCount & ~(dbUnreadCount >> 63);
    }
  }
}

- (BOOL)isPendingReview
{
  chatRegistry = [(IMChat *)self chatRegistry];
  unreadCountController = [chatRegistry unreadCountController];
  _guids = [(IMChat *)self _guids];
  allObjects = [_guids allObjects];
  v7 = [unreadCountController pendingReviewCountForChatsWithGUIDs:allObjects] > 0;

  return v7;
}

- (BOOL)isPinned
{
  v3 = +[IMPinnedConversationsController processSupportsPinnedConversations];
  if (v3)
  {
    v4 = +[IMPinnedConversationsController sharedInstance];
    v5 = [v4 pinnedConversationsContainsChat:self];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (unint64_t)messageCount
{
  _items = [(IMItemsController *)self _items];
  v3 = [_items count];

  return v3;
}

- (IMMessage)lastMessage
{
  _lastMessage = [(IMItemsController *)self _lastMessage];
  message = [_lastMessage message];

  return message;
}

- (BOOL)isMuted
{
  mEMORY[0x1E69A8180] = [MEMORY[0x1E69A8180] sharedList];
  LOBYTE(self) = [mEMORY[0x1E69A8180] isMutedChat:self];

  return self;
}

- (BOOL)isStewieSharingChat
{
  cachedStewieSharingChat = self->_cachedStewieSharingChat;
  if (!cachedStewieSharingChat)
  {
    v4 = MEMORY[0x1E696AD98];
    emergencyUserInfo = [(IMChat *)self emergencyUserInfo];
    v6 = [v4 numberWithInt:emergencyUserInfo != 0];
    v7 = self->_cachedStewieSharingChat;
    self->_cachedStewieSharingChat = v6;

    cachedStewieSharingChat = self->_cachedStewieSharingChat;
  }

  return [(NSNumber *)cachedStewieSharingChat BOOLValue];
}

- (IMSharedEmergencyInfo)emergencyUserInfo
{
  v2 = MEMORY[0x1E69A8270];
  v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B58]];
  v4 = [v2 infoFromDictionary:v3 isStewieTranscriptSharingMessage:0];

  return v4;
}

- (BOOL)allowedByScreenTime
{
  if (!+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    return 1;
  }

  v3 = IMSharedDowntimeController();
  v4 = [v3 allowedToShowConversationForChat:self sync:0];

  return v4;
}

- (id)participantHandleIDs
{
  participants = [(IMChat *)self participants];
  v3 = [participants __imArrayByApplyingBlock:&unk_1F1B6EEA0];

  return v3;
}

- (IMMessage)lastFinishedMessage
{
  _lastFinishedMessage = [(IMItemsController *)self _lastFinishedMessage];
  message = [_lastFinishedMessage message];

  return message;
}

- (id)chatSummary
{
  v20 = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    v8 = 0;
    goto LABEL_22;
  }

  v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B28]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = [v3 objectForKey:*MEMORY[0x1E69A6B20]];
  bOOLValue = [v4 BOOLValue];

  if (!bOOLValue)
  {
    chatSummaryMessageGUID = [(IMChat *)self chatSummaryMessageGUID];
    if (chatSummaryMessageGUID)
    {
      lastMessage = [(IMChat *)self lastMessage];
      guid = [lastMessage guid];

      if (guid && ([guid isEqualToString:chatSummaryMessageGUID] & 1) == 0)
      {
        [(IMChat *)self consumeSummaryIfNeeded];

        v8 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    v12 = [v3 objectForKey:*MEMORY[0x1E69A6B38]];
    v17 = 0;
    v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v17];
    v14 = v17;
    if (v14)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1220();
      }

      v8 = 0;
    }

    else
    {
      v8 = v13;
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      guid2 = [(IMChat *)self guid];
      *buf = 138412290;
      v19 = guid2;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Stored summary was already consumed for chat with GUID %@.", buf, 0xCu);
    }
  }

LABEL_8:
  v8 = 0;
LABEL_21:

LABEL_22:

  return v8;
}

- (id)conversation
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[IMChatRegistry sharedRegistry];
  conversationManager = [v3 conversationManager];
  activeConversations = [conversationManager activeConversations];

  v6 = [activeConversations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(activeConversations);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(IMChat *)self mapsToTUConversation:v10])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [activeConversations countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (IMMessage)lastIncomingFinishedMessage
{
  lastIncomingFinishedMessageItem = [(IMItemsController *)self lastIncomingFinishedMessageItem];
  message = [lastIncomingFinishedMessageItem message];

  return message;
}

- (BOOL)isStewieChat
{
  chatIdentifier = [(IMChat *)self chatIdentifier];
  v3 = MEMORY[0x1AC56C3D0]();

  return v3;
}

- (BOOL)hasBlockedParticipant
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  participants = [(IMChat *)self participants];
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

        if (![*(*(&v7 + 1) + 8 * i) blockedStatus])
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

- (BOOL)isMergedBusinessThread
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeBusinessSenderIndiaEnabled = [mEMORY[0x1E69A8070] isMergeBusinessSenderIndiaEnabled];

  if (!isMergeBusinessSenderIndiaEnabled)
  {
    return 0;
  }

  v5 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6BC8]];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)isReadOnly
{
  v3 = +[IMChorosMonitor sharedInstance];
  isMessagingActiveOverSatellite = [v3 isMessagingActiveOverSatellite];

  if (isMessagingActiveOverSatellite && ![(IMChat *)self isStewieChat])
  {
    if ([(IMChat *)self isGroupChat])
    {
      return 1;
    }

    account = [(IMChat *)self account];
    service = [account service];
    v10 = +[IMServiceImpl iMessageLiteService];
    v11 = v10;
    if (service == v10)
    {

      goto LABEL_3;
    }

    account2 = [(IMChat *)self account];
    service2 = [account2 service];
    v14 = +[IMServiceImpl satelliteSMSService];

    if (service2 != v14)
    {
      return 1;
    }
  }

LABEL_3:
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled && ![(IMChat *)self isGroupChat]&& [(IMChat *)self allParticipantsBlocked])
  {
    return 1;
  }

  if ([(IMChat *)self joinState]== 4 && ![(IMChat *)self isGroupChat])
  {
    return ![(IMChat *)self isBusinessChat];
  }

  else
  {
    return 0;
  }
}

- (BOOL)allParticipantsBlocked
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  participants = [(IMChat *)self participants];
  v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(participants);
        }

        v6 &= [*(*(&v9 + 1) + 8 * i) blockedStatus] == 0;
      }

      v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_calculateDowngradeState
{
  v45 = *MEMORY[0x1E69E9840];
  if (![(IMChat *)self ignoreDowngradeStatusUpdates])
  {
    if ([(IMChat *)self isDowngraded])
    {
      service = +[IMService smsService];
    }

    else
    {
      lastMessage = [(IMChat *)self lastMessage];
      sender = [lastMessage sender];
      service = [sender service];
    }

    if (!+[IMServiceImpl smsEnabled])
    {
      goto LABEL_35;
    }

    if ([(IMChat *)self chatStyle]!= 45)
    {
      goto LABEL_35;
    }

    v6 = +[IMServiceImpl smsService];

    if (service != v6 || ![(IMChat *)self _recipientIsPhoneNumber])
    {
      goto LABEL_35;
    }

    v7 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A61E0]];
    v8 = v7;
    if (!v7 || (v9 = MEMORY[0x1E695DF00], [v7 doubleValue], objc_msgSend(v9, "dateWithTimeIntervalSince1970:"), v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue()), v10 == 0.0))
    {
      lastMessage2 = [(IMChat *)self lastMessage];
      error = [lastMessage2 error];
      code = [error code];

      v23 = IMOSLoggingEnabled();
      if (code != 43)
      {
        if (v23)
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Marking self (%@) as upgraded because it does not have a downgrade time specified", buf, 0xCu);
          }
        }

        goto LABEL_34;
      }

      if (v23)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy6 = self;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "User resent as SMS in response to blackhole error; Marking chat (%@) as downgraded.", buf, 0xCu);
        }
      }

      [(IMChat *)self _updateDowngradeState:1 checkAgainInterval:0.0];
    }

    else
    {
      [(IMChat *)self _consecutiveDowngradeAttemptsViaManualDowngrades:0];
      v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v12 = [(IMChat *)self _consecutiveDowngradeAttemptsViaManualDowngrades:1];
      v13 = sub_1A83A9EE0(v12, *&v11);
      v32 = 0;
      v14 = sub_1A83A9E70(*&v10, &v32);
      if (!v32)
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy6 = self;
            v35 = 2112;
            v36 = v10;
            _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Marking self (%@) as upgraded because it's time since downgrade is in the future (%@). This should not happen. File a radar.", buf, 0x16u);
          }
        }

        [(IMChat *)self _clearDowngradeMarkers];
        goto LABEL_33;
      }

      v15 = v14;
      v16 = sub_1A83A9E48(v13);
      v17 = v16;
      if (v15 >= v16)
      {
        v18 = IMOSLoggingEnabled();
        if (v13)
        {
          if (v18)
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138413570;
              selfCopy6 = self;
              v35 = 2048;
              v36 = v15;
              v37 = 2048;
              v38 = v13;
              v39 = 2112;
              v40 = v11;
              v41 = 2112;
              v42 = v12;
              v43 = 2048;
              v44 = v17;
              _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Marking chat (%@) as upgraded because it's been %5.2f seconds since downgrade, larger than threshold for %ld (%@ auto, %@ manual) consecutive downgraded messages (%5.2f)", buf, 0x3Eu);
            }
          }
        }

        else if (v18)
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Marking chat (%@) as upgraded because there are no active downgrade markers.", buf, 0xCu);
          }
        }

LABEL_33:

LABEL_34:
LABEL_35:
        [(IMChat *)self _updateDowngradeState:2 checkAgainInterval:0.0];
LABEL_36:

        return;
      }

      v27 = [*&v10 dateByAddingTimeInterval:v16];
      [v27 timeIntervalSinceNow];
      v29 = v28;

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          selfCopy6 = self;
          v35 = 2112;
          v36 = v11;
          v37 = 2112;
          v38 = v12;
          v39 = 2048;
          v40 = v29;
          _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Marking chat (%@) as downgraded because of %@ automatic downgrades, %@ manual downgrades, with %5.2f seconds until next update check.", buf, 0x2Au);
        }
      }

      [(IMChat *)self _updateDowngradeState:1 checkAgainInterval:v29];
    }

    goto LABEL_36;
  }
}

- (BOOL)wasDetectedAsSMSSpam
{
  if ([(IMChat *)self wasDetectedAsSMSSpamCacheStatus])
  {
    return [(IMChat *)self wasDetectedAsSMSSpamCacheStatus]== 2;
  }

  v4 = [(IMChat *)self valueForChatProperty:@"wasDetectedAsSMSSpam"];
  if ([v4 intValue])
  {

LABEL_6:
    [(IMChat *)self setWasDetectedAsSMSSpamCacheStatus:2];
    return 1;
  }

  v5 = [(IMChat *)self valueForChatProperty:@"SMSCategory"];
  intValue = [v5 intValue];

  if (intValue == 1)
  {
    goto LABEL_6;
  }

  [(IMChat *)self setWasDetectedAsSMSSpamCacheStatus:1];
  return 0;
}

- (NSString)description
{
  v30 = MEMORY[0x1E696AEC0];
  chatIdentifier = [(IMChat *)self chatIdentifier];
  guid = [(IMChat *)self guid];
  persistentID = [(IMChat *)self persistentID];
  account = [(IMChat *)self account];
  uniqueID = [account uniqueID];
  chatStyle = [(IMChat *)self chatStyle];
  joinState = [(IMChat *)self joinState];
  participants = [(IMChat *)self participants];
  v32 = uniqueID;
  v36 = guid;
  v37 = chatIdentifier;
  if (participants)
  {
    v7 = MEMORY[0x1E696AD98];
    participants2 = [(IMChat *)self participants];
    v29 = [v7 numberWithUnsignedInteger:{objc_msgSend(participants2, "count")}];
  }

  else
  {
    v29 = @"nil";
  }

  roomName = [(IMChat *)self roomName];
  displayName = [(IMChat *)self displayName];
  if ([(IMChat *)self isUnregistered])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v25 = v8;
  lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
  lastAddressedSIMID = [(IMChat *)self lastAddressedSIMID];
  groupID = [(IMChat *)self groupID];
  unreadMessageCount = [(IMChat *)self unreadMessageCount];
  messageFailureCount = [(IMChat *)self messageFailureCount];
  isFiltered = [(IMChat *)self isFiltered];
  mergedThreadFilterModes = [(IMChat *)self mergedThreadFilterModes];
  if ([(IMChat *)self hasHadSuccessfulQuery])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  bizIntent = [(IMChat *)self bizIntent];
  personCentricID = [(IMChat *)self personCentricID];
  mergedPinningIdentifiers = [(IMChat *)self mergedPinningIdentifiers];
  if ([(IMChat *)self isRecovered])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(IMChat *)self isDeletingIncomingMessages])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(IMChat *)self isPendingReview])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [v30 stringWithFormat:@"<IMChat %p> [Identifier: %@   GUID: %@ Persistent ID: %@   Account: %@   Style: %c   State: %d  Participants: %@  Room Name: %@  Display Name: %@  Unregistered: %@  Last Addressed Handle: %@ Last Addressed SIMID: %@ Group ID: %@  Unread Count: %u  Failure Count: %u, isFiltered: %d, filterModes: %@, hasHadSuccessfulQuery: %@, bizIntent: %@ personCentricID: %@ mergedPinningIdentifiers: %@, isRecovered: %@  isDeletingIncomingMessages: %@, isPendingReview: %@]", self, v37, v36, persistentID, v32, chatStyle, joinState, v29, roomName, displayName, v25, lastAddressedHandleID, lastAddressedSIMID, groupID, unreadMessageCount, messageFailureCount, isFiltered, mergedThreadFilterModes, v10, bizIntent, personCentricID, mergedPinningIdentifiers, v14, v15, v16];

  if (participants)
  {
  }

  return v17;
}

- (NSSet)mergedThreadFilterModes
{
  mergedThreadFilterModes = self->_mergedThreadFilterModes;
  if (!mergedThreadFilterModes)
  {
    [(IMChat *)self recalculateMergedThreadFilterModes];
    mergedThreadFilterModes = self->_mergedThreadFilterModes;
  }

  return mergedThreadFilterModes;
}

- (BOOL)isCategorized
{
  v3 = [(IMChat *)self valueForChatProperty:@"wasDetectedAsSMSSpam"];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(IMChat *)self valueForChatProperty:@"SMSCategory"];
    v4 = [v5 intValue] > 0;
  }

  return v4;
}

- (unint64_t)messageFailureCount
{
  dbFailedCount = self->_dbFailedCount;
  if ((dbFailedCount | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return dbFailedCount & ~(dbFailedCount >> 63);
  }
}

- (IMHandle)businessHandle
{
  participants = [(IMChat *)self participants];
  firstObject = [participants firstObject];

  if ([(IMChat *)self isBusinessChat]|| [(IMHandle *)firstObject isBusiness])
  {
    v5 = firstObject;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)refreshServiceForSendingWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v7 = IMGetCachedDomainValueForKey();
    v8 = [IMServiceImpl serviceWithInternalName:v7];
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = v7;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Overriding service for sending to %@ per user-default", &v11, 0xCu);
        }
      }

      [(IMChat *)self _targetToService:v8 newComposition:0 supportsEncryption:0];
      completionCopy[2](completionCopy, 1);

      goto LABEL_18;
    }

    if (v7 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Ignoring service for sending override to %@ because service does not exist", &v11, 0xCu);
      }
    }
  }

  if ([(IMChat *)self ignoreDowngradeStatusUpdates])
  {
    [(IMChat *)self setIgnoreDowngradeStatusUpdates:0];
    if (![(IMChat *)self downgradeState])
    {
      [(IMChat *)self _invalidateDowngradeState];
    }
  }

  [(IMChat *)self _refreshServiceForSendingWithDaemonWithCompletion:completionCopy];
LABEL_18:
}

- (void)downgradeMessage:(id)message manualDowngrade:(BOOL)downgrade downgradeChat:(BOOL)chat
{
  chatCopy = chat;
  downgradeCopy = downgrade;
  participants = [(IMChat *)self participants];
  if ([participants count] == 1)
  {
    if (chatCopy)
    {
      [(IMChat *)self _updateDowngradeState:1 checkAgainInterval:0.0];
    }

    else
    {
      [(IMChat *)self _setAndIncrementDowngradeMarkersForManual:downgradeCopy];
    }
  }

  v8 = +[IMService smsService];
  [(IMChat *)self _targetToService:v8 newComposition:0 supportsEncryption:0];
}

- (BOOL)_accountIsOperational:(id)operational forService:(id)service
{
  operationalCopy = operational;
  _isUsableForSending = 0;
  if (operationalCopy && service)
  {
    serviceCopy = service;
    service = [operationalCopy service];

    if (service == serviceCopy)
    {
      _isUsableForSending = [operationalCopy _isUsableForSending];
    }

    else
    {
      _isUsableForSending = 0;
    }
  }

  return _isUsableForSending;
}

- (id)_previousAccountForService:(id)service
{
  if (service)
  {
    serviceCopy = service;
    v5 = [(IMChat *)self valueForChatProperty:@"CKChatPreviousAccountsDictionaryKey"];
    name = [serviceCopy name];

    v7 = [v5 objectForKey:name];

    if (v7)
    {
      v8 = +[IMAccountController sharedInstance];
      v9 = [v8 accountForUniqueID:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setPreviousAccount:(id)account forService:(id)service
{
  accountCopy = account;
  serviceCopy = service;
  if (serviceCopy)
  {
    v7 = [(IMChat *)self valueForChatProperty:@"CKChatPreviousAccountsDictionaryKey"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = v9;
    if (accountCopy)
    {
      uniqueID = [accountCopy uniqueID];

      if (!uniqueID)
      {
LABEL_10:
        [(IMChat *)self setValue:v10 forChatProperty:@"CKChatPreviousAccountsDictionaryKey"];

        goto LABEL_11;
      }

      uniqueID2 = [accountCopy uniqueID];
      name = [serviceCopy name];
      [v10 setObject:uniqueID2 forKey:name];
    }

    else
    {
      uniqueID2 = [serviceCopy name];
      [v10 removeObjectForKey:uniqueID2];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_targetToService:(id)service newComposition:(BOOL)composition supportsEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  compositionCopy = composition;
  v42 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  account = [(IMChat *)self account];
  v10 = [(IMChat *)self _accountIsOperational:account forService:serviceCopy];

  if (!v10 || compositionCopy)
  {
    [(IMChat *)self setSupportsEncryption:encryptionCopy];
    account2 = [(IMChat *)self account];
    service = [account2 service];
    v14 = [(IMChat *)self _previousAccountForService:serviceCopy];
    if (v14)
    {
      if ([(IMChat *)self _accountIsOperational:v14 forService:serviceCopy])
      {
        v15 = v14;
        [(IMChat *)self _setPreviousAccount:0 forService:serviceCopy];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            name = [service name];
            name2 = [serviceCopy name];
            v36 = 138412802;
            v37 = name;
            v38 = 2112;
            v39 = name2;
            v40 = 2112;
            v41 = v15;
            _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Targeting chat from [%@] to [%@] with preference to previous account: %@", &v36, 0x20u);
          }
        }

        if (!compositionCopy)
        {
          goto LABEL_35;
        }

LABEL_15:
        v19 = +[IMServiceImpl smsService];
        v20 = v19 == serviceCopy;

        if (v20)
        {
          v24 = v15;
        }

        else
        {
          v21 = +[IMAccountController sharedInstance];
          participants = [(IMChat *)self participants];
          v23 = [participants arrayByApplyingSelector:"ID"];
          v24 = [v21 _bestAccountForAddresses:v23];

          service2 = [v24 service];
          v26 = service2 == serviceCopy;

          if (!v26)
          {
            if (IMOSLoggingEnabled())
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v36 = 138412546;
                v37 = v24;
                v38 = 2112;
                v39 = serviceCopy;
                _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Account returned [%@] did not match the service we wanted [%@], moving to the default account", &v36, 0x16u);
              }
            }

            v28 = IMPreferredAccountForService(serviceCopy);

            v24 = v28;
          }

          if ([v24 _isUsableForSending])
          {
            v15 = v24;
LABEL_30:
            v30 = IMOSLoggingEnabled();
            if (!v15)
            {
              if (v30)
              {
                v35 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  v36 = 136315138;
                  v37 = "[IMChat(IMChat_ServiceForSending) _targetToService:newComposition:supportsEncryption:]";
                  _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "In (%s), expected to target to a useable account, but didn't have one", &v36, 0xCu);
                }
              }

              v15 = 0;
              goto LABEL_41;
            }

            if (v30)
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                name3 = [service name];
                name4 = [serviceCopy name];
                v36 = 138412802;
                v37 = name3;
                v38 = 2112;
                v39 = name4;
                v40 = 2112;
                v41 = v15;
                _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Targeting chat from [%@] to [%@] with using the default account: %@", &v36, 0x20u);
              }
            }

LABEL_35:
            [(IMChat *)self _setAccount:v15];
            service3 = [account2 service];
            [(IMChat *)self _setPreviousAccount:account2 forService:service3];

LABEL_41:
            goto LABEL_42;
          }

          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v36 = 138412546;
              v37 = v24;
              v38 = 2112;
              v39 = serviceCopy;
              _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Account returned [%@] is not operational [%@], moving to the default account", &v36, 0x16u);
            }
          }
        }

        v15 = IMPreferredAccountForService(serviceCopy);

        goto LABEL_30;
      }

      [(IMChat *)self _setPreviousAccount:0 forService:serviceCopy];
    }

    v15 = 0;
    goto LABEL_15;
  }

  if ([(IMChat *)self supportsEncryption]!= encryptionCopy)
  {
    [(IMChat *)self setSupportsEncryption:encryptionCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"__kIMChatSendingServiceChangedNotification" object:self];
  }

LABEL_42:
}

- (void)_updateDowngradeState:(char)state checkAgainInterval:(double)interval
{
  stateCopy = state;
  v29 = *MEMORY[0x1E69E9840];
  downgradeState = [(IMChat *)self downgradeState];
  if ([(IMChat *)self downgradeState]!= stateCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        downgradeState2 = [(IMChat *)self downgradeState];
        if (downgradeState2 == 1)
        {
          v10 = @"Downgraded";
        }

        else
        {
          v10 = @"Unknown";
        }

        if (downgradeState2 == 2)
        {
          v10 = @"Upgraded";
        }

        v11 = v10;
        if (stateCopy == 1)
        {
          v12 = @"Downgraded";
        }

        else
        {
          v12 = @"Unknown";
        }

        if (stateCopy == 2)
        {
          v12 = @"Upgraded";
        }

        v13 = v12;
        v19 = 138413314;
        selfCopy = self;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v13;
        v25 = 1024;
        v26 = downgradeState == 0;
        v27 = 2048;
        intervalCopy = interval;
      }
    }

    [(IMChat *)self setDowngradeState:stateCopy];
    if (downgradeState)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Posting downgrade state changed notification", &v19, 2u);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMChatDowngradeStatusChanged" object:self userInfo:0];

      [(IMChat *)self setLocalUserIsTyping:0];
    }
  }

  if (interval > 0.0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 67109120;
        LODWORD(selfCopy) = interval;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Scheduling timer to recalculate downgrade time in %d seconds", &v19, 8u);
      }
    }

    v17 = MEMORY[0x1E69E58C0];
    selfCopy2 = self;
    [v17 cancelPreviousPerformRequestsWithTarget:selfCopy2 selector:sel__calculateDowngradeStateTimerFired object:0];
    [(IMChat *)selfCopy2 performSelector:sel__calculateDowngradeStateTimerFired withObject:0 afterDelay:interval];
  }
}

- (void)_calculateDowngradeStateTimerFired
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Downgrade state recalculate timer fired", v4, 2u);
    }
  }

  [(IMChat *)self _calculateDowngradeState];
}

- (id)_consecutiveDowngradeAttemptsViaManualDowngrades:(BOOL)downgrades
{
  v3 = MEMORY[0x1E69A61E8];
  if (!downgrades)
  {
    v3 = MEMORY[0x1E69A61D8];
  }

  return [(IMChat *)self valueForChatProperty:*v3];
}

- (void)_clearDowngradeMarkers
{
  [(IMChat *)self setValue:0 forChatProperty:*MEMORY[0x1E69A61E8]];
  [(IMChat *)self setValue:0 forChatProperty:*MEMORY[0x1E69A61D8]];
  v3 = *MEMORY[0x1E69A61E0];

  [(IMChat *)self setValue:0 forChatProperty:v3];
}

- (void)_setAndIncrementDowngradeMarkersForManual:(BOOL)manual
{
  manualCopy = manual;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v7 = v6;

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  [IMChat setValue:"setValue:forChatProperty:" forChatProperty:?];
  v8 = MEMORY[0x1E69A61E8];
  if (!manualCopy)
  {
    v8 = MEMORY[0x1E69A61D8];
  }

  v9 = *v8;
  v10 = [(IMChat *)self valueForChatProperty:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 unsignedIntegerValue] + 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v12];
  [(IMChat *)self setValue:v13 forChatProperty:v9];
}

- (BOOL)_recipientIsPhoneNumber
{
  recipient = [(IMChat *)self recipient];
  v3 = [recipient ID];
  _appearsToBePhoneNumber = [v3 _appearsToBePhoneNumber];

  return _appearsToBePhoneNumber;
}

- (BOOL)shouldForceServerStatusRefresh
{
  if (-[IMChat supportsCapabilities:](self, "supportsCapabilities:", 512) && (-[IMChat account](self, "account"), v3 = objc_claimAutoreleasedReturnValue(), [v3 service], v4 = objc_claimAutoreleasedReturnValue(), +[IMService iMessageService](IMServiceImpl, "iMessageService"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v3, v4 == v5))
  {
    lastSentMessage = [(IMChat *)self lastSentMessage];
    v9 = lastSentMessage;
    if (lastSentMessage && ([lastSentMessage sender], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "service"), v11 = objc_claimAutoreleasedReturnValue(), +[IMService iMessageService](IMServiceImpl, "iMessageService"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, objc_msgSend(v9, "guid"), v13 = objc_claimAutoreleasedReturnValue(), -[IMChat lastUndeliveredMessageGUIDForForcedQuery](self, "lastUndeliveredMessageGUIDForForcedQuery"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, v11 == v12))
    {
      v6 = ([v9 isDelivered] | v15) ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_resetForceServerStatusRefresh
{
  v9 = *MEMORY[0x1E69E9840];
  lastSentMessage = [(IMChat *)self lastSentMessage];
  guid = [lastSentMessage guid];
  [(IMChat *)self setLastUndeliveredMessageGUIDForForcedQuery:guid];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid2 = [lastSentMessage guid];
      v7 = 138412290;
      v8 = guid2;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Stopping force queries while last sent message is %@", &v7, 0xCu);
    }
  }
}

- (unint64_t)capabilities
{
  if ([(IMChat *)self _supportsUndoSend])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | [(IMChat *)self _supportsEditMessage];
  if ([(IMChat *)self _supportsNameAndPhoto])
  {
    v4 |= 8uLL;
  }

  if ([(IMChat *)self _supportsAudioMessages])
  {
    v4 |= 0x40uLL;
  }

  if ([(IMChat *)self _supportsGroupIdentity])
  {
    v4 |= 0x10uLL;
  }

  if ([(IMChat *)self _supportsGroupMutability])
  {
    v4 |= 0x20uLL;
  }

  if ([(IMChat *)self _supportsInlineReply])
  {
    v4 |= 4uLL;
  }

  if ([(IMChat *)self _supportsMentions])
  {
    v4 |= 0x80uLL;
  }

  if ([(IMChat *)self _supportsDeleteAndBlockGroup])
  {
    v4 |= 0x100uLL;
  }

  if ([(IMChat *)self _supportsDeliveryReceipts])
  {
    v4 |= 0x200uLL;
  }

  if ([(IMChat *)self _supportsFaceTime])
  {
    v4 |= 0x400uLL;
  }

  if ([(IMChat *)self _supportsSendMenu])
  {
    v4 |= 0x800uLL;
  }

  if ([(IMChat *)self _supportsShareLocation])
  {
    v4 |= 0x1000uLL;
  }

  if ([(IMChat *)self _supportsSimSwitch])
  {
    v4 |= 0x2000uLL;
  }

  if ([(IMChat *)self _supportsAlternativeCommunicationActions])
  {
    v4 |= 0x4000uLL;
  }

  if ([(IMChat *)self _supportsAttachments])
  {
    v4 |= 0x10000uLL;
  }

  if ([(IMChat *)self _supportsStickers])
  {
    v4 |= 0x8000uLL;
  }

  if ([(IMChat *)self _supportsMessageEffects])
  {
    v4 |= 0x20000uLL;
  }

  if ([(IMChat *)self _supportsTapbacks])
  {
    v4 |= 0x40000uLL;
  }

  if ([(IMChat *)self _supportsSendLater])
  {
    v4 |= 0x80000uLL;
  }

  if ([(IMChat *)self _supportsInlineAdaptiveImageGlyphs])
  {
    v4 |= 0x400000uLL;
  }

  if ([(IMChat *)self _supportsExpressiveText])
  {
    v4 |= 0x100000uLL;
  }

  if ([(IMChat *)self _supportsFocusMode])
  {
    return v4 | 0x200000;
  }

  else
  {
    return v4;
  }
}

- (BOOL)supportsCapabilities:(unint64_t)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = capabilities & 1;
  if (capabilities)
  {
    _supportsEditMessage = [(IMChat *)self _supportsEditMessage];
    if ((capabilitiesCopy & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _supportsEditMessage = 0;
    if ((capabilities & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  _supportsUndoSend = [(IMChat *)self _supportsUndoSend];
  if (capabilitiesCopy)
  {
    _supportsEditMessage &= _supportsUndoSend;
  }

  else
  {
    _supportsEditMessage = _supportsUndoSend;
  }

  v5 = 1;
LABEL_9:
  if ((capabilitiesCopy & 4) != 0)
  {
    _supportsInlineReply = [(IMChat *)self _supportsInlineReply];
    if (v5)
    {
      _supportsEditMessage &= _supportsInlineReply;
    }

    else
    {
      _supportsEditMessage = _supportsInlineReply;
    }

    v5 = 1;
    if ((capabilitiesCopy & 8) == 0)
    {
LABEL_11:
      if ((capabilitiesCopy & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }
  }

  else if ((capabilitiesCopy & 8) == 0)
  {
    goto LABEL_11;
  }

  _supportsNameAndPhoto = [(IMChat *)self _supportsNameAndPhoto];
  if (v5)
  {
    _supportsEditMessage &= _supportsNameAndPhoto;
  }

  else
  {
    _supportsEditMessage = _supportsNameAndPhoto;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x10) == 0)
  {
LABEL_12:
    if ((capabilitiesCopy & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_45:
  _supportsGroupIdentity = [(IMChat *)self _supportsGroupIdentity];
  if (v5)
  {
    _supportsEditMessage &= _supportsGroupIdentity;
  }

  else
  {
    _supportsEditMessage = _supportsGroupIdentity;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x20) == 0)
  {
LABEL_13:
    if ((capabilitiesCopy & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_49:
  _supportsGroupMutability = [(IMChat *)self _supportsGroupMutability];
  if (v5)
  {
    _supportsEditMessage &= _supportsGroupMutability;
  }

  else
  {
    _supportsEditMessage = _supportsGroupMutability;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x40) == 0)
  {
LABEL_14:
    if ((capabilitiesCopy & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_53:
  _supportsAudioMessages = [(IMChat *)self _supportsAudioMessages];
  if (v5)
  {
    _supportsEditMessage &= _supportsAudioMessages;
  }

  else
  {
    _supportsEditMessage = _supportsAudioMessages;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x80) == 0)
  {
LABEL_15:
    if ((capabilitiesCopy & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_57:
  _supportsMentions = [(IMChat *)self _supportsMentions];
  if (v5)
  {
    _supportsEditMessage &= _supportsMentions;
  }

  else
  {
    _supportsEditMessage = _supportsMentions;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x100) == 0)
  {
LABEL_16:
    if ((capabilitiesCopy & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_61:
  _supportsDeleteAndBlockGroup = [(IMChat *)self _supportsDeleteAndBlockGroup];
  if (v5)
  {
    _supportsEditMessage &= _supportsDeleteAndBlockGroup;
  }

  else
  {
    _supportsEditMessage = _supportsDeleteAndBlockGroup;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x200) == 0)
  {
LABEL_17:
    if ((capabilitiesCopy & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_65:
  _supportsDeliveryReceipts = [(IMChat *)self _supportsDeliveryReceipts];
  if (v5)
  {
    _supportsEditMessage &= _supportsDeliveryReceipts;
  }

  else
  {
    _supportsEditMessage = _supportsDeliveryReceipts;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x400) == 0)
  {
LABEL_18:
    if ((capabilitiesCopy & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_69:
  _supportsFaceTime = [(IMChat *)self _supportsFaceTime];
  if (v5)
  {
    _supportsEditMessage &= _supportsFaceTime;
  }

  else
  {
    _supportsEditMessage = _supportsFaceTime;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x800) == 0)
  {
LABEL_19:
    if ((capabilitiesCopy & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

LABEL_73:
  _supportsSendMenu = [(IMChat *)self _supportsSendMenu];
  if (v5)
  {
    _supportsEditMessage &= _supportsSendMenu;
  }

  else
  {
    _supportsEditMessage = _supportsSendMenu;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x1000) == 0)
  {
LABEL_20:
    if ((capabilitiesCopy & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_77:
  _supportsShareLocation = [(IMChat *)self _supportsShareLocation];
  if (v5)
  {
    _supportsEditMessage &= _supportsShareLocation;
  }

  else
  {
    _supportsEditMessage = _supportsShareLocation;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x2000) == 0)
  {
LABEL_21:
    if ((capabilitiesCopy & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_81:
  _supportsSimSwitch = [(IMChat *)self _supportsSimSwitch];
  if (v5)
  {
    _supportsEditMessage &= _supportsSimSwitch;
  }

  else
  {
    _supportsEditMessage = _supportsSimSwitch;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x4000) == 0)
  {
LABEL_22:
    if ((capabilitiesCopy & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_89;
  }

LABEL_85:
  _supportsAlternativeCommunicationActions = [(IMChat *)self _supportsAlternativeCommunicationActions];
  if (v5)
  {
    _supportsEditMessage &= _supportsAlternativeCommunicationActions;
  }

  else
  {
    _supportsEditMessage = _supportsAlternativeCommunicationActions;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x8000) == 0)
  {
LABEL_23:
    if ((capabilitiesCopy & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_89:
  _supportsStickers = [(IMChat *)self _supportsStickers];
  if (v5)
  {
    _supportsEditMessage &= _supportsStickers;
  }

  else
  {
    _supportsEditMessage = _supportsStickers;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x10000) == 0)
  {
LABEL_24:
    if ((capabilitiesCopy & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_93:
  _supportsAttachments = [(IMChat *)self _supportsAttachments];
  if (v5)
  {
    _supportsEditMessage &= _supportsAttachments;
  }

  else
  {
    _supportsEditMessage = _supportsAttachments;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x20000) == 0)
  {
LABEL_25:
    if ((capabilitiesCopy & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_101;
  }

LABEL_97:
  _supportsMessageEffects = [(IMChat *)self _supportsMessageEffects];
  if (v5)
  {
    _supportsEditMessage &= _supportsMessageEffects;
  }

  else
  {
    _supportsEditMessage = _supportsMessageEffects;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x40000) == 0)
  {
LABEL_26:
    if ((capabilitiesCopy & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_105;
  }

LABEL_101:
  _supportsTapbacks = [(IMChat *)self _supportsTapbacks];
  if (v5)
  {
    _supportsEditMessage &= _supportsTapbacks;
  }

  else
  {
    _supportsEditMessage = _supportsTapbacks;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x80000) == 0)
  {
LABEL_27:
    if ((capabilitiesCopy & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_109;
  }

LABEL_105:
  _supportsSendLater = [(IMChat *)self _supportsSendLater];
  if (v5)
  {
    _supportsEditMessage &= _supportsSendLater;
  }

  else
  {
    _supportsEditMessage = _supportsSendLater;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x100000) == 0)
  {
LABEL_28:
    if ((capabilitiesCopy & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_109:
  _supportsExpressiveText = [(IMChat *)self _supportsExpressiveText];
  if (v5)
  {
    _supportsEditMessage &= _supportsExpressiveText;
  }

  else
  {
    _supportsEditMessage = _supportsExpressiveText;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x200000) == 0)
  {
LABEL_29:
    if ((capabilitiesCopy & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_117;
  }

LABEL_113:
  _supportsFocusMode = [(IMChat *)self _supportsFocusMode];
  if (v5)
  {
    _supportsEditMessage &= _supportsFocusMode;
  }

  else
  {
    _supportsEditMessage = _supportsFocusMode;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x400000) == 0)
  {
LABEL_30:
    if ((capabilitiesCopy & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_117:
  _supportsInlineAdaptiveImageGlyphs = [(IMChat *)self _supportsInlineAdaptiveImageGlyphs];
  if (v5)
  {
    _supportsEditMessage &= _supportsInlineAdaptiveImageGlyphs;
  }

  else
  {
    _supportsEditMessage = _supportsInlineAdaptiveImageGlyphs;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x800000) == 0)
  {
LABEL_31:
    if ((capabilitiesCopy & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_125;
  }

LABEL_121:
  _supportsAutomaticTranslation = [(IMChat *)self _supportsAutomaticTranslation];
  if (v5)
  {
    _supportsEditMessage &= _supportsAutomaticTranslation;
  }

  else
  {
    _supportsEditMessage = _supportsAutomaticTranslation;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x1000000) == 0)
  {
LABEL_32:
    if ((capabilitiesCopy & 0x2000000) == 0)
    {
      return _supportsEditMessage;
    }

    goto LABEL_33;
  }

LABEL_125:
  _supportsTranscriptBackgrounds = [(IMChat *)self _supportsTranscriptBackgrounds];
  if (v5)
  {
    _supportsEditMessage &= _supportsTranscriptBackgrounds;
  }

  else
  {
    _supportsEditMessage = _supportsTranscriptBackgrounds;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x2000000) != 0)
  {
LABEL_33:
    _supportsPolls = [(IMChat *)self _supportsPolls];
    if (v5)
    {
      return _supportsEditMessage & _supportsPolls;
    }

    else
    {
      return _supportsPolls;
    }
  }

  return _supportsEditMessage;
}

- (BOOL)_isHybridGroupEligibleByCarrier
{
  if ([(IMChat *)self _isSMSService])
  {
    v3 = MEMORY[0x1E69A7F58];
    lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
    lastAddressedSIMID = [(IMChat *)self lastAddressedSIMID];
    LOBYTE(v3) = [v3 IMMMSGroupTextReplicationSupportedForPhoneNumber:lastAddressedHandleID simID:lastAddressedSIMID];

    return v3;
  }

  else if ([(IMChat *)self _isRCSService])
  {
    mEMORY[0x1E69A7F50] = [MEMORY[0x1E69A7F50] sharedManager];
    lastAddressedHandleID2 = [(IMChat *)self lastAddressedHandleID];
    lastAddressedSIMID2 = [(IMChat *)self lastAddressedSIMID];
    v10 = [mEMORY[0x1E69A7F50] groupTextReplicationSupportedForPhoneNumber:lastAddressedHandleID2 simID:lastAddressedSIMID2];

    return v10;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A826FD94;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    if (qword_1EB2EA160 != -1)
    {
      dispatch_once(&qword_1EB2EA160, block);
    }

    return 1;
  }
}

- (BOOL)_isHybridGroup
{
  v8 = *MEMORY[0x1E69E9840];
  if (![(IMChat *)self hybridGroupState])
  {
    _uncachedHybridGroupStatus = [(IMChat *)self _uncachedHybridGroupStatus];
    v4 = _uncachedHybridGroupStatus ? 2 : 1;
    [(IMChat *)self setHybridGroupState:v4];
    [(IMChat *)self _updateLastKnownHybridState:_uncachedHybridGroupStatus];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7[0] = 67109120;
        v7[1] = [(IMChat *)self hybridGroupState];
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Hybrid group state unknown, updated to %d", v7, 8u);
      }
    }
  }

  return [(IMChat *)self hybridGroupState]== 2;
}

- (BOOL)_canPossiblyBecomeHybrid
{
  v28 = *MEMORY[0x1E69E9840];
  account = [(IMChat *)self account];
  service = [account service];
  supportsReplication = [service supportsReplication];

  if ((supportsReplication & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Chat is not Hybrid, not using SMS service", buf, 2u);
    }

LABEL_8:

    return 0;
  }

  if (![(IMChat *)self _isHybridGroupEligibleByCarrier])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Chat is not Hybrid, disabled by carrier", buf, 2u);
    }

    goto LABEL_8;
  }

  participants = [(IMChat *)self participants];
  if ([participants count] < 2)
  {

    goto LABEL_23;
  }

  chatStyle = [(IMChat *)self chatStyle];

  if (chatStyle != 43)
  {
LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        participants2 = [(IMChat *)self participants];
        *buf = 134217984;
        v27 = [participants2 count];
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Chat is not Hybrid, not enough participants: %lu", buf, 0xCu);
      }
    }

    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  participants3 = [(IMChat *)self participants];
  v10 = [participants3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(participants3);
        }

        v13 = [*(*(&v21 + 1) + 8 * i) ID];
        v14 = MEMORY[0x1AC56C3C0]();

        if ((v14 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              participants4 = [(IMChat *)self participants];
              *buf = 138412290;
              v27 = participants4;
              _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Chat is not Hybrid, not all handles are phone number: %@", buf, 0xCu);
            }
          }

          v15 = 0;
          goto LABEL_34;
        }
      }

      v10 = [participants3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_34:

  return v15;
}

- (BOOL)_uncachedHybridGroupStatusWithIDSQueryResults:(id)results
{
  v26 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if ([(IMChat *)self _canPossiblyBecomeHybrid])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    participants = [(IMChat *)self participants];
    v7 = [participants countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(participants);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) ID];
          v12 = IMChatCanonicalIDSIDsForAddress();
          [v5 addObject:v12];
        }

        v8 = [participants countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    if (!resultsCopy || (v13 = [resultsCopy count], -[IMChat participants](self, "participants"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13 != v15))
    {
      v16 = MEMORY[0x1E69A80B0];
      v17 = IMServiceNameForCanonicalIDSAddresses();
      v18 = [v16 _currentIDStatusForDestinations:v5 service:v17 listenerID:@"IMChat+Capabilities"];

      resultsCopy = v18;
    }

    v19 = [(IMChat *)self _idsQueryResultsHaveMixedIDSStatus:resultsCopy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_reachabilityResultHasMixedStatus:(id)status
{
  v16 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v4 = statusCopy;
  if (statusCopy && ([statusCopy allAreReachable] & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    handleResults = [v4 handleResults];
    allValues = [handleResults allValues];

    v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v11 + 1) + 8 * i) isReachable])
          {
            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }

        v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_uncachedHybridGroupStatusWithReachabilityResult:(id)result
{
  resultCopy = result;
  if ([(IMChat *)self _canPossiblyBecomeHybrid])
  {
    v5 = [(IMChat *)self _reachabilityResultHasMixedStatus:resultCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_idsQueryResultsHaveMixedIDSStatus:(id)status
{
  statusCopy = status;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82707C8;
  v9[3] = &unk_1E780FF30;
  v9[4] = &v14;
  v9[5] = &v10;
  [statusCopy enumerateKeysAndObjectsUsingBlock:v9];
  if (!v15[3])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        v6 = "Chat is not Hybrid, not enough iMessageable participants";
LABEL_10:
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, v6, v8, 2u);
      }

LABEL_11:
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (!v11[3])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        v6 = "Chat is not Hybrid, not enough non-iMessageable participants";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v4 = 1;
LABEL_13:
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v4;
}

- (BOOL)_isiMessageService
{
  account = [(IMChat *)self account];
  service = [account service];
  name = [service name];
  v5 = [name isEqualToString:*MEMORY[0x1E69A7AF0]];

  return v5;
}

- (BOOL)_isSMSService
{
  account = [(IMChat *)self account];
  service = [account service];
  name = [service name];
  v5 = [name isEqualToString:*MEMORY[0x1E69A7AE0]];

  return v5;
}

- (BOOL)_isRCSService
{
  account = [(IMChat *)self account];
  service = [account service];
  name = [service name];
  v5 = [name isEqualToString:*MEMORY[0x1E69A7AD8]];

  return v5;
}

- (BOOL)_isReplicatingService
{
  account = [(IMChat *)self account];
  service = [account service];
  supportsReplication = [service supportsReplication];

  return supportsReplication;
}

- (BOOL)_isiMessageLiteServiceOrInCompatibleMode
{
  if ([(IMChat *)self shouldDisplayOffGridModeStatus])
  {
    return 1;
  }

  account = [(IMChat *)self account];
  service = [account service];
  internalName = [service internalName];
  v7 = [internalName isEqualToString:*MEMORY[0x1E69A7AF8]];

  return v7;
}

- (BOOL)_isSMSSatelliteService
{
  account = [(IMChat *)self account];
  service = [account service];
  internalName = [service internalName];
  v5 = [internalName isEqualToString:*MEMORY[0x1E69A7AE8]];

  return v5;
}

- (BOOL)_serviceCapabilityEnabled:(id)enabled
{
  enabledCopy = enabled;
  _serviceForCapabilityCheck = [(IMChat *)self _serviceForCapabilityCheck];
  v6 = ([_serviceForCapabilityCheck supportsCapability:enabledCopy] & 1) != 0 || objc_msgSend(_serviceForCapabilityCheck, "supportsReplication") && -[IMChat _isHybridGroup](self, "_isHybridGroup") && (objc_msgSend(_serviceForCapabilityCheck, "supportsReplicationCapability:", enabledCopy) & 1) != 0;

  return v6;
}

- (id)_serviceForCapabilityCheck
{
  if ([(IMChat *)self shouldForceToSMS])
  {
    v3 = +[IMServiceImpl smsService];
LABEL_5:
    service = v3;
    goto LABEL_7;
  }

  if ([(IMChat *)self shouldDisplayOffGridModeStatus])
  {
    v3 = +[IMServiceImpl iMessageLiteService];
    goto LABEL_5;
  }

  account = [(IMChat *)self account];
  service = [account service];

LABEL_7:

  return service;
}

- (BOOL)_supportsInlineReply
{
  if ([(IMChat *)self isBusinessChat]|| [(IMChat *)self isMakoChat]|| [(IMChat *)self isAppleChat]|| [(IMChat *)self isReadOnly]|| [(IMChat *)self isStewieSharingChat]|| ![(IMChat *)self isGroupChat]&& [(IMChat *)self allParticipantsBlocked])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsUndoSend
{
  if ([(IMChat *)self isReadOnly])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsEditMessage
{
  if ([(IMChat *)self isReadOnly])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsMentions
{
  if ([(IMChat *)self isBusinessChat]|| [(IMChat *)self isReadOnly]|| [(IMChat *)self isStewieChat])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsDeliveryReceipts
{
  account = [(IMChat *)self account];
  service = [account service];
  if ([service supportsCapability:*MEMORY[0x1E69A7938]])
  {
    v5 = [(IMChat *)self chatStyle]== 45;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_supportsNameAndPhoto
{
  if ([(IMChat *)self isBusinessChat]|| [(IMChat *)self isReadOnly])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsAudioMessages
{
  participants = [(IMChat *)self participants];
  v4 = [participants count];

  if (!v4 || [(IMChat *)self isReadOnly])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsGroupIdentity
{
  isGroupChat = [(IMChat *)self isGroupChat];
  if (isGroupChat)
  {
    if (-[IMChat hasLeftGroup](self, "hasLeftGroup") || -[IMChat isReadOnly](self, "isReadOnly") || (+[IMChorosMonitor sharedInstance](IMChorosMonitor, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isSatelliteConnectionActive], v4, (v5 & 1) != 0))
    {
      LOBYTE(isGroupChat) = 0;
    }

    else
    {
      LOBYTE(isGroupChat) = ![(IMChat *)self _suppressesMutationsFromLocalDevice];
    }
  }

  return isGroupChat;
}

- (BOOL)_supportsGroupMutability
{
  if (![(IMChat *)self isGroupChat]|| [(IMChat *)self hasLeftGroup]|| [(IMChat *)self isReadOnly]|| [(IMChat *)self _suppressesMutationsFromLocalDevice])
  {
    return 0;
  }

  account = [(IMChat *)self account];
  service = [account service];
  supportsMutatingGroupMembers = [service supportsMutatingGroupMembers];

  return supportsMutatingGroupMembers;
}

- (BOOL)_supportsFaceTime
{
  v3 = +[IMChorosMonitor sharedInstance];
  isSatelliteConnectionActive = [v3 isSatelliteConnectionActive];

  if ((isSatelliteConnectionActive & 1) != 0 || [(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    if (!-[IMChat isGroupChat](self, "isGroupChat") && -[IMChat allParticipantsBlocked](self, "allParticipantsBlocked") || -[IMChat isReadOnly](self, "isReadOnly") || -[IMChat isFiltered](self, "isFiltered") == 2 && (([MEMORY[0x1E69A8198] isSpamFilteringEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69A8198], "isTextMessageExtensionEnabled") & 1) != 0))
    {
      return 0;
    }
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsSendMenu
{
  if (![(IMChat *)self isReadOnly])
  {
    _supportsAttachments = [(IMChat *)self _supportsAttachments];
    if (!_supportsAttachments)
    {
      return _supportsAttachments;
    }

    if ((IMIsRunningInMessagesViewService() & 1) == 0)
    {
      LOBYTE(_supportsAttachments) = IMIsRunningInMessagesTranscriptExtension() ^ 1;
      return _supportsAttachments;
    }
  }

  LOBYTE(_supportsAttachments) = 0;
  return _supportsAttachments;
}

- (BOOL)_supportsExpressiveText
{
  if ([(IMChat *)self isReadOnly]|| [(IMChat *)self isBusinessChat]|| [(IMChat *)self isMakoChat]|| [(IMChat *)self isAppleChat]|| [(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat]|| [(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsTranscriptBackgrounds
{
  if ([(IMChat *)self hasLeftGroup]|| [(IMChat *)self isReadOnly]|| [(IMChat *)self isBusinessChat]|| [(IMChat *)self isMakoChat]|| [(IMChat *)self isAppleChat]|| [(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat]|| [(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsFocusMode
{
  if ([(IMChat *)self chatStyle]!= 45)
  {
    return 0;
  }

  if ([(IMChat *)self isReadOnly])
  {
    return 0;
  }

  if ([(IMChat *)self isBusinessChat])
  {
    return 0;
  }

  if ([(IMChat *)self isMakoChat])
  {
    return 0;
  }

  if ([(IMChat *)self isAppleChat])
  {
    return 0;
  }

  if ([(IMChat *)self isStewieChat])
  {
    return 0;
  }

  if ([(IMChat *)self isStewieEmergencyChat])
  {
    return 0;
  }

  if ([(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  v3 = +[IMChorosMonitor sharedInstance];
  isSatelliteConnectionActive = [v3 isSatelliteConnectionActive];

  if (isSatelliteConnectionActive)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsShareLocation
{
  if ([(IMChat *)self hasLeftGroup]|| [(IMChat *)self isReadOnly]|| [(IMChat *)self _isiMessageLiteServiceOrInCompatibleMode])
  {
    return 0;
  }

  else
  {
    return ![(IMChat *)self _isSMSSatelliteService];
  }
}

- (BOOL)_supportsSimSwitch
{
  if ([(IMChat *)self isReadOnly]|| [(IMChat *)self hasLeftGroup])
  {
    v3 = 0;
  }

  else if ([(IMChat *)self isGroupChat])
  {
    v5 = +[IMChorosMonitor sharedInstance];
    isSatelliteConnectionActive = [v5 isSatelliteConnectionActive];

    v3 = isSatelliteConnectionActive ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (BOOL)_supportsAlternativeCommunicationActions
{
  if ([(IMChat *)self _isiMessageLiteServiceOrInCompatibleMode]|| [(IMChat *)self _isSMSSatelliteService])
  {
    v3 = 0;
  }

  else if ([(IMChat *)self isGroupChat])
  {
    v5 = +[IMChorosMonitor sharedInstance];
    isSatelliteConnectionActive = [v5 isSatelliteConnectionActive];

    v3 = isSatelliteConnectionActive ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (BOOL)_supportsAttachments
{
  v3 = +[IMChorosMonitor sharedInstance];
  isSatelliteConnectionActive = [v3 isSatelliteConnectionActive];

  if (isSatelliteConnectionActive)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsMultiPart
{
  account = [(IMChat *)self account];
  service = [account service];
  v4 = [service supportsCapability:*MEMORY[0x1E69A79B8]];

  return v4;
}

- (BOOL)_supportsStickers
{
  if ([(IMChat *)self isBusinessChat])
  {
    return 0;
  }

  if ([(IMChat *)self isGroupChat])
  {
    v3 = +[IMChorosMonitor sharedInstance];
    isSatelliteConnectionActive = [v3 isSatelliteConnectionActive];

    if (isSatelliteConnectionActive)
    {
      return 0;
    }
  }

  if ([(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat]|| [(IMChat *)self isStewieSharingChat]|| [(IMChat *)self isStewieRoadsideChat])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsMessageEffects
{
  if ([(IMChat *)self isBusinessChat]|| [(IMChat *)self isStewieChat])
  {
    return 0;
  }

  else
  {
    return ![(IMChat *)self _isSMSSatelliteService];
  }
}

- (BOOL)_supportsTapbacks
{
  if ([(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat])
  {
    return 0;
  }

  else
  {
    return ![(IMChat *)self isStewieSharingChat];
  }
}

- (BOOL)_supportsSendLater
{
  if ([(IMChat *)self isBusinessChat]|| [(IMChat *)self isMakoChat]|| [(IMChat *)self isAppleChat]|| [(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat]|| [(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsInlineAdaptiveImageGlyphs
{
  _serviceForCapabilityCheck = [(IMChat *)self _serviceForCapabilityCheck];
  if (![_serviceForCapabilityCheck supportsCapability:*MEMORY[0x1E69A7988]] || !-[IMChat _supportsAttachments](self, "_supportsAttachments") || -[IMChat isBusinessChat](self, "isBusinessChat") || -[IMChat isMakoChat](self, "isMakoChat") || -[IMChat isAppleChat](self, "isAppleChat") || -[IMChat isStewieChat](self, "isStewieChat") || -[IMChat isStewieEmergencyChat](self, "isStewieEmergencyChat"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(IMChat *)self isStewieSharingChat];
  }

  return v4;
}

- (BOOL)_supportsAutomaticTranslation
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

  if (!isAutomaticIncomingTranslationEnabled || [(IMChat *)self isBusinessChat]|| [(IMChat *)self isMakoChat]|| [(IMChat *)self isAppleChat]|| [(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat]|| [(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_);
}

- (BOOL)_supportsPolls
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x1E69A8070] isPollsEnabled];

  if (!isPollsEnabled || [(IMChat *)self isBusinessChat]|| [(IMChat *)self isMakoChat]|| [(IMChat *)self isAppleChat]|| [(IMChat *)self isStewieChat]|| [(IMChat *)self isStewieEmergencyChat]|| [(IMChat *)self isStewieSharingChat])
  {
    return 0;
  }

  _serviceForCapabilityCheck = [(IMChat *)self _serviceForCapabilityCheck];
  v7 = [_serviceForCapabilityCheck supportsCapability:*MEMORY[0x1E69A79F8]];

  return v7;
}

- (void)_updateHybridGroupStateWithPerParticipantIDSStatus:(id)status
{
  v9 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = [(IMChat *)self _uncachedHybridGroupStatusWithIDSQueryResults:statusCopy];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(IMChat *)self setHybridGroupState:v6];
  [(IMChat *)self _updateLastKnownHybridState:v5];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = [(IMChat *)self hybridGroupState];
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Updating hybrid group state to %d using provided IDS statuses", v8, 8u);
    }
  }
}

- (void)_updateHybridGroupStateWithReachabilityResult:(id)result
{
  v9 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = [(IMChat *)self _uncachedHybridGroupStatusWithReachabilityResult:resultCopy];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(IMChat *)self setHybridGroupState:v6];
  [(IMChat *)self _updateLastKnownHybridState:v5];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = [(IMChat *)self hybridGroupState];
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Updating hybrid group state to %d using provided IDS statuses", v8, 8u);
    }
  }
}

- (BOOL)_suppressesMutationsFromLocalDevice
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRelayGroupMutationEnabled = [mEMORY[0x1E69A8070] isRelayGroupMutationEnabled];

  result = 0;
  if ((isRelayGroupMutationEnabled & 1) == 0)
  {
    account = [(IMChat *)self account];
    service = [account service];
    v7 = +[IMService rcsService];

    if (service == v7 && !IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)mapsToTUConversation:(id)conversation
{
  v35 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if ([(IMChat *)self chatStyle]== 43)
  {
    groupID = [(IMChat *)self groupID];
    messagesGroupUUID = [conversationCopy messagesGroupUUID];
    uUIDString = [messagesGroupUUID UUIDString];
    v8 = [groupID isEqualToString:uUIDString];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          chatIdentifier = [(IMChat *)self chatIdentifier];
          messagesGroupUUID2 = [conversationCopy messagesGroupUUID];
          uUIDString2 = [messagesGroupUUID2 UUIDString];
          groupID2 = [(IMChat *)self groupID];
          v29 = 138412802;
          v30 = chatIdentifier;
          v31 = 2112;
          v32 = uUIDString2;
          v33 = 2112;
          v34 = groupID2;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "We mapped a chat %@ to a TUConversation with messagesGroupUUID %@ for chat groupID %@", &v29, 0x20u);
        }
      }

      LOBYTE(v14) = 1;
      goto LABEL_19;
    }

LABEL_16:
    LOBYTE(v14) = 0;
    goto LABEL_19;
  }

  participants = [(IMChat *)self participants];
  v16 = [participants count];

  if (v16 != 1)
  {
    goto LABEL_16;
  }

  remoteMembers = [conversationCopy remoteMembers];
  if ([remoteMembers count] == 1)
  {
    participants2 = [(IMChat *)self participants];
    firstObject = [participants2 firstObject];

    v20 = MEMORY[0x1E69D8C00];
    v21 = [firstObject ID];
    v22 = [v20 normalizedHandleWithDestinationID:v21];

    allObjects = [remoteMembers allObjects];
    firstObject2 = [allObjects firstObject];
    handle = [firstObject2 handle];

    v14 = TUHandlesAreCanonicallyEqual();
    if (v14 && IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        chatIdentifier2 = [(IMChat *)self chatIdentifier];
        v29 = 138412546;
        v30 = chatIdentifier2;
        v31 = 2112;
        v32 = conversationCopy;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "We mapped a 1x1 chat %@ to a TUConversation: %@", &v29, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_19:
  return v14;
}

- (void)addHandlesToGroupFaceTimeChatIfRegistered:(id)registered
{
  registeredCopy = registered;
  conversation = [(IMChat *)self conversation];
  if (conversation)
  {
    v6 = [registeredCopy __imArrayByApplyingBlock:&unk_1F1B6DBA0];
    v7 = MEMORY[0x1E69A80B0];
    v8 = *MEMORY[0x1E69A47F8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A8272E6C;
    v10[3] = &unk_1E78100B8;
    v11 = conversation;
    [v7 refreshIDStatusForDestinations:v6 service:v8 listenerID:@"IMChat+TelephonyUtilities" queue:MEMORY[0x1E69E96A0] completionBlock:v10];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "No paired Group FaceTime conversation to keep in sync", v9, 2u);
    }
  }

LABEL_4:
}

- (id)conversationWithUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[IMChatRegistry sharedRegistry];
  conversationManager = [v4 conversationManager];
  activeConversations = [conversationManager activeConversations];

  v7 = [activeConversations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(activeConversations);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uUID = [v10 UUID];
        v12 = [uUID isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [activeConversations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)joinExistingTUConversationWithUUID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(IMChat *)self conversationWithUUID:dCopy];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Found conversation %@", &v8, 0xCu);
      }
    }

    [(IMChat *)self joinExistingConversation:v5];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DEFC8(dCopy, v7);
    }
  }
}

- (void)joinExistingTUConversation
{
  conversation = [(IMChat *)self conversation];
  [(IMChat *)self joinExistingConversation:conversation];
}

- (void)joinExistingConversation:(id)conversation
{
  v14 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMDeviceIsGreenTea())
  {
    faceTimeShowInCallUIURL = [MEMORY[0x1E695DFF8] faceTimeShowInCallUIURL];
    TUOpenURL();
  }

  else
  {
    v5 = [IMFaceTimeUtilities conversationIsVideoCall:conversationCopy];
    v6 = +[IMFaceTimeUtilities platformSupportsStagingArea]& v5;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        uUID = [conversationCopy UUID];
        v9 = uUID;
        v10 = @"NO";
        if (v5)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *v12 = 138412802;
        *&v12[4] = uUID;
        *&v12[14] = v11;
        *&v12[12] = 2112;
        if (v6)
        {
          v10 = @"YES";
        }

        *&v12[22] = 2112;
        v13 = v10;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Join TUConversation UUID: %@, isVideoCall: %@, wantsStagingArea: %@", v12, 0x20u);
      }
    }

    [IMFaceTimeUtilities joinExistingConversationForTUCoversation:conversationCopy videoEnabled:v5 wantsStagingArea:v6, *v12, *&v12[8]];
  }
}

- (void)initiateTUConversationWithVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] We want to initiate a TUConversation withVideo %@", &v17, 0xCu);
    }
  }

  if ([(IMChat *)self joinState])
  {
    participants = [(IMChat *)self participants];
    v8 = [participants count];

    v9 = [MEMORY[0x1E69D8B78] maximumNumberOfInvitedMembers] + 1;
    if (v8 - 1 < v9)
    {
      participants2 = [(IMChat *)self participants];
      lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
      groupID = [(IMChat *)self groupID];
      displayName = [(IMChat *)self displayName];
      [IMFaceTimeUtilities initiateTUConversationForParticipants:participants2 senderAddress:lastAddressedHandleID videoEnabled:enabledCopy groupID:groupID displayName:displayName screenShareType:0];

      return;
    }

    v15 = v8 > v9;
    v16 = IMOSLoggingEnabled();
    if (v15)
    {
      if (!v16)
      {
        return;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 134217984;
        v18 = v8;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Conversation has %lu recipients. Call is not allowed.", &v17, 0xCu);
      }
    }

    else
    {
      if (!v16)
      {
        return;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] No recipients found on conversation, so not initiating a call.", &v17, 2u);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Bailing on initiating a call because we're no longer in the chat", &v17, 2u);
    }
  }
}

- (void)initiateTUConversationWithScreenShareType:(unint64_t)type
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] We want to initiate a TUConversation withScreenShareType %ld", &v13, 0xCu);
    }
  }

  if (![(IMChat *)self joinState])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Bailing on initiating a call because we're no longer in the chat", &v13, 2u);
    }

    goto LABEL_15;
  }

  participants = [(IMChat *)self participants];
  v7 = [participants count];

  if (v7 == 1)
  {
    participants2 = [(IMChat *)self participants];
    lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
    groupID = [(IMChat *)self groupID];
    displayName = [(IMChat *)self displayName];
    [IMFaceTimeUtilities initiateTUConversationForParticipants:participants2 senderAddress:lastAddressedHandleID videoEnabled:0 groupID:groupID displayName:displayName screenShareType:type];

    return;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      typeCopy = v7;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Unsupported number of participants for TUConversationWithScreenShare: %lu. Only 1 is allowed.", &v13, 0xCu);
    }

LABEL_15:
  }
}

- (void)initiateTUDialRequestWithVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilities] We want to initiate a TUDialRequest withVideo: %@", &v12, 0xCu);
    }
  }

  participants = [(IMChat *)self participants];
  v8 = [participants count];

  if (v8 == 1)
  {
    participants2 = [(IMChat *)self participants];
    firstObject = [participants2 firstObject];
    [IMFaceTimeUtilities initiateTUDialRequestForSingleParticipant:firstObject videoEnabled:enabledCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Unsupported number of participants for TUDialRequest: %lu. Only 1 is allowed.", &v12, 0xCu);
    }
  }
}

- (void)leaveCurrentTUCall
{
  currentTUCall = [(IMChat *)self currentTUCall];
  [IMFaceTimeUtilities leaveTUCall:currentTUCall];
}

- (id)callDurationStringForTuCall
{
  currentTUCall = [(IMChat *)self currentTUCall];
  v3 = currentTUCall;
  if (currentTUCall)
  {
    callDurationString = [currentTUCall callDurationString];
  }

  else
  {
    callDurationString = 0;
  }

  return callDurationString;
}

- (id)currentTUCall
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = 0x1E69D8000uLL;
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  currentAudioAndVideoCalls = [mEMORY[0x1E69D8A58] currentAudioAndVideoCalls];

  obj = currentAudioAndVideoCalls;
  v30 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v31 objects:v35 count:16];
  v6 = 0;
  if (v30)
  {
    v29 = *v32;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        sharedInstance = [*(v3 + 2648) sharedInstance];
        v10 = [sharedInstance activeConversationForCall:v8];

        uUID = [v10 UUID];
        conversation = [(IMChat *)self conversation];
        uUID2 = [conversation UUID];
        v14 = [uUID isEqual:uUID2];

        if (v14)
        {
          v15 = v8;
        }

        else
        {
          participants = [(IMChat *)self participants];
          v17 = [participants count];

          if (v17 != 1)
          {
            goto LABEL_13;
          }

          participants2 = [(IMChat *)self participants];
          firstObject = [participants2 firstObject];

          v20 = MEMORY[0x1E69D8C00];
          v21 = [firstObject ID];
          v22 = [v20 normalizedHandleWithDestinationID:v21];

          remoteParticipantHandles = [v8 remoteParticipantHandles];
          allObjects = [remoteParticipantHandles allObjects];
          firstObject2 = [allObjects firstObject];

          if (TUHandlesAreCanonicallyEqual())
          {
            v26 = v8;

            v6 = v26;
          }

          v15 = v6;

          v6 = firstObject;
          v3 = 0x1E69D8000;
        }

        v6 = v15;
LABEL_13:
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  return v6;
}

- (id)activeParticipantsForTUConversation
{
  conversation = [(IMChat *)self conversation];
  activeRemoteParticipants = [conversation activeRemoteParticipants];

  return activeRemoteParticipants;
}

- (id)remoteMembersForTUConversation
{
  conversation = [(IMChat *)self conversation];
  remoteMembers = [conversation remoteMembers];

  return remoteMembers;
}

+ (id)watermarkComparator
{
  if (qword_1EB2EA1A0 != -1)
  {
    sub_1A84DF17C();
  }

  v2 = _Block_copy(qword_1EB2EA198);

  return v2;
}

- (id)_storedWatermarkMessageID
{
  v3 = IMWatermarkMessageIDCache(self);
  guid = [(IMChat *)self guid];
  v5 = [v3 objectForKey:guid];

  if (!v5)
  {
    v6 = [(IMChat *)self valueForChatProperty:@"IMChatWatermarkMessageID"];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = [(IMChat *)self valueForChatProperty:@"CKChatWatermarkMessageID"];
      if (v5)
      {
        [(IMChat *)self setValue:0 forChatProperty:@"CKChatWatermarkMessageID"];
      }
    }
  }

  return v5;
}

- (int64_t)watermarkMessageID
{
  _storedWatermarkMessageID = [(IMChat *)self _storedWatermarkMessageID];
  if (!_storedWatermarkMessageID)
  {
    _storedWatermarkMessageID = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IMChat lastFinishedMessageID](self, "lastFinishedMessageID")}];
  }

  longLongValue = [_storedWatermarkMessageID longLongValue];
  if (longLongValue)
  {
    v5 = IMWatermarkMessageIDCache(longLongValue);
    guid = [(IMChat *)self guid];
    [v5 setObject:_storedWatermarkMessageID forKey:guid];
  }

  longLongValue2 = [_storedWatermarkMessageID longLongValue];

  return longLongValue2;
}

- (NSDate)watermarkDate
{
  v3 = sub_1A8282194(self);
  guid = [(IMChat *)self guid];
  lastFinishedMessageDate = [v3 objectForKey:guid];

  if (!lastFinishedMessageDate)
  {
    v6 = [(IMChat *)self valueForChatProperty:@"IMChatWatermarkDate"];
    if (v6)
    {
      lastFinishedMessageDate = v6;
      goto LABEL_13;
    }

    v7 = [(IMChat *)self valueForChatProperty:@"CKChatWatermarkTime"];
    v8 = v7;
    if (v7)
    {
      [v7 doubleValue];
      if (v9 > 0.0)
      {
        v10 = MEMORY[0x1E695DF00];
        [v8 doubleValue];
        lastFinishedMessageDate = [v10 dateWithTimeIntervalSince1970:?];
        v11 = [(IMChat *)self setValue:0 forChatProperty:@"CKChatWatermarkTime"];
        if (lastFinishedMessageDate)
        {
          v12 = sub_1A8282194(v11);
          guid2 = [(IMChat *)self guid];
          [v12 setObject:lastFinishedMessageDate forKey:guid2];

LABEL_12:
          goto LABEL_13;
        }
      }
    }

    else
    {
      lastFinishedMessageDate = [(IMChat *)self lastFinishedMessageDate];
      if (lastFinishedMessageDate)
      {
        goto LABEL_12;
      }
    }

    if ([(IMChat *)self lastMessageTimeStampOnLoad]< 1)
    {
      lastFinishedMessageDate = 0;
    }

    else
    {
      lastFinishedMessageDate = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{-[IMChat lastMessageTimeStampOnLoad](self, "lastMessageTimeStampOnLoad")}];
    }

    goto LABEL_12;
  }

LABEL_13:

  return lastFinishedMessageDate;
}

- (void)updateWatermarks
{
  guid = [(IMChat *)self guid];
  _storedWatermarkMessageID = [(IMChat *)self _storedWatermarkMessageID];
  longLongValue = [_storedWatermarkMessageID longLongValue];

  lastFinishedMessageID = longLongValue;
  if (longLongValue <= [(IMChat *)self lastFinishedMessageID])
  {
    lastFinishedMessageID = [(IMChat *)self lastFinishedMessageID];
  }

  if (guid && lastFinishedMessageID >= 1)
  {
    v6 = IMWatermarkMessageIDCache(guid);
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:lastFinishedMessageID];
    [v6 setObject:v7 forKey:guid];
  }

  watermarkDate = [(IMChat *)self watermarkDate];
  lastFinishedMessageDate = [(IMChat *)self lastFinishedMessageDate];
  v10 = lastFinishedMessageDate;
  if (watermarkDate)
  {
    v11 = [watermarkDate laterDate:lastFinishedMessageDate];
  }

  else
  {
    v11 = lastFinishedMessageDate;
  }

  v12 = v11;
  if (guid && v11)
  {
    v13 = sub_1A8282194(guid);
    [v13 setObject:v12 forKey:guid];
  }

  if (lastFinishedMessageID != longLongValue || watermarkDate != v12 && ([watermarkDate isEqualToDate:v12] & 1) == 0)
  {
    [(IMChat *)self _postNotification:@"IMChatWatermarkDidUpdateNotification" userInfo:0];
  }
}

- (void)saveWatermark
{
  guid = [(IMChat *)self guid];
  watermarkMessageID = [(IMChat *)self watermarkMessageID];
  if (watermarkMessageID >= 1)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:watermarkMessageID];
    [(IMChat *)self setValue:v4 forChatProperty:@"IMChatWatermarkMessageID"];

    if (guid)
    {
      v5 = IMWatermarkMessageIDCache(guid);
      [v5 removeObjectForKey:guid];
    }
  }

  watermarkDate = [(IMChat *)self watermarkDate];
  if (watermarkDate)
  {
    [(IMChat *)self setValue:watermarkDate forChatProperty:@"IMChatWatermarkDate"];
    if (guid)
    {
      v7 = sub_1A8282194(guid);
      [v7 removeObjectForKey:guid];
    }
  }
}

- (BOOL)shouldBeAllowListed
{
  if ([(IMChat *)self chatStyle]== 45)
  {
    participants = [(IMChat *)self participants];
    v4 = [participants count];

    if (v4 == 1)
    {
      participants2 = [(IMChat *)self participants];
      firstObject = [participants2 firstObject];

      normalizedID = [firstObject normalizedID];
      if (IMStringIsEmail() && (([normalizedID hasSuffix:@"@apple.com"] & 1) != 0 || objc_msgSend(normalizedID, "hasSuffix:", @".apple.com")))
      {

        return 1;
      }
    }
  }

  if ([(IMChat *)self isAppleChat])
  {
    return 1;
  }

  return [(IMChat *)self isMakoChat];
}

- (BOOL)_hasJustSentAMessage
{
  lastFinishedMessage = [(IMChat *)self lastFinishedMessage];
  v3 = lastFinishedMessage;
  v4 = lastFinishedMessage && [lastFinishedMessage isFromMe] && objc_msgSend(v3, "messageID") == 0;

  return v4;
}

- (int64_t)compareChatByDate:(id)date
{
  dateCopy = date;
  lastFinishedMessageDate = [dateCopy lastFinishedMessageDate];
  lastFinishedMessageDate2 = [(IMChat *)self lastFinishedMessageDate];
  v7 = [(IMChat *)self _compareChat:dateCopy withDate:lastFinishedMessageDate withDate:lastFinishedMessageDate2];

  return v7;
}

- (int64_t)compareChatByLastFinishedMessageDate:(id)date
{
  dateCopy = date;
  v5 = [(IMChat *)self _lastFinishedMessageDateForChat:dateCopy];
  v6 = [(IMChat *)self _lastFinishedMessageDateForChat:self];
  v7 = [(IMChat *)self _compareChat:dateCopy withDate:v5 withDate:v6];

  return v7;
}

- (id)_lastFinishedMessageDateForChat:(id)chat
{
  chatCopy = chat;
  lastTUConversationCreatedDate = [chatCopy lastTUConversationCreatedDate];
  lastFinishedMessageDate = [chatCopy lastFinishedMessageDate];
  lastScheduledMessageCreatedDate = [chatCopy lastScheduledMessageCreatedDate];

  if (lastTUConversationCreatedDate)
  {
    v7 = [lastTUConversationCreatedDate laterDate:lastFinishedMessageDate];
  }

  else
  {
    v7 = lastFinishedMessageDate;
  }

  v8 = v7;
  if (lastScheduledMessageCreatedDate)
  {
    v9 = [lastScheduledMessageCreatedDate laterDate:v7];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (int64_t)_compareChat:(id)chat withDate:(id)date withDate:(id)withDate
{
  chatCopy = chat;
  v9 = [date compare:withDate];
  if (!v9)
  {
    lastFinishedMessageID = [(IMChat *)self lastFinishedMessageID];
    lastFinishedMessageID2 = [chatCopy lastFinishedMessageID];
    v12 = -1;
    if (lastFinishedMessageID2 >= lastFinishedMessageID)
    {
      v12 = 1;
    }

    if (lastFinishedMessageID2 == lastFinishedMessageID)
    {
      v9 = 0;
    }

    else
    {
      v9 = v12;
    }
  }

  return v9;
}

- (NSArray)participantDNDContactHandles
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(IMChat *)self participantsWithState:16];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dndContactHandle = [*(*(&v12 + 1) + 8 * i) dndContactHandle];
        [v3 addObject:dndContactHandle];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

+ (Class)_NPSManagerClass
{
  if (qword_1EB2EA1B0 != -1)
  {
    sub_1A84DF190();
  }

  v3 = qword_1EB2EA1A8;

  return v3;
}

+ (void)cleanWatermarkCache
{
  v2 = IMWatermarkMessageIDCache(self);
  [v2 removeAllObjects];

  v4 = sub_1A8282194(v3);
  [v4 removeAllObjects];
}

- (void)createIMChatItemForTransientAttachmentWithAssetUUID:(id)d parentChatItemGUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  guid = [(IMChat *)self guid];
  [remoteDaemon createItemForPHAssetWithUUID:dCopy parentChatItemGUID:iDCopy chatGUID:guid];
}

- (id)_chatItemLogSummaryForChatItems:(id)items withUpdates:(id)updates
{
  itemsCopy = items;
  updatesCopy = updates;
  v8 = -[IMChat _loggingRangeForUpdates:chatItemsCount:](self, "_loggingRangeForUpdates:chatItemsCount:", updatesCopy, [itemsCopy count]);
  v10 = v9;

  if (v8 >= [itemsCopy count] || v8 + v10 >= objc_msgSend(itemsCopy, "count"))
  {
    v12 = 0;
  }

  else
  {
    v11 = [itemsCopy subarrayWithRange:{v8, v10}];
    v12 = [(IMChat *)self _chatItemLogSummaryForChatItems:v11 withIndex:v8];
  }

  return v12;
}

- (id)_chatItemLogSummaryForChatItems:(id)items withIndex:(int64_t)index
{
  v38 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateStyle:1];
  v30 = v7;
  [v7 setTimeStyle:1];
  string = [MEMORY[0x1E696AD60] string];
  v9 = MEMORY[0x1E696AEC0];
  guid = [(IMChat *)self guid];
  v11 = [v9 stringWithFormat:@"chat: %@\n", guid];

  v29 = v11;
  [string appendString:v11];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = itemsCopy;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        _item = [v15 _item];
        isFromMe = [_item isFromMe];
        v18 = @" ";
        if (isFromMe)
        {
          v18 = @"\t";
        }

        v19 = v18;

        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        _item2 = [v15 _item];
        guid2 = [_item2 guid];
        v25 = [v20 stringWithFormat:@"\t%3lu:%@<%@ : %@> ", index, v19, v22, guid2];

        [string appendString:v25];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          date = [v15 date];
          v27 = [v30 stringFromDate:date];

          [string appendString:v27];
        }

        [string appendString:@"\n"];
        ++index;
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  return string;
}

- (_NSRange)_loggingRangeForUpdates:(id)updates chatItemsCount:(int64_t)count
{
  v35 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [updatesCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    countCopy3 = 0;
    v9 = *v31;
    countCopy4 = count;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(updatesCopy);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        lastIndex = [v12 lastIndex];
        v14 = [v12 count];
        countCopy2 = count;
        if (v14 + lastIndex <= count)
        {
          lastIndex2 = [v12 lastIndex];
          countCopy2 = [v12 count] + lastIndex2;
        }

        if (countCopy3 <= countCopy2)
        {
          lastIndex3 = [v12 lastIndex];
          countCopy3 = count;
          if ([v12 count] + lastIndex3 <= count)
          {
            lastIndex4 = [v12 lastIndex];
            countCopy3 = [v12 count] + lastIndex4;
          }
        }

        [v12 firstIndex];
        if (countCopy4 >= [v12 firstIndex])
        {
          [v12 firstIndex];
          countCopy4 = [v12 firstIndex];
        }
      }

      v7 = [updatesCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    countCopy3 = 0;
    countCopy4 = count;
  }

  v19 = countCopy3 - countCopy4;
  v20 = count - 1;
  if (countCopy3 - 10 >= count)
  {
    v21 = count - 1;
  }

  else
  {
    v21 = countCopy3 - 10;
  }

  if (v19 == 10)
  {
    v21 = countCopy4;
  }

  v22 = (countCopy3 - 10) & ~((countCopy3 - 10) >> 63);
  if (countCopy3 < v20)
  {
    v22 = countCopy4;
  }

  else
  {
    v20 = countCopy3;
  }

  v23 = v19 <= 9;
  if (v19 <= 9)
  {
    v24 = v20;
  }

  else
  {
    v24 = countCopy3;
  }

  if (v23)
  {
    v25 = v22;
  }

  else
  {
    v25 = v21;
  }

  v26 = (v24 - v25) & ~((v24 - v25) >> 63);
  if (v26 >= 10)
  {
    v27 = 10;
  }

  else
  {
    v27 = v26;
  }

  v28 = v25;
  v29 = v27;
  result.length = v29;
  result.location = v28;
  return result;
}

- (_NSRange)_loggingRangeForLatestChatItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy count];
  v5 = [itemsCopy count];

  if (v4 >= 0xB)
  {
    v6 = v5 - 11;
  }

  else
  {
    v6 = 0;
  }

  if (v4 >= 0xB)
  {
    v7 = 10;
  }

  else
  {
    v7 = v5;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (IMBrand)brand
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  participants = [(IMChat *)self participants];
  brand = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (brand)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != brand; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(participants);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isBusiness])
        {
          brand = [v6 brand];
          goto LABEL_11;
        }
      }

      brand = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (brand)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return brand;
}

- (BOOL)isReplyEnabled
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled && [(IMChat *)self isStewieSharingChat]|| [(IMChat *)self joinState]== 4)
  {
    return 0;
  }

  if ([(IMChat *)self isBusinessChat]&& [(IMChat *)self isMakoChat])
  {
    v6 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
    v7 = [v6 objectForKey:@"m-reply-enabled"];
    if (v7)
    {
      v8 = v7;
      bOOLValue = [v7 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_9:
  if (![(IMChat *)self isBusinessChat]|| [(IMChat *)self isChatBot])
  {
    return 1;
  }

  v10 = MEMORY[0x1E69A8020];

  return [v10 supportsBusinessChat];
}

- (BOOL)containsActiveBIASession
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x1E69A8070] isBIAEnabled];

  if (!isBIAEnabled)
  {
    return 0;
  }

  allChatProperties = [(IMChat *)self allChatProperties];
  v6 = [allChatProperties objectForKeyedSubscript:@"AMB-BIAContext"];
  lastObject = [v6 lastObject];

  v8 = [lastObject valueForKey:@"userId"];
  v9 = [v8 length] != 0;

  return v9;
}

- (BOOL)hasSentMessageToBusiness
{
  if (![(IMChat *)self isBusinessChat])
  {
    return 0;
  }

  lastSentMessage = [(IMChat *)self lastSentMessage];
  v4 = lastSentMessage != 0;

  return v4;
}

- (BOOL)isMapKitBusinessChat
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self chatStyle]== 45)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    participants = [(IMChat *)self participants];
    v4 = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(participants);
          }

          if ([*(*(&v8 + 1) + 8 * i) isMapKitBusiness])
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)hasVerifiedBusiness
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self isBusinessChat])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    participants = [(IMChat *)self participants];
    v4 = [participants countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v4)
    {
      v5 = *v20;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(participants);
          }

          v7 = *(*(&v19 + 1) + 8 * i);
          brand = [v7 brand];
          isVerified = [brand isVerified];

          if (isVerified)
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                displayID = [v7 displayID];
                *buf = 138412290;
                v24 = displayID;
                _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Handle:%@ is verified businesss", buf, 0xCu);
              }
            }

            LODWORD(v4) = 1;
            goto LABEL_21;
          }
        }

        v4 = [participants countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v16 = guid;
        v17 = @"NO";
        if (v4)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v24 = guid;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Chat ID: %@ has verified business:%@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid2 = [(IMChat *)self guid];
        *buf = 138412290;
        v24 = guid2;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Chat with guid:%@ is not business conversation. Return NO", buf, 0xCu);
      }
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isMakoChat
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  participants = [(IMChat *)self participants];
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

        if ([*(*(&v7 + 1) + 8 * i) isMako])
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

- (BOOL)isAppleChat
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  participants = [(IMChat *)self participants];
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

        if ([*(*(&v7 + 1) + 8 * i) isApple])
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

- (void)closeSession
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Messages for Business close session for chat: %@", &v4, 0xCu);
    }
  }

  [(IMChat *)self _closeSession:1];
}

- (void)leaveConversation
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Messages for Business leave conversation and close session for chat: %@", &v4, 0xCu);
    }
  }

  [(IMChat *)self _closeSession:0];
}

- (void)_closeSession:(BOOL)session
{
  sessionCopy = session;
  v5 = +[IMChatRegistry sharedRegistry];
  [v5 _chat_closeSession:self didDeleteConversation:sessionCopy];
}

- (NSString)cachedBusinessName
{
  brand = [(IMChat *)self brand];

  if (brand)
  {
    businessHandle = [(IMChat *)self businessHandle];
    normalizedID = [businessHandle normalizedID];

    v6 = +[IMHandleRegistrar sharedInstance];
    v7 = [v6 businessNameForUID:normalizedID blockFetch:1 updateHandler:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  v8 = dCopy;
  if (metadataCopy && [dCopy length])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = metadataCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Sending updated collaboration metadata: %@", &v12, 0xCu);
    }

    v10 = +[IMChatRegistry sharedRegistry];
    [v10 _chat:self sendUpdatedCollaborationMetadata:metadataCopy forMessageGUID:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = metadataCopy;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Not sending collaboration metadata since either passed in collaboration metadata:%@ or messageGUID:%@ is nil.", &v12, 0x16u);
    }
  }
}

- (id)_existingMessageFromMessagePartGUID:(id)d
{
  dCopy = d;
  messageGUID = [dCopy messageGUID];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8259B30;
  v17 = sub_1A825AEC4;
  v18 = 0;
  _items = [(IMItemsController *)self _items];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82CD044;
  v10[3] = &unk_1E78117B0;
  v7 = messageGUID;
  v11 = v7;
  v12 = &v13;
  [_items enumerateObjectsWithOptions:2 usingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)_updateExistingMessageWithSyndicationAction:(id)action
{
  v18[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  messagePartGUID = [actionCopy messagePartGUID];
  v6 = [(IMChat *)self _existingMessageFromMessagePartGUID:messagePartGUID];

  if (v6)
  {
    message = [v6 message];
    v8 = [objc_alloc(MEMORY[0x1E69A8158]) initWithSyndicationAction:actionCopy];
    syndicationRanges = [v6 syndicationRanges];
    v17 = 0;
    v10 = MEMORY[0x1E69A8158];
    v18[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [v10 updateMessagesRanges:syndicationRanges withMessagePartSyndicationRanges:v11 didUpdate:&v17];

    if (v17 == 1)
    {
      [message _syndicationRanges:v12];
      _imMessageItem = [message _imMessageItem];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A82CD2D8;
      v15[3] = &unk_1E7810140;
      v15[4] = self;
      v16 = _imMessageItem;
      v14 = _imMessageItem;
      [(IMChat *)self _updateChatItemsWithReason:@"send highlight" block:v15];
    }
  }
}

- (void)sendSyndicationAction:(unsigned __int8)action forMessagePartGUID:(id)d syndicatedMessagePartRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  actionCopy = action;
  v20 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69A8160];
  dCopy = d;
  v11 = [v9 alloc];
  guid = [(IMChat *)self guid];
  date = [MEMORY[0x1E695DF00] date];
  v14 = [v11 initWithChatGUID:guid syndicationStartDate:date syndicationActionType:actionCopy encodedMessagePartGUID:dCopy messagePartRange:{location, length}];

  if (v14)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Sending syndication message: %@", &v18, 0xCu);
    }

    v16 = +[IMChatRegistry sharedRegistry];
    [v16 _chat:self sendSyndicationAction:v14];

    [(IMChat *)self _updateExistingMessageWithSyndicationAction:v14];
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DFB9C(v17);
    }
  }
}

- (void)sendAutoDonationUpdate:(BOOL)update
{
  updateCopy = update;
  v15 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69A7F88]);
  guid = [(IMChat *)self guid];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [v5 initWithChatGUID:guid syndicationStartDate:date autoDonateMessages:updateCopy];

  if (v8)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Sending syndication message: %@", &v13, 0xCu);
    }

    v10 = +[IMChatRegistry sharedRegistry];
    [v10 _chat:self sendSyndicationAction:v8];

    if (updateCopy)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [(IMChat *)self setAutoDonationBehavior:v11];
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DFB9C(v12);
    }
  }
}

- (id)localizedUnreadShortcutTitle
{
  v20 = *MEMORY[0x1E69E9840];
  participants = [(IMChat *)self participants];
  unreadMessageCount = [(IMChat *)self unreadMessageCount];
  if ([(IMChat *)self isGroupChat])
  {
    displayName = [(IMChat *)self displayName];
  }

  else
  {
    displayName = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = participants;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) displayNameForChat:{self, v15}];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E69A8268] unreadSummaryWithUnreadCount:unreadMessageCount withParticipants:v6 withGroupChatName:displayName];

  return v13;
}

- (NSString)transcriptBackgroundPath
{
  transcriptBackgroundDetails = [(IMChat *)self transcriptBackgroundDetails];
  v3 = [transcriptBackgroundDetails _stringForKey:*MEMORY[0x1E69A7D38]];
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

- (NSString)transcriptBackgroundGUID
{
  transcriptBackgroundDetails = [(IMChat *)self transcriptBackgroundDetails];
  v3 = [transcriptBackgroundDetails _stringForKey:*MEMORY[0x1E69A7D38]];

  return v3;
}

- (NSNumber)transcriptBackgroundVersion
{
  transcriptBackgroundDetails = [(IMChat *)self transcriptBackgroundDetails];
  v3 = [transcriptBackgroundDetails objectForKey:*MEMORY[0x1E69A7D40]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)transcriptBackgroundCommSafetyState
{
  transcriptBackgroundDetails = [(IMChat *)self transcriptBackgroundDetails];
  v3 = [transcriptBackgroundDetails integerValueForKey:*MEMORY[0x1E69A7D28] withDefault:0];

  return v3;
}

- (void)updateTranscriptBackgroundCommSafetyState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  transcriptBackgroundDetails = [(IMChat *)self transcriptBackgroundDetails];
  v6 = [transcriptBackgroundDetails mutableCopy];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [v6 setObject:v7 forKey:*MEMORY[0x1E69A7D28]];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      transcriptBackgroundGUID = [(IMChat *)self transcriptBackgroundGUID];
      v12 = 138412546;
      v13 = transcriptBackgroundGUID;
      v14 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Updating transcript background with id {%@} to commSafetyState={%ld}.", &v12, 0x16u);
    }
  }

  v10 = [v6 copy];
  [(IMChat *)self setValue:v10 forChatProperty:*MEMORY[0x1E69A6CC8]];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"__kIMChatTranscriptBackgroundChangedNotification" object:self userInfo:0];
}

- (void)updateTranscriptBackgroundChannelTransferGUID:(id)d
{
  v4 = [d copy];
  [(IMChat *)self setValue:v4 forChatProperty:*MEMORY[0x1E69A6CC0]];
}

- (IMChatItemRules)chatItemRules
{
  chatItemRules = self->_chatItemRules;
  if (!chatItemRules)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A84E1104();
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A5F40] code:43 userInfo:MEMORY[0x1E695E0F8]];
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] autoBugCaptureWithSubType:@"chatItemRules" errorPayload:v5];

    chatItemRules = self->_chatItemRules;
  }

  return chatItemRules;
}

- (void)_setupObservation
{
  if (!self->_hasBeenConfigured)
  {
    self->_hasBeenConfigured = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accountLoggedOut_ name:@"__kIMAccountLoggedOutNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__daemonDied_ name:@"__kIMDaemonDidDisconnectNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__daemonAlive_ name:@"__kIMDaemonDidConnectNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__accountControllerUpdated_ name:@"__kIMAccountControllerUpdatedNotification" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel__accountControllerUpdated_ name:@"__kIMAccountActivatedNotification" object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel__accountControllerUpdated_ name:@"__kIMAccountDeactivatedNotification" object:0];
  }
}

- (id)_initWithGUID:(id)d account:(id)account style:(unsigned __int8)style roomName:(id)name displayName:(id)displayName lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD items:(id)self0 participants:(id)self1 isFiltered:(int64_t)self2 hasHadSuccessfulQuery:(BOOL)self3 isRecovered:(BOOL)self4 isDeletingIncomingMessages:(BOOL)self5
{
  v95 = *MEMORY[0x1E69E9840];
  dCopy = d;
  accountCopy = account;
  nameCopy = name;
  displayNameCopy = displayName;
  handleCopy = handle;
  iDCopy = iD;
  itemsCopy = items;
  obj = participants;
  v89.receiver = self;
  v89.super_class = IMChat;
  v22 = [(IMItemsController *)&v89 _initWithItems:itemsCopy];
  v23 = v22;
  if (v22)
  {
    [v22 setIsFiltered:filtered];
    *(v23 + 73) = 1;
    *(v23 + 72) = 0;
    *(v23 + 75) = 0;
    *(v23 + 80) = 0;
    *(v23 + 58) = query;
    *(v23 + 55) = recovered;
    *(v23 + 56) = messages;
    *(v23 + 65) = 0;
    *(v23 + 66) = 0;
    *(v23 + 70) = 1;
    if ([handleCopy length])
    {
      objc_storeStrong(v23 + 12, handle);
    }

    if ([iDCopy length])
    {
      objc_storeStrong(v23 + 80, iD);
    }

    *(v23 + 18) = 0;
    chatRegistry = [v23 chatRegistry];
    [chatRegistry _noteChatInit:v23];

    v69 = +[IMChat chatItemUpdaterLogHandle];
    v25 = [objc_alloc(MEMORY[0x1E69A81E0]) initWithLogHandle:v69 delegate:v23];
    v26 = *(v23 + 71);
    *(v23 + 71) = v25;

    objc_storeStrong(v23 + 20, displayName);
    objc_storeStrong(v23 + 16, account);
    *(v23 + 48) = style;
    objc_storeStrong(v23 + 19, name);
    v27 = obj;
    v28 = obj;
    if (!obj)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v27 = 0;
    }

    v29 = v27 == 0;
    objc_storeStrong(v23 + 17, v28);
    if (v29)
    {
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v31 = *(v23 + 41);
    *(v23 + 41) = Mutable;

    v32 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v33 = *(v23 + 43);
    *(v23 + 43) = v32;

    v34 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    v35 = *(v23 + 14);
    *(v23 + 14) = v34;

    *(v23 + 57) = -1;
    *(v23 + 61) = 0;
    if (!*(v23 + 19) && [v23 chatStyle] != 45)
    {
      chatRegistry2 = [v23 chatRegistry];
      v37 = [chatRegistry2 generateUnusedChatIdentifierForGroupChatWithAccount:accountCopy];
      v38 = *(v23 + 19);
      *(v23 + 19) = v37;
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v39 = itemsCopy;
    service = [v39 countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (service)
    {
      v41 = *v86;
      while (2)
      {
        for (i = 0; i != service; i = i + 1)
        {
          if (*v86 != v41)
          {
            objc_enumerationMutation(v39);
          }

          chatRegistry = *(*(&v85 + 1) + 8 * i);
          _senderHandle = [chatRegistry _senderHandle];
          if (_senderHandle && ([chatRegistry isFromMe] & 1) == 0)
          {
            *(v23 + 61) = [chatRegistry _isInvitation];
            if (![*(v23 + 17) count])
            {
              v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{_senderHandle, 0}];
              v45 = *(v23 + 17);
              *(v23 + 17) = v44;
            }

            goto LABEL_26;
          }
        }

        service = [v39 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (service)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    objc_storeStrong(v23 + 81, *(v23 + 19));
    if (dCopy)
    {
      v46 = IMAnyServiceGUIDFromLegacyChatGUID();
      chatIdentifier = v46;
    }

    else
    {
      chatIdentifier = [v23 chatIdentifier];
      service = [accountCopy service];
      chatRegistry = [service internalName];
      v46 = IMCopyAnyServiceGUIDForChat();
    }

    v48 = v46;
    objc_storeStrong(v23 + 15, v46);
    if (!dCopy)
    {
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v49 = v39;
    v50 = [v49 countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v50)
    {
      v51 = *v82;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v82 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v81 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 _configureLocationShareItem:v53];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 isFinished])
          {
            *(v23 + 63) = 1;
          }
        }

        v50 = [v49 countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v50);
    }

    if ([obj count])
    {
      if (qword_1ED7679C0 != -1)
      {
        sub_1A84E1144();
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v54 = obj;
      v55 = [v54 countByEnumeratingWithState:&v77 objects:v92 count:16];
      if (v55)
      {
        v56 = *v78;
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (*v78 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(v23 + 41);
            v59 = qword_1ED7679B8;
            guid = [*(*(&v77 + 1) + 8 * k) guid];
            [v58 setObject:v59 forKey:guid];
          }

          v55 = [v54 countByEnumeratingWithState:&v77 objects:v92 count:16];
        }

        while (v55);
      }
    }

    if ([v23 isBusinessChat] && objc_msgSend(obj, "count"))
    {
      v61 = [obj objectAtIndexedSubscript:0];
      name = [v61 name];
      [v23 _setDisplayName:name];
    }

    if ([v23 isStewieEmergencyChat])
    {
      if ([obj count])
      {
        v63 = [obj objectAtIndexedSubscript:0];
        name2 = [v63 name];
        [v23 _setDisplayName:name2];
      }

      else
      {
        v63 = IMLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E116C();
        }
      }
    }

    [v23 _initialize];
    if (qword_1ED7679C8 != -1)
    {
      sub_1A84E11A8();
    }

    if (byte_1EB2EA338 == 1)
    {
      v65 = objc_alloc_init(IMOrderingTools);
      objc_storeStrong(v23 + 66, v65);
      [(IMOrderingTools *)v65 startTrackingChat:v23];
      if (IMOSLoggingEnabled())
      {
        v66 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          orderingTools = [v23 orderingTools];
          *buf = 138412290;
          v91 = orderingTools;
          _os_log_impl(&dword_1A823F000, v66, OS_LOG_TYPE_INFO, "We are monitoring message ordering under automation {tools %@}", buf, 0xCu);
        }
      }
    }
  }

  return v23;
}

+ (id)pendingChatForHandle:(id)handle
{
  handleCopy = handle;
  v4 = [IMChat alloc];
  account = [handleCopy account];
  v6 = IMSingleObjectArray();

  BYTE2(v9) = 0;
  LOWORD(v9) = 0;
  v7 = [IMChat _initWithGUID:v4 account:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" style:0 roomName:account displayName:45 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:0 hasHadSuccessfulQuery:v6 isRecovered:1 isDeletingIncomingMessages:v9];

  return v7;
}

- (IMChat)init
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:0 style:0 roomName:45 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:0 hasHadSuccessfulQuery:1 isRecovered:v3 isDeletingIncomingMessages:?];
}

- (id)chatItemUpdaterLogHandle
{
  v2 = objc_opt_class();

  return [v2 chatItemUpdaterLogHandle];
}

+ (Class)chatItemRulesClass
{
  v3 = qword_1EB2E9FC8;
  if (qword_1EB2E9FC8)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Dealloc: %@", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _noteChatDealloc:self];

  [(IMSendProgress *)self->_sendProgress setDelegate:0];
  [(IMSendProgress *)self->_sendProgress setContext:0];
  [(IMSendProgress *)self->_sendProgress invalidate];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(IMScheduledUpdater *)self->_downgradeStateUpdater invalidate];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v7.receiver = self;
  v7.super_class = IMChat;
  [(IMItemsController *)&v7 dealloc];
}

- (id)_initWithItems:(id)items
{
  BYTE2(v4) = 0;
  LOWORD(v4) = 0;
  return [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:0 style:0 roomName:45 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:items isFiltered:0 hasHadSuccessfulQuery:1 isRecovered:v4 isDeletingIncomingMessages:?];
}

- (void)_itemsDidChange:(id)change
{
  changeCopy = change;
  chatRegistry = [(IMChat *)self chatRegistry];
  isFirstLoad = [chatRegistry isFirstLoad];

  if ((isFirstLoad & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = IMChat;
    [(IMItemsController *)&v7 _itemsDidChange:changeCopy];
    [(IMReasonTrackingUpdater *)self->_chatItemsUpdater setNeedsDeferredUpdateWithReason:@"IMItemsChanged"];
    [(IMSendProgress *)self->_sendProgress updateForItems:changeCopy forced:0];
  }
}

- (void)_handleItem:(id)item
{
  itemCopy = item;
  [(IMChat *)self _handleItem:itemCopy forChatStyle:[(IMChat *)self chatStyle] keepExistingIndex:0];
}

- (void)_handleItem:(id)item keepExistingIndex:(BOOL)index
{
  indexCopy = index;
  itemCopy = item;
  [(IMChat *)self _handleItem:itemCopy forChatStyle:[(IMChat *)self chatStyle] keepExistingIndex:indexCopy];
}

- (void)_handleItem:(id)item forChatStyle:(unsigned __int8)style updateReplyCounts:(BOOL)counts keepExistingIndex:(BOOL)index messageComingFromStorage:(BOOL)storage
{
  storageCopy = storage;
  indexCopy = index;
  countsCopy = counts;
  styleCopy = style;
  v32 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v15 = @"NO";
      *buf = 138412802;
      v27 = guid;
      v28 = 2112;
      if (countsCopy)
      {
        v15 = @"YES";
      }

      v29 = v15;
      v30 = 2112;
      v31 = itemCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Handle item for chat (%@) updateReplyCounts (%@) item:(%@)", buf, 0x20u);
    }
  }

  v24.receiver = self;
  v24.super_class = IMChat;
  [(IMItemsController *)&v24 _handleItem:itemCopy forChatStyle:styleCopy keepExistingIndex:indexCopy messageComingFromStorage:storageCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  filterControllers = [(IMChat *)self filterControllers];
  v17 = [filterControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v17)
  {
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(filterControllers);
        }

        [*(*(&v20 + 1) + 8 * v19++) insertItem:itemCopy];
      }

      while (v17 != v19);
      v17 = [filterControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v17);
  }

  if (countsCopy)
  {
    [(IMChat *)self _updateRepliesIfNecessaryWithItem:itemCopy];
  }
}

- (void)_removeItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = IMChat;
  [(IMItemsController *)&v14 _removeItem:itemCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  filterControllers = [(IMChat *)self filterControllers];
  v6 = [filterControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(filterControllers);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeItem:itemCopy];
      }

      while (v7 != v9);
      v7 = [filterControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_replaceItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = IMChat;
  [(IMItemsController *)&v14 _replaceItems:itemsCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  filterControllers = [(IMChat *)self filterControllers];
  v6 = [filterControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(filterControllers);
        }

        [*(*(&v10 + 1) + 8 * v9++) replaceItems:itemsCopy];
      }

      while (v7 != v9);
      v7 = [filterControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_removeItemsForGuids:(id)guids
{
  v31 = *MEMORY[0x1E69E9840];
  guidsCopy = guids;
  if ([guidsCopy count])
  {
    v20 = guidsCopy;
    v5 = [MEMORY[0x1E695DFD8] setWithArray:guidsCopy];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    _items = [(IMItemsController *)self _items];
    v8 = [_items countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(_items);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          guid = [v12 guid];
          v14 = [v5 containsObject:guid];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [_items countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(IMChat *)self _removeItem:*(*(&v21 + 1) + 8 * j)];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    guidsCopy = v20;
  }
}

- (void)_clearUnreadCount
{
  v19 = *MEMORY[0x1E69E9840];
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat_clearCachedUnreadCount:self];

  dbUnreadCount = self->_dbUnreadCount;
  v5 = IMOSLoggingEnabled();
  if (dbUnreadCount)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = self->_dbUnreadCount;
        v15 = 138412802;
        *v16 = self;
        *&v16[8] = 1024;
        *&v16[10] = v7;
        v17 = 1024;
        v18 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Clearing [DB] unread count for %@ from %d to %d", &v15, 0x18u);
      }
    }

    self->_dbUnreadCount = 0;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v15 = 67109378;
        *v16 = 0;
        *&v16[4] = 2112;
        *&v16[6] = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "   Posting new unread count of %u for %@", &v15, 0x12u);
      }
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMChat unreadMessageCount](self, "unreadMessageCount", @"__kIMChatUnreadKey"}];
    v14 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(IMChat *)self _postNotification:@"__kIMChatUnreadCountChangedNotification" userInfo:v10];
  }

  else if (v5)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_dbUnreadCount;
      v15 = 138412546;
      *v16 = self;
      *&v16[8] = 1024;
      *&v16[10] = v12;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Unread count [DB] for %@ stayed at: %d", &v15, 0x12u);
    }
  }
}

- (void)_setDBUnreadCount:(unint64_t)count
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if ((isUnreadCountRefactorEnabled & 1) == 0)
  {

    [(IMChat *)self _setDBUnreadCount:count postNotification:1];
  }
}

- (void)_setDBUnreadCount:(unint64_t)count postNotification:(BOOL)notification
{
  notificationCopy = notification;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if ((isUnreadCountRefactorEnabled & 1) == 0 && self->_dbUnreadCount != count)
  {
    self->_dbUnreadCount = count;
    if (notificationCopy)
    {

      [(IMChat *)self _postNewUnreadCount];
    }
  }
}

- (void)_setDBFailedCount:(unint64_t)count
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_dbFailedCount != count)
  {
    self->_dbFailedCount = count;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        dbFailedCount = self->_dbFailedCount;
        v6[0] = 67109634;
        v6[1] = dbFailedCount;
        v7 = 1024;
        messageFailureCount = [(IMChat *)self messageFailureCount];
        v9 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "_dbFailedCount changed to %d: Posting new failed count of %d for %@", v6, 0x18u);
      }
    }

    [(IMChat *)self _postNotification:@"__kIMChatMessageFailureCountChangedNotification" userInfo:0];
  }
}

- (void)_reloadChatItemsForServiceChange
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      account = [(IMChat *)self account];
      service = [account service];
      internalName = [service internalName];
      guid = [(IMChat *)self guid];
      v8 = 138412546;
      v9 = internalName;
      v10 = 2112;
      v11 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Service for sending changed to %@, updating chat items for chat: %@", &v8, 0x16u);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Service for sending changed" block:&unk_1F1B6E860];
}

- (void)_setPendingIncomingSatelliteMessageCount:(unint64_t)count postNotification:(BOOL)notification
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_pendingIncomingSatelliteMessageCount != count)
  {
    notificationCopy = notification;
    self->_pendingIncomingSatelliteMessageCount = count;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        pendingIncomingSatelliteMessageCount = self->_pendingIncomingSatelliteMessageCount;
        *buf = 67109378;
        v15 = pendingIncomingSatelliteMessageCount;
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "_pendingIncomingSatelliteMessageCount changed to %d for %@", buf, 0x12u);
      }
    }

    if (count)
    {
      totalSatelliteMessageCount = self->_totalSatelliteMessageCount;
      if (totalSatelliteMessageCount <= count)
      {
        totalSatelliteMessageCount = count;
      }
    }

    else
    {
      totalSatelliteMessageCount = 0;
    }

    self->_totalSatelliteMessageCount = totalSatelliteMessageCount;
    if (self->_downloadingPendingSatelliteMessages)
    {
      [(IMChat *)self _updateChatItemsWithReason:@"Satellite count changed!" block:&unk_1F1B6E880];
    }

    if (notificationCopy)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_pendingIncomingSatelliteMessageCount, @"__kIMChatPendingIncomingSatelliteMessageCountKey"}];
      v13 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      [(IMChat *)self _postNotification:@"__kIMChatPendingIncomingSatelliteMessageCountChangedNotification" userInfo:v11];
    }
  }
}

- (void)_setIsDownloadingPendingSatelliteMessages:(BOOL)messages postNotification:(BOOL)notification
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_downloadingPendingSatelliteMessages != messages)
  {
    notificationCopy = notification;
    messagesCopy = messages;
    self->_downloadingPendingSatelliteMessages = messages;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (messagesCopy)
        {
          v8 = @"YES";
        }

        *buf = 138412546;
        v13 = v8;
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "_downloadingPendingSatelliteMessages changed to %@ for %@", buf, 0x16u);
      }
    }

    if (notificationCopy)
    {
      v10 = @"__kIMChatIsDownloadingPendingSatelliteMessagesKey";
      v11 = MEMORY[0x1E695E118];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [(IMChat *)self _postNotification:@"__kIMChatIsDownloadingPendingSatelliteMessagesChangedNotification" userInfo:v9];
    }
  }
}

- (void)_insertHistoricalMessages:(id)messages queryID:(id)d isRefresh:(BOOL)refresh isHistoryQuery:(BOOL)query
{
  queryCopy = query;
  refreshCopy = refresh;
  dCopy = d;
  messagesCopy = messages;
  [(IMChat *)self _insertHistoricalMessages:messagesCopy queryID:dCopy isRefresh:refreshCopy isHistoryQuery:queryCopy limit:[(IMChat *)self numberOfMessagesToKeepLoaded]];
}

- (void)_insertHistoricalMessages:(id)messages queryID:(id)d isRefresh:(BOOL)refresh isHistoryQuery:(BOOL)query isReplacingItems:(BOOL)items limit:(unint64_t)limit hasMessagesBefore:(BOOL)before hasMessagesAfter:(BOOL)self0
{
  itemsCopy = items;
  v30 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dCopy = d;
  _items = [(IMItemsController *)self _items];
  [_items im_logGUIDsForReason:@"WillInsertHistoricalMessages"];

  if (([dCopy containsString:@"InlineReplyHistoryLoading"] & 1) != 0 || objc_msgSend(dCopy, "containsString:", @"PagedInlineReplyHistoryLoading"))
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        inlineReplyController = [(IMChat *)self inlineReplyController];
        *buf = 138412290;
        v29 = inlineReplyController;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Passing inline reply history request to %@", buf, 0xCu);
      }
    }

    inlineReplyController2 = [(IMChat *)self inlineReplyController];
    [inlineReplyController2 insertHistoricalMessages:messagesCopy queryID:dCopy hasMessagesBefore:before hasMessagesAfter:after isReplacingItems:itemsCopy];
  }

  else
  {
    self->_hasEarlierMessagesToLoad = before;
    self->_hasMoreRecentMessagesToLoad = after;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A8318C88;
    v20[3] = &unk_1E7812690;
    v21 = dCopy;
    selfCopy = self;
    limitCopy = limit;
    beforeCopy = before;
    afterCopy = after;
    v22 = messagesCopy;
    v27 = itemsCopy;
    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) History query" block:v20];

    inlineReplyController2 = v21;
  }
}

- (id)_archivedItemsToReplace:(id)replace isReplacingItems:(BOOL)items
{
  itemsCopy = items;
  v12 = *MEMORY[0x1E69E9840];
  replaceCopy = replace;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11[0] = 67109120;
      v11[1] = [replaceCopy count];
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "_archivedItemsToReplace archivedItemsCount: %d", v11, 8u);
    }
  }

  if (itemsCopy)
  {
    [(IMItemsController *)self _removeAllItems];
    v8 = replaceCopy;
  }

  else
  {
    v8 = [(IMItemsController *)self _appendArchivedItemsToItemsArray:replaceCopy];
  }

  v9 = v8;

  return v9;
}

- (id)messageForGUID:(id)d
{
  v3 = [(IMItemsController *)self _itemForGUID:d];
  message = [v3 message];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    replyCountsByPart = [v3 replyCountsByPart];
    [message setReplyCountsByPart:replyCountsByPart];
  }

  return message;
}

- (IMMessage)firstMessage
{
  _firstMessage = [(IMItemsController *)self _firstMessage];
  message = [_firstMessage message];

  return message;
}

- (IMMessage)lastIncomingMessage
{
  _lastIncomingMessage = [(IMItemsController *)self _lastIncomingMessage];
  message = [_lastIncomingMessage message];

  return message;
}

- (IMMessage)lastIncomingFinishedMessageWithTextContent
{
  _lastIncomingFinishedMessageItemWithTextContent = [(IMItemsController *)self _lastIncomingFinishedMessageItemWithTextContent];
  message = [_lastIncomingFinishedMessageItemWithTextContent message];

  return message;
}

- (id)_lastChatItemMatchingCriteria:(id)criteria
{
  v17 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  chatItems = [(IMChat *)self chatItems];
  reverseObjectEnumerator = [chatItems reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (criteriaCopy[2](criteriaCopy, v10))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_lastMessageItemFromContactOrFromMe:(BOOL)me
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8319750;
  v5[3] = &unk_1E78126D8;
  meCopy = me;
  v5[4] = self;
  v3 = [(IMItemsController *)self _lastMessageItemMatchingCriteria:v5];

  return v3;
}

- (IMMessage)lastIncomingReplyableMessage
{
  lastIncomingReplyableChatItem = [(IMChat *)self lastIncomingReplyableChatItem];
  _item = [lastIncomingReplyableChatItem _item];
  message = [_item message];

  return message;
}

- (BOOL)isLastIncomingFinishedMessageNotiMessage
{
  lastIncomingFinishedMessageItem = [(IMItemsController *)self lastIncomingFinishedMessageItem];
  v3 = lastIncomingFinishedMessageItem;
  if (lastIncomingFinishedMessageItem)
  {
    service = [lastIncomingFinishedMessageItem service];
    v5 = +[IMService iMessageService];
    internalName = [v5 internalName];

    v7 = [service isEqualToString:internalName] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)lastMessageExists
{
  _lastMessage = [(IMItemsController *)self _lastMessage];
  v3 = _lastMessage != 0;

  return v3;
}

- (IMMessage)lastSentMessage
{
  _lastSentMessage = [(IMItemsController *)self _lastSentMessage];
  message = [_lastSentMessage message];

  return message;
}

- (NSDate)lastSentMessageDate
{
  _lastSentMessage = [(IMItemsController *)self _lastSentMessage];
  time = [_lastSentMessage time];

  return time;
}

- (int64_t)lastFinishedMessageID
{
  _lastFinishedMessage = [(IMItemsController *)self _lastFinishedMessage];
  messageID = [_lastFinishedMessage messageID];

  return messageID;
}

- (IMMessage)lastPendingSatelliteSendMessage
{
  _lastPendingSatelliteSendMessage = [(IMItemsController *)self _lastPendingSatelliteSendMessage];
  message = [_lastPendingSatelliteSendMessage message];

  return message;
}

- (id)messageGuidsForRequery
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _items = [(IMItemsController *)self _items];
  v5 = [_items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_items);
        }

        message = [*(*(&v14 + 1) + 8 * i) message];
        v10 = message;
        if (message && ([message isRead] & 1) == 0 && (objc_msgSend(v10, "isFromMe") & 1) == 0)
        {
          guid = [v10 guid];
          [array addObject:guid];
        }
      }

      v6 = [_items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [array copy];

  return v12;
}

- (id)messageGuidsForMyUnreadMentions
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _items = [(IMItemsController *)self _items];
  v5 = [_items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_items);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        message = [v9 message];
        if (message && [v9 hasUnseenMention])
        {
          guid = [message guid];
          [array addObject:guid];
        }
      }

      v6 = [_items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [array copy];

  return v12;
}

- (void)removeMentionMessageGUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  _items = [(IMItemsController *)self _items];
  v6 = [_items copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        message = [v12 message];
        guid = [message guid];
        if ([guid isEqualToString:dCopy])
        {
          hasUnseenMention = [v12 hasUnseenMention];

          if (!hasUnseenMention)
          {
            goto LABEL_10;
          }

          guid = [v12 _copy];
          [guid setHasUnseenMention:0];
          remoteDaemon = [(IMChat *)self remoteDaemon];
          [remoteDaemon updateMessage:guid];

          [(IMChat *)self _handleItem:guid];
        }

LABEL_10:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (BOOL)deleteAllHistory
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A831A084;
  v5[3] = &unk_1E7812700;
  v5[4] = self;
  v3 = [(IMChat *)self _performQueryWithKey:@"DeleteHistory" loadImmediately:0 block:v5];
  [(IMChat *)self clear];
  return 1;
}

- (unint64_t)markAsSpam:(unint64_t)spam isJunkReportedToCarrier:(BOOL)carrier
{
  v21 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A831A2D0;
  v17[3] = &unk_1E78113E8;
  v17[4] = self;
  carrierCopy = carrier;
  v6 = [(IMChat *)self _performQueryWithKey:@"MarkAsSpam" loadImmediately:1 block:v17];
  v7 = self->_countOfMessagesMarkedAsSpam;
  [(IMChat *)self _setCountOfMessagesMarkedAsSpam:0];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      integerValue = [(NSNumber *)v7 integerValue];
      *buf = 134217984;
      v20 = integerValue;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Marked %ld messages as spam", buf, 0xCu);
    }
  }

  v10 = [(IMChat *)self valueForChatProperty:@"restoredFromBlackhole"];
  bOOLValue = [v10 BOOLValue];

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v13 = mEMORY[0x1E69A8168];
  if (bOOLValue)
  {
    spamCopy = 32;
  }

  else
  {
    spamCopy = spam;
  }

  [mEMORY[0x1E69A8168] trackSpamEvent:spamCopy];

  integerValue2 = [(NSNumber *)v7 integerValue];
  return integerValue2;
}

- (void)autoReportSpam
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(IMChat *)self valueForChatProperty:@"hasBeenAutoSpamReported"];

  if (!v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [(IMChat *)self chatIdentifier];
        v7 = 138412290;
        v8 = chatIdentifier;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "autoReportSpam on self %@", &v7, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat_markAsSpamAutomatically:self];

    [(IMChat *)self markAsAutoSpamReported];
  }
}

- (BOOL)_isChatBot
{
  if ([(IMChat *)self chatStyle]!= 45)
  {
    return 0;
  }

  participants = [(IMChat *)self participants];
  firstObject = [participants firstObject];
  isChatBot = [firstObject isChatBot];

  return isChatBot;
}

- (void)reportJunkToCarrierViaRelay:(BOOL)relay
{
  relayCopy = relay;
  v23 = *MEMORY[0x1E69E9840];
  _messageToReportJunk = [(IMChat *)self _messageToReportJunk];
  if (!_messageToReportJunk)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_18;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      chatItems = [(IMChat *)self chatItems];
      v21 = 138412290;
      v22 = chatItems;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "No chat item of type IMMessageItem found while reporting junk. Chat Items -> %@", &v21, 0xCu);
    }

LABEL_11:

    goto LABEL_18;
  }

  [MEMORY[0x1E69A7F70] collectReportJunkMetricsForJunkMessageItem:_messageToReportJunk junkChatStyle:-[IMChat chatStyle](self totalMessagesInThread:{"chatStyle"), -[IMChat messageCount](self, "messageCount")}];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled && relayCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Report junk will be done via relay", &v21, 2u);
      }
    }

    goto LABEL_13;
  }

  if (([MEMORY[0x1E69A7F70] canReportJunkOverCellularServiceOfMessageItem:_messageToReportJunk] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_18;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cellular service not at home service. Cannot report junk", &v21, 2u);
    }

    goto LABEL_11;
  }

LABEL_13:
  v11 = +[IMAccountController sharedInstance];
  v12 = +[IMServiceImpl smsService];
  v13 = [v11 activeAccountsForService:v12];
  firstObject = [v13 firstObject];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      guid = [_messageToReportJunk guid];
      v21 = 138412290;
      v22 = guid;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "sending junk report item: %@", &v21, 0xCu);
    }
  }

  v17 = +[IMDaemonController sharedController];
  remoteDaemon = [v17 remoteDaemon];
  guid2 = [_messageToReportJunk guid];
  uniqueID = [firstObject uniqueID];
  [remoteDaemon sendReportJunkMessageGUID:guid2 account:uniqueID shouldRelay:relayCopy];

LABEL_18:
}

- (BOOL)reportJunk
{
  v27 = *MEMORY[0x1E69E9840];
  _messageToReportJunk = [(IMChat *)self _messageToReportJunk];
  v4 = _messageToReportJunk;
  if (_messageToReportJunk)
  {
    service = [_messageToReportJunk service];
    v6 = [IMServiceImpl serviceWithInternalName:service];

    if ([v6 supportsCapability:*MEMORY[0x1E69A7A20]])
    {
      v7 = [MEMORY[0x1E69A7F70] isReportJunkServiceAllowedForMessageItem:v4 junkChatStyle:{-[IMChat chatStyle](self, "chatStyle")}];
      if (v7 & 1) != 0 || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isReportJunkEverywhereEnabled"), v8, (v9))
      {
        if ([(IMChat *)self _isChatBot])
        {
          [MEMORY[0x1E69A7F70] collectReportJunkMetricsForChatbotJunkMessageItem:v4 totalMessagesInThread:{-[IMChat messageCount](self, "messageCount")}];
        }

        else
        {
          [MEMORY[0x1E69A7F70] collectReportJunkMetricsForJunkMessageItem:v4 junkChatStyle:-[IMChat chatStyle](self totalMessagesInThread:{"chatStyle"), -[IMChat messageCount](self, "messageCount")}];
        }

        v13 = +[IMAccountController sharedInstance];
        v14 = [v13 activeAccountsForService:v6];
        firstObject = [v14 firstObject];

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            guid = [v4 guid];
            v25 = 138412290;
            v26 = guid;
            _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "sending junk report item: %@", &v25, 0xCu);
          }
        }

        v18 = +[IMDaemonController sharedController];
        remoteDaemon = [v18 remoteDaemon];
        guid2 = [v4 guid];
        uniqueID = [firstObject uniqueID];
        [remoteDaemon sendReportJunkMessageGUID:guid2 account:uniqueID shouldRelay:v7 ^ 1u];

        v12 = 1;
        goto LABEL_23;
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          guid3 = [v4 guid];
          v25 = 138412290;
          v26 = guid3;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Not relaying junk report item: %@", &v25, 0xCu);
        }
      }
    }

    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      chatItems = [(IMChat *)self chatItems];
      v25 = 138412290;
      v26 = chatItems;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "No chat item of type IMMessageItem found while reporting junk. Chat Items -> %@", &v25, 0xCu);
    }
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (void)reportNotJunkToTrustKit
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    lastIncomingFinishedMessageItem = [(IMItemsController *)self lastIncomingFinishedMessageItem];
    guid = [lastIncomingFinishedMessageItem guid];

    if ([guid length])
    {
      v7 = +[IMAccountController sharedInstance];
      account = [(IMChat *)self account];
      service = [account service];
      v10 = [v7 activeAccountsForService:service];
      firstObject = [v10 firstObject];

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = guid;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Sending not junk report item: %@", &v18, 0xCu);
        }
      }

      v13 = +[IMDaemonController sharedController];
      remoteDaemon = [v13 remoteDaemon];
      uniqueID = [firstObject uniqueID];
      [remoteDaemon sendReportNotJunkMessageGUID:guid account:uniqueID];
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        chatItems = [(IMChat *)self chatItems];
        v18 = 138412290;
        v19 = chatItems;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "No chat item guid found while reporting not junk. Chat Items -> %@", &v18, 0xCu);
      }
    }
  }
}

- (void)reportLazuliSpam:(unint64_t)spam isBot:(BOOL)bot
{
  botCopy = bot;
  v25 = *MEMORY[0x1E69E9840];
  _messageToReportJunk = [(IMChat *)self _messageToReportJunk];
  service = [_messageToReportJunk service];
  v9 = [service isEqualToString:*MEMORY[0x1E69A7AD8]];

  if (v9)
  {
    if (_messageToReportJunk)
    {
      v10 = +[IMAccountController sharedInstance];
      v11 = +[IMServiceImpl rcsService];
      v12 = [v10 activeAccountsForService:v11];
      firstObject = [v12 firstObject];

      if (botCopy)
      {
        [MEMORY[0x1E69A7F70] collectReportJunkMetricsForChatbotJunkMessageItem:_messageToReportJunk totalMessagesInThread:{-[IMChat messageCount](self, "messageCount")}];
      }

      else
      {
        [MEMORY[0x1E69A7F70] collectReportJunkMetricsForJunkMessageItem:_messageToReportJunk junkChatStyle:-[IMChat chatStyle](self totalMessagesInThread:{"chatStyle"), -[IMChat messageCount](self, "messageCount")}];
      }

      v16 = IMOSLoggingEnabled();
      if (firstObject)
      {
        if (v16)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v23 = 67109120;
            LODWORD(v24) = botCopy;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Found RCS account, reporting spam, isBot: %d", &v23, 8u);
          }
        }

        v18 = +[IMDaemonController sharedController];
        remoteDaemon = [v18 remoteDaemon];
        uniqueID = [firstObject uniqueID];
        [remoteDaemon sendLazuliSpamReport:_messageToReportJunk isBot:botCopy spamType:spam account:uniqueID];
      }

      else if (v16)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          chatItems = [(IMChat *)self chatItems];
          v23 = 138412290;
          v24 = chatItems;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "No RCS Account found while reporting spam. Chat Items -> %@", &v23, 0xCu);
        }
      }

LABEL_23:

      goto LABEL_24;
    }

    if (IMOSLoggingEnabled())
    {
      firstObject = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        chatItems2 = [(IMChat *)self chatItems];
        v23 = 138412290;
        v24 = chatItems2;
        _os_log_impl(&dword_1A823F000, firstObject, OS_LOG_TYPE_INFO, "No chat item of type IMMessageItem found while reporting spam. Chat Items -> %@", &v23, 0xCu);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E11D0();
    }
  }

LABEL_24:
}

- (void)setIsFiltered:(int64_t)filtered
{
  v11 = *MEMORY[0x1E69E9840];
  isFiltered = self->_isFiltered;
  if (isFiltered != filtered)
  {
    if (isFiltered == 2)
    {
      [(IMChat *)self invalidateSpamIndicatorCachedValuesIfNeeded];
      self->_isFiltered = filtered;
    }

    else
    {
      self->_isFiltered = filtered;
      if (filtered)
      {
        goto LABEL_10;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 134218242;
        isFiltered = [(IMChat *)self isFiltered];
        v9 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Updating isFiltered to %ld for chat %@", &v7, 0x16u);
      }
    }

    [(IMChat *)self _postNotification:@"__kIMChatIsFilteredChangedNotification" userInfo:0];
    [(IMChat *)self _updateChatItemsWithDataDetectorResultsForReason:@"updateIsFiltered:IMMessageFilterActionKnownSender"];
  }

LABEL_10:
  [(IMChat *)self invalidateMergedThreadFilterModes];
}

- (BOOL)isShowingTranslationText
{
  if (![(IMChat *)self isAutomaticTranslationEnabled])
  {
    return 1;
  }

  v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6CA0]];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)hasOfferedAutomaticTranslationInTranslateMenu
{
  v2 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B98]];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setHasOfferedAutomaticTranslationInTranslateMenu:(BOOL)menu
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:menu];
  [(IMChat *)self setValue:v4 forChatProperty:*MEMORY[0x1E69A6B98]];
}

- (void)setShowingTranslatedText:(BOOL)text
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:text];
  [(IMChat *)self setValue:v4 forChatProperty:*MEMORY[0x1E69A6CA0]];
  [(IMChat *)self _reloadChatItemsForTranslationEnabledChange];
}

- (void)updateIsFiltered:(int64_t)filtered
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_isFiltered != filtered)
  {
    [(IMChat *)self setIsFiltered:?];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self updateIsFiltered:self->_isFiltered synchronously:0];

    if ((filtered & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      chatRegistry2 = [(IMChat *)self chatRegistry];
      v8[0] = self;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [chatRegistry2 markChatsAsReviewed:v7];
    }
  }
}

- (void)updateIsBlackholed:(BOOL)blackholed
{
  blackholedCopy = blackholed;
  daemonController = [(IMChat *)self daemonController];
  capabilities = [daemonController capabilities];
  v7 = *MEMORY[0x1E69A6258];

  if (((v7 & capabilities) == 0) == blackholedCopy)
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self updateIsBlackholed:blackholedCopy];
  }
}

- (void)setRecovered:(BOOL)recovered
{
  if (self->_recovered != recovered)
  {
    if (recovered)
    {
      self->_recovered = recovered;
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Updating isRecovered to YES", buf, 2u);
        }
      }

      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat:self updateIsRecovered:1];
    }

    else if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Chat - Tried to update isRecovered to NO, not allowed", v7, 2u);
      }
    }
  }
}

- (void)setDeletingIncomingMessages:(BOOL)messages
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_deletingIncomingMessages != messages)
  {
    messagesCopy = messages;
    self->_deletingIncomingMessages = messages;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (messagesCopy)
        {
          v6 = @"YES";
        }

        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Updating isDeletingIncomingMessages to %@", &v8, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self updateIsDeletingIncomingMessages:messagesCopy];
  }
}

- (void)updateLineSwitchedTo:(id)to
{
  v8 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = toCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "SIM Line is switched to %@", &v6, 0xCu);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Conversation line switched" block:&unk_1F1B6E900];
}

- (void)loadParticipantContactsIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  participants = [(IMChat *)self participants];
  v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = MEMORY[0x1E695E0F0];
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(participants);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7++) cnContactWithKeys:v6];
      }

      while (v4 != v7);
      v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

+ (id)_participantsWorkQueue
{
  if (qword_1EB2EA348 != -1)
  {
    sub_1A84E120C();
  }

  v3 = qword_1EB2EA340;

  return v3;
}

- (BOOL)hasKnownParticipants
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  participants = [(IMChat *)self participants];
  v4 = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(participants);
        }

        if ([*(*(&v8 + 1) + 8 * i) isContactButNotMe])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(IMChat *)self setHasKnownParticipantsCache:v4];
  return v4;
}

- (BOOL)hasKnownParticipantsCache
{
  hasKnownParticipantsCacheStatus = [(IMChat *)self hasKnownParticipantsCacheStatus];
  if (hasKnownParticipantsCacheStatus >= 2)
  {
    if (hasKnownParticipantsCacheStatus == -1)
    {

      LOBYTE(hasKnownParticipantsCacheStatus) = [(IMChat *)self hasKnownParticipants];
    }

    else
    {
      LOBYTE(hasKnownParticipantsCacheStatus) = 0;
    }
  }

  return hasKnownParticipantsCacheStatus;
}

- (BOOL)allParticipantsAreContacts
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  participants = [(IMChat *)self participants];
  v3 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(participants);
        }

        if (![*(*(&v9 + 1) + 8 * i) isContact])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)hasMessageWithServiceCapability:(id)capability
{
  v3 = [(IMItemsController *)self _lastMessageItemWithServiceCapability:capability];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasMessageFromService:(id)service
{
  internalName = [service internalName];
  v5 = internalName;
  if (internalName && [internalName length])
  {
    v6 = [(IMItemsController *)self _lastMessageItemWithService:v5];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSMS
{
  account = [(IMChat *)self account];
  service = [account service];
  v4 = +[IMService smsService];
  v5 = service == v4;

  return v5;
}

- (BOOL)isRCS
{
  account = [(IMChat *)self account];
  service = [account service];
  v4 = +[IMService rcsService];
  v5 = service == v4;

  return v5;
}

- (BOOL)shouldForceToSMS
{
  v2 = [(IMChat *)self valueForChatProperty:@"shouldForceToSMS"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)updateShouldForceToSMS:(BOOL)s
{
  sCopy = s;
  v5 = [(IMChat *)self valueForChatProperty:@"shouldForceToSMS"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue != sCopy)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:sCopy];
    [(IMChat *)self setValue:v7 forChatProperty:@"shouldForceToSMS"];
  }
}

- (void)setKeyTransparencyURIToUUIDMapping:(id)mapping
{
  v23 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v16 = *MEMORY[0x1E69A6BE8];
  selfCopy = self;
  v5 = [(IMChat *)self valueForChatProperty:?];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [mappingCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [mappingCopy objectForKeyedSubscript:v12];
        uUIDString = [v13 UUIDString];
        [dictionary setObject:uUIDString forKeyedSubscript:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (([v5 isEqualToDictionary:dictionary] & 1) == 0)
  {
    v15 = [dictionary copy];
    [(IMChat *)selfCopy setValue:v15 forChatProperty:v16];
  }
}

- (void)setShouldShowAudioButtonInEntryView:(BOOL)view
{
  viewCopy = view;
  v5 = [(IMChat *)self valueForChatProperty:@"showAudioButtonInEntryView"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue != viewCopy)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:viewCopy];
    [(IMChat *)self setValue:v7 forChatProperty:@"showAudioButtonInEntryView"];
  }
}

- (BOOL)shouldShowAudioButtonInEntryView
{
  v3 = [(IMChat *)self supportsCapabilities:64];
  if (v3)
  {
    v4 = [(IMChat *)self valueForChatProperty:@"showAudioButtonInEntryView"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v3) = bOOLValue;
  }

  return v3;
}

- (void)updateSMSCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69A8210] fetchSMSFilterParamForCategory:category subCategory:subCategory];
  category = [v6 category];
  subCategory = [v6 subCategory];
  v9 = [(IMChat *)self valueForChatProperty:@"SMSCategory"];
  integerValue = [v9 integerValue];

  if (integerValue != category)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v18 = category;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Setting spam category to: %d", buf, 8u);
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    [(IMChat *)self setValue:v12 forChatProperty:@"SMSCategory"];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:subCategory];
    [(IMChat *)self setValue:v13 forChatProperty:@"SMSSubCategory"];

    v14 = category == 2;
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    [(IMChat *)self setValue:v15 forChatProperty:@"wasDetectedAsSMSSpam"];

    [(IMChat *)self _postNotification:@"__kIMChatIsFilteredChangedNotification" userInfo:0];
    if (!v14)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updateSMSCategory:%d", category];
      [(IMChat *)self _updateChatItemsWithDataDetectorResultsForReason:v16];
    }
  }
}

- (int64_t)chatPropertyValueFor:(int64_t)for
{
  if ((for - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return for - 1;
  }
}

- (void)recalculateMergedThreadFilterModes
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (isMergeFilteredThreadsEnabled)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = sub_1A831C724;
    v13 = &unk_1E7812728;
    v15 = &v16;
    v6 = v5;
    v14 = v6;
    [(IMChat *)self _enumerateUnderlyingChatInfo:&v10];
    if ((v17[3] & 1) == 0)
    {
      [v6 removeAllObjects];
    }

    v7 = [v6 copy];
    mergedThreadFilterModes = self->_mergedThreadFilterModes;
    self->_mergedThreadFilterModes = v7;

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = [MEMORY[0x1E695DFD8] set];
    self->_mergedThreadFilterModes = v9;

    MEMORY[0x1EEE66BB8](v9);
  }
}

- (void)invalidateMergedThreadFilterModes
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (isMergeFilteredThreadsEnabled)
  {
    mergedThreadFilterModes = self->_mergedThreadFilterModes;
    self->_mergedThreadFilterModes = 0;
  }
}

- (int64_t)smsCategory
{
  v2 = [(IMChat *)self valueForChatProperty:@"SMSCategory"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)_updateChatItemsWithDataDetectorResultsForReason:(id)reason
{
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"(IMChat) <Reason undefined>";
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A831C918;
  v6[3] = &unk_1E780FCB0;
  v6[4] = self;
  reasonCopy2 = reason;
  [(IMChat *)self _updateChatItemsWithReason:reasonCopy block:v6];
}

- (IMMessageItem)firstUnreadMessageItem
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self unreadMessageCount]&& (v23 = self, [(IMChat *)self lastSeenMessageGuid], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    _items = [(IMItemsController *)v23 _items];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    reverseObjectEnumerator = [_items reverseObjectEnumerator];
    v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            guid = [v9 guid];
            lastSeenMessageGuid = [(IMChat *)v23 lastSeenMessageGuid];
            v12 = [guid isEqualToString:lastSeenMessageGuid];

            if (v12)
            {
              if (v6)
              {
                v18 = v6;
              }

              else
              {
                v18 = v9;
              }

              v17 = v18;

              goto LABEL_27;
            }

            v13 = v9;

            v6 = v13;
          }
        }

        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      if (v6)
      {
        guid2 = [v6 guid];
        lastSeenMessageGuid2 = [(IMChat *)v23 lastSeenMessageGuid];
        v16 = [guid2 isEqualToString:lastSeenMessageGuid2];

        if (v16)
        {
          v6 = v6;
          v17 = v6;
          goto LABEL_27;
        }
      }
    }

    else
    {

      v6 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [_items count];
        *buf = 134217984;
        v29 = v20;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Tried to identify first unread message but it was not part of the %lu loaded messages", buf, 0xCu);
      }
    }

    v17 = 0;
LABEL_27:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)updateTranscriptSharingState:(int64_t)state
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(IMChat *)self valueForChatProperty:@"emergencyTranscriptSharingState"];
  integerValue = [v5 integerValue];

  if (integerValue != state)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Updating transcript sharing state to %@", &v9, 0xCu);
      }
    }

    [(IMChat *)self setValue:v7 forChatProperty:@"emergencyTranscriptSharingState"];
  }
}

- (int64_t)transcriptSharingState
{
  v2 = [(IMChat *)self valueForChatProperty:@"emergencyTranscriptSharingState"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)shouldShowAutoDonationAction
{
  if ([(IMChat *)self isBusinessChat]|| ![(IMChat *)self hasKnownParticipants])
  {
    return 0;
  }

  v3 = MEMORY[0x1E69A8288];

  return [v3 isSharedWithYouEnabled];
}

- (BOOL)isAutoDonatingMessages
{
  autoDonationBehavior = [(IMChat *)self autoDonationBehavior];
  if (autoDonationBehavior == 2)
  {
    goto LABEL_8;
  }

  if (autoDonationBehavior == 1)
  {
    return autoDonationBehavior;
  }

  if (autoDonationBehavior)
  {
LABEL_8:
    LOBYTE(autoDonationBehavior) = 0;
    return autoDonationBehavior;
  }

  LODWORD(autoDonationBehavior) = [(IMChat *)self shouldShowAutoDonationAction];
  if (autoDonationBehavior)
  {
    v4 = MEMORY[0x1E69A8288];

    LOBYTE(autoDonationBehavior) = [v4 isSharedWithYouEnabled];
  }

  return autoDonationBehavior;
}

- (void)setAutoDonationBehavior:(int64_t)behavior
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_autoDonationBehavior != behavior)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v7 = 134218242;
        behaviorCopy = behavior;
        v9 = 2112;
        v10 = guid;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Updating AutoDonateBehavior to: %ld for chat guid: %@", &v7, 0x16u);
      }
    }

    self->_autoDonationBehavior = behavior;
  }
}

- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)code
{
  v4 = *MEMORY[0x1E69A6C28];
  codeCopy = code;
  v6 = [(IMChat *)self valueForChatProperty:v4];
  v7 = [v6 objectForKeyedSubscript:codeCopy];

  return v7;
}

- (void)updateLastMessageGUID:(id)d forLanguageCode:(id)code
{
  v6 = *MEMORY[0x1E69A6C28];
  codeCopy = code;
  dCopy = d;
  v9 = [(IMChat *)self valueForChatProperty:v6];
  [v9 setValue:dCopy forKey:codeCopy];

  [(IMChat *)self setValue:v9 forChatProperty:v6];
}

- (BOOL)isEmergencyChat
{
  v2 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6BB8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)chatSummaryMessageGUID
{
  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B28]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKey:*MEMORY[0x1E69A6B30]];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateIsEmergencyChat:(BOOL)chat
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:chat];
  [(IMChat *)self setValue:v4 forChatProperty:*MEMORY[0x1E69A6BB8]];
}

- (void)updateAssociatedBusinessID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![(IMChat *)self isStewieRoadsideChat])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1290();
    }

    goto LABEL_14;
  }

  if (([dCopy _appearsToBeBusinessID] & 1) == 0)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E12CC();
    }

LABEL_14:

    goto LABEL_15;
  }

  associatedBusinessID = [(IMChat *)self associatedBusinessID];
  v6 = [dCopy isEqualToString:associatedBusinessID];

  if ((v6 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v10 = 138412546;
        v11 = dCopy;
        v12 = 2112;
        v13 = guid;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Updating Associated business ID to: %@ for chat guid: %@", &v10, 0x16u);
      }
    }

    [(IMChat *)self setValue:dCopy forChatProperty:*MEMORY[0x1E69A6AF8]];
  }

LABEL_15:
}

- (void)markBusinessChatAsSpam:(unint64_t)spam
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A831D578;
  v4[3] = &unk_1E7812750;
  v4[4] = self;
  v4[5] = spam;
  v3 = [(IMChat *)self _performQueryWithKey:@"MarkAsSpam" loadImmediately:1 block:v4];
}

- (BOOL)canUnsubscribe
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  if (!isReportJunkEverywhereEnabled)
  {
    return 0;
  }

  v5 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6CD8]];
  v6 = [v5 length] != 0;

  return v6;
}

- (NSString)unsubscribeText
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled)
  {
    v5 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6CD8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_resetUnsubscribeText
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled)
  {
    v5 = *MEMORY[0x1E69A6CD8];

    [(IMChat *)self setValue:0 forChatProperty:v5];
  }
}

- (void)unsubscribe
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled)
  {
    unsubscribeText = [(IMChat *)self unsubscribeText];
    v6 = [unsubscribeText length];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      unsubscribeText2 = [(IMChat *)self unsubscribeText];
      v9 = [v7 initWithString:unsubscribeText2];

      v10 = [IMMessage alloc];
      date = [MEMORY[0x1E695DF00] date];
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      v13 = [(IMMessage *)v10 initWithSender:0 time:date text:v9 messageSubject:0 fileTransferGUIDs:0 flags:1048581 error:0 guid:stringGUID subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 threadIdentifier:0];

      [(IMChat *)self sendMessage:v13];
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Unsubscribe message sent", buf, 2u);
        }
      }

      [(IMChat *)self _resetUnsubscribeText];
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E133C();
      }
    }
  }
}

- (BOOL)canSuggestRecipientContact
{
  if ([(IMChat *)self isGroupChat])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    recipient = [(IMChat *)self recipient];
    v5 = [recipient cnContactWithKeys:MEMORY[0x1E695E0F0]];

    if (([v5 isCoreRecentsAccepted] & 1) != 0 || -[IMChat currentlyMarkingAsKnown](self, "currentlyMarkingAsKnown"))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = ![(IMChat *)self inUnknownSendersFilter];
    }
  }

  return v3;
}

- (BOOL)inUnknownSendersFilter
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (!isIntroductionsEnabled)
  {
    goto LABEL_12;
  }

  LODWORD(v5) = [MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled];
  if (v5)
  {
    isFiltered = [(IMChat *)self isFiltered];
    if (([MEMORY[0x1E69A8198] isTextMessageExtensionEnabled] & 1) != 0 || (v7 = -[IMChat isFiltered](self, "isFiltered"), LOBYTE(v5) = 1, v7 != 1) && (isFiltered & 0xF) - 3 >= 2)
    {
      if (![MEMORY[0x1E69A8198] isTextMessageExtensionEnabled] || (v5 = -[IMChat isFiltered](self, "isFiltered"), v5 != 1))
      {
        if (([MEMORY[0x1E69A8198] isTextMessageExtensionEnabled] & 1) == 0 && (objc_msgSend(MEMORY[0x1E69A8198], "isSpamFilteringEnabled") & 1) == 0 && -[IMChat isFiltered](self, "isFiltered") == 2)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

LABEL_12:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (BOOL)shouldShowIntroductionsButtons
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    messageCount = [(IMChat *)self messageCount];
    if (messageCount)
    {
      if ([(IMChat *)self isFiltered]== 2 && [(IMChat *)self allowsJunkConfiguration]|| [(IMChat *)self inUnknownSendersFilter])
      {
        LOBYTE(messageCount) = 1;
      }

      else
      {
        LOBYTE(messageCount) = ![(IMChat *)self allowedByScreenTime];
      }
    }
  }

  else
  {
    LOBYTE(messageCount) = 0;
  }

  return messageCount;
}

- (BOOL)canBeMessageLevelFiltered
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (!isMergeFilteredThreadsEnabled)
  {
    return 0;
  }

  v5 = +[IMChatRegistry sharedRegistry];
  v6 = [v5 currentMessageFilterMode] >= 1 && -[IMChat supportsMergingFilteredThreads](self, "supportsMergingFilteredThreads");

  return v6;
}

- (NSString)stewieSharingSuggestedName
{
  if ([(IMChat *)self isStewieSharingChat])
  {
    emergencyUserInfo = [(IMChat *)self emergencyUserInfo];
    emergencyUserPersona = [emergencyUserInfo emergencyUserPersona];
    suggestedDisplayName = [emergencyUserPersona suggestedDisplayName];
  }

  else
  {
    suggestedDisplayName = 0;
  }

  return suggestedDisplayName;
}

- (IMHandle)emergencyUserHandle
{
  if ([(IMChat *)self isStewieSharingChat]&& !self->_cachedEUHandle)
  {
    emergencyUserInfo = [(IMChat *)self emergencyUserInfo];
    emergencyUserPersona = [emergencyUserInfo emergencyUserPersona];
    senderID = [emergencyUserPersona senderID];
    if (senderID)
    {
      account = [(IMChat *)self account];
      v7 = [account imHandleWithID:senderID];
      cachedEUHandle = self->_cachedEUHandle;
      self->_cachedEUHandle = v7;
    }
  }

  v9 = self->_cachedEUHandle;

  return v9;
}

- (void)stopTranscriptSharingWithChat
{
  v11 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[IMChat stopTranscriptSharingWithChat]";
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Stop transcript sharing for %s", &v9, 0xCu);
      }
    }

    v6 = +[IMDaemonController sharedController];
    remoteDaemon = [v6 remoteDaemon];
    chatIdentifier = [(IMChat *)self chatIdentifier];
    [remoteDaemon stopTranscriptSharingWithChat:chatIdentifier];
  }
}

- (BOOL)isOscarChat
{
  if ([(IMChat *)self isFiltered]!= 2)
  {
    return 0;
  }

  account = [(IMChat *)self account];
  service = [account service];
  internalName = [service internalName];
  v6 = [internalName isEqualToString:*MEMORY[0x1E69A7AF0]];

  return v6;
}

- (BOOL)containsMessageFromContact
{
  v2 = [(IMChat *)self _lastMessageItemFromContactOrFromMe:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)containsMessageFromContactOrMe
{
  if ([(IMChat *)self numberOfTimesRespondedToThread]> 0)
  {
    return 1;
  }

  v4 = [(IMChat *)self _lastMessageItemFromContactOrFromMe:1];
  v3 = v4 != 0;

  return v3;
}

- (int64_t)numberOfTimesRespondedToThread
{
  v2 = [(IMChat *)self valueForChatProperty:@"numberOfTimesRespondedtoThread"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setHasHadSuccessfulQuery:(BOOL)query
{
  if (query && !self->_hasHadSuccessfulQuery)
  {
    self->_hasHadSuccessfulQuery = query;
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _markHasHadSuccessfulQueryForChat:self];
  }
}

- (void)clear
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Clearing chat: %@", buf, 0xCu);
    }
  }

  self->_didSendAFinishedMessage = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A831E18C;
  v4[3] = &unk_1E780FCB0;
  v4[4] = self;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Clear transcript" block:v4];
}

- (void)didUnregisterFromRegistry:(id)registry
{
  v14 = *MEMORY[0x1E69E9840];
  registryCopy = registry;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      participants = [(IMChat *)self participants];
      v10 = 138412546;
      v11 = guid;
      v12 = 2112;
      v13 = participants;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Chat %@ has been unregistered, removing participants (were %@)", &v10, 0x16u);
    }
  }

  [(IMItemsController *)self _removeAllItems];
  participants = self->_participants;
  self->_participants = 0;

  account = self->_account;
  self->_account = 0;

  [(IMChat *)self setUnregistered:1];
}

- (void)updateCachedAllowedByScreenTime:(BOOL)time
{
  timeCopy = time;
  v15 = *MEMORY[0x1E69E9840];
  v5 = +[IMDowntimeController isContactLimitsFeatureEnabled];
  if (v5)
  {
    lastCachedAllowedByScreenTime = self->_lastCachedAllowedByScreenTime;
    self->_lastCachedAllowedByScreenTime = timeCopy;
    if (lastCachedAllowedByScreenTime != timeCopy)
    {
      v7 = sub_1A82C323C(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v9 = self->_lastCachedAllowedByScreenTime;
        v11 = 138412546;
        v12 = guid;
        v13 = 1024;
        v14 = v9;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "chat: %@ allowedByScreenTime changed to: %{BOOL}d", &v11, 0x12u);
      }

      [(IMChat *)self _postNotification:@"__kIMChatAllowedByScreenTimeChangedNotification" userInfo:0];
      [(IMChat *)self _postNotification:*MEMORY[0x1E69A6830] userInfo:0];
      v10 = dispatch_get_global_queue(17, 0);
      dispatch_async(v10, &unk_1F1B6E940);

      [(IMChat *)self recomputeChatItemsForScreenTimeStatusChanged];
    }
  }
}

- (void)downtimeControllerInitializedContextWithAllowedByScreenTime:(BOOL)time
{
  timeCopy = time;
  if (!time)
  {
    [(IMChat *)self recomputeChatItemsForScreenTimeStatusChanged];
  }

  [(IMChat *)self updateCachedAllowedByScreenTime:timeCopy];
}

- (void)recomputeChatItemsForScreenTimeStatusChanged
{
  [(IMChat *)self invalidateSpamIndicatorCachedValuesIfNeeded];

  MEMORY[0x1EEE66B58](self, sel__reloadChatItemsForScreenTimeChange);
}

- (void)_accountLoggedOut:(id)out
{
  v13 = *MEMORY[0x1E69E9840];
  outCopy = out;
  object = [outCopy object];
  account = self->_account;

  if (object == account && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->_account;
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "Account Logged Out: chat: %@ account: %@", &v9, 0x16u);
    }
  }
}

- (void)_startTiming:(id)timing
{
  timingCopy = timing;
  if (!self->_timingCollection)
  {
    v6 = timingCopy;
    objc_storeStrong(&self->_timingCollection, timing);
    timingCopy = v6;
  }
}

- (void)_postNotification:(id)notification userInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  infoCopy = info;
  v8 = +[IMChatRegistry sharedRegistry];
  isFirstLoad = [v8 isFirstLoad];

  if ((isFirstLoad & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = notificationCopy;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Notification posted: %@", &v12, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:notificationCopy object:self userInfo:infoCopy];
  }
}

- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems
{
  v66[6] = *MEMORY[0x1E69E9840];
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v65[0] = @"__kIMChatItemsInserted";
  indexSet = insertedCopy;
  if (!insertedCopy)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  v66[0] = indexSet;
  v65[1] = @"__kIMChatItemsRemoved";
  indexSet2 = removedCopy;
  if (!removedCopy)
  {
    indexSet2 = [MEMORY[0x1E696AC90] indexSet];
  }

  v66[1] = indexSet2;
  v65[2] = @"__kIMChatItemsReload";
  indexSet3 = reloadCopy;
  if (!reloadCopy)
  {
    indexSet3 = [MEMORY[0x1E696AC90] indexSet];
  }

  v66[2] = indexSet3;
  v65[3] = @"__kIMChatItemsRegenerate";
  indexSet4 = regenerateCopy;
  if (!regenerateCopy)
  {
    indexSet4 = [MEMORY[0x1E696AC90] indexSet];
  }

  v58 = reloadCopy;
  v66[3] = indexSet4;
  v65[4] = @"__kIMChatItemsOldItems";
  array = itemsCopy;
  if (!itemsCopy)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v66[4] = array;
  v65[5] = @"__kIMChatItemsNewItems";
  array2 = chatItemsCopy;
  if (!chatItemsCopy)
  {
    array2 = [MEMORY[0x1E695DEC8] array];
  }

  v66[5] = array2;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:6];
  v57 = v24;
  if (!chatItemsCopy)
  {
  }

  if (!itemsCopy)
  {
  }

  v25 = v58;
  if (!regenerateCopy)
  {
  }

  selfCopy3 = self;
  if (v58)
  {
    if (removedCopy)
    {
      goto LABEL_21;
    }

LABEL_57:

    if (insertedCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

  if (!removedCopy)
  {
    goto LABEL_57;
  }

LABEL_21:
  if (insertedCopy)
  {
    goto LABEL_22;
  }

LABEL_58:

LABEL_22:
  v27 = sub_1A82C323C(v24);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);

  if (v28)
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v30 = [insertedCopy count];
    if (v30)
    {
      v31 = sub_1A82C323C(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = insertedCopy;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
      }

      [array3 addObject:insertedCopy];
    }

    v32 = [removedCopy count];
    if (v32)
    {
      v33 = sub_1A82C323C(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = removedCopy;
        _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
      }

      [array3 addObject:removedCopy];
    }

    v34 = [v58 count];
    if (v34)
    {
      v35 = sub_1A82C323C(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v58;
        _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
      }

      [array3 addObject:v58];
    }

    v36 = [regenerateCopy count];
    if (v36)
    {
      v37 = sub_1A82C323C(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = regenerateCopy;
        _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
      }

      [array3 addObject:regenerateCopy];
    }

    if ([insertedCopy count] || objc_msgSend(removedCopy, "count") || !objc_msgSend(v58, "count") && !objc_msgSend(regenerateCopy, "count"))
    {
      v38 = [(IMChat *)self _chatItemLogSummaryForChatItems:itemsCopy withUpdates:array3];
      if (v38)
      {
        v39 = -[IMChat _loggingRangeForUpdates:chatItemsCount:](self, "_loggingRangeForUpdates:chatItemsCount:", array3, [itemsCopy count]);
        v41 = v40;
        v42 = sub_1A82C323C(v39);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v67.location = v39;
          v67.length = v41;
          v43 = NSStringFromRange(v67);
          *buf = 138412290;
          v62 = v43;
          _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "↱ chatItems range before update:\n %@", buf, 0xCu);
        }

        v45 = sub_1A82C323C(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
          *buf = 138412546;
          v62 = v46;
          v63 = 2112;
          v64 = v38;
          _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "↱ %@ chatItems before update:\n %@", buf, 0x16u);
        }

        selfCopy3 = self;
      }

      v47 = [(IMChat *)selfCopy3 _chatItemLogSummaryForChatItems:chatItemsCopy withUpdates:array3];
      if (v47)
      {
        v48 = -[IMChat _loggingRangeForUpdates:chatItemsCount:](selfCopy3, "_loggingRangeForUpdates:chatItemsCount:", array3, [chatItemsCopy count]);
        v50 = v49;
        v51 = sub_1A82C323C(v48);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v68.location = v48;
          v68.length = v50;
          v52 = NSStringFromRange(v68);
          *buf = 138412290;
          v62 = v52;
          _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "↳ chatItems range after update:\n %@", buf, 0xCu);
        }

        v54 = sub_1A82C323C(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(chatItemsCopy, "count")}];
          *buf = 138412546;
          v62 = v55;
          v63 = 2112;
          v64 = v47;
          _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "↳ %@ chatItems after update:\n %@", buf, 0x16u);
        }

        v25 = v58;
        selfCopy3 = self;
      }
    }
  }

  v56 = v57;
  [(IMChat *)selfCopy3 _postNotification:@"__kIMChatItemsDidChangeNotification" userInfo:v57, v57];
}

- (void)_setParticipantState:(unint64_t)state forHandle:(id)handle postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v8 = MEMORY[0x1E695DEC8];
  handleCopy2 = handle;
  v10 = [v8 arrayWithObjects:&handleCopy count:1];

  [(IMChat *)self _setParticipantState:state forHandles:v10 postNotification:notificationCopy, handleCopy, v12];
}

- (void)_setParticipantState:(unint64_t)state forHandles:(id)handles postNotification:(BOOL)notification
{
  if (state == 128)
  {
    v6 = 5;
  }

  else
  {
    v6 = -1;
  }

  if (state == 64)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (state == 32)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (state == 16)
  {
    v9 = 2;
  }

  else
  {
    v9 = -1;
  }

  if (state == 8)
  {
    v9 = 1;
  }

  if (state == 4)
  {
    v9 = 0;
  }

  if (state <= 31)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  [(IMChat *)self _participants:handles statusChanged:v10 postNotification:notification];
}

- (void)_handleMessageGUIDDeletions:(id)deletions
{
  v31 = *MEMORY[0x1E69E9840];
  deletionsCopy = deletions;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = deletionsCopy;
      v29 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Handle deleted messages: %@  in chat: %@", buf, 0x16u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = deletionsCopy;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMItemsController *)self _itemForGUID:*(*(&v21 + 1) + 8 * v10)];
        if (v11)
        {
          if (v7 || (v7 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
          {
            CFArrayAppendValue(v7, v11);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  if ([(__CFArray *)v7 count])
  {
    [(IMChat *)self _updateRepliesIfNecessaryWithRemovedItems:v7 threadIdentifiersOfRemovedParts:0];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v7;
  v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(IMChat *)self _removeItem:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  if (![(IMChat *)self messageCount])
  {
    v16 = [(IMChat *)self loadMessagesBeforeDate:0 limit:1 loadImmediately:1];
  }
}

- (unint64_t)paymentTypeForMessage:(id)message
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = IMExtensionPayloadUnarchivingClasses();
  v5 = objc_alloc(MEMORY[0x1E696ACD0]);
  payloadData = [messageCopy payloadData];
  v15 = 0;
  v7 = [v5 initForReadingFromData:payloadData error:&v15];
  v8 = v15;

  if (objc_opt_respondsToSelector())
  {
    [v7 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "strict-decoding 008 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v10 = [v7 decodeObjectOfClasses:v4 forKey:*MEMORY[0x1E696A508]];
  if (v8 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Failed to unarchive message payload data. Error: %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 objectForKey:*MEMORY[0x1E69A6F10]];
    if (qword_1EB2EA358 != -1)
    {
      sub_1A84E13AC();
    }

    if (off_1EB2EA350)
    {
      v13 = off_1EB2EA350(v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hasSurfRequestNotFromMe:(id)me
{
  meCopy = me;
  if (([meCopy isFromMe] & 1) != 0 || (objc_msgSend(meCopy, "balloonBundleID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsString:", *MEMORY[0x1E69A6A38]), v5, !v6))
  {
    v8 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Checking for request type in incoming SURF message for spam filtering", v10, 2u);
      }
    }

    v8 = [(IMChat *)self hasSurfRequestForPaymentType:[(IMChat *)self paymentTypeForMessage:meCopy]];
  }

  return v8;
}

- (void)_fixSendingItemDateAndSortID:(id)d
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  guid = [dCopy guid];
  v6 = [(IMItemsController *)self _itemForGUID:guid];

  if ([(IMItemsController *)self _shouldPinUnsentMessagesToBottom])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [dCopy hasEditedParts])
    {
      [dCopy setFlags:{objc_msgSend(dCopy, "flags") | 0x8000}];
    }

    if (v6 && [v6 unsentIsFromMeItem] && (objc_msgSend(dCopy, "unsentIsFromMeItem") & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "We have an unsent message that has now been sent, so we want to assign it a sortID", &v31, 2u);
        }
      }

      [(IMItemsController *)self _setSortID:dCopy];
    }

    _items = [(IMItemsController *)self _items];
    lastObject = [_items lastObject];

    if ([lastObject unsentIsFromMeItem] && !((v6 != 0) | objc_msgSend(dCopy, "isFromMe") & 1))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "The last item in the transcript is an unsent message and we are receiving an incoming message, we should display the progress bar", &v31, 2u);
        }
      }

      [(IMSendProgress *)self->_sendProgress setStartSendProgressImmediately:1];
    }
  }

  else if (v6)
  {
    if ([dCopy isFromMe])
    {
      clientSendTime = [v6 clientSendTime];
      [dCopy setClientSendTime:clientSendTime];

      time = [v6 time];
      [dCopy setTime:time];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = MEMORY[0x1E696AD98];
          time2 = [dCopy time];
          [time2 timeIntervalSinceReferenceDate];
          v16 = [v14 numberWithDouble:?];
          v31 = 138412290;
          v32 = v16;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Fixing message time to be found item's time %@", &v31, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isTypingMessage = [v6 isTypingMessage];
    }

    else
    {
      isTypingMessage = 0;
    }

    objc_opt_class();
    v21 = (objc_opt_isKindOfClass() & 1) != 0 && ([v6 isTypingMessage] & 1) == 0 && objc_msgSend(v6, "sortID") == 0;
    v22 = IMOSLoggingEnabled();
    if ((isTypingMessage | v21))
    {
      if (v22)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = @"NO";
          if (isTypingMessage)
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          if (v21)
          {
            v24 = @"YES";
          }

          v31 = 138412546;
          v32 = v25;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "We have a typing indicator or the sort id for an existing item is 0, so resetting {itemIsTyping: %@ nonTypingZero %@}", &v31, 0x16u);
        }
      }

      [(IMItemsController *)self _setSortID:dCopy];
    }

    else
    {
      if (v22)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "messageID")}];
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dCopy, "sortID")}];
          v29 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "messageID")}];
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "sortID")}];
          v31 = 138413058;
          v32 = v27;
          v33 = 2112;
          v34 = v28;
          v35 = 2112;
          v36 = v29;
          v37 = 2112;
          v38 = v30;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Need to transfer sort id over from previous item message mid %@ sid %@ item mid %@ sid %@", &v31, 0x2Au);
        }
      }

      [dCopy setSortID:{objc_msgSend(v6, "sortID")}];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [dCopy isTypingMessage])
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "messageID")}];
          guid2 = [dCopy guid];
          v31 = 138412546;
          v32 = v19;
          v33 = 2112;
          v34 = guid2;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "we have a typing indicator so setting sortID 0 message id %@ message guid %@", &v31, 0x16u);
        }
      }

      [dCopy setSortID:0];
    }

    else
    {
      [(IMItemsController *)self _setSortID:dCopy];
    }
  }
}

- (void)_persistSortIDFromReplacedItem:(id)item toItem:(id)toItem
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  toItemCopy = toItem;
  if (itemCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = toItemCopy;
      if ([v7 hasEditedParts])
      {
        sortID = [itemCopy sortID];
        if (sortID)
        {
          v9 = sortID;
          sortID2 = [v7 sortID];
          v11 = IMOSLoggingEnabled();
          if (sortID2)
          {
            if (v11)
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v15 = 134217984;
                v16 = sortID2;
                _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Not updating sortID of edited message item, the message already has a sort ID of %ld", &v15, 0xCu);
              }
            }
          }

          else
          {
            if (v11)
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = 134217984;
                v16 = v9;
                _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Updating sortID of received edited message to %ld, to match existing sortID in transcript", &v15, 0xCu);
              }
            }

            [v7 setSortID:v9];
          }
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1A84E13D4();
          }
        }
      }
    }
  }
}

- (void)_persistThreadOriginatorReplyCountsByPartFromReplacedItemIfNecessary:(id)necessary toItem:(id)item
{
  necessaryCopy = necessary;
  itemCopy = item;
  if (necessaryCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = itemCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = necessaryCopy;
        threadOriginator = [v7 threadOriginator];
        replyCountsByPart = [threadOriginator replyCountsByPart];

        threadOriginator2 = [v8 threadOriginator];

        replyCountsByPart2 = [threadOriginator2 replyCountsByPart];

        if (([v7 isSent] & 1) == 0 && (objc_msgSend(replyCountsByPart2, "isEqual:", replyCountsByPart) & 1) == 0)
        {
          threadOriginator3 = [v7 threadOriginator];
          [threadOriginator3 setReplyCountsByPart:replyCountsByPart2];
        }
      }
    }
  }
}

- (BOOL)_itemsAreRelayItemsFromMeWithServiceSwitch:(id)switch otherItem:(id)item
{
  switchCopy = switch;
  itemCopy = item;
  if ([switchCopy isFromMe] && objc_msgSend(itemCopy, "isFromMe"))
  {
    service = [switchCopy service];
    account2 = [IMServiceImpl serviceWithInternalName:service];
    if (![account2 supportsRelay])
    {
      LOBYTE(v15) = 0;
LABEL_11:

      goto LABEL_12;
    }

    service2 = [itemCopy service];
    internalName = [IMServiceImpl serviceWithInternalName:service2];
    if (![internalName supportsRelay])
    {
      LOBYTE(v15) = 0;
      goto LABEL_10;
    }

    account = [(IMChat *)self account];
    service3 = [account service];
    supportsRelay = [service3 supportsRelay];

    if (supportsRelay)
    {
      service = [switchCopy service];
      account2 = [(IMChat *)self account];
      service2 = [account2 service];
      internalName = [service2 internalName];
      v15 = [service isEqualToString:internalName] ^ 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  LOBYTE(v15) = 0;
LABEL_12:

  return v15;
}

- (BOOL)_handleIncomingItem:(id)item updateRecipient:(BOOL)recipient suppressNotification:(BOOL)notification updateReplyCounts:(BOOL)counts messageComingFromStorage:(BOOL)storage
{
  storageCopy = storage;
  countsCopy = counts;
  notificationCopy = notification;
  recipientCopy = recipient;
  v110 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (itemCopy)
  {
    v104 = recipientCopy;
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy = self;
        v108 = 2112;
        v109 = itemCopy;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Handle incoming message on chat (%@) message: %@", buf, 0x16u);
      }
    }

    if (![(IMChat *)self canHaveMultipleParticipants]|| ![(IMChat *)self _isDuplicate:itemCopy])
    {
      message = [itemCopy message];
      if (([message isSystemMessage] & 1) != 0 || (objc_msgSend(message, "isTypingMessage") && -[IMChat isGroupChat](self, "isGroupChat") || objc_msgSend(message, "isGroupTypingMessage")) && (objc_msgSend(MEMORY[0x1E69A8070], "sharedFeatureFlags"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isGroupTypingIndicatorsEnabled"), v16, !v17))
      {
        v14 = 0;
LABEL_77:

        goto LABEL_78;
      }

      if ([itemCopy type] == 4)
      {
        v18 = itemCopy;
        [(IMChat *)self _configureLocationShareItem:v18];
      }

      _items = [(IMItemsController *)self _items];
      v19 = [(IMItemsController *)self _indexOfItem:itemCopy];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v105 = 0;
      }

      else
      {
        v105 = [_items objectAtIndex:v19];
      }

      [(IMChat *)self _fixSendingItemDateAndSortID:itemCopy];
      [(IMChat *)self _persistSortIDFromReplacedItem:v105 toItem:itemCopy];
      [(IMChat *)self _persistThreadOriginatorReplyCountsByPartFromReplacedItemIfNecessary:v105 toItem:itemCopy];
      [(IMChat *)self _handleItem:itemCopy forChatStyle:[(IMChat *)self chatStyle] updateReplyCounts:countsCopy keepExistingIndex:0 messageComingFromStorage:storageCopy];
      if ([itemCopy associatedMessageType] == 2)
      {
        _items2 = [(IMItemsController *)self _items];
        if (v19 - 1 >= [_items2 count])
        {
          v22 = 0;
        }

        else
        {
          _items3 = [(IMItemsController *)self _items];
          v22 = [_items3 objectAtIndex:v19 - 1];
        }

        if ([v22 associatedMessageType] == 3)
        {
          pluginSessionGUID = [v22 pluginSessionGUID];
          pluginSessionGUID2 = [itemCopy pluginSessionGUID];
          v25 = [pluginSessionGUID isEqualToString:pluginSessionGUID2];

          if (v25)
          {
            guid = [v22 guid];
            v27 = [(IMChat *)self messageForGUID:guid];
            _imMessageItem = [v27 _imMessageItem];

            [(IMChat *)self _handleIncomingItem:_imMessageItem updateRecipient:v104 suppressNotification:notificationCopy updateReplyCounts:countsCopy];
          }
        }
      }

      message2 = [v105 message];
      if (message2)
      {
        [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{message, @"__kIMChatValueKey", message2, @"__kIMChatOldValueKey", 0}];
      }

      else
      {
        [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{message, @"__kIMChatValueKey", 0}];
      }
      v30 = ;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMChatMessageDidChangeNotification" object:self userInfo:v30];

      error = [message2 error];
      if (error)
      {
      }

      else
      {
        error2 = [message error];
        v34 = error2 == 0;

        if (!v34)
        {
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{message, @"__kIMChatValueKey", 0}];

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 postNotificationName:@"__kIMChatMessageSendFailedNotification" object:self userInfo:v35];

          [(IMChat *)self refreshServiceForSending];
          v30 = v35;
        }
      }

      if ([message2 isRead])
      {
        v37 = [message isRead] ^ 1;
      }

      else
      {
        v37 = 0;
      }

      isFinished = [message2 isFinished];
      if (v19)
      {
        v39 = isFinished;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        isFinished2 = 0;
        if (!message)
        {
          goto LABEL_46;
        }
      }

      else
      {
        isFinished2 = [message isFinished];
        if (!message)
        {
          goto LABEL_46;
        }
      }

      if (([message isFromMe] & 1) == 0)
      {
        isRead = [message isRead];
        goto LABEL_48;
      }

LABEL_46:
      isRead = 1;
LABEL_48:
      isCancelTypingMessage = [message isCancelTypingMessage];
      isFiltered = [(IMChat *)self isFiltered];
      if (((isRead | isCancelTypingMessage) & 1) != 0 || ((v37 | isFinished2) & 1) == 0 || isFiltered == 2 || notificationCopy)
      {
        v101 = v30;
      }

      else
      {
        v101 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{message, @"__kIMChatValueKey", 0}];

        defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter3 postNotificationName:@"__kIMChatMessageReceivedNotification" object:self userInfo:v101];
      }

      if ([itemCopy type] == 4)
      {
        sender = [itemCopy sender];
        [(IMChat *)self _updateLocationShareItemsForSender:sender];
      }

      momentSharePresentationCache = [(IMChat *)self momentSharePresentationCache];
      [momentSharePresentationCache registerMomentShareItemForMessage:message];

      if (([message2 isRead] & 1) != 0 || !objc_msgSend(message, "isRead"))
      {
        isFromMe = 0;
      }

      else
      {
        isFromMe = [message isFromMe];
      }

      if ([message2 wasDataDetected])
      {
        wasDataDetected = 0;
      }

      else
      {
        wasDataDetected = [message wasDataDetected];
      }

      if (([message2 isDelivered] & 1) != 0 || !objc_msgSend(message, "isDelivered"))
      {
        isFromMe2 = 0;
      }

      else
      {
        isFromMe2 = [message isFromMe];
      }

      if (([message2 isPlayed] & 1) != 0 || !objc_msgSend(message, "isPlayed"))
      {
        isFromMe3 = 0;
      }

      else
      {
        isFromMe3 = [message isFromMe];
      }

      if ((isCancelTypingMessage & 1) != 0 || [itemCopy type])
      {
        goto LABEL_73;
      }

      if ([message isFromMe])
      {
        self->_didSendAFinishedMessage = 1;
      }

      service = [(IMAccount *)self->_account service];
      v54 = +[IMServiceImpl iMessageLiteService];
      if (service == v54)
      {
        v94 = 0;
      }

      else
      {
        service2 = [(IMAccount *)self->_account service];
        v56 = +[IMServiceImpl satelliteSMSService];
        v94 = service2 != v56;
      }

      sender2 = [message sender];
      account = [sender2 account];
      service3 = [account service];
      v60 = +[IMServiceImpl iMessageLiteService];
      if (service3 == v60)
      {
        v92 = 1;
      }

      else
      {
        sender3 = [message sender];
        account2 = [sender3 account];
        service4 = [account2 service];
        v64 = +[IMServiceImpl satelliteSMSService];
        v92 = service4 == v64;
      }

      v65 = +[IMChorosMonitor sharedInstance];
      isMessagingActiveOverSatellite = [v65 isMessagingActiveOverSatellite];

      if (v94 || v92)
      {
        v95 = 0;
      }

      else
      {
        v95 = ([message isFromMe] ^ 1) & isMessagingActiveOverSatellite;
      }

      service5 = [(IMAccount *)self->_account service];
      v68 = +[IMServiceImpl iMessageService];
      if (service5 == v68)
      {
        sender4 = [message sender];
        account3 = [sender4 account];
        service6 = [account3 service];
        v72 = +[IMServiceImpl iMessageService];
        v93 = service6 != v72;
      }

      else
      {
        v93 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy isTypingMessage])
      {
        service7 = [(IMAccount *)self->_account service];
        v74 = +[IMServiceImpl smsService];
        v91 = service7 == v74;
      }

      else
      {
        v91 = 0;
      }

      service8 = [(IMAccount *)self->_account service];
      v76 = +[IMServiceImpl smsService];
      if (service8 == v76)
      {
        sender5 = [message sender];
        account4 = [sender5 account];
        service9 = [account4 service];
        v78 = +[IMServiceImpl iMessageService];
        if (service9 == v78)
        {
          guid2 = [message guid];
          lastMessage = [(IMChat *)self lastMessage];
          guid3 = [lastMessage guid];
          v96 = [guid2 isEqualToString:guid3];
        }

        else
        {
          v96 = 1;
        }
      }

      else
      {
        v96 = 1;
      }

      if ([(IMChat *)self isInterworking])
      {
        service10 = [itemCopy service];
        interworkingService = [(IMChat *)self interworkingService];
        v84 = [service10 isEqualToString:interworkingService];

        v85 = v84 ^ 1;
      }

      else
      {
        v85 = 1;
      }

      if ((([itemCopy isFromMe] | wasDataDetected) & 1) == 0 && !-[IMChat canHaveMultipleParticipants](self, "canHaveMultipleParticipants"))
      {
        sender6 = [message sender];
        recipient = [(IMChat *)self recipient];
        if (([sender6 isEqual:recipient] | isFromMe2 | isFromMe | isFromMe3 | v93 | v95 | v91))
        {
        }

        else
        {

          if ((v96 & v85 & v104) != 0)
          {
            sender7 = [message sender];
            [(IMChat *)self setRecipient:sender7];

LABEL_73:
            LOBYTE(v46) = 1;
LABEL_74:
            service11 = [itemCopy service];
            v48 = +[IMServiceImpl iMessageService];
            internalName = [v48 internalName];
            v50 = [service11 isEqualToIgnoringCase:internalName];

            if (v50)
            {
              chatRegistry = [(IMChat *)self chatRegistry];
              [chatRegistry _setChatHasCommunicatedOveriMessage:self];
            }

            [(IMChat *)self _invalidateDowngradeState];
            [(IMChat *)self updateWatermarks];
            [(IMChat *)self _setStartSendProgressImmediatelyIfNecessary];

            v14 = (isCancelTypingMessage ^ 1) & v46;
            goto LABEL_77;
          }
        }
      }

      v46 = [(IMChat *)self _itemsAreRelayItemsFromMeWithServiceSwitch:itemCopy otherItem:v105]& v85;
      goto LABEL_74;
    }
  }

  v14 = 0;
LABEL_78:

  return v14;
}

- (void)_setStartSendProgressImmediatelyIfNecessary
{
  if ([(IMItemsController *)self _shouldPinUnsentMessagesToBottom])
  {
    _items = [(IMItemsController *)self _items];
    [(IMItemsController *)self assignSortIDsToItems:_items shouldRecalculateSortIDForAllMessages:0];

    if ([(IMSendProgress *)self->_sendProgress startSendProgressImmediately])
    {
      _items2 = [(IMItemsController *)self _items];
      lastObject = [_items2 lastObject];
      unsentIsFromMeItem = [lastObject unsentIsFromMeItem];

      if ((unsentIsFromMeItem & 1) == 0)
      {
        [(IMSendProgress *)self->_sendProgress setStartSendProgressImmediately:0];
      }
    }
  }

  if ([(IMChat *)self isStewieChat])
  {
    [(IMSendProgress *)self->_sendProgress setStartSendProgressImmediately:1];
  }

  if ([(IMChat *)self _isSatelliteServiceActive])
  {
    sendProgress = self->_sendProgress;

    [(IMSendProgress *)sendProgress setStartSendProgressImmediately:1];
  }
}

- (BOOL)_isSatelliteServiceActive
{
  v3 = +[IMChorosMonitor sharedInstance];
  isSatelliteConnectionActive = [v3 isSatelliteConnectionActive];

  if (!isSatelliteConnectionActive)
  {
    return 0;
  }

  account = [(IMChat *)self account];
  service = [account service];
  v7 = +[IMServiceImpl iMessageLiteService];
  if (service == v7)
  {
    v11 = 1;
  }

  else
  {
    account2 = [(IMChat *)self account];
    service2 = [account2 service];
    v10 = +[IMServiceImpl satelliteSMSService];
    v11 = service2 == v10;
  }

  return v11;
}

- (void)_setJoinState:(int64_t)state quietly:(BOOL)quietly
{
  if (self->_joinState == state)
  {

    [(IMChat *)self _clearPendingMessages];
  }

  else
  {
    self->_joinState = state;
    [(IMChat *)self _clearPendingMessages];
    if (!quietly)
    {

      [(IMChat *)self _postNotification:@"__kIMChatJoinStateDidChangeNotification" userInfo:0];
    }
  }
}

- (void)_participant:(id)_participant statusChanged:(int)changed
{
  v4 = *&changed;
  v10 = *MEMORY[0x1E69E9840];
  _participantCopy = _participant;
  v6 = MEMORY[0x1E695DEC8];
  _participantCopy2 = _participant;
  v8 = [v6 arrayWithObjects:&_participantCopy count:1];

  [(IMChat *)self _participants:v8 statusChanged:v4, _participantCopy, v10];
}

- (void)_participant:(id)_participant statusChanged:(int)changed postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v6 = *&changed;
  v12 = *MEMORY[0x1E69E9840];
  _participantCopy = _participant;
  v8 = MEMORY[0x1E695DEC8];
  _participantCopy2 = _participant;
  v10 = [v8 arrayWithObjects:&_participantCopy count:1];

  [(IMChat *)self _participants:v10 statusChanged:v6 postNotification:notificationCopy, _participantCopy, v12];
}

- (void)_participants:(id)_participants statusChanged:(int)changed postNotification:(BOOL)notification
{
  v48 = *MEMORY[0x1E69E9840];
  _participantsCopy = _participants;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v44 = 2112;
      v45 = _participantsCopy;
      v46 = 1024;
      changedCopy = changed;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  handles: %@  status: %d", buf, 0x1Cu);
    }
  }

  v34 = sub_1A8251EAC(changed);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = _participantsCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v8)
  {

    v29 = 0;
    v23 = 0;
    v9 = 0;
    goto LABEL_52;
  }

  v28 = 0;
  v29 = 0;
  v9 = 0;
  v30 = 0;
  v10 = *v36;
  v31 = 0;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v35 + 1) + 8 * i);
      if ([(IMChat *)self stateForParticipant:v12]!= v34)
      {
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v9 addObject:v12];
        v31 = 1;
      }

      if (changed == 2)
      {
        participantStates = self->_participantStates;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
        guid = [v12 guid];
        [(NSMutableDictionary *)participantStates setObject:v14 forKey:guid];

        if ([(IMChat *)self canHaveMultipleParticipants]&& ![(NSArray *)self->_participants containsObject:v12])
        {
          v16 = [(NSArray *)self->_participants mutableCopy];
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v16 addObject:v12];
          objc_storeStrong(&self->_participants, v16);
          v17 = v29;
          if (!v29)
          {
            v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v29 = v17;
          }

LABEL_27:
          [v17 addObject:v12];

          v30 = 1;
          continue;
        }
      }

      else if ((((changed - 3) < 3) & [(IMChat *)self canHaveMultipleParticipants]) != 0 && [(NSArray *)self->_participants containsObject:v12])
      {
        v18 = self->_participantStates;
        guid2 = [v12 guid];
        [(NSMutableDictionary *)v18 removeObjectForKey:guid2];

        v16 = [(NSArray *)self->_participants mutableCopy];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v16 removeObjectIdenticalTo:v12];
        objc_storeStrong(&self->_participants, v16);
        v17 = v28;
        if (!v28)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = v17;
        }

        goto LABEL_27;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v8);

  if (v30)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEBUG, "chat: %@ has participants set changed. Refresh service for sending...", buf, 0xCu);
      }
    }

    [(IMChat *)self refreshServiceForSending];
  }

  if (!notification)
  {
    goto LABEL_47;
  }

  if (v31)
  {
    v39 = @"__kIMChatValueKey";
    v21 = [v9 copy];
    v40 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [(IMChat *)self _postNotification:@"__kIMChatParticipantStateDidChangeNotification" userInfo:v22];

    if ((v30 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_42:
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v29 count])
    {
      v25 = [v29 copy];
      [v24 setObject:v25 forKey:@"__kIMChatParticipantsDidChangeAddedParticipantsKey"];
    }

    if ([v28 count])
    {
      v26 = [v28 copy];
      [v24 setObject:v26 forKey:@"__kIMChatParticipantsDidChangeRemovedParticipantsKey"];
    }

    [(IMChat *)self _postNotification:@"__kIMChatParticipantsDidChangeNotification" userInfo:v24];

LABEL_47:
    if (v31)
    {
LABEL_48:
      if (v34 == 32)
      {
        [(IMChat *)self invalidateSpamIndicatorCachedValues];
      }

      else
      {
        [(IMChat *)self invalidateSpamIndicatorCachedValuesIfNeeded];
      }
    }
  }

  else if (v30)
  {
    goto LABEL_42;
  }

  v23 = v28;
LABEL_52:
}

- (void)_showErrorMessage:(id)message
{
  v4 = MEMORY[0x1E695DF20];
  messageCopy = message;
  v6 = [[v4 alloc] initWithObjectsAndKeys:{messageCopy, @"__kIMChatValueKey", 0}];

  [(IMChat *)self _postNotification:@"__kIMChatErrorDidOccurNotification" userInfo:v6];
}

- (id)_performQueryWithKey:(id)key loadImmediately:(BOOL)immediately block:(id)block completion:(id)completion
{
  immediatelyCopy = immediately;
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  blockCopy = block;
  completionCopy = completion;
  [(IMChat *)self _validateChatRegistrationWithRegistry];
  v13 = IMOSLoggingEnabled();
  if (blockCopy)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = keyCopy;
        *&buf[12] = 2112;
        *&buf[14] = self;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Initiate query %@ for chat: %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = sub_1A8259BC0;
    v27 = sub_1A825AF0C;
    v28 = 0;
    v15 = +[IMDaemonController sharedController];
    queryController = [v15 queryController];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1A8321C9C;
    v22[3] = &unk_1E7812778;
    v24 = buf;
    v23 = blockCopy;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A8321D08;
    v20[3] = &unk_1E78127A0;
    v21 = completionCopy;
    [queryController performQueryWithKey:keyCopy expectsSynchronousResult:immediatelyCopy block:v22 completionHandler:v20];

    v17 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v13)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = keyCopy;
        *&buf[12] = 2112;
        *&buf[14] = 0;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Attempted to initiate query with nil query block for key: %@ chat: %@", buf, 0x16u);
      }
    }

    v17 = 0;
  }

  return v17;
}

- (void)endListeningToAttributionChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"__kIMBalloonPluginAttributionChangedNotification" object:0];
}

- (void)beginListeningToAttributionChanges
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  chatItems = [(IMChat *)self chatItems];
  v4 = [chatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E69A6A20];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(chatItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          bundleID = [v10 bundleID];
          v12 = [bundleID containsString:v7];

          if (!v12)
          {
            [(IMChat *)self _handleBalloonPluginAttributionChanged];

            goto LABEL_13;
          }
        }
      }

      v5 = [chatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleBalloonPluginAttributionChanged name:@"__kIMBalloonPluginAttributionChangedNotification" object:0];
}

- (void)_engroupParticipantsUpdated
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Posting IMChatEngroupFinishedUpdatingNotification from IMChat", v4, 2u);
    }
  }

  [(IMChat *)self _postNotification:@"__kIMChatEngroupFinishedUpdatingNotification" userInfo:0];
}

- (void)_validateChatRegistrationWithRegistry
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self isUnregistered]&& IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "***WARNING*** Attempting to use a chat that has been unregistered: %@", &v4, 0xCu);
    }
  }
}

- (id)participantsWithState:(unint64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_participants, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_participants;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(IMChat *)self stateForParticipant:v11, v16];
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        if ((v13 & state) != 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (unint64_t)stateForParticipant:(id)participant
{
  participantCopy = participant;
  if (self->_style == 45 && (-[IMChat participants](self, "participants"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:participantCopy], v5, (v6 & 1) != 0))
  {
    integerValue = 16;
  }

  else
  {
    participantStates = self->_participantStates;
    guid = [participantCopy guid];
    v10 = [(NSMutableDictionary *)participantStates objectForKey:guid];
    integerValue = [v10 integerValue];
  }

  return integerValue;
}

- (void)_clearCachedIdentifier
{
  identifier = self->_identifier;
  self->_identifier = 0;

  [(IMChat *)self setGroupChatIdentifierUppercase:0];
}

- (unint64_t)overallChatStatus
{
  if ([(IMChat *)self chatStyle]!= 45)
  {
    return 1;
  }

  recipient = [(IMChat *)self recipient];
  status = [recipient status];

  return status;
}

- (void)setRoomName:(id)name
{
  nameCopy = name;
  if (self->_roomName != nameCopy && self->_style != 45)
  {
    v6 = nameCopy;
    [(IMChat *)self _clearCachedIdentifier];
    objc_storeStrong(&self->_roomName, name);
    nameCopy = v6;
  }
}

- (void)__setChatIdentifierForGroups:(id)groups
{
  objc_storeStrong(&self->__chatIdentifierForGroups, groups);

  [(IMChat *)self _clearCachedIdentifier];
}

- (void)_setDisplayName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = IMSharedHelperTruncatedGroupDisplayName();
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    if (self->_style != 45 || [(IMChat *)self isBusinessChat]|| [(IMChat *)self isStewieChat]|| (+[IMService rcsService], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(IMChat *)self hasMessageFromService:v5], v5, v6))
    {
      displayName = self->_displayName;
      if (!displayName)
      {
        trimmedString = [v4 trimmedString];
        v9 = [trimmedString length];

        if (!v9)
        {
          goto LABEL_17;
        }

        displayName = self->_displayName;
      }

      if (([v4 isEqualToString:displayName] & 1) == 0)
      {
        v10 = MEMORY[0x1E69A7F28];
        businessHandle = [(IMChat *)self businessHandle];
        v12 = [businessHandle ID];
        v13 = [v10 placeholderNameForBrandURI:v12];
        v14 = [v4 isEqualToString:v13];

        if (!v14 || ![(IMChat *)self isBusinessChat])
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = self->_displayName;
              v18 = 138412546;
              v19 = v16;
              v20 = 2112;
              v21 = v4;
              _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Changing display name from %@ to %@", &v18, 0x16u);
            }
          }

          [(IMChat *)self _clearCachedIdentifier];
          objc_storeStrong(&self->_displayName, v4);
          chatRegistry = [(IMChat *)self chatRegistry];
          [chatRegistry _chat:self updateDisplayName:v4];

          [(IMChat *)self _postNotification:@"__kIMChatDisplayNameChangedNotification" userInfo:0];
        }
      }
    }
  }

LABEL_17:
}

- (void)_updateDisplayName:(id)name sender:(id)sender
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  senderCopy = sender;
  if (IMSharedHelperAreObjectsLogicallySame())
  {
    goto LABEL_30;
  }

  if (self->_style == 45 && ![(IMChat *)self isStewieChat])
  {
    v9 = +[IMService rcsService];
    v10 = [(IMChat *)self hasMessageFromService:v9];

    if (!v10)
    {
      goto LABEL_30;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      displayName = self->_displayName;
      *buf = 138412546;
      v22 = displayName;
      v23 = 2112;
      v24 = nameCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Updating display name from %@ to %@", buf, 0x16u);
    }
  }

  [(IMChat *)self _clearCachedIdentifier];
  v13 = self->_displayName;
  objc_storeStrong(&self->_displayName, name);
  if (!v13)
  {
    v14 = 0;
    if (nameCopy)
    {
      goto LABEL_11;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v14 = [(NSString *)v13 length]== 0;
  if (!nameCopy)
  {
    goto LABEL_13;
  }

LABEL_11:
  v15 = [nameCopy length] == 0;
LABEL_14:
  if (nameCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v13)
  {
    v15 = 0;
  }

  if (v16 || v15)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Don't send IMChatDisplayNameChangedNotification since the name hasn't meaningfully changed.", buf, 2u);
      }
    }
  }

  else
  {
    if (senderCopy)
    {
      v19 = @"sender";
      v20 = senderCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v17 = 0;
    }

    [(IMChat *)self _postNotification:@"__kIMChatDisplayNameChangedNotification" userInfo:v17];
  }

LABEL_30:
}

- (void)_updateEngramID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    __im_engramDataRepresentation = [dCopy __im_engramDataRepresentation];
    if ([(NSData *)self->_engramID isEqualToData:__im_engramDataRepresentation])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "EngramIDs are equal, not updating", &v8, 2u);
        }

LABEL_11:
      }
    }

    else
    {
      objc_storeStrong(&self->_engramID, __im_engramDataRepresentation);
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 138412290;
          v9 = dCopy;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Updating engramID string version: %@", &v8, 0xCu);
        }

        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  engramID = self->_engramID;
  self->_engramID = 0;

LABEL_13:
}

- (void)setDisplayName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      displayName = self->_displayName;
      v8 = 138412802;
      selfCopy = self;
      v10 = 2112;
      v11 = displayName;
      v12 = 2112;
      v13 = nameCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "[%@]Request to change display name from %@ to %@", &v8, 0x20u);
    }
  }

  if ([(IMChat *)self joinState])
  {
    [(IMChat *)self _setDisplayName:nameCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Not changing display name because we're no longer in the chat", &v8, 2u);
    }
  }
}

- (id)_attributedDisplayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor withBlockingAttachment:(id)attachment
{
  v47 = *&descriptor.var0;
  v80[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v49 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"isContact" ascending:0];
  v80[0] = v49;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
  participants = [(IMChat *)self participants];
  v50 = [participants sortedArrayUsingDescriptors:v51];

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = sub_1A83232EC;
  v63[3] = &unk_1E78127C8;
  v63[4] = self;
  v48 = attachmentCopy;
  v64 = v48;
  v52 = [v50 __imArrayByApplyingBlock:v63];
  v58 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [v52 count];
  if (v6)
  {
    v53 = v6 - 1;
    if (v6 == 1)
    {
      obja = [v52 firstObject];
      v7 = [obja mutableCopy];

      v58 = v7;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v52;
      v8 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
      if (v8)
      {
        v9 = 0;
        v10 = *v60;
        do
        {
          v11 = 0;
          v12 = v53 - v9;
          v55 = v9;
          v13 = -v9;
          do
          {
            if (*v60 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v59 + 1) + 8 * v11);
            if (v13 == v11)
            {
              v15 = objc_alloc(MEMORY[0x1E696AAB0]);
              v16 = IMSharedUtilitiesFrameworkBundle();
              v17 = [v16 localizedStringForKey:@"PARTICIPANT_ADDRESS_FIRST_ITEM" value:&stru_1F1B76F98 table:@"IMSharedUtilities"];
              v18 = [v15 initWithString:v17];
            }

            else
            {
              v19 = objc_alloc(MEMORY[0x1E696AAB0]);
              v20 = IMSharedUtilitiesFrameworkBundle();
              v16 = v20;
              if (v12 == v11)
              {
                [v20 localizedStringForKey:@"PARTICIPANT_ADDRESS_FINAL_ITEM" value:&stru_1F1B76F98 table:@"IMSharedUtilities"];
              }

              else
              {
                [v20 localizedStringForKey:@"PARTICIPANT_ADDRESS_NON_FINAL_ITEM" value:&stru_1F1B76F98 table:@"IMSharedUtilities"];
              }
              v17 = ;
              v18 = [v19 initWithString:v17];
            }

            v21 = v18;

            v22 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v21, v14];
            [v58 appendAttributedString:v22];

            ++v11;
          }

          while (v8 != v11);
          v23 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
          v9 = v55 + v8;
          v8 = v23;
        }

        while (v23);
      }
    }
  }

  v24 = [(IMChat *)self valueForChatProperty:@"wasAutoDetectedForSpam"];
  bOOLValue = [v24 BOOLValue];

  v26 = [(IMChat *)self valueForChatProperty:@"wasDetectedAsSMSSpam"];
  if ([v26 intValue])
  {
    v27 = 1;
  }

  else
  {
    v28 = [(IMChat *)self valueForChatProperty:@"SMSCategory"];
    v27 = [v28 intValue] == 1;
  }

  isFiltered = [(IMChat *)self isFiltered];
  if (![(IMChat *)self isRecovered])
  {
    v30 = isFiltered ? bOOLValue : 0;
    v31 = (v47 & 0x100) == 0 && v27;
    if ((v30 & 1) != 0 || v31)
    {
      v32 = objc_alloc(MEMORY[0x1E696AAB0]);
      v33 = IMSharedUtilitiesFrameworkBundle();
      v34 = [v33 localizedStringForKey:@"MAYBE_JUNK" value:&stru_1F1B76F98 table:@"IMSharedUtilities"];
      v35 = [v32 initWithString:v34];

      v36 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v35, v58];
      [v58 appendAttributedString:v36];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      string = [v58 string];
      isRecovered = [(IMChat *)self isRecovered];
      v41 = @"NO";
      *buf = 138413826;
      v66 = guid;
      if (v27)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v67 = 2112;
      v68 = string;
      if ((v47 & 0x100) != 0)
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v69 = 2112;
      if (bOOLValue)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      if (isFiltered)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v70 = v45;
      v71 = 2112;
      if (isRecovered)
      {
        v41 = @"YES";
      }

      v72 = v44;
      v73 = 2112;
      v74 = v43;
      v75 = 2112;
      v76 = v42;
      v77 = 2112;
      v78 = v41;
      _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Determining conversation name for chat guid: %@ name: %@  isFiltered %@ wasAutoDetectedAsSMSSpam %@ isSpamFilteringEnabled: %@ wasDetectedAsSMSSpam %@ isRecovered %@", buf, 0x48u);
    }
  }

  return v58;
}

- (id)displayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor
{
  var3 = descriptor.var3;
  v4 = *&descriptor.var0;
  v52[1] = *MEMORY[0x1E69E9840];
  v32 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"isContact" ascending:0];
  v52[0] = v32;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  participants = [(IMChat *)self participants];
  v33 = [participants sortedArrayUsingDescriptors:v34];

  if (v4)
  {
    v7 = [v33 __imArrayByApplyingBlock:&unk_1F1B6E980];
  }

  else
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1A83237CC;
    v35[3] = &unk_1E78127F0;
    v35[4] = self;
    v7 = [v33 __imArrayByApplyingBlock:v35];
  }

  v8 = v7;
  if ((v4 & 0x10000) != 0)
  {
    [(IMChat *)self _participantListStringForNames:v7 visibleNameCount:var3];
  }

  else
  {
    [MEMORY[0x1E69A7F80] getDisplayNameFromParticipantNames:v7];
  }
  v9 = ;
  v10 = [(IMChat *)self valueForChatProperty:@"wasAutoDetectedForSpam"];
  bOOLValue = [v10 BOOLValue];

  v12 = [(IMChat *)self valueForChatProperty:@"wasDetectedAsSMSSpam"];
  if ([v12 intValue])
  {
    v13 = 1;
  }

  else
  {
    v14 = [(IMChat *)self valueForChatProperty:@"SMSCategory"];
    v13 = [v14 intValue] == 1;
  }

  isFiltered = [(IMChat *)self isFiltered];
  if (![(IMChat *)self isRecovered])
  {
    v16 = isFiltered ? bOOLValue : 0;
    v17 = (v4 & 0x100) == 0 && v13;
    if ((v16 & 1) != 0 || v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = IMSharedUtilitiesFrameworkBundle();
      v20 = [v19 localizedStringForKey:@"MAYBE_JUNK" value:&stru_1F1B76F98 table:@"IMSharedUtilities"];
      v21 = [v18 localizedStringWithFormat:v20, v9];

      v9 = v21;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      isRecovered = [(IMChat *)self isRecovered];
      v25 = @"NO";
      *buf = 138414082;
      v37 = guid;
      if (v13)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      if ((v4 & 0x100) != 0)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      if (bOOLValue)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      if (isFiltered)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      if (v4)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v41 = v30;
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v42 = 2112;
      v43 = v29;
      if (isRecovered)
      {
        v25 = @"YES";
      }

      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v26;
      v50 = 2112;
      v51 = v25;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Determining conversation name for chat guid: %@ name: %@ wantsRawAddress: %@ isFiltered %@ wasAutoDetectedAsSMSSpam %@ isSpamFilteringEnabled: %@ wasDetectedAsSMSSpam %@ isRecovered %@", buf, 0x52u);
    }
  }

  return v9;
}

- (id)_participantListStringForNames:(id)names visibleNameCount:(int64_t)count
{
  namesCopy = names;
  if ([namesCopy count] >= count)
  {
    v6 = count & ~(count >> 63);
  }

  else
  {
    v6 = [namesCopy count];
  }

  v7 = [namesCopy count] - v6;
  if (v7 == 1)
  {
    v6 = [namesCopy count];
    v7 = 0;
  }

  v8 = [namesCopy subarrayWithRange:{0, v6}];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v8];
  if (v7 >= 1)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = sub_1A8361964();
    v12 = [v11 localizedStringForKey:@"N_OTHERS" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
    v13 = [v10 localizedStringWithFormat:v12, v7];

    [v9 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v9];

  return v14;
}

- (BOOL)_updateLastAddressedHandleID:(id)d postGeneralNotification:(BOOL)notification
{
  notificationCopy = notification;
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMSharedHelperAreObjectsLogicallySame() & 1) != 0 || ([dCopy isEqualToIgnoringCase:*MEMORY[0x1E69A64C8]])
  {
    v8 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        lastAddressedHandleID = self->_lastAddressedHandleID;
        v12 = 138412802;
        selfCopy = self;
        v14 = 2112;
        v15 = lastAddressedHandleID;
        v16 = 2112;
        v17 = dCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "[%@]Request from imagent to set client last addressed handle from %@ to %@", &v12, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastAddressedHandleID, d);
    self->_senderBlackholeWarningStatus = 0;
    [(IMChat *)self _postNotification:@"__kIMChatLastAddressedHandleChangedNotification" userInfo:0];
    if (notificationCopy)
    {
      [(IMChat *)self _postNotification:@"__kIMChatLastAddressedInfoChangedNotification" userInfo:0];
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)_updateLastAddressedHandleID:(id)d lastAddressedSIMID:(id)iD
{
  iDCopy = iD;
  LODWORD(d) = [(IMChat *)self _updateLastAddressedHandleID:d postGeneralNotification:0];
  v7 = [(IMChat *)self _updateLastAddressedSIMID:iDCopy postGeneralNotification:0];

  v8 = d | v7;
  if (v8 == 1)
  {
    [(IMChat *)self _postNotification:@"__kIMChatLastAddressedInfoChangedNotification" userInfo:0];
  }

  return v8;
}

- (void)setLastAddressedHandleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      lastAddressedHandleID = self->_lastAddressedHandleID;
      v13 = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = lastAddressedHandleID;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "[%@]Request from client to update client/imagent last addressed handle from %@ to %@", &v13, 0x20u);
    }
  }

  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0 && ([dCopy isEqualToIgnoringCase:*MEMORY[0x1E69A64C8]] & 1) == 0)
  {
    if ((IMSharedHelperDeviceHasMultipleSubscriptions() & 1) != 0 || self->_lastAddressedHandleID || ([dCopy trimmedString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length") == 0, v8, !v9))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = self->_lastAddressedHandleID;
          v13 = 138412546;
          selfCopy = v11;
          v15 = 2112;
          v16 = dCopy;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Changing client last addressed handle from %@ to %@", &v13, 0x16u);
        }
      }

      objc_storeStrong(&self->_lastAddressedHandleID, d);
      self->_senderBlackholeWarningStatus = 0;
      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat:self updateLastAddressedHandle:dCopy];
    }
  }
}

- (BOOL)_updateLastAddressedSIMID:(id)d postGeneralNotification:(BOOL)notification
{
  notificationCopy = notification;
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length] && (IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        lastAddressedSIMID = self->_lastAddressedSIMID;
        v12 = 138412802;
        selfCopy = self;
        v14 = 2112;
        v15 = lastAddressedSIMID;
        v16 = 2112;
        v17 = dCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "[%@]Request from imagent to set client last addressed sim ID from %@ to %@", &v12, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastAddressedSIMID, d);
    if (notificationCopy)
    {
      [(IMChat *)self _postNotification:@"__kIMChatLastAddressedInfoChangedNotification" userInfo:0];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLastAddressedSIMID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      lastAddressedSIMID = self->_lastAddressedSIMID;
      v13 = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = lastAddressedSIMID;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "[%@]Request from client to update client/imagent last addressed sim ID from %@ to %@", &v13, 0x20u);
    }
  }

  if ([dCopy length])
  {
    if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
    {
      if (self->_lastAddressedSIMID || ([dCopy trimmedString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length") == 0, v8, !v9))
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = self->_lastAddressedSIMID;
            v13 = 138412546;
            selfCopy = v11;
            v15 = 2112;
            v16 = dCopy;
            _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Changing client last addressed sim ID from %@ to %@", &v13, 0x16u);
          }
        }

        objc_storeStrong(&self->_lastAddressedSIMID, d);
        [(IMChat *)self fetchBrandInfoIfNecessary];
        chatRegistry = [(IMChat *)self chatRegistry];
        [chatRegistry _chat:self updateLastAddressedSIMID:dCopy];
      }
    }
  }
}

- (NSString)deviceIndependentID
{
  if ([(IMChat *)self isGroupChat])
  {
    [(IMChat *)self groupID];
  }

  else
  {
    [(IMChat *)self persistentID];
  }
  v3 = ;

  return v3;
}

- (NSString)pinningIdentifier
{
  if ([(IMChat *)self isGroupChat]&& [(IMChat *)self isSMS])
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    participants = [(IMChat *)self participants];
    deviceIndependentID = [chatRegistry _sortedParticipantIDHashForParticipants:participants usesPersonCentricID:0];
  }

  else
  {
    deviceIndependentID = [(IMChat *)self deviceIndependentID];
  }

  return deviceIndependentID;
}

- (NSString)identityHash
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  participants = [(IMChat *)self participants];
  v5 = [participants countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(participants);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) ID];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [participants countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v3 sortUsingSelector:sel_compare_];
  displayName = [(IMChat *)self displayName];
  if (displayName)
  {
    v11 = displayName;
    displayName2 = [(IMChat *)self displayName];
    v13 = [displayName2 isEqualToString:&stru_1F1B76F98];

    if ((v13 & 1) == 0)
    {
      displayName3 = [(IMChat *)self displayName];
      [v3 addObject:displayName3];
    }
  }

  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v15 dataUsingEncoding:4];
  sHA1HexString = [v16 SHA1HexString];

  return sHA1HexString;
}

- (NSString)roomNameWithoutSuffix
{
  roomNameWithoutSuffix = self->_roomNameWithoutSuffix;
  if (roomNameWithoutSuffix)
  {
    goto LABEL_5;
  }

  v4 = [(NSString *)self->_roomName rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v4, v7 = v4 + v5, v4 + v5 == [(NSString *)self->_roomName length]))
  {
    roomNameWithoutSuffix = self->_roomName;
LABEL_5:
    v8 = roomNameWithoutSuffix;
    goto LABEL_6;
  }

  v10 = [(NSString *)self->_roomName substringFromIndex:v7];
  if ([v10 length])
  {
    account = [(IMChat *)self account];
    server = [account server];

    if ([server length] && (v13 = objc_msgSend(v10, "rangeOfString:", server), v13 != 0x7FFFFFFFFFFFFFFFLL) && (v15 = v13, v13 + v14 == objc_msgSend(v10, "length")))
    {
      v16 = [(NSString *)self->_roomName substringToIndex:v6];
      v17 = [v10 substringToIndex:v15];
      if ([v17 hasSuffix:@"."])
      {
        v18 = [v17 substringToIndex:{objc_msgSend(v17, "length") - 1}];

        v17 = v18;
      }

      v19 = [v17 componentsSeparatedByString:@"."];
      v20 = [v19 count];

      if (v20 >= 2)
      {
        v21 = [v16 stringByAppendingFormat:@"@%@", v17];

        v16 = v21;
      }

      v22 = self->_roomNameWithoutSuffix;
      self->_roomNameWithoutSuffix = v16;
      v23 = v16;

      v8 = self->_roomNameWithoutSuffix;
    }

    else
    {
      v8 = self->_roomName;
    }
  }

  else
  {
    v8 = self->_roomName;
  }

LABEL_6:

  return v8;
}

- (void)acceptInvitation
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEBUG, "chat: %@", &v5, 0xCu);
    }
  }

  if ([(IMChat *)self joinState]!= 3)
  {
    [(IMChat *)self _setJoinState:2];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self joinWithProperties:0];

    self->_wasInvitationHandled = 1;
  }
}

- (void)declineInvitation
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEBUG, "chat: %@", &v5, 0xCu);
    }
  }

  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat_declineInvitation:self];

  self->_wasInvitationHandled = 1;
}

- (void)_sendMessage:(id)message adjustingSender:(BOOL)sender shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  senderCopy = sender;
  messageCopy = message;
  account = [(IMChat *)self account];
  [(IMChat *)self _sendMessage:messageCopy withAccount:account adjustingSender:senderCopy shouldQueue:queueCopy];
}

- (void)_sendMessage:(id)message withAccount:(id)account adjustingSender:(BOOL)sender shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  senderCopy = sender;
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = @"NO";
      *buf = 138412802;
      selfCopy = self;
      v26 = 2112;
      if (senderCopy)
      {
        v13 = @"YES";
      }

      v27 = messageCopy;
      v28 = 2112;
      selfCopy3 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@   message: %@  adjusting sender: %@", buf, 0x20u);
    }
  }

  [(IMChat *)self _updateSenderForMessageIfNeeded:messageCopy adjustingSender:senderCopy withAccount:accountCopy];
  [(IMChat *)self _updateBizIntentForMessageIfNeeded:messageCopy];
  [(IMChat *)self _updateLocaleForMessageIfNeeded:messageCopy];
  [(IMChat *)self _updateTypingGUIDForMessageIfNeeded:messageCopy];
  [(IMChat *)self _updateBreadcrumbingAssociationForMessageIfNeeded:messageCopy];
  v23 = 0;
  v14 = [(IMChat *)self keyTransparencyStatusForAffectedHandles:&v23];
  v15 = v23;
  [(IMChat *)messageCopy setIsKeyTransparencyVerifiedMessage:(v14 < 0x13) & (0x40130u >> v14)];
  if ([(IMChat *)self _updateJoinStateWithMessageIfNeeded:messageCopy])
  {
    [(IMChat *)self _updatePayloadForMessageIfNeeded:messageCopy];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        messagesPendingJoin = self->_messagesPendingJoin;
        *buf = 138413058;
        selfCopy = messageCopy;
        v26 = 2112;
        v27 = accountCopy;
        v28 = 2112;
        selfCopy3 = self;
        v30 = 2112;
        v31 = messagesPendingJoin;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Sending message %@ to account: %@ (%@)  (Pending: %@)", buf, 0x2Au);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendMessage:messageCopy withAccount:accountCopy];

    [(IMChat *)self _refreshServiceForSendingIfNeededWithMessage:messageCopy];
  }

  _imMessageItem = [(IMChat *)messageCopy _imMessageItem];
  [(IMChat *)self _updateMessageItemTimeIfNeeded:_imMessageItem];
  [(IMChat *)self _updateMessageItemStewieIfNeeded:_imMessageItem];
  if ([(IMChat *)messageCopy scheduleType]== 1)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy = messageCopy;
        v26 = 2112;
        v27 = accountCopy;
        v28 = 2112;
        selfCopy3 = self;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Not updating client about scheduled message %@ to account: %@ (%@)", buf, 0x20u);
      }
    }
  }

  else if (queueCopy)
  {
    [(IMChat *)self _handleIncomingItem:_imMessageItem];
  }

  else if (([(IMChat *)messageCopy isTypingMessage]& 1) == 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A8324CC0;
    v21[3] = &unk_1E7810140;
    v21[4] = self;
    v22 = _imMessageItem;
    [(IMChat *)self _updateChatItemsWithReason:@"Sending message" block:v21];
  }
}

- (NSNumber)countOfAttachmentsNotCachedLocally
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8324D68;
  v5[3] = &unk_1E7812700;
  v5[4] = self;
  v3 = [(IMChat *)self _performQueryWithKey:@"CountAttachmentsNotCachedLocally" loadImmediately:1 block:v5];
  return self->_countOfAttachmentsNotCachedLocally;
}

- (NSArray)attachments
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8324F4C;
  v8[3] = &unk_1E7812700;
  v8[4] = self;
  v3 = [(IMChat *)self _performQueryWithKey:@"LoadAttachments" loadImmediately:1 block:v8];
  v4 = self->_attachments;
  [(IMChat *)self _setAttachments:0];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(NSArray *)v4 count];
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Return %d attachments", buf, 8u);
    }
  }

  return v4;
}

- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  destinationsCopy = destinations;
  dCopy = d;
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self cancelScheduledMessageWithGUID:dCopy destinations:destinationsCopy cancelType:type];
}

- (void)editScheduledMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation
{
  itemCopy = item;
  textCopy = text;
  translationCopy = translation;
  editedPartIndexes = [itemCopy editedPartIndexes];
  v13 = [editedPartIndexes mutableCopy];

  if (v13)
  {
    [v13 removeIndex:index];
    [itemCopy setEditedPartIndexes:v13];
  }

  failedEditPartIndexes = [itemCopy failedEditPartIndexes];
  v15 = [failedEditPartIndexes mutableCopy];

  if (v15)
  {
    [v15 removeIndex:index];
    [itemCopy setFailedEditPartIndexes:v15];
  }

  v16 = [MEMORY[0x1E69A8138] editedMessageItemWithOriginalMessageItem:itemCopy editedPartIndex:index newPartText:textCopy newPartTranslation:translationCopy];
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self editScheduledMessageItem:v16 previousMessageItem:itemCopy partIndex:index editType:1];
}

- (void)cancelScheduledMessageItem:(id)item cancelType:(unint64_t)type
{
  itemCopy = item;
  v7 = [(IMChat *)self participantsWithState:16];
  v8 = [v7 __imArrayByApplyingBlock:&unk_1F1B6E9A0];

  if (type - 2 < 3)
  {
    goto LABEL_4;
  }

  if (type == 1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A83252F4;
    v11[3] = &unk_1E7812818;
    v11[4] = self;
    v12 = itemCopy;
    v13 = v8;
    v14 = 1;
    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Cancel scheduled message items" block:v11];

    goto LABEL_5;
  }

  if (!type)
  {
LABEL_4:
    guid = [itemCopy guid];
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    [(IMChat *)self cancelScheduledMessageWithGUID:guid destinations:v10 cancelType:type];
  }

LABEL_5:
}

- (void)cancelScheduledMessageItem:(id)item atPartIndex:(int64_t)index shouldRetractSubject:(BOOL)subject
{
  subjectCopy = subject;
  itemCopy = item;
  if ([itemCopy partCount] == 1)
  {
    [(IMChat *)self cancelScheduledMessageItem:itemCopy cancelType:1];
  }

  else
  {
    retractedPartIndexes = [itemCopy retractedPartIndexes];
    v9 = [retractedPartIndexes mutableCopy];

    if (v9)
    {
      [v9 removeIndex:index];
      [itemCopy setRetractedPartIndexes:v9];
    }

    failedRetractPartIndexes = [itemCopy failedRetractPartIndexes];
    v11 = [failedRetractPartIndexes mutableCopy];

    if (v11)
    {
      [v11 removeIndex:index];
      [itemCopy setFailedRetractPartIndexes:v11];
    }

    v12 = [MEMORY[0x1E69A8138] editedMessageItemWithOriginalMessageItem:itemCopy retractedPartIndex:index shouldRetractSubject:subjectCopy];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self editScheduledMessageItem:v12 previousMessageItem:itemCopy partIndex:index editType:2];
  }
}

- (void)editScheduledMessageItems:(id)items scheduleType:(unint64_t)type deliveryTime:(id)time
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  timeCopy = time;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 scheduleType] == type)
        {
          time = [v14 time];
          v16 = time == timeCopy;

          if (v16)
          {
            continue;
          }
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1A832574C;
        v18[3] = &unk_1E7812818;
        v19 = v10;
        selfCopy = self;
        typeCopy = type;
        v21 = timeCopy;
        [(IMChat *)self _updateChatItemsWithReason:@"Modifying scheduled time to be immediate" block:v18];

        goto LABEL_15;
      }

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "editScheduledMessageItems ignoring request since all items are already of the scheduleType & deliveryTime", buf, 2u);
    }
  }

LABEL_15:
}

- (void)editScheduledMessageItem:(id)item scheduleType:(unint64_t)type deliveryTime:(id)time
{
  itemCopy = item;
  timeCopy = time;
  if ([itemCopy scheduleType] == 2 && objc_msgSend(itemCopy, "scheduleState") == 2)
  {
    date = [MEMORY[0x1E695DF00] date];
    if (type == 2)
    {
      if (timeCopy && ([timeCopy timeIntervalSinceNow], v11 > 0.0))
      {
        v12 = timeCopy;

        __im_dateWithCurrentServerTime = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
        [itemCopy setDateEdited:__im_dateWithCurrentServerTime];

        date = v12;
      }

      else
      {
        v14 = IMLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E1494();
        }
      }
    }

    [itemCopy setTime:date];
    [itemCopy setScheduleType:type];
    if (![itemCopy scheduleType])
    {
      [itemCopy setScheduleState:0];
    }

    account = [(IMChat *)self account];
    sender = [itemCopy sender];
    v17 = [account imHandleWithID:sender];

    account2 = [(IMChat *)self account];
    handle = [itemCopy handle];
    v20 = [account2 imHandleWithID:handle];

    v21 = [IMMessage messageFromIMMessageItem:itemCopy sender:v17 subject:v20];
    v22 = v21;
    if (!type)
    {
      [v21 _updateFlags:{objc_msgSend(v21, "flags") & 0xFFFFFFFFFFFF7FFFLL}];
    }

    context = [itemCopy context];
    if (context)
    {
      v24 = context;
      context2 = [itemCopy context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        context3 = [itemCopy context];
        [context3 setMessage:v22];
      }
    }

    [(IMChat *)self sendMessage:v22];
    [(IMChat *)self _handleItem:itemCopy];
  }

  else
  {
    date = IMLogHandleForCategory();
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1410(itemCopy);
    }
  }
}

- (void)sendHQAttachmentsForMessage:(id)message
{
  messageCopy = message;
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self sendHQAttachmentsForMessage:messageCopy];
}

- (void)_updateMessageItemStewieIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(IMChat *)self isStewieChat])
  {
    [neededCopy setIsStewie:1];
  }
}

- (void)_updateScheduledMessageTimeOffsetIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy scheduleType] == 2)
  {
    _items = [(IMItemsController *)self _items];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1A8259BC0;
    v20 = sub_1A825AF0C;
    v21 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = sub_1A8325D48;
    v13 = &unk_1E78117B0;
    v6 = neededCopy;
    v14 = v6;
    v15 = &v16;
    [_items enumerateObjectsWithOptions:2 usingBlock:&v10];
    v7 = v17[5];
    if (v7)
    {
      time = [v7 time];
      v9 = [time dateByAddingTimeInterval:0.001];
      [v6 setTime:v9];
    }

    _Block_object_dispose(&v16, 8);
  }
}

- (void)_updateMessageItemTimeIfNeeded:(id)needed
{
  neededCopy = needed;
  if (![(IMItemsController *)self _shouldPinUnsentMessagesToBottom])
  {
    [(IMChat *)self _fixItemForSendingMessageTime:neededCopy];
  }

  [(IMChat *)self _updateScheduledMessageTimeOffsetIfNeeded:neededCopy];
}

- (void)_updateSenderForMessageIfNeeded:(id)needed adjustingSender:(BOOL)sender
{
  senderCopy = sender;
  neededCopy = needed;
  account = [(IMChat *)self account];
  [(IMChat *)self _updateSenderForMessageIfNeeded:neededCopy adjustingSender:senderCopy withAccount:account];
}

- (void)_updateSenderForMessageIfNeeded:(id)needed adjustingSender:(BOOL)sender withAccount:(id)account
{
  senderCopy = sender;
  neededCopy = needed;
  accountCopy = account;
  v8 = accountCopy;
  if (senderCopy)
  {
    loginIMHandle = [accountCopy loginIMHandle];
    if (!loginIMHandle)
    {
      if (+[IMBalloonPluginManager isRunningPPT])
      {
        loginIMHandle = [v8 imHandleWithID:@"test@icloud.com"];
      }

      else
      {
        loginIMHandle = 0;
      }
    }

    [neededCopy _updateSender:loginIMHandle];
  }
}

- (void)_clearHistoryAndReplaceLastMessage:(id)message
{
  v6[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  [(IMChat *)self cleanupChatItems];
  [(IMItemsController *)self _removeAllItemsSkippingCallToItemsDidChange:1];
  if (messageCopy)
  {
    v6[0] = messageCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(IMChat *)self _replaceItems:v5];
  }

  else
  {
    [(IMChat *)self _replaceItems:MEMORY[0x1E695E0F0]];
  }

  [(IMChat *)self _postNotification:@"__kIMChatHistoryClearedNotification" userInfo:0];
}

- (void)_updateBizIntentForMessageIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(IMChat *)self isMapKitBusinessChat])
  {
    bizIntent = [(IMChat *)self bizIntent];
    v5 = bizIntent == 0;
  }

  else
  {
    v5 = 1;
  }

  if (([neededCopy isTypingMessage] & 1) == 0)
  {
    associatedMessageGUID = [neededCopy associatedMessageGUID];
    v7 = [associatedMessageGUID length];

    v8 = v7 || v5;
    if ((v8 & 1) == 0)
    {
      bizIntent2 = [(IMChat *)self bizIntent];
      [neededCopy _updateBizIntent:bizIntent2];

      [(IMChat *)self setBizIntent:0];
    }
  }
}

- (void)_updateLocaleForMessageIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[IMChat isBusinessChat](self, "isBusinessChat") && ([neededCopy isTypingMessage] & 1) == 0)
  {
    associatedMessageGUID = [neededCopy associatedMessageGUID];
    if (![associatedMessageGUID length] || (-[IMChat messageForGUID:](self, "messageForGUID:", associatedMessageGUID), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "balloonBundleID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69A68E8]), v6, v5, v7))
    {
      _getCurrentLocale = [(IMChat *)self _getCurrentLocale];
      [neededCopy _updateLocale:_getCurrentLocale];
    }
  }
}

- (id)_getCurrentLocale
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  return localeIdentifier;
}

- (void)_updateTypingGUIDForMessageIfNeeded:(id)needed
{
  v29 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (self->_typingGUID)
  {
    account = [(IMChat *)self account];
    service = [account service];
    supportsTypingIndicators = [service supportsTypingIndicators];

    wasDowngraded = [neededCopy wasDowngraded];
    guid = [neededCopy guid];
    v10 = [guid isEqualToIgnoringCase:self->_typingGUID];

    currentLocationGUID = self->_currentLocationGUID;
    guid2 = [neededCopy guid];
    v13 = [(NSString *)currentLocationGUID isEqualToString:guid2];

    account2 = [(IMChat *)self account];
    service2 = [account2 service];
    if ([service2 shouldReuseTypingIndicatorGUID])
    {
      isGroupChat = [(IMChat *)self isGroupChat];
    }

    else
    {
      isGroupChat = 1;
    }

    scheduleType = [neededCopy scheduleType];
    if (!(wasDowngraded & 1 | ((supportsTypingIndicators & 1) == 0) | v10 & 1 | v13) && !isGroupChat && scheduleType != 2)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          guid3 = [neededCopy guid];
          typingGUID = self->_typingGUID;
          v25 = 138412546;
          v26 = guid3;
          v27 = 2112;
          v28 = typingGUID;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Updating typing guid on IMMessage from %@ to %@", &v25, 0x16u);
        }
      }

      [neededCopy _updateGUID:self->_typingGUID];
    }

    if ([neededCopy isFinished])
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = self->_typingGUID;
          v25 = 138412290;
          v26 = v22;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, " => Message is finished, clearing typing guid: %@", &v25, 0xCu);
        }
      }

      v23 = self->_typingGUID;
      self->_typingGUID = 0;

      localUserIsComposing = self->_localUserIsComposing;
      self->_localUserIsComposing = 0;
    }
  }
}

- (void)_updateBreadcrumbingAssociationForMessageIfNeeded:(id)needed
{
  v42 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  balloonBundleID = [neededCopy balloonBundleID];
  if ([balloonBundleID containsString:*MEMORY[0x1E69A6A38]])
  {
  }

  else
  {
    balloonBundleID2 = [neededCopy balloonBundleID];
    v6 = [balloonBundleID2 containsString:*MEMORY[0x1E69A68E0]];

    if (!v6)
    {
      goto LABEL_28;
    }
  }

  associatedMessageGUID = [neededCopy associatedMessageGUID];
  if (!associatedMessageGUID)
  {
    v28 = IMExtensionPayloadUnarchivingClasses();
    v8 = MEMORY[0x1E696ACD0];
    payloadData = [neededCopy payloadData];
    v38 = 0;
    v10 = [v8 unarchivedObjectOfClasses:v28 fromData:payloadData error:&v38];
    v11 = v38;

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v11;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Finished unarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
      }
    }

    v30 = IMSanitizedSessionIdentifierForIMExtensionPayloadUserSessionIdentifierKey();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(IMChat *)self chatItems];
    v32 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v32)
    {
      v31 = *v35;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            message = [v15 message];
            payloadData2 = [message payloadData];
            v33 = v11;
            v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v28 fromData:payloadData2 error:&v33];
            v19 = v33;

            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v41 = v19;
                _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Finished unarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
              }
            }

            v21 = IMSanitizedSessionIdentifierForIMExtensionPayloadUserSessionIdentifierKey();
            v22 = v21;
            if (v21 != 0 && v30 != 0)
            {
              uUIDString = [v21 UUIDString];
              uUIDString2 = [v30 UUIDString];
              v25 = [uUIDString isEqualToString:uUIDString2];

              if (v25)
              {
                guid = [message guid];
                [neededCopy _associatedMessageGUID:guid];

                [neededCopy _associatedMessageType:2];
                v11 = v19;
                v10 = v18;
                goto LABEL_26;
              }
            }

            v11 = v19;
            v10 = v18;
          }
        }

        v32 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    associatedMessageGUID = 0;
  }

LABEL_28:
}

- (BOOL)_updateJoinStateWithMessageIfNeeded:(id)needed
{
  v17 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ([(IMChat *)self joinState]== 3 || [(IMChat *)self joinState]== 4)
  {
    v5 = 1;
  }

  else
  {
    if (!self->_messagesPendingJoin)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      messagesPendingJoin = self->_messagesPendingJoin;
      self->_messagesPendingJoin = v6;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        account = [(IMChat *)self account];
        v11 = 138412802;
        v12 = neededCopy;
        v13 = 2112;
        v14 = account;
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Adding pending message message %@ for account: %@ (%@)", &v11, 0x20u);
      }
    }

    [(NSMutableArray *)self->_messagesPendingJoin addObject:neededCopy];
    [(IMChat *)self join];
    v5 = 0;
  }

  return v5;
}

- (void)_updatePayloadForMessageIfNeeded:(id)needed
{
  v30 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  balloonBundleID = [neededCopy balloonBundleID];
  if ([balloonBundleID isEqualToString:*MEMORY[0x1E69A6A18]])
  {
    _imMessageItem = [neededCopy _imMessageItem];
    getCMMState = [_imMessageItem getCMMState];

    if (!getCMMState)
    {
      payloadData = [neededCopy payloadData];
      payloadData2 = [neededCopy payloadData];
      v10 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
      v11 = 0;

      if (v10)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            fileTransferGUIDs = [neededCopy fileTransferGUIDs];
            v14 = MEMORY[0x1E696AD98];
            payloadData3 = [neededCopy payloadData];
            v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(payloadData3, "length")}];
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(payloadData, "length")}];
            *buf = 138412802;
            v25 = fileTransferGUIDs;
            v26 = 2112;
            v27 = v16;
            v28 = 2112;
            v29 = v17;
            _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Before splitting up rich links into file for msg guid %@ message payloadad data length %@, original payload data lenght %@", buf, 0x20u);
          }
        }

        [neededCopy setPayloadData:v10];
        [(IMChat *)self _updateFileAttachmentGUIDsForMessageIfNeeded:neededCopy withPayloadAttachments:v11];
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            fileTransferGUIDs2 = [neededCopy fileTransferGUIDs];
            v20 = MEMORY[0x1E696AD98];
            payloadData4 = [neededCopy payloadData];
            v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(payloadData4, "length")}];
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(payloadData, "length")}];
            *buf = 138412802;
            v25 = fileTransferGUIDs2;
            v26 = 2112;
            v27 = v22;
            v28 = 2112;
            v29 = v23;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "After splitting up rich links into file for msg guid %@ message payloadad data length %@, original payload data lenght %@", buf, 0x20u);
          }
        }
      }
    }
  }

  else
  {
  }
}

- (void)_updateFileAttachmentGUIDsForMessageIfNeeded:(id)needed withPayloadAttachments:(id)attachments
{
  v27 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  attachmentsCopy = attachments;
  if ([attachmentsCopy count])
  {
    v8 = +[IMFileTransferCenter sharedInstance];
    guid = [neededCopy guid];
    v21 = attachmentsCopy;
    v10 = [v8 guidsForStoredAttachmentPayloadData:attachmentsCopy messageGUID:guid];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 addObjectsFromArray:v10];
    v20 = v11;
    [neededCopy _updateFileTransferGUIDs:v11];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = +[IMFileTransferCenter sharedInstance];
          account = [(IMChat *)self account];
          [v18 assignTransfer:v17 toMessage:neededCopy account:account];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    attachmentsCopy = v21;
  }
}

- (void)_refreshServiceForSendingIfNeededWithMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy wasDowngraded] && (objc_msgSend(messageCopy, "isSOS") & 1) == 0)
  {
    [(IMChat *)self refreshServiceForSending];
  }
}

- (void)_fixItemForSendingMessageTime:(id)time
{
  v36 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  lastIncomingMessage = [(IMChat *)self lastIncomingMessage];
  time = [lastIncomingMessage time];

  lastSentMessageDate = [(IMChat *)self lastSentMessageDate];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x1E696AD98];
      time2 = [timeCopy time];
      [time2 timeIntervalSinceReferenceDate];
      v11 = [v9 numberWithDouble:?];
      v12 = MEMORY[0x1E696AD98];
      [time timeIntervalSinceReferenceDate];
      v13 = [v12 numberWithDouble:?];
      v14 = MEMORY[0x1E696AD98];
      [lastSentMessageDate timeIntervalSinceReferenceDate];
      v15 = [v14 numberWithDouble:?];
      v30 = 138412802;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "itemToUpdateTime: %@ lastIncomingMessage time: %@ lastSentMessageDate: %@", &v30, 0x20u);
    }
  }

  if ([time compare:lastSentMessageDate] == 1)
  {
    v16 = time;
  }

  else
  {
    v16 = lastSentMessageDate;
  }

  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  time3 = [timeCopy time];
  [time3 timeIntervalSinceReferenceDate];
  v21 = v20 - v18 < 60.0;

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v18 + 0.100000001];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = MEMORY[0x1E696AD98];
        [v22 timeIntervalSinceReferenceDate];
        v25 = [v24 numberWithDouble:?];
        v26 = MEMORY[0x1E696AD98];
        time4 = [timeCopy time];
        [time4 timeIntervalSinceReferenceDate];
        v28 = [v26 numberWithDouble:?];
        v30 = 138412802;
        v31 = v25;
        v32 = 2112;
        v33 = v22;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "The last recent message was received less than a minute ago, going to use time interval: %@ date: %@ clientSendTime: %@", &v30, 0x20u);
      }
    }

    time5 = [timeCopy time];
    [timeCopy setClientSendTime:time5];

    [timeCopy setTime:v22];
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  account = [(IMChat *)self account];
  [(IMChat *)self sendMessage:messageCopy onAccount:account];
}

- (void)sendMessage:(id)message onService:(id)service
{
  serviceCopy = service;
  messageCopy = message;
  v7 = +[IMAccountController sharedInstance];
  v8 = [v7 bestAccountForService:serviceCopy];

  [(IMChat *)self sendMessage:messageCopy onAccount:v8];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(messageCopy) = [mEMORY[0x1E69A8070] isRCSEncryptionOptInTestEnabled];

  if (messageCopy)
  {
    name = [serviceCopy name];
    if ([name isEqualToString:*MEMORY[0x1E69A7AF0]])
    {
      chatStyle = [(IMChat *)self chatStyle];

      if (chatStyle == 45)
      {
        [(IMChat *)self sendRCSEncryptionTestMessageIfNecessary];
      }
    }

    else
    {
    }
  }
}

- (void)sendMessage:(id)message onAccount:(id)account
{
  v63[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = messageCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Client request to send message: %@", buf, 0xCu);
    }
  }

  kdebug_trace();
  if ([(__CFString *)messageCopy isFinished])
  {
    service = [accountCopy service];
    v8 = +[IMServiceImpl iMessageService];
    v9 = service == v8;

    if (v9)
    {
      fileTransferGUIDs = [(__CFString *)messageCopy fileTransferGUIDs];
      v11 = [fileTransferGUIDs count] == 0;

      if (!v11)
      {
        guid = [(__CFString *)messageCopy guid];
        _signpostSendFileMessage();
      }

      guid2 = [(__CFString *)messageCopy guid];
      fileTransferGUIDs2 = [(__CFString *)messageCopy fileTransferGUIDs];
      [fileTransferGUIDs2 count];
      _signpostSendMessage();
    }

    v15 = MEMORY[0x1E69A8CD8];
    deviceIndependentID = [(IMChat *)self deviceIndependentID];
    v17 = IMTextInputIdentifier(deviceIndependentID);
    [v15 sendSignal:*MEMORY[0x1E69A8CB0] toChannel:*MEMORY[0x1E69A8C38] withNullableUniqueStringID:v17 withPayload:0];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier length])
  {
    v62 = *MEMORY[0x1E69A7288];
    v63[0] = bundleIdentifier;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    v21 = [v19 copy];
    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A74E8] withDictionary:v21];
  }

  if (([(__CFString *)messageCopy isFinished]& 1) == 0 && ([(__CFString *)messageCopy isLocatingMessage]& 1) == 0)
  {
    isAudioMessage = [(__CFString *)messageCopy isAudioMessage];
    v23 = @"__kIMChatComposeTyping";
    if (isAudioMessage)
    {
      v23 = @"__kIMChatComposeRecording";
    }

    goto LABEL_19;
  }

  if ([(__CFString *)messageCopy isEmpty]&& [(__CFString *)messageCopy isFinished])
  {
    isAudioMessage2 = [(__CFString *)messageCopy isAudioMessage];
    v23 = @"__kIMChatComposeRecording";
    if (!isAudioMessage2)
    {
      v23 = 0;
    }

LABEL_19:
    v24 = v23;
    guid3 = [(__CFString *)messageCopy guid];
    [(IMChat *)self _setLocalUserIsComposing:v24 suppliedGUID:guid3];
    goto LABEL_54;
  }

  if (-[IMChat isStewieChat](self, "isStewieChat") && (-[__CFString text](messageCopy, "text"), v26 = objc_claimAutoreleasedReturnValue(), [v26 string], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "lengthOfBytesUsingEncoding:", 4) > 0xA0, v27, v26, v28))
  {
    messagesBySeparatingRichLinks = [(__CFString *)messageCopy messagesSeparatedByByteLength:160];
  }

  else if ([(__CFString *)messageCopy hasDataDetectorResults]&& ([(__CFString *)messageCopy isSOS]& 1) == 0)
  {
    messagesBySeparatingRichLinks = [(__CFString *)messageCopy messagesBySeparatingRichLinks];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        hasDataDetectorResults = [(__CFString *)messageCopy hasDataDetectorResults];
        service2 = [accountCopy service];
        v33 = service2;
        v34 = @"NO";
        if (hasDataDetectorResults)
        {
          v34 = @"YES";
        }

        *buf = 138412546;
        v59 = v34;
        v60 = 2112;
        v61 = service2;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Not splitting message rich links, has data detected results (%@) and service %@", buf, 0x16u);
      }
    }

    v57 = messageCopy;
    messagesBySeparatingRichLinks = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v24 = messagesBySeparatingRichLinks;
  v36 = [(__CFString *)v24 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v36)
  {
    v37 = *v53;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(v24);
        }

        v39 = *(*(&v52 + 1) + 8 * i);
        notificationIDSTokenURI = [(__CFString *)messageCopy notificationIDSTokenURI];
        if (![notificationIDSTokenURI length])
        {
          goto LABEL_46;
        }

        notificationIDSTokenURI2 = [(__CFString *)messageCopy notificationIDSTokenURI];
        notificationIDSTokenURI3 = [v39 notificationIDSTokenURI];
        v43 = [notificationIDSTokenURI2 isEqualToString:notificationIDSTokenURI3];

        if ((v43 & 1) == 0)
        {
          notificationIDSTokenURI4 = [(__CFString *)messageCopy notificationIDSTokenURI];
          [v39 setNotificationIDSTokenURI:notificationIDSTokenURI4];

          if (IMOSLoggingEnabled())
          {
            notificationIDSTokenURI = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(notificationIDSTokenURI, OS_LOG_TYPE_INFO))
            {
              notificationIDSTokenURI5 = [v39 notificationIDSTokenURI];
              *buf = 138412290;
              v59 = notificationIDSTokenURI5;
              _os_log_impl(&dword_1A823F000, notificationIDSTokenURI, OS_LOG_TYPE_INFO, "New immessage does not have notificationIDSTokenURI, it is now set to %@ before sending.", buf, 0xCu);
            }

LABEL_46:
          }
        }

        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            guid4 = [(__CFString *)messageCopy guid];
            *buf = 138412546;
            v59 = messageCopy;
            v60 = 2112;
            v61 = guid4;
            _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_INFO, "Add sending message: %@ guid: %@", buf, 0x16u);
          }
        }

        [(IMChat *)self _sendMessage:v39 withAccount:accountCopy adjustingSender:1 shouldQueue:0];
      }

      v36 = [(__CFString *)v24 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v36);
  }

  guid3 = v24;
LABEL_54:

  if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    v48 = +[IMBalloonPluginAttributionController sharedInstance];
    [v48 startExpiryTimer];
  }
}

- (void)sendCurrentLocationMessage
{
  v4 = +[IMLocationManagerUtils sharedInstance];
  v3 = +[IMLocationManager sharedInstance];
  [v4 sendCurrentLocationMessageWithChat:self withLocationManager:v3 withSourceApplicationIdentifier:0 foregroundAssertionForBundleIdentifier:0 completion:0];
}

- (void)retractMessagePart:(id)part
{
  v20 = *MEMORY[0x1E69E9840];
  partCopy = part;
  messageItem = [partCopy messageItem];
  index = [partCopy index];
  hasSubject = [partCopy hasSubject];
  v8 = [messageItem scheduleType] == 2 && objc_msgSend(messageItem, "scheduleState") == 2;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      guid = [messageItem guid];
      v14 = 138412802;
      v15 = guid;
      v16 = 2048;
      scheduleType = [messageItem scheduleType];
      v18 = 2048;
      scheduleState = [messageItem scheduleState];
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Retracting/Cancelling message with guid: %@, scheduleType: %lu, scheduleState %lu", &v14, 0x20u);
    }
  }

  if (v8)
  {
    [(IMChat *)self cancelScheduledMessageItem:messageItem atPartIndex:index shouldRetractSubject:hasSubject];
  }

  else
  {
    v11 = [MEMORY[0x1E69A8138] editedMessageItemWithOriginalMessageItem:messageItem retractedPartIndex:index shouldRetractSubject:hasSubject];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendEditedMessageItem:v11 previousMessageItem:messageItem partIndex:index editType:2 backwardCompatabilityText:0];

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A77C0]];
  }
}

- (void)retractScheduledMessagePartIndexes:(id)indexes fromChatItem:(id)item
{
  v25 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  itemCopy = item;
  messageItem = [itemCopy messageItem];
  hasSubject = [itemCopy hasSubject];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid = [messageItem guid];
      v17 = 138413058;
      v18 = indexesCopy;
      v19 = 2112;
      v20 = guid;
      v21 = 2048;
      scheduleType = [messageItem scheduleType];
      v23 = 2048;
      scheduleState = [messageItem scheduleState];
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Retracting/Cancelling scheduled message part indexes (%@) from message with guid: %@, scheduleType: %lu, scheduleState %lu", &v17, 0x2Au);
    }
  }

  if ([messageItem partCount] == 1)
  {
    v12 = [(IMChat *)self participantsWithState:16];
    v13 = [v12 __imArrayByApplyingBlock:&unk_1F1B6E9C0];

    guid2 = [messageItem guid];
    chatRegistry = [MEMORY[0x1E695DFD8] setWithArray:v13];
    [(IMChat *)self cancelScheduledMessageWithGUID:guid2 destinations:chatRegistry cancelType:1];
  }

  else
  {
    failedRetractPartIndexes = [messageItem failedRetractPartIndexes];
    v13 = [failedRetractPartIndexes mutableCopy];

    if (v13)
    {
      [v13 removeIndexes:indexesCopy];
      [messageItem setFailedRetractPartIndexes:v13];
    }

    guid2 = [MEMORY[0x1E69A8138] editedMessageItemWithOriginalMessageItem:messageItem retractedPartIndexes:indexesCopy shouldRetractSubject:hasSubject];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self editScheduledMessageItem:guid2 previousMessageItem:messageItem retractingPartIndexes:indexesCopy];
  }
}

- (void)editMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation backwardCompatabilityText:(id)compatabilityText
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  textCopy = text;
  translationCopy = translation;
  compatabilityTextCopy = compatabilityText;
  v16 = [itemCopy scheduleType] == 2 && objc_msgSend(itemCopy, "scheduleState") == 2;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      guid = [itemCopy guid];
      v22 = 138412802;
      v23 = guid;
      v24 = 2048;
      scheduleType = [itemCopy scheduleType];
      v26 = 2048;
      scheduleState = [itemCopy scheduleState];
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Editing Message with guid: %@, scheduleType: %lu, scheduleState: %lu", &v22, 0x20u);
    }
  }

  if (v16)
  {
    [(IMChat *)self editScheduledMessageItem:itemCopy atPartIndex:index withNewPartText:textCopy newPartTranslation:translationCopy];
  }

  else
  {
    v19 = [MEMORY[0x1E69A8138] editedMessageItemWithOriginalMessageItem:itemCopy editedPartIndex:index newPartText:textCopy newPartTranslation:translationCopy];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendEditedMessageItem:v19 previousMessageItem:itemCopy partIndex:index editType:1 backwardCompatabilityText:compatabilityTextCopy];

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A72E0]];
  }
}

- (void)resendEditedMessageItem:(id)item forPartIndex:(int64_t)index withBackwardCompatabilityText:(id)text
{
  textCopy = text;
  itemCopy = item;
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self resendEditedMessageItem:itemCopy partIndex:index withBackwardCompatabilityText:textCopy];
}

- (void)appendTranslation:(id)translation toMessageItem:(id)item forPartIndex:(int64_t)index
{
  itemCopy = item;
  translationCopy = translation;
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self appendTranslation:translationCopy toMessageItem:itemCopy partIndex:index];
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally
{
  locallyCopy = locally;
  codesCopy = codes;
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self downloadTranslationAssetsForLanguageCodes:codesCopy messageItemsToTranslateLocally:locallyCopy];
}

- (void)beginShowingEditHistoryForChatItemGUID:(id)d
{
  dCopy = d;
  showingEditHistoryForChatItemGUIDs = [(IMChat *)self showingEditHistoryForChatItemGUIDs];

  if (!showingEditHistoryForChatItemGUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(IMChat *)self setShowingEditHistoryForChatItemGUIDs:v6];
  }

  showingEditHistoryForChatItemGUIDs2 = [(IMChat *)self showingEditHistoryForChatItemGUIDs];
  [showingEditHistoryForChatItemGUIDs2 addObject:dCopy];

  [(IMChat *)self setFilterControllersNeedsUpdateChatItems];

  [(IMChat *)self _updateChatItemsWithReason:@"Begin showing edit history" block:&unk_1F1B6E9E0];
}

- (void)endShowingEditHistoryForChatItemGUID:(id)d
{
  dCopy = d;
  showingEditHistoryForChatItemGUIDs = [(IMChat *)self showingEditHistoryForChatItemGUIDs];
  [showingEditHistoryForChatItemGUIDs removeObject:dCopy];

  [(IMChat *)self setFilterControllersNeedsUpdateChatItems];

  [(IMChat *)self _updateChatItemsWithReason:@"End showing edit history" block:&unk_1F1B6EA00];
}

- (void)endShowingEditHistoryForAllChatItems
{
  showingEditHistoryForChatItemGUIDs = [(IMChat *)self showingEditHistoryForChatItemGUIDs];
  v4 = [showingEditHistoryForChatItemGUIDs count];

  if (v4)
  {
    showingEditHistoryForChatItemGUIDs2 = [(IMChat *)self showingEditHistoryForChatItemGUIDs];
    [showingEditHistoryForChatItemGUIDs2 removeAllObjects];

    [(IMChat *)self setFilterControllersNeedsUpdateChatItems];

    [(IMChat *)self _updateChatItemsWithReason:@"End showing edit history for all items" block:&unk_1F1B6EA20];
  }
}

- (BOOL)isShowingEditHistoryForChatItemGUID:(id)d
{
  dCopy = d;
  showingEditHistoryForChatItemGUIDs = [(IMChat *)self showingEditHistoryForChatItemGUIDs];
  v6 = [showingEditHistoryForChatItemGUIDs containsObject:dCopy];

  return v6;
}

- (BOOL)isShowingEditHistoryForAnyChatItem
{
  showingEditHistoryForChatItemGUIDs = [(IMChat *)self showingEditHistoryForChatItemGUIDs];
  v3 = [showingEditHistoryForChatItemGUIDs count] != 0;

  return v3;
}

- (void)repositionSticker:(id)sticker associatedChatItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = stickerCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Client request to reposition sticker: %@", &v16, 0xCu);
    }
  }

  _imMessageItem = [stickerCopy _imMessageItem];
  guid = [stickerCopy guid];
  _stripFZIDPrefix = [guid _stripFZIDPrefix];
  v12 = [(IMItemsController *)self _itemForGUID:_stripFZIDPrefix];

  fileTransferGUIDs = [v12 fileTransferGUIDs];
  [_imMessageItem setFileTransferGUIDs:fileTransferGUIDs];

  body = [v12 body];
  [_imMessageItem setBody:body];

  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat:self repositionSticker:_imMessageItem];
}

- (id)messagesForScheduledMessageSectionWithTranscriptItem:(id)item
{
  v25 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Client requested messages for scheduled message section", &v23, 2u);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chatItems = [(IMChat *)self chatItems];
  v8 = [chatItems count];

  v9 = v8 + 1;
  do
  {
    if ((v9 - 2) < 0)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = itemCopy;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Couldn't find requested transcriptItem: %@ in chatItems", &v23, 0xCu);
        }
      }

      v20 = v6;
      goto LABEL_21;
    }

    chatItems2 = [(IMChat *)self chatItems];
    v11 = [chatItems2 objectAtIndexedSubscript:v9 - 2];

    LODWORD(chatItems2) = [v11 isEqual:itemCopy];
    --v9;
  }

  while (!chatItems2);
  chatItems3 = [(IMChat *)self chatItems];
  v13 = v9 < [chatItems3 count];

  if (v13)
  {
    while (1)
    {
      chatItems4 = [(IMChat *)self chatItems];
      v15 = [chatItems4 objectAtIndexedSubscript:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        messageItem = [v15 messageItem];
        [v6 addObject:messageItem];
      }

      chatItems5 = [(IMChat *)self chatItems];
      v18 = [chatItems5 count];

      if (++v9 >= v18)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v20 = [v6 copy];
LABEL_21:
  v21 = v20;

  return v21;
}

- (void)sendPendingSatelliteMessages
{
  v46 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Client request to send pending satellite messages", buf, 2u);
    }
  }

  v4 = +[IMService iMessageLiteService];
  [(IMChat *)self _targetToService:v4 newComposition:0 supportsEncryption:1];
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  _items = [(IMItemsController *)self _items];
  obj = [_items reverseObjectEnumerator];

  v6 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v39;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          isPendingSatelliteSend = [v11 isPendingSatelliteSend];
          if (isPendingSatelliteSend)
          {
            [v27 insertObject:v11 atIndex:0];
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                guid = [v11 guid];
                *buf = 138412290;
                v44 = guid;
                _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Enqueuing message for satellite send %@", buf, 0xCu);
              }
            }
          }

          else if (v7)
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                guid2 = [v11 guid];
                *buf = 138412290;
                v44 = guid2;
                _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, " => Reached message without pending flag %@", buf, 0xCu);
              }
            }

            goto LABEL_26;
          }

          v7 = isPendingSatelliteSend;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1A8329228;
  v34[3] = &unk_1E7810D08;
  v28 = v27;
  v35 = v28;
  selfCopy = self;
  v17 = v26;
  v37 = v17;
  [(IMChat *)self _updateChatItemsWithReason:@"Sending via satellite" block:v34];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v19)
  {
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            guid3 = [v22 guid];
            *buf = 138412290;
            v44 = guid3;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, " => Dispatching message for satellite send %@", buf, 0xCu);
          }
        }

        message = [v22 message];
        [(IMChat *)self sendMessage:message onService:v4];
      }

      v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v19);
  }
}

- (void)fetchIncomingPendingMessagesOverSatellite
{
  lastSatelliteFetchDate = [(IMChat *)self lastSatelliteFetchDate];
  if (!lastSatelliteFetchDate || (v4 = lastSatelliteFetchDate, [MEMORY[0x1E695DF00] now], v5 = objc_claimAutoreleasedReturnValue(), -[IMChat lastSatelliteFetchDate](self, "lastSatelliteFetchDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceDate:", v6), v8 = v7, v6, v5, v4, v8 >= 180.0))
  {
    if ([(IMChat *)self pendingIncomingSatelliteMessageCount])
    {
      v9 = [MEMORY[0x1E695DF00] now];
      [(IMChat *)self setLastSatelliteFetchDate:v9];

      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat_fetchIncomingPendingMessagesOverSatellite:self];
    }
  }
}

- (void)setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d
{
  chatCopy = chat;
  dCopy = d;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self setTranscriptBackgroundAndSendToChat:chatCopy transferID:dCopy];
  }
}

- (void)sendGroupPhotoUpdate:(id)update
{
  v21 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B80]];
  v6 = IMAreObjectsLogicallySame();
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v15 = 138412802;
        selfCopy2 = guid;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = updateCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Not updating group photo guid for chatGuid %@ from %@ to %@", &v15, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, " => Chat: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    if (v7)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        guid2 = [(IMChat *)self guid];
        v15 = 138412802;
        selfCopy2 = guid2;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = updateCopy;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Updating group photo guid for chatGuid %@ from %@ to %@", &v15, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Chat: %@", &v15, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendGroupPhotoUpdate:updateCopy];
  }
}

- (void)resendGroupPhoto
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B80]];
  if ([v3 length])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Resending group photo: %@", &v6, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendGroupPhotoUpdate:v3];
  }

  else
  {
    chatRegistry = IMLogHandleForCategory();
    if (os_log_type_enabled(chatRegistry, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1504();
    }
  }
}

- (void)retryGroupPhotoUploadIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B80]];
  v4 = +[IMFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:v3];

  if ([v5 transferState] == 7 && objc_msgSend(v5, "error") == 27)
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self retryGroupPhotoUpload:v3];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Not retrying group photo upload for transfer %@", &v8, 0xCu);
    }
  }
}

- (void)retryTranscriptBackgroundUploadIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  transcriptBackgroundPath = [(IMChat *)self transcriptBackgroundPath];
  transcriptBackgroundGUID = [(IMChat *)self transcriptBackgroundGUID];
  v5 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6CC8]];
  v6 = v5;
  if (transcriptBackgroundPath && ([v5 objectForKey:*MEMORY[0x1E69A7D30]], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self retryTranscriptBackgroundUpload:transcriptBackgroundPath transferID:transcriptBackgroundGUID];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = transcriptBackgroundGUID;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Not retrying transcript background upload for transfer ID %@", &v10, 0xCu);
    }
  }
}

- (void)refetchLocalTranscriptBackgroundAssetIfNecessary
{
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:self];
}

- (BOOL)_shouldSendCancelTypingIndicator
{
  v14 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v5 = v4;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      [(IMChat *)self latestTypingIndicatorTimeInterval];
      v10 = 134218240;
      v11 = v5;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "currentTimeInterval %f, latestTypingIndicatorTimeInterval %f", &v10, 0x16u);
    }
  }

  [(IMChat *)self latestTypingIndicatorTimeInterval];
  return v5 - v8 > 3.0;
}

- (unint64_t)_flagsForTypingIndicatorMessage:(BOOL)message
{
  if (message)
  {
    v4 = 2097164;
  }

  else
  {
    v4 = 12;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled])
  {
    isGroupChat = [(IMChat *)self isGroupChat];

    if (isGroupChat)
    {
      v4 |= 0x40000000uLL;
    }
  }

  else
  {
  }

  return v4;
}

- (unint64_t)_flagsForCancelTypingIndicatorMessage
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled])
  {
    isGroupChat = [(IMChat *)self isGroupChat];

    if (isGroupChat)
    {
      return 1073741837;
    }

    else
    {
      return 13;
    }
  }

  else
  {

    return 13;
  }
}

- (BOOL)_chatStyleSupportsTypingAndCancelTypingIndicators
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled])
  {
    chatStyle = [(IMChat *)self chatStyle];

    if (chatStyle == 43)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(IMChat *)self chatStyle]== 45;
}

- (double)typingIndicatorResendDelayInSecs
{
  if (qword_1EB2EA368 != -1)
  {
    sub_1A84E1540();
  }

  return *&qword_1EB2EA360;
}

- (void)_setLocalUserIsComposing:(id)composing suppliedGUID:(id)d typingIndicatorData:(id)data
{
  v47 = *MEMORY[0x1E69E9840];
  composingCopy = composing;
  dCopy = d;
  dataCopy = data;
  if (![(IMChat *)self hasKnownParticipants])
  {
    lastSentMessage = [(IMChat *)self lastSentMessage];

    if (!lastSentMessage)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEBUG, "Not setting local user composing for chat because this chat has no known participants, and we have never sent them a message before. Bailing. Chat: %@.", buf, 0xCu);
        }
      }

      goto LABEL_58;
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v15 = v14;

  [(IMChat *)self latestTypingIndicatorSendTimeInterval];
  v17 = v16;
  [(IMChat *)self typingIndicatorResendDelayInSecs];
  localUserIsComposing = self->_localUserIsComposing;
  if (localUserIsComposing != composingCopy)
  {
    if (!composingCopy)
    {
      goto LABEL_18;
    }

LABEL_11:
    v23 = 0;
LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy = composingCopy;
        v43 = 2112;
        selfCopy2 = self;
        v45 = 2112;
        v46 = dCopy;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEBUG, "Setting local user is composing with %@ for chat: %@   supplied guid: %@", buf, 0x20u);
      }
    }

    v26 = IMOSLoggingEnabled();
    if (v23)
    {
      if (v26)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          selfCopy = 0x4008000000000000;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Dispatching cancel typing indicator after %f seconds", buf, 0xCu);
        }
      }

      v28 = dispatch_time(0, 3000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A832A608;
      block[3] = &unk_1E780FCB0;
      block[4] = self;
      dispatch_after(v28, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (v26)
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          [(IMChat *)self latestTypingIndicatorTimeInterval];
          *buf = 134217984;
          selfCopy = v30;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Setting typing indicator time to %f", buf, 0xCu);
        }
      }

      if (self->_typingGUID && IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = composingCopy;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, " => Updating existing composing message to recording message: %@", buf, 0xCu);
        }
      }

      if (dCopy)
      {
        stringGUID = dCopy;
      }

      else
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      }

      typingGUID = self->_typingGUID;
      self->_typingGUID = stringGUID;

      objc_storeStrong(&self->_localUserIsComposing, composing);
      if ([(IMChat *)self _chatStyleSupportsTypingAndCancelTypingIndicators])
      {
        v35 = [(NSString *)composingCopy isEqualToString:@"__kIMChatComposeRecording"];
        if ([(NSString *)composingCopy isEqualToString:@"__kIMChatComposeTyping"]|| [(NSString *)composingCopy isEqualToString:@"__kIMChatComposeTyping"])
        {
          v36 = 0;
        }

        else
        {
          v36 = composingCopy;
        }

        [(IMChat *)self setLatestTypingIndicatorSendTimeInterval:v15];
        v38 = [[IMMessage alloc] initWithSender:0 time:0 text:0 messageSubject:0 fileTransferGUIDs:0 flags:[(IMChat *)self _flagsForTypingIndicatorMessage:v35] error:0 guid:self->_typingGUID subject:0 balloonBundleID:v36 payloadData:0 expressiveSendStyleID:0 threadIdentifier:0];
        [(IMMessage *)v38 setCustomTypingIndicatorIcon:dataCopy];
        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v38;
            _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, " => Sending start typing message: %@", buf, 0xCu);
          }
        }

        [(IMChat *)self _sendMessage:v38 adjustingSender:1 shouldQueue:0];
      }

      else if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, " => Not sending start typing message, the chat style does not support it", buf, 2u);
        }
      }
    }

    goto LABEL_58;
  }

  v20 = v18;
  v21 = v15 - v17;
  if (composingCopy)
  {
    if ([(NSString *)localUserIsComposing isEqualToString:composingCopy])
    {
      v22 = v21 <= v20;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_11;
    }

LABEL_17:
    [(IMChat *)self setLatestTypingIndicatorTimeInterval:v15];
    goto LABEL_58;
  }

  if (v21 <= v18)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (self->_typingGUID)
  {
    v23 = 1;
    goto LABEL_20;
  }

  v33 = self->_localUserIsComposing;
  if (v33)
  {
    self->_localUserIsComposing = 0;
  }

LABEL_58:
}

- (void)forceCancelTypingIndicator
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_localUserIsComposing && self->_typingGUID)
  {
    if ([(IMChat *)self _chatStyleSupportsTypingAndCancelTypingIndicators])
    {
      v3 = [[IMMessage alloc] initWithSender:0 time:0 text:0 messageSubject:0 fileTransferGUIDs:0 flags:[(IMChat *)self _flagsForCancelTypingIndicatorMessage] error:0 guid:self->_typingGUID subject:0 threadIdentifier:0];
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v9 = v3;
          _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, " => Sending forced cancel typing message:: %@", buf, 0xCu);
        }
      }

      [(IMChat *)self _sendMessage:v3 adjustingSender:1 shouldQueue:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, " => Not sending forced cancel typing message, the chat style does not support it", buf, 2u);
      }
    }

    typingGUID = self->_typingGUID;
    self->_typingGUID = 0;

    localUserIsComposing = self->_localUserIsComposing;
    self->_localUserIsComposing = 0;
  }
}

- (BOOL)canSendMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  account = [(IMChat *)self account];
  v6 = [account hasCapability:1024];

  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v8 = [fileTransferGUIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(fileTransferGUIDs);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = +[IMFileTransferCenter sharedInstance];
          v14 = [v13 transferForGUID:v12];

          if (v14 && ![(IMChat *)self canSendTransfer:v14])
          {

            v15 = 0;
            goto LABEL_14;
          }
        }

        v9 = [fileTransferGUIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)canSendTransfer:(id)transfer
{
  account = [(IMChat *)self account];
  v5 = [account hasCapability:32];

  if (v5)
  {
    if ([(IMChat *)self chatStyle]== 45)
    {
      supportsGroupAttachments = 1;
    }

    else
    {
      account2 = [(IMChat *)self account];
      service = [account2 service];
      supportsGroupAttachments = [service supportsGroupAttachments];
    }
  }

  else
  {
    supportsGroupAttachments = 0;
  }

  return supportsGroupAttachments & 1;
}

- (BOOL)authorizationToSendCurrentLocationMessageDetermined
{
  v2 = +[IMLocationManager sharedInstance];
  locationAuthorizationDetermined = [v2 locationAuthorizationDetermined];

  return locationAuthorizationDetermined;
}

- (BOOL)authorizedToSendCurrentLocationMessage
{
  v2 = +[IMLocationManager sharedInstance];
  locationAuthorizationDetermined = [v2 locationAuthorizationDetermined];

  if (locationAuthorizationDetermined)
  {
    v4 = +[IMLocationManager sharedInstance];
    v5 = [v4 locationAuthorizationDenied] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)authorizationToSendCurrentLocationMessageDenied
{
  v2 = +[IMLocationManager sharedInstance];
  locationAuthorizationDenied = [v2 locationAuthorizationDenied];

  return locationAuthorizationDenied;
}

- (void)updateMessage:(id)message withIndexesOfDeletedItems:(id)items withIndexToRangeMapOfDeletedItems:(id)deletedItems deleteDate:(id)date
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412546;
      selfCopy3 = self;
      v22 = 2112;
      selfCopy2 = messageCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "chat: %@   message: %@", &v20, 0x16u);
    }
  }

  v15 = IMOSLoggingEnabled();
  if (messageCopy)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        selfCopy3 = messageCopy;
        v22 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Sending update message %@ to daemon (Chat: %@)", &v20, 0x16u);
      }
    }

    remoteDaemon = [(IMChat *)self remoteDaemon];
    _imMessageItem = [(IMChat *)messageCopy _imMessageItem];
    [remoteDaemon updateMessage:_imMessageItem withIndexesOfDeletedItems:itemsCopy withIndexToRangeMapOfDeletedItems:deletedItemsCopy deleteDate:dateCopy];
  }

  else if (v15)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Asked to update empty message in chat: %@", &v20, 0xCu);
    }
  }
}

- (void)__clearReadMessageCache
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Clearing read message cache", v5, 2u);
    }
  }

  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _updateUnreadCountForChat:self];
}

- (void)_setTimerForReadMessageCache
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___clearReadMessageCache object:0];

  [(IMChat *)self performSelector:sel___clearReadMessageCache withObject:0 afterDelay:3.0];
}

- (void)markMessageAsRead:(id)read
{
  if (read)
  {
    v4 = IMSingleObjectArray();
    [(IMChat *)self markMessagesAsRead:v4];
  }
}

- (void)markMessagesAsRead:(id)read
{
  v23 = *MEMORY[0x1E69E9840];
  readCopy = read;
  if ([readCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(readCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = readCopy;
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

          guid = [*(*(&v18 + 1) + 8 * v10) guid];
          v12 = [(IMItemsController *)self _itemForGUID:guid];

          if (([v12 isRead] & 1) == 0 && (objc_msgSend(v12, "isFromMe") & 1) == 0)
          {
            [v5 addObject:v12];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendReadReceiptForMessages:v5];

    [(IMChat *)self _setTimerForReadMessageCache];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A832B4A0;
    v15[3] = &unk_1E7810140;
    v16 = v5;
    selfCopy = self;
    v14 = v5;
    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Mark as read" block:v15];
  }
}

- (void)markRepliedForMessageGUID:(id)d
{
  dCopy = d;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = sub_1A832B67C;
  v10 = &unk_1E7810140;
  selfCopy = self;
  v12 = dCopy;
  v5 = dCopy;
  [(IMChat *)self _updateChatItemsWithReason:@"Suggested replies selected" block:&v7];
  v6 = [(IMChat *)self chatRegistry:v7];
  [v6 _chat_markRepliedForMessageGUID:v5];
}

- (void)replaceItemWhenReplied:(id)replied
{
  v28 = *MEMORY[0x1E69E9840];
  repliedCopy = replied;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _items = [(IMItemsController *)self _items];
  v6 = [_items countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v6)
  {
    v8 = _items;
    goto LABEL_18;
  }

  v7 = v6;
  selfCopy = self;
  v8 = 0;
  v9 = *v23;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(_items);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      guid = [v11 guid];
      if ([repliedCopy isEqualToString:guid])
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          continue;
        }

        guid = v8;
        v8 = v11;
      }
    }

    v7 = [_items countByEnumeratingWithState:&v22 objects:v27 count:16];
  }

  while (v7);

  if (v8)
  {
    body = [v8 body];
    if ([body length])
    {
      string = [body string];
      v16 = [string substringFromIndex:{objc_msgSend(body, "length") - 1}];
      v17 = [v16 isEqualToString:*MEMORY[0x1E69A6CF0]];

      if (v17)
      {
        copyAsReplied = [v8 copyAsReplied];
        [copyAsReplied _setMessageID:{objc_msgSend(v8, "messageID")}];
        copyAsReplied2 = [v8 copyAsReplied];
        v26 = copyAsReplied2;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        [(IMChat *)selfCopy _replaceItems:v20];
      }
    }

LABEL_18:
  }
}

- (void)markLastMessageAsUnread
{
  if ([(IMChat *)self unreadMessageCount])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "We already have unread messages, ignoring request", buf, 2u);
      }
    }
  }

  else
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat_markLastMessageAsUnread:self];
  }
}

- (void)markMessageAsUnread:(id)unread
{
  if (unread)
  {
    unreadCopy = unread;
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat_markMessageAsUnread:self message:unreadCopy];
  }
}

- (void)markAllMessagesAsRead
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to mark all messages as read: %@", &v10, 0xCu);
    }
  }

  [(IMChat *)self markKTFailureSeen];
  v4 = [(IMChat *)self unreadMessageCount]== 0;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Chat has no unread messages, tell the daemon that we tried to mark it as read since this could affect message suppression", &v10, 2u);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat_sendReadReceiptForAllMessages:self];
  }

  else
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Chat has unread messages", &v10, 2u);
      }
    }

    [(IMChat *)self _clearUnreadCount];
    chatRegistry2 = [(IMChat *)self chatRegistry];
    [chatRegistry2 _chat_sendReadReceiptForAllMessages:self];

    [(IMChat *)self _setTimerForReadMessageCache];
  }
}

- (void)recoverFromJunkTo:(int64_t)to
{
  if ([(IMChat *)self isFiltered]== 2)
  {
    [(IMChat *)self setRecovered:1];
    [(IMChat *)self updateIsFiltered:to];
    [(IMChat *)self _reloadChatItemsForFilteringChange];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat_recoverFromJunk:self];

    chatRegistry2 = [(IMChat *)self chatRegistry];
    [chatRegistry2 _chatDidRecoverFromJunk:self];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Chat is not a junk chat, not recovering", buf, 2u);
    }
  }
}

- (void)markAsKnownAndSaveInContacts:(BOOL)contacts completion:(id)completion
{
  contactsCopy = contacts;
  completionCopy = completion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    [(IMChat *)self setCurrentlyMarkingAsKnown:1];
    if ([(IMChat *)self isFiltered])
    {
      [(IMChat *)self updateIsFiltered:0];
      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat_acceptChat:self];

      if ([(IMChat *)self isGroupChat]|| !contactsCopy)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1, 0);
          [(IMChat *)self setCurrentlyMarkingAsKnown:0];
        }
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1A832BF14;
        v11[3] = &unk_1E7812840;
        v11[4] = self;
        v12 = completionCopy;
        [(IMChat *)self _recordMarkedAsKnownForParticipantsWithCompletion:v11];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Chat is already accepted", buf, 2u);
      }
    }
  }
}

- (void)_recordMarkedAsKnownForParticipantsWithCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Recording accepted introductions for chat: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A832C0B0;
  v7[3] = &unk_1E7812890;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IMChat *)self _introductionsForParticipantsWithCompletion:v7];
}

- (void)_introductionsForParticipantsWithCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = dispatch_group_create();
  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  participants = [(IMChat *)self participants];
  v7 = [participants countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(participants);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 ID];
        im_stripCategoryLabel = [v12 im_stripCategoryLabel];

        if ([v11 hasSuggestedName])
        {
          dispatch_group_enter(v4);
          v14 = +[IMSuggestionsService sharedInstance];
          displayID = [v11 displayID];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = sub_1A832C628;
          v25[3] = &unk_1E78128B8;
          v26 = im_stripCategoryLabel;
          v27 = array;
          v28 = v4;
          [v14 fetchUncachedSuggestedRealNameForDisplayName:displayID prependMaybe:0 queue:MEMORY[0x1E69E96A0] block:v25];

          nicknameFromNicknameController2 = v26;
        }

        else
        {
          nicknameFromNicknameController = [v11 nicknameFromNicknameController];

          if (nicknameFromNicknameController)
          {
            nicknameFromNicknameController2 = [v11 nicknameFromNicknameController];
            v18 = [MEMORY[0x1E69A80C8] introductionWithHandle:im_stripCategoryLabel suggestedName:nicknameFromNicknameController2];
            [array addObject:v18];
          }

          else
          {
            nicknameFromNicknameController2 = [MEMORY[0x1E69A80C8] introductionWithHandle:im_stripCategoryLabel suggestedName:0];
            [array addObject:nicknameFromNicknameController2];
          }
        }
      }

      v8 = [participants countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A832C694;
  block[3] = &unk_1E7810230;
  v23 = array;
  v24 = completionCopy;
  v19 = array;
  v20 = completionCopy;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);
}

- (void)_setChatProperties:(id)properties isCurrentGUID:(BOOL)d
{
  v74 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  chatProperties = self->_chatProperties;
  if (chatProperties != propertiesCopy)
  {
    dCopy = d;
    v9 = 0;
    if (propertiesCopy && chatProperties)
    {
      v10 = [(NSMutableDictionary *)chatProperties count];
      if (v10 == [(NSMutableDictionary *)propertiesCopy count])
      {
        v9 = [(NSMutableDictionary *)self->_chatProperties isEqualToDictionary:propertiesCopy];
      }

      else
      {
        v9 = 0;
      }
    }

    v11 = [(NSMutableDictionary *)propertiesCopy valueForKey:@"wasAutoDetectedForSpam"];
    bOOLValue = [v11 BOOLValue];
    v12 = [(NSMutableDictionary *)self->_chatProperties valueForKey:@"wasAutoDetectedForSpam"];
    bOOLValue2 = [v12 BOOLValue];

    if (v9)
    {
      v51 = 0;
    }

    else
    {
      v13 = [(NSMutableDictionary *)propertiesCopy valueForKey:*MEMORY[0x1E69A6AF8]];
      associatedBusinessID = [(IMChat *)self associatedBusinessID];
      v51 = [v13 isEqualToString:associatedBusinessID] ^ 1;
    }

    translationLanguageCode = [(IMChat *)self translationLanguageCode];
    v15 = *MEMORY[0x1E69A6CE0];
    v64 = [(NSMutableDictionary *)self->_chatProperties valueForKey:*MEMORY[0x1E69A6CE0]];
    incomingTranslationLanguageCode = [(IMChat *)self incomingTranslationLanguageCode];
    v62 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B60]];
    v61 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B08]];
    v60 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:v15];
    v59 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C30]];
    v47 = *MEMORY[0x1E69A6CC8];
    v67 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:?];
    transcriptBackgroundDetails = [(IMChat *)self transcriptBackgroundDetails];
    v17 = [transcriptBackgroundDetails copy];

    v66 = v17;
    v48 = *MEMORY[0x1E69A7D40];
    v57 = [(IMChat *)v17 objectForKeyedSubscript:?];
    v18 = *MEMORY[0x1E69A7D38];
    v55 = [(IMChat *)v17 objectForKeyedSubscript:*MEMORY[0x1E69A7D38]];
    transcriptBackgroundChannelTransferGUID = [(IMChat *)self transcriptBackgroundChannelTransferGUID];
    bOOLValue3 = [v62 BOOLValue];
    isAutomaticTranslationEnabled = [(IMChat *)self isAutomaticTranslationEnabled];
    v21 = ([v61 isEqualToString:translationLanguageCode] & 1) == 0 && (v61 | translationLanguageCode) != 0;
    v22 = ([v60 isEqualToString:v64] & 1) == 0 && (v60 | v64) != 0;
    v23 = bOOLValue3 ^ isAutomaticTranslationEnabled;
    v24 = ([v59 isEqualToString:incomingTranslationLanguageCode] & 1) == 0 && (v59 | incomingTranslationLanguageCode) != 0;
    if ((v9 | v21 | v23))
    {
      v25 = v9 ^ 1;
    }

    else
    {
      v25 = v22 || v24;
    }

    v50 = v25;
    transcriptBackgroundGUID = [(IMChat *)self transcriptBackgroundGUID];
    v26 = [v67 objectForKeyedSubscript:v18];
    v27 = ([transcriptBackgroundGUID isEqualToString:v26] & 1) == 0 && (transcriptBackgroundGUID | v26) != 0;
    v28 = *MEMORY[0x1E69A7870];
    v29 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E69A7870]];
    if (v29)
    {
      v30 = [(NSMutableDictionary *)self->_chatProperties objectForKeyedSubscript:v28];
      v49 = v30 == 0;
    }

    else
    {
      v49 = 0;
    }

    objc_storeStrong(&self->_chatProperties, properties);
    if (self->_chatProperties)
    {
      if (v9)
      {
        goto LABEL_64;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v32 = self->_chatProperties;
      self->_chatProperties = Mutable;

      if (v9)
      {
LABEL_64:

        goto LABEL_65;
      }
    }

    if (!dCopy)
    {
      [(NSMutableDictionary *)self->_chatProperties setObject:transcriptBackgroundChannelTransferGUID forKeyedSubscript:*MEMORY[0x1E69A6CC0]];
    }

    if (v27)
    {
      v33 = [v67 objectForKeyedSubscript:v48];
      v34 = [v67 objectForKeyedSubscript:v18];
      unsignedLongLongValue = [v57 unsignedLongLongValue];
      unsignedLongLongValue2 = [(IMChat *)v33 unsignedLongLongValue];
      unsignedLongLongValue3 = [v57 unsignedLongLongValue];
      v38 = unsignedLongLongValue3 == -[IMChat unsignedLongLongValue](v33, "unsignedLongLongValue") && [v34 compare:v55] == -1;
      v39 = unsignedLongLongValue > unsignedLongLongValue2;
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          selfCopy = v33;
          v70 = 2112;
          v71 = v57;
          v72 = 1024;
          v73 = v38;
          _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "incomingVersion: %@, oldBackgroundVersion: %@, Performing tie break: %{BOOL}d", buf, 0x1Cu);
        }
      }

      if (v39 || v38)
      {
        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy = v66;
            v70 = 2112;
            v71 = v67;
            _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Tried to set properties that contain an older version of the background. Reverting to older version: %@. Incoming properties: %@", buf, 0x16u);
          }
        }

        [(NSMutableDictionary *)self->_chatProperties setObject:v66 forKeyedSubscript:v47];
      }

      else
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"__kIMChatTranscriptBackgroundChangedNotification" object:self userInfo:0];
      }
    }

    [(IMChat *)self setWasDetectedAsSMSSpamCacheStatus:0];
    [(IMChat *)self _postNotification:@"__kIMChatPropertiesChangedNotification" userInfo:0];
    if (v50)
    {
      [(IMChat *)self _postNotification:@"__kIMChatAutomaticTranslationChangedNotification" userInfo:0];
    }

    [(IMChat *)self _delayedInvalidateDowngradeState];
    if (bOOLValue != bOOLValue2)
    {
      [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Report spam" block:&unk_1F1B6EA60];
    }

    if (v51)
    {
      recipient = [(IMChat *)self recipient];
      [recipient associatedBusinessIDChanged];
    }

    v44 = [(NSMutableDictionary *)propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E69A6A60]];

    if (v44)
    {
      [(IMChat *)self fetchBrandInfoIfNecessary];
    }

    if (v49)
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Persistent Menu - Adding new persistent menu to chat: %@", buf, 0xCu);
        }
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:*MEMORY[0x1E69A6AC8] object:self];
    }

    goto LABEL_64;
  }

LABEL_65:
}

- (id)valueForChatProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_chatProperties objectForKey:property];
  v4 = [v3 copy];

  return v4;
}

- (void)setValue:(id)value forChatProperty:(id)property
{
  v32 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v26 = 138412802;
        v27 = valueCopy;
        v28 = 2112;
        v29 = propertyCopy;
        v30 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Attempt to set value: %@ for chatProperty: %@ on chat: %@", &v26, 0x20u);
      }
    }

    if (qword_1ED7679D8 != -1)
    {
      sub_1A84E15C4();
    }

    if ([qword_1ED7679D0 containsObject:propertyCopy])
    {
      v9 = [(IMChat *)self valueForChatProperty:propertyCopy];
      v10 = v9;
      if (v9 == valueCopy || valueCopy && v9 && [valueCopy isEqual:v9])
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Attempt to update a chat property to the same value.", &v26, 2u);
          }
        }
      }

      else
      {
        if (([propertyCopy isEqualToString:@"wasDetectedAsSMSSpam"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"SMSCategory"))
        {
          [(IMChat *)self setWasDetectedAsSMSSpamCacheStatus:0];
        }

        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v26 = 138412546;
            v27 = propertyCopy;
            v28 = 2112;
            v29 = valueCopy;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Setting chatProperty: %@ to value: %@", &v26, 0x16u);
          }
        }

        chatProperties = self->_chatProperties;
        if (!chatProperties)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v17 = self->_chatProperties;
          self->_chatProperties = Mutable;

          chatProperties = self->_chatProperties;
        }

        if (([(NSMutableDictionary *)chatProperties __imIsMutable]& 1) == 0)
        {
          v18 = [(NSMutableDictionary *)self->_chatProperties mutableCopy];
          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v19 = self->_chatProperties;
          self->_chatProperties = v18;
        }

        if (!valueCopy || ([MEMORY[0x1E695DFB0] null], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == valueCopy, v20, v21))
        {
          [(NSMutableDictionary *)self->_chatProperties removeObjectForKey:propertyCopy];
        }

        else
        {
          v22 = self->_chatProperties;
          v23 = [valueCopy copy];
          [(NSMutableDictionary *)v22 setObject:v23 forKey:propertyCopy];
        }

        chatRegistry = [(IMChat *)self chatRegistry];
        [chatRegistry _chat:self setValue:valueCopy forChatProperty:propertyCopy];

        if (![(NSMutableDictionary *)self->_chatProperties count])
        {
          v25 = self->_chatProperties;
          self->_chatProperties = 0;
        }

        [(IMChat *)self _postNotification:@"__kIMChatPropertiesChangedNotification" userInfo:0];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = propertyCopy;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Attempt to modify chat property: %@ which is not in the allowlist", &v26, 0xCu);
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E15EC();
    }
  }
}

- (void)consumeSummaryIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    v3 = *MEMORY[0x1E69A6B28];
    v4 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B28]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *MEMORY[0x1E69A6B20];
      v6 = [v4 objectForKey:*MEMORY[0x1E69A6B20]];
      bOOLValue = [v6 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v8 = [v4 mutableCopy];
        [v8 setObject:MEMORY[0x1E695E118] forKey:v5];
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            guid = [(IMChat *)self guid];
            v12 = 138412290;
            v13 = guid;
            _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Marking summary as consumed on chat with GUID %@", &v12, 0xCu);
          }
        }

        v11 = [v8 copy];
        [(IMChat *)self setValue:v11 forChatProperty:v3];
      }
    }
  }
}

- (void)userToggledReadReceiptSwitch:(BOOL)switch
{
  switchCopy = switch;
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = self->_guid;
      chatProperties = self->_chatProperties;
      *buf = 67109634;
      *v21 = switchCopy;
      *&v21[4] = 2112;
      *&v21[6] = guid;
      *&v21[14] = 2112;
      *&v21[16] = chatProperties;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "User toggled the read receipt setting to: %d for chat: %@ with properties prior to updating: %@", buf, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x1E69A6C78];
  v9 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6C78]];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue] + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:switchCopy];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v21 = v12;
      *&v21[8] = 2112;
      *&v21[10] = v10;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Setting read receipt versionID to: %@ from: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v21 = v13;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Setting read receipt value to: %@", buf, 0xCu);
    }
  }

  [(IMChat *)self setValue:v12 forChatProperty:v8];
  v16 = *MEMORY[0x1E69A6B68];
  [(IMChat *)self setValue:v13 forChatProperty:*MEMORY[0x1E69A6B68]];
  v18[0] = v8;
  v18[1] = v16;
  v19[0] = v12;
  v19[1] = v13;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [(IMChat *)self _syncChatItemProperties:v17];
}

- (void)setAutomaticallyTranslate:(BOOL)translate languageCode:(id)code userLanguageCode:(id)languageCode
{
  translateCopy = translate;
  v42 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  languageCodeCopy = languageCode;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      guid = self->_guid;
      chatProperties = self->_chatProperties;
      *buf = 67109634;
      *v41 = translateCopy;
      *&v41[4] = 2112;
      *&v41[6] = guid;
      *&v41[14] = 2112;
      *&v41[16] = chatProperties;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "User toggled the automatically translate setting to: %d for chat: %@ with properties prior to updating: %@", buf, 0x1Cu);
    }
  }

  if (codeCopy || !translateCopy)
  {
    v12 = [(IMChat *)self ensureUserTranslationLanguageIsResolvedForCode:languageCodeCopy];
    v36 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:codeCopy];
    v35 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v12];
    languageCode = [v36 languageCode];
    languageCode2 = [v35 languageCode];
    v15 = [languageCode isEqualToString:languageCode2];

    if (v15)
    {
      translationLanguageCode = [(IMChat *)self translationLanguageCode];
      v17 = [codeCopy isEqualToString:translationLanguageCode];

      if (v17)
      {
        userTranslationLanguageCode = [(IMChat *)self userTranslationLanguageCode];
        v19 = codeCopy;
        codeCopy = userTranslationLanguageCode;
      }

      else
      {
        translationLanguageCode2 = [(IMChat *)self translationLanguageCode];
        v19 = v12;
        v12 = translationLanguageCode2;
      }
    }

    v21 = *MEMORY[0x1E69A6B10];
    v22 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6B10]];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 integerValue] + 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
    v26 = [MEMORY[0x1E696AD98] numberWithBool:translateCopy];
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v41 = v25;
        *&v41[8] = 2112;
        *&v41[10] = v23;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Setting automatically translate versionID to: %@ from: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v41 = v26;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Setting automatically translate value to: %@", buf, 0xCu);
      }
    }

    if (!translateCopy)
    {
      [(IMChat *)self setValue:0 forChatProperty:*MEMORY[0x1E69A6CA0]];
    }

    v29 = *MEMORY[0x1E69A6B08];
    [(IMChat *)self setValue:codeCopy forChatProperty:*MEMORY[0x1E69A6B08]];
    v30 = *MEMORY[0x1E69A6CE0];
    [(IMChat *)self setValue:v12 forChatProperty:*MEMORY[0x1E69A6CE0]];
    v31 = *MEMORY[0x1E69A6B60];
    [(IMChat *)self setValue:v26 forChatProperty:*MEMORY[0x1E69A6B60]];
    [(IMChat *)self setValue:v25 forChatProperty:v21];
    [(IMChat *)self _reloadChatItemsForTranslationEnabledChange];
    v38[0] = v21;
    v38[1] = v31;
    v39[0] = v25;
    v39[1] = v26;
    null = codeCopy;
    v38[2] = v29;
    if (!codeCopy)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v38[3] = v30;
    v33 = &stru_1F1B76F98;
    if (v12)
    {
      v33 = v12;
    }

    v39[2] = null;
    v39[3] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
    if (!codeCopy)
    {
    }

    [(IMChat *)self _syncChatItemProperties:v34];
    [(IMChat *)self _postNotification:@"__kIMChatAutomaticTranslationChangedNotification" userInfo:0];
  }

  else
  {
    codeCopy = IMLogHandleForCategory();
    if (os_log_type_enabled(codeCopy, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1628();
    }
  }
}

- (void)_syncChatItemProperties:(id)properties
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = propertiesCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending generic notification to update chat properties for properties: %@", buf, 0xCu);
    }
  }

  v6 = +[IMAccountController sharedInstance];
  v7 = +[IMServiceImpl iMessageService];
  strippedLogin = [(IMAccount *)self->_account strippedLogin];
  v9 = [v6 bestOperationalAccountForService:v7 withLogin:strippedLogin];

  if (v9)
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      strippedLogin2 = [(IMAccount *)self->_account strippedLogin];
      *buf = 138412290;
      v23 = strippedLogin2;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Could not find operational account with login %@, looking for next best operational account.", buf, 0xCu);
    }
  }

  v12 = +[IMAccountController sharedInstance];
  v13 = +[IMServiceImpl iMessageService];
  v9 = [v12 bestOperationalAccountForService:v13];

  if (v9)
  {
LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Found account for sending: %@", buf, 0xCu);
      }
    }

    remoteDaemon = [(IMChat *)self remoteDaemon];
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:60000];
    loginIMHandle = [(IMAccount *)self->_account loginIMHandle];
    v18 = [loginIMHandle ID];
    uniqueID = [v9 uniqueID];
    LOBYTE(v21) = self->_style;
    [remoteDaemon sendCommand:v16 withProperties:propertiesCopy toPerson:v18 account:uniqueID toChatID:self->_guid identifier:self->_identifier style:v21];
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Could not find operational account to use for syncing chat properties.", buf, 2u);
    }
  }
}

- (id)allPropertiesOfParticipant:(id)participant
{
  participantProperties = self->_participantProperties;
  guid = [participant guid];
  v5 = [(NSMutableDictionary *)participantProperties objectForKey:guid];

  return v5;
}

- (id)valueForProperty:(id)property ofParticipant:(id)participant
{
  propertyCopy = property;
  v7 = [(IMChat *)self allPropertiesOfParticipant:participant];
  v8 = [v7 objectForKey:propertyCopy];

  return v8;
}

- (void)setValue:(id)value forProperty:(id)property ofParticipant:(id)participant
{
  valueCopy = value;
  propertyCopy = property;
  participantCopy = participant;
  v10 = participantCopy;
  if (propertyCopy && participantCopy)
  {
    v11 = [(IMChat *)self allPropertiesOfParticipant:participantCopy];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      participantProperties = self->_participantProperties;
      if (!participantProperties)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_participantProperties;
        self->_participantProperties = Mutable;

        participantProperties = self->_participantProperties;
      }

      guid = [v10 guid];
      [(NSMutableDictionary *)participantProperties setObject:v11 forKey:guid];
    }

    [v11 setObject:valueCopy forKey:propertyCopy];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self setProperties:v11 ofParticipant:v10];
  }
}

- (id)_mergeParticipantIDs
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  participants = [(IMChat *)self participants];
  v5 = [v3 initWithCapacity:{objc_msgSend(participants, "count")}];

  if ([(IMChat *)self chatStyle]== 43)
  {
    displayName = [(IMChat *)self displayName];
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

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  participants2 = [(IMChat *)self participants];
  v10 = [participants2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(participants2);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ((v8 & 1) == 0)
        {
          goto LABEL_18;
        }

        if ([*(*(&v20 + 1) + 8 * i) isContact] && IMSharedHelperContactsBasedMergingEnabled())
        {
          v15 = [v14 cnContactWithKeys:MEMORY[0x1E695E0F0]];
          identifier = [v15 identifier];

          goto LABEL_19;
        }

        if (IMSharedHelperPersonCentricMergingEnabled())
        {
          identifier = [v14 personCentricID];
        }

        else
        {
LABEL_18:
          identifier = 0;
        }

LABEL_19:
        if (![(__CFString *)identifier length])
        {
          v17 = [v14 ID];

          identifier = v17;
        }

        if ([(__CFString *)identifier length])
        {
          v18 = identifier;
        }

        else
        {
          v18 = @"invalidHandle";
        }

        [v5 addObject:v18];
      }

      v11 = [participants2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v5;
}

- (id)_generatePersonCentricID
{
  v16 = MEMORY[0x1E69A7F78];
  guid = [(IMChat *)self guid];
  chatIdentifier = [(IMChat *)self chatIdentifier];
  chatStyle = [(IMChat *)self chatStyle];
  groupID = [(IMChat *)self groupID];
  displayName = [(IMChat *)self displayName];
  _lastKnownHybridState = [(IMChat *)self _lastKnownHybridState];
  account = [(IMChat *)self account];
  service = [account service];
  groupsMergeDisplayNames = [service groupsMergeDisplayNames];
  _mergeParticipantIDs = [(IMChat *)self _mergeParticipantIDs];
  LOBYTE(v15) = groupsMergeDisplayNames;
  v13 = [v16 personCentricIDForChatWithGUID:guid chatIdentifier:chatIdentifier chatStyle:chatStyle groupID:groupID displayName:displayName lastKnownToBeHybrid:_lastKnownHybridState mergeDisplayNames:v15 participantIDs:_mergeParticipantIDs];

  return v13;
}

- (BOOL)supportsEncryption
{
  chatProperties = [(IMChat *)self chatProperties];
  v3 = [chatProperties objectForKeyedSubscript:*MEMORY[0x1E69A6CB0]];

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
  v4 = [MEMORY[0x1E696AD98] numberWithBool:encryption];
  [(IMChat *)self setValue:v4 forChatProperty:*MEMORY[0x1E69A6CB0]];
}

- (BOOL)_hasCommunicatedOnService:(id)service
{
  serviceCopy = service;
  account = [(IMChat *)self account];
  service = [account service];

  if (service == serviceCopy)
  {
    v8 = 1;
  }

  else
  {
    chatRegistry = [(IMChat *)self chatRegistry];
    v8 = [chatRegistry _hasChat:self forService:serviceCopy];
  }

  return v8;
}

- (void)_setAccount:(id)account
{
  v55 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  service = [(IMAccount *)accountCopy service];
  supportsMessaging = [service supportsMessaging];

  if (!accountCopy)
  {
    goto LABEL_50;
  }

  if (self->_account == accountCopy || supportsMessaging == 0)
  {
    goto LABEL_50;
  }

  v8 = [(IMChat *)self joinState]!= 3;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x1E69A8070] isOneChatEnabled];

  v42 = isOneChatEnabled | v8;
  account = self->_account;
  if (account != accountCopy)
  {
    style = self->_style;
    if (style == 35 || style == 43)
    {
LABEL_17:
      service2 = [(IMAccount *)account service];
      service3 = [(IMAccount *)accountCopy service];

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          uniqueID = [(IMAccount *)self->_account uniqueID];
          uniqueID2 = [(IMAccount *)accountCopy uniqueID];
          v22 = uniqueID2;
          v23 = @"YES";
          *buf = 138412802;
          v50 = uniqueID;
          v51 = 2112;
          if (service2 == service3)
          {
            v23 = @"NO";
          }

          v52 = uniqueID2;
          v53 = 2112;
          v54 = v23;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Trying to change group chat account from %@ to %@ (service change: %@)", buf, 0x20u);
        }
      }

      objc_storeStrong(&self->_account, account);
      participants = [(IMChat *)self participants];
      v25 = [participants copy];

      v26 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      participants = self->_participants;
      self->_participants = v26;

      [(NSMutableDictionary *)self->_participantStates removeAllObjects];
      v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v29 = v25;
      v30 = [(IMAccount *)v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v30)
      {
        v31 = *v45;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v44 + 1) + 8 * i);
            v34 = [(IMAccount *)v33 imHandleForOtherAccount:accountCopy];
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v50 = v33;
                v51 = 2112;
                v52 = v34;
                _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, " Old handle: %@     New handle: %@", buf, 0x16u);
              }
            }

            if (v34)
            {
              [v28 addObject:v34];
            }
          }

          v30 = [(IMAccount *)v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v30);
      }

      if (v42)
      {
        v36 = 16;
      }

      else
      {
        v36 = 1;
      }

      [(IMChat *)self _addParticipants:v28 withState:v36];
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          participants2 = [(IMChat *)self participants];
          *buf = 138412546;
          v50 = v29;
          v51 = 2112;
          v52 = participants2;
          _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, " Old participants: %@        New participants: %@", buf, 0x16u);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMChatSendingServiceChangedNotification" object:self];

      goto LABEL_44;
    }

    if (style == 45)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = self->_account;
          *buf = 138412546;
          v50 = v14;
          v51 = 2112;
          v52 = accountCopy;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Trying to change 1-1 account from %@ to %@", buf, 0x16u);
        }
      }

      recipient = [(IMChat *)self recipient];
      v16 = [recipient imHandleForOtherAccount:accountCopy];

      if (v16)
      {
        [(IMChat *)self setRecipient:v16];
      }

      account = self->_account;
      goto LABEL_17;
    }
  }

LABEL_44:
  if ((v42 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        *buf = 138412290;
        v50 = guid;
        _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Transitioning %@ to joining state due to account change", buf, 0xCu);
      }
    }

    self->_joinState = 2;
    [(IMChat *)self join];
  }

LABEL_50:
  [(IMChat *)self _clearCachedIdentifier];
}

- (void)_resetParticipants:(id)participants
{
  v28 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      participants = [(IMChat *)self participants];
      v22 = 138412802;
      v23 = participants;
      v24 = 2112;
      v25 = participantsCopy;
      v26 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Trying to change participants from %@ to %@ (Chat: %@)", &v22, 0x20u);
    }
  }

  if ([participantsCopy count])
  {
    v8 = [participantsCopy count];
    participants2 = [(IMChat *)self participants];
    LODWORD(v8) = v8 == [participants2 count];

    if (v8)
    {
      chatRegistry = [(IMChat *)self chatRegistry];
      participants3 = [(IMChat *)self participants];
      v12 = [chatRegistry _sortedParticipantIDHashForParticipants:participants3 usesPersonCentricID:0 fallbackToContactID:0];

      chatRegistry2 = [(IMChat *)self chatRegistry];
      v14 = [chatRegistry2 _sortedParticipantIDHashForParticipants:participantsCopy usesPersonCentricID:0 fallbackToContactID:0];

      if ([v12 isEqualToString:v14])
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Handles are identical, not updating the participants.", &v22, 2u);
          }
        }
      }

      else
      {
        chatRegistry3 = [(IMChat *)self chatRegistry];
        participants4 = [(IMChat *)self participants];
        v18 = [chatRegistry3 _sortedParticipantIDHashForParticipants:participants4 usesPersonCentricID:0 fallbackToContactID:1];

        chatRegistry4 = [(IMChat *)self chatRegistry];
        v20 = [chatRegistry4 _sortedParticipantIDHashForParticipants:participantsCopy usesPersonCentricID:0 fallbackToContactID:1];

        if ([v18 isEqualToString:v20])
        {
          objc_storeStrong(&self->_participants, participants);
          [(IMChat *)self _postNotification:@"__kIMChatParticipantsDidChangeNotification" userInfo:0];
        }

        else if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Cannot reset participants due to mismatching participant hashes.", &v22, 2u);
          }
        }
      }
    }
  }
}

- (void)setRecipient:(id)recipient
{
  v38 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recipient = [(IMChat *)self recipient];
      *buf = 138412802;
      v33 = recipient;
      v34 = 2112;
      v35 = recipientCopy;
      v36 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Trying to change recipient from %@ to %@ (Chat: %@)", buf, 0x20u);
    }
  }

  if (recipientCopy)
  {
    recipient2 = [(IMChat *)self recipient];
    if (([(IMAccount *)recipient2 isEqual:recipientCopy]& 1) != 0)
    {
LABEL_39:

      goto LABEL_40;
    }

    if (recipient2 && [(IMChat *)self chatStyle]== 45 && ([(IMAccount *)recipientCopy _isChatSiblingOf:recipient2]& 1) == 0 && (IMSharedHelperPersonCentricMergingEnabled() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = recipient2;
          v34 = 2112;
          v35 = recipientCopy;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "** Cannot change recipient from %@ => %@, this is not a chat sibling", buf, 0x16u);
        }
      }

      goto LABEL_39;
    }

    if ([(IMChat *)self chatStyle]== 45)
    {
      originalID = [(IMAccount *)recipientCopy originalID];
      originalID2 = [(IMAccount *)recipient2 originalID];
      if ([originalID isEqualToString:originalID2])
      {
        v9 = [(IMAccount *)recipientCopy ID];
        originalID3 = [(IMAccount *)recipient2 originalID];
        if (([v9 isEqualToString:originalID3] & 1) == 0)
        {
          v11 = [(IMAccount *)recipientCopy ID];
          if (MEMORY[0x1AC56C3C0]())
          {
            v12 = [(IMAccount *)recipient2 ID];
            if (MEMORY[0x1AC56C3C0]())
            {
              v29 = [(IMAccount *)recipientCopy ID];
              v28 = IMCountryCodeForNumber();
              v13 = [(IMAccount *)recipient2 ID];
              v14 = IMCountryCodeForNumber();
              v27 = [v28 isEqualToString:v14];

              if ((v27 & 1) == 0)
              {
                mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
                [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"Country Code Swap" errorPayload:0 type:@"DSDS Privacy Violation" context:{@"Detected an attempt to retarget a chat at the same destination, but with a different country code"}];

                goto LABEL_39;
              }

              goto LABEL_26;
            }
          }
        }
      }
    }

LABEL_26:
    recipient3 = [(IMChat *)self recipient];
    v18 = recipientCopy;
    v30 = self->_account;
    account = [(IMAccount *)v18 account];
    v20 = [(NSArray *)self->_participants mutableCopy];
    if (!v20)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if ([v20 containsObjectIdenticalTo:recipient3])
    {
      [v20 removeObject:recipient3];
    }

    [v20 addObject:v18];
    objc_storeStrong(&self->_participants, v20);
    service = [(IMAccount *)account service];
    supportsMessaging = [service supportsMessaging];

    if (((v30 != account) & supportsMessaging) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v33 = v30;
          v34 = 2112;
          v35 = account;
          v36 = 2112;
          selfCopy2 = self;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Setting to a new account from %@ to %@ for (Chat: %@)", buf, 0x20u);
        }
      }

      objc_storeStrong(&self->_account, account);
      self->_senderBlackholeWarningStatus = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMChatSendingServiceChangedNotification" object:self];
    }

    [(IMChat *)self _clearCachedIdentifier];
    v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v18, @"__kIMChatValueKey", recipient3, @"__kIMChatOldValueKey", 0}];
    [(IMChat *)self _postNotification:@"__kIMChatRecipientDidChangeNotification" userInfo:v25];
    [(IMChat *)self _postNotification:@"__kIMChatParticipantsDidChangeNotification" userInfo:0];
    if ([(IMChat *)self joinState]== 3)
    {
      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat:self joinWithProperties:self->_chatProperties];
    }

    goto LABEL_39;
  }

LABEL_40:
}

- (void)join
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to join chat: %@", &v8, 0xCu);
    }
  }

  if ((self->_joinState - 3) >= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [(IMChat *)self chatIdentifier];
        joinState = self->_joinState;
        v8 = 138412546;
        selfCopy = chatIdentifier;
        v10 = 2048;
        v11 = joinState;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Transitioning %@ to joining state due to join from state %ld", &v8, 0x16u);
      }
    }

    [(IMChat *)self _setJoinState:2];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self joinWithProperties:self->_chatProperties];
  }
}

- (void)leave
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to leave chat: %@", &v6, 0xCu);
    }
  }

  if (self->_style == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Not allowed to leave 1:1 chat: %@", &v6, 0xCu);
      }
    }
  }

  else
  {
    if (self->_joinState == 3)
    {
      [(IMChat *)self _setJoinState:1];
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat_leave:self];
  }
}

- (void)remove
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to remove chat: %@", &v5, 0xCu);
    }
  }

  if (self->_joinState == 3)
  {
    [(IMChat *)self _setJoinState:1];
  }

  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat_remove:self];
}

- (void)_addParticipants:(id)participants withState:(unint64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if ([participantsCopy count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = participantsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (![(NSArray *)self->_participants containsObject:v13, v16])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v14 = [(NSArray *)self->_participants mutableCopy];
      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      if (self->_style == 45)
      {
        [(NSArray *)v14 removeAllObjects];
      }

      [(NSArray *)v14 addObjectsFromArray:v7, v16];
      participants = self->_participants;
      self->_participants = v14;

      self->_senderBlackholeWarningStatus = 0;
    }

    [(IMChat *)self _setParticipantState:state forHandles:v8 postNotification:1, v16];
  }
}

- (BOOL)_canLeaveChatIgnoringParticipantCount:(BOOL)count
{
  chatStyle = [(IMChat *)self chatStyle];
  v6 = chatStyle != 45;
  if (chatStyle != 45 && !count)
  {
    participants = [(IMChat *)self participants];
    v6 = [participants count] > 2;
  }

  return v6;
}

- (BOOL)canAddParticipant:(id)participant
{
  v28 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  participants = [(IMChat *)self participants];
  v6 = [participants containsObject:participantCopy];

  if (v6)
  {
    v7 = 1;
  }

  else if (-[IMChat chatStyle](self, "chatStyle") == 45 || -[IMChat joinState](self, "joinState") >= 1 && (-[IMChat account](self, "account"), v8 = objc_claimAutoreleasedReturnValue(), [v8 service], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsMutatingGroupMembers"), v9, v8, !v10))
  {
    v7 = 0;
  }

  else
  {
    service = [participantCopy service];
    if (!service)
    {
      account = [(IMChat *)self account];
      service = [account service];
    }

    lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
    lastAddressedSIMID = [(IMChat *)self lastAddressedSIMID];
    v15 = [service maxChatParticipantsForHandle:lastAddressedHandleID simID:lastAddressedSIMID];

    if (v15 < 1 || (-[IMChat participants](self, "participants"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], -[IMChat lastAddressedHandleID](self, "lastAddressedHandleID"), v18 = objc_claimAutoreleasedReturnValue(), -[IMChat lastAddressedSIMID](self, "lastAddressedSIMID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v17 + 1, v21 = objc_msgSend(service, "maxChatParticipantsForHandle:simID:", v18, v19), v19, v18, v16, v20 <= v21))
    {
      v7 = 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = 138412546;
          v25 = participantCopy;
          v26 = 1024;
          v27 = v15;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Cannot add participant %@  that would put us over our max size of: %d", &v24, 0x12u);
        }
      }

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)canAddParticipants:(id)participants
{
  v34 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if ([participantsCopy count] && -[IMChat chatStyle](self, "chatStyle") != 45)
  {
    lastObject = [participantsCopy lastObject];
    service = [lastObject service];

    if (!service)
    {
      account = [(IMChat *)self account];
      service = [account service];
    }

    lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
    lastAddressedSIMID = [(IMChat *)self lastAddressedSIMID];
    v11 = [service maxChatParticipantsForHandle:lastAddressedHandleID simID:lastAddressedSIMID];

    if (v11 < 1 || (v12 = [participantsCopy count], -[IMChat participants](self, "participants"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), -[IMChat lastAddressedHandleID](self, "lastAddressedHandleID"), v15 = objc_claimAutoreleasedReturnValue(), -[IMChat lastAddressedSIMID](self, "lastAddressedSIMID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v14 + v12, v18 = objc_msgSend(service, "maxChatParticipantsForHandle:simID:", v15, v16), v16, v15, v13, v17 <= v18))
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = participantsCopy;
      v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v21)
      {
        v22 = *v26;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v20);
            }

            if (![(IMChat *)self canAddParticipant:*(*(&v25 + 1) + 8 * i), v25])
            {
              v5 = 0;
              goto LABEL_23;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v5 = 1;
LABEL_23:
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v31 = participantsCopy;
          v32 = 1024;
          v33 = v11;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Cannot add participants: %@ that would put us over our max size of: %d", buf, 0x12u);
        }
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)maximumChatParticipantsForHandles:(id)handles
{
  lastObject = [handles lastObject];
  service = [lastObject service];

  if (!service)
  {
    account = [(IMChat *)self account];
    service = [account service];
  }

  lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
  lastAddressedSIMID = [(IMChat *)self lastAddressedSIMID];
  v9 = [service maxChatParticipantsForHandle:lastAddressedHandleID simID:lastAddressedSIMID];

  return v9;
}

- (void)inviteParticipants:(id)participants reason:(id)reason
{
  v50 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = participantsCopy;
      *&buf[22] = 2112;
      v47 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Request to invite participants to chat: %@   handles: %@  reason: %@", buf, 0x20u);
    }
  }

  if ([(IMChat *)self chatStyle]== 45)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cannot mutate participants on 1-1 chat: %@", buf, 0xCu);
      }

LABEL_9:
    }
  }

  else
  {
    account = [(IMChat *)self account];
    service = [account service];
    supportsMutatingGroupMembers = [service supportsMutatingGroupMembers];

    if ((supportsMutatingGroupMembers & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_45;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        account2 = [(IMChat *)self account];
        service2 = [account2 service];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = service2;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cannot mutate participants on chat: %@   service doesn't support it: %@", buf, 0x16u);
      }

      goto LABEL_9;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_1A8259BC0;
    v48 = sub_1A825AF0C;
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1A8330E70;
    v40[3] = &unk_1E78128E0;
    v40[4] = self;
    v40[5] = buf;
    [participantsCopy enumerateObjectsUsingBlock:v40];
    v13 = [(IMChat *)self maximumChatParticipantsForHandles:participantsCopy];
    if ([*(*&buf[8] + 40) count])
    {
      if (v13 >= 1)
      {
        v14 = [*(*&buf[8] + 40) count];
        participants = [(IMChat *)self participants];
        LODWORD(v14) = [participants count] + v14 > v13;

        if (v14)
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *v44 = 67109120;
              LODWORD(v45) = v13;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Failing to invite some participants that would put us over our max size of: %d", v44, 8u);
            }
          }

          participants2 = [(IMChat *)self participants];
          v18 = [participants2 count] < v13;

          if (v18)
          {
            participants3 = [(IMChat *)self participants];
            v20 = [participants3 count];
            v21 = [*(*&buf[8] + 40) count];

            [*(*&buf[8] + 40) removeObjectsInRange:{objc_msgSend(*(*&buf[8] + 40), "count") - (v20 - v13 + v21)}];
          }

          else
          {
            [*(*&buf[8] + 40) removeAllObjects];
          }

          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = *(*&buf[8] + 40);
              *v44 = 138412290;
              v45 = v25;
              _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "  => Will invite: %@", v44, 0xCu);
            }
          }
        }
      }
    }

    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    v27 = [v26 initWithCapacity:{objc_msgSend(*(*&buf[8] + 40), "count")}];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = *(*&buf[8] + 40);
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v29)
    {
      v30 = *v37;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v36 + 1) + 8 * i);
          if ([(IMChat *)self stateForParticipant:v32, v36]!= 16)
          {
            [v27 addObject:v32];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v29);
    }

    if ([v27 count])
    {
      [(IMChat *)self addHandlesToGroupFaceTimeChatIfRegistered:v27];
      [(IMChat *)self _addParticipants:v27 withState:4];
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *v44 = 138412290;
          v45 = v27;
          _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Inviting: %@", v44, 0xCu);
        }
      }

      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat:self inviteParticipants:v27 reason:reasonCopy];

      v41 = @"__kIMChatParticipantsDidChangeAddedParticipantsKey";
      v42 = participantsCopy;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      [(IMChat *)self _postNotification:@"__kIMChatParticipantsDidChangeNotification" userInfo:v35];
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_45:
}

- (void)removeParticipants:(id)participants reason:(id)reason
{
  v36 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy4 = self;
      v32 = 2112;
      v33 = participantsCopy;
      v34 = 2112;
      v35 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "chat: %@   handles: %@  reason: %@", buf, 0x20u);
    }
  }

  if ([(IMChat *)self chatStyle]== 45)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cannot mutate participants on 1-1 chat: %@", buf, 0xCu);
      }

LABEL_37:

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  account = [(IMChat *)self account];
  service = [account service];
  supportsMutatingGroupMembers = [service supportsMutatingGroupMembers];

  if ((supportsMutatingGroupMembers & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        account2 = [(IMChat *)self account];
        service2 = [account2 service];
        *buf = 138412546;
        selfCopy4 = self;
        v32 = 2112;
        v33 = service2;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cannot mutate participants on chat: %@   service doesn't support it: %@", buf, 0x16u);
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  participants = [(IMChat *)self participants];
  if (![participants count])
  {

LABEL_29:
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Tried to remove too many participants, ignoring", buf, 2u);
      }
    }

    goto LABEL_33;
  }

  v14 = [(IMChat *)self canRemoveParticipants:participantsCopy];

  if (!v14)
  {
    goto LABEL_29;
  }

  if ([(IMChat *)self joinState])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = participantsCopy;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          if ([(NSArray *)self->_participants containsObject:v20, v25])
          {
            [v15 addObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    [(IMChat *)self _setParticipantState:256 forHandles:v15 postNotification:1];
    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self removeParticipants:v15 reason:reasonCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cannot mutate participants if already left chat: %@", buf, 0xCu);
    }

    goto LABEL_37;
  }

LABEL_33:
}

- (BOOL)canRemoveParticipants:(id)participants
{
  participantsCopy = participants;
  participants = [(IMChat *)self participants];
  v6 = [participants count];
  v7 = [participantsCopy count];

  return (v6 - v7 + 1) > 2;
}

- (id)momentShareCache
{
  momentShareCache = self->_momentShareCache;
  if (!momentShareCache)
  {
    v4 = +[IMMomentShareCache sharedInstance];
    v5 = self->_momentShareCache;
    self->_momentShareCache = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__momentShareCacheDidChange_ name:@"IMMomentShareCacheDidChangeNotification" object:self->_momentShareCache];

    momentShareCache = self->_momentShareCache;
  }

  return momentShareCache;
}

- (IMMomentSharePresentationCache)momentSharePresentationCache
{
  momentSharePresentationCache = self->_momentSharePresentationCache;
  if (!momentSharePresentationCache)
  {
    momentShareCache = [(IMChat *)self momentShareCache];
    v5 = [[IMMomentSharePresentationCache alloc] initWithMomentShareCache:momentShareCache];
    v6 = self->_momentSharePresentationCache;
    self->_momentSharePresentationCache = v5;

    [(IMMomentSharePresentationCache *)self->_momentSharePresentationCache setDelegate:self];
    momentSharePresentationCache = self->_momentSharePresentationCache;
  }

  return momentSharePresentationCache;
}

- (BOOL)shouldDisplayOffGridModeStatus
{
  if ([(IMChat *)self chatStyle]!= 45)
  {
    return 0;
  }

  account = [(IMChat *)self account];
  service = [account service];
  internalName = [service internalName];
  v6 = [internalName isEqualToString:*MEMORY[0x1E69A7AF0]];

  if (!v6 || [(IMChat *)self isReadOnly])
  {
    return 0;
  }

  recipient = [(IMChat *)self recipient];
  v7 = [recipient offGridMode] == 2;

  return v7;
}

- (void)autoInviteToViewOffGridModeIfNeeded
{
  if (![(IMChat *)self _canShareStatus])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    lastAddressedHandleID = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(lastAddressedHandleID, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v9 = 0;
    v5 = "Not able to share off grid mode";
    v6 = &v9;
    goto LABEL_12;
  }

  if (![(IMChat *)self containsMessageFromContactOrMe])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    lastAddressedHandleID = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(lastAddressedHandleID, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v5 = "Not sharing off grid mode in chat with non contact that I have not participated in";
    v6 = buf;
LABEL_12:
    _os_log_impl(&dword_1A823F000, lastAddressedHandleID, OS_LOG_TYPE_INFO, v5, v6, 2u);
    goto LABEL_16;
  }

  lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
  if ([lastAddressedHandleID length])
  {
    recipient = [(IMChat *)self recipient];
    [recipient autoInviteToViewOffGridModeIfNeededFromHandleID:lastAddressedHandleID];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    recipient = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(recipient, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, recipient, OS_LOG_TYPE_INFO, "Not sharing off grid mode in chat with no lastAddressedHandleID", v7, 2u);
    }
  }

LABEL_16:
}

- (BOOL)shouldDisplayUnavailabilityIndicator
{
  if (![(IMChat *)self supportsCapabilities:0x200000])
  {
    return 0;
  }

  recipient = [(IMChat *)self recipient];
  v4 = [recipient availability] == 2;

  return v4;
}

- (BOOL)isDisplayingUnavailabilityIndicator
{
  v15 = *MEMORY[0x1E69E9840];
  chatItems = [(IMChat *)self chatItems];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [chatItems reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        if (objc_opt_isKindOfClass())
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)shouldDisplayAutomaticTranslation
{
  if ([(IMChat *)self supportsCapabilities:0x800000]&& [(IMChat *)self isTranslationSupportedForSystemLanguage])
  {
    isAutomaticTranslationEnabled = [(IMChat *)self isAutomaticTranslationEnabled];
    translationLanguageCode = [(IMChat *)self translationLanguageCode];

    if (translationLanguageCode || (-[IMChat incomingTranslationLanguageCode](self, "incomingTranslationLanguageCode"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, !v8))
    {
      v5 = 0;
    }

    else
    {
      incomingTranslationLanguageCode = [(IMChat *)self incomingTranslationLanguageCode];
      v10 = [(IMChat *)self preferredLanguagesContainVariantForCode:incomingTranslationLanguageCode];

      v5 = !v10;
    }

    return isAutomaticTranslationEnabled || v5;
  }

  else
  {
    return 0;
  }
}

- (NSString)userTranslationLanguageCode
{
  v3 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6CE0]];
  if ([v3 length])
  {
    usersPreferredLanguageIdentifier = v3;
  }

  else
  {
    usersPreferredLanguageIdentifier = [(IMChat *)self usersPreferredLanguageIdentifier];
  }

  v5 = usersPreferredLanguageIdentifier;

  return v5;
}

- (NSDate)availabilityStatusPublishedDate
{
  if ([(IMChat *)self chatStyle]== 45)
  {
    recipient = [(IMChat *)self recipient];
    availabilityStatusPublishedDate = [recipient availabilityStatusPublishedDate];
  }

  else
  {
    availabilityStatusPublishedDate = 0;
  }

  return availabilityStatusPublishedDate;
}

- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(IMChat *)self chatStyle]== 45)
  {
    lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
    if ([lastAddressedHandleID length])
    {
      recipient = [(IMChat *)self recipient];
      [recipient isInvitedToViewMyFocusStatusFromHandleID:lastAddressedHandleID completion:completionCopy];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Not able to determine if sender if invited with no lastAddressedHandleID", v9, 2u);
        }
      }

      recipient = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A68D8] code:2 userInfo:0];
      completionCopy[2](completionCopy, 0, recipient);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1664();
    }

    lastAddressedHandleID = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A68D8] code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, lastAddressedHandleID);
  }
}

- (id)beginObservingHandleStatuses
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Beginning observing of handle status", buf, 2u);
    }
  }

  if ([(IMChat *)self chatStyle]== 45)
  {
    recipient = [(IMChat *)self recipient];
    beginObservingAvailability = [recipient beginObservingAvailability];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Chat is not 1:1, bailing", v8, 2u);
      }
    }

    beginObservingAvailability = 0;
  }

  return beginObservingAvailability;
}

- (void)_reloadChatItemsForTranslationEnabledChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Translation enabled changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self setFilterControllersNeedsUpdateChatItems];
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Translation enabled changed" block:&unk_1F1B6EAE0];
}

- (void)_reloadChatItemsForPhotoSaveStatusChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Translation enabled changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self setFilterControllersNeedsUpdateChatItems];
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Photo save status changed" block:&unk_1F1B6EB00];
}

- (void)_reloadChatItemsForTranslationLanguageStatusChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Translation language status changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self setFilterControllersNeedsUpdateChatItems];
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Translation language status changed" block:&unk_1F1B6EB20];
}

- (void)_reloadChatItemsForScreenTimeChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "ScreenTime status changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) ScreenTime status changed" block:&unk_1F1B6EB40];
}

- (void)_reloadChatItemsForHandleAvailabilityChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Availability changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) IMHandle availability changed" block:&unk_1F1B6EB60];
}

- (void)_reloadChatItemsForKeyTransparencyStatusChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Key Transparency changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) IMHandle key transparency changed" block:&unk_1F1B6EB80];
}

- (void)_reloadChatItemsForSatelliteStateChangeIfRequired:(id)required
{
  v16 = *MEMORY[0x1E69E9840];
  requiredCopy = required;
  chatItemRules = self->_chatItemRules;
  chatItems = [(IMChat *)self chatItems];
  LODWORD(chatItemRules) = [(IMChatItemRules *)chatItemRules _shouldReloadSatelliteChatItems:chatItems];

  v7 = IMOSLoggingEnabled();
  if (chatItemRules)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v12 = 138412546;
        v13 = requiredCopy;
        v14 = 2112;
        v15 = guid;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%@, updating chat items for chat: %@", &v12, 0x16u);
      }
    }

    [(IMChat *)self _updateChatItemsWithReason:requiredCopy block:&unk_1F1B6EBA0];
  }

  else if (v7)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid2 = [(IMChat *)self guid];
      v12 = 138412546;
      v13 = requiredCopy;
      v14 = 2112;
      v15 = guid2;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Skipping chat items update (%@) for chat: %@. Items don't need update", &v12, 0x16u);
    }
  }
}

- (void)_reloadChatItemsForJunkFilteringSettingChange
{
  [(IMChat *)self invalidateSpamIndicatorCachedValuesIfNeeded];

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Chat item update in response to the Filter Junk setting being changed" block:&unk_1F1B6EBC0];
}

- (void)_reloadChatItemsForUnknownSendersFilteringSettingChange
{
  [(IMChat *)self invalidateSpamIndicatorCachedValuesIfNeeded];

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Chat item update in response to the Screen Unknown Senders setting being changed" block:&unk_1F1B6EBE0];
}

- (void)_reloadChatItemsForFilteringChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Filtering status changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Filtering status changed" block:&unk_1F1B6EC00];
}

- (void)reloadChatItemsForSuggestedRepliesChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Suggested replies changed, updating chat items for chat: %@", &v5, 0xCu);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Suggested replies changed" block:&unk_1F1B6EC20];
}

- (void)autoInviteToViewAvailabilityIfNeeded
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8332A90;
  v3[3] = &unk_1E7812908;
  objc_copyWeak(&v4, &location);
  [(IMChat *)self canShareFocusStatusWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)canShareFocusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A8332E58;
  aBlock[3] = &unk_1E7812958;
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if (![(IMChat *)self _canShareStatus])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "Not able to share focus status";
LABEL_10:
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
      }

LABEL_11:
    }

LABEL_12:
    v6[2](v6, 0);
    goto LABEL_13;
  }

  if (![(IMChat *)self isMessagesAuthorizedToAccessFocusStatus])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "Not able to share focus status because Messages is not authorized to access that status";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  mEMORY[0x1E69A7F08] = [MEMORY[0x1E69A7F08] sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A8332F04;
  v10[3] = &unk_1E7812958;
  v11 = v6;
  [mEMORY[0x1E69A7F08] fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:v10];

LABEL_13:
}

- (BOOL)isMessagesAuthorizedToAccessFocusStatus
{
  v2 = [MEMORY[0x1AC56C550](@"INFocusStatusCenter" @"Intents")];
  authorizationStatus = [v2 authorizationStatus];
  if (authorizationStatus <= 1)
  {
    if (authorizationStatus)
    {
      if (authorizationStatus == 1)
      {
        v4 = IMLogHandleForCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E16A0();
        }

        goto LABEL_15;
      }

LABEL_16:
      v5 = 0;
      goto LABEL_17;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v6 = "Focus Status authorization status is not determined. This is unexpected, as we should have prompted on app launch. Treating as not authorized.";
      v7 = &v9;
LABEL_14:
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, v6, v7, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (authorizationStatus == 2)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Focus Status authorization status is denied.";
      v7 = buf;
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v5 = authorizationStatus == 3;
LABEL_17:

  return v5;
}

- (BOOL)_canShareStatus
{
  if ([(IMChat *)self isSMS])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v5 = "Not able to share status in SMS chat";
        v6 = &v16;
LABEL_29:
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
        goto LABEL_30;
      }

      goto LABEL_30;
    }
  }

  else if ([(IMChat *)self isRCS])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v5 = "Not able to share status in RCS chat";
        v6 = &v15;
        goto LABEL_29;
      }

LABEL_30:

      LOBYTE(v3) = 0;
    }
  }

  else if ([MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v5 = "Not able to share status in Apple Store Demo mode.";
        v6 = &v14;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ([(IMChat *)self isBusinessChat])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        v5 = "Not able to share status in business chat";
        v6 = &v13;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ([(IMChat *)self isStewieChat])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        v5 = "Not able to share status in stewie chat";
        v6 = &v12;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ([(IMChat *)self chatStyle]== 45)
  {
    recipient = [(IMChat *)self recipient];
    matchesLoginHandleForAnyAccount = [recipient matchesLoginHandleForAnyAccount];

    if (matchesLoginHandleForAnyAccount)
    {
      v3 = IMOSLoggingEnabled();
      if (v3)
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v10 = 0;
          v5 = "Not able to share status with myself";
          v6 = &v10;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "Not able to share status in non 1-1 chat";
        v6 = buf;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  return v3;
}

- (void)_handleAddressBookChangeForRecipientUID:(id)d
{
  dCopy = d;
  if (-[IMChat isBusinessChat](self, "isBusinessChat") && (-[IMChat recipient](self, "recipient"), v5 = objc_claimAutoreleasedReturnValue(), [v5 ID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(dCopy, "isEqualToString:", v6), v6, v5, v7))
  {
    recipient = [(IMChat *)self recipient];
    name = [recipient name];
    [(IMChat *)self _setDisplayName:name];
  }

  else if (!dCopy)
  {
    [(IMChat *)self invalidateSpamIndicatorCachedValues];
    if ([(IMChat *)self isFiltered]&& [(IMChat *)self hasKnownParticipants])
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "A contact has been added to the chat: Updating isFiltered to NO", v11, 2u);
        }
      }

      [(IMChat *)self updateIsFiltered:0];
    }

    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) AddressBook changed" block:&unk_1F1B6EC40];
  }
}

- (void)_reloadChatItemsForBlockedContactsListChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Blocked contacts list changed to, updating chat items", v4, 2u);
    }
  }

  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Blocked contacts list changed" block:&unk_1F1B6EC60];
}

- (BOOL)_sanityCheckAccounts
{
  v29 = *MEMORY[0x1E69E9840];
  account = [(IMChat *)self account];
  selfCopy = self;
  v5 = +[IMAccountController sharedInstance];
  accounts = [v5 accounts];
  v7 = [accounts containsObjectIdenticalTo:account];

  if ((v7 & 1) == 0)
  {
    v8 = [(IMChat *)selfCopy chatStyle]== 45;
    service = [account service];
    v10 = +[IMAccountController sharedInstance];
    v11 = [v10 bestAccountForService:service];

    if (v8)
    {
      if (!v11)
      {
        recipient = [(IMChat *)selfCopy recipient];
        _chatSiblings = [recipient _chatSiblings];
        if ([_chatSiblings count])
        {
          _bestChatSibling = [recipient _bestChatSibling];
          v15 = +[IMAccountController sharedInstance];
          accounts2 = [v15 accounts];
          account2 = [(IMChat *)_bestChatSibling account];
          v18 = [accounts2 containsObjectIdenticalTo:account2];

          if (v18)
          {
            if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v24 = recipient;
                v25 = 2112;
                v26 = _bestChatSibling;
                v27 = 2112;
                v28 = selfCopy;
                _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "This is a 1-1 chat, the account attached to it is gone, we're re-targeting from: %@ to: %@ (Chat: %@)", buf, 0x20u);
              }
            }

            [(IMChat *)selfCopy setRecipient:_bestChatSibling];
          }
        }

        goto LABEL_25;
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v11;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "This is a 1-1 chat, the account attached to it is gone, we're re-targeting to this account: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!v11 || account == v11)
      {
        goto LABEL_25;
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v24 = v11;
          v25 = 2112;
          v26 = selfCopy;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "This is a group chat, found a new account to attach to: %@  (Chat: %@)", buf, 0x16u);
        }
      }
    }

    [(IMChat *)selfCopy _setAccount:v11];
LABEL_25:
  }

  return v7 ^ 1;
}

- (void)_accountControllerUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v8, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      object = [updatedCopy object];
      v8 = 138412290;
      selfCopy = object;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "_accountControllerUpdated: %@", &v8, 0xCu);
    }
  }

  [(IMChat *)self _sanityCheckAccounts];
}

- (void)_daemonAlive:(id)alive
{
  v8 = *MEMORY[0x1E69E9840];
  aliveCopy = alive;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v6, 0xCu);
    }
  }

  [(IMChat *)self _sanityCheckAccounts];
}

- (void)_daemonDied:(id)died
{
  v8 = *MEMORY[0x1E69E9840];
  diedCopy = died;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v6, 0xCu);
    }
  }
}

- (BOOL)hasStoredMessageWithGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  chatItems = [(IMChat *)self chatItems];
  v6 = [chatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(chatItems);
        }

        _item = [*(*(&v14 + 1) + 8 * i) _item];
        if ([_item type])
        {
          message = 0;
        }

        else
        {
          message = [_item message];
        }

        guid = [message guid];
        if ([guid isEqualToIgnoringCase:dCopy])
        {
          messageID = [message messageID];

          if (messageID > 0)
          {

            LOBYTE(v6) = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [chatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

LABEL_15:

  return v6;
}

- (id)_initWithDictionaryRepresentation:(id)representation items:(id)items participantsHint:(id)hint accountHint:(id)accountHint
{
  v88 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  itemsCopy = items;
  hintCopy = hint;
  accountHintCopy = accountHint;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = MarcoLoggingStringForMessageData();
      *buf = 138412802;
      selfCopy = self;
      v84 = 2112;
      v85 = v11;
      v86 = 2112;
      v87 = itemsCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: _initWithDictionaryRepresentation: %@  dictionary: %@  messages: %@", buf, 0x20u);
    }
  }

  v62 = [representationCopy objectForKey:@"guid"];
  v61 = [representationCopy objectForKey:@"roomName"];
  v60 = [representationCopy objectForKey:@"displayName"];
  v57 = [representationCopy objectForKey:@"properties"];
  v69 = [representationCopy objectForKey:@"lastAddressedLocalHandle"];
  v68 = [representationCopy objectForKey:@"lastAddressedSIMID"];
  v70 = [representationCopy objectForKey:@"groupID"];
  v56 = [representationCopy objectForKey:@"originalGroupID"];
  v12 = [representationCopy objectForKey:@"isFiltered"];
  v13 = [representationCopy objectForKey:@"hasHadSuccessfulQuery"];
  v55 = [representationCopy objectForKey:@"lastMessageTimeStampOnLoad"];
  v67 = [representationCopy objectForKey:*MEMORY[0x1E69A6C48]];
  v66 = [representationCopy objectForKey:@"replySuggestions"];
  v64 = [representationCopy objectForKey:@"isRecovered"];
  v63 = [representationCopy objectForKey:@"isDeletingIncomingMessages"];
  v14 = MEMORY[0x1E695E118];
  if (v12)
  {
    v14 = v12;
  }

  v59 = v14;
  v15 = MEMORY[0x1E695E110];
  if (v13)
  {
    v15 = v13;
  }

  v58 = v15;
  v16 = [representationCopy objectForKey:@"style"];
  intValue = [v16 intValue];

  v17 = [representationCopy objectForKey:@"state"];
  intValue2 = [v17 intValue];

  if (accountHintCopy)
  {
    v76 = accountHintCopy;
  }

  else
  {
    v18 = +[IMAccountController sharedInstance];
    v19 = [representationCopy objectForKey:@"accountID"];
    v76 = [v18 accountForUniqueID:v19];

    if (!v76)
    {
      v20 = +[IMAccountController sharedInstance];
      v21 = [representationCopy objectForKey:@"serviceName"];
      v22 = [IMServiceImpl serviceWithInternalName:v21];
      v76 = [v20 bestAccountForService:v22];
    }
  }

  v72 = hintCopy;
  v75 = v72;
  if (![v72 count])
  {
    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = [representationCopy objectForKey:@"participants"];
    v23 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v23)
    {
      v24 = *v78;
      v25 = *MEMORY[0x1E69A6310];
      v26 = *MEMORY[0x1E69A6390];
      v27 = *MEMORY[0x1E69A62E8];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v78 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v77 + 1) + 8 * i);
          v30 = [v29 objectForKey:v25];
          v31 = [v29 objectForKey:v26];
          v32 = [v29 objectForKey:v27];
          v33 = [v76 imHandleWithID:v30 alreadyCanonical:{objc_msgSend(v30, "_appearsToBePhoneNumber")}];
          if (v33)
          {
            [v75 addObject:v33];
            [v33 _setOriginalID:v31 countryCode:v32 updateSiblings:1];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v23);
    }
  }

  integerValue = [v59 integerValue];
  bOOLValue = [v58 BOOLValue];
  bOOLValue2 = [v64 BOOLValue];
  BYTE2(v51) = [v63 BOOLValue];
  BYTE1(v51) = bOOLValue2;
  LOBYTE(v51) = bOOLValue;
  v37 = [IMChat _initWithGUID:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" account:v62 style:v76 roomName:intValue displayName:v61 lastAddressedHandle:v60 lastAddressedSIMID:0 items:0 participants:itemsCopy isFiltered:v75 hasHadSuccessfulQuery:integerValue isRecovered:v51 isDeletingIncomingMessages:?];
  if (v37)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(selfCopy) = intValue2;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_DEBUG, "Setting initial join state: %d", buf, 8u);
      }
    }

    *(v37 + 21) = intValue2;
    objc_storeStrong(v37 + 43, v57);
    if (!*(v37 + 43))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v40 = *(v37 + 43);
      *(v37 + 43) = Mutable;
    }

    if (*(v37 + 13) != v70)
    {
      objc_storeStrong(v37 + 13, v70);
    }

    objc_storeStrong(v37 + 83, v56);
    if (*(v37 + 12) != v69)
    {
      objc_storeStrong(v37 + 12, v69);
    }

    if (*(v37 + 80) != v68)
    {
      objc_storeStrong(v37 + 80, v68);
    }

    if ((intValue2 - 3) <= 1)
    {
      participants = [v37 participants];
      [v37 _setParticipantState:16 forHandles:participants postNotification:0];
    }

    *(v37 + 34) = [v55 longLongValue];
    if ([v67 count])
    {
      v42 = [MEMORY[0x1E695DFD8] setWithArray:v67];
      v43 = *(v37 + 23);
      *(v37 + 23) = v42;
    }

    if ([v66 count])
    {
      objc_storeStrong(v37 + 24, v66);
    }

    v44 = [representationCopy objectForKey:*MEMORY[0x1E69A6B88]];
    *(v37 + 49) = [v44 BOOLValue];

    v45 = [IMMergedDomainIdentifiers alloc];
    v46 = [representationCopy objectForKey:*MEMORY[0x1E69A6B50]];
    v47 = [(IMMergedDomainIdentifiers *)v45 initWithDomainIdentifiers:v46 chatGUID:*(v37 + 15)];
    v48 = *(v37 + 78);
    *(v37 + 78) = v47;

    v49 = v37;
  }

  return v37;
}

- (void)setSendProgressDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  sendProgress = self->_sendProgress;
  if (delegateCopy)
  {
    context = [(IMSendProgress *)sendProgress context];

    if (context != delegateCopy)
    {
      [(IMSendProgress *)self->_sendProgress setDelegate:0];
      [(IMSendProgress *)self->_sendProgress setContext:0];
      [(IMSendProgress *)self->_sendProgress invalidate];
      v7 = [[IMSendProgress alloc] initWithDelegate:self context:delegateCopy];
      v8 = self->_sendProgress;
      self->_sendProgress = v7;

      v9 = self->_sendProgress;
      _items = [(IMItemsController *)self _items];
      [(IMSendProgress *)v9 updateForItems:_items forced:1];
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v13 = self->_sendProgress;
        v15 = 138412546;
        v16 = guid;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Set send progress delegate for chat %@. Send progress: %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    [(IMSendProgress *)sendProgress setDelegate:0];
    [(IMSendProgress *)self->_sendProgress setContext:0];
    [(IMSendProgress *)self->_sendProgress invalidate];
    v14 = self->_sendProgress;
    self->_sendProgress = 0;
  }
}

- (void)sendProgress:(id)progress progressDidChange:(float)change sendingMessages:(id)messages sendCount:(unint64_t)count totalCount:(unint64_t)totalCount finished:(BOOL)finished
{
  finishedCopy = finished;
  messagesCopy = messages;
  context = [progress context];
  *&v15 = change;
  [context chat:self progressDidChange:messagesCopy sendingMessages:count sendCount:totalCount totalCount:finishedCopy finished:v15];
}

- (void)downloadPurgedAttachments
{
  chatRegistry = [(IMChat *)self chatRegistry];
  [chatRegistry _chat_downloadPurgedAttachmentsForChat:self];
}

- (void)updateSendProgressForPendingTranslation
{
  [(IMSendProgress *)self->_sendProgress setStartSendProgressImmediately:1];
  sendProgress = self->_sendProgress;

  MEMORY[0x1EEE66B58](sendProgress, sel_updateForPendingComposition);
}

- (void)loadInlineRepliesForThreadIdentifier:(id)identifier threadOriginator:(id)originator messageGuid:(id)guid
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  originatorCopy = originator;
  guidCopy = guid;
  v11 = [[IMInlineReplyController alloc] initWithChat:self threadIdentifier:identifierCopy threadOriginator:originatorCopy];
  inlineReplyController = self->_inlineReplyController;
  self->_inlineReplyController = v11;

  [(IMItemsController *)self->_inlineReplyController setCapacity:50];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v16 = 136316162;
      v17 = "[IMChat loadInlineRepliesForThreadIdentifier:threadOriginator:messageGuid:]";
      v18 = 2112;
      v19 = guid;
      v20 = 2112;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = guidCopy;
      v24 = 2112;
      v25 = originatorCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "%s chatGUID: %@, threadIdentifier: %@, messageGUID: %@, threadOriginator: %@", &v16, 0x34u);
    }
  }

  v15 = [(IMChat *)self loadMessagesBeforeAndAfterGUID:guidCopy numberOfMessagesToLoadBeforeGUID:25 numberOfMessagesToLoadAfterGUID:25 loadImmediately:1 threadIdentifier:identifierCopy];
}

- (id)filterControllers
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v4 = v3;
  if (self->_inlineReplyController)
  {
    [v3 addObject:?];
  }

  return v4;
}

- (void)setFilterControllersNeedsUpdateChatItems
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  filterControllers = [(IMChat *)self filterControllers];
  v3 = [filterControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(filterControllers);
        }

        [*(*(&v7 + 1) + 8 * v6++) setNeedsUpdateChatItems];
      }

      while (v4 != v6);
      v4 = [filterControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)canSend
{
  if (-[IMChat isStewieEmergencyChat](self, "isStewieEmergencyChat") && (+[IMChorosMonitor sharedInstance](IMChorosMonitor, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isStewieEmergencyActive], v3, (v4 & 1) == 0))
  {
    v5 = IMOSLoggingEnabled();
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        v7 = "canSend = NO: chat is emergency but emergency is not active";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if ([(IMChat *)self isStewieSharingChat])
  {
    v5 = IMOSLoggingEnabled();
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        v7 = "canSend = NO: chat is stewie sharing";
LABEL_31:
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, v7, v11, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  else if (-[IMChat isStewieRoadsideChat](self, "isStewieRoadsideChat") && (+[IMChorosMonitor sharedInstance](IMChorosMonitor, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isStewieRoadsideActive], v8, (v9 & 1) == 0))
  {
    v5 = IMOSLoggingEnabled();
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        v7 = "canSend = NO: chat is roadside and roadside is not active";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if ([(IMChat *)self allowedByScreenTime])
  {
    if ([(IMChat *)self isOscarChat])
    {
      v5 = IMOSLoggingEnabled();
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          v7 = "canSend = NO: chat is oscar";
          goto LABEL_31;
        }

LABEL_32:

        LOBYTE(v5) = 0;
      }
    }

    else if ([(IMChat *)self hasLeftGroup])
    {
      v5 = IMOSLoggingEnabled();
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          v7 = "canSend = NO: chat has left group";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else if ([(IMChat *)self isReadOnly])
    {
      v5 = IMOSLoggingEnabled();
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          v7 = "canSend = NO: chat is read only";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if ([(IMChat *)self isBusinessChat]&& [(IMChat *)self isMakoChat]&& ![(IMChat *)self _isSendToMakoAllowed])
      {
        v5 = IMOSLoggingEnabled();
        if (!v5)
        {
          return v5;
        }

        v6 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *v11 = 0;
        v7 = "canSend = NO: chat is business && mako and sending to mako is not allowed";
        goto LABEL_31;
      }

      if (-[IMChat isBusinessChat](self, "isBusinessChat") && ([MEMORY[0x1E69A8020] supportsBusinessChat] & 1) == 0)
      {
        v5 = IMOSLoggingEnabled();
        if (!v5)
        {
          return v5;
        }

        v6 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *v11 = 0;
        v7 = "canSend = NO: chat is business but device does not support business chats";
        goto LABEL_31;
      }

      LOBYTE(v5) = 1;
    }
  }

  else
  {
    v5 = IMOSLoggingEnabled();
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        v7 = "canSend = NO: chat is blocked by screen time";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  return v5;
}

- (BOOL)_isSendToMakoAllowed
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"m-reply-enabled"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9[0] = 67109120;
        v9[1] = bOOLValue;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "_isSendToMakoAllowed: Server bag value found: return: %{BOOL}d", v9, 8u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "_isSendToMakoAllowed: No server bag value found: defaulting to NO", v9, 2u);
      }
    }

    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (BOOL)canSendInlineReply
{
  if (qword_1EB2EA378 != -1)
  {
    sub_1A84E16DC();
  }

  if (byte_1EB2EA370)
  {
    LOBYTE(canSend) = 1;
  }

  else
  {
    canSend = [(IMChat *)self canSend];
    if (canSend)
    {

      LOBYTE(canSend) = [(IMChat *)self supportsCapabilities:4];
    }
  }

  return canSend;
}

- (int64_t)_uncachedInterworkingState
{
  v43 = *MEMORY[0x1E69E9840];
  _lastInterworkedMessage = [(IMItemsController *)self _lastInterworkedMessage];
  v4 = _lastInterworkedMessage;
  if (_lastInterworkedMessage)
  {
    originalServiceName = [_lastInterworkedMessage originalServiceName];
    if (originalServiceName)
    {
      v6 = originalServiceName;
      account = [(IMChat *)self account];
      service = [account service];

      if (service)
      {
        v9 = MEMORY[0x1E695DFD8];
        service2 = [v4 service];
        originalServiceName2 = [v4 originalServiceName];
        v12 = [v9 setWithObjects:{service2, originalServiceName2, 0}];

        _lastSentMessage = [(IMItemsController *)self _lastSentMessage];
        v14 = _lastSentMessage;
        if (v4 == _lastSentMessage)
        {
          [_lastSentMessage wasInterworked];
          v21 = 1;
        }

        else
        {
          service3 = [_lastSentMessage service];
          v16 = [v12 containsObject:service3];

          if (!v16)
          {
            goto LABEL_28;
          }

          v37 = v14;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          _sentMessagesSinceInterworking = [(IMItemsController *)self _sentMessagesSinceInterworking];
          v18 = [_sentMessagesSinceInterworking countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v39;
            v21 = 1;
            while (1)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v39 != v20)
                {
                  objc_enumerationMutation(_sentMessagesSinceInterworking);
                }

                v23 = *(*(&v38 + 1) + 8 * i);
                service4 = [v23 service];
                if (![v12 containsObject:service4])
                {

LABEL_15:
                  v21 = 0;
                  continue;
                }

                isDelivered = [v23 isDelivered];

                if (isDelivered)
                {
                  goto LABEL_15;
                }
              }

              v19 = [_sentMessagesSinceInterworking countByEnumeratingWithState:&v38 objects:v42 count:16];
              if (!v19)
              {
                goto LABEL_26;
              }
            }
          }

          v21 = 1;
LABEL_26:

          v14 = v37;
          if (([v37 wasInterworked] & 1) == 0 && (v21 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        account2 = [(IMChat *)self account];
        service5 = [account2 service];
        name = [service5 name];
        v30 = [v12 containsObject:name];

        if (v30)
        {
          lastIncomingFinishedMessageItem = [(IMItemsController *)self lastIncomingFinishedMessageItem];
          if (!lastIncomingFinishedMessageItem || v21 & 1 | (([v4 isOlderThanItem:lastIncomingFinishedMessageItem] & 1) == 0) || objc_msgSend(v14, "wasInterworked") && (objc_msgSend(lastIncomingFinishedMessageItem, "service"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "service"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToString:", v34), v34, v33, v35))
          {
            service6 = [v4 service];
            [(IMChat *)self setInterworkingService:service6];

            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          goto LABEL_33;
        }

LABEL_28:
        v26 = 2;
LABEL_33:

        goto LABEL_34;
      }
    }
  }

  v26 = 2;
LABEL_34:

  return v26;
}

- (void)_recalculateIsInterworking
{
  interworkingState = [(IMChat *)self interworkingState];
  [(IMChat *)self setInterworkingState:[(IMChat *)self _uncachedInterworkingState]];
  if ([(IMChat *)self interworkingState]!= interworkingState)
  {

    [(IMChat *)self _postNotification:@"__kIMChatInterworkingStateChangedNotification" userInfo:0];
  }
}

- (BOOL)isInterworking
{
  if (![(IMChat *)self interworkingState])
  {
    [(IMChat *)self _recalculateIsInterworking];
  }

  return [(IMChat *)self interworkingState]== 1;
}

- (NSString)interworkingService
{
  if ([(IMChat *)self isInterworking])
  {
    v3 = self->_interworkingService;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasLeftGroup
{
  isGroupChat = [(IMChat *)self isGroupChat];
  if (isGroupChat)
  {
    isGroupChat = [(IMChat *)self _canLeaveChatIgnoringParticipantCount:[(IMChat *)self _serviceSupportsCapability:*MEMORY[0x1E69A7970]]];
    if (isGroupChat)
    {
      LOBYTE(isGroupChat) = [(IMChat *)self joinState]!= 3 && [(IMChat *)self joinState]!= 2;
    }
  }

  return isGroupChat;
}

- (void)_updateRepliesIfNecessaryWithItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    threadOriginator = [v6 threadOriginator];
    v9 = threadOriginator;
    if (threadOriginator)
    {
      v10 = threadOriginator;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;

    replyCountsByPart = [v11 replyCountsByPart];
    if (replyCountsByPart)
    {
      guid = [v11 guid];
      _items = [(IMItemsController *)self _items];
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A8335A38;
      v19[3] = &unk_1E78129D0;
      v20 = _items;
      v21 = v7;
      v22 = replyCountsByPart;
      v23 = v11;
      v24 = guid;
      v25 = v15;
      selfCopy = self;
      v16 = v15;
      v17 = guid;
      v18 = _items;
      [(IMChat *)self _updateChatItemsWithReason:@"Update items with thread originator (reply counts)" block:v19];
    }
  }
}

- (void)_updateRepliesIfNecessaryWithRemovedItems:(id)items threadIdentifiersOfRemovedParts:(id)parts
{
  v53 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  partsCopy = parts;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = itemsCopy;
  v37 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v37)
  {
    v6 = 0;
    v34 = 0;
    Mutable = 0;
    v36 = *v45;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          replyCountsByPart = [v9 replyCountsByPart];

          if (replyCountsByPart)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            guid = [v9 guid];
            [v6 addObject:guid];

            guid2 = [v9 guid];
            [(__CFDictionary *)Mutable removeObjectForKey:guid2];
          }

          threadOriginator = [v9 threadOriginator];

          if (threadOriginator)
          {
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            if (!v34)
            {
              v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            guid3 = [v9 guid];
            [v34 addObject:guid3];

            threadOriginator2 = [v9 threadOriginator];
            guid4 = [threadOriginator2 guid];
            threadIdentifier = [v9 threadIdentifier];
            if (([v6 containsObject:guid4] & 1) == 0 && (objc_msgSend(partsCopy, "containsObject:", threadIdentifier) & 1) == 0)
            {
              v43 = 0;
              IMMessageThreadIdentifierGetComponents();
              v18 = 0;
              if (v18)
              {
                v19 = v18;
                v20 = [(__CFDictionary *)Mutable objectForKey:guid4];
                if (!v20)
                {
                  replyCountsByPart2 = [threadOriginator2 replyCountsByPart];
                  v20 = [replyCountsByPart2 mutableCopy];

                  if (v20)
                  {
                    [(__CFDictionary *)Mutable setObject:v20 forKey:guid4];
                  }
                }

                v22 = [v20 objectForKey:v19];
                unsignedIntegerValue = [v22 unsignedIntegerValue];

                if (unsignedIntegerValue)
                {
                  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue - 1];
                  [v20 setObject:v24 forKey:v19];
                }
              }

              else if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  guid5 = [v9 guid];
                  *buf = 138412546;
                  v49 = guid5;
                  v50 = 2112;
                  v51 = threadIdentifier;
                  _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "When attempting to remove message %@, no part identifier was found for thread identifier %@", buf, 0x16u);
                }
              }
            }
          }
        }
      }

      v37 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v37);
  }

  else
  {
    v6 = 0;
    v34 = 0;
    Mutable = 0;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1A83362AC;
  v38[3] = &unk_1E78129F8;
  v38[4] = self;
  v39 = v34;
  v40 = v6;
  v41 = Mutable;
  v42 = partsCopy;
  v27 = partsCopy;
  v28 = Mutable;
  v29 = v6;
  v30 = v34;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Decrement reply counts" block:v38];
}

- (id)muteUntilDate
{
  mEMORY[0x1E69A8180] = [MEMORY[0x1E69A8180] sharedList];
  v4 = [mEMORY[0x1E69A8180] unmuteDateForChat:self];

  return v4;
}

- (void)setMuteUntilDate:(id)date
{
  v4 = MEMORY[0x1E69A8180];
  dateCopy = date;
  sharedList = [v4 sharedList];
  [sharedList muteChat:self untilDate:dateCopy];
}

- (IMDaemonProtocol)remoteDaemon
{
  daemonController = [(IMChat *)self daemonController];
  remoteDaemon = [daemonController remoteDaemon];

  return remoteDaemon;
}

- (id)_lastKTVerifierResultForParticipant:(id)participant
{
  v26 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  v5 = +[IMKeyTransparencyController sharedController];
  v6 = [participantCopy ID];
  _stripFZIDPrefix = [v6 _stripFZIDPrefix];
  v8 = [v5 ktVerifierResultForHandleID:_stripFZIDPrefix];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    _keyTransparencyVerifier = [(IMChat *)self _keyTransparencyVerifier];
    v11 = [participantCopy ID];
    _stripFZIDPrefix2 = [v11 _stripFZIDPrefix];
    v13 = IMChatCanonicalIDSIDsForAddress();

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v13;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Could not find a kt verifier result for handle: %@  initializing to Pending", &v24, 0xCu);
      }
    }

    v15 = MEMORY[0x1E69DB500];
    applicationIdentifier = [_keyTransparencyVerifier applicationIdentifier];
    v17 = [v15 addApplicationPrefixForIdentifier:applicationIdentifier uri:v13];

    v18 = objc_alloc(MEMORY[0x1E69DB4F8]);
    applicationIdentifier2 = [_keyTransparencyVerifier applicationIdentifier];
    v9 = [v18 initPendingForUri:v17 application:applicationIdentifier2];

    v20 = +[IMKeyTransparencyController sharedController];
    v21 = [participantCopy ID];
    _stripFZIDPrefix3 = [v21 _stripFZIDPrefix];
    [v20 setKTVerifierResult:v9 forHandleID:_stripFZIDPrefix3];
  }

  return v9;
}

- (id)_ktQueue
{
  if (qword_1EB2E9130 != -1)
  {
    sub_1A84E16F0();
  }

  v3 = qword_1EB2E9138;

  return v3;
}

- (void)markKTFailureSeen
{
  v28 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    _keyTransparencyVerifier = [(IMChat *)self _keyTransparencyVerifier];
    participants = [(IMChat *)self participants];
    v7 = [participants copy];

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(IMChat *)self _lastKTVerifierResultForParticipant:*(*(&v23 + 1) + 8 * v13)];
          if (v14)
          {
            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    _ktQueue = [(IMChat *)self _ktQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8336CC0;
    block[3] = &unk_1E7810D08;
    v20 = _keyTransparencyVerifier;
    v21 = v8;
    v22 = v9;
    v16 = v9;
    v17 = v8;
    v18 = _keyTransparencyVerifier;
    dispatch_async(_ktQueue, block);
  }
}

- (void)ignoreKTFailure
{
  v55 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    _keyTransparencyVerifier = [(IMChat *)self _keyTransparencyVerifier];
    v4 = MEMORY[0x1E695DF70];
    participants = [(IMChat *)self participants];
    v38 = [v4 arrayWithCapacity:{objc_msgSend(participants, "count")}];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    participants2 = [(IMChat *)self participants];
    v7 = [participants2 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v7)
    {
      v8 = *v46;
      do
      {
        v9 = 0;
        do
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(participants2);
          }

          v10 = [(IMChat *)self _lastKTVerifierResultForParticipant:*(*(&v45 + 1) + 8 * v9)];
          if (v10)
          {
            [v38 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [participants2 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v7);
    }

    v44 = 0;
    [_keyTransparencyVerifier ignoreFailureForResults:v38 error:&v44];
    v33 = v44;
    if (v33)
    {
      v11 = MEMORY[0x1E695DF70];
      participants3 = [(IMChat *)self participants];
      v36 = [v11 arrayWithCapacity:{objc_msgSend(participants3, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = [(IMChat *)self participants];
      v13 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
      if (v13)
      {
        v35 = *v41;
        do
        {
          v14 = 0;
          do
          {
            if (*v41 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v40 + 1) + 8 * v14);
            v16 = +[IMKeyTransparencyController sharedController];
            v17 = [v15 ID];
            _stripFZIDPrefix = [v17 _stripFZIDPrefix];
            v19 = [v16 idsIDInfoResultForHandleID:_stripFZIDPrefix];

            v20 = [v19 uri];
            v21 = MEMORY[0x1E69DB500];
            applicationIdentifier = [_keyTransparencyVerifier applicationIdentifier];
            v23 = [v21 addApplicationPrefixForIdentifier:applicationIdentifier uri:v20];

            v24 = +[IMKeyTransparencyController sharedController];
            v25 = [v15 ID];
            _stripFZIDPrefix2 = [v25 _stripFZIDPrefix];
            v27 = [v24 ktVerifierResultForHandleID:_stripFZIDPrefix2];

            v28 = MEMORY[0x1E696AEC0];
            name = [v15 name];
            v30 = [v28 stringWithFormat:@"(name:%@, uri:%@, uiStatus:%lu)", name, v23, objc_msgSend(v27, "uiStatus")];

            [v36 addObject:v30];
            ++v14;
          }

          while (v13 != v14);
          v13 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
        }

        while (v13);
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v36 componentsJoinedByString:@" "];;
          *buf = 138412546;
          v50 = v32;
          v51 = 2112;
          v52 = v33;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "IMChat_KT There was an error ignoring the KT failure for participants [%@] with error: %@", buf, 0x16u);
        }
      }
    }

    [(IMChat *)self fetchKTStatus];
  }
}

- (unint64_t)conversationKTUIStatus
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  participants = [(IMChat *)self participants];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(participants, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  participants2 = [(IMChat *)self participants];
  v7 = [participants2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(participants2);
        }

        v11 = [(IMChat *)self _lastKTVerifierResultForParticipant:*(*(&v15 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [participants2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  _keyTransparencyVerifier = [(IMChat *)self _keyTransparencyVerifier];
  v13 = [_keyTransparencyVerifier getDisplayStatusForResults:v5 isSelfOptedIn:IMIsEnrolledInContactKeyVerification()];

  return v13;
}

- (id)getParticipantsWithKTUIStatus:(unint64_t)status
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(IMChat *)self participants];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = +[IMKeyTransparencyController sharedController];
        v11 = [v9 ID];
        _stripFZIDPrefix = [v11 _stripFZIDPrefix];
        v13 = [v10 ktVerifierResultForHandleID:_stripFZIDPrefix];

        if ([v13 uiStatus] == status)
        {
          [array addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return array;
}

- (unint64_t)getKTDisplayStatusAndRelatedPeerHandles:(id *)handles
{
  v41 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (!isKeyTransparencyEnabled)
  {
    return 0;
  }

  conversationKTUIStatus = [(IMChat *)self conversationKTUIStatus];
  v28 = [(IMChat *)self getParticipantsWithKTUIStatus:?];
  v29 = IMKeyTransparencyStatusFromKTUIStatus(conversationKTUIStatus, [(IMChat *)self isLastIncomingFinishedMessageNotiMessage]^ 1);
  self->_ktStatus = v29;
  if (handles && v28)
  {
    *handles = v28;
  }

  if (v29)
  {
    array = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v28;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v9)
    {
      v10 = *v31;
      do
      {
        v11 = 0;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v30 + 1) + 8 * v11);
          v13 = +[IMKeyTransparencyController sharedController];
          v14 = [v12 ID];
          _stripFZIDPrefix = [v14 _stripFZIDPrefix];
          v16 = [v13 idsIDInfoResultForHandleID:_stripFZIDPrefix];

          v17 = [v16 uri];

          if (v17)
          {
            v18 = [v16 uri];
            [array addObject:v18];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v9);
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:conversationKTUIStatus];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v29];
        v22 = [array componentsJoinedByString:{@", "}];
        *buf = 138412802;
        v35 = v20;
        v36 = 2112;
        v37 = v21;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Received KT display status %@/IM status %@ for %@", buf, 0x20u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:conversationKTUIStatus];
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      *buf = 138412546;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Received KT display status %@/IM status %@", buf, 0x16u);
    }
  }

  return v29;
}

- (void)fetchKTStatus
{
  if (IMIsEnrolledInContactKeyVerification())
  {

    MEMORY[0x1EEE66B58](self, sel__refreshKTData);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Self is not opted in, returning early before requesting status.", v4, 2u);
      }
    }

    self->_ktStatus = 0;
  }
}

- (id)_keyTransparencyVerifier
{
  v2 = +[IMKeyTransparencyController sharedController];
  verifier = [v2 verifier];

  return verifier;
}

- (BOOL)_lastKnownHybridState
{
  v2 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6C00]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isBlackHoled
{
  v2 = [(IMChat *)self valueForChatProperty:*MEMORY[0x1E69A6BA8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_updateLastKnownHybridState:(BOOL)state
{
  stateCopy = state;
  if ([(IMChat *)self _lastKnownHybridState]!= state)
  {
    v5 = +[IMDaemonController sharedController];
    synchronousRemoteDaemon = [v5 synchronousRemoteDaemon];
    guid = [(IMChat *)self guid];
    [synchronousRemoteDaemon chat:guid updateLastKnownHybridState:stateCopy];
  }

  return stateCopy;
}

- (BOOL)_serviceSupportsCapability:(id)capability
{
  capabilityCopy = capability;
  account = [(IMChat *)self account];
  v6 = [account _hasSuppressionForCapability:capabilityCopy];

  if ((v6 & 1) == 0)
  {
    account2 = [(IMChat *)self account];
    service = [account2 service];
    v17 = [service supportsCapability:capabilityCopy];
    goto LABEL_12;
  }

  lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
  service = [(IMChat *)self lastAddressedSIMID];
  if (!(lastAddressedHandleID | service))
  {
    account3 = [(IMChat *)self account];
    lastAddressedHandleID = [account3 displayName];
    goto LABEL_7;
  }

  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  v11 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:service];

  if (v11)
  {
    account3 = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo2 = [account3 ctSubscriptionInfo];
    v14 = [ctSubscriptionInfo2 __im_subscriptionContextForForSimID:service];
    phoneNumber = [v14 phoneNumber];

    lastAddressedHandleID = phoneNumber;
LABEL_7:
  }

  _stripFZIDPrefix = [lastAddressedHandleID _stripFZIDPrefix];

  if ([_stripFZIDPrefix _appearsToBePhoneNumber])
  {
    IMNormalizePhoneNumber();
  }

  else
  {
    IMCanonicalizeFormattedString();
  }
  account2 = ;

  account4 = [(IMChat *)self account];
  v17 = [account4 supportsCapability:capabilityCopy forAlias:account2 simID:service];

LABEL_12:
  return v17;
}

- (BOOL)accountMatchesLastFinishedMessageItem
{
  lastFinishedMessageItem = [(IMChat *)self lastFinishedMessageItem];
  service = [lastFinishedMessageItem service];
  account = [(IMChat *)self account];
  service2 = [account service];
  internalName = [service2 internalName];
  v8 = [service isEqualToString:internalName];

  return v8;
}

- (void)_enumerateUnderlyingChatInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(IMChat *)self _guids];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = +[IMChatRegistry sharedRegistry];
        chatGUIDToInfoMap = [v10 chatGUIDToInfoMap];
        v12 = [chatGUIDToInfoMap objectForKeyedSubscript:v9];

        if (v12)
        {
          infoCopy[2](infoCopy, v9, v12);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)_privateInitWithAccount:(id)account style:(unsigned __int8)style roomName:(id)name messages:(id)messages participants:(id)participants isFiltered:(int64_t)filtered hasHadSuccessfulQuery:(BOOL)query isRecovered:(BOOL)self0 isDeletingIncomingMessages:(BOOL)self1
{
  styleCopy = style;
  selfCopy = self;
  v17 = MEMORY[0x1E696AEC0];
  participantsCopy = participants;
  nameCopy = name;
  accountCopy = account;
  stringGUID = [v17 stringGUID];
  BYTE2(v24) = incomingMessages;
  LOWORD(v24) = __PAIR16__(recovered, query);
  v22 = [IMChat _initWithGUID:selfCopy account:"_initWithGUID:account:style:roomName:displayName:lastAddressedHandle:lastAddressedSIMID:items:participants:isFiltered:hasHadSuccessfulQuery:isRecovered:isDeletingIncomingMessages:" style:stringGUID roomName:accountCopy displayName:styleCopy lastAddressedHandle:nameCopy lastAddressedSIMID:0 items:0 participants:0 isFiltered:0 hasHadSuccessfulQuery:participantsCopy isRecovered:filtered isDeletingIncomingMessages:v24];

  return v22;
}

- (BOOL)_processSupportsHistory
{
  daemonController = [(IMChat *)self daemonController];
  processCapabilities = [daemonController processCapabilities];

  return ((processCapabilities & 0x4000004) != 0) & (processCapabilities >> 13);
}

- (id)loadMessagesUpToGUID:(id)d limit:(unint64_t)limit
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(IMChat *)self _processSupportsHistory])
  {
    date = [MEMORY[0x1E695DF00] date];
    v8 = [(IMChat *)self loadMessagesUpToGUID:dCopy date:date limit:limit loadImmediately:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v12 = 138412546;
        v13 = dCopy;
        v14 = 2112;
        v15 = guid;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Load messages up to GUID %@ for %@ rejected, client does not have history capability", &v12, 0x16u);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)loadMessagesBeforeDate:(id)date limit:(unint64_t)limit
{
  v13 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if ([(IMChat *)self _processSupportsHistory])
  {
    v7 = [(IMChat *)self loadMessagesBeforeDate:dateCopy limit:limit loadImmediately:0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v11 = 138412290;
        v12 = guid;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Load messages before date for %@ rejected, client does not have history capability", &v11, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)_fetchMessagesUpToLimit:(unint64_t)limit synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(IMChat *)self _processSupportsHistory])
  {
    v9 = [(IMChat *)self _fetchMessagesUpToGUID:0 limit:limit synchronous:synchronousCopy completion:completionCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        v13 = 138412290;
        v14 = guid;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Load messages before date for %@ rejected, client does not have history capability", &v13, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)_fetchMessagesUpToGUID:(id)d limit:(unint64_t)limit synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if ([(IMChat *)self _processSupportsHistory])
  {
    kdebug_trace();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A8339988;
    v16[3] = &unk_1E7812A40;
    v16[4] = self;
    limitCopy = limit;
    v17 = dCopy;
    v20 = synchronousCopy;
    v18 = completionCopy;
    v12 = [(IMChat *)self _performQueryWithKey:@"HistoryLoading" loadImmediately:synchronousCopy block:v16];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        *buf = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = guid;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Load messages up to GUID %@ for %@ rejected, client does not have history capability", buf, 0x16u);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)_fetchMessagesBeforeAndAfterGUID:(id)d numberOfMessagesToLoadBeforeGUID:(unint64_t)iD numberOfMessagesToLoadAfterGUID:(unint64_t)uID threadIdentifier:(id)identifier synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  if (![(IMChat *)self _processSupportsHistory])
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        *buf = 138412290;
        v34 = guid;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Load messages for %@ rejected, client does not have history capability", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  if (![dCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Trying to loadMessagesBeforeAndAfterGUID with a null messageGUID. Please call loadMessagesUpToGUID if a messageGUID is not specified, Returning early", buf, 2u);
      }
    }

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v17 = @"PagedInlineReplyHistoryLoading";
  if (!identifierCopy)
  {
    v17 = @"PagedHistoryLoading";
  }

  v18 = v17;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v34 = dCopy;
      v35 = 2048;
      iDCopy = iD;
      v37 = 2048;
      uIDCopy = uID;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Begin loadMessagesBeforeAndAfterGUID: %@ numberOfMessagesBeforeGUID: %lu numberOfMessagesAfterGUID: %lu", buf, 0x20u);
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1A8339D74;
  v25[3] = &unk_1E7812A68;
  iDCopy2 = iD;
  uIDCopy2 = uID;
  v26 = dCopy;
  selfCopy = self;
  v28 = identifierCopy;
  v32 = synchronousCopy;
  v29 = completionCopy;
  v20 = [(IMChat *)self _performQueryWithKey:v18 loadImmediately:synchronousCopy block:v25 completion:&unk_1F1B6ED20];

LABEL_19:

  return v20;
}

- (void)fetchMessageHistoryForDateInterval:(id)interval completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  guid = [(IMChat *)self guid];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = intervalCopy;
      v25 = 2112;
      v26 = guid;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Queueing fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A833A1E8;
  v17[3] = &unk_1E7812AD8;
  v18 = intervalCopy;
  v19 = guid;
  selfCopy = self;
  v22 = 0;
  v21 = completionCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A833A4D0;
  v13[3] = &unk_1E7812B00;
  v14 = v18;
  v15 = v19;
  v16 = v21;
  v10 = v21;
  v11 = v19;
  v12 = v18;
  [(IMChat *)self _performQueryWithKey:@"MessageHistorySummaryLoading" loadImmediately:0 block:v17 completion:v13];
}

- (void)fetchOldestMessageDateWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  guid = [(IMChat *)self guid];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = guid;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Queueing fetchOldestMessageDate chatGUID: %@", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A833A814;
  v12[3] = &unk_1E7812B50;
  v13 = guid;
  selfCopy = self;
  v16 = 0;
  v15 = completionCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A833AADC;
  v9[3] = &unk_1E7812B78;
  v10 = v13;
  v11 = v15;
  v7 = v15;
  v8 = v13;
  [(IMChat *)self _performQueryWithKey:@"OldestMessageDateLoading" loadImmediately:0 block:v12 completion:v9];
}

- (id)loadFrequentRepliesLimit:(unint64_t)limit loadImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v15 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self _processSupportsHistory])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A833ADA0;
    v11[3] = &unk_1E7812BA0;
    v11[4] = self;
    v11[5] = limit;
    v12 = immediatelyCopy;
    v7 = [(IMChat *)self _performQueryWithKey:@"FrequentRepliesLoading" loadImmediately:immediatelyCopy block:v11];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        *buf = 138412290;
        v14 = guid;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Load frequent replies for %@ rejected, client does not have history capability", buf, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)loadUnreadMessagesWithLimit:(unint64_t)limit fallbackToMessagesUpToGUID:(id)d loadImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(IMChat *)self _processSupportsHistory])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A833AFCC;
    v13[3] = &unk_1E7812BC8;
    v13[4] = self;
    limitCopy = limit;
    v14 = dCopy;
    v16 = immediatelyCopy;
    v9 = [(IMChat *)self _performQueryWithKey:@"UnreadLoading" loadImmediately:immediatelyCopy block:v13];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self guid];
        *buf = 138412290;
        v18 = guid;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Load unread messages for %@ rejected, client does not have history capability", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (void)_setAttachments:(id)attachments
{
  if (self->_attachments != attachments)
  {
    v4 = [attachments copy];
    self->_attachments = v4;

    MEMORY[0x1EEE66BB8](v4);
  }
}

- (void)_setCountOfMessagesMarkedAsSpam:(id)spam
{
  if (self->_countOfMessagesMarkedAsSpam != spam)
  {
    v4 = [spam copy];
    self->_countOfMessagesMarkedAsSpam = v4;

    MEMORY[0x1EEE66BB8](v4);
  }
}

- (void)_setCountOfAttachmentsNotCachedLocally:(id)locally
{
  locallyCopy = locally;
  if (locallyCopy)
  {
    v7 = locallyCopy;
    locallyCopy = [(NSNumber *)self->_countOfAttachmentsNotCachedLocally isEqualToNumber:locallyCopy];
    if ((locallyCopy & 1) == 0)
    {
      v5 = [v7 copy];
      countOfAttachmentsNotCachedLocally = self->_countOfAttachmentsNotCachedLocally;
      self->_countOfAttachmentsNotCachedLocally = v5;
    }
  }

  MEMORY[0x1EEE66BB8](locallyCopy);
}

- (void)loadAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A833B288;
  v9[3] = &unk_1E7812700;
  v9[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A833B2FC;
  v7[3] = &unk_1E7812B78;
  v7[4] = self;
  v8 = attachmentsCopy;
  v5 = attachmentsCopy;
  v6 = [(IMChat *)self _performQueryWithKey:@"LoadAttachmentsAsync" loadImmediately:0 block:v9 completion:v7];
}

- (BOOL)isCurrentlyDownloadingPurgedAttachments
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A833B46C;
  v5[3] = &unk_1E7812700;
  v5[4] = self;
  v3 = [(IMChat *)self _performQueryWithKey:@"IsCurrentlyDownloadingPurgedAttachments" loadImmediately:1 block:v5];
  return self->_isCurrentlyDownloadingPurgedAssets;
}

- (void)fetchIsCurrentlyDownloadingPurgedAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A833B5CC;
  v9[3] = &unk_1E7812700;
  v9[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A833B640;
  v7[3] = &unk_1E7812840;
  v7[4] = self;
  v8 = attachmentsCopy;
  v5 = attachmentsCopy;
  v6 = [(IMChat *)self _performQueryWithKey:@"IsCurrentlyDownloadingPurgedAttachments" loadImmediately:0 block:v9 completion:v7];
}

- (void)deleteTransfers:(id)transfers
{
  transfersCopy = transfers;
  chatItems = [(IMChat *)self chatItems];
  [(IMChat *)self _deleteTransfersWithGUIDs:transfersCopy fromChatItems:chatItems];
}

- (void)deleteChatItemsWithTransferGUIDs:(id)ds fromMessageItem:(id)item
{
  v10[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dsCopy = ds;
  [itemCopy _refreshContextWithAccountHandles];
  v10[0] = itemCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v9 = [(IMChat *)self chatItemsForItems:v8];

  [(IMChat *)self _deleteTransfersWithGUIDs:dsCopy fromChatItems:v9];
}

- (void)_deleteTransfersWithGUIDs:(id)ds fromChatItems:(id)items
{
  v51 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = dsCopy;
      v49 = 2112;
      v50 = itemsCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Delete transfer guids: %@ from chatItems: %@", buf, 0x16u);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:dsCopy];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = itemsCopy;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v30)
  {
    v29 = *v41;
    do
    {
      v32 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * v32);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            aggregateAttachmentParts = [v9 aggregateAttachmentParts];
          }

          else
          {
            v45 = v9;
            v11 = MEMORY[0x1E695DEC8];
            v12 = v9;
            aggregateAttachmentParts = [v11 arrayWithObjects:&v45 count:1];
          }

          array = [MEMORY[0x1E695DF70] array];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = sub_1A833BC48;
          v37[3] = &unk_1E7812BF0;
          v38 = v7;
          v14 = array;
          v39 = v14;
          [aggregateAttachmentParts enumerateObjectsUsingBlock:v37];
          v15 = [aggregateAttachmentParts count];
          if (v15 == [v14 count])
          {
            [v8 addObject:v9];
          }

          else
          {
            [v8 addObjectsFromArray:v14];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          visibleAssociatedMessageChatItems = [v9 visibleAssociatedMessageChatItems];
          if ([visibleAssociatedMessageChatItems count])
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v16 = visibleAssociatedMessageChatItems;
            v17 = [v16 countByEnumeratingWithState:&v33 objects:v44 count:16];
            if (v17)
            {
              v18 = *v34;
              do
              {
                v19 = 0;
                do
                {
                  if (*v34 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v20 = *(*(&v33 + 1) + 8 * v19);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v21 = v20;
                    transferGUID = [v21 transferGUID];
                    v23 = [v7 containsObject:transferGUID];

                    if (v23)
                    {
                      transferGUID2 = [v21 transferGUID];
                      [v7 removeObject:transferGUID2];

                      [v8 addObject:v21];
                    }
                  }

                  ++v19;
                }

                while (v17 != v19);
                v17 = [v16 countByEnumeratingWithState:&v33 objects:v44 count:16];
              }

              while (v17);
            }
          }
        }

        ++v32;
      }

      while (v32 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v30);
  }

  remoteDaemon = [(IMChat *)self remoteDaemon];
  [remoteDaemon fileTransfersRecoverablyDeleted:v7];

  [(IMChat *)self deleteChatItems:v8 fromChatItems:obj];
}

- (void)watermarkInForScrutinyMode
{
  if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    scrutinyModeAttemptCount = [(IMChat *)self scrutinyModeAttemptCount];
    _renderingDataDictionary = [(IMChat *)self _renderingDataDictionary];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scrutinyModeAttemptCount + 1];
    [_renderingDataDictionary setObject:v4 forKey:@"acnt"];

    [(IMChat *)self _setRenderingDataDictionary:_renderingDataDictionary];
  }
}

- (unint64_t)scrutinyModeAttemptCount
{
  Mutable = [(IMChat *)self _renderingDataDictionary];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v3 = [Mutable objectForKey:@"acnt"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)_serverBagPreventsScrutinyMode
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disableScrutinyMode"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = @"YES";
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Server has disabled scrutiny mode %@", &v7, 0xCu);
    }
  }

  return bOOLValue;
}

- (BOOL)isInScrutinyMode
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self _serverBagPreventsScrutinyMode]|| (IMIsRunningInMessagesAssistantExtension() & 1) != 0)
  {
    return 0;
  }

  scrutinyModeAttemptCount = [(IMChat *)self scrutinyModeAttemptCount];
  if ((scrutinyModeAttemptCount & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (scrutinyModeAttemptCount >= 4)
    {
      [(IMChat *)self clearScrutinyMode];
    }

    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      chatIdentifier = [(IMChat *)self chatIdentifier];
      v7 = 138412546;
      v8 = chatIdentifier;
      v9 = 2112;
      v10 = @"YES";
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "isInScrutinyModeForAttemptCount chat %@ result %@", &v7, 0x16u);
    }
  }

  return 1;
}

- (void)watermarkOutForScrutinyMode
{
  if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    _renderingDataDictionary = [(IMChat *)self _renderingDataDictionary];
    [_renderingDataDictionary setObject:&unk_1F1BA17B8 forKey:@"acnt"];
    [(IMChat *)self _setRenderingDataDictionary:_renderingDataDictionary];
  }
}

+ (BOOL)isGUIDInAttemptingListInScrutinyMode:(id)mode
{
  modeCopy = mode;
  v4 = IMGetCachedDomainValueForKey();
  v5 = v4;
  v6 = v4 && ([v4 isEqualToString:modeCopy] & 1) != 0;

  return v6;
}

- (void)clearScrutinyMode
{
  [(IMChat *)self _setRenderingDataDictionary:0];
  chatScrutinyController = [(IMChat *)self chatScrutinyController];
  [chatScrutinyController setTranscriptRenderingMetadata:0 forChatIdentifier:0];
}

- (NSArray)chatItems
{
  v18 = *MEMORY[0x1E69E9840];
  chatItemRules = self->_chatItemRules;
  if (!chatItemRules)
  {
    iMCoreSetupTimingCollection = [MEMORY[0x1E69A6170] IMCoreSetupTimingCollection];
    [iMCoreSetupTimingCollection startTimingForKey:@"IMCoreSetup: Generate chat items"];
    v5 = [objc_alloc(+[IMChat chatItemRulesClass](IMChat "chatItemRulesClass"))];
    v6 = self->_chatItemRules;
    self->_chatItemRules = v5;

    _items = [(IMItemsController *)self _items];
    v8 = self->_chatItemRules;
    _chatItems = [(IMChatItemRules *)v8 _chatItems];
    _IMChatItemsReplaceWithChatItemsForItems(_chatItems, v8, _items);
    [(IMChatItemRules *)v8 _didProcessChatItems:_chatItems];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(_chatItems, "count")}];
        v14 = 136315394;
        v15 = "[IMChat(IMChatItem) chatItems]";
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "%s Configuring chatItemRules and chatItems, count: %@", &v14, 0x16u);
      }
    }

    [iMCoreSetupTimingCollection stopTimingForKey:@"IMCoreSetup: Generate chat items"];

    chatItemRules = self->_chatItemRules;
  }

  _chatItems2 = [(IMChatItemRules *)chatItemRules _chatItems];

  return _chatItems2;
}

- (BOOL)wantsSenderBlackholeWarning
{
  if (!self || (senderBlackholeWarningStatus = self->_senderBlackholeWarningStatus) == 0)
  {
    if (sub_1A84E180C(self, self == 0, &v4))
    {
      return 0;
    }

    senderBlackholeWarningStatus = v4;
  }

  return senderBlackholeWarningStatus == 2;
}

- (void)beginHoldingChatItemsUpdatesForReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    guid = [(IMChat *)self guid];
    v7 = 138412546;
    v8 = guid;
    v9 = 2114;
    v10 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Chat %@ will hold chat item updates for reason: %{public}@", &v7, 0x16u);
  }

  [(IMReasonTrackingUpdater *)self->_chatItemsUpdater beginHoldingUpdatesForReason:reasonCopy];
}

- (void)endHoldingChatItemsUpdatesForReason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    guid = [(IMChat *)self guid];
    v11 = 138412546;
    v12 = guid;
    v13 = 2114;
    v14 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Chat %@ will end holding chat item updates for reason: %{public}@", &v11, 0x16u);
  }

  [(IMReasonTrackingUpdater *)self->_chatItemsUpdater endHoldingUpdatesForReason:reasonCopy updateTriggeredIfNotHeldShouldBeDeferred:1];
  activeUpdaterHoldsCount = [(IMReasonTrackingUpdater *)self->_chatItemsUpdater activeUpdaterHoldsCount];
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    guid2 = [(IMChat *)self guid];
    chatItemsUpdater = self->_chatItemsUpdater;
    v11 = 138412802;
    v12 = guid2;
    v13 = 2050;
    v14 = activeUpdaterHoldsCount;
    v15 = 2112;
    v16 = chatItemsUpdater;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "--> Chat %@ has %{public}ld remaining holds: %@", &v11, 0x20u);
  }
}

- (void)endAllHoldsOnChatItemsUpdatesForReason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if ([(IMReasonTrackingUpdater *)self->_chatItemsUpdater isHoldingUpdatesForReason:reasonCopy])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      v11 = 138412546;
      v12 = guid;
      v13 = 2114;
      v14 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Chat %@ is ending holds on updates for reason: %{public}@", &v11, 0x16u);
    }

    activeUpdaterHoldsCount = [(IMReasonTrackingUpdater *)self->_chatItemsUpdater activeUpdaterHoldsCount];
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      guid2 = [(IMChat *)self guid];
      chatItemsUpdater = self->_chatItemsUpdater;
      v11 = 138412802;
      v12 = guid2;
      v13 = 2050;
      v14 = activeUpdaterHoldsCount;
      v15 = 2112;
      v16 = chatItemsUpdater;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "--> Chat %@ has %{public}ld remaining holds: %@", &v11, 0x20u);
    }

    [(IMReasonTrackingUpdater *)self->_chatItemsUpdater endAllHoldsOnUpdatesForReason:reasonCopy updateTriggeredIfNotHeldShouldBeDeferred:1];
  }
}

- (void)endHoldingChatItemsUpdatesForAllReasons
{
  if ([(IMReasonTrackingUpdater *)self->_chatItemsUpdater isHoldingUpdates])
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E190C(self);
    }

    [(IMReasonTrackingUpdater *)self->_chatItemsUpdater endHoldingUpdatesForAllReasonsWithPotentialUpdateDeferred:1];
  }
}

- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post
{
  postCopy = post;
  v107 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v6);

  v8 = IMLogHandleForCategory();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  v77 = v9 - 1;
  spid = v9;
  if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v13 = v11;
  }

  else
  {
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A823F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "updateChatItemsWithReason_all", "", buf, 2u);
    }

    v12 = v11;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A823F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "updateChatItemsWithReason_beforePosting", "", buf, 2u);
    }
  }

  v82 = v11;

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self guid];
      *buf = 138412546;
      selfCopy4 = guid;
      v105 = 2112;
      v106 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Update chat items (chatGUID: %@), reason: %@", buf, 0x16u);
    }
  }

  v16 = +[IMChat stateCaptureRecents];
  [v16 promoteRecentObject:self];

  [(IMChat *)self _validateChatRegistrationWithRegistry];
  selfCopy3 = self;
  v85 = self->_chatItemRules;
  if (!v85)
  {
    if ([(IMChat *)self _isBlackHoled]|| !IMIsRunningInMessagesUIProcess())
    {
      v85 = 0;
      selfCopy3 = self;
    }

    else
    {
      v18 = [objc_alloc(+[IMChat chatItemRulesClass](IMChat "chatItemRulesClass"))];
      chatItemRules = self->_chatItemRules;
      self->_chatItemRules = v18;

      selfCopy3 = self;
      v85 = self->_chatItemRules;
    }
  }

  if (selfCopy3->_isUpdatingChatItems)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Update already in progress, executing update block", buf, 2u);
      }
    }

    blockCopy[2]();
    goto LABEL_120;
  }

  selfCopy3->_isUpdatingChatItems = 1;
  blockCopy[2]();
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  filterControllers = [(IMChat *)self filterControllers];
  v22 = [filterControllers countByEnumeratingWithState:&v97 objects:v102 count:16];
  if (v22)
  {
    v23 = *v98;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v98 != v23)
        {
          objc_enumerationMutation(filterControllers);
        }

        [*(*(&v97 + 1) + 8 * i) updateChatItemsIfNeeded];
      }

      v22 = [filterControllers countByEnumeratingWithState:&v97 objects:v102 count:16];
    }

    while (v22);
  }

  [(IMReasonTrackingUpdater *)self->_chatItemsUpdater cancelAllPendingDeferredUpdates];
  self->_isUpdatingChatItems = 0;
  if (v85)
  {
    _items = [(IMItemsController *)self _items];
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(_items, "count")}];
        *buf = 138412290;
        selfCopy4 = v26;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "\tIMItem count = %@", buf, 0xCu);
      }
    }

    _chatItems = [(IMChatItemRules *)v85 _chatItems];
    array = [_chatItems copy];
    _IMChatItemsReplaceWithChatItemsForItems(_chatItems, v85, _items);
    [(IMChatItemRules *)v85 _didProcessChatItems:_chatItems];
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v87 = array;

    if (!_chatItems)
    {
      _chatItems = [MEMORY[0x1E695DF70] array];
    }

    v29 = _chatItems;

    v74 = [v29 differenceFromArray:v87];
    v95 = 0;
    v96 = 0;
    IMIndexesFromOrderedCollectionDifference(v74, &v96, &v95);
    v80 = v96;
    v79 = v95;
    date = [MEMORY[0x1E695DF00] date];
    if ([(IMChat *)v80 count])
    {
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = sub_1A833DBD8;
      v93[3] = &unk_1E7811FA8;
      v94 = date;
      [v29 enumerateObjectsAtIndexes:v80 options:0 usingBlock:v93];
    }

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    v30 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v87, "count")}];
    v31 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v29, "count")}];
    [v30 removeIndexes:v79];
    [v31 removeIndexes:v80];
    firstIndex = [v30 firstIndex];
    firstIndex2 = [v31 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = firstIndex2;
      if (firstIndex2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        do
        {
          v35 = [v87 objectAtIndex:firstIndex];
          v36 = [v29 objectAtIndex:v34];
          if (v35 != v36)
          {
            [(IMChat *)indexSet2 addIndex:v34];
            _timeAdded = [v35 _timeAdded];
            [v36 _setTimeAdded:_timeAdded];
          }

          if ([(IMChatItemRules *)self->_chatItemRules _shouldReloadChatItem:v36 oldChatItem:v35])
          {
            [(IMChat *)indexSet addIndex:v34];
          }

          firstIndex = [v30 indexGreaterThanIndex:firstIndex];
          v34 = [v31 indexGreaterThanIndex:v34];
        }

        while (firstIndex != 0x7FFFFFFFFFFFFFFFLL && v34 != 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v38 = v29;
    v39 = [v38 countByEnumeratingWithState:&v89 objects:v101 count:16];
    if (v39)
    {
      v40 = 0;
      v41 = *v90;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v90 != v41)
          {
            objc_enumerationMutation(v38);
          }

          _timeStale = [*(*(&v89 + 1) + 8 * j) _timeStale];
          v44 = _timeStale;
          if (_timeStale)
          {
            v45 = [_timeStale earlierDate:v40];
            v46 = v45 == v44;

            if (v46)
            {
              v47 = v44;

              v40 = v47;
            }
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v89 objects:v101 count:16];
      }

      while (v39);

      if (v40)
      {
        _nextStaleTime = [(IMChatItemRules *)v85 _nextStaleTime];
        v49 = [(IMChat *)v40 isEqualToDate:_nextStaleTime];

        if ((v49 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v50 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy4 = v40;
              _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "\tSchedule _replaceStaleChatItems for nextStaleTime:%@", buf, 0xCu);
            }
          }

          [(IMChatItemRules *)v85 _setNextStaleTime:v40];
          [(IMChat *)v40 timeIntervalSinceReferenceDate];
          v52 = v51;
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v53 = 0.0;
          if (v52 > v54)
          {
            [(IMChat *)v40 timeIntervalSinceReferenceDate];
            v56 = v55;
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v53 = v56 - v57;
          }

          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__replaceStaleChatItems object:0];
          [(IMChat *)self performSelector:sel__replaceStaleChatItems withObject:0 afterDelay:v53];
        }
      }
    }

    else
    {

      v40 = 0;
    }

    if ([(IMChat *)v79 count]|| [(IMChat *)v80 count]|| [(IMChat *)indexSet count]|| [(IMChat *)indexSet2 count])
    {
      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          guid2 = [(IMChat *)self guid];
          *buf = 138412546;
          selfCopy4 = self;
          v105 = 2112;
          v106 = guid2;
          _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_INFO, "\tchat: %@, guid: %@", buf, 0x16u);
        }
      }

      if ([(IMChat *)v80 count]&& IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = v80;
          _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
        }
      }

      if ([(IMChat *)v79 count]&& IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = v79;
          _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
        }
      }

      if ([(IMChat *)indexSet count]&& IMOSLoggingEnabled())
      {
        v64 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = indexSet;
          _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
        }
      }

      if ([(IMChat *)indexSet2 count]&& IMOSLoggingEnabled())
      {
        v65 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = indexSet2;
          _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v66 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v87, "count")}];
          v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
          *buf = 138412546;
          selfCopy4 = v67;
          v105 = 2112;
          v106 = v68;
          _os_log_impl(&dword_1A823F000, v66, OS_LOG_TYPE_INFO, "\toldChatItems: %@, newChatItems: %@", buf, 0x16u);
        }
      }

      v69 = v82;
      v70 = v69;
      if (v77 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A823F000, v70, OS_SIGNPOST_INTERVAL_END, spid, "updateChatItemsWithReason_beforePosting", "", buf, 2u);
      }

      [(IMChat *)self _recalculateIsInterworking];
      if (postCopy)
      {
        [(IMChat *)self _postIMChatItemsDidChangeNotificationWithInserted:v80 removed:v79 reload:indexSet regenerate:indexSet2 oldChatItems:v87 newChatItems:v38];
      }

      v71 = v70;
      v72 = v71;
      if (v77 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A823F000, v72, OS_SIGNPOST_INTERVAL_END, spid, "updateChatItemsWithReason_all", "", buf, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_119;
      }

      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v72, OS_LOG_TYPE_INFO, "\tDon't post update, no significant updates to chatItems.", buf, 2u);
      }
    }

LABEL_119:
    goto LABEL_120;
  }

  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "ChatItem Rules undefined", buf, 2u);
    }
  }

  if (postCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "Posting nil update for compatiblity.", buf, 2u);
      }
    }

    [(IMChat *)self _postIMChatItemsDidChangeNotificationWithInserted:0 removed:0 reload:0 regenerate:0 oldChatItems:0 newChatItems:0];
  }

LABEL_120:
}

- (void)_replaceStaleChatItems
{
  v35 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "(IMChat) _replaceStaleChatItems", buf, 2u);
    }
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  chatItems = [(IMChat *)self chatItems];
  v5 = 0;
  v6 = [chatItems countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(chatItems);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        _timeStale = [v9 _timeStale];
        if (_timeStale)
        {
          date = [MEMORY[0x1E695DF00] date];
          [date timeIntervalSinceReferenceDate];
          v13 = v12;
          [_timeStale timeIntervalSinceReferenceDate];
          v15 = v13 < v14;

          if (!v15)
          {
            _item = [v9 _item];
            _copy = _item;
            if (v5 == _item)
            {
              v18 = v5;
            }

            else
            {
              v18 = _item;

              _copy = [v18 _copy];
              [v23 addObject:_copy];
            }

            v5 = v18;
          }
        }
      }

      v6 = [chatItems countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v23;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v20)
  {
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [(IMChat *)self _handleItem:*(*(&v24 + 1) + 8 * j)];
      }

      v20 = [v19 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v20);
  }

  [(IMChatItemRules *)self->_chatItemRules _setNextStaleTime:0];
}

- (id)_getDeleteChatItemMap:(id)map
{
  v36 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v4 = objc_alloc_init(MEMORY[0x1E69A6110]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = mapCopy;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v23)
  {
    v22 = *v29;
    *&v5 = 138412290;
    v19 = v5;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        if ([v7 canDelete])
        {
          _item = [v7 _item];
          guid = [_item guid];

          [v4 pushObject:v7 forKey:guid];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            visibleAssociatedMessageChatItems = [v7 visibleAssociatedMessageChatItems];
            if ([visibleAssociatedMessageChatItems count])
            {
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v10 = visibleAssociatedMessageChatItems;
              v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
              if (v11)
              {
                v12 = *v25;
                do
                {
                  for (j = 0; j != v11; ++j)
                  {
                    if (*v25 != v12)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v14 = *(*(&v24 + 1) + 8 * j);
                    if ([v14 canDelete])
                    {
                      _item2 = [v14 _item];
                      guid2 = [_item2 guid];

                      [v4 pushObject:v14 forKey:guid2];
                    }
                  }

                  v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
                }

                while (v11);
              }
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v33 = v7;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Request to delete chatItem %@ which can't be deleted", buf, 0xCu);
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v23);
  }

  return v4;
}

- (id)_getMessageChatItemMap:(id)map withDeleteMap:(id)deleteMap andAllChatItems:(id)items
{
  v40 = *MEMORY[0x1E69E9840];
  deleteMapCopy = deleteMap;
  itemsCopy = items;
  v8 = objc_alloc_init(MEMORY[0x1E69A6110]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = itemsCopy;
  v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v29)
  {
    v9 = *v35;
    v26 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if ([v11 canDelete])
        {
          _parentItem = [v11 _parentItem];
          guid = [_parentItem guid];

          v14 = [deleteMapCopy peekObjectForKey:guid];

          if (v14)
          {
            [v8 pushObject:v11 forKey:guid];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          visibleAssociatedMessageChatItems = [v11 visibleAssociatedMessageChatItems];
          if ([visibleAssociatedMessageChatItems count])
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = visibleAssociatedMessageChatItems;
            v16 = visibleAssociatedMessageChatItems;
            v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v31;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v31 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v30 + 1) + 8 * j);
                  if ([v21 canDelete])
                  {
                    _parentItem2 = [v21 _parentItem];
                    guid2 = [_parentItem2 guid];

                    v24 = [deleteMapCopy peekObjectForKey:guid2];

                    if (v24)
                    {
                      [v8 pushObject:v21 forKey:guid2];
                    }
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v18);
            }

            v9 = v26;
            visibleAssociatedMessageChatItems = v28;
          }
        }
      }

      v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  return v8;
}

- (void)deleteChatItems:(id)items
{
  itemsCopy = items;
  chatItems = [(IMChat *)self chatItems];
  [(IMChat *)self deleteChatItems:itemsCopy fromChatItems:chatItems];
}

- (void)deleteChatItems:(id)items fromChatItems:(id)chatItems
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  chatItemsCopy = chatItems;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = [itemsCopy count];
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Processing %lu chat items for deletion", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A833E66C;
  v11[3] = &unk_1E7810D08;
  v11[4] = self;
  v12 = itemsCopy;
  v13 = chatItemsCopy;
  v9 = chatItemsCopy;
  v10 = itemsCopy;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Delete chat items" block:v11];
}

- (void)deleteIMMessageItems:(id)items
{
  v11 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = itemsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Delete message items: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A833F358;
  v7[3] = &unk_1E7810140;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Delete message items" block:v7];
}

- (void)handleDaemonDidDeleteMessageGUIDs:(id)ds
{
  v11 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = dsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Handle daemon did delete message guids: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A833F6D0;
  v7[3] = &unk_1E7810140;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Daemon did delete message guids" block:v7];
}

- (void)markChatItemAsSaved:(id)saved
{
  v13 = *MEMORY[0x1E69E9840];
  savedCopy = saved;
  _item = [savedCopy _item];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [_item expireState] <= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = savedCopy;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Mark chat item as saved: %@", buf, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendSavedReceiptForMessage:_item];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A833F880;
    v8[3] = &unk_1E7810140;
    v9 = _item;
    selfCopy = self;
    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Mark as saved" block:v8];
  }
}

- (void)markChatItemAsNotifyRecipient:(id)recipient
{
  v13 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  _item = [recipientCopy _item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = recipientCopy;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Mark chat item as notify recipient: %@", buf, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendNotifyRecipientCommandForMessage:_item];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A833FA70;
    v8[3] = &unk_1E7810140;
    v9 = _item;
    selfCopy = self;
    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Mark as notify recipient" block:v8];
  }
}

- (void)setSelectedIndexOnCarouselChatItem:(id)item selectedIndex:(int64_t)index
{
  _item = [item _item];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A833FB80;
  v8[3] = &unk_1E7812C40;
  selfCopy = self;
  indexCopy = index;
  v9 = _item;
  v7 = _item;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Set selected rich card index" block:v8];
}

- (void)markChatItemAsPlayed:(id)played
{
  _item = [played _item];
  [(IMChat *)self _markItemAsPlayed:_item];
}

- (void)_markItemAsPlayed:(id)played
{
  v12 = *MEMORY[0x1E69E9840];
  playedCopy = played;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([playedCopy isPlayed] & 1) == 0 && (objc_msgSend(playedCopy, "isFromMe") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = playedCopy;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Mark chat item as played: %@", buf, 0xCu);
      }
    }

    chatRegistry = [(IMChat *)self chatRegistry];
    [chatRegistry _chat:self sendPlayedReceiptForMessage:playedCopy];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A833FDFC;
    v7[3] = &unk_1E7810140;
    v8 = playedCopy;
    selfCopy = self;
    [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Mark as played" block:v7];
  }
}

- (void)markChatItemAsPlayedExpressiveSend:(id)send
{
  v14 = *MEMORY[0x1E69E9840];
  sendCopy = send;
  _item = [sendCopy _item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    timeExpressiveSendPlayed = [_item timeExpressiveSendPlayed];

    if (!timeExpressiveSendPlayed)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v13 = sendCopy;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Mark chat item as having played expressive send: %@", buf, 0xCu);
        }
      }

      chatRegistry = [(IMChat *)self chatRegistry];
      [chatRegistry _chat:self setPlayedExpressiveSendForMessage:_item];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A8340058;
      v9[3] = &unk_1E7810140;
      v10 = _item;
      selfCopy = self;
      [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Mark as played expressive send" block:v9];
    }
  }
}

- (NSArray)replySuggestions
{
  v19 = *MEMORY[0x1E69E9840];
  lastFinishedMessage = [(IMChat *)self lastFinishedMessage];
  if ([lastFinishedMessage isFromMe] && !objc_msgSend(lastFinishedMessage, "isAssociatedMessage"))
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    lastMessage = [(IMChat *)self lastMessage];
    if ([lastMessage isFromMe] && !objc_msgSend(lastFinishedMessage, "isAssociatedMessage"))
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      chatItems = [(IMChat *)self chatItems];
      messages = [chatItems messages];
      reverseObjectEnumerator = [messages reverseObjectEnumerator];

      message = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (message)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != message; i = i + 1)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if (([v11 isAssociatedMessageItem] & 1) == 0)
            {
              message = [v11 message];
              goto LABEL_15;
            }
          }

          message = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (message)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      if ([message isFromMe])
      {
        v12 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v12 = self->_replySuggestions;
      }
    }
  }

  return v12;
}

- (BOOL)hasCommSafetySensitiveMessage
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  _items = [(IMItemsController *)self _items];
  v18 = [_items countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v3 = *v24;
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(_items);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        fileTransferGUIDs = [v5 fileTransferGUIDs];
        v7 = [fileTransferGUIDs countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(fileTransferGUIDs);
              }

              v11 = *(*(&v19 + 1) + 8 * j);
              v12 = +[IMFileTransferCenter sharedInstance];
              v13 = [v12 transferForGUID:v11];
              commSafetySensitive = [v13 commSafetySensitive];

              if ((commSafetySensitive - 3) > 0xFFFFFFFFFFFFFFFDLL)
              {

                v15 = 1;
                goto LABEL_19;
              }
            }

            v8 = [fileTransferGUIDs countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v3 = v17;
      }

      v15 = 0;
      v18 = [_items countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (BOOL)hasCommSafetySensitiveMessageFromSomeoneElse
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  _items = [(IMItemsController *)self _items];
  v3 = [_items countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v19 = *v26;
    do
    {
      v6 = 0;
      v20 = v4;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(_items);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 isFromMe] & 1) == 0)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          fileTransferGUIDs = [v7 fileTransferGUIDs];
          v9 = [fileTransferGUIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(fileTransferGUIDs);
                }

                v13 = *(*(&v21 + 1) + 8 * i);
                v14 = +[IMFileTransferCenter sharedInstance];
                v15 = [v14 transferForGUID:v13];
                commSafetySensitive = [v15 commSafetySensitive];

                if ((commSafetySensitive - 3) > 0xFFFFFFFFFFFFFFFDLL)
                {

                  v17 = 1;
                  goto LABEL_22;
                }
              }

              v10 = [fileTransferGUIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v5 = v19;
          v4 = v20;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [_items countByEnumeratingWithState:&v25 objects:v30 count:16];
      v17 = 0;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

LABEL_22:

  return v17;
}

- (BOOL)isCommSafetySensitiveMessageRecent
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  _items = [(IMItemsController *)self _items];
  reverseObjectEnumerator = [_items reverseObjectEnumerator];

  v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v4 = *v26;
    v18 = *v26;
    v19 = 0;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v26 != v4)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v6 = *(*(&v25 + 1) + 8 * v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 isFromMe])
        {
          if (++v19 > 2)
          {
            break;
          }
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      fileTransferGUIDs = [v6 fileTransferGUIDs];
      v8 = [fileTransferGUIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(fileTransferGUIDs);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            v13 = +[IMFileTransferCenter sharedInstance];
            v14 = [v13 transferForGUID:v12];
            commSafetySensitive = [v14 commSafetySensitive];

            if ((commSafetySensitive - 3) > 0xFFFFFFFFFFFFFFFDLL)
            {

              v16 = 1;
              goto LABEL_22;
            }
          }

          v9 = [fileTransferGUIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      ++v5;
      v4 = v18;
      if (v5 == v20)
      {
        v16 = 0;
        v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v20)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }
  }

  v16 = 0;
LABEL_22:

  return v16;
}

- (void)updateCommSafety:(int64_t)safety forChatItem:(id)item
{
  v10 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = MEMORY[0x1E695DEC8];
  itemCopy2 = item;
  v8 = [v6 arrayWithObjects:&itemCopy count:1];

  [(IMChat *)self updateCommSafety:safety forChatItems:v8 parentChatItem:0, itemCopy, v10];
}

- (void)updateCommSafety:(int64_t)safety forChatItems:(id)items parentChatItem:(id)item
{
  selfCopy = self;
  v50 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = itemsCopy;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
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

        v9 = *(*(&v40 + 1) + 8 * i);
        if ([v9 supportsCommunicationSafety])
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = [MEMORY[0x1E696AD98] numberWithInteger:safety];
              *buf = 138412546;
              v46 = v9;
              v47 = 2112;
              v48 = v11;
              _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Mark chat item %@ for CommSafety: %@", buf, 0x16u);
            }
          }

          [v9 setNeedsReloadForTransferStatusChangeWithType:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v9;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            acknowledgments = [v12 acknowledgments];
            v14 = [acknowledgments countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v14)
            {
              v15 = *v37;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v37 != v15)
                  {
                    objc_enumerationMutation(acknowledgments);
                  }

                  commSafetyTransferGUID = [*(*(&v36 + 1) + 8 * j) commSafetyTransferGUID];
                  v18 = +[IMFileTransferCenter sharedInstance];
                  [v18 setCommSafetySensitiveForTransfer:commSafetyTransferGUID value:safety];
                }

                v14 = [acknowledgments countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v14);
            }
          }

          else
          {
            v12 = +[IMFileTransferCenter sharedInstance];
            acknowledgments = [v9 commSafetyTransferGUID];
            [v12 setCommSafetySensitiveForTransfer:acknowledgments value:safety];
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v30);
  }

  v19 = itemCopy;
  if (itemCopy)
  {
    [itemCopy setNeedsReloadForTransferStatusChangeWithType:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = itemCopy;
    if (isKindOfClass)
    {
      text = [itemCopy text];
      v22 = [text length];
      v23 = *MEMORY[0x1E69A5F68];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_1A8340E18;
      v35[3] = &unk_1E7812C60;
      v35[4] = safety;
      [text enumerateAttribute:v23 inRange:0 options:v22 usingBlock:{0, v35}];

      v19 = itemCopy;
    }
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1A8340EBC;
  v31[3] = &unk_1E7810D08;
  v32 = obj;
  v33 = selfCopy;
  v34 = v19;
  v24 = v19;
  v25 = obj;
  [(IMChat *)selfCopy _updateChatItemsWithReason:@"(IMChat) Update communication safety flag" block:v31];
}

- (id)_renderingDataDictionary
{
  chatScrutinyController = [(IMChat *)self chatScrutinyController];
  chatIdentifier = [(IMChat *)self chatIdentifier];
  v5 = [chatScrutinyController transcriptRenderingMetadataForChatIdentifier:chatIdentifier];
  Mutable = [v5 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return Mutable;
}

- (void)_setRenderingDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  chatScrutinyController = [(IMChat *)self chatScrutinyController];
  chatIdentifier = [(IMChat *)self chatIdentifier];
  [chatScrutinyController setTranscriptRenderingMetadata:dictionaryCopy forChatIdentifier:chatIdentifier];
}

- (void)stickerRepositionedForAssociatedChatItem:(id)item
{
  itemCopy = item;
  [itemCopy setNeedsReloadForTransferStatusChangeWithType:2];
  _item = [itemCopy _item];
  _item2 = [itemCopy _item];

  v8 = [_item _copyWithFlags:{objc_msgSend(_item2, "flags")}];
  v7 = [[IMChatItem alloc] _initWithItem:v8];
  if (objc_opt_respondsToSelector())
  {
    [v7 setNeedsReloadForTransferStatusChangeWithType:0];
  }

  [(IMChat *)self _handleItem:v8];
}

- (id)chatItemsForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _IMAppendChatItemsForItem(v5, self->_chatItemRules, *(*(&v13 + 1) + 8 * i));
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];

  return v11;
}

- (id)allMessagesToReportAsSpam
{
  chatItems = [(IMChat *)self chatItems];
  v4 = [(IMChat *)self messagesToReportAsSpamFromChatItems:chatItems];

  return v4;
}

- (id)messagesToReportAsSpamFromChatItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  __imItems = [itemsCopy __imItems];
  v6 = [__imItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(__imItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          fileTransferGUIDs = [v10 fileTransferGUIDs];
          v12 = [fileTransferGUIDs count];

          if (!v12)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [__imItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (void)_configureLocationShareItem:(id)item
{
  itemCopy = item;
  account = [(IMChat *)self account];
  sender = [itemCopy sender];
  v6 = [account imHandleWithID:sender alreadyCanonical:1];

  v7 = +[IMFMFSession sharedInstance];
  v8 = [v7 handleIsSharingLocationWithMe:v6];

  v9 = +[IMFMFSession sharedInstance];
  v10 = [v9 handleIsFollowingMyLocation:v6];

  [itemCopy setExpired:v8 ^ 1u];
  [itemCopy setActionable:v10 ^ 1u];
}

- (void)_updateLocationShareItemsForSender:(id)sender
{
  v37 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  _items = [(IMItemsController *)self _items];
  account = [(IMChat *)self account];
  v24 = senderCopy;
  v6 = [account imHandleWithID:senderCopy alreadyCanonical:1];
  v7 = +[IMFMFSession sharedInstance];
  v8 = [v7 handleIsSharingLocationWithMe:v6];

  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_items, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = _items;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if ([v14 type] == 4)
        {
          v15 = v14;
          sender = [v15 sender];
          v17 = [account imHandleWithID:sender alreadyCanonical:1];

          if ([v6 isEqual:v17] && v8 == objc_msgSend(v15, "expired"))
          {
            [v25 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v25;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v27 + 1) + 8 * j) copy];
        [v23 setExpired:v8 ^ 1u];
        [(IMChat *)self _handleItem:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }
}

- (NSSet)fmfHandles
{
  v3 = +[IMFMFSession sharedInstance];
  v4 = [v3 findMyHandlesForChat:self];
  __im_fmfHandles = [v4 __im_fmfHandles];

  return __im_fmfHandles;
}

- (NSSet)findMyHandles
{
  v3 = +[IMFMFSession sharedInstance];
  v4 = [v3 findMyHandlesForChat:self];

  return v4;
}

- (void)markAllLocationShareItemsAsUnactionable
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A8341AA4;
  v2[3] = &unk_1E780FCB0;
  v2[4] = self;
  [(IMChat *)self _updateChatItemsWithReason:@"(IMChat) Mark as unactionable" block:v2];
}

- (NSSet)allSiblingFMFHandles
{
  v3 = +[IMFMFSession sharedInstance];
  v4 = [v3 allSiblingFindMyHandlesForChat:self];
  __im_fmfHandles = [v4 __im_fmfHandles];

  return __im_fmfHandles;
}

- (NSSet)allSiblingFindMyHandles
{
  v3 = +[IMFMFSession sharedInstance];
  v4 = [v3 allSiblingFindMyHandlesForChat:self];

  return v4;
}

- (BOOL)hasRecipientsFollowingLocation
{
  v3 = +[IMFMFSession sharedInstance];
  LOBYTE(self) = [v3 chatHasParticipantsFollowingMyLocation:self];

  return self;
}

- (BOOL)allRecipientsFollowingLocation
{
  v3 = +[IMFMFSession sharedInstance];
  LOBYTE(self) = [v3 allChatParticipantsFollowingMyLocation:self];

  return self;
}

- (BOOL)hasRecipientsSharingLocation
{
  v3 = +[IMFMFSession sharedInstance];
  LOBYTE(self) = [v3 chatHasParticipantsSharingLocationWithMe:self];

  return self;
}

- (BOOL)hasSiblingRecipientsSharingLocation
{
  v3 = +[IMFMFSession sharedInstance];
  LOBYTE(self) = [v3 chatHasSiblingParticipantsSharingLocationWithMe:self];

  return self;
}

- (BOOL)allRecipientsSharingLocation
{
  v3 = +[IMFMFSession sharedInstance];
  LOBYTE(self) = [v3 allChatParticipantsSharingLocationWithMe:self];

  return self;
}

- (void)shareLocationWithDuration:(int64_t)duration
{
  v5 = +[IMFMFSession sharedInstance];
  [v5 startSharingWithChat:self withDuration:duration];
}

- (void)stopSharingLocation
{
  v3 = +[IMFMFSession sharedInstance];
  [v3 stopSharingWithChat:self];
}

- (void)startTrackingParticipantLocations
{
  v3 = +[IMFMFSession sharedInstance];
  [v3 startTrackingLocationForChat:self];
}

- (void)stopTrackingParticipantLocations
{
  v3 = +[IMFMFSession sharedInstance];
  [v3 stopTrackingLocationForChat:self];
}

- (void)_automation_markAsRead:(BOOL)read messageGUID:(id)d forChatGUID:(id)iD fromMe:(BOOL)me
{
  dCopy = d;
  iDCopy = iD;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A83421F4;
  v15[3] = &unk_1E7812C88;
  readCopy = read;
  v16 = dCopy;
  v17 = iDCopy;
  meCopy = me;
  v12 = iDCopy;
  v13 = dCopy;
  v14 = [(IMChat *)self _performQueryWithKey:@"AutomationMarkAsRead" loadImmediately:1 block:v15];
}

- (BOOL)repliedToChat
{
  lastSentMessage = [(IMChat *)self lastSentMessage];
  v3 = lastSentMessage != 0;

  return v3;
}

- (BOOL)receivedResponseForChat
{
  lastIncomingFinishedMessage = [(IMChat *)self lastIncomingFinishedMessage];
  v3 = lastIncomingFinishedMessage != 0;

  return v3;
}

+ (id)stateCaptureRecents
{
  if (qword_1ED7676A8 != -1)
  {
    sub_1A84E19F8();
  }

  v3 = qword_1ED7676B0;

  return v3;
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  _items = [(IMItemsController *)self _items];
  v5 = [v3 initWithCapacity:{objc_msgSend(_items, "count")}];

  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  _items2 = [(IMItemsController *)self _items];
  if ([_items2 count] >= 0x64)
  {
    v9 = [v6 initWithCapacity:100];
  }

  else
  {
    _items3 = [(IMItemsController *)self _items];
    v9 = [v6 initWithCapacity:{objc_msgSend(_items3, "count")}];
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chatItems = [(IMChat *)self chatItems];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83427A0;
  v42[3] = &unk_1E7812CB0;
  v12 = v5;
  v43 = v12;
  v36 = v10;
  v44 = v36;
  v34 = v9;
  v45 = v34;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v42];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  _items4 = [(IMItemsController *)self _items];
  v14 = [_items4 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(_items4);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        guid = [v18 guid];
        if (([v12 containsObject:guid] & 1) == 0 && (objc_msgSend(v18, "isAssociatedMessageItem") & 1) == 0)
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          guid2 = [v18 guid];
          v24 = [v20 stringWithFormat:@"%@: %@", v22, guid2];
          [v37 addObject:v24];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v18;
          if ([v25 isTypingMessage])
          {
            v26 = MEMORY[0x1E696AEC0];
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            guid3 = [v25 guid];
            v30 = [v26 stringWithFormat:@"i:%@: %@", v28, guid3];
            [v36 addObject:v30];
          }
        }
      }

      v15 = [_items4 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v15);
  }

  v46[0] = @"debugDescription";
  v31 = [(IMChat *)selfCopy debugDescription];
  v47[0] = v31;
  v47[1] = v34;
  v46[1] = @"bottomChatItemGUIDs";
  v46[2] = @"unrepresentedItems";
  v46[3] = @"typingIndicators";
  v47[2] = v37;
  v47[3] = v36;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];

  return v32;
}

- (void)invalidateSpamIndicatorCachedValues
{
  [(IMChat *)self setCachedShouldShowReportSpam:0];

  [(IMChat *)self setCachedShouldShowSpam:0];
}

- (id)contacts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  account = [(IMChat *)self account];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  participants = [(IMChat *)self participants];
  v6 = [participants countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(participants);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) ID];
        v12 = [account imHandleWithID:v11];

        v13 = [v12 cnContactWithKeys:v9];
        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v7 = [participants countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSDictionary)internalLastAddressedHandleAndSimIDForDebugMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8342B7C;
  v6[3] = &unk_1E7812CD8;
  v4 = v3;
  v7 = v4;
  [(IMChat *)self _enumerateUnderlyingChatInfo:v6];

  return v4;
}

- (NSString)downgradeStateForDebugMenu
{
  downgradeState = [(IMChat *)self downgradeState];

  return sub_1A8267378(downgradeState);
}

- (void)queryTrustKitDecisioningIfNeededWithItems:(id)items reply:(id)reply
{
  itemsCopy = items;
  replyCopy = reply;
  if ([(IMChat *)self numberOfTimesRespondedToThread]> 2)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12[0] = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "TrustKit query skipped because chat has 3+ replies", v12, 2u);
      }
    }

    replyCopy[2](replyCopy, [(IMChat *)self isFiltered]);
  }

  else
  {
    v8 = +[IMDaemonController sharedController];
    remoteDaemon = [v8 remoteDaemon];
    guid = [(IMChat *)self guid];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8342E08;
    v13[3] = &unk_1E7812D28;
    v13[4] = self;
    v14 = replyCopy;
    [remoteDaemon queryTrustKitDecisioningIfNeededForChatGUID:guid items:itemsCopy reply:v13];
  }
}

- (BOOL)allowedToShowConversation
{
  if (!+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    return 1;
  }

  v3 = +[IMDowntimeController sharedInstance];
  v4 = [v3 allowedToShowConversationForChat:self sync:0];

  return v4;
}

- (BOOL)allowedToShowConversationSync
{
  if (!+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    return 1;
  }

  v3 = +[IMDowntimeController sharedInstance];
  v4 = [v3 conversationContextForChat:self];
  v5 = v4;
  if (v4)
  {
    allowedByScreenTime = [v4 allowedByScreenTime];
  }

  else
  {
    allowedByScreenTime = [v3 allowedToShowConversationForChat:self sync:1];
  }

  v7 = allowedByScreenTime;

  return v7;
}

- (id)conversationContext
{
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    v3 = +[IMDowntimeController sharedInstance];
    v4 = [v3 conversationContextForChat:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hashOfParticipantIDs
{
  if (+[IMDowntimeController isContactLimitsFeatureEnabled](IMDowntimeController, "isContactLimitsFeatureEnabled") && (-[IMChat participants](self, "participants"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    participantHandleIDs = [(IMChat *)self participantHandleIDs];
    v6 = IMHashOfHashesForStringArray(participantHandleIDs);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateReplySuggestions
{
  chatItemsUpdater = [(IMChat *)self chatItemsUpdater];
  isHoldingUpdates = [chatItemsUpdater isHoldingUpdates];

  if ((isHoldingUpdates & 1) == 0)
  {

    [(IMChat *)self _updateChatItemsWithReason:@"Update Smart Replies" block:&unk_1F1B6F480];
  }
}

- (id)recentIncomingMessagesWithTextContentForReplySuggestions
{
  v2 = MEMORY[0x1E69A81F8];
  _items = [(IMItemsController *)self _items];
  v4 = [v2 recentIncomingMessagesWithTextContentForReplySuggestions:_items];

  return v4;
}

- (id)recentOugoingMessagesWithTextContentForReplySuggestions
{
  v2 = MEMORY[0x1E69A81F8];
  _items = [(IMItemsController *)self _items];
  v4 = [v2 recentOugoingMessagesWithTextContentForReplySuggestions:_items];

  return v4;
}

- (BOOL)isRecipientAbleToDowngradeToSMS
{
  v44[1] = *MEMORY[0x1E69E9840];
  if ([(IMChat *)self chatStyle]!= 45)
  {
    return 0;
  }

  recipient = [(IMChat *)self recipient];
  v5 = [recipient ID];
  v6 = IMChatCanonicalIDSIDsForAddress();

  v7 = objc_alloc(MEMORY[0x1E69A5428]);
  lastAddressedHandleID = [(IMChat *)self lastAddressedHandleID];
  login = lastAddressedHandleID;
  if (!lastAddressedHandleID)
  {
    account = [(IMChat *)self account];
    login = [account login];
  }

  v10 = IMChatCanonicalIDSIDsForAddress();
  v11 = [v7 initWithPrefixedURI:v10];

  if (!lastAddressedHandleID)
  {
  }

  v12 = MEMORY[0x1E69A80B0];
  v44[0] = v6;
  v13 = 1;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v15 = [v12 _currentCachedRemoteDevicesForDestinations:v14 service:@"com.apple.madrid" preferredFromID:v11 listenerID:@"IMChat+LiteService"];

  if (v15)
  {
    v33 = v11;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    allValues = [v15 allValues];
    v32 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v32)
    {
      v17 = *v39;
      v18 = *MEMORY[0x1E69A5088];
      v30 = v6;
      v31 = recipient;
      v29 = *v39;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v35;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                capabilities = [*(*(&v34 + 1) + 8 * j) capabilities];
                v27 = [capabilities valueForCapability:v18];

                if (v27)
                {

                  v13 = 1;
                  v6 = v30;
                  recipient = v31;
                  goto LABEL_26;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v17 = v29;
        }

        v13 = 0;
        v6 = v30;
        recipient = v31;
        v32 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v32);
    }

    else
    {
      v13 = 0;
    }

LABEL_26:

    v11 = v33;
  }

  return v13;
}

- (BOOL)isSatelliteMessagingCompatible
{
  if ([(IMChat *)self isGroupChat]|| [(IMChat *)self isReadOnly]|| [(IMChat *)self hasLeftGroup]|| [(IMChat *)self isBusinessChat]|| [(IMChat *)self isStewieChat])
  {
    return 0;
  }

  else
  {
    return ![(IMChat *)self isStewieSharingChat];
  }
}

- (void)sendRCSEncryptionTestMessageIfNecessary
{
  selfCopy = self;
  sub_1A83F82A0();
}

- (void)sendRCSMessage:(id)message fromChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  selfCopy = self;
  sub_1A83FADA8(messageCopy, chatCopy);
}

- (BOOL)isEncryptionTestOptedIn
{
  selfCopy = self;
  v3 = sub_1A83F88C4();

  return v3 & 1;
}

- (id)rcsChat
{
  selfCopy = self;
  sub_1A83F8AD8();
  v4 = v3;

  return v4;
}

- (id)textMessageForTest
{
  v2 = sub_1A83FB1B8();

  return v2;
}

- (id)attachmentMessageForTest
{
  sub_1A83FA264();

  return v2;
}

- (id)attachmentFileNameForTest
{
  v2 = sub_1A84E570C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A84E5DBC();
  v8 = v7;
  sub_1A84E56FC();
  v9 = sub_1A84E56EC();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v14[0] = v6;
  v14[1] = v8;

  MEMORY[0x1AC56A990](v9, v11);

  v12 = sub_1A84E5D8C();

  return v12;
}

- (id)randomDataWithSize:(int64_t)size
{
  v4 = sub_1A83F8FDC(0, size);
  v5 = *MEMORY[0x1E697B308];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A83EEE14(0, *(v4 + 16), 0, v4);
  }

  SecRandomCopyBytes(v5, size, (v4 + 32));
  v6 = sub_1A83FA188(v4);
  v8 = v7;

  v9 = sub_1A84E55EC();
  sub_1A83F5994(v6, v8);

  return v9;
}

- (id)randomStringWithLength:(int64_t)length
{
  sub_1A83FAF38(length);
  v3 = sub_1A84E5D8C();

  return v3;
}

- (int64_t)randomIntWithUpTo:(int64_t)to
{
  if (to >= 1)
  {
    return sub_1A83F98D4(to) + 1;
  }

  __break(1u);
  return self;
}

- (id)tempfileURLFor:(id)for
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1A84E5DBC();
  v7 = objc_opt_self();
  selfCopy = self;
  defaultManager = [v7 defaultManager];
  v10 = sub_1A84E5D8C();
  v11 = [defaultManager im:v10 randomTemporaryFileURLWithFileName:?];

  if (v11)
  {
    sub_1A84E554C();

    v12 = sub_1A84E558C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v12 = sub_1A84E558C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_1A84E558C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1A84E551C();
    (*(v13 + 8))(v6, v12);
    v15 = v16;
  }

  return v15;
}

- (int64_t)priorityClassification
{
  selfCopy = self;
  v3 = sub_1A84431B8();

  return v3;
}

- (BOOL)wasDetectedAsSMSCategory
{
  selfCopy = self;
  v3 = IMChat.wasDetectedAsSMSCategory.getter();

  return v3 & 1;
}

- (BOOL)isKnownSenderWithUnknownFilteringEnabled:(BOOL)enabled
{
  selfCopy = self;
  v5 = IMChat.isKnownSender(withUnknownFilteringEnabled:)(enabled);

  return v5;
}

- (void)_refreshServiceForSendingWithDaemonWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A8490148;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A84878C0(v7, v6);
  sub_1A8245638(v7, v6);
}

- (void)_refreshKTData
{
  selfCopy = self;
  sub_1A8488980();
}

- (BOOL)isChatBot
{
  selfCopy = self;
  v3 = sub_1A84AA32C();

  return v3 & 1;
}

- (id)brandLogoURL
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1A84AA5A0(v5);

  v7 = sub_1A84E558C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1A84E551C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (id)brandLogoData
{
  selfCopy = self;
  v3 = sub_1A84AA904();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1A84E55EC();
    sub_1A83F5980(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (BOOL)needPersistentMenuFromRelay
{
  selfCopy = self;
  v3 = sub_1A84AAC70();

  return v3 & 1;
}

- (BOOL)needBrandInfoFromRelay
{
  selfCopy = self;
  v3 = sub_1A84AB380();

  return v3 & 1;
}

- (BOOL)shouldShowIncomingTranslationIndicator
{
  selfCopy = self;
  incomingTranslationLanguageCode = [(IMChat *)selfCopy incomingTranslationLanguageCode];
  if (incomingTranslationLanguageCode)
  {
    v4 = incomingTranslationLanguageCode;
    v5 = sub_1A84E5DBC();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (int64_t)checkTranslationLanguageStatusForLanguageCode:(id)code
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A84ACED4(v4, v6);

  return v8;
}

- (id)ensureUserTranslationLanguageIsResolvedForCode:(id)code
{
  if (code)
  {
    sub_1A84E5DBC();
  }

  else
  {
    selfCopy = self;
    userTranslationLanguageCode = [(IMChat *)selfCopy userTranslationLanguageCode];
    sub_1A84E5DBC();
  }

  v5 = sub_1A84E5D8C();

  return v5;
}

- (id)usersPreferredLanguageIdentifier
{
  v2 = sub_1A84E574C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E59BC();
  sub_1A84E59AC();
  sub_1A84E572C();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1A84E5D8C();

  return v6;
}

- (BOOL)preferredLanguagesContainVariantForCode:(id)code
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1A84AD314(v4, v6);

  return v4 & 1;
}

- (BOOL)isLastMessageTypingIndicator
{
  selfCopy = self;
  lastMessage = [(IMChat *)selfCopy lastMessage];
  if (lastMessage)
  {
    v4 = lastMessage;
    isTypingMessage = [(IMMessage *)lastMessage isTypingMessage];
    isFromMe = [(IMMessage *)v4 isFromMe];

    return isTypingMessage & (isFromMe ^ 1);
  }

  else
  {

    return 0;
  }
}

@end